--[[
	Script Name	: SpawnScripts/Starcrest/MollyDaysun.lua
	Script Purpose	: Molly Daysun 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/molly_daysun/qey_village02/mollydaysun.mp3", "Stop, Kitty!  Come back here!", "", 2796508243, 3325394808, Spawn)
end

