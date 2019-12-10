#include "kinematic.h"
#include <cmath>

end_effector_pos_t forward_kinematic(double theta1, double theta2, double theta3, double d4) {
    end_effector_pos_t pose;
    pose.x = 0.3 * cos(theta1 + theta2) + 0.3 * cos(theta1 + theta2 + theta3);
    pose.y = 0.3 * sin(theta1 + theta2) + 0.3 * sin(theta1 + theta2 + theta3);
    pose.z = d4;
    pose.angle = theta1 + theta2 + theta3;
    return pose;
}

std::ostream &operator<<(std::ostream &os, end_effector_pos_t const &j) {
    return os << j.x << ", " << j.y << ", " << j.z << ", " << j.angle << std::endl;
}

joint_angles_t inverse_kinematic(double x, double y, double z, double alfa_zeta) {
    joint_angles_t joints;
    double cos_theta2 = (((pow(x, 2) + pow(y, 2)) - 0.18) / 0.18);
    double sin_theta2 = sqrt(1 - ((pow(x, 2) + pow(y, 2) - 0.18) / 0.18));
    joints.theta1 = atan2(sin_theta2, cos_theta2);

    double sin_theta1 = ((0.3 + 0.3 * cos_theta2) * y - (0.3 * sin_theta2 * x)) / (pow(x, 2) + pow(y, 2));
    double cos_theta1 = ((0.3 + 0.3 * cos_theta2) * x + (0.3 * sin_theta2 * y)) / (pow(x, 2) + pow(y, 2));
    joints.theta2 = atan2(sin_theta1, cos_theta1);

    joints.theta3 = alfa_zeta - joints.theta1 - joints.theta2;
    joints.d4 = z;
    return joints;
}

std::ostream &operator<<(std::ostream &os, joint_angles_t const &j) {
    return os << j.theta1 << ", " << j.theta2 << ", " << j.theta3 << ", " << j.d4 << std::endl;
}