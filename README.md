# Master Project Uni Siegen
Robotics Master Project - SLAM and Path Planning

  $ git clone https://github.com/ibadrather/Master_Project_Uni_Siegen.git
Install the rtabmap package from ROS
  $ sudo apt install ros-noetic-rtabmap-ros
Installing dependencies
    $ cd 3D_Mapping
    $ sudo apt-get update -y
    $ sudo apt-get install -y xterm
    $ rosdep install --from-paths src --ignore-src -r -y
 Write a bash script which will run all the necessary files.
    $ touch rtab_mapping.sh
    $ chmod +x rtab_mapping.sh
  
Copy the following contents to to rtab_mapping.sh file.

  #!/bin/bash
  catkin_make;
  sleep 5
  # Launch the nodes
  xterm  -e "source devel/setup.bash; roslaunch follow_me world.launch" &
  sleep 10

  xterm  -e "source devel/setup.bash;rosrun teleop_twist_keyboard teleop_twist_keyboard.py"&
  sleep 5

  xterm  -e "source devel/setup.bash; roslaunch follow_me mapping.launch"
  
Then run using the following command.

  $ ./rtab_mapping.sh
  
Move the robot around in the environment with appropriate speed. This will build the map. Once you are done close the terminals. To view the output, use the following commands.

  $ rtabmap-databaseViewer ~/.ros/rtabmap.db
