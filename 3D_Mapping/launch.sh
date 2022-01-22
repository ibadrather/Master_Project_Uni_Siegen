#!/bin/bash
catkin_make;
sleep 5

# Launch the nodes
xterm  -e "source devel/setup.bash; roslaunch follow_me world.launch" &
sleep 10

xterm  -e "source devel/setup.bash;rosrun teleop_twist_keyboard teleop_twist_keyboard.py"&
sleep 5

xterm  -e "source devel/setup.bash; roslaunch follow_me mapping.launch"

