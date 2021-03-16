echo '{
  "data-root": "/home/root/sd_card"
}' >> /etc/docker/daemon.json


sudo systemctl daemon-reload
sudo systemctl restart docker