cmake_minimum_required(VERSION 2.8.3)
project(scarabot)

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
        geometry_msgs
        roscpp
        rospy
        std_msgs
        tf2
        tf2_ros
        tf2_geometry_msgs
        tf
        )

add_message_files(FILES Message.msg)
add_service_files(FILES Service.srv)

generate_messages(DEPENDENCIES std_msgs)

## Declare a catkin package
catkin_package(
        CATKIN_DEPENDS geometry_msgs roscpp rospy std_msgs tf2 tf2_ros tf
)

## Build main
include_directories(include ${catkin_INCLUDE_DIRS})

#EXECUTABLE main
add_executable(publisher src/publisher.cpp)
target_link_libraries(publisher ${catkin_LIBRARIES})

add_executable(main src/main.cpp src/kinematic.cpp src/workspace_checker.cpp)
target_link_libraries(main ${catkin_LIBRARIES})