#include <cmath>
#include "workspace_checker.h"

bool workspace_control(double x, double y, double z) {
    double link1 = 0.3;
    double link2 = 0.3;

    double link1_max_angle = 2.5;
    double link2_max_angle = 2;

    if (z < -0.45 || z > 0)
        return false;

    double min_radius_pow2 = pow(link1, 2) + pow(link2, 2) - 2 * link1 * link2 * cos(M_PI - link2_max_angle);
    double max_radius = link1 + link2;

    if ((pow(x, 2) + pow(y, 2) > pow(max_radius, 2)) || (pow(x, 2) + pow(y, 2) < min_radius_pow2))
        return false;
    else if (x > max_radius * cos(link1_max_angle))
        return true;

    double cx = link1 * cos(link1_max_angle);
    double cy = link1 * sin(link1_max_angle);
    if ((pow(x - cx, 2) + pow(y - cy, 2) > pow(link2, 2)) || (pow(x - cx, 2) + pow(y + cy, 2) > pow(link2, 2)))
        return false;
}