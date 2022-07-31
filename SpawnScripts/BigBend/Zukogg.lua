--[[
	Script Name	: SpawnScripts/BigBend/Zukogg.lua
	Script Purpose	: Zukogg 
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

OGRE_MENTOR_QUEST_3 = 167

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, OGRE_MENTOR_QUEST_3) then
		if GetQuestStep(Spawn, OGRE_MENTOR_QUEST_3) == 1 then
			WhatsYaWantIn(NPC, Spawn, conversation)
		elseif GetQuestStep(Spawn, OGRE_MENTOR_QUEST_3) == 2 then
			GetDaSkinsYet(NPC, Spawn, conversation)
		else
			DidKrootaSendYou(NPC, Spawn, conversation)
		end
	else
		WhatDoYouNeed(NPC, Spawn, conversation)
	end
end

function WhatDoYouNeed(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/zukogg/fprt_hood01/newbie_path_ogre/zukogg006.mp3", "", "", 1912937629, 3336545883, Spawn)
	AddConversationOption(conversation, "Nothin'.  I will go now.")
	StartConversation(conversation, NPC, Spawn, "I am busy.  What do you need?")
end

----------------------------------------------------------------------------------------------------------------------------------
--										OGRE_MENTOR_QUEST_3
----------------------------------------------------------------------------------------------------------------------------------

function WhatsYaWantIn(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/zukogg/fprt_hood01/newbie_path_ogre/zukogg001.mp3", "", "", 410122769, 540260714, Spawn)
	AddConversationOption(conversation, "Kroota says you can help me get some flesh. ", "dlg_45_1")
	StartConversation(conversation, NPC, Spawn, "What's ya want'n? ")
end

function dlg_45_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/zukogg/fprt_hood01/newbie_path_ogre/zukogg002.mp3", "", "", 2377084441, 3069496417, Spawn)
	AddConversationOption(conversation, "I need flesh to be used in a ceremony to bring glory to Rallos. ", "dlg_45_2")
	StartConversation(conversation, NPC, Spawn, "I gots many skins.  You want armor skins?  Tent skins?  Bed skins? ")
end

function dlg_45_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/zukogg/fprt_hood01/newbie_path_ogre/zukogg004.mp3", "", "", 171022403, 2413094131, Spawn)
	AddConversationOption(conversation, "Do you have such skins?", "dlg_45_3")
	StartConversation(conversation, NPC, Spawn, "Shhhhh.  You don't want others hearing of this! The flesh ya seek is ta symbolize the weak, inferior creatures who's fate is ta be defeated.")
end

function dlg_45_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/zukogg/fprt_hood01/newbie_path_ogre/zukogg009.mp3", "", "", 3382292307, 1636661744, Spawn)
	AddConversationOption(conversation, "What should I do?", "dlg_45_4")
	StartConversation(conversation, NPC, Spawn, "Rallos Zek is deserving of da most fresh skins.  My stock of skins is too old ta be worthy.")
end

function dlg_45_4(NPC, Spawn)
	SetStepComplete(Spawn, OGRE_MENTOR_QUEST_3, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/zukogg/fprt_hood01/newbie_path_ogre/zukogg003.mp3", "", "point", 8857194, 3258354974, Spawn)
	AddConversationOption(conversation, "Will do.")
	StartConversation(conversation, NPC, Spawn, "Darby, da troll tailor has hunters bring in fresh kills.  Go grab a kill of something sentient from one of the many barrels around him.")
end

function GetDaSkinsYet(NPC, Spawn, conversation)
	AddConversationOption(conversation, "No. Where was I to find them?", "DarbyDaTroll")
	StartConversation(conversation, NPC, Spawn, "You get da skins for Kroota yet?")
end

function DarbyDaTroll(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Understood. Thank you!")
	StartConversation(conversation, NPC, Spawn, "Darby, da troll tailor is to my right. Go grab a kill of something sentient from one of the barrels around him.")
end

function DidKrootaSendYou(NPC, Spawn, conversation)
	AddConversationOption(conversation, "No. Just walking by.")
	StartConversation(conversation, NPC, Spawn, "Did Kroota send you to me for more items?")
end