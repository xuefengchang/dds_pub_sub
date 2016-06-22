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
 
#ifndef PUBLISHER_H_
#define PUBLISHER_H_

#include <string>
#include <iostream>
#include "ccpp_dds_dcps.h"
#include "check_status.h"
#include "ccpp_MSFPPacket.h"
#include "example_main.h"

//#define MAX_PACKET_LEN 256

using namespace DDS;

namespace micros_swarm_framework{
    class Publisher
    {
        private:
            int robot_id_;
            DomainParticipantFactory_var  dpf;
            DomainParticipant_var  participant;
            Topic_var  MSFPPacketTopic;
            Publisher_var  publisher_;
            DataWriter_ptr  parentWriter;
            TopicQos  topic_qos;
            PublisherQos  pub_qos;
            DataWriterQos  dw_qos;

            DomainId_t  domain;
            InstanceHandle_t  userHandle;
            ReturnCode_t  status;

            MSFPPacketTypeSupport_var  MSFPPacketTS;
            MSFPPacketDataWriter_var  MSFPPacketDW;

            //Sample definitions
            MSFPPacket  *packet_;

            int  sourceID;
            int  i;
            const char  *partitionName;
            char  *MSFPPacketTypeName;
            //char  buf[MAX_PACKET_LEN];
            
        public:
            Publisher();
            void publish(MSFPPacket *packet);
            ~Publisher();
    };
};

#endif
