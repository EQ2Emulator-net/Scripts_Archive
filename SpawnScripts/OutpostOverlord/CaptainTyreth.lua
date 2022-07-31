--[[
	Script Name	: SpawnScripts/OutpostOverlord/CaptainTyreth.lua
	Script Purpose	: Captain Tyreth <Freeport Militia>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	if HasCompletedQuest(Spawn, 52) then
		SeenTruePowerOfTayil(NPC, Spawn)
	elseif HasQuest(Spawn, 52) then
		if GetQuestStep(Spawn, 52) == 1 then
			TheAttackHasBegun(NPC, Spawn)
		elseif GetQuestStep(Spawn, 52) == 2 then
			BurnAnyTentsNearby(NPC, Spawn)
		elseif GetQuestStep(Spawn, 52) == 3 then
			AreYouReadyToFinish(NPC, Spawn)
		elseif GetQuestStep(Spawn, 52) == 4 then
			AdriumShouldBeAtTop(NPC, Spawn)
		elseif GetQuestStep(Spawn, 52) == 5 then
			SoAdriumIsDead(NPC, Spawn)
		elseif GetQuestStep(Spawn, 52) == 6 then
			CaveIsNorth(NPC, Spawn)
		end
	else
		NotReadyToServeMe(NPC, Spawn)
	end
end

function NotReadyToServeMe(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth017.mp3", "", "", 101696335, 1883081268, Spawn)
	AddConversationOption(conversation, "Very well.")
	StartConversation(conversation, NPC, Spawn, "You are not yet ready to serve me, adventurer. Talk with Tayil N'Velex back at the outpost if you need guidance.")
end

function TheAttackHasBegun(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth001.mp3", "", "", 3280197482, 1135652426, Spawn)
	AddConversationOption(conversation, "That's me.", "dlg_25_1")
	AddConversationOption(conversation, "I need to be leaving.")
	StartConversation(conversation, NPC, Spawn, "Hahaha! The attack has begun and the enemy shall fall! You must be " .. GetName(Spawn) .. ", here to take part in the festivities.")
end

function dlg_25_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth002.mp3", "", "", 3182304037, 930301833, Spawn)
	AddConversationOption(conversation, "What must I do?", "dlg_25_2")
	StartConversation(conversation, NPC, Spawn, "Ah, you were the one who coerced these sentries out of the area before the attack. Nicely done! It is time to complete our domination. The Militia are advancing and beginning to clear the area. It is time to strike, quickly!")
end

function dlg_25_2(NPC, Spawn)
	SetStepComplete(Spawn, 52, 1)
	
	if not HasItem(Spawn, UNKNOWN_ITEM_ID) then
		SummonItem(Spawn, UNKNOWN_ITEM_ID)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth003.mp3", "", "", 3312554119, 4055641204, Spawn)
	AddConversationOption(conversation, "I'll burn the tents of the Qeynosians.")
	StartConversation(conversation, NPC, Spawn, "Take this torch. Work your way in and set fire to two of the nearby tents. Others have begun the razing as well. If another's flame fails, make sure you finish the job. This island will soon be ours!")
end

function BurnAnyTentsNearby(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if not HasItem(Spawn, UNKNOWN_ITEM_ID) then
		AddConversationOption(conversation, "I lost my torch!", "dlg_16_1")
	end
	
	AddConversationOption(conversation, "Okay, I'll be back.")
	StartConversation(conversation, NPC, Spawn, "Burn any of their tents nearby. The island must be taken, and the time is now. There are tents here in the Valley of Discipline, and some east near Fisher Falls.")
end

function dlg_16_1(NPC, Spawn)
	SummonItem(Spawn, UNKNOWN_ITEM_ID)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth016.mp3", "", "", 2909327348, 3599554619, Spawn)
	AddConversationOption(conversation, "Okay, I'm off.")
	StartConversation(conversation, NPC, Spawn, "Very well, here is another. Now get moving!")
end

function AreYouReadyToFinish(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth005.mp3", "", "", 923930455, 1610949700, Spawn)
	AddConversationOption(conversation, "I'm ready!", "dlg_26_1")
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "The rising smoke reveals your courage, but are you ready to finish what we have started?")
end


function dlg_26_1(NPC, Spawn)
	SetStepComplete(Spawn, 52, 3)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth006.mp3", "", "", 4062545694, 2647153674, Spawn)
	AddConversationOption(conversation, "I will head to the tree house.", "dlg_26_2")
	StartConversation(conversation, NPC, Spawn, "We believe that the leader of these elves waits atop a tree house, located through the archway to the east. It is certain that the flames have been spotted, so we need to act quickly. You must travel to the top of this tree house and finish the battle.")
end

function AdriumShouldBeAtTop(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if not HasItem(Spawn, UNKNOWN_ITEM_ID) then
		AddConversationOption(conversation, "I lost my torch!", "dlg_16_1")
	end
	
	AddConversationOption(conversation, "I will vanquish this Qeynosian scum.")
	StartConversation(conversation, NPC, Spawn, "Overseer Adrium should be at the top of the tree house to the east. Slay him, then return to me.")
end

function SoAdriumIsDead(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth008.mp3", "", "", 3914904954, 1520768804, Spawn)
	AddConversationOption(conversation, "How did you know about the key?", "dlg_46_1")
	AddConversationOption(conversation, "I need to be leaving.")
	StartConversation(conversation, NPC, Spawn, "So, Adrium is dead. I take it you found the key?")
end

function dlg_46_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth009.mp3", "", "", 3808552828, 1984603379, Spawn)
	AddConversationOption(conversation, "Wait, our goal isn't to take the island?", "dlg_46_2")
	StartConversation(conversation, NPC, Spawn, "You still have much to learn " .. GetName(Spawn) .. ", but I'll let you in on a little secret. Sometimes things are best left unsaid until they reveal themselves. We have been watching your every move, and you have proven quite worthy of our true goal.")
end

function dlg_46_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth010.mp3", "", "", 4076128835, 186998807, Spawn)
	AddConversationOption(conversation, "So I've been used?", "dlg_46_3")
	StartConversation(conversation, NPC, Spawn, "Of course it is, but there is something more. You know that mine that you took the samples from? The samples were packed with precious lapis lazuli, more so than any other source near Freeport.")
end

function dlg_46_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth011.mp3", "", "", 3132321879, 2651058046, Spawn)
	AddConversationOption(conversation, "What must I do?", "dlg_46_4")
	StartConversation(conversation, NPC, Spawn, "No " .. GetName(Spawn) .. ", you've been training. Training for the final confrontation you are about to take part in. You think Tayil couldn't have just done this all herself? Prove to us you are ready to become an esteemed citizen of Freeport and share in the wealth.")
end

function dlg_46_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth012.mp3", "", "", 4033964775, 2680329984, Spawn)
	AddConversationOption(conversation, "And what about the loot you spoke of?", "dlg_46_5")
	StartConversation(conversation, NPC, Spawn, "We've been 'questioning' some captives and had scouts follow the Tunarian haulers from the mine to a cave near the back of Adrium's tree house. We believe that this cave holds the true leaders of the elves, known as the Circle of Elders.")
end

function dlg_46_5(NPC, Spawn)
	SetStepComplete(Spawn, 52, 5)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth013.mp3", "", "", 3051361848, 2529619741, Spawn)
	AddConversationOption(conversation, "Consider it done.")
	StartConversation(conversation, NPC, Spawn, "Ha ha, good form! You sound like a Freeport citizen already! The loot should be in the cave. Nothing has left the island for months, we've had it completely surrounded. Head in there and take care of the elders.")
end

function CaveIsNorth(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if not HasItem(Spawn, UNKNOWN_ITEM_ID) then
		AddConversationOption(conversation, "I lost my torch!", "dlg_16_1")
	end

	AddConversationOption(conversation, "Okay, I'm heading to the cave.")
	StartConversation(conversation, NPC, Spawn, "The cave is just north of Adrium's tree house, through some fallen boulders. Head inside and take care of the Circle of Elders.")
end



function dlg_48_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth002.mp3", "", "", 3182304037, 930301833, Spawn)
	AddConversationOption(conversation, "What must I do?", "dlg_48_2")
	StartConversation(conversation, NPC, Spawn, "Ah, you were the one who coerced these sentries out of the area before the attack. Nicely done! It is time to complete our domination. The Militia are advancing and beginning to clear the area. It is time to strike, quickly!")
end

function dlg_48_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth003.mp3", "", "", 3312554119, 4055641204, Spawn)
	AddConversationOption(conversation, "I'll burn the tents of the Qeynosians.", "dlg_48_3")
	StartConversation(conversation, NPC, Spawn, "Take this torch. Work your way in and set fire to two of the nearby tents. Others have begun the razing as well. If another's flame fails, make sure you finish the job. This island will soon be ours!")
end

function dlg_49_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth006.mp3", "", "", 4062545694, 2647153674, Spawn)
	AddConversationOption(conversation, "I will head to the tree house.", "dlg_49_2")
	StartConversation(conversation, NPC, Spawn, "We believe that the leader of these elves waits atop a tree house, located through the archway to the east. It is certain that the flames have been spotted, so we need to act quickly. You must travel to the top of this tree house and finish the battle.")
end

function dlg_50_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth009.mp3", "", "", 3808552828, 1984603379, Spawn)
	AddConversationOption(conversation, "Wait, our goal isn't to take the island?", "dlg_50_2")
	StartConversation(conversation, NPC, Spawn, "You still have much to learn" .. GetName(Spawn) .. ", but I'll let you in on a little secret. Sometimes things are best left unsaid until they reveal themselves. We have been watching your every move, and you have proven quite worthy of our true goal.")
end

function dlg_50_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth010.mp3", "", "", 4076128835, 186998807, Spawn)
	AddConversationOption(conversation, "So I've been used?", "dlg_50_3")
	StartConversation(conversation, NPC, Spawn, "Of course it is, but there is something more. You know that mine that you took the samples from? The samples were packed with precious lapis lazuli, more so than any other source near Freeport.")
end

function dlg_50_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth011.mp3", "", "", 3132321879, 2651058046, Spawn)
	AddConversationOption(conversation, "What must I do?", "dlg_50_4")
	StartConversation(conversation, NPC, Spawn, "No" .. GetName(Spawn) .. ", you've been training. Training for the final confrontation you are about to take part in. You think Tayil couldn't have just done this all herself? Prove to us you are ready to become an esteemed citizen of Freeport and share in the wealth.")
end

function dlg_50_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth012.mp3", "", "", 4033964775, 2680329984, Spawn)
	AddConversationOption(conversation, "And what about the loot you spoke of?", "dlg_50_5")
	StartConversation(conversation, NPC, Spawn, "We've been'questioning' some captives and had scouts follow the Tunarian haulers from the mine to a cave near the back of Adrium's tree house. We believe that this cave holds the true leaders of the elves, known as the Circle of Elders.")
end

function dlg_50_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth013.mp3", "", "", 3051361848, 2529619741, Spawn)
	AddConversationOption(conversation, "Consider it done.", "dlg_50_6")
	StartConversation(conversation, NPC, Spawn, "Ha ha, good form! You sound like a Freeport citizen already! The loot should be in the cave. Nothing has left the island for months, we've had it completely surrounded. Head in there and take care of the elders.")
end

function SeenTruePowerOfTayil(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_tyreth/tutorial_island02_evil_revamp/quests/citizenship/captaintyreth/captaintyreth015.mp3", "", "", 3658124696, 962201846, Spawn)
	
	if not HasItem(Spawn, UNKNOWN_ITEM_ID) then
		AddConversationOption(conversation, "I lost my torch!", "dlg_16_1")
	end
	
	AddConversationOption(conversation, "Goodbye.")
	StartConversation(conversation, NPC, Spawn, "So, you saw the true power of Tayil, eh? She is definitely not one to be reckoned with. You have done well, " .. GetName(Spawn) .. ". Enjoy your stay in Freeport.")
end

