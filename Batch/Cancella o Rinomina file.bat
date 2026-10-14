@echo off
mode 170,15

:MENU
title Cancella o Rinomina un file
echo 									Elimina un file (1)
echo.
echo 									Rinomina un file (2)
echo.
set/p menu="------------------------------------------------------------------------------>  "
if %menu%==1 goto R
if %menu%==2 goto N

cls
goto MENU

:R
cls
title Cancella un file
cd /d %userprofile%\desktop
set/p dir="Inserisci il percorso della cartella dove si trova il file da cancellare: "
cd /d %dir%
title %cd%
cls
set/p nome="Inserisci il nome del file da cancellare: "
del /p "%nome%"
echo.&echo File cancellato!
timeout /t 3 /nobreak >nul
cls
goto  MENU


:N
cls
title Rinomina un file
cd /d %userprofile%\desktop
set/p fir="Inserisci il percorso della cartella dove si trova il file da rinominare: "
cd /d %fir%
title %cd%
cls
set/p name="Inserisci il nome del file principale da rinominare: "
set/p newname="Inserisci che nome dare al file: "
ren "%name%" "%newname%"
timeout /t 1 /nobreak >nul
cls
echo File rinominato con successo!
timeout /t 3 /nobreak >nul
cls
goto MENU
