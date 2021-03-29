
cd ~/workspace/autoware.proj.jpntaxi
PACKAGES=foa_quick
colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release --catkin-skip-building-tests --symlink-install --packages-up-to $PACKAGES
