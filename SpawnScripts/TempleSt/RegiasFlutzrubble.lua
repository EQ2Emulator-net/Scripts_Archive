--[[
	Script Name	: SpawnScripts/TempleSt/RegiasFlutzrubble.lua
	Script Purpose	: Regias Flutzrubble 
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

		PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_000.mp3", "", "", 2585802283, 4039166261, Spawn)
	AddConversationOption(conversation, "What you working on?", "dlg_6_1")
	AddConversationOption(conversation, "Alright, I'm going! I'm going!")
	StartConversation(conversation, NPC, Spawn, "No!  Go away!  You're disrupting my concentration!  I must have total and complete and utter quiet if I'm going to finish these schematics!  Now, go away!  Away!")
	if convo==7 then
		PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_000.mp3", "", "", 2585802283, 4039166261, Spawn)
		AddConversationOption(conversation, "What you working on?", "dlg_7_1")
		AddConversationOption(conversation, "Alright, I'm going! I'm going!")
		StartConversation(conversation, NPC, Spawn, "No!  Go away!  You're disrupting my concentration!  I must have total and complete and utter quiet if I'm going to finish these schematics!  Now, go away!  Away!")
	end

	if convo==12 then
		PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_000.mp3", "", "", 2585802283, 4039166261, Spawn)
		AddConversationOption(conversation, "What you working on?", "dlg_12_1")
		AddConversationOption(conversation, "Alright, I'm going! I'm going!")
		StartConversation(conversation, NPC, Spawn, "No!  Go away!  You're disrupting my concentration!  I must have total and complete and utter quiet if I'm going to finish these schematics!  Now, go away!  Away!")
	end

	if convo==13 then
		PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_000.mp3", "", "", 2585802283, 4039166261, Spawn)
		AddConversationOption(conversation, "What you working on?", "dlg_13_1")
		AddConversationOption(conversation, "Alright, I'm going! I'm going!")
		StartConversation(conversation, NPC, Spawn, "No!  Go away!  You're disrupting my concentration!  I must have total and complete and utter quiet if I'm going to finish these schematics!  Now, go away!  Away!")
	end

	if convo==14 then
		PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_000.mp3", "", "", 2585802283, 4039166261, Spawn)
		AddConversationOption(conversation, "What you working on?", "dlg_14_1")
		AddConversationOption(conversation, "Alright, I'm going! I'm going!")
		StartConversation(conversation, NPC, Spawn, "No!  Go away!  You're disrupting my concentration!  I must have total and complete and utter quiet if I'm going to finish these schematics!  Now, go away!  Away!")
	end

	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_000.mp3", "", "", 2585802283, 4039166261, Spawn)
		AddConversationOption(conversation, "What you working on?", "dlg_15_1")
		AddConversationOption(conversation, "Alright, I'm going! I'm going!")
		StartConversation(conversation, NPC, Spawn, "No!  Go away!  You're disrupting my concentration!  I must have total and complete and utter quiet if I'm going to finish these schematics!  Now, go away!  Away!")
	end

	if convo==16 then
		PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_000.mp3", "", "", 2585802283, 4039166261, Spawn)
		AddConversationOption(conversation, "What you working on?", "dlg_16_1")
		AddConversationOption(conversation, "Alright, I'm going! I'm going!")
		StartConversation(conversation, NPC, Spawn, "No!  Go away!  You're disrupting my concentration!  I must have total and complete and utter quiet if I'm going to finish these schematics!  Now, go away!  Away!")
	end

	if convo==17 then
		PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_000.mp3", "", "", 2585802283, 4039166261, Spawn)
		AddConversationOption(conversation, "What you working on?", "dlg_17_1")
		AddConversationOption(conversation, "Alright, I'm going! I'm going!")
		StartConversation(conversation, NPC, Spawn, "No!  Go away!  You're disrupting my concentration!  I must have total and complete and utter quiet if I'm going to finish these schematics!  Now, go away!  Away!")
	end

	if convo==18 then
		PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_000.mp3", "", "", 2585802283, 4039166261, Spawn)
		AddConversationOption(conversation, "What you working on?", "dlg_18_1")
		AddConversationOption(conversation, "Alright, I'm going! I'm going!")
		StartConversation(conversation, NPC, Spawn, "No!  Go away!  You're disrupting my concentration!  I must have total and complete and utter quiet if I'm going to finish these schematics!  Now, go away!  Away!")
	end

	if convo==19 then
		PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_000.mp3", "", "", 2585802283, 4039166261, Spawn)
		AddConversationOption(conversation, "What you working on?", "dlg_19_1")
		AddConversationOption(conversation, "Alright, I'm going! I'm going!")
		StartConversation(conversation, NPC, Spawn, "No!  Go away!  You're disrupting my concentration!  I must have total and complete and utter quiet if I'm going to finish these schematics!  Now, go away!  Away!")
	end

end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_001.mp3", "", "", 1795784999, 3837102654, Spawn)
	AddConversationOption(conversation, "You're trying to make a war ship?", "dlg_7_2")
	AddConversationOption(conversation, "What's wrong with Freeport's vessels?  We seem to have a capable navy.")
	AddConversationOption(conversation, "On second thought, I should leave you to your work.")
	StartConversation(conversation, NPC, Spawn, "Hmmm?  You're interested in my work, are you?  Well, why didn't you say so?!  Please, please, have a seat and listen!  I'm currently working on schematics for a very powerful, very sturdy ship that can withstand even the worst of the Shattered Seas' fits!  It's all very exciting!")
end

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_002.mp3", "", "", 3970511826, 4107157131, Spawn)
	AddConversationOption(conversation, "Sounds a bit ambitious.  Why do you want to do this?", "dlg_7_3")
	AddConversationOption(conversation, "I have to go now.")
	StartConversation(conversation, NPC, Spawn, "Uuuummm... no, well, yes, I mean yes, a war ship, but it's so much more than that!  Don't you see!  It'll be able to carry an army of a thousand men, and will be able to traverse any part of the Shattered Seas with ease!")
end

function dlg_7_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_003.mp3", "", "", 1152684026, 1730897113, Spawn)
	AddConversationOption(conversation, "Why don't you just go out and explore them?", "dlg_7_4")
	AddConversationOption(conversation, "I have to go now.")
	StartConversation(conversation, NPC, Spawn, "Aside from creating the greatest invention ever invented in Freeport, I've always dreamed of traveling the world's oceans, just like my great, great, great grandfather, Captain Nalot! ")
end

function dlg_7_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_004.mp3", "", "", 16821237, 3341915909, Spawn)
	AddConversationOption(conversation, "Why are the seas so terrible?", "dlg_7_5")
	AddConversationOption(conversation, "So you're making a war ship to traverse the seas?")
	AddConversationOption(conversation, "You're the one who's mad.  Good bye.")
	StartConversation(conversation, NPC, Spawn, "Are you mad?!  The seas are too terrible, too unpredictable!  The effects of the great cataclysms haven't subsided entirely, you know.  We need powerful, secure and sturdy vessels in order to travel and explore the unexplored reaches of the world!")
end

function dlg_7_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_005.mp3", "", "", 3259471582, 1564630871, Spawn)
	AddConversationOption(conversation, "What do you mean the shores are uncharted?  We have maps for reference.", "dlg_7_6")
	AddConversationOption(conversation, "This is all very interesting, but I'm going to go now.")
	StartConversation(conversation, NPC, Spawn, "It takes thousands of years for such dramatic environmental effects to subside, don't you know anything?!  The seas are still raging, and besides, the known shores of the world are as of yet uncharted.  Who knows what sort of troubles one could run into.")
end

function dlg_7_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_006.mp3", "", "", 3492338575, 1829255468, Spawn)
	AddConversationOption(conversation, "Ok, I've enough of this foolishness.  Good bye.", "dlg_7_7")
	AddConversationOption(conversation, "Velious and Everfrost have melted?!  How do you know?")
	StartConversation(conversation, NPC, Spawn, "Maps schmaps!  They don't mean nothin' anymore!  Since the ice of Velious and Everfrost melted, the sea levels have risen so high that we don't know how shorelines have shifted. Not to mention all the earthquakes. The continents may have shifted to other hemispheres!")
end

function dlg_7_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_007.mp3", "", "", 2431672398, 3998434397, Spawn)
	AddConversationOption(conversation, "Well, good luck with that, I guess.")
	StartConversation(conversation, NPC, Spawn, "Oh, that's common knowledge!  What else would have caused the water levels to rise so high so quickly?  Yes, yes, the ice of the world is all gone.  I'm eager to go to the rock of Velious and see what sort of mysteries and treasures the ice left behind!")
end

function dlg_12_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_001.mp3", "", "", 1795784999, 3837102654, Spawn)
	AddConversationOption(conversation, "You're trying to make a war ship?", "dlg_12_2")
	AddConversationOption(conversation, "What's wrong with Freeport's vessels?  We seem to have a capable navy.")
	AddConversationOption(conversation, "On second thought, I should leave you to your work.")
	StartConversation(conversation, NPC, Spawn, "Hmmm?  You're interested in my work, are you?  Well, why didn't you say so?!  Please, please, have a seat and listen!  I'm currently working on schematics for a very powerful, very sturdy ship that can withstand even the worst of the Shattered Seas' fits!  It's all very exciting!")
end

function dlg_12_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_002.mp3", "", "", 3970511826, 4107157131, Spawn)
	AddConversationOption(conversation, "Sounds a bit ambitious.  Why do you want to do this?", "dlg_12_3")
	AddConversationOption(conversation, "I have to go now.")
	StartConversation(conversation, NPC, Spawn, "Uuuummm... no, well, yes, I mean yes, a war ship, but it's so much more than that!  Don't you see!  It'll be able to carry an army of a thousand men, and will be able to traverse any part of the Shattered Seas with ease!")
end

function dlg_12_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_003.mp3", "", "", 1152684026, 1730897113, Spawn)
	AddConversationOption(conversation, "Why don't you just go out and explore them?", "dlg_12_4")
	AddConversationOption(conversation, "I have to go now.")
	StartConversation(conversation, NPC, Spawn, "Aside from creating the greatest invention ever invented in Freeport, I've always dreamed of traveling the world's oceans, just like my great, great, great grandfather, Captain Nalot! ")
end

function dlg_13_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_001.mp3", "", "", 1795784999, 3837102654, Spawn)
	AddConversationOption(conversation, "You're trying to make a war ship?", "dlg_13_2")
	AddConversationOption(conversation, "What's wrong with Freeport's vessels?  We seem to have a capable navy.")
	AddConversationOption(conversation, "On second thought, I should leave you to your work.")
	StartConversation(conversation, NPC, Spawn, "Hmmm?  You're interested in my work, are you?  Well, why didn't you say so?!  Please, please, have a seat and listen!  I'm currently working on schematics for a very powerful, very sturdy ship that can withstand even the worst of the Shattered Seas' fits!  It's all very exciting!")
end

function dlg_13_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_004.mp3", "", "", 16821237, 3341915909, Spawn)
	AddConversationOption(conversation, "Why are the seas so terrible?")
	AddConversationOption(conversation, "So you're making a war ship to traverse the seas?", "dlg_13_3")
	AddConversationOption(conversation, "You're the one who's mad.  Good bye.")
	StartConversation(conversation, NPC, Spawn, "Are you mad?!  The seas are too terrible, too unpredictable!  The effects of the great cataclysms haven't subsided entirely, you know.  We need powerful, secure and sturdy vessels in order to travel and explore the unexplored reaches of the world!")
end

function dlg_13_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_005.mp3", "", "", 3259471582, 1564630871, Spawn)
	AddConversationOption(conversation, "What do you mean the shores are uncharted?  We have maps for reference.", "dlg_13_4")
	AddConversationOption(conversation, "This is all very interesting, but I'm going to go now.")
	StartConversation(conversation, NPC, Spawn, "It takes thousands of years for such dramatic environmental effects to subside, don't you know anything?!  The seas are still raging, and besides, the known shores of the world are as of yet uncharted.  Who knows what sort of troubles one could run into.")
end

function dlg_14_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_001.mp3", "", "", 1795784999, 3837102654, Spawn)
	AddConversationOption(conversation, "You're trying to make a war ship?", "dlg_14_2")
	AddConversationOption(conversation, "What's wrong with Freeport's vessels?  We seem to have a capable navy.")
	AddConversationOption(conversation, "On second thought, I should leave you to your work.")
	StartConversation(conversation, NPC, Spawn, "Hmmm?  You're interested in my work, are you?  Well, why didn't you say so?!  Please, please, have a seat and listen!  I'm currently working on schematics for a very powerful, very sturdy ship that can withstand even the worst of the Shattered Seas' fits!  It's all very exciting!")
end

function dlg_14_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_002.mp3", "", "", 3970511826, 4107157131, Spawn)
	AddConversationOption(conversation, "Sounds a bit ambitious.  Why do you want to do this?", "dlg_14_3")
	AddConversationOption(conversation, "I have to go now.")
	StartConversation(conversation, NPC, Spawn, "Uuuummm... no, well, yes, I mean yes, a war ship, but it's so much more than that!  Don't you see!  It'll be able to carry an army of a thousand men, and will be able to traverse any part of the Shattered Seas with ease!")
end

function dlg_14_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_003.mp3", "", "", 1152684026, 1730897113, Spawn)
	AddConversationOption(conversation, "Why don't you just go out and explore them?", "dlg_14_4")
	AddConversationOption(conversation, "I have to go now.")
	StartConversation(conversation, NPC, Spawn, "Aside from creating the greatest invention ever invented in Freeport, I've always dreamed of traveling the world's oceans, just like my great, great, great grandfather, Captain Nalot! ")
end

function dlg_15_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_001.mp3", "", "", 1795784999, 3837102654, Spawn)
	AddConversationOption(conversation, "You're trying to make a war ship?", "dlg_15_2")
	AddConversationOption(conversation, "What's wrong with Freeport's vessels?  We seem to have a capable navy.")
	AddConversationOption(conversation, "On second thought, I should leave you to your work.")
	StartConversation(conversation, NPC, Spawn, "Hmmm?  You're interested in my work, are you?  Well, why didn't you say so?!  Please, please, have a seat and listen!  I'm currently working on schematics for a very powerful, very sturdy ship that can withstand even the worst of the Shattered Seas' fits!  It's all very exciting!")
end

function dlg_15_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_004.mp3", "", "", 16821237, 3341915909, Spawn)
	AddConversationOption(conversation, "Why are the seas so terrible?")
	AddConversationOption(conversation, "So you're making a war ship to traverse the seas?", "dlg_15_3")
	AddConversationOption(conversation, "You're the one who's mad.  Good bye.")
	StartConversation(conversation, NPC, Spawn, "Are you mad?!  The seas are too terrible, too unpredictable!  The effects of the great cataclysms haven't subsided entirely, you know.  We need powerful, secure and sturdy vessels in order to travel and explore the unexplored reaches of the world!")
end

function dlg_15_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_005.mp3", "", "", 3259471582, 1564630871, Spawn)
	AddConversationOption(conversation, "What do you mean the shores are uncharted?  We have maps for reference.", "dlg_15_4")
	AddConversationOption(conversation, "This is all very interesting, but I'm going to go now.")
	StartConversation(conversation, NPC, Spawn, "It takes thousands of years for such dramatic environmental effects to subside, don't you know anything?!  The seas are still raging, and besides, the known shores of the world are as of yet uncharted.  Who knows what sort of troubles one could run into.")
end

function dlg_15_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_006.mp3", "", "", 3492338575, 1829255468, Spawn)
	AddConversationOption(conversation, "Ok, I've enough of this foolishness.  Good bye.", "dlg_15_5")
	AddConversationOption(conversation, "Velious and Everfrost have melted?!  How do you know?")
	StartConversation(conversation, NPC, Spawn, "Maps schmaps!  They don't mean nothin' anymore!  Since the ice of Velious and Everfrost melted, the sea levels have risen so high that we don't know how shorelines have shifted. Not to mention all the earthquakes. The continents may have shifted to other hemispheres!")
end

function dlg_15_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_007.mp3", "", "", 2431672398, 3998434397, Spawn)
	AddConversationOption(conversation, "Well, good luck with that, I guess.")
	StartConversation(conversation, NPC, Spawn, "Oh, that's common knowledge!  What else would have caused the water levels to rise so high so quickly?  Yes, yes, the ice of the world is all gone.  I'm eager to go to the rock of Velious and see what sort of mysteries and treasures the ice left behind!")
end

function dlg_16_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_001.mp3", "", "", 1795784999, 3837102654, Spawn)
	AddConversationOption(conversation, "You're trying to make a war ship?", "dlg_16_2")
	AddConversationOption(conversation, "What's wrong with Freeport's vessels?  We seem to have a capable navy.")
	AddConversationOption(conversation, "On second thought, I should leave you to your work.")
	StartConversation(conversation, NPC, Spawn, "Hmmm?  You're interested in my work, are you?  Well, why didn't you say so?!  Please, please, have a seat and listen!  I'm currently working on schematics for a very powerful, very sturdy ship that can withstand even the worst of the Shattered Seas' fits!  It's all very exciting!")
end

function dlg_18_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_001.mp3", "", "", 1795784999, 3837102654, Spawn)
	AddConversationOption(conversation, "You're trying to make a war ship?", "dlg_18_2")
	AddConversationOption(conversation, "What's wrong with Freeport's vessels?  We seem to have a capable navy.")
	AddConversationOption(conversation, "On second thought, I should leave you to your work.")
	StartConversation(conversation, NPC, Spawn, "Hmmm?  You're interested in my work, are you?  Well, why didn't you say so?!  Please, please, have a seat and listen!  I'm currently working on schematics for a very powerful, very sturdy ship that can withstand even the worst of the Shattered Seas' fits!  It's all very exciting!")
end

function dlg_18_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_004.mp3", "", "", 16821237, 3341915909, Spawn)
	AddConversationOption(conversation, "Why are the seas so terrible?")
	AddConversationOption(conversation, "So you're making a war ship to traverse the seas?", "dlg_18_3")
	AddConversationOption(conversation, "You're the one who's mad.  Good bye.")
	StartConversation(conversation, NPC, Spawn, "Are you mad?!  The seas are too terrible, too unpredictable!  The effects of the great cataclysms haven't subsided entirely, you know.  We need powerful, secure and sturdy vessels in order to travel and explore the unexplored reaches of the world!")
end

function dlg_18_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_002.mp3", "", "", 3970511826, 4107157131, Spawn)
	AddConversationOption(conversation, "Sounds a bit ambitious.  Why do you want to do this?")
	AddConversationOption(conversation, "I have to go now.", "dlg_18_4")
	StartConversation(conversation, NPC, Spawn, "Uuuummm... no, well, yes, I mean yes, a war ship, but it's so much more than that!  Don't you see!  It'll be able to carry an army of a thousand men, and will be able to traverse any part of the Shattered Seas with ease!")
end

function dlg_18_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_003.mp3", "", "", 1152684026, 1730897113, Spawn)
	AddConversationOption(conversation, "Why don't you just go out and explore them?", "dlg_18_5")
	AddConversationOption(conversation, "I have to go now.")
	StartConversation(conversation, NPC, Spawn, "Aside from creating the greatest invention ever invented in Freeport, I've always dreamed of traveling the world's oceans, just like my great, great, great grandfather, Captain Nalot! ")
end

function dlg_18_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_004.mp3", "", "", 16821237, 3341915909, Spawn)
	AddConversationOption(conversation, "Why are the seas so terrible?", "dlg_18_6")
	AddConversationOption(conversation, "So you're making a war ship to traverse the seas?")
	AddConversationOption(conversation, "You're the one who's mad.  Good bye.")
	StartConversation(conversation, NPC, Spawn, "Are you mad?!  The seas are too terrible, too unpredictable!  The effects of the great cataclysms haven't subsided entirely, you know.  We need powerful, secure and sturdy vessels in order to travel and explore the unexplored reaches of the world!")
end

function dlg_18_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_002.mp3", "", "", 3970511826, 4107157131, Spawn)
	AddConversationOption(conversation, "Sounds a bit ambitious.  Why do you want to do this?")
	AddConversationOption(conversation, "I have to go now.", "dlg_18_7")
	StartConversation(conversation, NPC, Spawn, "Uuuummm... no, well, yes, I mean yes, a war ship, but it's so much more than that!  Don't you see!  It'll be able to carry an army of a thousand men, and will be able to traverse any part of the Shattered Seas with ease!")
end

function dlg_18_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_003.mp3", "", "", 1152684026, 1730897113, Spawn)
	AddConversationOption(conversation, "Why don't you just go out and explore them?", "dlg_18_8")
	AddConversationOption(conversation, "I have to go now.")
	StartConversation(conversation, NPC, Spawn, "Aside from creating the greatest invention ever invented in Freeport, I've always dreamed of traveling the world's oceans, just like my great, great, great grandfather, Captain Nalot! ")
end

function dlg_18_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_004.mp3", "", "", 16821237, 3341915909, Spawn)
	AddConversationOption(conversation, "Why are the seas so terrible?", "dlg_18_9")
	AddConversationOption(conversation, "So you're making a war ship to traverse the seas?")
	AddConversationOption(conversation, "You're the one who's mad.  Good bye.")
	StartConversation(conversation, NPC, Spawn, "Are you mad?!  The seas are too terrible, too unpredictable!  The effects of the great cataclysms haven't subsided entirely, you know.  We need powerful, secure and sturdy vessels in order to travel and explore the unexplored reaches of the world!")
end

function dlg_18_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_005.mp3", "", "", 3259471582, 1564630871, Spawn)
	AddConversationOption(conversation, "What do you mean the shores are uncharted?  We have maps for reference.", "dlg_18_10")
	AddConversationOption(conversation, "This is all very interesting, but I'm going to go now.")
	StartConversation(conversation, NPC, Spawn, "It takes thousands of years for such dramatic environmental effects to subside, don't you know anything?!  The seas are still raging, and besides, the known shores of the world are as of yet uncharted.  Who knows what sort of troubles one could run into.")
end

function dlg_18_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_006.mp3", "", "", 3492338575, 1829255468, Spawn)
	AddConversationOption(conversation, "Ok, I've enough of this foolishness.  Good bye.", "dlg_18_11")
	AddConversationOption(conversation, "Velious and Everfrost have melted?!  How do you know?")
	StartConversation(conversation, NPC, Spawn, "Maps schmaps!  They don't mean nothin' anymore!  Since the ice of Velious and Everfrost melted, the sea levels have risen so high that we don't know how shorelines have shifted. Not to mention all the earthquakes. The continents may have shifted to other hemispheres!")
end

function dlg_19_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_001.mp3", "", "", 1795784999, 3837102654, Spawn)
	AddConversationOption(conversation, "You're trying to make a war ship?", "dlg_19_2")
	AddConversationOption(conversation, "What's wrong with Freeport's vessels?  We seem to have a capable navy.")
	AddConversationOption(conversation, "On second thought, I should leave you to your work.")
	StartConversation(conversation, NPC, Spawn, "Hmmm?  You're interested in my work, are you?  Well, why didn't you say so?!  Please, please, have a seat and listen!  I'm currently working on schematics for a very powerful, very sturdy ship that can withstand even the worst of the Shattered Seas' fits!  It's all very exciting!")
end

function dlg_19_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_002.mp3", "", "", 3970511826, 4107157131, Spawn)
	AddConversationOption(conversation, "Sounds a bit ambitious.  Why do you want to do this?", "dlg_19_3")
	AddConversationOption(conversation, "I have to go now.")
	StartConversation(conversation, NPC, Spawn, "Uuuummm... no, well, yes, I mean yes, a war ship, but it's so much more than that!  Don't you see!  It'll be able to carry an army of a thousand men, and will be able to traverse any part of the Shattered Seas with ease!")
end

function dlg_19_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_003.mp3", "", "", 1152684026, 1730897113, Spawn)
	AddConversationOption(conversation, "Why don't you just go out and explore them?", "dlg_19_4")
	AddConversationOption(conversation, "I have to go now.")
	StartConversation(conversation, NPC, Spawn, "Aside from creating the greatest invention ever invented in Freeport, I've always dreamed of traveling the world's oceans, just like my great, great, great grandfather, Captain Nalot! ")
end

function dlg_19_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_004.mp3", "", "", 16821237, 3341915909, Spawn)
	AddConversationOption(conversation, "Why are the seas so terrible?", "dlg_19_5")
	AddConversationOption(conversation, "So you're making a war ship to traverse the seas?")
	AddConversationOption(conversation, "You're the one who's mad.  Good bye.")
	StartConversation(conversation, NPC, Spawn, "Are you mad?!  The seas are too terrible, too unpredictable!  The effects of the great cataclysms haven't subsided entirely, you know.  We need powerful, secure and sturdy vessels in order to travel and explore the unexplored reaches of the world!")
end

function dlg_19_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_002.mp3", "", "", 3970511826, 4107157131, Spawn)
	AddConversationOption(conversation, "Sounds a bit ambitious.  Why do you want to do this?")
	AddConversationOption(conversation, "I have to go now.", "dlg_19_6")
	StartConversation(conversation, NPC, Spawn, "Uuuummm... no, well, yes, I mean yes, a war ship, but it's so much more than that!  Don't you see!  It'll be able to carry an army of a thousand men, and will be able to traverse any part of the Shattered Seas with ease!")
end

function dlg_19_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_003.mp3", "", "", 1152684026, 1730897113, Spawn)
	AddConversationOption(conversation, "Why don't you just go out and explore them?", "dlg_19_7")
	AddConversationOption(conversation, "I have to go now.")
	StartConversation(conversation, NPC, Spawn, "Aside from creating the greatest invention ever invented in Freeport, I've always dreamed of traveling the world's oceans, just like my great, great, great grandfather, Captain Nalot! ")
end

function dlg_19_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_004.mp3", "", "", 16821237, 3341915909, Spawn)
	AddConversationOption(conversation, "Why are the seas so terrible?", "dlg_19_8")
	AddConversationOption(conversation, "So you're making a war ship to traverse the seas?")
	AddConversationOption(conversation, "You're the one who's mad.  Good bye.")
	StartConversation(conversation, NPC, Spawn, "Are you mad?!  The seas are too terrible, too unpredictable!  The effects of the great cataclysms haven't subsided entirely, you know.  We need powerful, secure and sturdy vessels in order to travel and explore the unexplored reaches of the world!")
end

function dlg_19_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_005.mp3", "", "", 3259471582, 1564630871, Spawn)
	AddConversationOption(conversation, "What do you mean the shores are uncharted?  We have maps for reference.", "dlg_19_9")
	AddConversationOption(conversation, "This is all very interesting, but I'm going to go now.")
	StartConversation(conversation, NPC, Spawn, "It takes thousands of years for such dramatic environmental effects to subside, don't you know anything?!  The seas are still raging, and besides, the known shores of the world are as of yet uncharted.  Who knows what sort of troubles one could run into.")
end

function dlg_19_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_006.mp3", "", "", 3492338575, 1829255468, Spawn)
	AddConversationOption(conversation, "Ok, I've enough of this foolishness.  Good bye.", "dlg_19_10")
	AddConversationOption(conversation, "Velious and Everfrost have melted?!  How do you know?")
	StartConversation(conversation, NPC, Spawn, "Maps schmaps!  They don't mean nothin' anymore!  Since the ice of Velious and Everfrost melted, the sea levels have risen so high that we don't know how shorelines have shifted. Not to mention all the earthquakes. The continents may have shifted to other hemispheres!")
end

function dlg_19_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/regias_flutzrubble/fprt_hood03/quests/regiasflutzrubble/lore_regias_007.mp3", "", "", 2431672398, 3998434397, Spawn)
	AddConversationOption(conversation, "Well, good luck with that, I guess.")
	StartConversation(conversation, NPC, Spawn, "Oh, that's common knowledge!  What else would have caused the water levels to rise so high so quickly?  Yes, yes, the ice of the world is all gone.  I'm eager to go to the rock of Velious and see what sort of mysteries and treasures the ice left behind!")
end

