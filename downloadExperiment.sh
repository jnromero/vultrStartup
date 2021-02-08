if [[ $experimentVersion != "" ]]; then
	echo "Downloading Experiment\n"
	rm -r /root/experiment/
	git clone https://$gitUsername:$gitPassword@$gitURL /root/experiment/
	if [[ $experimentVersion != "latest" ]]; then
		echo "Reverting to Experiment Version - $experimentVersion \n"
		cd /root/experiment/
		git checkout $experimentVersion
	fi
	pip3 install -r /root/experiment/files/requirements.txt
	echo "Experiment Downloaded\n"
fi