#Just an example please type the commands within the backticks
`sudo fdisk /dev/mmcblk1`
# // create new partition
Command (m for help): `n`
# // make this a primary partition, leave default values for first and last sector
Command (m for help): `p`
# // Write it (by default fdisk will make this a ext4 partition)
Command (m for help): `w`

`sudo mkfs.ext4 /dev/mmcblk1p1`