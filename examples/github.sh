#!/bin/sh

export gitUsername="xxxxxx"
export gitPassword="xxxxxxx"
export gitURL="gitURL"
export steepVersion="latest"
export experimentVersion="latest"
export steepPluginsVersion="latest"

export NOIPUsername="none"
export NOIPPassword="xxxxxxx"
export NOIPDomain="enter.your.domain.com"

git clone https://$gitUsername:$gitPassword@github.com/jnromero/vultrStartup.git /root/scripts/
/root/scripts/everything.sh >> /myLog.txt

