@echo off
title Controllo privilegi di amministratore...
mode 100,30

 NET SESSION >nul 2>&1
 if %errorlevel% neq 0 ( 
	PowerShell -Command "& {Start-Process '%0' -Verb RunAs}"
	exit
 ) else (
rem null
)

:r
Title Aggiungi valori al Menu Contestuale del Tasto Destro sul Desktop!
echo           0    Esci...
echo           1    Aggiungi un valore al seguente Menu = ^> Tasto destro ^> Nuovo...
echo           2    Aggiungi un valore al seguente Menu = ^> Tasto Destro
echo.
echo           3    Rimuovi un valore al seguente Menu = ^> Tasto destro ^> Nuovo...
echo           4    Rimuovi un valore al seguente Menu = ^> Tasto Destro
echo.
choice /c "01234" 
if %errorlevel% == 1 goto e
if %errorlevel% == 2 goto a
if %errorlevel% == 3 goto b
if %errorlevel% == 4 goto c
if %errorlevel% == 5 goto d

:e
exit

:a
title Menu Contestuale = Tasto Destro ^> Nuovo...
echo.&echo.
set/p n1="Inserisci l'estensione del file da visualizzare nel Menu Nuovo: ."

reg add "HKEY_CLASSES_ROOT\.%n1%\ShellNew" /v NullFile /t REG_SZ /d "" /f
timeout /t 2 /nobreak>nul
cls
goto r

exit



:b
title Menu Contestuale = Tasto Destro
echo.&echo.
set/p n2="Inserisci il nome da visualizzare nel Menu Contestuale: "
set/p n2p="Inserisci il percorso di dove si trova il programma da eseguire: "

reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\%n2%\command" /v "" /t REG_SZ /d %n2p% /f
timeout /t 2 /nobreak>nul
cls
goto r

exit




:c
title Menu Contestuale = Tasto Destro ^> Nuovo...
echo.&echo.
set/p n3="Inserisci l'estensione del file da eliminare dal Menu Nuovo: ."

reg delete "HKEY_CLASSES_ROOT\.%n3%\ShellNew" /f
timeout /t 2 /nobreak>nul
cls
goto r

exit



:d
title Menu Contestuale = Tasto Destro
echo.&echo.
set/p n4="Inserisci il nome che era visualizzato da eliminare nel Menu: "


reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\%n4%" /f
timeout /t 2 /nobreak>nul
cls
goto r

exit

