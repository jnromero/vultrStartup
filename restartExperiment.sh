echo "Restarting experiment\n" >> /myLog.txt
#get current ip address
myip="$(ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p')"
nohup python3 /root/experiment/files/experiment.py -l local -i $myip > /experiment.txt 2>&1
echo "experiment restarted\n" >> /myLog.txt
