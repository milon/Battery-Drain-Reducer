@echo off

cd >root.txt
set /p root=<root.txt
del root.txt

path=%path%;%root%\BIN

color 0b

adb kill-server
adb start-server
cls
echo.
echo init.d for Android Stock Rom
echo init.d.loader script by puppet13th@xda
echo.
echo Please connect your devices and enable usb debugging
echo.
echo waiting for device . . .
echo.
adb wait-for-device

echo pushing init.d.loader . . .
adb push init.d.loader /data/local/tmp
echo pushing init.d.loader.test . . .
adb push init.d.loader.test /data/local/tmp

echo ready to work . . .
echo Wake up the screen!
pause
echo Press Allow on Super User Request
echo running init.d.loader installer . . .
adb shell "su -c 'sh /data/local/tmp/init.d.loader install'"
echo copying init.d.loader.test file . . .
adb shell "su -c 'mount -o remount rw /system'"
adb shell "su -c 'cat /data/local/tmp/init.d.loader.test >/system/etc/init.d/init.d.loader.test'"
adb shell "su -c 'chmod 755 /system/etc/init.d/init.d.loader.test'"
adb shell "su -c 'mount -o remount ro /system'"
echo.
adb shell "su -c 'cat /data/init.d.loader.log'"
pause
echo.
echo please reboot device for init.d.loader to take effect . . .
echo after reboot please check /data/init.d.loader.test file
echo if the file exist,then init.d.loader successfuly installed on your device
echo you can safely delete /data/init.d.loader.test and /system/etc/init.d/init.d.loader.test
echo.
pause



