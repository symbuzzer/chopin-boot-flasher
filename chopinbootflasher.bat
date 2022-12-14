@echo off
set ver=1.05
color 0a
title Easy Boot Flasher for Chopin v%ver% by Ali BEYAZ

echo.
set /P "c=Drag and drop KERNEL *.img file here and press enter button: "
echo.
set /P "d=Drag and drop vbmeta.img file here and press enter button: (Press Enter to skip)"
echo.
pause

fastboot flash boot_ab %c% || @echo "Flash boot error"
fastboot set_active a || @echo "set_active a error"
fastboot flash vbmeta %d% || @echo "vbmeta not flashed"
echo.
echo Success!
echo.
pause
fastboot reboot
goto exit

:exit
pause
exit
