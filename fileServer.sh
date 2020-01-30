echo "Starting File Server\n"
cd /
nohup python3 -m http.server 8765 > /httpserver.txt 2>&1 &
echo "File Server Started\n"

mkdir /cgi-bin
cp /root/scripts/index.html /index.html
cp /root/scripts/checkStatusFile.py /cgi-bin/checkStatusFile.py

chmod -R 777 /cgi-bin
chmod 777 /cgi-bin/checkStatusFile.py