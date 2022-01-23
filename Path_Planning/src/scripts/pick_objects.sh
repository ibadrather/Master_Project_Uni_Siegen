#!/bin/bash

# Build the catkin_ws
cd $(pwd)/../..; catkin_make

# Launch the nodes
xterm  -e "source devel/setup.bash; export TURTLEBOT_GAZEBO_WORLD_FILE="$(pwd)/src/worlds/service.world"; roslaunch turtlebot_gazebo turtlebot_world.launch" &

sleep 15
xterm  -e "source devel/setup.bash; export TURTLEBOT_GAZEBO_MAP_FILE="$(pwd)/src/map/service_map.yaml"; roslaunch turtlebot_gazebo amcl_demo.launch" &

sleep 5
xterm  -e "source devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch" &

sleep 10
xterm  -e "source devel/setup.bash; rosrun pick_objects pick_objects"


