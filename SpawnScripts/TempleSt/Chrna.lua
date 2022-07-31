--[[
	Script Name	: SpawnScripts/TempleSt/Chrna.lua
	Script Purpose	: Chrna 
	Script Author	: John Adams
	Script Date	: 2008.09.29
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

		PlayFlavor(NPC, "voiceover/english/chrna/fprt_hood03/qst_chrna.mp3", "", "", 1920372216, 1161082682, Spawn)
	AddConversationOption(conversation, "I haven't seen any, but will keep an eye out for you.  Good luck!", "dlg_2_1")
	StartConversation(conversation, NPC, Spawn, "Chrna look for hidden treasures.  Maybe you see where they are, yes?  ")
	if convo==5 then
		PlayFlavor(NPC, "voiceover/english/chrna/fprt_hood03/qst_chrna.mp3", "", "", 1920372216, 1161082682, Spawn)
		AddConversationOption(conversation, "I haven't seen any, but will keep an eye out for you.  Good luck!", "dlg_5_1")
		StartConversation(conversation, NPC, Spawn, "Chrna look for hidden treasures.  Maybe you see where they are, yes?  ")
	end

	if convo==6 then
		PlayFlavor(NPC, "voiceover/english/chrna/fprt_hood03/qst_chrna.mp3", "", "", 1920372216, 1161082682, Spawn)
		AddConversationOption(conversation, "I haven't seen any, but will keep an eye out for you.  Good luck!", "dlg_6_1")
		StartConversation(conversation, NPC, Spawn, "Chrna look for hidden treasures.  Maybe you see where they are, yes?  ")
	end

end

