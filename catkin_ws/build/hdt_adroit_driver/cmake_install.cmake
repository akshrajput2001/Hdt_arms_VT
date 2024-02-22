# Install script for directory: /home/arl/catkin_ws/src/hdt_adroit_driver

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_adroit_driver/msg" TYPE FILE FILES
    "/home/arl/catkin_ws/src/hdt_adroit_driver/msg/HDTJointState.msg"
    "/home/arl/catkin_ws/src/hdt_adroit_driver/msg/HDTDebugTelem.msg"
    "/home/arl/catkin_ws/src/hdt_adroit_driver/msg/HDTLSTelem.msg"
    "/home/arl/catkin_ws/src/hdt_adroit_driver/msg/HDTMSTelem.msg"
    "/home/arl/catkin_ws/src/hdt_adroit_driver/msg/HDTHSTelem.msg"
    "/home/arl/catkin_ws/src/hdt_adroit_driver/msg/HDTErrorTelem.msg"
    "/home/arl/catkin_ws/src/hdt_adroit_driver/msg/HDTParameterTelem.msg"
    "/home/arl/catkin_ws/src/hdt_adroit_driver/msg/HDTStatusTelem.msg"
    "/home/arl/catkin_ws/src/hdt_adroit_driver/msg/HDTControlCmdTelem.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_adroit_driver/srv" TYPE FILE FILES
    "/home/arl/catkin_ws/src/hdt_adroit_driver/srv/ComsReady.srv"
    "/home/arl/catkin_ws/src/hdt_adroit_driver/srv/WriteDriveParam.srv"
    "/home/arl/catkin_ws/src/hdt_adroit_driver/srv/ReadDriveParam.srv"
    "/home/arl/catkin_ws/src/hdt_adroit_driver/srv/AppLoad.srv"
    "/home/arl/catkin_ws/src/hdt_adroit_driver/srv/StateSelect.srv"
    "/home/arl/catkin_ws/src/hdt_adroit_driver/srv/GetStatus.srv"
    "/home/arl/catkin_ws/src/hdt_adroit_driver/srv/Commit.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_adroit_driver/cmake" TYPE FILE FILES "/home/arl/catkin_ws/build/hdt_adroit_driver/catkin_generated/installspace/hdt_adroit_driver-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/arl/catkin_ws/devel/include/hdt_adroit_driver")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/arl/catkin_ws/devel/share/roseus/ros/hdt_adroit_driver")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/arl/catkin_ws/devel/share/common-lisp/ros/hdt_adroit_driver")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/arl/catkin_ws/devel/share/gennodejs/ros/hdt_adroit_driver")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/arl/catkin_ws/devel/lib/python2.7/dist-packages/hdt_adroit_driver")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/arl/catkin_ws/devel/lib/python2.7/dist-packages/hdt_adroit_driver")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/arl/catkin_ws/build/hdt_adroit_driver/catkin_generated/installspace/hdt_adroit_driver.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_adroit_driver/cmake" TYPE FILE FILES "/home/arl/catkin_ws/build/hdt_adroit_driver/catkin_generated/installspace/hdt_adroit_driver-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_adroit_driver/cmake" TYPE FILE FILES
    "/home/arl/catkin_ws/build/hdt_adroit_driver/catkin_generated/installspace/hdt_adroit_driverConfig.cmake"
    "/home/arl/catkin_ws/build/hdt_adroit_driver/catkin_generated/installspace/hdt_adroit_driverConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_adroit_driver" TYPE FILE FILES "/home/arl/catkin_ws/src/hdt_adroit_driver/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/hdt_adroit_driver/hdt_adroit_coms" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/hdt_adroit_driver/hdt_adroit_coms")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/hdt_adroit_driver/hdt_adroit_coms"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hdt_adroit_driver" TYPE EXECUTABLE FILES "/home/arl/catkin_ws/devel/lib/hdt_adroit_driver/hdt_adroit_coms")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/hdt_adroit_driver/hdt_adroit_coms" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/hdt_adroit_driver/hdt_adroit_coms")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/hdt_adroit_driver/hdt_adroit_coms"
         OLD_RPATH "/opt/ros/kinetic/lib:/home/arl/catkin_ws/devel/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/hdt_adroit_driver/hdt_adroit_coms")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libhdt_adroit.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libhdt_adroit.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libhdt_adroit.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/arl/catkin_ws/devel/lib/libhdt_adroit.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libhdt_adroit.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libhdt_adroit.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libhdt_adroit.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_adroit_driver" TYPE DIRECTORY FILES "/home/arl/catkin_ws/src/hdt_adroit_driver/launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_adroit_driver" TYPE DIRECTORY FILES "/home/arl/catkin_ws/src/hdt_adroit_driver/resources")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdt_adroit_driver" TYPE FILE FILES "/home/arl/catkin_ws/src/hdt_adroit_driver/peak_usb.sh")
endif()

