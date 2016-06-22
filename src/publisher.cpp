/*
 *                         OpenSplice DDS
 *
 *   This software and documentation are Copyright 2006 to 2013 PrismTech
 *   Limited and its licensees. All rights reserved. See file:
 *
 *                     $OSPL_HOME/LICENSE
 *
 *   for full copyright notice and license terms.
 *
 */

/************************************************************************
 * LOGICAL_NAME:    Chatter.cpp
 * FUNCTION:        OpenSplice NetworkPartition example code.
 * MODULE:          NetworkPartition example.
 * DATE             june 2007.
 ************************************************************************
 *
 * This file contains the implementation for the 'Chatter' executable.
 *
 ***/
#include <string>
#include <iostream>
#include "ccpp_dds_dcps.h"
#include "check_status.h"
#include "ccpp_MSFPPacket.h"
#include "example_main.h"

#include "publisher.h"

using namespace DDS;

namespace micros_swarm_framework{
    
    Publisher::Publisher()
    {
        domain = 0;
        sourceID = 1;
        partitionName = "test";
        MSFPPacketTypeName = NULL;
        
        //Create a DomainParticipantFactory and a DomainParticipant, using Default QoS settings
        dpf = DomainParticipantFactory::get_instance ();
        checkHandle(dpf.in(), "DDS::DomainParticipantFactory::get_instance");
        participant = dpf->create_participant(domain, PARTICIPANT_QOS_DEFAULT, NULL, STATUS_MASK_NONE);
        checkHandle(participant.in(), "DDS::DomainParticipantFactory::create_participant");

        //Register the required datatype for MSFPPacket
        MSFPPacketTS = new MSFPPacketTypeSupport();
        checkHandle(MSFPPacketTS.in(), "new MSFPPacketTypeSupport");
        MSFPPacketTypeName = MSFPPacketTS->get_type_name();
        status = MSFPPacketTS->register_type(
            participant.in(),
            MSFPPacketTypeName);
        checkStatus(status, "NetworkPartitionsData::MSFPPacketTypeSupport::register_type");

        //Set the ReliabilityQosPolicy to BEST_EFFORT_RELIABILITY
        status = participant->get_default_topic_qos(topic_qos);
        checkStatus(status, "DDS::DomainParticipant::get_default_topic_qos");
        topic_qos.reliability.kind = DDS::BEST_EFFORT_RELIABILITY_QOS;

        //Make the tailored QoS the new default
        status = participant->set_default_topic_qos(topic_qos);
        checkStatus(status, "DDS::DomainParticipant::set_default_topic_qos");

        //Use the changed policy when defining the MSFPPacket topic
        MSFPPacketTopic = participant->create_topic(
            "micros_swarm_framework_topic",
            MSFPPacketTypeName,
            topic_qos,
            NULL,
            STATUS_MASK_NONE);
        checkHandle(MSFPPacketTopic.in(), "DDS::DomainParticipant::create_topic (MSFPPacket)");

        //Adapt the default PublisherQos to write into the "test" Partition
        status = participant->get_default_publisher_qos (pub_qos);
        checkStatus(status, "DDS::DomainParticipant::get_default_publisher_qos");
        pub_qos.partition.name.length(1);
        pub_qos.partition.name[0] = partitionName;

        //Create a Publisher for the ter application
        publisher_ = participant->create_publisher(pub_qos, NULL, STATUS_MASK_NONE);
        checkHandle(publisher_.in(), "DDS::DomainParticipant::create_publisher");

        //Create a DataWriter for the MSFPPacket Topic (using the appropriate QoS)
        parentWriter = publisher_->create_datawriter(
            MSFPPacketTopic.in(),
            DATAWRITER_QOS_USE_TOPIC_QOS,
            NULL,
            STATUS_MASK_NONE);
        checkHandle(parentWriter, "DDS::Publisher::create_datawriter (MSFPPacket)");

        //Narrow the abstract parent into its typed representative
        MSFPPacketDW = MSFPPacketDataWriter::_narrow(parentWriter);
        checkHandle(MSFPPacketDW.in(), "NetworkPartitionsData::MSFPPacketDataWriter::_narrow");
        
        packet_=new micros_swarm_framework::MSFPPacket();
        packet_->packet_source = 1;
        packet_->packet_version = 0;
        packet_->packet_type = 0;
        packet_->packet_data = "";
        packet_->package_check_sum=0;
        
        userHandle = MSFPPacketDW->register_instance(*packet_);
    }
    
    void Publisher::publish(MSFPPacket *packet)
    {  
        packet_ = packet;

        status = MSFPPacketDW->write(*packet_, userHandle);
        checkStatus(status, "NetworkPartitionsData::MSFPPacketDataWriter::write");
    }
    
    Publisher::~Publisher()
    {
        status = MSFPPacketDW->dispose(*packet_, userHandle);
        checkStatus(status, "NetworkPartitionsData::MSFPPacketDataWriter::dispose");
        status = MSFPPacketDW->unregister_instance(*packet_, userHandle);
        checkStatus(status, "NetworkPartitionsData::MSFPPacketDataWriter::unregister_instance");

        //Release the data-samples
        delete packet_;     

        //Remove the DataWriters 
        status = publisher_->delete_datawriter(MSFPPacketDW.in() );
        checkStatus(status, "DDS::Publisher::delete_datawriter (MSFPPacketDW)");

        //Remove the Publisher
        status = participant->delete_publisher(publisher_.in() );
        checkStatus(status, "DDS::DomainParticipant::delete_publisher");

        status = participant->delete_topic( MSFPPacketTopic.in() );
        checkStatus(status, "DDS::DomainParticipant::delete_topic (MSFPPacketTopic)");

        //Remove the type-names
        string_free(MSFPPacketTypeName);

        //Remove the DomainParticipant
        status = dpf->delete_participant( participant.in() );
        checkStatus(status, "DDS::DomainParticipantFactory::delete_participant");

        cout << "Completed ter example" << endl;
    }
};

/*
int main()
{
    micros_swarm_framework::MSFPPacket *packet;
    char buf[MAX_PACKET_LEN];
    packet = new micros_swarm_framework::MSFPPacket();
    checkHandle(packet, "new MSFPPacket");
    
    micros_swarm_framework::Publisher publisher;
    
    for (int i = 1; i <= NUM_PACKET; i++) {
        packet->packet_source = 1;
        packet->packet_version = 0;
        packet->packet_type = 0;
        snprintf(buf, MAX_PACKET_LEN, "Packet no. %d", i);
        packet->packet_data = string_dup(buf);
        packet->package_check_sum=0;
        cout << "Writing packet: \"" << packet->packet_data << "\"" << endl;
        publisher.publish(packet);
        sleep (1); 
    }

    return 0;
}
*/
