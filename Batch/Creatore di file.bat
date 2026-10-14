@echo off

:inizia
cd /d %userprofile%\desktop
title Crea un nuovo file
mode con cols=150 lines=5
set/p per="Inserisci il percorso della directory dove si desidera creare il file: "
cd /d %per%
title %cd%
cls
set/p nome="Inserisci nome file da creare: "
fsutil file createnew "%nome%" 0
timeout /t 3 /NOBREAK >nul
cls
goto inizia

