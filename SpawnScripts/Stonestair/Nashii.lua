--[[
	Script Name	: SpawnScripts/Stonestair/Nashii.lua
	Script Purpose	: Nashii 
	Script Author	: John Adams
	Script Date	: 2009.04.25
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

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/nashii/fprt_hood02/quests/nashii/lore_nashii_000.mp3", "", "", 1877037213, 4146049336, Spawn)
	AddConversationOption(conversation, "Why is their presence so disturbing? ", "dlg_11_1")
	AddConversationOption(conversation, "I'll determine for myself who to ally with, thanks.")
	StartConversation(conversation, NPC, Spawn, "The presence of the Erudites amidst the reign of Lucan disturbs me. I do not think it's wise to get involved in their affairs.  My advice to you, traveler, is to let them be; let their plans unfold and let their fate be achieved.")
end

function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/nashii/fprt_hood02/quests/nashii/lore_nashii_001.mp3", "", "", 501312672, 301429712, Spawn)
	AddConversationOption(conversation, "How do you know about the Erudite's evolution?", "dlg_11_2")
	AddConversationOption(conversation, "Why would their evolution make them any more suspicious?", "dlg_11_2")
	AddConversationOption(conversation, "If I want an account of Erudite history, I'll ask an Erudite.  Good bye.")
	StartConversation(conversation, NPC, Spawn, "Aside from the turbulent history that binds my kin and the Erudites together as hated enemies, they have come beyond their natural selves.  The nature of their magical evolution only lends to the suspicion of their more recent subservient disposition. ")
end

function dlg_12_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/nashii/fprt_hood02/quests/nashii/lore_nashii_002.mp3", "", "", 4201265398, 1330270326, Spawn)
	AddConversationOption(conversation, "All right, tell me this story.", "dlg_12_3")
	AddConversationOption(conversation, "I'm not interested in fairy tales.  Good bye.")
	StartConversation(conversation, NPC, Spawn, "Tales of kerran history are well kept by its people.  The legend of the Erudites' ascension has been recited since the dawn of this event.  I would offer you this tale, should you have the ears for it.")
end

function dlg_12_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/nashii/fprt_hood02/quests/nashii/lore_nashii_003.mp3", "", "", 2466179657, 2874167563, Spawn)
	AddConversationOption(conversation, "That doesn't make much sense...", "dlg_12_4")
	AddConversationOption(conversation, "Why did the Erudites join forces?", "dlg_11_4")
	AddConversationOption(conversation, "Okay, time for me to get out of here.  Bye!")
	StartConversation(conversation, NPC, Spawn, "It is said that all Erudites on Odus set aside their differences some time before the great wars and the Shattering.  The combined forces of the Heretics and disciples of Erud ventured to the Stonebrunt Mountains and built their fortress of tranquility and fear.")
end

function dlg_12_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/nashii/fprt_hood02/quests/nashii/lore_nashii_004.mp3", "", "", 437989973, 403382521, Spawn)
	AddConversationOption(conversation, "What did the ancestors do?", "dlg_12_5")
	AddConversationOption(conversation, "What were the Erudites working on?", "dlg_11_6")
	AddConversationOption(conversation, "I've got to go.  Bye!")
	StartConversation(conversation, NPC, Spawn, "Hehe, indeed, my friend.  The citadel was designed to hold the temple to each of the patron deities these societies revered.  The Erudites tried to conceal their work from the world beneath this citadel.  However, history would not allow our ancestors to be so passive and unassuming.")
end

function dlg_12_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/nashii/fprt_hood02/quests/nashii/lore_nashii_005.mp3", "", "", 2529881534, 2145203719, Spawn)
	AddConversationOption(conversation, "Ok, now this is getting interesting.  What did they discover?", "dlg_12_6")
	AddConversationOption(conversation, "I don't care about this anymore.  Good bye.")
	StartConversation(conversation, NPC, Spawn, "Our ancestors took to sabotaging the citadel's construction during the night.  It was when the Erudites stationed more guards that the ancestors were  forced to dig beneath the site. That was how they discovered the truth behind the Erudites' efforts.")
end

function dlg_12_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/nashii/fprt_hood02/quests/nashii/lore_nashii_006.mp3", "", "", 255682213, 1761834207, Spawn)
	AddConversationOption(conversation, "What was the inevitable fate?", "dlg_12_7")
	AddConversationOption(conversation, "Sounds like your ancestors were a bunch of scaredy-cats.  I've lost interest.")
	StartConversation(conversation, NPC, Spawn, "The Erudites had constructed a base of concentrated arcane power that was obviously the foundation and core of their plans.  Fearing another catastrophic event engineered at the hands of careless Erudite meddling, the ancestors took sanctuary on Kerra Isle, abandoning their homeland to the inevitable fate of the continent. ")
end

function dlg_12_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/nashii/fprt_hood02/quests/nashii/lore_nashii_007.mp3", "", "", 2859436805, 4165947792, Spawn)
	AddConversationOption(conversation, "What happened next?", "dlg_12_8")
	AddConversationOption(conversation, "Uh-huh, let me guess, the gods were giving their retribution.  I've had enough.")
	StartConversation(conversation, NPC, Spawn, "What happened shortly after the ancestors' retreat was both awesome and frightful.  Nearly a week after the retreat, on the onset of dawn, a great sound echoed from the continent like the song of a thousand great whales.  Within a few moments, the sound went still and all was suddenly quiet...")
end

function dlg_12_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/nashii/fprt_hood02/quests/nashii/lore_nashii_008.mp3", "", "", 1120885291, 3673021171, Spawn)
	AddConversationOption(conversation, "Oh, was the continent gone?!  Is that what happened to Odus?", "dlg_12_9")
	AddConversationOption(conversation, "Yeah, you expect me to believe this nonsense?")
	StartConversation(conversation, NPC, Spawn, "A cloud of mist radiated from the north, enshrouding the entirety of the continent and the surrounding shores in a thick, shimmering veil of impenetrable fog.  All grew eerily quiet. This phenomenon lasted but a few short minutes before the mists retreated.")
end

function dlg_12_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/nashii/fprt_hood02/quests/nashii/lore_nashii_009.mp3", "", "", 2727743974, 338453463, Spawn)
	AddConversationOption(conversation, "Didn't your ancestors go explore?", "dlg_12_10")
	AddConversationOption(conversation, "Oh, how typical!  I don't have time for this anymore.")
	StartConversation(conversation, NPC, Spawn, "No, Odus remained, and to the surprise of those who bore witness, it was as if nothing had occurred.  The forests of Toxxulia remained and the snow-capped peaks of Stonebrunt could be seen upon the northern horizon.  However, all remained silent and deathly still for the days that would pass.")
end

function dlg_12_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/nashii/fprt_hood02/quests/nashii/lore_nashii_010.mp3", "", "", 826037343, 906418828, Spawn)
	AddConversationOption(conversation, "What did the ancestors learn?  What did they see?", "dlg_12_11")
	AddConversationOption(conversation, "Ok, now this is getting ridiculous.  I can't listen to this anymore.")
	StartConversation(conversation, NPC, Spawn, "None dared to tread upon the land, believing it was now cursed or fouled by the Erudites' magic.  As the first of the silent days passed, many came to accept that the Erudites had destroyed themselves and all living creatures upon the continent.  A lunar cycle would pass before our ancestors learned otherwise.")
end

function dlg_12_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/nashii/fprt_hood02/quests/nashii/lore_nashii_011.mp3", "", "", 2012630359, 2327317202, Spawn)
	AddConversationOption(conversation, "That was interesting.  Thanks for the story.", "dlg_12_12")
	StartConversation(conversation, NPC, Spawn, "They saw the Erudites much as we see them now.  Their altered forms frightened many, warding the ancestors from the continent for many generations to come.  What magics occurred beneath the mist are a mystery.  The Erudites will not share this tale openly with most, for we think that they too are without answers to their mysterious transformation.")
end

function dlg_11_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/nashii/fprt_hood02/quests/nashii/lore_nashii_013.mp3", "", "", 3148555897, 4073010187, Spawn)
	AddConversationOption(conversation, "Can you explain this further?", "dlg_12_3")
	AddConversationOption(conversation, "Yeah, right.  You're just jealous of the Erudites.  Get over it!")
	StartConversation(conversation, NPC, Spawn, "The true nature and purpose behind the Erudites' evolution is a great mystery; one that I believe the Erudites themselves have yet to solve.  They are known for meddling in forces that they cannot control, and that reputation alongside their current state of being is more than enough cause for distrust.")
end

function dlg_11_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/nashii/fprt_hood02/quests/nashii/lore_nashii_012.mp3", "", "", 2065256211, 2912130252, Spawn)
	AddConversationOption(conversation, "That is really strange; weren't they diametrically opposed religiously?", "dlg_12_4")
	AddConversationOption(conversation, "So the Erudites kissed and made up, and you're afraid!  You disgust me!")
	StartConversation(conversation, NPC, Spawn, "We are not entirely certain why the Erudites let their centuries-long feud come to an end.  Some would say that it was in relation to the sudden dormancy of the great transportation monoliths.  Others would claim that the High Men envisioned a far more elaborate plan. Certainly the Erudites themselves hold this answer, but it is one that they keep secret.")
end

function dlg_11_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/nashii/fprt_hood02/quests/nashii/lore_nashii_006.mp3", "", "", 255682213, 1761834207, Spawn)
	AddConversationOption(conversation, "What was the inevitable fate?", "dlg_12_7")
	AddConversationOption(conversation, "Sounds like your ancestors were a bunch of scaredy-cats.  I've lost interest.")
	StartConversation(conversation, NPC, Spawn, "The Erudites had constructed a base of concentrated arcane power that was obviously the foundation and core of their plans.  Fearing another catastrophic event engineered at the hands of careless Erudite meddling, the ancestors took sanctuary on Kerra Isle, abandoning their homeland to the inevitable fate of the continent. ")
end