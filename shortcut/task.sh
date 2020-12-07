
cd ~/workspace/autoware.proj.jpntaxi
colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release --catkin-skip-building-tests --symlink-install --packages-select=scenario_common