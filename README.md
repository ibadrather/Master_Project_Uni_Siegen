# Master Project Uni Siegen
Robotics Master Project - SLAM and Path Planning

## 3D Mapping

Using this package you can build a map of any environment. Just save your gazebo world file (*world_name.world*) in the in *3D_Mapping/src/follow_me/worlds/* folder and update the world.launch file in in 3D_Mapping/src/follow_me/launch/ folder.

      git clone https://github.com/ibadrather/Master_Project_Uni_Siegen.git
  
Install the rtabmap package from ROS

      sudo apt install ros-noetic-rtabmap-ros
      
Installing dependencies

      cd 3D_Mapping
      sudo apt-get update -y
      sudo apt-get install -y xterm
      rosdep install --from-paths src --ignore-src -r -y
      
Now to map the environment make the mapping.sh file executable and run it. This file will run all the necessary nodes automatically.

      cd /src/follow_me/scripts/
      chmod +x mapping.sh
      ./mapping.sh
      
  
Move the robot around in the environment with appropriate speed. This will build the map.
To save the map at any stage run in any terminal:
      
      rosrun map_server map_saver -f map_name
      
This will save the map_name.pgm and map_name.yaml file in the current working directory of the terminal.

Once you are done close the terminals. To view the output rtabmap database, use the following commands.

      rtabmap-databaseViewer ~/.ros/rtabmap.db

## SLAM-Gmapping
Using this package you can build a map of any environment. Just save your gazebo world file (*world_name.world*) in the in *Follow_me_gmapping/src/follow_me/worlds/* folder and update the world.launch file in in Follow_me_gmapping/src/follow_me/launch/ folder.

      git clone https://github.com/ibadrather/Master_Project_Uni_Siegen.git
  
Install the rtabmap package from ROS

      sudo apt install ros-noetic-gmapping
      
Installing dependencies

      cd Follow_me_gmapping
      sudo apt-get update -y
      sudo apt-get install -y xterm
      rosdep install --from-paths src --ignore-src -r -y
      
Now to map the environment make the gslam.sh file executable and run it. This file will run all the necessary nodes automatically.

      cd /Follow_me_gmapping/src/scripts/
      chmod +x gslam.sh
      ./gslam.sh
  
Move the robot around in the environment with appropriate speed. This will build the map. To save the map at any stage run in any terminal:
      
      rosrun map_server map_saver -f map_name
      
This will save the map_name.pgm and map_name.yaml file in the current working directory of the terminal.

## Path Planning
