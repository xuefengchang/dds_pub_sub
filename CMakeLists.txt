cmake_minimum_required(VERSION 2.8)
project(dds_pub_sub)

set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)

include (MacroOpenSplice)
include (osmacros)

INCLUDE_DIRECTORIES(${PROJECT_SOURCE_DIR}/include)

find_package (OpenSplice REQUIRED)

include_directories(cpp ${OpenSplice_INCLUDE_DIRS})
link_directories(${OpenSplice_LIBRARIES} ${PROJECT_SOURCE_DIR}/lib)

#OpenSplice_IDLGEN(idl/MSFPPacket.idl)

add_definitions (
 ${OpenSplice_DEFINITIONS}
 ${DEFINITIONS}
)

SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
SET(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib) 

add_library(opensplice_dds_pub_sub SHARED
    src/MSFPPacket.cpp 
    src/MSFPPacketDcps.cpp 
    src/MSFPPacketDcps_impl.cpp 
    src/MSFPPacketSplDcps.cpp
    src/check_status.cpp
    src/MSFPPacket_listener.cpp
    src/publisher.cpp
    src/subscriber.cpp
)

add_executable(pub src/pub.cpp)
target_link_libraries(pub
    ${DATAMODEL} 
    ${OpenSplice_LIBRARIES}
    opensplice_dds_pub_sub
    libddskernel.so
    libdcpsisocpp.so
    libdcpssacpp.so
    -lpthread
)

add_executable(sub src/sub.cpp)
target_link_libraries(sub
    ${DATAMODEL} 
    ${OpenSplice_LIBRARIES}
    opensplice_dds_pub_sub
    libddskernel.so
    libdcpsisocpp.so
    libdcpssacpp.so
    -lpthread
)
