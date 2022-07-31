--[[
	Script Name	: SpawnScripts/BigBend/Uggruk.lua
	Script Purpose	: Uggruk 
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1002.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Calm down big fellow. I am leaving.", "dlg_3_1")
	StartConversation(conversation, NPC, Spawn, "I am no city guide. Find your idle chat from some runt race, not from a son of Oggok. Begone before you find my rage!")
	if convo==4 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1002.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Calm down big fellow. I am leaving.", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, "I am no city guide. Find your idle chat from some runt race, not from a son of Oggok. Begone before you find my rage!")
	end

	if convo==16 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1002.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Calm down big fellow. I am leaving.", "dlg_16_1")
		StartConversation(conversation, NPC, Spawn, "I am no city guide. Find your idle chat from some runt race, not from a son of Oggok. Begone before you find my rage!")
	end

end

