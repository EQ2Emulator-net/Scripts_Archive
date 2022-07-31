--[[
	Script Name	: SpawnScripts/BeggarsCourt/KaseoVolcatius.lua
	Script Purpose	: Kaseo Volcatius <Freeport Militia>
	Script Author	: John Adams
	Script Date	: 2009.04.05
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local HUMAN_MENTOR_QUEST_3 = 177

function spawn(NPC)
	SetMount(NPC, 6831)
	SetMountColor(NPC, 1, 1, 1, 255, 1, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "hello", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "hello", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "hello", 0, 0, Spawn)
	end
	
	if HasQuest(Spawn, HUMAN_MENTOR_QUEST_3) and GetQuestStep(Spawn, HUMAN_MENTOR_QUEST_3) == 2 then
		Greetings(NPC, Spawn, conversation)
	else
		PlayFlavor(NPC, "", "You lack the importance to address me. Away with you.", "no", 1689589577, 4560189, Spawn)
	end
end

----------------------------------------------------------------------------------------------------------
--							HUMAN MENTOR QUEST 3
----------------------------------------------------------------------------------------------------------

function Greetings(NPC, Spawn, conversation)
	AddConversationOption(conversation, "Greetings, sir. I stumbled upon a note that may be of interest to you.", "dlg_22_1")
	AddConversationOption(conversation, "My apologies. I must be leaving.")
	StartConversation(conversation, NPC, Spawn, "Greetings, citizen. You are either very brave or very foolish to approach a captain of the Freeport Militia without being ordered to do so. Still, I can see determination in your eyes. What is it you want?")
end

function dlg_22_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "It contains false information about the Overlord that attempts to discredit his great name.", "dlg_22_2")
	StartConversation(conversation, NPC, Spawn, "Why do you waste my time on such trivial matters? What did this note say? Be quick about it!")
end

function dlg_22_2(NPC, Spawn)
	SetStepComplete(Spawn, HUMAN_MENTOR_QUEST_3, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "A dishonorable man tried to sell them to me. I slew him for his crimes, sir.", "dlg_22_3")
	StartConversation(conversation, NPC, Spawn, "What? Give me those documents right away! Tell me right now how you obtained them!")
end

function dlg_22_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you sir, but that's really not necessary.", "dlg_22_4")
	StartConversation(conversation, NPC, Spawn, "Well done, citizen. It is good to meet a brave individual who takes pride in our city. I wish more of our citizens had your traits. I will be sure to use your story as an example to inspire the rabble that live in the other districts.")
end

function dlg_22_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Great...")
	StartConversation(conversation, NPC, Spawn, "Do not be so modest. This entire district shall hear of your bravery. Be well, citizen.")
end