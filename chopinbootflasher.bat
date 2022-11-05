@echo off
set ver=1.01
color 0a
title Easy Boot Flasher v%ver% by Ali BEYAZ

echo.
set /P "c=Drag and drop kernel *.img file here and press enter button: "
echo Kernel is on %c%
pause
sdk\adb reboot bootloader || @echo "Please authorize adb from your phone and try again" && goto exit
sdk\fastboot flash boot_ab %c% || @echo "Flash boot error"
sdk\fastboot set_active a || @echo "set_active a error"
sdk\adb kill-server
echo.
echo Success!
echo.
pause
sdk\fastboot reboot
goto exit

:exit
pause
exit

