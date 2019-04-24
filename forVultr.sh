#!/bin/sh

export username="xxxxxx"
export password="xxxxxxx"
export gitURL="gitURL"
git clone https://$username:$password@github.com/jnromero/vultrStartup.git /root/scripts/
/root/scripts/everything.sh

