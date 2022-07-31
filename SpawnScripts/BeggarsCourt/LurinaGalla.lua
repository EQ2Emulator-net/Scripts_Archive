--[[
	Script Name	: SpawnScripts/BeggarsCourt/LurinaGalla.lua
	Script Purpose	: Lurina Galla 
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

	PlayFlavor(NPC, "voiceover/english/lurina_galla/fprt_hood04/std_lurina_galla.mp3", "", "", 2277358416, 3185524841, Spawn)
	AddConversationOption(conversation, "I guess I'll leave then.")
	StartConversation(conversation, NPC, Spawn, "You had better leave before my husband gets home. I'm not supposed to have guests while he's not around.")
end