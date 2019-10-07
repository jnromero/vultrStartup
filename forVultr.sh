#!/bin/sh

export username="xxxxxx"
export password="xxxxxxx"
export gitURL="gitURL"
export steepVersion="latest"
export experimentVersion="latest"

git clone https://$username:$password@github.com/jnromero/vultrStartup.git /root/scripts/
/root/scripts/everything.sh

