sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8
sudo apt update && sudo apt install curl gnupg2 lsb-release
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64,arm64] http://packages.ros.org/ros2/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/ros2-latest.list'
sudo apt update
sudo apt install ros-dashing-desktop
source /opt/ros/dashing/setup.bash
mkdir -p ~/ros2_ws/src/scenario_simulator.auto
cp -rf . ~/ros2_ws/src/scenario_simulator.auto
source /opt/ros/dashing/setup.bash
sudo apt install -y python-rosdep python3-vcstool
sudo rosdep init
rosdep update
cd ~/ros2_ws/src/scenario_simulator.auto/test_runner/scenario_test_utility
pip3 install -r requirements.txt
cd ~/ros2_ws
vcs import src < src/scenario_simulator.auto/dependency.repos
cd ~/ros2_ws/src
rosdep install -r -y --from-paths . --ignore-src
source /opt/ros/dashing/setup.bash
sudo apt install python3-colcon-common-extensions
cd ~/ros2_ws
colcon build --symlink-install
source ~/ros2_ws/install/setup.bash
source /opt/ros/dashing/setup.bash
source ~/ros2_ws/install/setup.bash
cd ~/ros2_ws
colcon test
colcon test-result --verbose
source ~/ros2_ws/install/setup.bash
ros2 launch scenario_test_runner scenario_test_runner.launch.py workflow:='$(find-pkg-share scenario_test_runner)/workflow_example.yaml' log_directory:='/tmp'
ros2 run scenario_test_utility result_checker /tmp/result.junit.xml
