@echo off
mode con cols=31 lines=1
title Spegni PC
set/p "sec=Inserisci secondi: "
shutdown -s -t %sec%