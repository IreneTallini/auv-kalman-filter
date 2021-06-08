cmake_minimum_required(VERSION 2.8.3)
project(medusa_msgs)

add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  std_msgs
  message_generation
)

## Generate messages in the 'msg' folder
add_message_files(  
	DIRECTORY msg
)
# add_message_files(
# 	FILES
# 	Maneuver.msg
# 	Plan.msg
# 	Position.msg	
# 	SensorDescription.msg
# 	SensorInfo.msg
#   SensorList.msg
# 	SensorMeasurement.msg
# 	Range.msg
# 	MsgIn.msg
# 	MsgOut.msg
# )


generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime std_msgs 
)
