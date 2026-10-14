@echo off
title Calcolatrice
mode 75,15
:restart
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ									บ
echo บ			1 2 3 4 5 6 7 8 9 0				บ
echo บ			   +   -   *   /				บ
echo บ									บ
echo ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
set/p operaz="บ= "
set/a calcol=%operaz%
echo.
echo %calcol%
echo.
pause
cls
goto restart