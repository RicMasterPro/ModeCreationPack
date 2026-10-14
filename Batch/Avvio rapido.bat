@echo off
title Spegni PC: Avvio Rapido, Iberna, Avvia dal BIOS
mode 55,10

:r
echo.&echo.
echo          0.		Avvio Rapido
echo          1.		Iberna
echo          2.		Avvia dal BIOS
echo.&echo.
set/p menu=": "
if %menu%==0 goto 0
if %menu%==1 goto 1
if %menu%==2 goto 2
cls
goto r

:0
title Avvio Rapido
cls
echo Premere un tasto per spegnere il PC
pause>nul
shutdown /s /t 00 /hybrid
exit

:1
title Iberna
cls
echo Premere un tasto per Ibernare il PC
pause>nul
shutdown /h
exit

:2
title Avvia dal BIOS
cls
echo Premere un tasto per Avviare il BIOS
pause>nul
shutdown /r /t 00 /fw
exit