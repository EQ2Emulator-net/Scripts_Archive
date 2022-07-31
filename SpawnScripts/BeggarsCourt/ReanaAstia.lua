--[[
	Script Name	: SpawnScripts/BeggarsCourt/ReanaAstia.lua
	Script Purpose	: Reana Astia <Provisioner>
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

	PlayFlavor(NPC, "voiceover/english/reana_astia/fprt_hood04/std_reana_astia.mp3", "", "", 3795939248, 4147514993, Spawn)
	AddConversationOption(conversation, "Then I have no need to talk to you.")
	AddConversationOption(conversation, "Are you a farmer?", "dlg_14_1")
	StartConversation(conversation, NPC, Spawn, "Hey! Do you want some grain?  Nothing's wrong with it.  Come on, it'll be good for making beer or something.")
end

function dlg_14_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/reana_astia/fprt_hood04/std_reana_astia000.mp3", "", "", 3252979034, 309845439, Spawn)
	AddConversationOption(conversation, "When's the party?")
	StartConversation(conversation, NPC, Spawn, "Me?!  A farmer?!  HA!  I just sell the stuff to make a little money.  You can't have fun in this place without a little bit of the cold, hard coin. You know?  If I can get this all sold off, I'll have enough to throw a decent party down by the docks.  Cazic knows, this place needs some action!")
end

function dlg_14_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/reana_astia/fprt_hood04/std_reana_astia001.mp3", "", "", 4204669996, 3295304812, Spawn)
	AddConversationOption(conversation, "Okay.", "dlg_14_3")
	StartConversation(conversation, NPC, Spawn, "That all depends on when I can get this all sold, doesn't it?  So are you going to take this off my hands or what?  I know you have some money in your pockets.  Just one sack of grain and you can eat for days.")
end