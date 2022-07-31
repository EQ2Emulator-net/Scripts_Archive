--[[
	Script Name	: CoercerZlith.lua
	Script Purpose	: Spawnscript for Coercer Zlith in Outpost of the Overlord
	Script Author	: Scatman
	Script Date	: 2008.12.29
	Script Notes	:
--]]

function spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	if HasCompletedQuest(Spawn, 13) then
		YouveDoneWell(NPC, Spawn)
	elseif HasQuest(Spawn, 13) then
		if GetQuestStep(Spawn, 13) == 1 then
			ReadyForSabotage(NPC, Spawn)
		elseif GetQuestStep(Spawn, 13) == 2 or GetQuestStep(Spawn, 13) == 3 then
			MineIsNorth(NPC, Spawn)
		elseif GetQuestStep(Spawn, 13) == 4 then
			NiceWork(NPC, Spawn)
		elseif GetQuestStep(Spawn, 13) == 5 then
			HorseSentriesPatrolling(NPC, Spawn)
		elseif GetQuestStep(Spawn, 13) == 6 then
			YouHaveDoneEnough(NPC, Spawn)
		end
	else
		NotYetReady(NPC, Spawn)
	end
end

function respawn(NPC)
	spawn(NPC)
end

function NotYetReady(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/coercer_zlith/tutorial_island02_evil_revamp/quests/citizenship/coercerzlith/coercerzlith009.mp3", "", "", 2204153066, 1989322276, Spawn)
	AddConversationOption(conversation, "Very well.")
	StartConversation(conversation, NPC, Spawn, "You are not yet ready to take on the tasks I will offer you. Return to Tayil N'Velex outside Sythor's Spire if you are unsure how to prepare yourself.")
end

function ReadyForSabotage(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/coercer_zlith/tutorial_island02_evil_revamp/quests/citizenship/coercerzlith/coercerzlith001.mp3", "", "", 1264555446, 807045303, Spawn)
	AddConversationOption(conversation, "And you want me to...?", "WantMeTo")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "Sssso " .. GetName(Spawn) .. ", ready for a little sabotage? The mine is inside the Wilderwood in the far eastern corner.")
end

function WantMeTo(NPC, Spawn)
	SetStepComplete(Spawn, 13, 1)
   
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/coercer_zlith/tutorial_island02_evil_revamp/quests/citizenship/coercerzlith/coercerzlith002.mp3", "", "", 3880132810, 2976839399, Spawn)
	AddConversationOption(conversation, "Consider it done!")
	StartConversation(conversation, NPC, Spawn, "Head in there and sstir up the hornet's nest. Take out sssome of their miners, and while you're at it, grab some of the loose ore around the mine. Tayil wants to know what is is they're mining.")
end

function MineIsNorth(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/coercer_zlith/tutorial_island02_evil_revamp/quests/citizenship/coercerzlith/coercerzlith003.mp3", "", "", 3347143195, 3837286784, Spawn)
	AddConversationOption(conversation, "Okay, I'll be back.")
	StartConversation(conversation, NPC, Spawn, "The mine is north up the ssslope into the Wilderwood and then eassst. This should definitely cause the disstraction we need for our final attack.")
end

function NiceWork(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/coercer_zlith/tutorial_island02_evil_revamp/quests/citizenship/coercerzlith/coercerzlith004.mp3", "", "", 2084380659, 1533880588, Spawn)
	AddConversationOption(conversation, "Yes, those horse sentries have been a thorn in my side.", "dlg_28_1")
	AddConversationOption(conversation, "Not now.")
	StartConversation(conversation, NPC, Spawn, "Nice work! As you probably noticed, there are additional Tunarian horse sentriesss being sssent into the Wilderwood to check on the mine. We need another distraction to thin out the Qeynosian forces even more. It's time to deal with those meddling sentriesss once and for all.")
end

function dlg_28_1(NPC, Spawn)
	SetStepComplete(Spawn, 13, 4)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/coercer_zlith/tutorial_island02_evil_revamp/quests/citizenship/coercerzlith/coercerzlith005.mp3", "", "", 1181638962, 936080191, Spawn)
	AddConversationOption(conversation, "Very well, I'm heading back in.")
	StartConversation(conversation, NPC, Spawn, "Head back into the Wilderwood and take out sssome of these horse sentries. The more you slay, the more Qeynosians will be sent to investigate, which will provide our chance to attack. Return to me when the deed is done. By the way, I'll take those ore samples and make ssssure they find their way to Tayil.")
end

function HorseSentriesPatrolling(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	-- need playflavor
	AddConversationOption(conversation, "Okay, I'll keep looking.")
	StartConversation(conversation, NPC, Spawn, "The Tunarian horse sentriesss should be patrolling around the Wilderwood to the north. Return to me when you have dealt with them.")
end

function YouHaveDoneEnough(NPC, Spawn)
	SetStepComplete(Spawn, 13, 6)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SummonItem(Spawn, 12121)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/coercer_zlith/tutorial_island02_evil_revamp/quests/citizenship/coercerzlith/coercerzlith007.mp3", "", "", 4066514211, 2331535845, Spawn)
	AddConversationOption(conversation, "I won't.")
	StartConversation(conversation, NPC, Spawn, "You have done enough," .. GetName(Spawn) .. ". Tunarian reinforcementsss are on their way to the Wilderwood. Our time for attack is now! Tayil will be glad to hear of your work. Speaking of Tayil, take these sssealed orders. She sssent them for you, and if I were you I would not ignore them.")
end
function YouveDoneWell(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/coercer_zlith/tutorial_island02_evil_revamp/quests/citizenship/coercerzlith/coercerzlith008.mp3", "", "", 795927174, 1020947089, Spawn)
	
	if not HasItem(Spawn, 12121) then
		AddConversationOption(conversation, "I need Tayil's sealed orders.", "NeedSealedOrders")
	end
	
	AddConversationOption(conversation, "Goodbye.")
	StartConversation(conversation, NPC, Spawn, "You've done well, " .. GetName(Spawn) .. ". The horse sentriesss were spotted moving into the Wilderwood from the north. The Qeynosian forces are thinning.")
end

function NeedSealedOrders(NPC, Spawn)
	SummonItem(Spawn, 12121)
end

