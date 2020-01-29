echo "Starting File Server\n" >> /myLog.txt
cd /
nohup python3 -m http.server 8765 > /httpserver.txt 2>&1
echo "File Server Started\n" >> /myLog.txt



