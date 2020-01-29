echo "Starting File Server\n"
cd /
nohup python3 -m http.server 8765 > /httpserver.txt 2>&1 &
echo "File Server Started\n"

cp /root/scripts/index.html /index.html
cp /root/scripts/checkStatusFile.py /checkStatusFile.py