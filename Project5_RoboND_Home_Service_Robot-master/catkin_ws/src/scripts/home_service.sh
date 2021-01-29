#!/bin/sh
xterm  -e "source devel/setup.bash ; roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$(pwd)/src/world/Room_new.world" &
sleep 5
xterm  -e "source devel/setup.bash ; roslaunch turtlebot_gazebo amcl_demo.launch map_file:=$(pwd)/src/maps/Room_map.yaml" &
sleep 5
xterm  -e "source devel/setup.bash ; roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 5
xterm  -e "source devel/setup.bash ; rosrun add_markers add_markers" &
sleep 5
xterm  -e "source devel/setup.bash ; rosrun pick_objects pick_objects" &
