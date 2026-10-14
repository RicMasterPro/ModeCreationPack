@echo off
title Copia Backup dei miei Documenti
mode 200,45
:res
echo Copia di backup
echo.

set /p menu="In che disco vuoi eseguire il backup? (D / E)_: "

if %menu% == D goto :backup_D
if %menu% == E goto :backup_E

if %menu% == d goto :backup_D
if %menu% == e goto :backup_E

cls
goto :res

:backup_E
title Copia Backup dei miei Documenti sul disco E:\ (Si e' pregati di attendere la fine dell'operazione)
robocopy "C:\Users\pareg\Desktop\Documenti" "E:\Backup E" /mir /v /eta

echo.&echo.&echo.&echo.&echo.&echo.&echo.
title Copia Backup dei miei Documenti sul disco E:\ (Operazione Completata)
echo ============================================================================================================================================================
echo ====================================================================== FINE OPERAZIONE =====================================================================
echo ============================================================================================================================================================
echo.
pause
exit

:backup_D
title Copia Backup dei miei Documenti sul disco D:\ (Si e' pregati di attendere la fine dell'operazione)
robocopy "C:\Users\pareg\Desktop\Documenti" "D:\Download\Altro\Backup D" /mir /v /eta

echo.&echo.&echo.&echo.&echo.&echo.&echo.
title Copia Backup dei miei Documenti sul disco D:\ (Operazione Completata)
echo ============================================================================================================================================================
echo ====================================================================== FINE OPERAZIONE =====================================================================
echo ============================================================================================================================================================
echo.
pause
exit