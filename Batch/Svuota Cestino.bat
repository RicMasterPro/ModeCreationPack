@echo off
title Svuota Cestino
mode con cols=50 lines=10

:riprova
set/p menu="Sei sicuro di voler svuotare il cestino? (S/N): "
if %menu%==S goto yes
if %menu%==N goto no
if %menu%==s goto yes
if %menu%==n goto no

cls
goto riprova

:yes
cls
echo Sto svuotando il cestino. Attendi...
PowerShell.exe -NoProfile -Command Clear-RecycleBin -Confirm:$false
cls
echo Cestino svuotato!
timeout /t 3 /NOBREAK >nul
exit

:no
cls
echo OK... Non svuoto il cestino
timeout /t 3 /nobreak >nul
exit