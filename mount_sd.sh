
sudo mkdir /home/mendel/sd_card

sudo fdisk -l
sudo mount /dev/mmcblk1 /home/mendel/sd_card
sudo mount /dev/mmcblk1p1 /home/mendel/sd_card
cd /home/mendel/sd_card

sudo fallocate -l 6G /home/mendel/sd_card/swapfile
sudo chmod 600 /home/mendel/sd_card/swapfile
sudo mkswap /home/mendel/sd_card/swapfile
sudo swapon /home/mendel/sd_card/swapfile

