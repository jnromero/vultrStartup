echo "Downloading Experiment\n"
rm -r /root/experiment/
git clone https://$gitUsername:$gitPassword@$gitURL /root/experiment/
if [[ $experimentVersion != "latest" ]]; then
	git checkout $experimentVersion
fi
echo "Experiment Downloaded\n"
