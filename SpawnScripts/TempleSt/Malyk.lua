--[[
	Script Name	: SpawnScripts/TempleSt/Malyk.lua
	Script Purpose	: Malyk 
	Script Author	: John Adams
	Script Date	: 2008.09.29
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1032.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'm here on behalf of Neezer Grund.", "dlg_38_1")
	AddConversationOption(conversation, "Never mind.")
	StartConversation(conversation, NPC, Spawn, "And how can Malyk help you today?")
end

function dlg_38_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "He accidentally mutated a pig when trying to move it from one point to another instantly.", "dlg_38_2")
	StartConversation(conversation, NPC, Spawn, "Ah, what has the gnome come up with this time?")
end

function dlg_38_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tusks and fire burning from its back...", "dlg_38_3")
	StartConversation(conversation, NPC, Spawn, "Mutated how?")
end

function dlg_38_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "We don't know yet.", "dlg_38_4")
	StartConversation(conversation, NPC, Spawn, "How aggressive was it?")
end

function dlg_38_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "We don't know yet.", "dlg_38_5")
	StartConversation(conversation, NPC, Spawn, "How did the process affect gnomes? Or ratongas?")
end

function dlg_38_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "All right, I will tell him.", "dlg_38_6")
	StartConversation(conversation, NPC, Spawn, "Tell Neezer I am interested, but not until he has more concrete results. But this does sound very promising.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "Malyk helps many, but not you, and not right now.", "", 1689589577, 4560189, Spawn)
--]]

