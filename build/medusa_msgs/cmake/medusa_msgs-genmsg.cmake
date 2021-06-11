# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "medusa_msgs: 17 messages, 0 services")

set(MSG_I_FLAGS "-Imedusa_msgs:/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(medusa_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityBody.msg" NAME_WE)
add_custom_target(_medusa_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "medusa_msgs" "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityBody.msg" ""
)

get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg" NAME_WE)
add_custom_target(_medusa_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "medusa_msgs" "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg" ""
)

get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SensorMeasurement.msg" NAME_WE)
add_custom_target(_medusa_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "medusa_msgs" "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SensorMeasurement.msg" "medusa_msgs/AttitudeEuler:medusa_msgs/VelocityNED:medusa_msgs/NavStatus:medusa_msgs/Position"
)

get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Range.msg" NAME_WE)
add_custom_target(_medusa_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "medusa_msgs" "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Range.msg" ""
)

get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Maneuver.msg" NAME_WE)
add_custom_target(_medusa_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "medusa_msgs" "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Maneuver.msg" "medusa_msgs/Position"
)

get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SonarGet.msg" NAME_WE)
add_custom_target(_medusa_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "medusa_msgs" "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SonarGet.msg" ""
)

get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg" NAME_WE)
add_custom_target(_medusa_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "medusa_msgs" "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg" "medusa_msgs/AttitudeEuler:medusa_msgs/VelocityNED:medusa_msgs/Position"
)

get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/ImageData.msg" NAME_WE)
add_custom_target(_medusa_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "medusa_msgs" "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/ImageData.msg" "std_msgs/String:medusa_msgs/AttitudeEuler:medusa_msgs/VelocityNED:medusa_msgs/NavStatus:medusa_msgs/Position"
)

get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Plan.msg" NAME_WE)
add_custom_target(_medusa_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "medusa_msgs" "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Plan.msg" "medusa_msgs/Maneuver:medusa_msgs/Position"
)

get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Battery.msg" NAME_WE)
add_custom_target(_medusa_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "medusa_msgs" "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Battery.msg" "medusa_msgs/AttitudeEuler:medusa_msgs/VelocityNED:medusa_msgs/NavStatus:medusa_msgs/Position"
)

get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Velocity.msg" NAME_WE)
add_custom_target(_medusa_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "medusa_msgs" "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Velocity.msg" "medusa_msgs/VelocityBody:medusa_msgs/VelocityNED"
)

get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Command.msg" NAME_WE)
add_custom_target(_medusa_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "medusa_msgs" "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Command.msg" "std_msgs/String"
)

get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VehicleStatus.msg" NAME_WE)
add_custom_target(_medusa_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "medusa_msgs" "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VehicleStatus.msg" "medusa_msgs/Battery:medusa_msgs/VelocityNED:medusa_msgs/NavStatus:medusa_msgs/AttitudeEuler:medusa_msgs/Position"
)

get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/CameraGet.msg" NAME_WE)
add_custom_target(_medusa_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "medusa_msgs" "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/CameraGet.msg" "std_msgs/String"
)

get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg" NAME_WE)
add_custom_target(_medusa_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "medusa_msgs" "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg" ""
)

get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg" NAME_WE)
add_custom_target(_medusa_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "medusa_msgs" "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg" ""
)

get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/List.msg" NAME_WE)
add_custom_target(_medusa_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "medusa_msgs" "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/List.msg" "std_msgs/String"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityBody.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_cpp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_cpp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_cpp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Range.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_cpp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Maneuver.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_cpp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VehicleStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Battery.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_cpp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/ImageData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_cpp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SensorMeasurement.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_cpp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Plan.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Maneuver.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_cpp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_cpp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_cpp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_cpp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SonarGet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_cpp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/CameraGet.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_cpp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityBody.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_cpp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_cpp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/List.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/medusa_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(medusa_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/medusa_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(medusa_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(medusa_msgs_generate_messages medusa_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityBody.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_cpp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_cpp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SensorMeasurement.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_cpp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Range.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_cpp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Maneuver.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_cpp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SonarGet.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_cpp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_cpp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/ImageData.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_cpp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Plan.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_cpp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Battery.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_cpp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Velocity.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_cpp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Command.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_cpp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VehicleStatus.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_cpp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/CameraGet.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_cpp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_cpp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_cpp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/List.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_cpp _medusa_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(medusa_msgs_gencpp)
add_dependencies(medusa_msgs_gencpp medusa_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS medusa_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityBody.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/medusa_msgs
)
_generate_msg_eus(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/medusa_msgs
)
_generate_msg_eus(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/medusa_msgs
)
_generate_msg_eus(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Range.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/medusa_msgs
)
_generate_msg_eus(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Maneuver.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/medusa_msgs
)
_generate_msg_eus(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VehicleStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Battery.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/medusa_msgs
)
_generate_msg_eus(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/ImageData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/medusa_msgs
)
_generate_msg_eus(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SensorMeasurement.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/medusa_msgs
)
_generate_msg_eus(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Plan.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Maneuver.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/medusa_msgs
)
_generate_msg_eus(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/medusa_msgs
)
_generate_msg_eus(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/medusa_msgs
)
_generate_msg_eus(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/medusa_msgs
)
_generate_msg_eus(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SonarGet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/medusa_msgs
)
_generate_msg_eus(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/CameraGet.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/medusa_msgs
)
_generate_msg_eus(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityBody.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/medusa_msgs
)
_generate_msg_eus(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/medusa_msgs
)
_generate_msg_eus(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/List.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/medusa_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(medusa_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/medusa_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(medusa_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(medusa_msgs_generate_messages medusa_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityBody.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_eus _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_eus _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SensorMeasurement.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_eus _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Range.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_eus _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Maneuver.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_eus _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SonarGet.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_eus _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_eus _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/ImageData.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_eus _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Plan.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_eus _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Battery.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_eus _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Velocity.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_eus _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Command.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_eus _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VehicleStatus.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_eus _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/CameraGet.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_eus _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_eus _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_eus _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/List.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_eus _medusa_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(medusa_msgs_geneus)
add_dependencies(medusa_msgs_geneus medusa_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS medusa_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityBody.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_lisp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_lisp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_lisp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Range.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_lisp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Maneuver.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_lisp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VehicleStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Battery.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_lisp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/ImageData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_lisp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SensorMeasurement.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_lisp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Plan.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Maneuver.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_lisp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_lisp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_lisp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_lisp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SonarGet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_lisp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/CameraGet.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_lisp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityBody.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_lisp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/medusa_msgs
)
_generate_msg_lisp(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/List.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/medusa_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(medusa_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/medusa_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(medusa_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(medusa_msgs_generate_messages medusa_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityBody.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_lisp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_lisp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SensorMeasurement.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_lisp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Range.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_lisp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Maneuver.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_lisp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SonarGet.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_lisp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_lisp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/ImageData.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_lisp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Plan.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_lisp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Battery.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_lisp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Velocity.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_lisp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Command.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_lisp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VehicleStatus.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_lisp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/CameraGet.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_lisp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_lisp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_lisp _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/List.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_lisp _medusa_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(medusa_msgs_genlisp)
add_dependencies(medusa_msgs_genlisp medusa_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS medusa_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityBody.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/medusa_msgs
)
_generate_msg_nodejs(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/medusa_msgs
)
_generate_msg_nodejs(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/medusa_msgs
)
_generate_msg_nodejs(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Range.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/medusa_msgs
)
_generate_msg_nodejs(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Maneuver.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/medusa_msgs
)
_generate_msg_nodejs(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VehicleStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Battery.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/medusa_msgs
)
_generate_msg_nodejs(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/ImageData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/medusa_msgs
)
_generate_msg_nodejs(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SensorMeasurement.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/medusa_msgs
)
_generate_msg_nodejs(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Plan.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Maneuver.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/medusa_msgs
)
_generate_msg_nodejs(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/medusa_msgs
)
_generate_msg_nodejs(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/medusa_msgs
)
_generate_msg_nodejs(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/medusa_msgs
)
_generate_msg_nodejs(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SonarGet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/medusa_msgs
)
_generate_msg_nodejs(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/CameraGet.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/medusa_msgs
)
_generate_msg_nodejs(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityBody.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/medusa_msgs
)
_generate_msg_nodejs(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/medusa_msgs
)
_generate_msg_nodejs(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/List.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/medusa_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(medusa_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/medusa_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(medusa_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(medusa_msgs_generate_messages medusa_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityBody.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_nodejs _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_nodejs _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SensorMeasurement.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_nodejs _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Range.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_nodejs _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Maneuver.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_nodejs _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SonarGet.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_nodejs _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_nodejs _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/ImageData.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_nodejs _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Plan.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_nodejs _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Battery.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_nodejs _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Velocity.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_nodejs _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Command.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_nodejs _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VehicleStatus.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_nodejs _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/CameraGet.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_nodejs _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_nodejs _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_nodejs _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/List.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_nodejs _medusa_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(medusa_msgs_gennodejs)
add_dependencies(medusa_msgs_gennodejs medusa_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS medusa_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityBody.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/medusa_msgs
)
_generate_msg_py(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/medusa_msgs
)
_generate_msg_py(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/medusa_msgs
)
_generate_msg_py(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Range.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/medusa_msgs
)
_generate_msg_py(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Maneuver.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/medusa_msgs
)
_generate_msg_py(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VehicleStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Battery.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/medusa_msgs
)
_generate_msg_py(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/ImageData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/medusa_msgs
)
_generate_msg_py(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SensorMeasurement.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/medusa_msgs
)
_generate_msg_py(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Plan.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Maneuver.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/medusa_msgs
)
_generate_msg_py(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/medusa_msgs
)
_generate_msg_py(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/medusa_msgs
)
_generate_msg_py(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/medusa_msgs
)
_generate_msg_py(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SonarGet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/medusa_msgs
)
_generate_msg_py(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/CameraGet.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/medusa_msgs
)
_generate_msg_py(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityBody.msg;/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/medusa_msgs
)
_generate_msg_py(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/medusa_msgs
)
_generate_msg_py(medusa_msgs
  "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/List.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/medusa_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(medusa_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/medusa_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(medusa_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(medusa_msgs_generate_messages medusa_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityBody.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_py _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_py _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SensorMeasurement.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_py _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Range.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_py _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Maneuver.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_py _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SonarGet.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_py _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_py _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/ImageData.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_py _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Plan.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_py _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Battery.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_py _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Velocity.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_py _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Command.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_py _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VehicleStatus.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_py _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/CameraGet.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_py _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_py _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_py _medusa_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/List.msg" NAME_WE)
add_dependencies(medusa_msgs_generate_messages_py _medusa_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(medusa_msgs_genpy)
add_dependencies(medusa_msgs_genpy medusa_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS medusa_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/medusa_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/medusa_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(medusa_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/medusa_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/medusa_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(medusa_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/medusa_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/medusa_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(medusa_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/medusa_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/medusa_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(medusa_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/medusa_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/medusa_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/medusa_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(medusa_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
