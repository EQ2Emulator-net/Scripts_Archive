--[[
	Script Name	: SpawnScripts/BeggarsCourt/AnreanVelvinna.lua
	Script Purpose	: Anrean Velvinna 
	Script Author	: John Adams
	Script Date	: 2009.04.05
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/anrean_velvinna/fprt_hood04/std_anrean_velvinna.mp3", "", "", 2790550041, 3876548447, Spawn)
	AddConversationOption(conversation, "Sure you will.", "dlg_1_1")
	AddConversationOption(conversation, "I recovered your stolen property.")
	StartConversation(conversation, NPC, Spawn, "You can almost see the Temple of War from up here. Some day I will walk through those halls.")
end

--[[
function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/anrean_velvinna/fprt_hood04/quests/anreanvelvinna/stolenchest_anreanvelvinna_x1_initial.mp3", "", "", 3706216301, 2084378968, Spawn)
	AddConversationOption(conversation, "I was more than willing to slay the Darkblades on your behalf.")
	AddConversationOption(conversation, "I've recovered your property.  My timing should not be in question.", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "Well, it's about time someone recovered it!  I was beginning to think that no one would face the Darkblades for me.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/anrean_velvinna/fprt_hood04/quests/anreanvelvinna/stolenchest_anreanvelvinna_x1_initial1.mp3", "", "", 624254019, 390284454, Spawn)
	AddConversationOption(conversation, "Thanks. Good bye.")
	StartConversation(conversation, NPC, Spawn, "You took your sweet time getting back to me! But I see you didn't damage it too badly, so I suppose you deserve a reward. It's more than adequate compensation; I assure you. Good day.")
end
--]]