#install necessary programs
echo "Updating apt\n"
apt-get update -y
sudo apt install build-essential -y
echo "apt updated\n"

echo "Installing python\n"
apt install python3-dev -y
apt install python3-pip -y
echo "python installed\n"


echo "Installing net-tools\n"
#get net-tools to use ifconfig
apt install net-tools
echo "net-tools installed\n"



echo "installing python packages\n"
#install steep python package requirements
pip3 install setuptools
pip3 install wheel
echo "python packages installed\n"
