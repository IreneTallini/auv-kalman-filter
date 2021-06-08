cmake_minimum_required(VERSION 3.0.2)
project(nodo_sapienza)

find_package(catkin REQUIRED COMPONENTS
    rospy
    medusa_msgs
)


catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES nodo_sapienza
#  CATKIN_DEPENDS other_catkin_pkg
#  DEPENDS system_lib
)


include_directories(
# include
# ${catkin_INCLUDE_DIRS}
)


catkin_install_python(PROGRAMS
  scripts/nodo_sap.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
