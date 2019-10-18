@echo off
title Project 64 Updater
:choice
set /P c=Are you sure you want to continue [Y or N] = 
if /I "%c%" EQU "Y" goto :Start
if /I "%c%" EQU "N" goto :Exit
goto :Exit

:Start
TASKKILL /IM Project64.exe /F
wget.exe https://github.com/Retro-Nintendo-Online/Project64-Netplay/raw/source/master.zip
7z x master.zip -y
cd Config
move Project64.cfg ..\
move AziCfg.bin ..\
cd ..\
cd Plugin
cd GFX
move GlideN64.ini ..\..\
cd ..\
cd Input
move netplay_input_plugin.ini ..\..\
move NRage.ini ..\..\
cd ..\..\
rmdir Config /s /q
rmdir Plugin /s /q
rmdir Save /s /q
cd master
move Config ..\
move Plugin ..\
move Save ..\
move Project64.exe ..\
move Replace.bat ..\
cd ..\
rmdir master /s /q
DEL master.zip
DEL .wget-hsts
move GlideN64.ini Plugin\GFX
move NRage.ini Plugin\Input
move netplay_input_plugin.ini Plugin\Input
move Project64.cfg Config
move AziCfg.bin Config
start Project64.exe

:Exit
EXIT
