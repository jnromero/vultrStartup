#!/bin/sh

export steepVersion="none"
export experimentVersion="none"


git clone https://$gitUsername:$gitPassword@github.com/jnromero/vultrStartup.git /root/scripts/
/root/scripts/everything.sh >> /myLog.txt

