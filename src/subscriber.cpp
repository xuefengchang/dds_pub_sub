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
 * LOGICAL_NAME:    MessageBoard.cpp
 * FUNCTION:        OpenSplice NetworkPartition example code.
 * MODULE:          NetworkPartition example.
 * DATE             june 2007.
 ************************************************************************
 *
 * This file contains the implementation for the 'MessageBoard' executable.
 *
 ***/

#include <iostream>
#include <string.h>
#include "ccpp_dds_dcps.h"
#include "check_status.h"
#include "ccpp_MSFPPacket.h"
#include "example_main.h"
#include "MSFPPacket_listener.h"

#include "subscriber.h"

using namespace DDS;

namespace micros_swarm_framework{
    
    Subscriber::Subscriber()
    {
        packetSeq = new MSFPPacketSeq();
        infoSeq = new SampleInfoSeq();
        domain = 0;
        terminated = false;
        partitionName = "test";
        MSFPPacketTypeName = NULL;
    
        //Create a DomainParticipantFactory and a DomainParticipant (using Default QoS settings)
        dpf = DomainParticipantFactory::get_instance();
        checkHandle(dpf.in(), "DDS::DomainParticipantFactory::get_instance");
        participant = dpf->create_participant (
            domain,
            PARTICIPANT_QOS_DEFAULT,
            NULL,
            STATUS_MASK_NONE);
        checkHandle(participant, "DDS::DomainParticipantFactory::create_participant");

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

        //Adapt the default SubscriberQos to read from the "test" Partition
        status = participant->get_default_subscriber_qos (sub_qos);
        checkStatus(status, "DDS::DomainParticipant::get_default_subscriber_qos");
        sub_qos.partition.name.length(1);
        sub_qos.partition.name[0] = partitionName;

        //Create a Subscriber for the MessageBoard application/
        subscriber_ = participant->create_subscriber(sub_qos, NULL, STATUS_MASK_NONE);
        checkHandle(subscriber_.in(), "DDS::DomainParticipant::create_subscriber");

        //Create a DataReader for the NamedMessage Topic (using the appropriate QoS)
        parentReader = subscriber_->create_datareader(
            MSFPPacketTopic.in(),
            DATAREADER_QOS_USE_TOPIC_QOS,
            NULL,
            STATUS_MASK_NONE);
        checkHandle(parentReader, "DDS::Subscriber::create_datareader");

        //Narrow the abstract parent into its typed representative
        MSFPPacketDR = MSFPPacketDataReader::_narrow(parentReader);
        checkHandle(MSFPPacketDR.in(), "NetworkPartitionsData::MSFPPacketDataReader::_narrow");

        timeout = { 0, 200000000 };

        //Print a message that the MessageBoard has opened
        cout << "subscriber_ started..."<< endl;
    }
    
    void Subscriber::subscribe(std::string topic)
    {
        MSFPPacketListener *myListener = new MSFPPacketListener();
        myListener->MSFPPacketDR_ = MSFPPacketDataReader::_narrow(MSFPPacketDR.in());
        checkHandle(myListener->MSFPPacketDR_.in(), "MSFPPacketDataReader::_narrow");

        cout << "=== [MSFPPacketSubscriber] set_listener" << endl;
        DDS::StatusMask mask = DDS::DATA_AVAILABLE_STATUS | DDS::REQUESTED_DEADLINE_MISSED_STATUS;
        //DDS::StatusMask mask = DDS::DATA_AVAILABLE_STATUS;
        myListener->MSFPPacketDR_->set_listener(myListener, mask);
        cout << "=== [MSFPPacketSubscriber] Ready ..." << endl;
        myListener->closed_ = false;

    
        // waitset used to avoid spinning in the loop below
        DDS::WaitSet_var ws = new DDS::WaitSet();
        ws->attach_condition(myListener->guardCond_);
        DDS::ConditionSeq condSeq;
        while (!myListener->closed_)
        {
            // To avoid spinning here. We can either use a sleep or better a WaitSet.
            ws->wait(condSeq, timeout);
            myListener->guardCond_->set_trigger_value(false);
        }
        cout << "=== [MSFPPacketSubscriber] Market Closed." << endl;
    }
    
    void Subscriber::subscribe2(std::string topic)
    {
        while(!terminated)
        {
            //Note: using read does not remove the samples from unregistered instances from the DataReader. This means
            //that the DataRase would use more and more resources. That's why we use take here instead
            status = MSFPPacketDR->take(
                packetSeq,
                infoSeq,
                LENGTH_UNLIMITED,
                ANY_SAMPLE_STATE,
                ANY_VIEW_STATE,
                ALIVE_INSTANCE_STATE );
            checkStatus(status, "NetworkPartitionsData::MSFPPacketDataReader::take");

            for (ULong i = 0; i < packetSeq->length(); i++) {
                MSFPPacket *packet = &(packetSeq[i]); 
                cout<<packet->packet_source<<": "<<packet->packet_version<<", "<<packet->packet_type<<", "<<packet->packet_data<<", "<<packet->package_check_sum<<endl;
            }

            status = MSFPPacketDR->return_loan(packetSeq, infoSeq);
            checkStatus(status, "NetworkPartitionsData::MSFPPacketDataReader::return_loan");

            //Sleep for some amount of time, so as not to consume too many CPU cycles.
            //sleep(1);
        }
    }
    
    Subscriber::~Subscriber()
    {
        //Remove the DataReade
        status = subscriber_->delete_datareader(MSFPPacketDR.in());
        checkStatus(status, "DDS::Subscriber::delete_datareader");

        //Remove the Subscriber
        status = participant->delete_subscriber(subscriber_.in());
        checkStatus(status, "DDS::DomainParticipant::delete_subscriber");

        //Remove the Topic
        status = participant->delete_topic(MSFPPacketTopic.in());
        checkStatus(status, "DDS::DomainParticipant::delete_topic (MSFPPacketTopic)");

        //De-allocate the type-names
        string_free(MSFPPacketTypeName);

        //Remove the DomainParticipant
        status = dpf->delete_participant(participant.in());
        checkStatus(status, "DDS::DomainParticipantFactory::delete_participant");
    }
};

/*
int main()
{
    micros_swarm_framework::Subscriber subscriber;
    subscriber.subscribe("micros_swarm_framework_topic");
    return 0;
}
*/
