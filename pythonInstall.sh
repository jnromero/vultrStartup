#install necessary programs
echo "Updating apt\n" > /myLog.txt
apt-get update -y
sudo apt install build-essential -y
echo "apt updated\n" > /myLog.txt

echo "Installing python\n" > /myLog.txt
apt install python3-dev -y
apt install python3-pip -y
echo "python installed\n" > /myLog.txt

echo "installing python packages\n" > /myLog.txt
#install steep python package requirements
pip3 install setuptools
pip3 install wheel
echo "python packages installed\n" > /myLog.txt
