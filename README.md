# Arm-53-Data


# Steps
flash the board to begin


### optional
to open ssh ports you can edit `sudo nano` or `sudo vim` the `/etc/ssh/sshd_config` file and change 
`PasswordAuthentication` and `ChallengeResponseAuthentication` to yes

## Install docker
run `install_docker.sh` or the commands inside then relog

## Mount Sd Card

## On reboot
You need to remount the sd card using
### 1
``
### 2
then you need to remount swap in the `sd_card` directory and possibly prune and rebuild the container
