if [[ $steepVersion != "" ]]; then
	echo "Downloading Steep\n"
	#download steep to the folder /root/steep/
	git clone git://github.com/jnromero/steep.git /root/steep/
	cd /root/steep/
	if [[ $steepVersion != "latest" ]]; then
		echo "Reverting to STEEP Version - $steepVersion \n"
		cd /root/steep/
		git checkout $steepVersion
	fi

	pip3 install -r /root/steep/requirements.txt
	echo "Steep Downloaded\n"
fi