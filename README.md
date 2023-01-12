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
Running the install.sh file will allocate the files to the correct locations with appropriate permissions. It will also enable the services so that they will run on boot, however it will not start them for your current working session, see below for that.
```shell
. ./install.sh
```

### Use
To start the system services for the current session use the following two commands.
```shell
sudo systemctl start roscore.service
sudo systemctl start ros_package.service
```


### Troubleshooting
You can check the service units are running with either of the following:
```shell
sudo systemctl status roscore.service
```

```shell
sudo systemctl status ros_package.service
```
