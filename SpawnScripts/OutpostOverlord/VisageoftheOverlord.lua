--[[
	Script Name	: SpawnScripts/OutpostOverlord/VisageoftheOverlord.lua
	Script Purpose	: Visage of the Overlord 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)

	conversation = Conversation()

-- JA: These are on some timer, the statue begins to speak and makes the speech. For testing, I have made them dialog options.

	AddConversationOption(conversation, "Speech: Part 1", "speech1")
	AddConversationOption(conversation, "Speech: Part 2", "speech2")
	AddConversationOption(conversation, "Speech: Part 3", "speech3")
	AddConversationOption(conversation, "Speech: Part 4", "speech4")
	AddConversationOption(conversation, "Speech: Part 5", "speech5")
	AddConversationOption(conversation, "Speech: Part 6", "speech6")
	AddConversationOption(conversation, "Speech: Part 7", "speech7")
	AddConversationOption(conversation, "Speech: Part 8", "speech8")
	AddConversationOption(conversation, "Speech: Part 9", "speech9")
	StartConversation(conversation, NPC, Spawn, "Push my buttons to make me talk.")
end

function speech1(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/lucan_isle_speech_1.mp3", "...", "", 4115014723, 2723692261, Spawn)
end

function speech2(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/lucan_isle_speech_2.mp3", "...", "", 4115014723, 2723692261, Spawn)
end

function speech3(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/lucan_isle_speech_3.mp3", "...", "", 4115014723, 2723692261, Spawn)
end

function speech4(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/lucan_isle_speech_4.mp3", "...", "", 4115014723, 2723692261, Spawn)
end

function speech5(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/lucan_isle_speech_5.mp3", "Prove yourself, and I shall grant you shelter at the edge of my city, and the chance to earn your place as a proud citizen of Freeport.", "", 4115014723, 2723692261, Spawn)
end

function speech6(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/lucan_isle_speech_6.mp3", "Go now, and begin the trials that I have set for you.", "", 1244918730, 586509135, Spawn)
end

function speech7(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/lucan_isle_speech_7.mp3", "Succeed, and you will share the fortunes of Freeport as we reshape this broken world.", "", 2666628260, 1943756642, Spawn)
end

function speech8(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/lucan_isle_speech_8.mp3", "Together we will restore the glory of ages past, crush the Sons of Zek, and sweep aside the decadent nation of Qeynos!", "", 140890899, 2835297833, Spawn)
end

function speech9(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/lucan_isle_speech_9.mp3", "With my guidance, you shall gain power and glory as you have never imagined, but should you turn against me, you will find that my wrath is a terrible thing ... Now go!", "", 3855854568, 2247480313, Spawn)
end

