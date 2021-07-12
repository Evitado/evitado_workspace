#install ros
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt -y install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt -y update
sudo apt -y install ros-melodic-desktop-full
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt -y install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential 
sudo apt -y install python-rosdep
sudo rosdep init
rosdep update

sudo apt-get -y install ros-melodic-ackermann-msgs
sudo apt-get install -y ros-melodic-tf2-sensor-msgs 
#install catkin tools
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list'
wget http://packages.ros.org/ros.key -O - | sudo apt-key add -
sudo apt-get -y update
sudo apt-get -y install python-catkin-tools

#########################TOOLS FOR SLAMS  #########################################
sudo apt-get -y install ros-melodic-geodesy ros-melodic-pcl-ros ros-melodic-nmea-msgs ros-melodic-libg2o





#########################INSTALL TOOLS #############################################
sudo apt -y install python-pip

#install cvstools
sudo apt install -y python3-vcstool

#install tmuxp
sudo apt -y install tmuxp
cp ./config/.tmux.conf ~/.tmux.conf
