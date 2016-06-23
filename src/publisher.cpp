
#include <string>
#include <iostream>
#include <sstream>
#include <vector>
#include "ccpp_dds_dcps.h"
#include "check_status.h"
#include "ccpp_MSFPPacket.h"
#include "example_main.h"

#include "publisher.h"

using namespace DDS;

namespace micros_swarm_framework{
    
    Publisher::Publisher(std::string topic_name)
    {
        domain = 0;
        
        topic_name_ = topic_name.data();
        
        MSFPPacketTypeName = NULL;
        
        //Create a DomainParticipantFactory and a DomainParticipant, using Default QoS settings
        dpf = DomainParticipantFactory::get_instance ();
        checkHandle(dpf.in(), "DDS::DomainParticipantFactory::get_instance");
        participant = dpf->create_participant(domain, PARTICIPANT_QOS_DEFAULT, NULL, STATUS_MASK_NONE);
        checkHandle(participant.in(), "DDS::DomainParticipantFactory::create_participant");

        //Register the required datatype
        MSFPPacketTS = new MSFPPacketTypeSupport();
        checkHandle(MSFPPacketTS.in(), "new MSFPPacketTypeSupport");
        MSFPPacketTypeName = MSFPPacketTS->get_type_name();
        status = MSFPPacketTS->register_type(
            participant.in(),
            MSFPPacketTypeName);
        checkStatus(status, "micros_swarm_framework::MSFPPacketTypeSupport::register_type");

        //Set the ReliabilityQosPolicy to BEST_EFFORT_RELIABILITY
        status = participant->get_default_topic_qos(topic_qos);
        checkStatus(status, "DDS::DomainParticipant::get_default_topic_qos");
        topic_qos.reliability.kind = DDS::BEST_EFFORT_RELIABILITY_QOS;

        //Make the tailored QoS the new default
        status = participant->set_default_topic_qos(topic_qos);
        checkStatus(status, "DDS::DomainParticipant::set_default_topic_qos");

        //Use the changed policy when defining the MSFPPacket topic
        MSFPPacketTopic = participant->create_topic(
            topic_name_,
            MSFPPacketTypeName,
            topic_qos,
            NULL,
            STATUS_MASK_NONE);
        checkHandle(MSFPPacketTopic.in(), "DDS::DomainParticipant::create_topic (MSFPPacket)");

        //Adapt the default PublisherQos to write into the "micros_swarm_framework_default_partion" Partition
        status = participant->get_default_publisher_qos (pub_qos);
        checkStatus(status, "DDS::DomainParticipant::get_default_publisher_qos");
        pub_qos.partition.name.length(1);
        //pub_qos.partition.name[0] = "micros_swarm_framework_default_partion";
        pub_qos.partition.name[0] = "robot_partition_1";

        //Create a Publisher for the application
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
        checkHandle(MSFPPacketDW.in(), "micros_swarm_framework::MSFPPacketDataWriter::_narrow");
        
        packet_=new micros_swarm_framework::MSFPPacket();
        packet_->packet_source = 1;
        packet_->packet_version = 0;
        packet_->packet_type = 0;
        packet_->packet_data = "";
        packet_->package_check_sum=0;
        
        userHandle = MSFPPacketDW->register_instance(*packet_);
    }
    
    void Publisher::setNeighbors(std::vector<unsigned int>& neighbors)
    {
        neighbors_.clear();
        int len=neighbors.size();
        for(int i=0;i<len;i++)
        {
            neighbors_.push_back(neighbors[i]);
        }
    }
    
    std::vector<unsigned int> Publisher::getNeighbors()
    {
        return neighbors_;
    }
    
    void Publisher::publish(MSFPPacket *packet)
    {
        status = publisher_->get_qos (pub_qos);
        checkStatus(status, "micros_swarm_framework::publish::get_qos");
        
        int partition_len=neighbors_.size();
        pub_qos.partition.name.length(partition_len);
        
        for(int i=0;i<partition_len;i++)
        {
             std::stringstream s;
             s << neighbors_[i];
             std::string partition_name="robot_partition_"+s.str();
             pub_qos.partition.name[i] = partition_name.data();
             
             std::cout<<partition_name.data()<<std::endl;
        }
        
        publisher_->set_qos(pub_qos);
    
        packet_ = packet;

        //userHandle = MSFPPacketDW->register_instance(*packet_);
        status = MSFPPacketDW->write(*packet_, userHandle);
        checkStatus(status, "micros_swarm_framework::MSFPPacketDataWriter::write");
    }
    
    Publisher::~Publisher()
    {
        status = MSFPPacketDW->dispose(*packet_, userHandle);
        checkStatus(status, "micros_swarm_framework::MSFPPacketDataWriter::dispose");
        status = MSFPPacketDW->unregister_instance(*packet_, userHandle);
        checkStatus(status, "micros_swarm_framework::MSFPPacketDataWriter::unregister_instance");

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
