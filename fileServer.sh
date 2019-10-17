#start screen to run the program in 
screen -dmS fileServerScreen

#start server on the screen called serverScreen
screen -S fileServerScreen -p 0 -X stuff 'python3 -m http.server 8765'



