--[[
	Script Name	: SpawnScripts/BigBend/JezranazRottingskin.lua
	Script Purpose	: Jezranaz Rottingskin 
	Script Author	: John Adams
	Script Date	: 2008.10.01
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

	PlayFlavor(NPC, "voiceover/english/jezranaz_rottingskin/fprt_hood01/jezranazrottingskin000.mp3", "", "", 304055100, 199645713, Spawn)
	AddConversationOption(conversation, "Uh, I don't know, but it sure looks like you need one.")
	StartConversation(conversation, NPC, Spawn, "Curses, where is da doctor in the district?")

end