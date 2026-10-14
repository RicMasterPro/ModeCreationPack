@echo off
title Annulla spegnimento
shutdown /a
mode con cols=50 lines=5
echo Spegnimento del PC annullato!
timeout /t 3 /NOBREAK >nul
