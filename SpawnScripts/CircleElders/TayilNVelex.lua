--[[
	Script Name	: SpawnScripts/CircleElders/TayilNVelex.lua
	Script Purpose	: Tayil N'Velex 
	Script Author	: John Adams
	Script Date	: 2008.10.02
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	--MoveToLocation(NPC, 6.70, 0, 1.45)
	Kayl = GetSpawn(NPC, 3480005)
	SpawnSet(Kayl, "attackable", 1)
	SpawnSet(Kayl, "show_level", 1)
	
	MovementLoopAddLocation(NPC, 6.70, 0, 1.45, 2, 0)
	
	AddTimer(NPC, 1000, "ConversationStart")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	if HasQuest(Spawn, 52) and GetQuestStep(Spawn, 52) == 6 then
		WellDone(NPC, Spawn)
	end

end

function ConversationStart(NPC)
	--PlayFlavor(NPC, "", "I knew we'd find you, Kayl. I see you've been doing well for yourself. Too bad your treasures are about to become mine!", "", 1689589577, 4560189)
	Say(NPC, "I knew we'd find you, Kayl. I see you've been doing well for yourself. Too bad your treasures are about to become mine!")
	AddTimer(NPC, 5000, "Conversation2")
end

function Conversation2(NPC)
	Kayl = GetSpawn(NPC, 3480005)
	Say(Kayl, "T... Tayil! How did you find me?")
	AddTimer(NPC, 3000, "Conversation3")
end

function Conversation3(NPC)
	Say(NPC, "That's not important, Qeynosian. What is important is that your days upon Norrath are at an end. Prepare to die!")
	AddTimer(NPC, 5000, "Conversation4")
	Despawn(NPC, 300000)
end

function Conversation4(NPC)
	Kayl = GetSpawn(NPC, 3480005)
	Say(Kayl, "Noooooooo!")
	KillSpawn(Kayl, NPC, 1)
end

function WellDone(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_epic01/tayilnvelex000.mp3", "", "", 1803294657, 2493064533, Spawn)
	AddConversationOption(conversation, "So is the battle over?", "dlg_0_1")
	AddConversationOption(conversation, "Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Well done, " .. GetName(Spawn) .. ". That fool Kayl had no idea what was coming! The Tunarians are finished on this island.")
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	SetStepComplete(Spawn, 52, 6)

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_epic01/tayilnvelex001.mp3", "", "", 3707228115, 3912099658, Spawn)
	AddConversationOption(conversation, "Thank you, Tayil.")
	StartConversation(conversation, NPC, Spawn, "Yes, our efforts have been a success. The island is ours, and so is this fine assortment of valuables! The Overlord will hear of your bravery, " .. GetName(Spawn) .. ". As promised, here is a reward that will  prove useful in your future adventures.")
end
