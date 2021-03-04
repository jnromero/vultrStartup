echo "Restarting experiment\n"
#get current ip address
myip="$(ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p')"
cp /root/scripts/experiment.service /etc/systemd/system/experiment.service
sed -i "s/IPGOESHERE/"$myip"/" /etc/systemd/system/experiment.service 
systemctl enable experiment
systemctl restart experiment
# #kill old if needed
# kill $(ps aux | grep 'python3 /root/experiment/files/experiment.py' | awk '{print $2}')
# nohup python3 /root/experiment/files/experiment.py -l local -i $myip > /experiment.txt 2>&1 &
echo "experiment restarted\n"
