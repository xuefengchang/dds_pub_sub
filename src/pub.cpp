#include <iostream>
#include <vector>
#include "check_status.h"
#include "publisher.h"

#define MAX_PACKET_LEN 256
#define NUM_PACKET 1000000

using namespace DDS;

int main()
{
    micros_swarm_framework::MSFPPacket *packet;
    char buf[MAX_PACKET_LEN];
    packet = new micros_swarm_framework::MSFPPacket();
    checkHandle(packet, "new MSFPPacket");
    
    micros_swarm_framework::Publisher publisher("micros_swarm_framework_topic");
    
    for (int i = 1; i <= NUM_PACKET; i++) {
        packet->packet_source = 1;
        packet->packet_version = 0;
        packet->packet_type = 0;
        snprintf(buf, MAX_PACKET_LEN, "Packet no. %d", i);
        packet->packet_data = string_dup(buf);
        packet->package_check_sum=0;
        std::cout << "Writing packet: \"" << packet->packet_data << "\"" << endl;
        publisher.publish(packet);
        sleep (1); 
    }

    return 0;
}
