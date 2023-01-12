#!/bin/bash
sudo mkdir /etc/ros
sudo cp env.sh /etc/ros/env.sh

sudo cp service_files/roscore.service /etc/systemd/system/roscore.service

sudo cp service_files/roslaunch.service /etc/systemd/system/roslaunch.service
sudo cp shell_launch_files/ros_package_auto_launch /usr/sbin/ros_package_auto_launch
sudo chmod +x /usr/sbin/ros_package_auto_launch

sudo systemctl daemon-reload

sudo systemctl enable roscore.service
# sudo systemctl start roscore.service

sudo systemctl enable roslaunch.service
# sudo systemctl start ros_package.service

# sudo systemctl status roscore.service
# sudo systemctl status ros_package.service