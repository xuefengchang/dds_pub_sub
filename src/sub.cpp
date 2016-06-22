#include <iostream>
#include "check_status.h"
#include "subscriber.h"

using namespace DDS;

int main()
{
    micros_swarm_framework::Subscriber subscriber("micros_swarm_framework_topic");
    subscriber.subscribe();
    return 0;
}
