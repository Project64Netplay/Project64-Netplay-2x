@echo off
title Mario Everything Project 64 Updater
:choice
set /P c=Are you sure you want to continue[Y/N]?
if /I "%c%" EQU "Y" goto :Start
if /I "%c%" EQU "N" goto :Exit
goto :Exit

:Start
TASKKILL /IM Project64.exe /F
wget.exe https://github.com/NailNatail64/project64-mpn/archive/release.zip
7z x release.zip
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
cd MarioEverything-Project64Netplay-release
move Config ..\
move Extras ..\
move Plugin ..\
move Save ..\
move Project64.exe ..\
move README.md ..\
move Replace.bat ..\
cd ..\
rmdir MarioEverything-Project64Netplay-release /s
DEL release.zip
move GlideN64.ini Plugin\GFX
move NRage.ini Config
move Project64.cfg Config
start Project64.exe

:Exit
EXIT