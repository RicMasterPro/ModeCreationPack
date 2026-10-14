@echo off
title 

	NET SESSION >nul 2>&1
	if %errorlevel% neq 0 (
	PowerShell -Command "& {Start-Process %0 -Verb RunAs}
	cls
	title Errore!
	echo Esegui il programma come amministratore!
	timeout /t 3 /nobreak >nul
	exit
	) else (
	rem null
	)
	
:rest
title Copia di un programma o file nel Menu Start
cd /d %userprofile%\desktop
set/p program="Inserisci il programma da copiare nel Menu Start: "
if exist %program% (
	rem null
	) else (
		echo.&echo.
		echo Il file o programma specificato non esiste! Ma puoi crearlo...
		timeout /t 3 /nobreak >nul
		cls
		call "C:\Users\pareg\Desktop\Documenti\Extra\Lavoro\NewFiles\NuovoFile.bat"
		goto rest
		)

cd "C:\ProgramData\Microsoft\Windows\Start Menu\Programs" 
copy /-y /v %userprofile%\desktop\%program% "C:\ProgramData\Microsoft\Windows\Start Menu\Programs"
timeout /t 1 /nobreak >nul
cls
set/p sposta="Programma copiato nel Menu Start! Ora inserisci la cartella dove vuoi avere il programma (facoltativo): "
if exist %sposta% (
	rem null
	) else (
		echo.&echo.
		echo La cartella specificata non esiste! Ma puoi crearla...
		timeout /t 3 /nobreak >nul
		cls
		call "C:\Users\pareg\Desktop\Documenti\Extra\Lavoro\NewFiles\NuovaCartella.bat"
		goto rest
		)
		
move /-y %program% %sposta%
timeout /t 1 /nobreak >nul
cls
echo Programma copiato correttamente nella cartella inserita nel Menu Start!
timeout /t 3 /nobreak >nul
cls
goto rest
