source ~/workspace/autoware.proj.jpntaxi/install/setup.bash
MAP_DIR=/home/$USER/workspace/AutonomousDrivingScenarios/map/nishishinjuku_aisan
roslaunch autoware_launch planning_simulator.launch map_path:=$MAP_DIR vehicle_model:=jpntaxi sensor_model:=aip_xx1
