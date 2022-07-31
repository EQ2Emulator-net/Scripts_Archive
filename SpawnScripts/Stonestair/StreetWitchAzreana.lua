--[[
	Script Name	: SpawnScripts/Stonestair/StreetWitchAzreana.lua
	Script Purpose	: Street Witch Azreana 
	Script Author	: John Adams
	Script Date	: 2009.04.25
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

	PlayFlavor(NPC, "voiceover/english/streetwitch/fprt_hood02/street_witch_azreana.mp3", "", "", 3291813723, 1080848971, Spawn)
	AddConversationOption(conversation, "Uhh... sure.")
	StartConversation(conversation, NPC, Spawn, "Hmmm ... yes ... this is interesting ... interesting indeed...")
end