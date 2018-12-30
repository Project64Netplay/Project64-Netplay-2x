---------------------------------------------------------------------------------------- 
-- HleAudio.lua 
-- 
-- *Note* don't change the file name; this file must be in the same directory as the HleAudio dll 
---------------------------------------------------------------------------------------- 

---------------------------------------------------------------------------------------- 
-- predefined function:
-- 
-- SetPlaybackSetting( SettingID, Value ) ==> return none 
-- GetPlaybackSetting( SettingID )        ==> return int
-- PrintPlaybackSetting()                 ==> return none
-- DebugPrint( MessageStr )               ==> return none  
---------------------------------------------------------------------------------------- 


---------------------------------------------------------------------------------------- 
-- predefined constant
---------------------------------------------------------------------------------------- 
K_TRUE              = 1;
K_FALSE             = 0;

K_MIN_QUEUE_SIZE    = 4;
K_MAX_QUEUE_SIZE    = 16;

K_MIN_BLOCK_SIZE    = 2048;
K_MAX_BLOCK_SIZE    = 8192;

K_FixedAudioTiming    =  1; -- pj64 2.x setting (read only)
K_SyncViaAudio        =  2; -- pj64 2.x setting (read only) 
K_HighQualityAudio    =  3; -- N64 game audio frequency > 22 KHz (be careful with this setting)
K_NoSyncGameToAudio   =  4; -- force HleAudio to not sync the game to audio
K_SmallAiLen          =  5; -- force HleAudio to report a small unplayed DMA size
K_BigAudioChunk       =  6; -- input audio chunk bigger than 4 KB (Top Gear Rally)
K_QueueSize           =  7; -- audio queue size (default: 8, be careful with this setting) 
K_BlockSize           =  8; -- audio block size (calculate from AI_DACRATE_REG, be careful with this setting)
K_CheckInvalidAiLen   =  9; -- input audio chunk size needed to adjust (Killer Instinct Gold 1.2)
K_HookAiLenChanged    = 10; -- hook Lua OnAiLenChanged to HleAudio AiLenChanged 
K_UpdateAiLenReg      = 11; -- update AI_LENGTH_REG in HleAudio AiLenChanged
K_SyncGameToAudioMode = 12; -- switch sync game to audio mode, default: 0 (auto)

K_SyncMode_Auto       = 0;
K_SyncMode_1          = 1;
K_SyncMode_2          = 2;
K_SyncMode_None       = 3;

---------------------------------------------------------------------------------------- 
-- OnRomOpen: 
--       override HleAudio playback setting in this function 
--       (this function will be called by HleAudio when rom open)
-- 
--    in: RomName 
--         game name in rom header, you can get this name from the pj64 rom infromation
--
--   out: none
---------------------------------------------------------------------------------------- 
function OnRomOpen(RomName)
	
	-- How to use:
	--  (1) check rom name
	--  (2) adjust settings

	if RomName == "RIDGE RACER 64" then
		SetPlaybackSetting(K_SmallAiLen, K_TRUE);
	end 
	
	
	if RomName == "TOP GEAR RALLY" then
		SetPlaybackSetting(K_BigAudioChunk, K_TRUE);
		SetPlaybackSetting(K_SmallAiLen, K_FALSE);
		SetPlaybackSetting(K_UpdateAiLenReg, K_TRUE);
	end

	if RomName == "Kirby64" then
		SetPlaybackSetting(K_SmallAiLen, K_TRUE);
		SetPlaybackSetting(K_UpdateAiLenReg, K_TRUE);
		SetPlaybackSetting(K_SyncGameToAudioMode, K_SyncMode_None);
	end

	if RomName == "PAPER MARIO" then
		SetPlaybackSetting(K_SmallAiLen, K_TRUE);
	end

	if RomName == "SMASH BROTHERS" then
		SetPlaybackSetting(K_SmallAiLen, K_TRUE);
		SetPlaybackSetting(K_SyncGameToAudioMode, K_SyncMode_None);
	end 

	if RomName == "A Bug's Life" then
		SetPlaybackSetting(K_SmallAiLen, K_TRUE);
	end
	
	if RomName == "Killer Instinct Gold" then
		SetPlaybackSetting(K_CheckInvalidAiLen, K_TRUE);
	end 
	
	if RomName == "EXCITEBIKE64" then
		SetPlaybackSetting(K_SyncGameToAudioMode, K_SyncMode_2);
		SetPlaybackSetting(K_BlockSize, 4096);
		SetPlaybackSetting(K_QueueSize, 4);
		SetPlaybackSetting(K_UpdateAiLenReg, K_TRUE);
	end 
	
	if RomName == "HYDRO THUNDER" then
		SetPlaybackSetting(K_BlockSize, 2048);
		
	end 

	-- dump playback settings to debugger 
	-- PrintPlaybackSetting(); 
	DumpPlaybackSetting(RomName);
end

---------------------------------------------------------------------------------------- 
-- DumpPlaybackSetting: 
--       dump playback settings to debugger 
-- 
--    in: none 
--
--   out: none
---------------------------------------------------------------------------------------- 
function DumpPlaybackSetting(RomName)
	DebugPrint("============================================");
    DebugPrint("     HleAudio playback settings:");
	DebugPrint("============================================");
	DebugPrint("GameName          = " .. RomName );
	DebugPrint("FixedAudioTiming  = " .. GetPlaybackSetting(K_FixedAudioTiming ));
	DebugPrint("SyncViaAudio      = " .. GetPlaybackSetting(K_SyncViaAudio     ));
	DebugPrint("HighQualityAudio  = " .. GetPlaybackSetting(K_HighQualityAudio ));
	DebugPrint("SmallAiLen        = " .. GetPlaybackSetting(K_SmallAiLen       ));
	DebugPrint("BigAudioChunk     = " .. GetPlaybackSetting(K_BigAudioChunk    ));
	DebugPrint("QueueSize         = " .. GetPlaybackSetting(K_QueueSize        ));
	DebugPrint("BlockSize         = " .. GetPlaybackSetting(K_BlockSize        ));
	DebugPrint("CheckInvalidAiLen = " .. GetPlaybackSetting(K_CheckInvalidAiLen));
	DebugPrint("HookAiLenChanged  = " .. GetPlaybackSetting(K_HookAiLenChanged ));
	DebugPrint("UpdateAiLenReg    = " .. GetPlaybackSetting(K_UpdateAiLenReg   ));
	DebugPrint("SyncGameToAudioMode= " .. GetPlaybackSetting(K_SyncGameToAudioMode   ));
end

---------------------------------------------------------------------------------------- 
-- OnAiLenChanged: 
--       this function will be called by HleAudio::OnAiLenChanged
-- 
--    in: ChunkSize 
--         audio chunk size
--
--   out: none
---------------------------------------------------------------------------------------- 
function OnAiLenChanged(ChunkSize)

	if ChunkSize > 4096 then
		DebugPrint("suspicious audio chunk size = " .. ChunkSize); 
	end
	
end	
