--[[
	Script Name	: SpawnScripts/BigBend/Crattok.lua
	Script Purpose	: Crattok 
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
	
	if HasQuest(Spawn, OGRE_MENTOR_QUEST_3) and GetQuestStep(Spawn, OGRE_MENTOR_QUEST_3) >= 6 then
		if GetQuestStep(Spawn, OGRE_MENTOR_QUEST_3) == 6 then
			ElfSkulls(NPC, Spawn, conversation)
		elseif GetQuestStep(Spawn, OGRE_MENTOR_QUEST_3) == 7 or GetQuestStep(Spawn, OGRE_MENTOR_QUEST_3) == 8 then
			YouBackForPowder(NPC, Spawn, conversation)
		else
			NeedMore(NPC, Spawn, conversation)
		end
	else
		YouGiveHuntingWork(NPC, Spawn, conversation)
	end
end

function YouGiveHuntingWork(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/crattok/fprt_hood01/newbie_path_ogre/crattok004.mp3", "", "", 816036049, 1788596289, Spawn)
	AddConversationOption(conversation, "I hunt.  No need to hire you.", "dlg_21_1")
	StartConversation(conversation, NPC, Spawn, "You give hunting work for Crattok?")
end

--------------------------------------------------------------------------------------------------------------------------------
--											OGRE_MENTOR_QUEST_3
--------------------------------------------------------------------------------------------------------------------------------

function ElfSkulls(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/crattok/fprt_hood01/newbie_path_ogre/crattok001.mp3", "", "", 3953050857, 4128026214, Spawn)
	AddConversationOption(conversation, "No.  I have been sent to get incense from you. ", "dlg_49_1")
	StartConversation(conversation, NPC, Spawn, "You want elf skull?  It still have delicious ears! ")
end

function dlg_49_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/crattok/fprt_hood01/newbie_path_ogre/crattok002.mp3", "", "", 2315939514, 3958347700, Spawn)
	AddConversationOption(conversation, "Since now.", "dlg_49_2")
	StartConversation(conversation, NPC, Spawn, "Cence what? ")
end

function dlg_49_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/crattok/fprt_hood01/newbie_path_ogre/crattok005.mp3", "", "", 3557141822, 3698658818, Spawn)
	AddConversationOption(conversation, "Smelly powder, with smoke.", "dlg_49_3")
	StartConversation(conversation, NPC, Spawn, "... ")
end

function dlg_49_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/crattok/fprt_hood01/newbie_path_ogre/crattok006.mp3", "", "", 1271671749, 4236549240, Spawn)
	AddConversationOption(conversation, "No.  Kroota did not mention paying for it.", "dlg_49_4")
	AddConversationOption(conversation, "Yes, but Kroota did not mention paying for it.", "dlg_49_4")
	StartConversation(conversation, NPC, Spawn, "Ah!  Crattok have that!  You gots money for it? ")
end

function dlg_49_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/crattok/fprt_hood01/newbie_path_ogre/crattok007.mp3", "", "no", 1896222771, 4148742307, Spawn)
	AddConversationOption(conversation, "How much for the smoke powder?", "dlg_50_5")
	StartConversation(conversation, NPC, Spawn, "I good business.  You no pay, you no get smoke!")
end

function dlg_50_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/crattok/fprt_hood01/newbie_path_ogre/crattok008.mp3", "", "", 963455611, 3752670021, Spawn)
	AddConversationOption(conversation, "Fine.", "dlg_50_6")
	AddConversationOption(conversation, "I'll be back once I speak to Kroota.", "dlg_50_6")
	StartConversation(conversation, NPC, Spawn, "One silver.")
end

function dlg_50_6(NPC, Spawn)
	SetStepComplete(Spawn, OGRE_MENTOR_QUEST_3, 6)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/crattok/fprt_hood01/newbie_path_ogre/crattok013.mp3", "", "cheer", 688670611, 2473738773, Spawn)
	AddConversationOption(conversation, "Do what you have to.")
	StartConversation(conversation, NPC, Spawn, "Hurry!  I's may sell powder to othersez.")
end

function YouBackForPowder(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/crattok/fprt_hood01/newbie_path_ogre/crattok011.mp3", "", "", 3635361774, 3095148594, Spawn)
	
	if GetQuestStep(Spawn, OGRE_MENTOR_QUEST_3) == 7 then
		AddConversationOption(conversation, "No. I have to go speak with Kroota, first.")
	else
		AddConversationOption(conversation, "I have something worth more!  I brought you ten fresh rats for the smoke powder. ", "dlg_52_1")
	end
	
	StartConversation(conversation, NPC, Spawn, "You back for powder?  You have four silver? ")
end

function dlg_52_1(NPC, Spawn)
	SetStepComplete(Spawn, OGRE_MENTOR_QUEST_3, 8)

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/crattok/fprt_hood01/newbie_path_ogre/crattok012.mp3", "", "", 1507687832, 2571146708, Spawn)
	AddConversationOption(conversation, "Nice doing business with you.")
	StartConversation(conversation, NPC, Spawn, "Deal!  I's need'n good food.")
end

function NeedMore(NPC, Spawn, conversation)
	AddConversationOption(conversation, "No. I am going now.")
	StartConversation(conversation, NPC, Spawn, "You need more from Crattok?")
end