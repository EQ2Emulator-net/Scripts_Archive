--[[
	Script Name	: SpawnScripts/TempleSt/CaptainMolacus.lua
	Script Purpose	: Captain Molacus <Freeport Militia>
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

		PlayFlavor(NPC, "voiceover/english/captain_molacus/fprt_hood03/guard_captain_molacus_hail.mp3", "", "", 1657379715, 3189650077, Spawn)
	AddConversationOption(conversation, "Nope, I sure wouldn't.", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "Move along - you wouldn't want us to arrest you for loitering, would you?")
	if convo==4 then
		PlayFlavor(NPC, "voiceover/english/captain_molacus/fprt_hood03/guard_captain_molacus_hail.mp3", "", "", 1657379715, 3189650077, Spawn)
		AddConversationOption(conversation, "Nope, I sure wouldn't.", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, "Move along - you wouldn't want us to arrest you for loitering, would you?")
	end

end

