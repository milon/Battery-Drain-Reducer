#!/sbin/busybox sh

# Script to start zRam (Virtual Swap Compressed in RAM)
# Size of swap space in MB
# default 64MB (64*1024*1024)

/sbin/busybox echo "67108864" > /sys/block/zram0/disksize
/sbin/busybox mkswap /dev/block/zram0
/sbin/busybox swapon /dev/block/zram0

