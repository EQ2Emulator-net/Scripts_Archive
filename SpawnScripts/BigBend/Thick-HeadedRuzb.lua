--[[
	Script Name	: SpawnScripts/BigBend/Thick-HeadedRuzb.lua
	Script Purpose	: Thick-Headed Ruzb 
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

TROLL_MENTOR_QUEST_1 = 170
TROLL_MENTOR_QUEST_4 = 173

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, TROLL_MENTOR_QUEST_1) then
		if GetQuestStep(Spawn, TROLL_MENTOR_QUEST_1) == 1 then
			Wut(NPC, Spawn, conversation)
		elseif GetQuestStep(Spawn, TROLL_MENTOR_QUEST_1) == 3 then
			YouzBack(NPC, Spawn, conversation)
		else
			PlayFlavor(NPC, "", "Wut? NO BOTHER! Ruzb eat now!", "", 1689589577, 4560189, Spawn)
		end
	elseif HasQuest(Spawn, TROLL_MENTOR_QUEST_4) then
		if GetQuestStep(Spawn, TROLL_MENTOR_QUEST_4) then
			GnomieFleshNice(NPC, Spawn, conversation)
		end
	else
		PlayFlavor(NPC, "", "Wut? NO BOTHER! Ruzb eat now!", "", 1689589577, 4560189, Spawn)
	end
end

--------------------------------------------------------------------------------------------------------------------
--									TROLL_MENTOR_QUEST_1
--------------------------------------------------------------------------------------------------------------------

function Wut(NPC, Spawn, conversation)
	PlayFlavor(NPC, "thick-headed_ruzb/fprt_hood1/thick_headed_ruzb001.mp3", "", "", 2457410040, 155354042, Spawn)
	AddConversationOption(conversation, "Bad Ruzb! Not eat gnome!", "dlg_7_1")
	AddConversationOption(conversation, "You shouldn't be eating that gnome.", "dlg_7_1")
	StartConversation(conversation, NPC, Spawn, "Wut? You want gnomesteak too? NO! Get yer own! This'n's mine!")
end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thick-headed_ruzb/fprt_hood1/thick_headed_ruzb002.mp3", "", "", 3199427179, 3674341166, Spawn)
	AddConversationOption(conversation, "No! BAD! I get you sometin' ta eat instead!", "dlg_8_2")
	AddConversationOption(conversation, "You know, if you eat the gnomes, the guards will come. And then you'll get no more gnome, ever again. I'll bring you something proper to chew on.", "dlg_8_2")
	StartConversation(conversation, NPC, Spawn, "Wut? Why? Gnome taste sooooooooo gud! I wuves me some gnomesteak!")
end

function dlg_8_2(NPC, Spawn)
	SetStepComplete(Spawn, TROLL_MENTOR_QUEST_1, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thick-headed_ruzb/fprt_hood1/thick_headed_ruzb003.mp3", "", "", 3847692344, 2888894649, Spawn)
	AddConversationOption(conversation, "I be right back. You stay here!")
	AddConversationOption(conversation, "You'll enjoy this. Quite a special treat. Trust me.")
	StartConversation(conversation, NPC, Spawn, "Ruzb not so shure... but... ok... me trust.")
end

function YouzBack(NPC, Spawn, conversation)
	PlayFlavor(NPC, "thick-headed_ruzb/fprt_hood1/thick_headed_ruzb004.mp3", "", "", 1019593479, 1907245, Spawn)
	AddConversationOption(conversation, "Yah! Gud dorf chunks! Fresh from Skagga!", "dlg_9_1")
	AddConversationOption(conversation, "I brought you some of Skagga's best dwarf chunks.", "dlg_9_1")
	StartConversation(conversation, NPC, Spawn, "Youz back! Wut you bring Ruzb? Something gud? Me hopes!")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thick-headed_ruzb/fprt_hood1/thick_headed_ruzb005.mp3", "", "", 1199397367, 3596813361, Spawn)
	AddConversationOption(conversation, "Better, BETTER! Dis three hunnerd prozent reel dorf!")
	AddConversationOption(conversation, "Oh, trust me Ruzb, you've never had anything like this before...", "dlg_9_2")
	StartConversation(conversation, NPC, Spawn, "Huh... not so shure... taste like gnome?")
end

function dlg_10_2(NPC, Spawn)
	SetStepComplete(Spawn, TROLL_MENTOR_QUEST_1, 3)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thick-headed_ruzb/fprt_hood1/thick_headed_ruzb006.mp3", "", "", 2791874278, 2328425868, Spawn)
	AddConversationOption(conversation, "Munch, munch, munch! Eats up!")
	AddConversationOption(conversation, "Enjoy!")
	StartConversation(conversation, NPC, Spawn, "Ok, Ruzb try eatin' da dorfie chunks! Fank 'ou!")
end

--------------------------------------------------------------------------------------------------------------------
--									TROLL_MENTOR_QUEST_4
--------------------------------------------------------------------------------------------------------------------

function GnomieFleshNice(NPC, Spawn, conversation)
	SetStepComplete(Spawn, TROLL_MENTOR_QUEST_4, 1)
	
	PlayFlavor(NPC, "thick-headed_ruzb/fprt_hood1/thick_headed_ruzb007.mp3", "", "", 4123176323, 2225348683, Spawn)
	AddConversationOption(conversation, "BAD, BAD, BAD! Me put youz down! NOT EAT DA GNOMES!")
	AddConversationOption(conversation, "I'm sorry Ruzb, but this is the end of the line - we just can't have you eating the gnomes.")
	StartConversation(conversation, NPC, Spawn, "Da gnomie flesh, is nice n' fresh, so super gud! Meez only thot, to eat a lot, so super gud!")
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "Wnkc JU RUMQXRe Uiqh nzh igiq", "", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "Wut? NO BOTHER! Ruzb eat now!", "", 1689589577, 4560189, Spawn)
--]]