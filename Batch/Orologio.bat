@echo off
title %date%
mode 32,2
:go
echo %time%
timeout /t 1 /nobreak >nul
cls
goto go