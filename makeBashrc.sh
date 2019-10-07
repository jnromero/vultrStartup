cat <<EOT >> /root/.bashrc
export username=$username
export password=$password
export gitURL=$gitURL
alias logview="vi /tmp/firstboot.log"
EOT

source /root/.bashrc
