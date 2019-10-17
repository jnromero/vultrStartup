echo "Starting File Server\n" >> /myLog.txt
#start screen to run the program in 
screen -dmS fileServerScreen

#start server on the screen called serverScreen
screen -S fileServerScreen -p 0 -X stuff 'cd /\n'
screen -S fileServerScreen -p 0 -X stuff 'python3 -m http.server 8765\n'
echo "File Server Started\n" >> /myLog.txt



