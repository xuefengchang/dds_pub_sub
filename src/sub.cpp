#include <iostream>
#include "check_status.h"
#include "subscriber.h"

using namespace DDS;

void callBack(const micros_swarm_framework::MSFPPacket& packet)
{
    //std::cout<<"Hello World!"<<std::endl;
    std::cout<<packet.packet_source<<": "<<packet.packet_version<<", "<<packet.packet_type<<", "<<packet.packet_data<<", "<<packet.package_check_sum<<std::endl;
}

int main()
{
    micros_swarm_framework::Subscriber subscriber("micros_swarm_framework_topic");
    subscriber.subscribe(callBack);
    return 0;
}
