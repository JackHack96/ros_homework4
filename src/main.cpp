#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <sensor_msgs/JointState.h>
#include <chrono>
#include <thread>
#include "kinematic.h"
#include "workspace_checker.h"

void fk(const sensor_msgs::JointState &msg) {
    end_effector_pos_t pos = forward_kinematic(
            msg.position[0], msg.position[1], msg.position[2], msg.position[3]);
    std::this_thread::sleep_for(std::chrono::milliseconds(500));
    std::cout << "Forward kinematic: " << pos << std::flush;
}

void ik(const geometry_msgs::Twist &msg) {
    joint_angles_t joints = inverse_kinematic(msg.linear.x, msg.linear.y, msg.linear.z, msg.angular.z);

    std::this_thread::sleep_for(std::chrono::milliseconds(500));
    std::cout << "Inverse kinematic: " << joints << std::flush;
}

int main(int argc, char **argv) {
    int ans;
    double inp1, inp2, inp3, inp4;
    std::cout << "Please select the ans:\n1) Manual mode\n2) Automatic mode\n";
    std::cin >> ans;
    if (ans == 1) {
        do {
            std::cout
                    << "Do you want to use forward or inverse kinematics?\n1) Forward kinematic\n2) Inverse kinematic\n";
            std::cin >> ans;
            if (ans == 1) {
                std::cout << "Please type joint angles (theta1 theta2 theta3 d4): " << std::endl;
                std::cin >> inp1 >> inp2 >> inp3 >> inp4;
                std::cout << forward_kinematic(inp1, inp2, inp3, inp4);
            } else {
                std::cout << "Please type end effector position (x y z angle): " << std::endl;
                std::cin >> inp1 >> inp2 >> inp3 >> inp4;
                if (workspace_control(inp1, inp2, inp3))
                    std::cout << inverse_kinematic(inp1, inp2, inp3, inp4);
                else
                    std::cout << "The desired point is not in the workspace!" << std::endl;
            }
            std::cout << "\nContinue input? (1/any other)";
            std::cin >> ans;
        } while (ans == 1);
    } else {
        ros::init(argc, argv, "main");
        ros::NodeHandle node;

        ros::Subscriber joint_state_sub_ = node.subscribe("/joint_states", 1, &fk);
        ros::Subscriber positionEndEffector = node.subscribe("/point", 1, &ik);


        ros::spin();
    }
    return 0;
}