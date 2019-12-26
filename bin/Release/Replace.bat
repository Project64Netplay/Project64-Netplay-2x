@echo off
title Project64 Netplay Save Replacer
fc /b "Save\Backup\MarioParty.eep" "Save\MarioParty.eep" > nul
if errorlevel 1 (
	choice /c YN /m "Your Mario Party 1 save has been changed. Replace?"
	if errorlevel 2 echo Skipping Mario Party 1! && goto CheckMp2
) else (
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

:CheckMp2
fc /b "Save\Backup\MarioParty2.eep" "Save\MarioParty2.eep" > nul
if errorlevel 1 (
	choice /c YN /m "Your Mario Party 2 save has been changed. Replace?"
	if errorlevel 2 echo Skipping Mario Party 2! && goto CheckMp3
) else (
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

:CheckMp3
fc /b "Save\Backup\MarioParty3.eep" "Save\MarioParty3.eep" > nul
if errorlevel 1 (
	choice /c YN /m "Your Mario Party 3 save has been changed. Replace?"
	if errorlevel 2 echo Skipping Mario Party 3! && goto CheckNmp
) else (
	goto CheckNmp
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


:CheckNmp
fc /b "Save\Backup\NewerMarioParty.eep" "Save\NewerMarioParty.eep" > nul
if errorlevel 1 (
	choice /c YN /m "Your Newer Mario Party save has been changed. Replace?"
	if errorlevel 2 echo Skipping Newer Mario Party! && goto CheckMk64
) else (
	goto CheckMk64
)


:ReplaceNmp
copy /y "Save\Backup\NewerMarioParty.eep" "Save\NewerMarioParty.eep"
fc /b "Save\Backup\NewerMarioParty.eep" "Save\NewerMarioParty.eep" > nul
if not errorlevel 1 (
	echo You now have the correct Newer Mario Party file!
) else (
	color 4F
	echo There was an error replacing the Newer Mario Party file...
	pause
)


:CheckMk64
fc /b "Save\Backup\MARIOKART64.eep" "Save\MARIOKART64.eep" > nul
if errorlevel 1 (
	choice /c YN /m "Your Mario Kart 64 save has been changed. Replace?"
	if errorlevel 2 echo Skipping Mario Kart 64! && goto CheckDKR
) else (
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

:CheckDKR
fc /b "Save\Backup\Diddy Kong Racing.eep" "Save\Diddy Kong Racing.eep" > nul
if errorlevel 1 (
	choice /c YN /m "Your Diddy Kong Racing save has been changed. Replace?"
	if errorlevel 2 echo Skipping Diddy Kong Racing! && goto CheckDK64
) else (
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

:CheckDK64
fc /b "Save\Backup\DONKEY KONG 64.eep" "Save\DONKEY KONG 64.eep" > nul
if errorlevel 1 (
	choice /c YN /m "Your Donkey Kong 64 save has been changed. Replace?"
	if errorlevel 2 echo Skipping Donkey Kong 64! && goto CheckDM64
) else (
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

:CheckDM64
fc /b "Save\Backup\DR.MARIO 64.eep" "Save\DR.MARIO 64.eep" > nul
if errorlevel 1 (
	choice /c YN /m "Your Dr. Mario 64 save has been changed. Replace?"
	if errorlevel 2 echo Skipping Dr. Mario 64! && goto CheckMGOL
) else (
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

:CheckMGOL
fc /b "Save\Backup\MarioGolf64.sra" "Save\MarioGolf64.sra" > nul
if errorlevel 1 (
	choice /c YN /m "Your Mario Golf save has been changed. Replace?"
	if errorlevel 2 echo Skipping Mario Golf! && goto CheckMT
) else (
	goto CheckMT
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


:CheckMT
fc /b "Save\Backup\MarioTennis.eep" "Save\MarioTennis.eep" > nul
if errorlevel 1 (
	choice /c YN /m "Your Mario Tennis save has been changed. Replace?"
	if errorlevel 2 echo Skipping Mario Tennis! && goto CheckSSB
) else (
	goto CheckSSB
)

:ReplaceMT
copy /y "Save\Backup\MarioTennis.eep" "Save\MarioTennis.eep"
fc /b "Save\Backup\MarioTennis.eep" "Save\MarioTennis.eep" > nul
if not errorlevel 1 (
	echo You now have the correct Mario Tennis file!
) else (
	color 4F
	echo There was an error replacing the Mario Tennis file...
	pause
)

:CheckSSB
fc /b "Save\Backup\SMASH BROTHERS.sra" "Save\SMASH BROTHERS.sra" > nul
if errorlevel 1 (
	choice /c YN /m "Your Super Smash Bros. save has been changed. Replace?"
	if errorlevel 2 echo Skipping Super Smash Bros! && goto CheckSF64
) else (
	goto CheckSF64
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

:CheckSF64
fc /b "Save\Backup\STARFOX64.eep" "Save\STARFOX64.eep" > nul
if errorlevel 1 (
	choice /c YN /m "Your Starfox 64 save has been changed. Replace?"
	if errorlevel 2 echo Skipping Starfox 64! && goto CheckBm64
) else (
	goto CheckBm64
)

:ReplaceSF64
copy /y "Save\Backup\STARFOX64.eep" "Save\STARFOX64.eep"
fc /b "Save\Backup\STARFOX64.eep" "Save\STARFOX64.eep" > nul
if not errorlevel 1 (
	echo You now have the correct Starfox 64 file!
) else (
	color 4F
	echo There was an error replacing the Starfox 64 file...
	pause
)

:CheckBm64
fc /b "Save\Backup\BOMBERMAN64U.eep" "Save\BOMBERMAN64U.eep" > nul
if errorlevel 1 (
	choice /c YN /m "Your Bomberman 64 save has been changed. Replace?"
	if errorlevel 2 echo Skipping Bomberman 64! && goto CheckEnd
) else (
	goto CheckEnd
)

:ReplaceBm64
copy /y "Save\Backup\BOMBERMAN64U.eep" "Save\BOMBERMAN64U.eep"
fc /b "Save\Backup\BOMBERMAN64U.eep" "Save\BOMBERMAN64U.eep" > nul
if not errorlevel 1 (
	echo You now have the correct Bomberman 64 file!
) else (
	color 4F
	echo There was an error replacing the Bomberman 64 file...
	pause
)

:CheckEnd
color 2F
echo Done
pause
exit
