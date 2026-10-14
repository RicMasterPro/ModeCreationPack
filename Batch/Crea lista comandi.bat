@echo off
mode 105,11
title Crea una lista dei comandi per il CMD



:restart
echo Cosa vuoi fare?
echo.&echo.&echo.
echo				0. Crea lista di aiuto di tutti i comandi
echo				1. Crea lista di aiuto di un comando specifico
echo				2. Crea una lista di aiuto per entrambi
echo.
echo						(0 / 1 / 2)
echo.
set/p menu="___________________________________________: "
cls
if %menu%==0 goto 0
if %menu%==1 goto 1
if %menu%==2 goto 2
goto restart



:1
set/p "nome=Inserisci il comando che vuoi creare nella la lista: "
cls
title Lista creata! Ma attenzione...
echo Quando chiuderai la finestra del blocco note, il file si cancella
%nome%/?>"Lista del comando (%nome%).txt"
"Lista del comando (%nome%).txt"
del "Lista del comando (%nome%).txt"
cls
title Crea una lista dei comandi per il CMD
echo Fatto!
timeout /t 3 /nobreak >nul
exit



:0
set/p lettera="Digita un nome alla lista: "
cls
title Lista creata! Ma attenzione...
echo Quando chiuderai la finestra del blocco note, il file si cancella
help>"Lista di tutti i comandi (%lettera%).txt"
"Lista di tutti i comandi (%lettera%).txt"
del "Lista di tutti i comandi (%lettera%).txt"
cls
title Crea una lista dei comandi per il CMD
echo Fatto!
timeout /t 3 /nobreak >nul
exit



:2
set/p parola="Digita un nome alla lista: "
cls
set/p "name=Inserisci il comando che vuoi creare nella la lista: "
cls
title Lista creata! Ma attenzione...
echo Quando chiuderai le finestre del blocco note, i files si cancelleranno

help>"ListaDiTuttiIcomandi(%parola%).txt"
%name%/?>"ListaDelComando(%name%).txt"
"ListaDiTuttiIcomandi(%parola%).txt"
"ListaDelComando(%name%).txt"
del "ListaDelComando(%name%).txt"
del "ListaDiTuttiIcomandi(%parola%).txt"
cls
title Crea una lista dei comandi per il CMD
echo Fatto!
timeout /t 3 /nobreak >nul
exit
