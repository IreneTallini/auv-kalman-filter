# Install script for directory: /home/irene/Documents/ponza_filter_paper/src/medusa_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/irene/Documents/ponza_filter_paper/install")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/medusa_msgs/msg" TYPE FILE FILES
    "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/AttitudeEuler.msg"
    "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Battery.msg"
    "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/CameraGet.msg"
    "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Command.msg"
    "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/ImageData.msg"
    "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/List.msg"
    "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Maneuver.msg"
    "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/NavStatus.msg"
    "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Plan.msg"
    "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Position.msg"
    "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Range.msg"
    "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SensorMeasurement.msg"
    "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/SonarGet.msg"
    "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VehicleStatus.msg"
    "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/Velocity.msg"
    "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityBody.msg"
    "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/msg/VelocityNED.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/medusa_msgs/cmake" TYPE FILE FILES "/home/irene/Documents/ponza_filter_paper/build/medusa_msgs/catkin_generated/installspace/medusa_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/irene/Documents/ponza_filter_paper/devel/include/medusa_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/irene/Documents/ponza_filter_paper/devel/share/roseus/ros/medusa_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/irene/Documents/ponza_filter_paper/devel/share/common-lisp/ros/medusa_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/irene/Documents/ponza_filter_paper/devel/share/gennodejs/ros/medusa_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/irene/Documents/ponza_filter_paper/devel/lib/python2.7/dist-packages/medusa_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/irene/Documents/ponza_filter_paper/devel/lib/python2.7/dist-packages/medusa_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/irene/Documents/ponza_filter_paper/build/medusa_msgs/catkin_generated/installspace/medusa_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/medusa_msgs/cmake" TYPE FILE FILES "/home/irene/Documents/ponza_filter_paper/build/medusa_msgs/catkin_generated/installspace/medusa_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/medusa_msgs/cmake" TYPE FILE FILES
    "/home/irene/Documents/ponza_filter_paper/build/medusa_msgs/catkin_generated/installspace/medusa_msgsConfig.cmake"
    "/home/irene/Documents/ponza_filter_paper/build/medusa_msgs/catkin_generated/installspace/medusa_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/medusa_msgs" TYPE FILE FILES "/home/irene/Documents/ponza_filter_paper/src/medusa_msgs/package.xml")
endif()

