--[[
	Script Name	: SpawnScripts/BigBend/Grazzgrat.lua
	Script Purpose	: Grazzgrat 
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

	PlayFlavor(NPC, "voiceover/english/grazzgrat/fprt_hood1/quests/grazzgrat/grazzgrat_000.mp3", "", "", 3132446091, 3207337666, Spawn)
	AddConversationOption(conversation, "If you don't like it here, why don't you go back to your swamp?", "dlg_8_1")
	AddConversationOption(conversation, "What?!  Trolls don't whine!  Suck it up and deal with it!")
	StartConversation(conversation, NPC, Spawn, "This place is no good.  It's too dry, too crowded, and there's nothing to hunt but rats.  No, this place is not so good as Grazzgrat's swamp.")

end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/grazzgrat/fprt_hood1/quests/grazzgrat/grazzgrat_001.mp3", "", "", 3422662472, 3860203232, Spawn)
	AddConversationOption(conversation, "What happened to your swamp? ", "dlg_8_2")
	AddConversationOption(conversation, "Well, you're not the only one without a home, so stop whining.")
	StartConversation(conversation, NPC, Spawn, "Ahh, you think you smarter than Grazzgrat?  Well, you not so smart because Grazzgrat would be in swamp now if he could.  But swamp was destroyed so long ago and Grazzgrat forced to live in dry, crowded place until he find new swamp.")
end

function dlg_8_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/grazzgrat/fprt_hood1/quests/grazzgrat/grazzgrat_002.mp3", "", "", 410920209, 1417413171, Spawn)
	AddConversationOption(conversation, "How did you manage to survive?", "dlg_10_3")
	AddConversationOption(conversation, "Where was this swamp of yours?", "dlg_8_3")
	AddConversationOption(conversation, "You're alive!  Be grateful for that and move on! ")
	StartConversation(conversation, NPC, Spawn, "The swamp was destroyed in the Shattering.  Great fire rocks fell from the sky and boiled the swamp.  Everything died; Grazzgrat almost died.")
end

function dlg_8_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/grazzgrat/fprt_hood1/quests/grazzgrat/grazzgrat_004.mp3", "", "", 1788699406, 2954206658, Spawn)
	AddConversationOption(conversation, "What happened to the frogloks on the swamp?", "dlg_9_4")
	AddConversationOption(conversation, "So there were other trolls in your swamp?", "dlg_8_4")
	AddConversationOption(conversation, "A troll reminiscing?!  HA!  Now I've seen everything.")
	StartConversation(conversation, NPC, Spawn, "Swamp was to the south and ran deep for miles and miles.  It had lots of things to feed Grazzgrat, lots of frogloks for Grazzgrat and Grazzgrat's many children to eat, and lots of ruined rocks to make Grazzgrat's home.  Yes, that swamp was a good swamp.  Grazzgrat is... disappointed now that it's gone.")
end

function dlg_8_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/grazzgrat/fprt_hood1/quests/grazzgrat/grazzgrat_006.mp3", "", "", 1556653377, 944269835, Spawn)
	AddConversationOption(conversation, "It could have been worse; at least you're still alive.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Yes, many brothers, sisters and children of Grazzgrat hunted frogloks in the swamp.  They were pleased with the swamp, as Grazzgrat was pleased, but no more.  They are probably dead, boiled or crushed by fire rocks from the sky.")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/grazzgrat/fprt_hood1/quests/grazzgrat/grazzgrat_001.mp3", "", "", 3422662472, 3860203232, Spawn)
	AddConversationOption(conversation, "What happened to your swamp? ", "dlg_8_2")
	AddConversationOption(conversation, "Well, you're not the only one without a home, so stop whining.")
	StartConversation(conversation, NPC, Spawn, "Ahh, you think you smarter than Grazzgrat?  Well, you not so smart because Grazzgrat would be in swamp now if he could.  But swamp was destroyed so long ago and Grazzgrat forced to live in dry, crowded place until he find new swamp.")
end

function dlg_9_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/grazzgrat/fprt_hood1/quests/grazzgrat/grazzgrat_005.mp3", "", "", 3794657795, 3653560387, Spawn)
	AddConversationOption(conversation, "What about other trolls?  Or were you alone in your swamp?", "dlg_8_4")
	AddConversationOption(conversation, "So the frogloks died?  Good riddance, is what I say!")
	StartConversation(conversation, NPC, Spawn, "Grazzgrat only know what he heard and smelled.  They screamed so loud in pain and fear and Grazzgrat could smell their skins melting in the swamp.  It was terrible and sad thing the frogloks' boiling alive, not that they died, but that Grazzgrat could not enjoy the slaughter.")
end

function dlg_10_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/grazzgrat/fprt_hood1/quests/grazzgrat/grazzgrat_003.mp3", "", "", 890099441, 3631110016, Spawn)
	AddConversationOption(conversation, "Where was this swamp of yours?", "dlg_8_3")
	AddConversationOption(conversation, "So that's what happened to the frogloks?", "dlg_9_4")
	AddConversationOption(conversation, "So you survived.  That should be more than enough for a troll.")
	StartConversation(conversation, NPC, Spawn, "Ahahaha!  Grazzgrat is tougher than little snakes, lizards, and frogloks.  The boiling water only burned and blistered Grazzgrat while he swam to muddy shore.  That boiled too, the mud, but it was not so bad for Grazzgrat.")
end