#!/bin/bash

# Build the catkin_ws
cd $(pwd)/../..; catkin_make
sleep 5

# Launch the nodes
xterm  -e "source devel/setup.bash; roslaunch follow_me world.launch" &
sleep 10

xterm  -e "source devel/setup.bash;roslaunch follow_me amcl.launch"

