# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hdt_adroit_driver: 9 messages, 7 services")

set(MSG_I_FLAGS "-Ihdt_adroit_driver:/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hdt_adroit_driver_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/StateSelect.srv" NAME_WE)
add_custom_target(_hdt_adroit_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hdt_adroit_driver" "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/StateSelect.srv" ""
)

get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTParameterTelem.msg" NAME_WE)
add_custom_target(_hdt_adroit_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hdt_adroit_driver" "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTParameterTelem.msg" ""
)

get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTStatusTelem.msg" NAME_WE)
add_custom_target(_hdt_adroit_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hdt_adroit_driver" "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTStatusTelem.msg" ""
)

get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTDebugTelem.msg" NAME_WE)
add_custom_target(_hdt_adroit_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hdt_adroit_driver" "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTDebugTelem.msg" ""
)

get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/AppLoad.srv" NAME_WE)
add_custom_target(_hdt_adroit_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hdt_adroit_driver" "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/AppLoad.srv" ""
)

get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/ReadDriveParam.srv" NAME_WE)
add_custom_target(_hdt_adroit_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hdt_adroit_driver" "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/ReadDriveParam.srv" ""
)

get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTErrorTelem.msg" NAME_WE)
add_custom_target(_hdt_adroit_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hdt_adroit_driver" "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTErrorTelem.msg" ""
)

get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/WriteDriveParam.srv" NAME_WE)
add_custom_target(_hdt_adroit_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hdt_adroit_driver" "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/WriteDriveParam.srv" ""
)

get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTLSTelem.msg" NAME_WE)
add_custom_target(_hdt_adroit_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hdt_adroit_driver" "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTLSTelem.msg" ""
)

get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/GetStatus.srv" NAME_WE)
add_custom_target(_hdt_adroit_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hdt_adroit_driver" "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/GetStatus.srv" ""
)

get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTJointState.msg" NAME_WE)
add_custom_target(_hdt_adroit_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hdt_adroit_driver" "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTJointState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/Commit.srv" NAME_WE)
add_custom_target(_hdt_adroit_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hdt_adroit_driver" "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/Commit.srv" ""
)

get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTMSTelem.msg" NAME_WE)
add_custom_target(_hdt_adroit_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hdt_adroit_driver" "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTMSTelem.msg" ""
)

get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTHSTelem.msg" NAME_WE)
add_custom_target(_hdt_adroit_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hdt_adroit_driver" "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTHSTelem.msg" ""
)

get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTControlCmdTelem.msg" NAME_WE)
add_custom_target(_hdt_adroit_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hdt_adroit_driver" "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTControlCmdTelem.msg" ""
)

get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/ComsReady.srv" NAME_WE)
add_custom_target(_hdt_adroit_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hdt_adroit_driver" "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/ComsReady.srv" "sensor_msgs/JointState:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTParameterTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_cpp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTStatusTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_cpp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTDebugTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_cpp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTErrorTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_cpp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTLSTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_cpp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTJointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_cpp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTMSTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_cpp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTHSTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_cpp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTControlCmdTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdt_adroit_driver
)

### Generating Services
_generate_srv_cpp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/StateSelect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_cpp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/AppLoad.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_cpp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/WriteDriveParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_cpp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/ComsReady.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_cpp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/ReadDriveParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_cpp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/Commit.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_cpp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/GetStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdt_adroit_driver
)

### Generating Module File
_generate_module_cpp(hdt_adroit_driver
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdt_adroit_driver
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hdt_adroit_driver_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hdt_adroit_driver_generate_messages hdt_adroit_driver_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/StateSelect.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_cpp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTParameterTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_cpp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTStatusTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_cpp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTDebugTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_cpp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/AppLoad.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_cpp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/ReadDriveParam.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_cpp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTErrorTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_cpp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/WriteDriveParam.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_cpp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTLSTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_cpp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/GetStatus.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_cpp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTJointState.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_cpp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/Commit.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_cpp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTMSTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_cpp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTHSTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_cpp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTControlCmdTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_cpp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/ComsReady.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_cpp _hdt_adroit_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hdt_adroit_driver_gencpp)
add_dependencies(hdt_adroit_driver_gencpp hdt_adroit_driver_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hdt_adroit_driver_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTParameterTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_eus(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTStatusTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_eus(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTDebugTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_eus(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTErrorTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_eus(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTLSTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_eus(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTJointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_eus(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTMSTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_eus(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTHSTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_eus(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTControlCmdTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdt_adroit_driver
)

### Generating Services
_generate_srv_eus(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/StateSelect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_eus(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/AppLoad.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_eus(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/WriteDriveParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_eus(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/ComsReady.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_eus(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/ReadDriveParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_eus(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/Commit.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_eus(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/GetStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdt_adroit_driver
)

### Generating Module File
_generate_module_eus(hdt_adroit_driver
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdt_adroit_driver
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hdt_adroit_driver_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hdt_adroit_driver_generate_messages hdt_adroit_driver_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/StateSelect.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_eus _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTParameterTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_eus _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTStatusTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_eus _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTDebugTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_eus _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/AppLoad.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_eus _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/ReadDriveParam.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_eus _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTErrorTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_eus _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/WriteDriveParam.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_eus _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTLSTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_eus _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/GetStatus.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_eus _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTJointState.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_eus _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/Commit.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_eus _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTMSTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_eus _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTHSTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_eus _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTControlCmdTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_eus _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/ComsReady.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_eus _hdt_adroit_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hdt_adroit_driver_geneus)
add_dependencies(hdt_adroit_driver_geneus hdt_adroit_driver_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hdt_adroit_driver_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTParameterTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_lisp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTStatusTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_lisp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTDebugTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_lisp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTErrorTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_lisp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTLSTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_lisp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTJointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_lisp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTMSTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_lisp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTHSTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_lisp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTControlCmdTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdt_adroit_driver
)

### Generating Services
_generate_srv_lisp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/StateSelect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_lisp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/AppLoad.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_lisp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/WriteDriveParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_lisp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/ComsReady.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_lisp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/ReadDriveParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_lisp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/Commit.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_lisp(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/GetStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdt_adroit_driver
)

### Generating Module File
_generate_module_lisp(hdt_adroit_driver
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdt_adroit_driver
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hdt_adroit_driver_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hdt_adroit_driver_generate_messages hdt_adroit_driver_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/StateSelect.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_lisp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTParameterTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_lisp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTStatusTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_lisp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTDebugTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_lisp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/AppLoad.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_lisp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/ReadDriveParam.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_lisp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTErrorTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_lisp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/WriteDriveParam.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_lisp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTLSTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_lisp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/GetStatus.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_lisp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTJointState.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_lisp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/Commit.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_lisp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTMSTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_lisp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTHSTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_lisp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTControlCmdTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_lisp _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/ComsReady.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_lisp _hdt_adroit_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hdt_adroit_driver_genlisp)
add_dependencies(hdt_adroit_driver_genlisp hdt_adroit_driver_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hdt_adroit_driver_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTParameterTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_nodejs(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTStatusTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_nodejs(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTDebugTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_nodejs(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTErrorTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_nodejs(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTLSTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_nodejs(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTJointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_nodejs(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTMSTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_nodejs(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTHSTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_nodejs(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTControlCmdTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdt_adroit_driver
)

### Generating Services
_generate_srv_nodejs(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/StateSelect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_nodejs(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/AppLoad.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_nodejs(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/WriteDriveParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_nodejs(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/ComsReady.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_nodejs(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/ReadDriveParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_nodejs(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/Commit.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_nodejs(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/GetStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdt_adroit_driver
)

### Generating Module File
_generate_module_nodejs(hdt_adroit_driver
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdt_adroit_driver
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hdt_adroit_driver_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hdt_adroit_driver_generate_messages hdt_adroit_driver_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/StateSelect.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_nodejs _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTParameterTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_nodejs _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTStatusTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_nodejs _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTDebugTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_nodejs _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/AppLoad.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_nodejs _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/ReadDriveParam.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_nodejs _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTErrorTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_nodejs _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/WriteDriveParam.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_nodejs _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTLSTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_nodejs _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/GetStatus.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_nodejs _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTJointState.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_nodejs _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/Commit.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_nodejs _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTMSTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_nodejs _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTHSTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_nodejs _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTControlCmdTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_nodejs _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/ComsReady.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_nodejs _hdt_adroit_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hdt_adroit_driver_gennodejs)
add_dependencies(hdt_adroit_driver_gennodejs hdt_adroit_driver_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hdt_adroit_driver_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTParameterTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_py(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTStatusTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_py(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTDebugTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_py(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTErrorTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_py(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTLSTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_py(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTJointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_py(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTMSTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_py(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTHSTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdt_adroit_driver
)
_generate_msg_py(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTControlCmdTelem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdt_adroit_driver
)

### Generating Services
_generate_srv_py(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/StateSelect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_py(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/AppLoad.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_py(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/WriteDriveParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_py(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/ComsReady.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_py(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/ReadDriveParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_py(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/Commit.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdt_adroit_driver
)
_generate_srv_py(hdt_adroit_driver
  "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/GetStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdt_adroit_driver
)

### Generating Module File
_generate_module_py(hdt_adroit_driver
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdt_adroit_driver
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hdt_adroit_driver_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hdt_adroit_driver_generate_messages hdt_adroit_driver_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/StateSelect.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_py _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTParameterTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_py _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTStatusTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_py _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTDebugTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_py _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/AppLoad.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_py _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/ReadDriveParam.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_py _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTErrorTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_py _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/WriteDriveParam.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_py _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTLSTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_py _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/GetStatus.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_py _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTJointState.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_py _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/Commit.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_py _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTMSTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_py _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTHSTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_py _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg/HDTControlCmdTelem.msg" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_py _hdt_adroit_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/srv/ComsReady.srv" NAME_WE)
add_dependencies(hdt_adroit_driver_generate_messages_py _hdt_adroit_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hdt_adroit_driver_genpy)
add_dependencies(hdt_adroit_driver_genpy hdt_adroit_driver_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hdt_adroit_driver_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdt_adroit_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdt_adroit_driver
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hdt_adroit_driver_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(hdt_adroit_driver_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdt_adroit_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdt_adroit_driver
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hdt_adroit_driver_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(hdt_adroit_driver_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdt_adroit_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdt_adroit_driver
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hdt_adroit_driver_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(hdt_adroit_driver_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdt_adroit_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdt_adroit_driver
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hdt_adroit_driver_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(hdt_adroit_driver_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdt_adroit_driver)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdt_adroit_driver\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdt_adroit_driver
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hdt_adroit_driver_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(hdt_adroit_driver_generate_messages_py sensor_msgs_generate_messages_py)
endif()
