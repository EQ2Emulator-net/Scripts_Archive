--[[
	Script Name	: SpawnScripts/Baubbleshire/GornitPenwiggle.lua
	Script Purpose	: Gornit Penwiggle 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gornit_penwiggle/qey_village06/penwiggle000.mp3", "", "", 2844059086, 1628915067, Spawn)
	AddConversationOption(conversation, "Gornit? That's an odd name. ", "dlg_24_1")
	AddConversationOption(conversation, "I won't bother you. Bye.")
	StartConversation(conversation, NPC, Spawn, "Can't you see I'm busy? I'm the kegkeeper of the tavern, and as you can see, these lot drink a lot ... Ha! ... Made a funny!")
end

function dlg_24_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gornit_penwiggle/qey_village06/penwiggle006.mp3", "", "", 503328722, 1485980472, Spawn)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "I agree! But what's a stout to do? My grandparents granted me this atrocious name. They say it was the name of a ferocious giant, a pirate even! Saw it on a journey once, they say. Even spoke to him! Tall tales I say.")
end