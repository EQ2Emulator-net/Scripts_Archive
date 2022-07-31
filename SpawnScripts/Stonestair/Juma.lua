--[[
	Script Name	: SpawnScripts/Stonestair/Juma.lua
	Script Purpose	: Juma 
	Script Author	: John Adams
	Script Date	: 2009.04.11
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1, 3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/kerran/ft/kerran/kerran_eco_garble_garbled_gm_9d6a5ad3.mp3", "i look like a cat dont i", "", 2529038460, 1283968454, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/kerran/ft/kerran/kerran_eco_garble_garbled_gm_d598de6c.mp3", "this is something to say that sounds interesting", "", 2406034521, 1600126995, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/kerran/ft/kerran/kerran_eco_garble_garbled_gm_2686291e.mp3", "hello i am a kerra i speak kerran", "", 3043468628, 38902721, Spawn)
	end
end