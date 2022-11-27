@echo off
set ver=1.03
color 0a
title Easy Boot Flasher v%ver% by Ali BEYAZ

echo.
set /P "c=Drag and drop kernel *.img file here and press enter button: "
echo Kernel is on %c%
pause
fastboot flash boot_ab %c% || @echo "Flash boot error"
fastboot set_active a || @echo "set_active a error"
echo.
echo Success!
echo.
pause
fastboot reboot
goto exit

:exit
pause
exit

