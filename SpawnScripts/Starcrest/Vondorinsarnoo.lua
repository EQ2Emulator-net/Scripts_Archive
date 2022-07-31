--[[
	Script Name	: SpawnScripts/Starcrest/Vondorinsarnoo.lua
	Script Purpose	: Vondorinsarnoo 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	ProvidesQuest(NPC, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()


	if HasCompletedQuest(Spawn, 1) then
	else
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1008.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What's wrong with him? ", "dlg_57_1")
		AddConversationOption(conversation, "Guess some people handle their liquor better than others.  Good day!")
		StartConversation(conversation, NPC, Spawn, "We are coping with the recent events...  some in better ways than others.  Take that poor drunk, Hubert, across the way for instance...")
	end

	if convo==58 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1008.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What's wrong with him? ", "dlg_58_1")
		AddConversationOption(conversation, "Guess some people handle their liquor better than others.  Good day!")
		StartConversation(conversation, NPC, Spawn, "We are coping with the recent events...  some in better ways than others.  Take that poor drunk, Hubert, across the way for instance...")
	end

	if convo==59 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1008.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What's wrong with him? ", "dlg_59_1")
		AddConversationOption(conversation, "Guess some people handle their liquor better than others.  Good day!")
		StartConversation(conversation, NPC, Spawn, "We are coping with the recent events...  some in better ways than others.  Take that poor drunk, Hubert, across the way for instance...")
	end

	if convo==60 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1008.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Guess some people handle their liquor better than others.  Good day!", "dlg_60_1")
		StartConversation(conversation, NPC, Spawn, "We are coping with the recent events...  some in better ways than others.  Take that poor drunk, Hubert, across the way for instance...")
	end

end

function dlg_59_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll help you, seems to be a worthy cause.", "dlg_59_2")
	AddConversationOption(conversation, "Best of luck to you.  I'll be off to pursue other interests.")
	StartConversation(conversation, NPC, Spawn, "His faith is shaken, and he's suffered insurmountable hardships and loss.  I could help this poor soul, but first, I must remove him from his drunken stupor.")
end

function dlg_59_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "These items shouldn't be too difficult to find.", "dlg_59_3")
	StartConversation(conversation, NPC, Spawn, "I'll write in your journal what I need from the local Peat Bog. I'll create a concoction so foul that he'll expel what resides in his belly.")
end

function dlg_59_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll be back soon.", "dlg_59_4")
	StartConversation(conversation, NPC, Spawn, "He'll speak more clearly with that rotgut out of his stomach.")
end

