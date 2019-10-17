echo "Downloading Steep\n" > /myLog.txt
#download steep to the folder /root/steep/
git clone git://github.com/jnromero/steep.git /root/steep/
cd /root/steep/
if [[ $steepVersion != "latest" ]]; then
	git checkout $steepVersion
fi

pip3 install -r /root/steep/requirements.txt
echo "Steep Downloaded\n" > /myLog.txt
