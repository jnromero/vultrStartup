#install necessary programs
apt-get update -y
sudo apt install build-essential -y
apt install python3-dev -y
apt install python3-pip -y

#server to show files
python3 -m SimpleHTTPServer 8765

#install steep python package requirements
pip3 install setuptools
pip3 install wheel
