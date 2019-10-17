echo "making .bashrc\n" > /myLog.txt
cat <<EOT >> /root/.bashrc
export gitUsername=$gitUsername
export gitPassword=$gitPassword
export gitURL=$gitURL
export NOIPUsername=$NOIPUsername
export NOIPPassword=$NOIPPassword
export NOIPDomain=$NOIPDomain
alias logview="vi /tmp/firstboot.log"
EOT

source /root/.bashrc
echo ".bashrc made\n" > /myLog.txt
