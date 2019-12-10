#ifndef SCARABOT_KINEMATIC_H
#define SCARABOT_KINEMATIC_H

#include <iostream>

typedef struct end_effector_pos {
    double x;
    double y;
    double z;
    double angle;
} end_effector_pos_t;

std::ostream &operator<<(std::ostream &os, end_effector_pos_t const &j);

typedef struct joint_angles {
    double theta1;
    double theta2;
    double theta3;
    double d4;
} joint_angles_t;

std::ostream &operator<<(std::ostream &os, joint_angles_t const &j);

end_effector_pos_t forward_kinematic(double theta1, double theta2, double theta3, double d4);

joint_angles_t inverse_kinematic(double x, double y, double z, double alfa_zeta);

#endif //SCARABOT_KINEMATIC_H
