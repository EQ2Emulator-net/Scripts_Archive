--[[
	Script Name	: SpawnScripts/BigBend/Somdoq.lua
	Script Purpose	: Somdoq 
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

OGRE_MENTOR_QUEST_4 = 168

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, OGRE_MENTOR_QUEST_4) and GetQuestStep(Spawn, OGRE_MENTOR_QUEST_4) >= 2 then
		if GetQuestStep(Spawn, OGRE_MENTOR_QUEST_4) == 2 then
			WhyDisturb(NPC, Spawn, conversation)
		elseif GetQuestStep(Spawn, OGRE_MENTOR_QUEST_4) >= 3 and GetQuestStep(Spawn, OGRE_MENTOR_QUEST_4) <= 5 then
			ExamineTheItems(NPC, Spawn, conversation)
		elseif GetQuestStep(Spawn, OGRE_MENTOR_QUEST_4) == 6 then
			Ceremony(NPC, Spawn, conversation)
		else
			ProvidedMuch(NPC, Spawn, conversation)
		end
	else
		Begone(NPC, Spawn, conversation)
	end
end

function Begone(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/somdoq/fprt_hood01/newbie_path_ogre/somdoq009.mp3", "", "", 1003816206, 3011545312, Spawn)
	AddConversationOption(conversation, "I was just leaving.")
	StartConversation(conversation, NPC, Spawn, "This does not interest you!  Begone.")
end

-----------------------------------------------------------------------------------------------------------------------------------------------
--										OGRE_MENTOR_QUEST_4
-----------------------------------------------------------------------------------------------------------------------------------------------

function WhyDisturb(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/somdoq/fprt_hood01/newbie_path_ogre/somdoq001.mp3", "", "", 4145837033, 3275868519, Spawn)
	AddConversationOption(conversation, "Kroota sent me.", "dlg_57_1")
	StartConversation(conversation, NPC, Spawn, "Why have you disturbed us?")
end

function dlg_57_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/somdoq/fprt_hood01/newbie_path_ogre/somdoq002.mp3", "", "", 4085903245, 1876466417, Spawn)
	AddConversationOption(conversation, "Yes.", "dlg_57_2")
	StartConversation(conversation, NPC, Spawn, "Then you have the fume and fire ceremonial items?")
end

function dlg_57_2(NPC, Spawn)
	SetStepComplete(Spawn, OGRE_MENTOR_QUEST_4, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/somdoq/fprt_hood01/newbie_path_ogre/somdoq003.mp3", "", "", 2087963690, 2077453026, Spawn)
	AddConversationOption(conversation, "I understand.")
	StartConversation(conversation, NPC, Spawn, "Good.  Then we will get the tribute underway.  Burn the incense.  Rip the flesh, and add it to the bones on the ground.  Smear the blood on your face, and smash the vase on the ground.  Tell me when you have done that.")
end

function ExamineTheItems(NPC, Spawn, conversation)
	-- Temporary
	SetStepComplete(Spawn, OGRE_MENTOR_QUEST_4, 3)
	SetStepComplete(Spawn, OGRE_MENTOR_QUEST_4, 4)
	SetStepComplete(Spawn, OGRE_MENTOR_QUEST_4, 5)
	RemoveItem(Spawn, 3830)
	RemoveItem(Spawn, 7105)
	RemoveItem(Spawn, 11154)
	-- Temporary
	
	AddConversationOption(conversation, "I will")
	StartConversation(conversation, NPC, Spawn, "Examine the ceremonial items in your inventory. Burn the incense. Smear the blood on your face, and smash the vase on the ground. Rip the flesh, and add it to the bones on the ground. Tell me when you have done that.")
end

function Ceremony(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/somdoq/fprt_hood01/newbie_path_ogre/somdoq004.mp3", "", "", 2873790137, 2496264354, Spawn)
	AddConversationOption(conversation, "[listen to ceremony]", "LochSpeak1")
	StartConversation(conversation, NPC, Spawn, "Born of conflict we have come, and thrive in conflict we continue.  Mighty Rallos Zek, the victor of all wars, we survive to honor you with the defeat of the weak and inferior.  Wars in your name shake the very plane of this existence.")
end

function LochSpeak1(NPC, Spawn)
	Lochugh = GetSpawn(Spawn, 1340043)
	
	FaceTarget(Lochugh, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(Lochugh, "voiceover/english/tutorial_revamp/lochugh/fprt_hood01/newbie_path_ogre/lochugh001.mp3", "", "bow", 3572874413, 2954383797, Spawn)
	AddConversationOption(conversation, "[listen to ceremony]", "SomdoqSpeak2")
	StartConversation(conversation, Lochugh, Spawn, "Your ogre children are single-minded in our desire for conquest in your name!")
end

function LochSpeak2(NPC, Spawn)
	Lochugh = GetSpawn(Spawn, 1340043)
	
	FaceTarget(Lochugh, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(Lochugh, "voiceover/english/tutorial_revamp/lochugh/fprt_hood01/newbie_path_ogre/lochugh002.mp3", "", "", 1586198129, 603436490, Spawn)
	AddConversationOption(conversation, "[listen to ceremony]", "SomdoqSpeak3")
	StartConversation(conversation, Lochugh, Spawn, "May the blood of the enemy that is spilt upon on the ground, delight you.")
end

function LochSpeak3(NPC, Spawn)
	Lochugh = GetSpawn(Spawn, 1340043)
	
	FaceTarget(Lochugh, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(Lochugh, "voiceover/english/tutorial_revamp/lochugh/fprt_hood01/newbie_path_ogre/lochugh003.mp3", "", "", 3053147849, 1609976380, Spawn)
	AddConversationOption(conversation, "[listen to ceremony]", "SomdoqSpeak4")
	StartConversation(conversation, Lochugh, Spawn, "May the torn flesh of those who are inferior be burned.  Their smoldering ashes rising in the sky as the savory smell of burning flesh fills your lungs.")
end

function ProvidedMuch(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, OGRE_MENTOR_QUEST_4) == 6 then
		SetStepComplete(Spawn, OGRE_MENTOR_QUEST_4, 6)
	end
	
	if conversation == nil then
		FaceTarget(NPC, Spawn)
		conversation = CreateConversation()
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/somdoq/fprt_hood01/newbie_path_ogre/somdoq008.mp3", "", "", 2581222973, 154740872, Spawn)
	AddConversationOption(conversation, "I will.")
	StartConversation(conversation, NPC, Spawn, "You provided much for this ceremony.  Return to Kroota, and tell him that all went well.")
end
