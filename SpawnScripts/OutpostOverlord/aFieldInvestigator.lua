--[[
	Script Name	: SpawnScripts/OutpostOverlord/aFieldInvestigator.lua
	Script Purpose	: a Field Investigator 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	ProvidesQuest(NPC, 54)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	if HasCompletedQuest(Spawn, 54) then
		Default(NPC, Spawn)
	elseif HasQuest(Spawn, 54) then
		WhatHaveYouDiscovered(NPC, Spawn)
	else
		FireBurnsHot(NPC, Spawn)
	end
end

function InRange(NPC, Spawn)
	if HasCompletedQuest(Spawn, 53) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_field_investigator/tutorial_island02_evil_revamp/quest/quest_zherran_tzizzink_callout_c03cb9c5.mp3", "You! I saw you put something into the fire! Come here!", "beckon", 1912960740, 848089373, Spawn)
	end
end

function FireBurnsHot(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_field_investigator/tutorial_island02_evil_revamp/quests/quest_zherran_tzizzink/zherran_tzizzink001.mp3", "", "", 365850280, 1133468256, Spawn)
	
	if HasCompletedQuest(Spawn, 53) then
		AddConversationOption(conversation, "What are you talking about?", "dlg_35_1")
	end
	
	AddConversationOption(conversation, "I don't know what you're talking about.")
	StartConversation(conversation, NPC, Spawn, "The fire burns hot, hiding all tracesss of what's inssside.")
end

function dlg_35_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_field_investigator/tutorial_island02_evil_revamp/quests/quest_zherran_tzizzink/zherran_tzizzink002.mp3", "", "", 3815675891, 3542744928, Spawn)
	AddConversationOption(conversation, "What of it?", "dlg_35_2")
	StartConversation(conversation, NPC, Spawn, "Just curious.  I know you've been ssssseen ssspeaking with Charlesss Arker lately.")
end

function dlg_35_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_field_investigator/tutorial_island02_evil_revamp/quests/quest_zherran_tzizzink/zherran_tzizzink003.mp3", "", "", 2101302763, 2956830664, Spawn)
	AddConversationOption(conversation, "That depends.", "dlg_35_3")
	StartConversation(conversation, NPC, Spawn, "Defiant, aren't we? Well, " .. GetName(Spawn) .. " -- don't look so surprised, of course I know your name -- there are those who would like more information about Mr. Arker's activites. I am Field Investigator Zherran Tzizzink. Can you help me?")
end

function dlg_35_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_field_investigator/tutorial_island02_evil_revamp/quests/quest_zherran_tzizzink/zherran_tzizzink004.mp3", "", "", 2748771750, 3991197872, Spawn)
	AddConversationOption(conversation, "I'll ssee...see what I can do.", "OfferQuest1")
	AddConversationOption(conversation, "I'm not interested.")
	StartConversation(conversation, NPC, Spawn, "This task is not too difficult.  His fiancee's family would like ssome information.  Casually chat up some of the other Freeportians around here to see if any of them say anything.  Complete this task and you will be rewarded.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, 54)
end

function WhatHaveYouDiscovered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_field_investigator/tutorial_island02_evil_revamp/quests/quest_zherran_tzizzink/zherran_tzizzink005.mp3", "", "", 2545265170, 1627911122, Spawn)
	
	if GetQuestStep(Spawn, 54) == 9 then
		AddConversationOption(conversation, "Good news: no one has even heard of Charles Arker.", "dlg_47_1")
	end
	
	AddConversationOption(conversation, "Not much.")
	StartConversation(conversation, NPC, Spawn, "What have you discovered?")
end

function dlg_47_1(NPC, Spawn)
	SetStepComplete(Spawn, 54, 9)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_field_investigator/tutorial_island02_evil_revamp/quests/quest_zherran_tzizzink/zherran_tzizzink006.mp3", "", "", 1284325078, 382481848, Spawn)
	AddConversationOption(conversation, "Couldn't happen to a nicer guy.")
	StartConversation(conversation, NPC, Spawn, "Interesting.  Charles had been sending word that he is very popular and renowned for his exploits.  Well, I suppose a little bragging beats a little infidelity.  The marriage will proceed as planned.")
end

function Default(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1027.mp3", "", "", 0, 0, Spawn)
end