#include <iostream>
#include "check_status.h"
#include "subscriber.h"

using namespace DDS;

int main()
{
    micros_swarm_framework::Subscriber subscriber;
    subscriber.subscribe("micros_swarm_framework_topic");
    return 0;
}
