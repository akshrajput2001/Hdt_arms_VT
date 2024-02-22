# Install script for directory: /home/arl/Hdt_arms_VT/catkin_ws/src/hdt_saffir_control

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/arl/Hdt_arms_VT/catkin_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_saffir_control/action" TYPE FILE FILES
    "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_saffir_control/action/JointSpacePath.action"
    "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_saffir_control/action/TaskSpacePath.action"
    "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_saffir_control/action/TrajectoryPath.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_saffir_control/msg" TYPE FILE FILES
    "/home/arl/Hdt_arms_VT/catkin_ws/devel/share/hdt_saffir_control/msg/JointSpacePathAction.msg"
    "/home/arl/Hdt_arms_VT/catkin_ws/devel/share/hdt_saffir_control/msg/JointSpacePathActionGoal.msg"
    "/home/arl/Hdt_arms_VT/catkin_ws/devel/share/hdt_saffir_control/msg/JointSpacePathActionResult.msg"
    "/home/arl/Hdt_arms_VT/catkin_ws/devel/share/hdt_saffir_control/msg/JointSpacePathActionFeedback.msg"
    "/home/arl/Hdt_arms_VT/catkin_ws/devel/share/hdt_saffir_control/msg/JointSpacePathGoal.msg"
    "/home/arl/Hdt_arms_VT/catkin_ws/devel/share/hdt_saffir_control/msg/JointSpacePathResult.msg"
    "/home/arl/Hdt_arms_VT/catkin_ws/devel/share/hdt_saffir_control/msg/JointSpacePathFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_saffir_control/msg" TYPE FILE FILES
    "/home/arl/Hdt_arms_VT/catkin_ws/devel/share/hdt_saffir_control/msg/TaskSpacePathAction.msg"
    "/home/arl/Hdt_arms_VT/catkin_ws/devel/share/hdt_saffir_control/msg/TaskSpacePathActionGoal.msg"
    "/home/arl/Hdt_arms_VT/catkin_ws/devel/share/hdt_saffir_control/msg/TaskSpacePathActionResult.msg"
    "/home/arl/Hdt_arms_VT/catkin_ws/devel/share/hdt_saffir_control/msg/TaskSpacePathActionFeedback.msg"
    "/home/arl/Hdt_arms_VT/catkin_ws/devel/share/hdt_saffir_control/msg/TaskSpacePathGoal.msg"
    "/home/arl/Hdt_arms_VT/catkin_ws/devel/share/hdt_saffir_control/msg/TaskSpacePathResult.msg"
    "/home/arl/Hdt_arms_VT/catkin_ws/devel/share/hdt_saffir_control/msg/TaskSpacePathFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_saffir_control/msg" TYPE FILE FILES
    "/home/arl/Hdt_arms_VT/catkin_ws/devel/share/hdt_saffir_control/msg/TrajectoryPathAction.msg"
    "/home/arl/Hdt_arms_VT/catkin_ws/devel/share/hdt_saffir_control/msg/TrajectoryPathActionGoal.msg"
    "/home/arl/Hdt_arms_VT/catkin_ws/devel/share/hdt_saffir_control/msg/TrajectoryPathActionResult.msg"
    "/home/arl/Hdt_arms_VT/catkin_ws/devel/share/hdt_saffir_control/msg/TrajectoryPathActionFeedback.msg"
    "/home/arl/Hdt_arms_VT/catkin_ws/devel/share/hdt_saffir_control/msg/TrajectoryPathGoal.msg"
    "/home/arl/Hdt_arms_VT/catkin_ws/devel/share/hdt_saffir_control/msg/TrajectoryPathResult.msg"
    "/home/arl/Hdt_arms_VT/catkin_ws/devel/share/hdt_saffir_control/msg/TrajectoryPathFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_saffir_control/cmake" TYPE FILE FILES "/home/arl/Hdt_arms_VT/catkin_ws/build/hdt_saffir_control/catkin_generated/installspace/hdt_saffir_control-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/arl/Hdt_arms_VT/catkin_ws/devel/include/hdt_saffir_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/arl/Hdt_arms_VT/catkin_ws/devel/share/roseus/ros/hdt_saffir_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/arl/Hdt_arms_VT/catkin_ws/devel/share/common-lisp/ros/hdt_saffir_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/arl/Hdt_arms_VT/catkin_ws/devel/share/gennodejs/ros/hdt_saffir_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/arl/Hdt_arms_VT/catkin_ws/devel/lib/python2.7/dist-packages/hdt_saffir_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/arl/Hdt_arms_VT/catkin_ws/devel/lib/python2.7/dist-packages/hdt_saffir_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/arl/Hdt_arms_VT/catkin_ws/build/hdt_saffir_control/catkin_generated/installspace/hdt_saffir_control.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_saffir_control/cmake" TYPE FILE FILES "/home/arl/Hdt_arms_VT/catkin_ws/build/hdt_saffir_control/catkin_generated/installspace/hdt_saffir_control-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_saffir_control/cmake" TYPE FILE FILES
    "/home/arl/Hdt_arms_VT/catkin_ws/build/hdt_saffir_control/catkin_generated/installspace/hdt_saffir_controlConfig.cmake"
    "/home/arl/Hdt_arms_VT/catkin_ws/build/hdt_saffir_control/catkin_generated/installspace/hdt_saffir_controlConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_saffir_control" TYPE FILE FILES "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_saffir_control/package.xml")
endif()

