# Install script for directory: /home/korovev/Documents/ponza_filter_bis/src/medusa_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/korovev/Documents/ponza_filter_bis/install")
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
    "/home/korovev/Documents/ponza_filter_bis/src/medusa_msgs/msg/AttitudeEuler.msg"
    "/home/korovev/Documents/ponza_filter_bis/src/medusa_msgs/msg/Battery.msg"
    "/home/korovev/Documents/ponza_filter_bis/src/medusa_msgs/msg/CameraGet.msg"
    "/home/korovev/Documents/ponza_filter_bis/src/medusa_msgs/msg/Command.msg"
    "/home/korovev/Documents/ponza_filter_bis/src/medusa_msgs/msg/ImageData.msg"
    "/home/korovev/Documents/ponza_filter_bis/src/medusa_msgs/msg/List.msg"
    "/home/korovev/Documents/ponza_filter_bis/src/medusa_msgs/msg/Maneuver.msg"
    "/home/korovev/Documents/ponza_filter_bis/src/medusa_msgs/msg/NavStatus.msg"
    "/home/korovev/Documents/ponza_filter_bis/src/medusa_msgs/msg/Plan.msg"
    "/home/korovev/Documents/ponza_filter_bis/src/medusa_msgs/msg/Position.msg"
    "/home/korovev/Documents/ponza_filter_bis/src/medusa_msgs/msg/Range.msg"
    "/home/korovev/Documents/ponza_filter_bis/src/medusa_msgs/msg/SensorMeasurement.msg"
    "/home/korovev/Documents/ponza_filter_bis/src/medusa_msgs/msg/SonarGet.msg"
    "/home/korovev/Documents/ponza_filter_bis/src/medusa_msgs/msg/VehicleStatus.msg"
    "/home/korovev/Documents/ponza_filter_bis/src/medusa_msgs/msg/Velocity.msg"
    "/home/korovev/Documents/ponza_filter_bis/src/medusa_msgs/msg/VelocityBody.msg"
    "/home/korovev/Documents/ponza_filter_bis/src/medusa_msgs/msg/VelocityNED.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/medusa_msgs/cmake" TYPE FILE FILES "/home/korovev/Documents/ponza_filter_bis/build/medusa_msgs/catkin_generated/installspace/medusa_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/korovev/Documents/ponza_filter_bis/devel/include/medusa_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/korovev/Documents/ponza_filter_bis/devel/share/roseus/ros/medusa_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/korovev/Documents/ponza_filter_bis/devel/share/common-lisp/ros/medusa_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/korovev/Documents/ponza_filter_bis/devel/share/gennodejs/ros/medusa_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/korovev/Documents/ponza_filter_bis/devel/lib/python2.7/dist-packages/medusa_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/korovev/Documents/ponza_filter_bis/devel/lib/python2.7/dist-packages/medusa_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/korovev/Documents/ponza_filter_bis/build/medusa_msgs/catkin_generated/installspace/medusa_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/medusa_msgs/cmake" TYPE FILE FILES "/home/korovev/Documents/ponza_filter_bis/build/medusa_msgs/catkin_generated/installspace/medusa_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/medusa_msgs/cmake" TYPE FILE FILES
    "/home/korovev/Documents/ponza_filter_bis/build/medusa_msgs/catkin_generated/installspace/medusa_msgsConfig.cmake"
    "/home/korovev/Documents/ponza_filter_bis/build/medusa_msgs/catkin_generated/installspace/medusa_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/medusa_msgs" TYPE FILE FILES "/home/korovev/Documents/ponza_filter_bis/src/medusa_msgs/package.xml")
endif()

