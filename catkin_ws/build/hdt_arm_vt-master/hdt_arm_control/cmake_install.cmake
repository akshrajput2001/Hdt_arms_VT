# Install script for directory: /home/arl/catkin_ws/src/hdt_arm_vt-master/hdt_arm_control

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/arl/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_arm_control/action" TYPE FILE FILES
    "/home/arl/catkin_ws/src/hdt_arm_vt-master/hdt_arm_control/action/JointSpacePath.action"
    "/home/arl/catkin_ws/src/hdt_arm_vt-master/hdt_arm_control/action/TaskSpacePath.action"
    "/home/arl/catkin_ws/src/hdt_arm_vt-master/hdt_arm_control/action/TrajectoryPath.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_arm_control/msg" TYPE FILE FILES
    "/home/arl/catkin_ws/devel/share/hdt_arm_control/msg/JointSpacePathAction.msg"
    "/home/arl/catkin_ws/devel/share/hdt_arm_control/msg/JointSpacePathActionGoal.msg"
    "/home/arl/catkin_ws/devel/share/hdt_arm_control/msg/JointSpacePathActionResult.msg"
    "/home/arl/catkin_ws/devel/share/hdt_arm_control/msg/JointSpacePathActionFeedback.msg"
    "/home/arl/catkin_ws/devel/share/hdt_arm_control/msg/JointSpacePathGoal.msg"
    "/home/arl/catkin_ws/devel/share/hdt_arm_control/msg/JointSpacePathResult.msg"
    "/home/arl/catkin_ws/devel/share/hdt_arm_control/msg/JointSpacePathFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_arm_control/msg" TYPE FILE FILES
    "/home/arl/catkin_ws/devel/share/hdt_arm_control/msg/TaskSpacePathAction.msg"
    "/home/arl/catkin_ws/devel/share/hdt_arm_control/msg/TaskSpacePathActionGoal.msg"
    "/home/arl/catkin_ws/devel/share/hdt_arm_control/msg/TaskSpacePathActionResult.msg"
    "/home/arl/catkin_ws/devel/share/hdt_arm_control/msg/TaskSpacePathActionFeedback.msg"
    "/home/arl/catkin_ws/devel/share/hdt_arm_control/msg/TaskSpacePathGoal.msg"
    "/home/arl/catkin_ws/devel/share/hdt_arm_control/msg/TaskSpacePathResult.msg"
    "/home/arl/catkin_ws/devel/share/hdt_arm_control/msg/TaskSpacePathFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_arm_control/msg" TYPE FILE FILES
    "/home/arl/catkin_ws/devel/share/hdt_arm_control/msg/TrajectoryPathAction.msg"
    "/home/arl/catkin_ws/devel/share/hdt_arm_control/msg/TrajectoryPathActionGoal.msg"
    "/home/arl/catkin_ws/devel/share/hdt_arm_control/msg/TrajectoryPathActionResult.msg"
    "/home/arl/catkin_ws/devel/share/hdt_arm_control/msg/TrajectoryPathActionFeedback.msg"
    "/home/arl/catkin_ws/devel/share/hdt_arm_control/msg/TrajectoryPathGoal.msg"
    "/home/arl/catkin_ws/devel/share/hdt_arm_control/msg/TrajectoryPathResult.msg"
    "/home/arl/catkin_ws/devel/share/hdt_arm_control/msg/TrajectoryPathFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_arm_control/cmake" TYPE FILE FILES "/home/arl/catkin_ws/build/hdt_arm_vt-master/hdt_arm_control/catkin_generated/installspace/hdt_arm_control-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/arl/catkin_ws/devel/include/hdt_arm_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/arl/catkin_ws/devel/share/roseus/ros/hdt_arm_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/arl/catkin_ws/devel/share/common-lisp/ros/hdt_arm_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/arl/catkin_ws/devel/share/gennodejs/ros/hdt_arm_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/arl/catkin_ws/devel/lib/python2.7/dist-packages/hdt_arm_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/arl/catkin_ws/devel/lib/python2.7/dist-packages/hdt_arm_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/arl/catkin_ws/build/hdt_arm_vt-master/hdt_arm_control/catkin_generated/installspace/hdt_arm_control.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_arm_control/cmake" TYPE FILE FILES "/home/arl/catkin_ws/build/hdt_arm_vt-master/hdt_arm_control/catkin_generated/installspace/hdt_arm_control-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_arm_control/cmake" TYPE FILE FILES
    "/home/arl/catkin_ws/build/hdt_arm_vt-master/hdt_arm_control/catkin_generated/installspace/hdt_arm_controlConfig.cmake"
    "/home/arl/catkin_ws/build/hdt_arm_vt-master/hdt_arm_control/catkin_generated/installspace/hdt_arm_controlConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_arm_control" TYPE FILE FILES "/home/arl/catkin_ws/src/hdt_arm_vt-master/hdt_arm_control/package.xml")
endif()

