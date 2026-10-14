@echo off
mode 180,10


:restart
cd /d %userprofile%\desktop
title Crea una nuova cartella
echo										Scegli...
echo.
echo							1. 	Crea una nuova cartella sul Desktop
echo							2.	Crea una nuova cartella in un percorso specifico
echo							3.	Crea tante cartelle in un percorso specifico
set/p menu="Inserisci il numero indicato: "
cls
if %menu%==1 goto 1
if %menu%==2 goto 2
if %menu%==3 goto 3
goto restart


:1
title %cd%
set/p name="Inserisci nome cartella: "
md "%name%"
cls
echo Cartella creata!
timeout /t 3 /nobreak >nul
cls
goto restart

:2
set/p percorso="Inserisci il percorso di una cartella esistente: "
cd /d %percorso%
title %cd%
cls
set/p nome="Inserisci nome cartella: "
md "%nome%"
cls
echo Cartella creata!
timeout /t 3 /nobreak >nul
cls
goto restart

:3
set/p per="Inserisci il percorso di una directory esistente: "
cd /d %per%
title %cd%
:inizia
cls
set/p numero="Inserisci il numero di cartelle da creare: "
if not %numero% gtr 0 (
goto inizia
)

for /L %%a IN (1,1,%numero%) DO (
call :crea
)
cls
echo Cartelle create!
timeout /t 3 /nobreak >nul
cls
goto restart

:crea
set/p noome="Inserisci nome cartella: "
mkdir "%noome%"
