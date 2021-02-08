#!/bin/sh

git clone https://github.com/jnromero/vultrStartup.git /root/scripts/

cat <<EOT >> /root/scripts/custom.sh
echo "Custom Steep Download"
sudo apt-get install unzip
curl -L https://www.dropbox.com/sh/e8baz0fpee8q6q1/AAB052wZy_J349eXvyzYxTSoa?dl=1 > allFolders.zip
unzip allFolders.zip -d /root/allFolders/
mv  /root/allFolders/steep/ /root/steep/
mv  /root/allFolders/BDMmmn/ /root/experiment/
pip3 install -r /root/steep/requirements.txt
echo "Custom Steep Downloaded\n"
EOT
chmod 777 /root/scripts/custom.sh

/root/scripts/everything.sh >> /myLog.txt

