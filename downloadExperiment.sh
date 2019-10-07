rm -r /root/experiment/
git clone https://$username:$password@$gitURL /root/experiment/
if [[ $experimentVersion != "latest" ]]; then
	git checkout $experimentVersion
fi
