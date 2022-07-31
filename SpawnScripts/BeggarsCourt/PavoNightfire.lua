--[[
	Script Name	: SpawnScripts/BeggarsCourt/PavoNightfire.lua
	Script Purpose	: Pavo Nightfire 
	Script Author	: John Adams
	Script Date	: 2009.04.05
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/pavo_nightfire/fprt_hood04/std_pavo_nightfire.mp3", "", "", 318731360, 4037507119, Spawn)
	AddConversationOption(conversation, "I highly doubt that.")
	StartConversation(conversation, NPC, Spawn, "The guards don't patrol for our protection they patrol to keep us in line. This part of the city is a holding cell; it's more of a prison than Freeport! Ah, Freeport, I hear its streets are paved with gold!")
end