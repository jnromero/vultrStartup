if [[ $steepPluginsVersion != "" ]]; then
	echo "Downloading Steep Plugins\n"
	rm -r /root/steepPlugins/
	git clone https://$gitUsername:$gitPassword@github.com/jnromero/steepPlugins.git /root/steepPlugins/
	if [[ $steepPluginsVersion != "latest" ]]; then
		echo "Reverting to Experiment Version - $experimentVersion \n"
		cd /root/steepPlugins/
		git checkout $steepPluginsVersion
	fi
	echo "Steep Plugins Downloaded\n"
fi