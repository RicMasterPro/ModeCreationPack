@echo off
title Copia Backup dei miei Documenti
:res
echo Copia di backup iniziata [Assicurati che il disco E sia disponibile]
echo.

set/p menu="In che disco vuoi eseguire il backup? ( D / F )_: "


if %menu%==D goto 0
if %menu%==d goto 0

if %menu%==F goto 1
if %menu%==f goto 1
cls
goto res

:1
xcopy "e:\*.*" "f:\Backup F" /d /s /f /y /i /j

echo.&echo.&echo.
echo ============== FINE OPERAZIONE =============
echo.
pause
exit

:0
xcopy "e:\*.*" "D:\Download\Altro\Backup D" /d /s /f /y /i /j
echo.&echo.&echo.
echo ============== FINE OPERAZIONE =============
echo.
pause
exit