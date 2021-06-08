#Range between nodes

#RangeGet
uint8 num_nodes #Number of node(s) to which estimate the range
uint8[] node_ids #Id(s) of the target node(s)
float64 freq #Update frequency in Hertz

#Range
uint8 node #Id of the target node
float64 time  	#Estimated travel time to the target node in seconds
float64 bearing #Estimated bearing angle to the target node in degrees
float64 distance
float64 lat_node
float64 lon_node
float64 depth_node