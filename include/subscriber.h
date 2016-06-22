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

#ifndef SUBSCRIBER_H_
#define SUBSCRIBER_H_

#include <iostream>
#include <string.h>
#include "ccpp_dds_dcps.h"
#include "check_status.h"
#include "ccpp_MSFPPacket.h"
#include "example_main.h"
#include "MSFPPacket_listener.h"

using namespace DDS;
using namespace micros_swarm_framework;

namespace micros_swarm_framework{
    class Subscriber
    {
        private:
            /* Generic DDS entities */
            DomainParticipantFactory_var  dpf;
            DomainParticipant_var  participant;
            Topic_var  MSFPPacketTopic;
            Subscriber_var  subscriber_;
            DataReader_ptr  parentReader;

            /* Type-specific DDS entities */
            MSFPPacketTypeSupport_var  MSFPPacketTS;
            MSFPPacketDataReader_var  MSFPPacketDR;
            MSFPPacketSeq_var  packetSeq;
            SampleInfoSeq_var  infoSeq;

            /* QosPolicy holders */
            TopicQos  topic_qos;
            SubscriberQos  sub_qos;
            DDS::StringSeq  parameterList;

            /* DDS Identifiers */
            DomainId_t  domain;
            ReturnCode_t  status;

            /* Others */
            bool  terminated;
            const char *partitionName;
            char  *MSFPPacketTypeName;
            
            Duration_t timeout;
        public:
            Subscriber();
            void subscribe(std::string topic);
            void subscribe2(std::string topic);
            ~Subscriber();
    };
};

#endif

