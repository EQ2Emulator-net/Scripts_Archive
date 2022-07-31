--[[
	Script Name	: SpawnScripts/TempleSt/FrondoWignin.lua
	Script Purpose	: Frondo Wignin 
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

		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/frondo_wignin/fprt_hood03/quests/frondo/frondo000.mp3", "", "", 922055225, 189902121, Spawn)
	AddConversationOption(conversation, "Neezer Grund is calling in a favor.", "dlg_33_1")
	AddConversationOption(conversation, "Never mind.")
	StartConversation(conversation, NPC, Spawn, "I once had a pig who thought she knew the meaning of life. When it didn't make any sense to me I realized that the meaning of a pig life is probably different than the meaning of a gnome life... or maybe I just wasn't ready yet.")
	if convo==34 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/frondo_wignin/fprt_hood03/quests/frondo/frondo000.mp3", "", "", 922055225, 189902121, Spawn)
		AddConversationOption(conversation, "Neezer Grund is calling in a favor.", "dlg_34_1")
		AddConversationOption(conversation, "Never mind.")
		StartConversation(conversation, NPC, Spawn, "I once had a pig who thought she knew the meaning of life. When it didn't make any sense to me I realized that the meaning of a pig life is probably different than the meaning of a gnome life... or maybe I just wasn't ready yet.")
	end

	if convo==42 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/frondo_wignin/fprt_hood03/quests/frondo/frondo004.mp3", "", "", 1926682267, 1443396993, Spawn)
		AddConversationOption(conversation, "No, he needs the old one back.", "dlg_42_1")
		StartConversation(conversation, NPC, Spawn, "Hello again. Does Neezer need another pig?")
	end

end

function dlg_34_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/frondo_wignin/fprt_hood03/quests/frondo/frondo001.mp3", "", "", 4258018072, 3468788263, Spawn)
	AddConversationOption(conversation, "He doesn't need one to eat, but he wants one anyway.", "dlg_34_2")
	StartConversation(conversation, NPC, Spawn, "Oh? What's he need now? I won't have any pigs fit for eatin' for another month or so.")
end

function dlg_34_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/frondo_wignin/fprt_hood03/quests/frondo/frondo002.mp3", "", "", 3333385710, 3397747235, Spawn)
	AddConversationOption(conversation, "Some sort of test.", "dlg_34_3")
	StartConversation(conversation, NPC, Spawn, "Doesn't want a pig for eating? Well what is he going to use it for?")
end

function dlg_34_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/frondo_wignin/fprt_hood03/quests/frondo/frondo003.mp3", "", "", 2984152112, 2486508451, Spawn)
	AddConversationOption(conversation, "Thanks.", "dlg_34_4")
	StartConversation(conversation, NPC, Spawn, "Hah! Last time he tried that he got bacon anyway! Yeah, here you go.")
end

function dlg_42_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/frondo_wignin/fprt_hood03/quests/frondo/frondo005.mp3", "", "", 47068067, 1838984772, Spawn)
	AddConversationOption(conversation, "He escaped.", "dlg_42_2")
	StartConversation(conversation, NPC, Spawn, "Why? What happened to Jimbly?")
end

function dlg_42_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/frondo_wignin/fprt_hood03/quests/frondo/frondo006.mp3", "", "", 1944593274, 379444664, Spawn)
	AddConversationOption(conversation, "Do you know where he is? We need to find him before he hurts someone.", "dlg_42_3")
	StartConversation(conversation, NPC, Spawn, "Hah-hah! Way to go, Jimbly!")
end

function dlg_42_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/frondo_wignin/fprt_hood03/quests/frondo/frondo007.mp3", "", "", 303849990, 2066519690, Spawn)
	AddConversationOption(conversation, "Not the old Jimbly, but the new one is more aggressive.", "dlg_42_4")
	StartConversation(conversation, NPC, Spawn, "Jimbly would never hurt anyone.")
end

function dlg_42_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/frondo_wignin/fprt_hood03/quests/frondo/frondo008.mp3", "", "", 2384868559, 1719765803, Spawn)
	AddConversationOption(conversation, "Did Jimbly return here? Or do you know of any place he may have gone?", "dlg_42_5")
	StartConversation(conversation, NPC, Spawn, "Neezer's doing, no doubt. Well why did you come to me?")
end

function dlg_42_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/frondo_wignin/fprt_hood03/quests/frondo/frondo009.mp3", "", "", 2376338899, 3714953154, Spawn)
	AddConversationOption(conversation, "Thanks.", "dlg_42_6")
	StartConversation(conversation, NPC, Spawn, "No, he didn't return here. If I were you I would try the stairwell that leads up to the rest of the city, though. Jimbly always did like to play on those stairs.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/frondo_wignin/fprt_hood03/qst_frondo_wignin_notonquest_cf768b6d.mp3", "These pigs prefer to sleep with their bellies facing south.", "", 2195005388, 1574128940, Spawn)
--]]

