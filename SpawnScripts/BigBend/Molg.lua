--[[
	Script Name	: SpawnScripts/BigBend/Molg.lua
	Script Purpose	: Molg <Armorsmith>
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

	PlayFlavor(NPC, "voiceover/english/merchant_molg/fprt_hood1/mer_molg.mp3", "", "", 3931295597, 1000874360, Spawn)
	AddConversationOption(conversation, "I must be going.")
	AddConversationOption(conversation, "What kind of things?", "dlg_1_1")
	StartConversation(conversation, NPC, Spawn, "Molg here!  Things for sale!  Buy!  Buy!  Buy!  Things!")

end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/merchant_molg/fprt_hood1/mer_molg000.mp3", "", "", 3100594732, 343855012, Spawn)
	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, NPC, Spawn, "All kinds of things!  Big things, little things, shiny things, even dull things!  But not so much the dull things.  Molg also buys things you know.  But Molg is a discriminating shopper.  Buy things!")
end

