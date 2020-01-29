echo "Starting File Server\n" >> /myLog.txt
nohup python3 -m http.server 8765
echo "File Server Started\n" >> /myLog.txt



