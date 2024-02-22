# Install script for directory: /home/arl/catkin_ws/src/hdt_arm_vt-master/hdt_hocu_driver

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_hocu_driver/msg" TYPE FILE FILES
    "/home/arl/catkin_ws/src/hdt_arm_vt-master/hdt_hocu_driver/msg/ClearScreen.msg"
    "/home/arl/catkin_ws/src/hdt_arm_vt-master/hdt_hocu_driver/msg/UpdateScreen.msg"
    "/home/arl/catkin_ws/src/hdt_arm_vt-master/hdt_hocu_driver/msg/SetPageColumn.msg"
    "/home/arl/catkin_ws/src/hdt_arm_vt-master/hdt_hocu_driver/msg/SetFont.msg"
    "/home/arl/catkin_ws/src/hdt_arm_vt-master/hdt_hocu_driver/msg/WriteString.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_hocu_driver/cmake" TYPE FILE FILES "/home/arl/catkin_ws/build/hdt_arm_vt-master/hdt_hocu_driver/catkin_generated/installspace/hdt_hocu_driver-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/arl/catkin_ws/devel/include/hdt_hocu_driver")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/arl/catkin_ws/devel/share/roseus/ros/hdt_hocu_driver")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/arl/catkin_ws/devel/share/common-lisp/ros/hdt_hocu_driver")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/arl/catkin_ws/devel/share/gennodejs/ros/hdt_hocu_driver")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/arl/catkin_ws/devel/lib/python2.7/dist-packages/hdt_hocu_driver")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/arl/catkin_ws/devel/lib/python2.7/dist-packages/hdt_hocu_driver")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/arl/catkin_ws/build/hdt_arm_vt-master/hdt_hocu_driver/catkin_generated/installspace/hdt_hocu_driver.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_hocu_driver/cmake" TYPE FILE FILES "/home/arl/catkin_ws/build/hdt_arm_vt-master/hdt_hocu_driver/catkin_generated/installspace/hdt_hocu_driver-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_hocu_driver/cmake" TYPE FILE FILES
    "/home/arl/catkin_ws/build/hdt_arm_vt-master/hdt_hocu_driver/catkin_generated/installspace/hdt_hocu_driverConfig.cmake"
    "/home/arl/catkin_ws/build/hdt_arm_vt-master/hdt_hocu_driver/catkin_generated/installspace/hdt_hocu_driverConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_hocu_driver" TYPE FILE FILES "/home/arl/catkin_ws/src/hdt_arm_vt-master/hdt_hocu_driver/package.xml")
endif()

