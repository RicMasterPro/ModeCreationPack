@echo off
title Apri un sito
mode 150,5
set/p nome="Inserisci il nome del sito web (senza https://): "
start https://%nome%
cls
echo Fatto!
timeout /t 3 /nobreak >nul