--[[
	Script Name	: SpawnScripts/TempleSt/DarsusTavalin.lua
	Script Purpose	: Darsus Tavalin 
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

	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/darsus_tavalin/fprt_hood03/qst_darsus_tavalin_donewithquest_6b5eba2a.mp3", "I'll await word from Neezer.", "", 973158933, 2482756868, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/darsus_tavalin/fprt_hood03/qst_darsus_tavalin_notonquest_af1aab99.mp3", "I can't talk, I'm waiting for someone.", "", 2435730222, 994426303, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/darsus_tavalin/fprt_hood03/quests/darsus/darsus000.mp3", "", "", 4091645701, 2791504012, Spawn)
	AddConversationOption(conversation, "I am here on behalf of Neezer Grund.", "dlg_37_1")
	AddConversationOption(conversation, "Never mind.")
	StartConversation(conversation, NPC, Spawn, "Speak quickly, I don't have all day.")
end

function dlg_37_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/darsus_tavalin/fprt_hood03/quests/darsus/darsus001.mp3", "", "", 1835931254, 168956709, Spawn)
	AddConversationOption(conversation, "He has an item you may be interested in and would like to know your offer.", "dlg_37_2")
	StartConversation(conversation, NPC, Spawn, "Ah, yes, I know the gnome to whom you refer. What does he want?")
end

function dlg_37_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/darsus_tavalin/fprt_hood03/quests/darsus/darsus002.mp3", "", "", 4044034109, 3385579596, Spawn)
	AddConversationOption(conversation, "It was supposed to be a translation device, meant to transport things over a distance instantly.", "dlg_37_3")
	StartConversation(conversation, NPC, Spawn, "What is this item?")
end

function dlg_37_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/darsus_tavalin/fprt_hood03/quests/darsus/darsus003.mp3", "", "", 3794508330, 1459400079, Spawn)
	AddConversationOption(conversation, "Well we tried it on a pig. The pig mutated into something with tusks and flame from its back.", "dlg_37_4")
	StartConversation(conversation, NPC, Spawn, "Supposed to be?")
end

function dlg_37_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/darsus_tavalin/fprt_hood03/quests/darsus/darsus004.mp3", "", "", 1132645024, 119337793, Spawn)
	AddConversationOption(conversation, "Not yet.", "dlg_37_5")
	StartConversation(conversation, NPC, Spawn, "Interesting. Has Grund tried it on anything smarter than a pig?")
end

function dlg_37_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/darsus_tavalin/fprt_hood03/quests/darsus/darsus005.mp3", "", "", 194005083, 1850709720, Spawn)
	AddConversationOption(conversation, "All right, I'll let him know.", "dlg_37_6")
	StartConversation(conversation, NPC, Spawn, "Hmm... Tell Grund standard contract fee with sliding-clause up to four-hundred and fifty percent given later results.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/darsus_tavalin/fprt_hood03/qst_darsus_tavalin_notonquest_af1aab99.mp3", "I can't talk, I'm waiting for someone.", "", 2435730222, 994426303, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/darsus_tavalin/fprt_hood03/qst_darsus_tavalin_donewithquest_6b5eba2a.mp3", "I'll await word from Neezer.", "", 973158933, 2482756868, Spawn)
--]]

