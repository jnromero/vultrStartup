cat <<EOT >> /root/.bashrc
export username=$username
export password=$password
export gitURL=$gitURL
EOT

source /root/.bashrc
