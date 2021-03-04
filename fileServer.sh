echo "Starting File Server\n"
cp /root/scripts/fileServer.service /etc/systemd/system/fileServer.service
systemctl enable fileServer
systemctl restart fileServer
echo "File Server Started\n"

mkdir /cgi-bin
cp /root/scripts/index.html /index.html
cp /root/scripts/checkStatusFile.py /cgi-bin/checkStatusFile.py

chmod -R 777 /cgi-bin
chmod 777 /cgi-bin/checkStatusFile.py