#Single Maneuver Info (Goto [1], StationKeeping [2], Dock [3], Rows_Girona [4])

uint8 maneuver_name 	#Used in maneuvers [1,2,3,4]
medusa_msgs/Position position #[1,2,3]
uint8 z_units	#[1,2,3,4]
uint8 speed_units	#[1,2,4]
float64 speed	#[1,2,4]

float64 timeout	#[1]

float64 radius 		#[2]
float64 duration 	#[2]

uint8 docking_id	#[3]
uint8 docking_maneuver	#[3]

medusa_msgs/Position waypoint_1 #[4]
medusa_msgs/Position waypoint_2 #[4]
medusa_msgs/Position waypoint_3 #[4]
float64 track_spacing  #[4]
float64 across_tracks  #[4]


#Define related to maneuver_name
uint8 MANEUVER_NAME_GOTO=1
uint8 MANEUVER_NAME_ROWS=2
uint8 MANEUVER_NAME_STATION_KEEPING=3
uint8 MANEUVER_NAME_DOCK=4

#Define related to z_units
uint8 Z_UNITS_DEPTH=5
uint8 Z_UNITS_ALTITUDE=6

#Define related to speed_units
uint8 SPEED_UNITS_METER_PS=7
uint8 SPEED_UNITS_RPM=8
uint8 SPEED_UNITS_PERCENTAGE=9

#Define related to the Docking station
uint8 VEHICLE_DOCK=1
uint8 VEHICLE_UNDOCK=0

