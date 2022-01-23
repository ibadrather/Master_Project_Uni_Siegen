#!/bin/bash

# Build the catkin_ws
cd $(pwd)/../..; catkin_make
sleep 5
# Launch the nodes
xterm  -e "source devel/setup.bash; export TURTLEBOT_GAZEBO_WORLD_FILE="$(pwd)/src/worlds/u.world"; roslaunch turtlebot_gazebo turtlebot_world.launch" &
sleep 10
xterm  -e "source devel/setup.bash; roslaunch turtlebot_gazebo gmapping_demo.launch" &
sleep 5
xterm  -e "source devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 5
xterm  -e "source devel/setup.bash; roslaunch turtlebot_teleop keyboard_teleop.launch"

