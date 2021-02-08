if [[ $experimentVersion != "" ]]; then
	echo "Downloading Experiment\n"
	rm -r /root/experiment/
	git clone https://$gitUsername:$gitPassword@$gitURL /root/experiment/
	if [[ $experimentVersion != "latest" ]]; then
		echo "Reverting to Experiment Version - $experimentVersion \n"
		cd /root/experiment/
		git checkout $experimentVersion
	fi

	FILE=/root/experiment/files/requirements.txt
	if [[ -f "$FILE" ]]; then
		pip3 install -r $FILE
	    echo "Experiment specific requirement.txt"
	fi

	echo "Experiment Downloaded\n"
fi