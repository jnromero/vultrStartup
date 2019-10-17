echo "Restarting experiment\n" > /myLog.txt
#remove an old screen  if it exists
screen -S serverScreen -p 0 -X quit

#start screen to run the program in 
screen -dmS serverScreen

#get current ip address
myip="$(ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p')"

#start server on the screen called serverScreen
screen -S serverScreen -p 0 -X stuff 'cd /root/experiment/files/\n'
screen -S serverScreen -p 0 -X stuff "python3 experiment.py -l local -i "$myip"\n"
echo "experiment restarted\n" > /myLog.txt
