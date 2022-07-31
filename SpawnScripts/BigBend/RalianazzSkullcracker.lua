--[[
	Script Name	: SpawnScripts/BigBend/RalianazzSkullcracker.lua
	Script Purpose	: Ralianazz Skullcracker 
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_aef9ec6e.mp3", "The best dreams are the flashbacks of the battlefield.", "chuckle", 34784682, 541558536, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_900b92c8.mp3", "Blood, lots of blood on the battlefield.", "confused", 3309525058, 2311238979, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_b11c99a1.mp3", "Make war not love.", "flirt", 163636935, 1865034471, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_c13548f0.mp3", "The Overlord knows the strength of the ogres; I'd enjoy reminding the others around here.", "threaten", 3218132325, 996755371, Spawn)
	else
	end

end

