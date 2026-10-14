@echo off
title Scrivi un documento
cd /d %userprofile%\desktop

setlocal enabledelayedexpansion

set /p "fileName=Inserisci il nome del file (con estensione): "
set "file=!fileName!"

:menu
cls
echo 1. Aggiungi testo (nuova riga)
echo 2. Esci

choice /C 12 /N /M "Scelta:"

if errorlevel 2 goto :exit
if errorlevel 1 (
    call :addLine newLine
    goto menu
)

:exit

goto :eof

:addLine
set /p "newLine=Inserisci il testo da aggiungere: "
set "newLine=!newLine:^<=^<!"
set "newLine=!newLine:^>=^>!"
echo !newLine!>>"%file%"
echo Testo aggiunto con successo!
timeout /nobreak /t 2 >nul
goto :eof
