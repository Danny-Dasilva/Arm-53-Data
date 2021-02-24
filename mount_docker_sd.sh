echo {"{
  "data-root": "/home/mendel/sd_card"
}"} >> /etc/docker/daemon.json


sudo systemctl daemon-reload
sudo systemctl restart docker