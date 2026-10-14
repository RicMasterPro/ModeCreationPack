@echo off
title Apri un programma
mode 70,5
cd /d %userprofile%\desktop

:rinizia
set /p "scegli=Apri il programma: "
if exist "%userprofile%\desktop\%scegli%.lnk" (
    start "" "%userprofile%\desktop\%scegli%"
) else if exist "C:\Users\Public\Desktop\%scegli%.lnk" (
    start "" "C:\Users\Public\Desktop\%scegli%.lnk"
) else (
    echo Il programma inserito non esiste.
    timeout /t 3 /nobreak >nul
    cls
    goto rinizia
)
echo Il programma si sta per aprire!
timeout /t 3 /nobreak >nul
cls
exit
