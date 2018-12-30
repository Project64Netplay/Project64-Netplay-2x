wget.exe https://github.com/CindyLouWho03/MarioEverything-Project64Netplay/archive/master.zip
7z x master.zip
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
DEL master.zip
start Project64.exe