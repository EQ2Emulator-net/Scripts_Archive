--[[
	Script Name	: SpawnScripts/BigBend/PapiliusAhala.lua
	Script Purpose	: Papilius Ahala <Spell Scrolls>
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

		PlayFlavor(NPC, "voiceover/english/scribe_papilius_ahala/fprt_hood1/mer_scribepapiliusahala.mp3", "", "", 4247580668, 3142369622, Spawn)
	AddConversationOption(conversation, "I am not interested right now.", "dlg_23_1")
	StartConversation(conversation, NPC, Spawn, "Interested in a writing sample?  Or am I wasting my time on another worthless lout who can't read?")
	if convo==24 then
		PlayFlavor(NPC, "voiceover/english/scribe_papilius_ahala/fprt_hood1/mer_scribepapiliusahala.mp3", "", "", 4247580668, 3142369622, Spawn)
		AddConversationOption(conversation, "I am not interested right now.", "dlg_24_1")
		StartConversation(conversation, NPC, Spawn, "Interested in a writing sample?  Or am I wasting my time on another worthless lout who can't read?")
	end

	if convo==32 then
		PlayFlavor(NPC, "voiceover/english/scribe_papilius_ahala/fprt_hood1/mer_scribepapiliusahala.mp3", "", "", 4247580668, 3142369622, Spawn)
		AddConversationOption(conversation, "I am not interested right now.", "dlg_32_1")
		StartConversation(conversation, NPC, Spawn, "Interested in a writing sample?  Or am I wasting my time on another worthless lout who can't read?")
	end

end

