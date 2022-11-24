@echo off
set ver=1.02
color 0a
title Easy Boot Flasher v%ver% by Ali BEYAZ

echo.
set /P "c=Drag and drop kernel *.img file here and press enter button: "
echo Kernel is on %c%
pause
sdk\fastboot flash boot_ab %c% || @echo "Flash boot error"
sdk\fastboot set_active a || @echo "set_active a error"
echo.
echo Success!
echo.
pause
sdk\fastboot reboot
goto exit

:exit
pause
exit

