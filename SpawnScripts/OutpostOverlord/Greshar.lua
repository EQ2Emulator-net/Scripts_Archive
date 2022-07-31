--[[
	Spawn Template
	Script Name: Greshar.lua
	Script Purpose: Mender (evil)
	Script Author: John Adams
	Script Date: 2008.09.02
	Script Notes: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	choice = math.random(1,3)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_".. choice .. "_1036.mp3", "", "", 0, 0, Spawn)

	AddConversationOption(conversation, "Thanks, I will do so.")
	StartConversation(conversation, NPC, Spawn, "Hello there, " .. GetName(Spawn) .. ". Menders like me repair your equipment after it gets damaged due to death. To learn more about repairs, speak to Trainer Vissa Sathliss nearby. I'll fix your gear for a small fee, but menders in Freeport won't be quite so generous!")
end
