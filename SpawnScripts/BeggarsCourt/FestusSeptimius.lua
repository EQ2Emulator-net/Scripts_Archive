--[[
	Script Name	: SpawnScripts/BeggarsCourt/FestusSeptimius.lua
	Script Purpose	: Festus Septimius 
	Script Author	: John Adams
	Script Date	: 2009.04.05
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local QUEST_1 = 180

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	ThisGlass(NPC, Spawn, conversation)
end

------------------------------------------------------------------------------------------------------------------
--								QUEST 1
------------------------------------------------------------------------------------------------------------------

function ThisGlass(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/festus_septimus/fprt_hood04/std_festus_septimius.mp3", "", "", 692395193, 2329059486, Spawn)
	
	if not HasQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_1) then
		AddConversationOption(conversation, "What would you do if I broke all of them?", "dlg_6_1")
	elseif HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2 then
		AddConversationOption(conversation, "I have a couple pounds of sand from the bulky crabs.", "YeahThatsTheStuff")
	end
	
	AddConversationOption(conversation, "I'll be careful.")
	StartConversation(conversation, NPC, Spawn, "This glass is all hand blown and custom made. If you break it, then I break something of yours, got it?")
end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/festus_septimus/fprt_hood04/quests/festusseptimus/festus_x1_initial.mp3", "", "", 2997850121, 1619430784, Spawn)
	AddConversationOption(conversation, "What did you have in mind?", "OfferQuest1")
	AddConversationOption(conversation, "No, I'm not.")
	StartConversation(conversation, NPC, Spawn, "Ha ha! Good luck, buddy. I'd like to see you try and break my sturdy glassware! Now, instead of throwing back and forth useless threats, how 'bout I hire you? I need someone with your attitude. Are you willing to do some hunting?")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function YeahThatsTheStuff(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Yeah, that's the stuff ... look at how gritty it is. Using this sand in my compound, I can make bottles that don't shatter. Who wants to be in a tavern brawl with a bottle that breaks into pieces? Yes, my bottles shall break with nice, jagged edges, perfect for gutting someone. Now, leave before you break something. I no longer need your services.")
end