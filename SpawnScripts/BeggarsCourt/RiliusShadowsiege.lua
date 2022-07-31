--[[
	Script Name	: SpawnScripts/BeggarsCourt/RiliusShadowsiege.lua
	Script Purpose	: Rilius Shadowsiege 
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

	PlayFlavor(NPC, "voiceover/english/rilius_shadowsiege/fprt_hood04/quests/riliusshadowsiege/lore_rilius_000.mp3", "", "", 2750438484, 4134837776, Spawn)
	AddConversationOption(conversation, "What are you talking about?", "dlg_12_1")
	AddConversationOption(conversation, "I'll keep that in mind, old man.")
	StartConversation(conversation, NPC, Spawn, "Watch yourself, kid.  You never know what unsavory creatures might lurk in the shadows of this city.")
end

function dlg_12_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rilius_shadowsiege/fprt_hood04/quests/riliusshadowsiege/lore_rilius_001.mp3", "", "", 3721945383, 1106683272, Spawn)
	AddConversationOption(conversation, "What are you talking about?!", "dlg_12_2")
	AddConversationOption(conversation, "I don't have time for the paranoid ravings of an old man.")
	StartConversation(conversation, NPC, Spawn, "Come here, kid, and listen close.  I speak about the vermin ratonga.  They're an uncomfortably mysterious lot and they aren't to be trusted.  Do yourself a favor and don't get involved with them.  You don't want to play any part in their plots, trust me.")
end

function dlg_12_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rilius_shadowsiege/fprt_hood04/quests/riliusshadowsiege/lore_rilius_002.mp3", "", "", 3127368799, 468607430, Spawn)
	AddConversationOption(conversation, "If they really are so mysterious, why are they allowed to be part of the city?", "dlg_12_3")
	AddConversationOption(conversation, "That's not something for me to worry about right now.  Good bye.")
	StartConversation(conversation, NPC, Spawn, "Everything, kid, everything.  They've been here a mere twenty years and we still don't know anything about them!  I mean, no one even knows where they come from!")
end

function dlg_12_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rilius_shadowsiege/fprt_hood04/quests/riliusshadowsiege/lore_rilius_003.mp3", "", "", 4151950988, 1655159617, Spawn)
	AddConversationOption(conversation, "What happened to you?", "dlg_12_4")
	AddConversationOption(conversation, "So, you're a traitor.  Why am I talking to you, then?!  Good bye!")
	StartConversation(conversation, NPC, Spawn, "Because the Overlord allows it, and don't think for a minute that I would dare presume to know the Overlord's state of mind again.  Oh yes, I questioned his wisdom once but never again.")
end

function dlg_12_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rilius_shadowsiege/fprt_hood04/quests/riliusshadowsiege/lore_rilius_004.mp3", "", "", 1930330881, 3902860995, Spawn)
	AddConversationOption(conversation, "So, you questioned the Overlord himself?!", "dlg_12_5")
	AddConversationOption(conversation, "Well, you're obviously insane from your incarceration, so I'll just be going now.")
	StartConversation(conversation, NPC, Spawn, "Oh, not much; just a decade's long incarceration with a troll for a cell mate and the stripping of my family's citizenship and welfare.  But hey, at least I've still got my health.")
end

function dlg_12_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rilius_shadowsiege/fprt_hood04/quests/riliusshadowsiege/lore_rilius_008.mp3", "", "", 1248757604, 2236898370, Spawn)
	AddConversationOption(conversation, "So, you were there when the ratonga first came?", "dlg_12_6")
	AddConversationOption(conversation, "Socializing with ex-cons is not the best way to prove myself to the city...")
	StartConversation(conversation, NPC, Spawn, "Of course not!  I would be dead if I had been so foolish!  No, I've never had the pleasure of a personal audience with the Overlord.  My commanding officer overheard me harping about the ratonga infestation while I was off duty.")
end

function dlg_12_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rilius_shadowsiege/fprt_hood04/quests/riliusshadowsiege/lore_rilius_005.mp3", "", "", 2514732529, 3581140502, Spawn)
	AddConversationOption(conversation, "Well, go on, spit it out!  Tell me what happened!", "dlg_12_7")
	StartConversation(conversation, NPC, Spawn, "Yes, I was there.  I remember it like it was yesterday.  I was on the night patrol when they first came.  It was shortly after dusk when the first of them slithered out of the sewers.  It was just a few of them at first...")
end

function dlg_12_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rilius_shadowsiege/fprt_hood04/quests/riliusshadowsiege/lore_rilius_006.mp3", "", "", 3494492671, 4049441307, Spawn)
	AddConversationOption(conversation, "So the Foci killed them?", "dlg_12_8")
	AddConversationOption(conversation, "Fascinating, really, but I think I've heard enough.")
	StartConversation(conversation, NPC, Spawn, "The city patrol was doubled and put on alert, but it was too late.  In a matter of minutes the ratonga 'ambassadors' had already made their way to the doorstep of the Foci.  We were ordered to remain on patrol and guard the sewer entrances, but there were no more sightings.  It was quiet for a few days after that. The patrol remained on alert and we all worked triple shifts, but the damage was done.")
end

function dlg_12_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rilius_shadowsiege/fprt_hood04/quests/riliusshadowsiege/lore_rilius_009.mp3", "", "", 799000226, 2029965090, Spawn)
	AddConversationOption(conversation, "Well, they obviously have some potential that's useful to the Overlord.", "dlg_12_9")
	StartConversation(conversation, NPC, Spawn, "What a logical conclusion that would be, eh?  But no, she did not kill them.  Apparently, she conceded to the vermin ambassadors' requests and an audience was arranged with the Overlord.  Official orders welcoming the ratonga race into the city's populace were posted and before the ink could dry, the streets were flooded with the vermin, as if they had been there, invisible, all along.")
end

function dlg_12_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rilius_shadowsiege/fprt_hood04/quests/riliusshadowsiege/lore_rilius_010.mp3", "", "", 3904436608, 1531693934, Spawn)
	AddConversationOption(conversation, "I'll be sure to keep all of this in mind, thank you.")
	StartConversation(conversation, NPC, Spawn, "As a matter of fact, I think they have too much potential, if you know what I mean.  No, I don't like them being here, not one bit and if you know what's good for you, you'll grow an extra pair of eyes in the back of your head, because they're everywhere.")
end