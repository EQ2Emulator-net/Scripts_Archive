--[[
	Script Name	: SpawnScripts/TempleSt/MalvirDestrin.lua
	Script Purpose	: Malvir Destrin 
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

		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/malvir_destrin/fprt_hood03/quests/malvir/malvir000.mp3", "", "", 1764854570, 1735374566, Spawn)
	AddConversationOption(conversation, "I am here on behalf of Neezer Grund.", "dlg_39_1")
	AddConversationOption(conversation, "Never mind.")
	StartConversation(conversation, NPC, Spawn, "Why do you interrupt the important processes of my mind?")
end

function dlg_39_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/malvir_destrin/fprt_hood03/quests/malvir/malvir001.mp3", "", "", 3634048855, 251865802, Spawn)
	AddConversationOption(conversation, "Well. Neezer was working on a translation device, something that would move creatures or things from one point to another instantly.", "dlg_39_2")
	StartConversation(conversation, NPC, Spawn, "Ah, Grund is perhaps the top supplier in our out-of-network R&D team. What news do you have for me?")
end

function dlg_39_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/malvir_destrin/fprt_hood03/quests/malvir/malvir002.mp3", "", "", 1648898323, 1684127558, Spawn)
	AddConversationOption(conversation, "I'm not done yet, something bad happened when he tested it.", "dlg_39_3")
	StartConversation(conversation, NPC, Spawn, "Sounds great, we're definitely interested. Standard 5th rank fee is offered.")
end

function dlg_39_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/malvir_destrin/fprt_hood03/quests/malvir/malvir003.mp3", "", "", 3004334038, 243606693, Spawn)
	AddConversationOption(conversation, "No, the test subject didn't die, but it was mutated into something else. It was a normal pig before translation, then it grew large tusks and had fire sprouting from its back.", "dlg_39_4")
	StartConversation(conversation, NPC, Spawn, "Test subject terminated? Still not bad, but our offer is lowered to 4th rank fee.")
end

function dlg_39_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/malvir_destrin/fprt_hood03/quests/malvir/malvir004.mp3", "", "", 1107063148, 3807461692, Spawn)
	AddConversationOption(conversation, "Are you sure? It seemed very dangerous.", "dlg_39_5")
	StartConversation(conversation, NPC, Spawn, "Wow, that's amazing! Stakes have been upped, we're now offering a rank 7 fee.")
end

function dlg_39_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/malvir_destrin/fprt_hood03/quests/malvir/malvir005.mp3", "", "", 466818185, 1708395, Spawn)
	AddConversationOption(conversation, "All right, I'll tell Neezer.", "dlg_39_6")
	StartConversation(conversation, NPC, Spawn, "Hmmm, all right rank 8, but that's as high as we're going.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/malvir_destrin/fprt_hood03/qst_malvir_destrin_notonquest_5d0313f7.mp3", "Not now, I'm looking at merchandise.", "", 1661504659, 3619139382, Spawn)
--]]

