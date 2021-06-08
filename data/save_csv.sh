#!/usr/bin/env bash

rostopic echo -b $1.bag -p /team/sensors/depth > depth.csv
rostopic echo -b $1.bag -p /team/sensors/imu > imu.csv
rostopic echo -b $1.bag -p /team/sensors/gps > gps.csv
rostopic echo -b $1.bag -p /team/sensors/dvl > dvl.csv
rostopic echo -b $1.bag -p /team_sapienza/range > range.csv
