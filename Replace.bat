TEST
@echo off
title Mario Everything Project 64 Save Replacer
echo ===============================================================================
fc /b "Save\Backup\MarioParty.eep" "Save\MarioParty.eep" > nul
if errorlevel 1 (
	set MP1="n"
	set /p MP1=Your Mario Party 1 save has been changed. Replace?
	if /I "%MP1%"=="yes" goto ReplaceMp1
	if /I "%MP1%"=="y" goto ReplaceMp1
	if /I "%MP1%"=="no" goto CheckMp2
	if /I "%MP1%"=="n" goto CheckMp2	
) else (
	echo Your Mario Party 1 save is correct!
	goto CheckMp2
)

:ReplaceMp1
copy /y "Save\Backup\MarioParty.eep" "Save\MarioParty.eep"
fc /b "Save\Backup\MarioParty.eep" "Save\MarioParty.eep" > nul
if not errorlevel 1 (
	echo You now have the correct Mario Party 1 file!
) else (
	color 4Fs
	echo There was an error replacing the Mario Party 1 file...
	pause
)
)

:CheckMp2
echo ===============================================================================
fc /b "Save\Backup\MarioParty2.eep" "Save\MarioParty2.eep" > nul
if errorlevel 1 (
	set MP2="n"
	set /p MP2=Your Mario Party 2 save has been changed. Replace?
	if /I "%MP2%"=="yes" goto ReplaceMp2
	if /I "%MP2%"=="y" goto ReplaceMp2
	if /I "%MP2%"=="no" goto CheckMp3
	if /I "%MP2%"=="n" goto CheckMp3	
) else (
	echo Your Mario Party 2 save is correct!
	goto CheckMp3
)

:ReplaceMp2
copy /y "Save\Backup\MarioParty2.eep" "Save\MarioParty2.eep"
fc /b "Save\Backup\MarioParty2.eep" "Save\MarioParty2.eep" > nul
if not errorlevel 1 (
	echo You now have the correct Mario Party 2 file!
) else (
	color 4F
	echo There was an error replacing the Mario Party 2 file...
	pause
)
)

:CheckMp3
echo ===============================================================================
fc /b "Save\Backup\MarioParty3.eep" "Save\MarioParty3.eep" > nul
if errorlevel 1 (
	set MP3="n"
	set /p MP3=Your Mario Party 3 save has been changed. Replace?
	if /I "%MP3%"=="yes" goto ReplaceMp3
	if /I "%MP3%"=="y" goto ReplaceMp3
	if /I "%MP3%"=="no" goto CheckMk64
	if /I "%MP3%"=="n" goto CheckMk64
) else (
	echo Your Mario Party 3 save is correct!
	goto CheckMk64
)

:ReplaceMp3
copy /y "Save\Backup\MarioParty3.eep" "Save\MarioParty3.eep"
fc /b "Save\Backup\MarioParty3.eep" "Save\MarioParty3.eep" > nul
if not errorlevel 1 (
	echo You now have the correct Mario Party 3 file!
) else (
	color 4F
	echo There was an error replacing the Mario Party 3 file...
	pause
)
)

:CheckMk64
echo ===============================================================================
fc /b "Save\Backup\MARIOKART64.eep" "Save\MARIOKART64.eep" > nul
if errorlevel 1 (
	set MK64="n"
	set /p MK64=Your Mario Kart 64 save has been changed. Replace?
	if /I "%MK64%"=="yes" goto ReplaceMk64
	if /I "%MK64%"=="y" goto ReplaceMk64
	if /I "%MK64%"=="no" goto CheckDKR
	if /I "%MK64%"=="n" goto CheckDKR	
) else (
	echo Your Mario Kart 64 save is correct!
	goto CheckDKR
)

:ReplaceMk64
copy /y "Save\Backup\MARIOKART64.eep" "Save\MARIOKART64.eep"
fc /b "Save\Backup\MARIOKART64.eep" "Save\MARIOKART64.eep" > nul
if not errorlevel 1 (
	echo You now have the correct Mario Kart 64 file!
) else (
	color 4F
	echo There was an error replacing the Mario Kart 64 file...
	pause
)
)

:CheckDKR
echo ===============================================================================
fc /b "Save\Backup\Diddy Kong Racing.eep" "Save\Diddy Kong Racing.eep" > nul
if errorlevel 1 (
	set DKR="n"
	set /p DKR=Your Diddy Kong Racing save has been changed. Replace?
	if /I "%DKR%"=="yes" goto ReplaceMkDD
	if /I "%DKR%"=="y" goto ReplaceMkDD
	if /I "%DKR%"=="no" goto CheckDK64
	if /I "%DKR%"=="n" goto CheckDK64
) else (
	echo Your Diddy Kong Racing save is correct!
	goto CheckDK64
)

:ReplaceDKR
copy /y "Save\Backup\Diddy Kong Racing.eep" "Save\Diddy Kong Racing.eep"
fc /b "Save\Backup\Diddy Kong Racing.eep" "Save\Diddy Kong Racing.eep" > nul
if not errorlevel 1 (
	echo You now have the correct Diddy Kong Racing file!
) else (
	color 4F
	echo There was an error replacing the Diddy Kong Racing file...
	pause
)
)

:CheckDK64
echo ===============================================================================
fc /b "Save\Backup\DONKEY KONG 64.eep" "Save\DONKEY KONG 64.eep" > nul
if errorlevel 1 (
	set DK64="n"
	set /p DK64=Your Donkey Kong 64 save has been changed. Replace?
	if /I "%DK64%"=="yes" goto ReplaceDK64
	if /I "%DK64%"=="y" goto ReplaceDK64
	if /I "%DK64%"=="no" goto CheckDM64
	if /I "%DK64%"=="n" goto CheckDM64
) else (
	echo Your Donkey Kong 64 save is correct!
	goto CheckDM64
)

:ReplaceDK64
copy /y "Save\Backup\DONKEY KONG 64.eep" "Save\DONKEY KONG 64.eep"
fc /b "Save\Backup\DONKEY KONG 64.eep" "Save\DONKEY KONG 64.eep" > nul
if not errorlevel 1 (
	echo You now have the correct Donkey Kong 64 file!
) else (
	color 4F
	echo There was an error replacing the Donkey Kong 64 file...
	pause
)
)

:CheckDM64
echo ===============================================================================
fc /b "Save\Backup\DR.MARIO 64.eep" "Save\DR.MARIO 64.eep" > nul
if errorlevel 1 (
	set DM64="n"
	set /p DM64=Your Dr. Mario 64 save has been changed. Replace?
	if /I "%DM64%"=="yes" goto ReplaceDM64
	if /I "%DM64%"=="y" goto ReplaceDM64
	if /I "%DM64%"=="no" goto CheckMGOL
	if /I "%DM64%"=="n" goto CheckMGOL
) else (
	echo Your Dr. Mario 64 save is correct!
	goto CheckMGOL
)

:ReplaceDM64
copy /y "Save\Backup\DR.MARIO 64.eep" "Save\DR.MARIO 64.eep"
fc /b "Save\Backup\DR.MARIO 64.eep" "Save\DR.MARIO 64.eep" > nul
if not errorlevel 1 (
	echo You now have the correct Dr. Mario 64 file!
) else (
	color 4F
	echo There was an error replacing the Dr. Mario 64 file...
	pause
)
)

:CheckMGOL
echo ===============================================================================
fc /b "Save\Backup\MarioGolf64.sra" "Save\MarioGolf64.sra" > nul
if errorlevel 1 (
	set MGOL="n"
	set /p MGOL=Your Mario Golf save has been changed. Replace?
	if /I "%MGOL%"=="yes" goto ReplaceMGOL
	if /I "%MGOL%"=="y" goto ReplaceMGOL
	if /I "%MGOL%"=="no" goto CheckMTNS
	if /I "%MGOL%"=="n" goto CheckMTNS
) else (
	echo Your Mario Golf save is correct!
	goto CheckMTNS
)

:ReplaceMGOL
copy /y "Save\Backup\MarioGolf64.sra" "Save\MarioGolf64.sra"
fc /b "Save\Backup\MarioGolf64.sra" "Save\MarioGolf64.sra" > nul
if not errorlevel 1 (
	echo You now have the correct Mario Golf file!
) else (
	color 4F
	echo There was an error replacing the Mario Golf file...
	pause
)
)

:CheckMTNS
echo ===============================================================================
fc /b "Save\Backup\MarioTennis.eep" "Save\MarioTennis.eep" > nul
if errorlevel 1 (
	set MTNS="n"
	set /p MTNS=Your Mario Tennis save has been changed. Replace?
	if /I "%MTNS%"=="yes" goto ReplaceMPTS
	if /I "%MTNS%"=="y" goto ReplaceMPTS
	if /I "%MTNS%"=="no" goto CheckSSB
	if /I "%MTNS%"=="n" goto CheckSSB
) else (
	echo Your Mario Tennis save is correct!
	goto CheckSSB
)

:ReplaceMTNS
copy /y "Save\Backup\MarioTennis.eep" "Save\MarioTennis.eep"
fc /b "Save\Backup\MarioTennis.eep" "Save\MarioTennis.eep" > nul
if not errorlevel 1 (
	echo You now have the correct Mario Tennis file!
) else (
	color 4F
	echo There was an error replacing the Mario Tennis file...
	pause
)
)

:CheckSSB
echo ===============================================================================
fc /b "Save\Backup\SMASH BROTHERS.sra" "Save\SMASH BROTHERS.sra" > nul
if errorlevel 1 (
	set SSB="n"
	set /p SSB=Your Super Smash Bros. save has been changed. Replace?
	if /I "%SSB%"=="yes" goto ReplaceSSB
	if /I "%SSB%"=="y" goto ReplaceSSB
	if /I "%SSB%"=="n" goto CheckRest
	if /I "%SSB%"=="n" goto CheckRest
) else (
	echo Your Super Smash Bros. save is correct!
	goto CheckRest
)

:ReplaceSSB
copy /y "Save\Backup\SMASH BROTHERS.sra" "Save\SMASH BROTHERS.sra"
fc /b "Save\Backup\SMASH BROTHERS.sra" "Save\SMASH BROTHERS.sra" > nul
if not errorlevel 1 (
	echo You now have the correct Super Smash Bros. file!
) else (
	color 4F
	echo There was an error replacing the Super Smash Bros. file...
	pause
)
)

:CheckRest
echo ===============================================================================
color 2F
echo The check is done!
pause
exit
