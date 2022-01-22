#!/bin/bash

# Build the catkin_ws
cd $(pwd)/../..; catkin_make
sleep 2
# Launch the nodes
xterm  -e "source devel/setup.bash; roslaunch follow_me world.launch" &

sleep 5
xterm  -e "source devel/setup.bash;rosrun teleop_twist_keyboard teleop_twist_keyboard.py" &

sleep 5
xterm  -e "source devel/setup.bash;roslaunch follow_me gmapping.launch"
