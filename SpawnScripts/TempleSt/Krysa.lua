--[[
	Script Name	: SpawnScripts/TempleSt/Krysa.lua
	Script Purpose	: Krysa 
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/krysa/fprt_hood03/100_barentertainerkrysa_callout_a56d9ec5.mp3", "Welcome to Pshavost's bar!  You want a drink?", "", 3717169563, 2070235233, Spawn)
end

