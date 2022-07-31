--[[
	Script Name	: SpawnScripts/OutpostOverlord/CharlesArker.lua
	Script Purpose	: Charles Arker 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	ProvidesQuest(NPC, 50)
	ProvidesQuest(NPC, 51)
	ProvidesQuest(NPC, 53) -- TEMPORARY
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, 50) then
		if HasCompletedQuest(Spawn, 51) then
			if HasCompletedQuest(Spawn, 53) then
				WoodElvesVile(NPC, Spawn)
			elseif HasQuest(Spawn, 53) then
				if GetQuestStep(Spawn, 53) >= 1 and GetQuestStep(Spawn, 53) <= 4 then
					NoteIncomplete(NPC, Spawn)
				elseif GetQuestStep(Spawn, 53) == 5 then
					FoundMoreOfTheParchment(NPC, Spawn)
				elseif GetQuestStep(Spawn, 53) == 6 then
					-- needs to say something
				elseif GetQuestStep(Spawn, 53) == 7 then
					SetStepComplete(Spawn, 53, 7)
				end
			else
				NoteIncomplete(NPC, Spawn)
			end
		elseif HasQuest(Spawn, 51) then
			if GetQuestStep(Spawn, 51) >= 1 and GetQuestStep(Spawn, 51) <= 5 then
				IsSheDead(NPC, Spawn, 0)
			elseif GetQuestStep(Spawn, 51) == 6 then
				IsSheDead(NPC, Spawn, 1)
			else
				WoodElvesVile(NPC, Spawn)
			end
		else
			Quest1Complete(NPC, Spawn)
		end
	elseif HasQuest(Spawn, 50) then
		if GetQuestStep(Spawn, 50) == 1 then
			AppreciateIt(NPC, Spawn)
		elseif GetQuestStep(Spawn, 50) == 2 then
			SetStepComplete(Spawn, 50, 2)
			FoundMissingPieces(NPC, Spawn, 0)
		elseif GetQuestStep(Spawn, 50) == 3 then
			FoundMissingPieces(NPC, Spawn, 0)
		elseif GetQuestStep(Spawn, 50) == 4 then
			SetStepComplete(Spawn, 50, 4)
			FoundMissingPieces(NPC, Spawn, 0)
		elseif GetQuestStep(Spawn, 50) == 5 then
			FoundMissingPieces(NPC, Spawn, 0)
		elseif GetQuestStep(Spawn, 50) == 6 then
			FoundMissingPieces(NPC, Spawn, 0)
		elseif GetQuestStep(Spawn, 50) == 7 then
			SetStepComplete(Spawn, 50, 7)
			FoundMissingPieces(NPC, Spawn, 0)
		elseif GetQuestStep(Spawn, 50) == 8 then
			FoundMissingPieces(NPC, Spawn, 1)
		end
	else
		NewRecruit(NPC, Spawn)
	end
end

function NewRecruit(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker001.mp3", "", "", 2051119928, 4163051805, Spawn)
	AddConversationOption(conversation, "I'm not a recruit. I volunteered.", "dlg_4_1")
	AddConversationOption(conversation, "I don't talk to strangers.")
	StartConversation(conversation, NPC, Spawn, "You're that new recruit I keep hearing about." .. GetName(Spawn) .. ". isn't it?")
end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker002.mp3", "", "", 1779982844, 2478664547, Spawn)
	AddConversationOption(conversation, "What kind of help do you need?", "dlg_4_2")
	AddConversationOption(conversation, "Not really.")
	StartConversation(conversation, NPC, Spawn, "Your reputation precedes you -- as will mine, someday soon.  When I return to Freeport, my prestige will bring honor to my family.  I came here to make a name for myself, but it's been difficult to stand out in the crowd.  I have a new assignment and it's puzzling me.  Would you help me unravel it?")
end

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker003.mp3", "", "", 435953835, 2242560449, Spawn)
	AddConversationOption(conversation, "Certainly.", "OfferQuest1")
	AddConversationOption(conversation, "Good luck with that.")
	StartConversation(conversation, NPC, Spawn, "There's a lot of undercover work here, which means even if you do well, the higher-ups may not know it's you doing the work.  Some of my best work was claimed by someone else and I mean to fix that.  Not long ago, I intercepted part of a note one of the Tunarian spies was delivering.  They've hidden the remaining pieces.  We need to get them all back to learn more of what they're doing.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, 50)
end

function AppreciateIt(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker004.mp3", "", "", 1870656524, 1643000002, Player)
	AddConversationOption(conversation, "I'll see what I can find out.", "SeeWhatICanFindOut")
	StartConversation(conversation, QuestGiver, Player, "I appreciate it," .. GetName(Spawn) .. ".  Whatever glory comes of this, we'll share in the credit.  I'm sure this will more than make up for the work I've done that others have taken credit for.")
end

function SeeWhatICanFindOut(NPC, Spawn)
	SetStepComplete(Spawn, 50, 1)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker021.mp3", "", "", 1916109124, 3504506765, Spawn)
	AddConversationOption(conversation, "I'll keep that in mind.", "dlg_4_5")
	StartConversation(conversation, NPC, Spawn, "A word of warning: be wary of those wood elves.  They're more cunning than others may realize.")
end

function FoundMissingPieces(NPC, Spawn, Choice)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker005.mp3", "", "", 3781470259, 2263609559, Spawn)
	
	if (Choice == 1) then
		AddConversationOption(conversation, "Yes. This is the message I've managed to put together.", "Quest1Complete")
	end
	
	AddConversationOption(conversation, "Not all of them.")
	StartConversation(conversation, NPC, Spawn, "Have you found more of the missing pieces?")
end

function Quest1Complete(NPC, Spawn)
	if HasQuest(Spawn, 50) then
		SetStepComplete(Spawn, 50, 8)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker006.mp3", "", "", 2475145114, 3569833047, Spawn)
	AddConversationOption(conversation, "In what way?", "dlg_2_2")
	AddConversationOption(conversation, "Not at the moment.")
	StartConversation(conversation, NPC, Spawn, "The Tunarian note is still incomplete, but this may be enough to advance our prestige," .. GetName(Spawn) .. ". You know, you're very good at this kind of thing. Tell me, would you be interested in helping me on a more personal level?")
end

-----------------------------------------------------------------------------------------------------------------------------------------------------------
--			QUEST 2
-----------------------------------------------------------------------------------------------------------------------------------------------------------

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker007.mp3", "", "", 3047126327, 3117887484, Spawn)
	AddConversationOption(conversation, "That's pretty unfortunate.", "dlg_2_3")
	StartConversation(conversation, NPC, Spawn, "As you know, I came here to make more of a name for myself.  When I return home, my marriage will take place.  I've been betrothed since birth to a lady from a good family.  The match will elevate my family's status.  Unfortunately, my betrothed has the face of a horse.")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker008.mp3", "", "", 103196051, 3322236068, Spawn)
	AddConversationOption(conversation, "What do you need me to do?", "dlg_2_4")
	AddConversationOption(conversation, "I'm sorry, but I can't help you.")
	StartConversation(conversation, NPC, Spawn, "Also, unfortunately, I've found myself unnaturally attracted to one of those Tunarian spies.  A wood elf...she's graceful, beautiful and deadly.  Nothing must come of this fancy of mine.  I cannot let my reputation be sullied by even the merest hint of a romance with one of their kind.")
end

function dlg_2_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker009.mp3", "", "", 2534306844, 3795442038, Spawn)
	AddConversationOption(conversation, "I'll take care of her.", "OfferQuest2")
	AddConversationOption(conversation, "I've got something else to take care of first.")
	StartConversation(conversation, NPC, Spawn, "Find Laena.  Kill her.  I'd do it myself, but I fear that seeing her again might weaken my resolve.  She could be anywhere on this island.  Once she's out of the way, I won't be tempted again and my family's honor will not be stained.  For all I know, she was put here specifically to entice men like me to falter.")
end


function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, 51)
end

function IsSheDead(NPC, Spawn, Choice)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker010.mp3", "", "", 2230888578, 3016454691, Spawn)
	
	if Choice == 1 then
		AddConversationOption(conversation, "Yes.  Do you want details?", "dlg_3_1")
	end
	
	AddConversationOption(conversation, "I'm still searching for the wench.")
	StartConversation(conversation, NPC, Spawn, "Is she...dead?")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker011.mp3", "", "", 3557914078, 266939946, Spawn)
	AddConversationOption(conversation, "To tell the truth, I don't know how she died.  She was dead when I found her.", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "I don't care for details.  I...just want to make sure she died with honor.")
end

function dlg_3_2(NPC, Spawn)
	SetStepComplete(Spawn, 51, 6)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker012.mp3", "", "", 4109402051, 786259154, Spawn)
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "I see.  I hadn't expected that.  The main thing is that Laena will no longer...bother me.  I wonder, though...who could've killed her?  We may never know...and I can marry my betrothed in peace. Thank you," .. GetName(Spawn) .. ".  ")
end

function NoteIncomplete(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker006.mp3", "", "", 2475145114, 3569833047, Spawn)
	AddConversationOption(conversation, "Not at the moment.")
	
	-- TEMPORARY, QUEST IS GIVEN BY EXAMINING A "PARCHMENT SCRAP"
	if not HasQuest(Spawn, 53) and not HasCompletedQuest(Spawn, 53) then
		AddConversationOption(conversation, "Because this quest is usually offered by examining a parchment in your inventory, you can temporary talk to me to get the quest.  Click this option to receive it.", "TempOfferQuest3")
	end
	
	if GetQuestStep(Spawn, 53) == 2 then
		SetStepComplete(Spawn, 53, 2)
	elseif GetQuestStep(Spawn, 53) == 4 then
		SetStepComplete(Spawn, 53, 4)
	end
	
	StartConversation(conversation, NPC, Spawn, "The Tunarian note is still incomplete, but this may be enough to advance our prestige," .. GetName(Spawn) .. ". You know, you're very good at this kind of thing. Tell me, would you be interested in helping me on a more personal level?")
end

-----------------------------------------------------------------------------------------------------------------------------------------------------------
--			QUEST 3
-----------------------------------------------------------------------------------------------------------------------------------------------------------

function TempOfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, 53)
end

function FoundMoreOfTheParchment(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	-- need playflavor
	AddConversationOption(conversation, "Yes, but something about it puzzles me.", "SomethingPuzzlesMe")
	AddConversationOption(conversation, "Huh?")
	StartConversation(conversation, NPC, Spawn, "What's that? You found more of the parchment?")
end

function SomethingPuzzlesMe(NPC, Spawn)
	SetStepComplete(Spawn, 53, 5)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker014.mp3", "", "", 4112615277, 2509927086, Spawn)
	AddConversationOption(conversation, "All right.  I'll see you there.")
	StartConversation(conversation, NPC, Spawn, "I can't speak of it here.  It is very important that we draw no attention to ourselves.  Meet me in the Wilderwood.  There's a shallow alcove known as 'the Nook' beyond the trees, along the northern wall.")
end

function WoodElvesVile(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1, 4)
	
	if choice == 1 then
		Say(NPC, "Those wood elf vixens are vile creatures who lure good men to their destruction!")
	elseif choice == 2 then
		Say(NPC, "Soon I'll be able to return home, with prestige and honor, thanks to you.")
	elseif choice == 3 then
		Say(NPC, "Once again, I'm in your debt.")
	elseif choice == 4 then
		Say(NPC, "I appreciate your help.")
	end
end


--[[
function dlg_6_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker007.mp3", "", "", 3047126327, 3117887484, Spawn)
	AddConversationOption(conversation, "That's pretty unfortunate.", "dlg_6_3")
	StartConversation(conversation, NPC, Spawn, "As you know, I came here to make more of a name for myself.  When I return home, my marriage will take place.  I've been betrothed since birth to a lady from a good family.  The match will elevate my family's status.  Unfortunately, my betrothed has the face of a horse.")
end

function dlg_6_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker008.mp3", "", "", 103196051, 3322236068, Spawn)
	AddConversationOption(conversation, "What do you need me to do?", "dlg_6_4")
	AddConversationOption(conversation, "I'm sorry, but I can't help you.")
	StartConversation(conversation, NPC, Spawn, "Also, unfortunately, I've found myself unnaturally attracted to one of those Tunarian spies.  A wood elf...she's graceful, beautiful and deadly.  Nothing must come of this fancy of mine.  I cannot let my reputation be sullied by even the merest hint of a romance with one of their kind.")
end

function dlg_6_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker009.mp3", "", "", 2534306844, 3795442038, Spawn)
	AddConversationOption(conversation, "I'll take care of her.", "dlg_6_5")
	AddConversationOption(conversation, "I've got something else to take care of first.")
	StartConversation(conversation, NPC, Spawn, "Find Laena.  Kill her.  I'd do it myself, but I fear that seeing her again might weaken my resolve.  She could be anywhere on this island.  Once she's out of the way, I won't be tempted again and my family's honor will not be stained.  For all I know, she was put here specifically to entice men like me to falter.")
end

function dlg_6_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker020.mp3", "", "", 3837612635, 962972593, Spawn)
	AddConversationOption(conversation, "Easy for you to say.", "dlg_6_6")
	StartConversation(conversation, NPC, Spawn, "There's no time like the present.")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker002.mp3", "", "", 1779982844, 2478664547, Spawn)
	AddConversationOption(conversation, "What kind of help do you need?", "dlg_8_2")
	AddConversationOption(conversation, "Not really.")
	StartConversation(conversation, NPC, Spawn, "Your reputation precedes you -- as will mine, someday soon.  When I return to Freeport, my prestige will bring honor to my family.  I came here to make a name for myself, but it's been difficult to stand out in the crowd.  I have a new assignment and it's puzzling me.  Would you help me unravel it?")
end

function dlg_8_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker003.mp3", "", "", 435953835, 2242560449, Spawn)
	AddConversationOption(conversation, "Certainly.", "dlg_8_3")
	AddConversationOption(conversation, "Good luck with that.")
	StartConversation(conversation, NPC, Spawn, "There's a lot of undercover work here, which means even if you do well, the higher-ups may not know it's you doing the work.  Some of my best work was claimed by someone else and I mean to fix that.  Not long ago, I intercepted part of a note one of the Tunarian spies was delivering.  They've hidden the remaining pieces.  We need to get them all back to learn more of what they're doing.")
end

function dlg_8_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker004.mp3", "", "", 1870656524, 1643000002, Spawn)
	AddConversationOption(conversation, "I'll see what I can find out.", "dlg_8_4")
	StartConversation(conversation, NPC, Spawn, "I appreciate it," .. GetName(Spawn) .. ".  Whatever glory comes of this, we'll share in the credit.  I'm sure this will more than make up for the work I've done that others have taken credit for.")
end

function dlg_8_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker021.mp3", "", "", 1916109124, 3504506765, Spawn)
	AddConversationOption(conversation, "I'll keep that in mind.", "dlg_8_5")
	StartConversation(conversation, NPC, Spawn, "A word of warning: be wary of those wood elves.  They're more cunning than others may realize.")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker011.mp3", "", "", 3557914078, 266939946, Spawn)
	AddConversationOption(conversation, "To tell the truth, I don't know how she died.  She was dead when I found her.", "dlg_9_2")
	StartConversation(conversation, NPC, Spawn, "I don't care for details.  I...just want to make sure she died with honor.")
end

function dlg_9_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker012.mp3", "", "", 4109402051, 786259154, Spawn)
	AddConversationOption(conversation, "You're welcome.", "dlg_9_3")
	StartConversation(conversation, NPC, Spawn, "I see.  I hadn't expected that.  The main thing is that Laena will no longer...bother me.  I wonder, though...who could've killed her?  We may never know...and I can marry my betrothed in peace. Thank you," .. GetName(Spawn) .. ".  ")
end

function dlg_24_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker006.mp3", "", "", 2475145114, 3569833047, Spawn)
	AddConversationOption(conversation, "In what way?", "dlg_24_2")
	AddConversationOption(conversation, "Not at the moment.")
	StartConversation(conversation, NPC, Spawn, "The Tunarian note is still incomplete, but this may be enough to advance our prestige," .. GetName(Spawn) .. ". You know, you're very good at this kind of thing. Tell me, would you be interested in helping me on a more personal level?")
end

function dlg_24_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker007.mp3", "", "", 3047126327, 3117887484, Spawn)
	AddConversationOption(conversation, "That's pretty unfortunate.", "dlg_24_3")
	StartConversation(conversation, NPC, Spawn, "As you know, I came here to make more of a name for myself.  When I return home, my marriage will take place.  I've been betrothed since birth to a lady from a good family.  The match will elevate my family's status.  Unfortunately, my betrothed has the face of a horse.")
end

function dlg_24_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker008.mp3", "", "", 103196051, 3322236068, Spawn)
	AddConversationOption(conversation, "What do you need me to do?", "dlg_24_4")
	AddConversationOption(conversation, "I'm sorry, but I can't help you.")
	StartConversation(conversation, NPC, Spawn, "Also, unfortunately, I've found myself unnaturally attracted to one of those Tunarian spies.  A wood elf...she's graceful, beautiful and deadly.  Nothing must come of this fancy of mine.  I cannot let my reputation be sullied by even the merest hint of a romance with one of their kind.")
end

function dlg_24_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker009.mp3", "", "", 2534306844, 3795442038, Spawn)
	AddConversationOption(conversation, "I'll take care of her.", "dlg_24_5")
	AddConversationOption(conversation, "I've got something else to take care of first.")
	StartConversation(conversation, NPC, Spawn, "Find Laena.  Kill her.  I'd do it myself, but I fear that seeing her again might weaken my resolve.  She could be anywhere on this island.  Once she's out of the way, I won't be tempted again and my family's honor will not be stained.  For all I know, she was put here specifically to entice men like me to falter.")
end

function dlg_24_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker020.mp3", "", "", 3837612635, 962972593, Spawn)
	AddConversationOption(conversation, "Easy for you to say.", "dlg_24_6")
	StartConversation(conversation, NPC, Spawn, "There's no time like the present.")
end

function dlg_27_1(NPC, Spawn)
	
end

function dlg_31_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker014.mp3", "", "", 4112615277, 2509927086, Spawn)
	AddConversationOption(conversation, "All right.  I'll see you there.", "dlg_31_2")
	StartConversation(conversation, NPC, Spawn, "I can't speak of it here.  It is very important that we draw no attention to ourselves.  Meet me in the Wilderwood.  There's a shallow alcove known as 'the Nook' beyond the trees, along the northern wall.")
end

function dlg_32_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker011.mp3", "", "", 3557914078, 266939946, Spawn)
	AddConversationOption(conversation, "To tell the truth, I don't know how she died.  She was dead when I found her.", "dlg_32_2")
	StartConversation(conversation, NPC, Spawn, "I don't care for details.  I...just want to make sure she died with honor.")
end

function dlg_32_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker012.mp3", "", "", 4109402051, 786259154, Spawn)
	AddConversationOption(conversation, "You're welcome.", "dlg_32_3")
	StartConversation(conversation, NPC, Spawn, "I see.  I hadn't expected that.  The main thing is that Laena will no longer...bother me.  I wonder, though...who could've killed her?  We may never know...and I can marry my betrothed in peace. Thank you," .. GetName(Spawn) .. ".  ")
end
--]]