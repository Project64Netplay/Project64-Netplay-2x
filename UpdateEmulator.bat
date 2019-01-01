@echo off
title Mario Everything Project 64 Updater
:choice
set /P c=Are you sure you want to continue[Y/N]?
if /I "%c%" EQU "Y" goto :Start
if /I "%c%" EQU "N" goto :Exit
goto :Exit

:Start
TASKKILL /IM Project64.exe /F
wget.exe https://github.com/CindyLouWho03/MarioEverything-Project64Netplay/archive/master.zip
7z x master.zip
mkdir BackupCache
cd Config
move Project64.cfg ..\
move NRage.ini ..\
cd ..\
cd Plugin
cd GFX
move GlideN64.ini ..\..\
cd ..\..\
rmdir Config /s
rmdir Extras /s
rmdir Plugin /s
rmdir Save /s
cd MarioEverything-Project64Netplay-master
move Config ..\
move Extras ..\
move Plugin ..\
move Save ..\
move Project64.exe ..\
move README.md ..\
move Replace.bat ..\
cd ..\
rmdir MarioEverything-Project64Netplay-master /s
rmdir BackupCache /s
DEL master.zip
start Project64.exe

:Exit
EXIT