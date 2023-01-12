# ros_system_services
System services to run ROS core and launch nodes on boot.

There is an accompanying [blog post](https://mshields.name/blog/2022-03-16-running-ros-nodes-on-boot/) for this repository.

### Customisation for Your Environment
Edit the following files with entries for your own environment username.
- service_files/roscore.service
- service_files/roslaunch.service
- shell_launch_files/ros_package_auto_launch

Depending on your deployment architecture you may also need to update the env.sh file.

### Installation
```shell
. ./install.sh
```

### Troubleshooting
You can check the service units are running with either of the following:
```shell
sudo systemctl status roscore.service
```

```shell
sudo systemctl status ros_package.service
```
