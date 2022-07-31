--[[
	Script Name	: SpawnScripts/BeggarsCourt/FavoniusSeneca.lua
	Script Purpose	: Favonius Seneca 
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

	PlayFlavor(NPC, "voiceover/english/favonius_seneca/fprt_hood04/favoniusseneca000.mp3", "", "", 4143618696, 2550129080, Spawn)
	AddConversationOption(conversation, "Some mood... ")
	StartConversation(conversation, NPC, Spawn, "Mind your own business.  If you keep gawking, you'll walk away with a limp--and that's because I'm in a good mood today.")
end