--[[
	Script Name	: SpawnScripts/Castleview/FrupGroaak.lua
	Script Purpose	: Frup Groaak 
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	ProvidesQuest(NPC, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()


	if HasCompletedQuest(Spawn, 1) then
	else
		PlayFlavor(NPC, "frup_groaak/qey_village04/frup_groaak001.mp3", "", "", 558808242, 1161412140)
		AddConversationOption(conversation, "Wait a minute, I don't think I've seen you around here before.", "dlg_0_1")
		AddConversationOption(conversation, "Unfortunately my business elsewhere has priority.")
		StartConversation(conversation, NPC, Spawn, "Any of them at all? We were wandering through the vast green lands beyond these walls, when we were set upon by brigands!")
	end

end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "frup_groaak/qey_village04/frup_groaak002.mp3", "", "", 3267415746, 289228218)
	AddConversationOption(conversation, "Far to the south?", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Indeed, I should think not. I was very surprised to see other of our kind around here. I and my brothers managed to make our way here from far to the south.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "frup_groaak/qey_village04/frup_groaak003.mp3", "", "", 1246154501, 3903140616)
	AddConversationOption(conversation, "I've no wish to harm you.", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "In the depths of the Feerrott. I cannot explain more now - trust is something which must be won, and our home cannot be revealed to those who might wish us harm.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "frup_groaak/qey_village04/frup_groaak004.mp3", "", "", 3094447323, 1179906497)
	AddConversationOption(conversation, "I'd agree to that.", "dlg_0_4")
	AddConversationOption(conversation, "I've no interest, sorry.")
	StartConversation(conversation, NPC, Spawn, "Then perhaps you'll wish to help.")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "frup_groaak/qey_village04/frup_groaak005.mp3", "", "", 181752566, 1360531724)
	AddConversationOption(conversation, "Which beach?", "dlg_0_5")
	StartConversation(conversation, NPC, Spawn, "The other I came to these shores with, Giidib, set out from the beach in the opposite direction as I.")
end

function dlg_0_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "frup_groaak/qey_village04/frup_groaak006.mp3", "", "", 505426332, 1748439626)
	AddConversationOption(conversation, "I'm sure I can find that.", "dlg_0_6")
	StartConversation(conversation, NPC, Spawn, "I apologize, I do not know the names of places here. T'was quite a ways south east of here, however. There was a great forest situated on the banks above.")
end

function dlg_0_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "frup_groaak/qey_village04/frup_groaak007.mp3", "", "", 4120156088, 1995605027)
	AddConversationOption(conversation, "I will set about finding him.", "dlg_0_7")
	StartConversation(conversation, NPC, Spawn, "I would like to see Giidib join me here in Qeynos while I plead our case to your illustrious Queen.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "Frooooaaaak! Have you seen any of my brothers?", "ponder", 1689589577, 4560189)
--]]

