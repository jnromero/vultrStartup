echo "Downloading Steep Plugins\n" >> /myLog.txt
#download steepPlugins to the folder /root/steep/
git clone https://$gitUsername:$gitPassword@github.com/jnromero/steepPlugins.git /root/steepPlugins/
echo "Steep Plugins Downloaded\n" >> /myLog.txt
