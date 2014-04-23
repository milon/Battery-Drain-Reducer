init.d.loader Version 0.6 29 Dec 2011
init.d.loader script by puppet13th@xda

init.d for android stock rom

Requirement :
- Rooted
- Busybox installed on /system/xbin
- Busybox with sh and lenght applet
- Running install-recovery.sh script

This script tested using BusyBox v1.17.1

Installation :
	attach usb cable to you device
	double click init.d.cmd
	
Any script in /system/etc/init.d folder will be run when booting
don't forget to change 
 - premission to 755
 - owner and group to root

To run script in background append ".bgrun" in your script name
eg : myscript.bgrun

For Samsung Galaxy device on GingerBread platform
Patched ramdisk needed to run install-recovery.sh script