--[[
	Script Name	: SpawnScripts/BigBend/Barch.lua
	Script Purpose	: Barch 
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
	
	if HasQuest(Spawn, OGRE_MENTOR_QUEST_3) and GetQuestStep(Spawn, OGRE_MENTOR_QUEST_3) >= 3 then
		if GetQuestStep(Spawn, OGRE_MENTOR_QUEST_3) == 3 then
			YouLookinForSomethin(NPC, Spawn, conversation)
		elseif GetQuestStep(Spawn, OGRE_MENTOR_QUEST_3) == 4 then
			CannotGiveYouBlood(NPC, Spawn, conversation)
		elseif GetQuestStep(Spawn, OGRE_MENTOR_QUEST_3) == 5 then
			IsThatAnElvishVase(NPC, Spawn, conversation)
		else
			YouGiveThatBloodToKroota(NPC, Spawn, conversation)
		end
	else
		BarchStrongAndMight(NPC, Spawn, conversation)
	end
end

function BarchStrongAndMight(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/barch/fprt_hood01/newbie_path_ogre/barch004.mp3", "", "", 3256863943, 3547658719, Spawn)
	AddConversationOption(conversation, "I love to barsh!")
	StartConversation(conversation, NPC, Spawn, "Barch strong and mighty hunter!  What about you?")
end

----------------------------------------------------------------------------------------------------------------------------
--								OGRE_MENTOR_QUEST_3
----------------------------------------------------------------------------------------------------------------------------

function YouLookinForSomethin(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/barch/fprt_hood01/newbie_path_ogre/barch001.mp3", "", "", 1301534840, 788449941, Spawn)
	AddConversationOption(conversation, "Yes.  I was sent to get blood worthy to be used in a tribute for Rallos Zek.", "dlg_46_1")
	StartConversation(conversation, NPC, Spawn, "You lookin' for somethin'? ")
end

function dlg_46_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/barch/fprt_hood01/newbie_path_ogre/barch002.mp3", "", "", 3421238780, 2762015944, Spawn)
	AddConversationOption(conversation, "Kroota has sent me to get blood of the enemy.", "dlg_46_2")
	StartConversation(conversation, NPC, Spawn, "Any blood spilled glorifies Rallos.  Bones break and creatures fall, all to the glory of our warlord!  What blood do you seek?")
end

function dlg_46_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/barch/fprt_hood01/newbie_path_ogre/barch005.mp3", "", "", 2609357254, 3989114571, Spawn)
	AddConversationOption(conversation, "Where can I get an elven vase?", "dlg_46_3")
	StartConversation(conversation, NPC, Spawn, "You speak of a holy ceremony.  Fume and fire.  For that you need blood of an elf, in one of their own vases.  I can get the blood for you, if'n you get me the vase.")
end

function dlg_46_3(NPC, Spawn)
	SetStepComplete(Spawn, OGRE_MENTOR_QUEST_3, 3)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/barch/fprt_hood01/newbie_path_ogre/barch006.mp3", "", "", 1996512163, 3082047898, Spawn)
	AddConversationOption(conversation, "Thanks.  I'll see if I can find one.")
	StartConversation(conversation, NPC, Spawn, "I know many items were taken from some Qeynosian prisoners.  They are being held in one of the Northern most rooms in the back alley.")
end

function CannotGiveYouBlood(NPC, Spawn, conversation)
	AddConversationOption(conversation, "Understood. I will be back with the vase.")
	StartConversation(conversation, NPC, Spawn, "I cannot give you the blood without the vase.")
end

function IsThatAnElvishVase(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/barch/fprt_hood01/newbie_path_ogre/barch008.mp3", "", "", 3451969542, 3225762730, Spawn)
	AddConversationOption(conversation, "I think so.  The writing is swirly and it has trees on it.", "dlg_48_1")
	StartConversation(conversation, NPC, Spawn, "Is that an elvish vase?")
end

function dlg_48_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/barch/fprt_hood01/newbie_path_ogre/barch009.mp3", "", "", 33593191, 3855299677, Spawn)
	AddConversationOption(conversation, "Good.", "dlg_48_2")
	StartConversation(conversation, NPC, Spawn, "Heh.  That sounds elvish. ")
end

function dlg_48_2(NPC, Spawn)
	SetStepComplete(Spawn, OGRE_MENTOR_QUEST_3, 5)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/barch/fprt_hood01/newbie_path_ogre/barch010.mp3", "", "", 3797099812, 2066937388, Spawn)
	AddConversationOption(conversation, "And the victors of war!")
	StartConversation(conversation, NPC, Spawn, "I have filled it with the blood you need for the ceremony. Glory to Rallos!")
end

function YouGiveThatBloodToKroota(NPC, Spawn, conversation)
	AddConversationOption(conversation, "I will, when I get all the items.")
	StartConversation(conversation, NPC, Spawn, "You give that blood to Kroota.")
end