--[[
	Script Name	: SpawnScripts/OutpostOverlord/BobbleWhirlwidget.lua
	Script Purpose	: Bobble Whirlwidget 
	Script Author	: John Adams
	Script Date	: 2008.09.23
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

		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bobble_whirlwidget/tutorial_island02_evil_revamp/quests/bobble_whirlwidget/bobble_whirlwidget001.mp3", "", "", 2891438805, 3358056285, Spawn)
	AddConversationOption(conversation, "What ship?", "dlg_3_1")
	AddConversationOption(conversation, "I need to go.")
	StartConversation(conversation, NPC, Spawn, "How am I going to collect these lugsnibbets?  I can't swim, but that won't matter when the ship is done.")
	if convo==12 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bobble_whirlwidget/tutorial_island02_evil_revamp/quests/bobble_whirlwidget/bobble_whirlwidget007.mp3", "", "", 3343893238, 3510748544, Spawn)
		AddConversationOption(conversation, "No problem.", "dlg_12_1")
		StartConversation(conversation, NPC, Spawn, "Perfect specimens!  I thank you for your help.")
	end

	if convo==35 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bobble_whirlwidget/tutorial_island02_evil_revamp/quests/bobble_whirlwidget/bobble_whirlwidget008.mp3", "", "", 2960606569, 1409207301, Spawn)
		AddConversationOption(conversation, "Here's your specimens.", "dlg_35_1")
		StartConversation(conversation, NPC, Spawn, "Holy snogratchets, that was quick!")
	end

end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bobble_whirlwidget/tutorial_island02_evil_revamp/quests/bobble_whirlwidget/bobble_whirlwidget002.mp3", "", "", 2087913374, 2185838291, Spawn)
	AddConversationOption(conversation, "I can keep a secret.", "dlg_3_2")
	AddConversationOption(conversation, "I don't want to get into it.")
	StartConversation(conversation, NPC, Spawn, "Shhhhh!  I need to keep this as quiet as possible, the Overlord demands it.  But I'm wizzlewogged here on my research and could use some help.")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bobble_whirlwidget/tutorial_island02_evil_revamp/quests/bobble_whirlwidget/bobble_whirlwidget003.mp3", "", "", 1612814867, 2911909119, Spawn)
	AddConversationOption(conversation, "Go on.", "dlg_3_3")
	StartConversation(conversation, NPC, Spawn, "Okay, word has it that the Wobblecog family of Qeynos is on the verge of perfecting a ship that can travel underwater. The Overlord cannot let Qeynos get the upper hand, so I have been tasked with figuring out the process for creating these ships.")
end

function dlg_3_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bobble_whirlwidget/tutorial_island02_evil_revamp/quests/bobble_whirlwidget/bobble_whirlwidget004.mp3", "", "", 1389844505, 1224176748, Spawn)
	AddConversationOption(conversation, "I'll collect the specimens.", "dlg_3_4")
	AddConversationOption(conversation, "I need to go.")
	StartConversation(conversation, NPC, Spawn, "I've discovered a creature called the nautilus that uses air chambers within its shell to keep itself buoyant, similar to the pogflume dialator I've been working on. I believe that if I can get some of these specimens, I should be able to figure out the mechanism and apply it to a ship.")
end

function dlg_3_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bobble_whirlwidget/tutorial_island02_evil_revamp/quests/bobble_whirlwidget/bobble_whirlwidget005.mp3", "", "", 2911148610, 1213914347, Spawn)
	AddConversationOption(conversation, "I'm off!", "dlg_3_5")
	StartConversation(conversation, NPC, Spawn, "Good!  I'll be up here observing.  Hurry now, the Overlord awaits!")
end

function dlg_35_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bobble_whirlwidget/tutorial_island02_evil_revamp/quests/bobble_whirlwidget/bobble_whirlwidget009.mp3", "", "", 2861918733, 954207307, Spawn)
	AddConversationOption(conversation, "Thanks.", "dlg_35_2")
	StartConversation(conversation, NPC, Spawn, "Excellent!  This ship is gonna be magnificent.  Here take this for your efforts.")
end

