echo "*****************************  Installing yosys dependancies   ********************************"
sudo apt update
sudo apt install build-essential clang bison flex \
	libreadline-dev gawk tcl-dev libffi-dev git \
	graphviz xdot pkg-config python3 libboost-system-dev \
	libboost-python-dev libboost-filesystem-dev zlib1g-dev
	
echo "***************************** Cloning yosys and will start installation of yosys *********************"
git clone https://github.com/YosysHQ/yosys.git
cd yosys
make
sudo make install

cd..
echo "********************************** Cloning OpenSTA and will start installation of OpenSTA ********************"
git clone https://github.com/The-OpenROAD-Project/OpenSTA.git
cd OpenSTA
mkdir build
cd build
sudo apt install cmake
sudo apt install swig
cmake ..
make
sudo make install
cd..
##Install Icarus iverilog
##echo "*****************************************  Installing iverilog ***********************************************"
##sudo apt install -y iverilog --assume-yes
echo "****************************************** Installing gtkwave ********************************************"
sudo apt install gtkwave

#To install netlist viewer
cd
sudo apt install npm
git clone https://github.com/nturley/netlistsvg
cd netlistsvg
sudo npm install --legacy-peer-deps
sudo npm install -g .
cd
