--[[
	Script Name	: SpawnScripts/BigBend/CrantiktheCrazed.lua
	Script Purpose	: Crantik the Crazed 
	Script Author	: John Adams
	Script Date	: 2008.10.01
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

		PlayFlavor(NPC, "voiceover/english/crantik_the_crazed/fprt_hood1/qst_crantikthecrazed.mp3", "", "", 1553641466, 3781649488, Spawn)
	AddConversationOption(conversation, "Um, ya....right....", "dlg_30_1")
	StartConversation(conversation, NPC, Spawn, "Up is down and down is up, yet both are still sideways!  Hoooooooo hee hee haaaaaaaa!")
	if convo==31 then
		PlayFlavor(NPC, "voiceover/english/crantik_the_crazed/fprt_hood1/qst_crantikthecrazed.mp3", "", "", 1553641466, 3781649488, Spawn)
		AddConversationOption(conversation, "Um, ya....right....", "dlg_31_1")
		StartConversation(conversation, NPC, Spawn, "Up is down and down is up, yet both are still sideways!  Hoooooooo hee hee haaaaaaaa!")
	end

end

