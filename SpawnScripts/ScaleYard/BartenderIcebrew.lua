--[[
	Script Name	: SpawnScripts/ScaleYard/BartenderIcebrew.lua
	Script Purpose	: Bartender Icebrew <Bartender>
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
QUEST_1 = 196
QUEST_2 = 197

function spawn(NPC)
	ProvidesQuest(NPC, 196)
	ProvidesQuest(NPC, 197)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, QUEST_1) then 
		if HasCompletedQuest(Spawn, QUEST_2) then
			Say(NPC, "Get the next quest?", Spawn)
		elseif HasQuest(Spawn, QUEST_2) then
			HasQuest2(NPC, Spawn)
		else
			StartQuest2(NPC, Spawn)
		end
	elseif HasQuest(Spawn, 196) and GetQuestStep(Spawn, 196) == 2 then
		Quest1Complete(NPC, Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/bartender_icebrew/fprt_hood06/mer_icebrew.mp3", "", "", 3301168939, 3443300522, Spawn)
		AddConversationOption(conversation, "Let me see what you have.", "dlg_0_1")
		StartConversation(conversation, NPC, Spawn, "What are you drinking? Ya better not make it one of those sissy drinks.")
	end
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/bartender_icebrew/fprt_hood06/quests/bartendericebrew/icebrew_x1_initial.mp3", "", "", 323297829, 4256312876, Spawn)
	AddConversationOption(conversation, "Pour me one!", "dlg_0_2")
	AddConversationOption(conversation, "Never mind. I'm the type who likes a fine wine.")
	StartConversation(conversation, NPC, Spawn, "I'll give ya a belt of my special homebrew, Wheat Rust Stout. Its bite is so strong you'll think a bear is maulin' ya. Ah, yes ... nothin' like knockin' back a few rounds and slaughtering anyone who gets in your face!")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/bartender_icebrew/fprt_hood06/quests/bartendericebrew/icebrew_x1_initial2.mp3", "", "", 3007403188, 2444158205, Spawn)
	AddConversationOption(conversation, "You actually use rust?", "dlg_0_3")
	AddConversationOption(conversation, "Then I guess I'll look at what else you have.")
	StartConversation(conversation, NPC, Spawn, "Well, now, that's a problem. Just enough of the brew is left for one mug, and I don't have rust to make another batch. I ran out of the liquid rust a few hours back and can't make another batch of brew until I get more.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/bartender_icebrew/fprt_hood06/quests/bartendericebrew/icebrew_x1_initial3.mp3", "", "", 2459588237, 3538627268, Spawn)
	AddConversationOption(conversation, "I sure am. Where should I look for it?", "dlg_0_4")
	AddConversationOption(conversation, "No, I'm too busy. Maybe another time.")
	StartConversation(conversation, NPC, Spawn, "Are you dense, fool? Didn't I say I use it? Me dad brewed ale using molding wheat, but I found a better, tastier way. If you go and get me more rust, I'll give you some coin and throw in a brew on the house. Are you up for the task?")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/bartender_icebrew/fprt_hood06/quests/bartendericebrew/icebrew_x1_accept.mp3", "", "", 2282916525, 4054783281, Spawn)
	AddConversationOption(conversation, "I can do this.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Go to the Sunken City and slay the rust monsters that lurk there. Kill the beasts and squeeze them with all your might. Out of their bodies should pour about a jar's worth of pure, liquid rust. Come back with as many jars as you can, and we have a deal.")
end


function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function Quest1Return(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversaion()
		
	PlayFlavor(NPC, "voiceover/english/bartender_icebrew/fprt_hood06/mer_icebrew.mp3", "", "", 3301168939, 3443300522, Spawn)
	AddConversationOption(conversation, "I have ten jars of liquid rust.", "Quest1Complete")
	AddConversationOption(conversation, "Let me see what you have.")
	StartConversation(conversation, NPC, Spawn, "What are you drinking? Ya better not make it one of those sissy drinks.")
end

function Quest1Complete(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function StartQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/bartender_icebrew/fprt_hood06/mer_icebrew.mp3", "", "", 3301168939, 3443300522, Spawn)
	AddConversationOption(conversation, "Were you able to make any more of that Wheat Rust Stout?", "dlg_2_1")
	AddConversationOption(conversation, "Let me see what you have.")
	StartConversation(conversation, NPC, Spawn, "What are you drinking? Ya better not make it one of those sissy drinks.")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/bartender_icebrew/fprt_hood06/quests/bartendericebrew/icebrew_x2_initial.mp3", "", "", 3718305704, 4001640660, Spawn)
	AddConversationOption(conversation, "Sure. What do you want me to do?", "dlg_1_2")
	AddConversationOption(conversation, "Sorry, I'm a bit busy right now.")
	StartConversation(conversation, NPC, Spawn, "Aye, I just brewed another batch, but I don't know if it's any good. If it's not perfect then my name isn't Icebrew! Never let anyone say that the Icebrews serve up a weak brew. Perhaps you can help me out again, eh?")
end

function HasQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/bartender_icebrew/fprt_hood06/mer_bartender_icebrew_multhail2_7bd7d291.mp3", "", "", 3841480611, 2334138214, Spawn)
	AddConversationOption(conversation, "Sorry, I'll go find that Dark Elf.")
	StartConversation(conversation, NPC, Spawn, "Do you wanna drink or what?")
end

