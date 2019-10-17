git clone https://github.com/mdmower/bash-no-ip-updater.git /root/noip/
cd /root/noip/

#update config files
contents="`cat config_sample`"
contents="${contents/USERNAME=\"email@address.com\"/USERNAME=\"$NOIPUsername\"}"    
contents="${contents/HOST=\"host.domain.com\"/HOST=\"$NOIPDomain\"}"    
contents="${contents/PASSWORD=\"password\"/PASSWORD=\"$NOIPPassword\"}"    
contents="${contents/LOGDIR=\"\$HOME\/logs\"/LOGDIR=\"/root/noip/logs/\"}"    
echo "$contents" > config_sample_updated

#get net-tools to use ifconfig
apt install net-tools
#get current ip address
myip="$(ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p')"


if [[ $NOIPUsername != "none" ]]; then
	#update noip.com
	./noipupdater.sh -c config_sample_updated -i $myip
fi

