cd ~
mkdir workspace
cd workspace
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update -y 


sudo apt install -y python3-vcstool
git clone git@github.com:tier4/AutowareArchitectureProposal.git
cd AutowareArchitectureProposal
git checkout ros2
mkdir -p src
vcs import src < autoware.proj.repos
./setup_ubuntu20.04.sh

source ~/.bashrc
colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release --catkin-skip-building-tests --symlink-install