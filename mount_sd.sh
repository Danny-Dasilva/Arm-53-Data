
sudo mkdirc /home/mendel/sd_card

sudo fdisk -l
sudo mount /dev/mmcblk1 /home/mendel/sd_card

cd /home/mendel/sd_card

sudo fallocate -l 10G /home/mendel/sd_card
sudo chmod 600 /home/mendel/sd_card
sudo mkswap /home/mendel/sd_card
sudo swapon /home/mendel/sd_card

