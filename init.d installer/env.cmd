@echo off

cd >root.txt
set /p root=<root.txt
del root.txt

path=%path%;%root%\BIN;%root%\XBIN

cmd /t:0b