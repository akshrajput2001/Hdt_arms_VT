# Hdt_arms_VT

ReadME file for HDT ARMS
PROGRESS so far
able to build pakages in the hdt_arm_vt repo

errors found:
yaml file duplicacy
installed socketcan, moveit
changed file name in folder hdt_saffir_moveit/config hdt_saffir_both.srdf


running rviz through the folder hdt_saffir_moveit 
roslaunch hdt_saffir_moveit demo.launch

Description of the packages:
Hdt_saffir_description has a full assembly urdf (hdt_saffir_fixedbase.urdf) has arms mounted on front
hdt_saffir_tiger.xacro has arms mounted on sides

PACKAGE- hdt_saffir_gazebo
launch folder-
hdt_saffir_fixedbase.launch -> gives error
hdt_saffir_fixedbase_spawn.launch -> runs a node and waits for service call
hdt_saffir_left.launch ->  starts gazebo with left arm (dead)

To figure out-
how to individually control joints





MEETING MINUTES:
4th march:
till now have figured out, moveit, running rviz and moving arm one place to another,
have written moveit_test2 package, custom launch files, based on the AOR YT vids.
Tasks- Dr.A will email jeeseop again, contact iwan,
figure out socketcan, 
also we are not usign peak can








Description of the files:


Observations from commits:
hdt_arm_vt has master, simulator branch
hdt_arm_controller has 3 branches

major code changes are in hdt_controller.cpp

