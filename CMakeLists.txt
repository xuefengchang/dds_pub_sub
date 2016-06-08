cmake_minimum_required(VERSION 2.8)
project(dds_pub_sub)

set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)

include (MacroOpenSplice)
include (osmacros)

INCLUDE_DIRECTORIES(${PROJECT_SOURCE_DIR}/include)

find_package (OpenSplice REQUIRED)

include_directories(cpp ${OpenSplice_INCLUDE_DIRS})
link_directories(${OpenSplice_LIBRARIES} ${PROJECT_SOURCE_DIR}/lib)

OpenSplice_IDLGEN(idl/NetworkPartitionsData.idl)

add_definitions (
 ${OpenSplice_DEFINITIONS}
 ${DEFINITIONS}
)

SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
SET(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib) 

add_library(libsacpp_pub_sub_types SHARED
    idl/gencxx/data.cpp 
    idl/gencxx/dataDcps.cpp 
    idl/gencxx/dataDcps_impl.cpp 
    idl/gencxx/dataSplDcps.cpp
)

add_executable(publisher src/publisher.cpp src/check_status.cpp)
target_link_libraries(publisher 
    ${DATAMODEL} 
    ${OpenSplice_LIBRARIES}
    libsacpp_pub_sub_types
    -lpthread
)

add_executable(subscriber src/subscriber.cpp src/check_status.cpp)
target_link_libraries(subscriber
    ${DATAMODEL} 
    ${OpenSplice_LIBRARIES}
    libsacpp_pub_sub_types
    -lpthread
)
