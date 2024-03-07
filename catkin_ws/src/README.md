# Installation
 ##Softwar downlgaaffir_control_EXPORTED_TARGETS" of target
  "saffir_control" does not exist.
This warning is for project developers.  Use -Wno-dev to suppress it.

CMake Warning (dev) at CMakeLists.txt:127 (add_dependencies):
  Policy CMP0046 is not set: Error on non-existent dependency in
  add_dependencies.  Run "cmake --help-policy CMP0046" for policy details.
  Use the cmake_policy command to set the policy and suppress this warning.

  The dependency target "hdt_saffir_control_EXPORTED_TARGETS" of target
  "yaml_publisher" does not exist.
This warning is for project developers.  Use -Wno-dev to suppress it.

 from GitLab (This repository).  
[GitLab/hdt_arm_vt](https://gitlab.com/vt_hdt/hdt_arm_vt)


    cd ${YOUR_WORKSPACE}/src/hdt_arm_vt
    rosdep install --from-paths src --ignore-src -r -y
    catkin build

## PCAN-USB driver
Download v8.x.x from following link and save it at /user/local/lib.  
[PEAK-System](http://www.peak-system.com/fileadmin/media/linux/index.htm)

    cd /user/local/lib
    sudo apt-get install libpopt-dev
    cd peak-linux-driver-8.x.x
    make -C driver NET=NETDEV_SUPPORT
    make -C lib
    make -C test
    sudo make install

    note: ubuntu 16.04.5 should be installed for this
    note: driver 8.6.0 should be installed

# Operation

1. Connect PCAN-USB (right arm first if you operate both arms).
2. 

        rosrun hdt_adroit_driver peak_usb.sh can0
        rosrun hdt_adroit_driver peak_usb.sh can1

3. 

        roslaunch hdt_adroit_driver hdt_adroit_coms.launch coms_interface:=dualcan impedance_enabled:=false arm:=fixedbase kmin:=300 kmax:=400 damping_ratio:=2.0

    Press “s” for checking if all joints are visible (“q” for stop launch, Ctrl C does not work).
4. Send joint angle and velocity from bash (velocity must be > 0).

        rostopic pub /hdt_adroit_coms/joint_cmd sensor_msgs/JointState "header:
            seq: 0
            stamp: {secs: 0, nsecs: 0}
            frame_id:"
        name: ['joint2']
        position: [0.6301430592536926]
        velocity: [0.1]effort: [0]"

```
rostopic pub /hdt_adroit_coms/joint_cmd sensor_msgs/intState '{header: {seq: 0, stamp: {secs: 0, nsecs: 0}, frame_id: ""}, name: ["left/joint1"], position: [-10.0], velocity: [0.25], effort: [10.0]}'
```

### Parameters

| Parameter           | Value                    | Description                                                 |
| :-----------------: | :----------------------: | :---------------------------------------------------------- |
| coms_interface      | dualcan                  | you do not have to change this if you operate single arm    |
| impedance_enabled   | false                    | change this to true if you use impedance control            |
| arm                 | fixedbase                | *fixedbase* is for ESCHER. Please use *tiger* for Tiger     |
| kmin                | 300                      | minimum elastic modulus                                     |
| kmax                | 400                      | maximum elastic modulus                                     |
| damping_ratio       | 2.0                      | softness of impedace                                        |


**Note: Tiger arms are interchanged (right arm is HDT left arm).**

### Branch explanation

#### tatsuya: from the kinetic-devel branch from hdt_arm package from cms_humanoid (Tatsuya is the final editor)

- almost same with the original package. Only some big change is for matching 16.04


#### yuki: from the yuki-fix branch from hdt_arm package from cms_humanoid (Yuki is the final editor)
 
- Some change is in here. Biggest one is commented out the pos,vel,effort value printing code

#### simulator: working branch

#### master : stable branch
