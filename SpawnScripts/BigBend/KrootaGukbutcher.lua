--[[
	Script Name	: SpawnScripts/BigBend/KrootaGukbutcher.lua
	Script Purpose	: Kroota Gukbutcher <Ogre Mentor>
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: 
--]]

local OGRE = 12
local QUEST_1 = 165
local QUEST_2 = 166
local QUEST_3 = 167
local QUEST_4 = 168
local QUEST_5 = 169

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
	ProvidesQuest(NPC, QUEST_3)
	ProvidesQuest(NPC, QUEST_4)
	ProvidesQuest(NPC, QUEST_5)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			if HasCompletedQuest(Spawn, QUEST_3) then
				if HasCompletedQuest(Spawn, QUEST_4) then
					if HasCompletedQuest(Spawn, QUEST_5) then
						OnQuest5(NPC, Spawn, conversation)
					elseif HasQuest(Spawn, QUEST_5) then
						OnQuest5(NPC, Spawn, conversation)
					else
						ProvenToKeepSecrets(NPC, Spawn, conversation)
					end
				elseif HasQuest(Spawn, QUEST_4) then
					OnQuest4(NPC, Spawn, conversation)
				else
					TheseAreWhatWeNeeded(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn, QUEST_3) then
				OnQuest3(NPC, Spawn, conversation)
			else
				MoreNeededForCeremony(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, QUEST_2) then
			OnQuest2(NPC, Spawn, conversation)
		else
			JustYouGetPushedAround(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		if GetRace(Spawn) == OGRE then
			BadTime(NPC, Spawn, conversation)
		else
			NotOgre(NPC, Spawn, conversation)
		end
	end
end

function NotOgre(NPC, Spawn, conversation)
	AddConversationOption(conversation, "And I have no need to speak with you.")
	StartConversation(conversation, NPC, Spawn, "I have no time to waste on peasantries.")
end

--------------------------------------------------------------------------------------------------------------------------------
--									QUEST 1
--------------------------------------------------------------------------------------------------------------------------------

function BadTime(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher001.mp3", "", "", 3265176935, 3633009875, Spawn)
	AddConversationOption(conversation, "Why is this a bad time?", "dlg_38_1")
	AddConversationOption(conversation, "I will leave you now.")
	StartConversation(conversation, NPC, Spawn, "You have chosen to speak to Kroota at a bad time.")
end

function dlg_38_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher032.mp3", "", "", 108721550, 3476457472, Spawn)
	AddConversationOption(conversation, "You fight to praise Rallos?", "dlg_38_3")
	AddConversationOption(conversation, "Who is Rallos?", "dlg_38_2")
	AddConversationOption(conversation, "If the fight was so good, then why the temper now?", "dlg_38_4")
	StartConversation(conversation, NPC, Spawn, "I was praising Rallos with a good fight.  Hand to hand, we tore and hit.  Bones cracked, blood spilt.  It was glorious!")
end

function dlg_38_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher034.mp3", "", "", 2040298807, 528110736, Spawn)
	AddConversationOption(conversation, "Your fights praise Rallos?", "dlg_38_3")
	StartConversation(conversation, NPC, Spawn, "Rallos Zek is our god!  The mighty warlord that set us upon this world to sew justice and cull the weak. ")
end

function dlg_38_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher033.mp3", "", "", 3903011608, 1652274729, Spawn)
	AddConversationOption(conversation, "If the fight was so good, then why the temper now? ", "dlg_38_4")
	StartConversation(conversation, NPC, Spawn, "I gladly prove my strength and defeat the weak, in the name of our warlord god!  All was created in conflict, and it's end will come in conflict.")
end

function dlg_38_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher035.mp3", "", "", 2820031606, 1544534465, Spawn)
	AddConversationOption(conversation, "Fighting is punished? ", "dlg_38_5")
	StartConversation(conversation, NPC, Spawn, "There was warning of one 'err Lucan's enforcers coming through.  We had enough time to stop the fight, but not to hide the signs of it.  Captain Sorio saw the broken vases and blood stained dirt.  He knew we were fighting.")
end

function dlg_38_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher036.mp3", "", "", 467609233, 3129490057, Spawn)
	AddConversationOption(conversation, "What did he do? ", "dlg_38_6")
	StartConversation(conversation, NPC, Spawn, "It can be, and always will be, if the fight is giving praise to a god that is seen as a threat to those in power.  ")
end

function dlg_38_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher002.mp3", "", "", 4072542229, 1940121523, Spawn)
	AddConversationOption(conversation, "Then don't do it.", "dlg_39_6")
	AddConversationOption(conversation, "Trash cleaning is not above me, when it is made worth my while. ", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Sorio shamed me, and then charged me with the clean up of the rubbish that was left.  A stinky human told me to clean.  HA!  Ogres are above trash clean up, and above humans, too! ")
end

--[[function dlg_39_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher033.mp3", "", "", 3903011608, 1652274729, Spawn)
	AddConversationOption(conversation, "If the fight was so good, then why the temper now? ", "dlg_39_3")
	StartConversation(conversation, NPC, Spawn, "I gladly prove my strength and defeat the weak, in the name of our warlord god!  All was created in conflict, and it's end will come in conflict.")
end--]]

function dlg_39_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher003.mp3", "", "", 3742107652, 2525294944, Spawn)
	AddConversationOption(conversation, "Captain Sorio would kill you for not cleaning? ", "dlg_39_7")
	StartConversation(conversation, NPC, Spawn, "That would show 'em, but uh, it may also cause my death.  Captain Sorio kills those that do not do as he orders.  I don't know about you, but Kroota has more barshing in my future.  Ogres have survived too much to just let 'rselves be killed for stupid reasons. ")
end

function dlg_39_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher004.mp3", "", "", 2600931554, 3262055191, Spawn)
	AddConversationOption(conversation, "I wish not to die while under the heels of 'nferior races! ", "dlg_39_8")
	StartConversation(conversation, NPC, Spawn, "Sorio'd kill for that reason.  Sorio'd kill for any reason.  He's like an ogre, that way. ")
end

function dlg_39_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher005.mp3", "", "", 2504790110, 1538736293, Spawn)
	AddConversationOption(conversation, "Some coin would be useful. ", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Here, here!  You are much like Kroota.  My death will be in praise of Rallos!  Hmm.  I bet you need coin to spend in this worn down slum.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_1) < 3 then
		AddConversationOption(conversation, "I'll go now. Get my reward ready!")
		StartConversation(conversation, NPC, Spawn, "You better make sure the gate area is cleaned!")
	elseif GetQuestStep(Spawn, QUEST_1) == 3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher007.mp3", "", "", 2623092236, 75099415, Spawn)
		AddConversationOption(conversation, "Yes.  You said you were gonna' make it worth my while. ", "dlg_41_1")
		StartConversation(conversation, NPC, Spawn, "The gate area is cleaned?")
	end
end

function dlg_41_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 3)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher009.mp3", "", "", 2002919255, 713963471, Spawn)
	AddConversationOption(conversation, "Is it just you that Lucan's enforcers push around?", "JustYouGetPushedAround")
	AddConversationOption(conversation, "Do you have anything else I can do, for some more coin?", "dlg_43_8")
	StartConversation(conversation, NPC, Spawn, "Kroota is no troll!  My word to you was good.  Now Lucan's enforcer will have to find another reason to push this ogre around.")
end

-------------------------------------------------------------------------------------------------------------------------------------------
--											QUEST 2
-------------------------------------------------------------------------------------------------------------------------------------------

function JustYouGetPushedAround(NPC, Spawn, conversation)
	if conversation == nil then
		FaceTarget(NPC, Spawn)
		conversation = CreateConversation()
	end
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher010.mp3", "", "", 208115148, 3916212987, Spawn)
	AddConversationOption(conversation, "Our brethren serve in the army?", "dlg_42_1")
	StartConversation(conversation, NPC, Spawn, "Lucan's enforcers abuse all Ogres...and trolls...and Iksar.  'Err, all of us not human.  'Cept those that join Lucan's army.  They're not pushed 'round as much.")
end

function dlg_42_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher037.mp3", "", "", 2583743198, 2818957735, Spawn)
	AddConversationOption(conversation, "Seems a good arrangement, as long as you are willing to do as told.", "dlg_42_2")
	StartConversation(conversation, NPC, Spawn, "Yes.  We would not be 'llowed to live in Freeport if it were not for those that fight in Lucan's army.  The army is a good place to strengthen and prove oneself, so many want to join.")
end

function dlg_42_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher038.mp3", "", "", 1150147485, 3675078980, Spawn)
	AddConversationOption(conversation, "What treachery? ", "dlg_43_3")
	AddConversationOption(conversation, "I hide no treachery.", "dlg_42_3")
	StartConversation(conversation, NPC, Spawn, "That is key.  Do what you're told, no matter if you are in the army or not, so that none suspects the treachery that lurks within you.  ")
end

function dlg_42_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher040.mp3", "", "", 1406797368, 434503538, Spawn)
	AddConversationOption(conversation, "Especially, when it benefits us.", "dlg_42_4")
	StartConversation(conversation, NPC, Spawn, "Of course not!  All of us Ogres are honorable, and have given our word to serve The Overlord!")
end

function dlg_42_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher041.mp3", "", "", 2015996407, 2753891411, Spawn)
	AddConversationOption(conversation, "Isn't Rallos Zek gone, like the other gods? ", "dlg_43_4")
	StartConversation(conversation, NPC, Spawn, "That which benefits us, brings glory to Rallos Zek.")
end

function dlg_43_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher039.mp3", "", "", 2748327063, 2585235468, Spawn)
	AddConversationOption(conversation, "Isn't Rallos Zek gone, like the other gods? ", "dlg_43_4")
	StartConversation(conversation, NPC, Spawn, "The burning of your blood to cause mayhem and strife.  You cannot deny the reason Rallos Zek put us here, as it lies within us all.")
end

function dlg_43_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher042.mp3", "", "", 2135603587, 4171746820, Spawn)
	AddConversationOption(conversation, "What green mist? ", "dlg_43_5")
	AddConversationOption(conversation, "You think we will rise up, once more?", "dlg_43_7")
	StartConversation(conversation, NPC, Spawn, "The other gods were weak, and have fled or were slain, but Rallos is still here.  He proved he was, as he 'nsured our survival from the Green Mist.  He must be hiding and biding his time 'til we can raise up under his name, once more.")
end

function dlg_43_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher043.mp3", "", "", 1623693908, 3453204828, Spawn)
	AddConversationOption(conversation, "What was it?", "dlg_43_6")
	StartConversation(conversation, NPC, Spawn, "The Green Mist that brought about the defeat of the Rallosian army just as we were on the verge of world domination.  Most of the world was under our heel.  Qeynos and Freeport were crumbling.  Then the mist came through, and decimated our ranks.")
end

function dlg_43_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher044.mp3", "", "", 102047294, 1266054303, Spawn)
	AddConversationOption(conversation, "You think we will rise up, once more?", "dlg_43_7")
	StartConversation(conversation, NPC, Spawn, "I do not know.  I know it killed all in it's path.  Ogre and Orc alike.  Only those in very remote areas of the world survived it.")
end

function dlg_43_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher011.mp3", "", "", 3527113211, 3377368598, Spawn)
	AddConversationOption(conversation, "When the time comes, we rise up.  The sounds of bones snapping and flesh screaming will be glory to Rallos Zek. ", "dlg_43_8")
	StartConversation(conversation, NPC, Spawn, "Do not question it!  The humans may have forgotten our past, but don't you forget!  Twice our god has used us as his army and brought about the annihilation and subjugation of the masses.")
end

function dlg_43_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher012.mp3", "", "", 1473927549, 3333840448, Spawn)
	AddConversationOption(conversation, "What can I do to bring glory to Rallos? ", "OfferQuest2")
	AddConversationOption(conversation, "I will return later, when I am able to better serve.")
	StartConversation(conversation, NPC, Spawn, "Are you willing to help us praise our god, today?  The last ceremony was 'nterrupted, as you know.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function OnQuest2(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_2) == 1 then
		AddConversationOption(conversation, "I'll be back with the carcasses.")
		StartConversation(conversation, NPC, Spawn, "You do not have enough rodent carcasses for the ceremony.")
	elseif GetQuestStep(Spawn, QUEST_2) == 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher015.mp3", "", "", 1190787856, 3202785791, Spawn)
		AddConversationOption(conversation, "Yes, but I do not know how you plan to use these.  There is little left of their bodies for use in a ceremony. ", "dlg_44_1")
		StartConversation(conversation, NPC, Spawn, "You have returned with the rat carcasses?")
	end
end

function dlg_44_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher046.mp3", "", "", 355888102, 1264655857, Spawn)
	AddConversationOption(conversation, "Ratonga?!", "dlg_44_2")
	StartConversation(conversation, NPC, Spawn, "Lucan's soul!  How hard are you smashing ratonga to have little left of their bodies? ")
end

function dlg_44_2(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_2, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher047.mp3", "", "", 1978555752, 3838216891, Spawn)
	AddConversationOption(conversation, "Oh, good.", "MoreNeededForCeremony")
	StartConversation(conversation, NPC, Spawn, "Haa haa haa.  Yes, they are the vermin I had meant for you to barsh, but I think these can still be used. ")
end

--------------------------------------------------------------------------------------------------------------------------------------------------
--												QUEST 3
--------------------------------------------------------------------------------------------------------------------------------------------------

function MoreNeededForCeremony(NPC, Spawn, conversation)
	if conversation == nil then
		FaceTarget(NPC, Spawn)
		conversation = CreateConversation()
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher016.mp3", "", "", 529474785, 1839567898, Spawn)
	AddConversationOption(conversation, "What do you need? ", "dlg_44_4")
	AddConversationOption(conversation, "I am busy now, perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "There is more needed for the ceremony to praise Rallos.  If you assist me, I will make it worth your time. ")
end

function dlg_44_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher017.mp3", "", "", 1432372035, 3833716814, Spawn)
	AddConversationOption(conversation, "What should I hunt for the flesh and blood?", "OfferQuest3")
	StartConversation(conversation, NPC, Spawn, "The fume and fire ceremony is one that requires many sacrifices.  Blood of his enemies, flesh of the inferior, and incense.")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_3)
end

function OnQuest3(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_3) <= 6 or GetQuestStep(Spawn, QUEST_3) == 8 then
		AddConversationOption(conversation, "I will return when I have them.")
		StartConversation(conversation, NPC, Spawn, "Where's the ceremony items? You don't have them!")
	elseif GetQuestStep(Spawn, QUEST_3) == 7 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher048.mp3", "", "", 3183737106, 890782171, Spawn)
		AddConversationOption(conversation, "No.  That Troll woman is demanding silver for it. ", "dlg_51_1")
		StartConversation(conversation, NPC, Spawn, "Do you have the incense?")
	elseif GetQuestStep(Spawn, QUEST_3) == 9 then
		SetStepComplete(Spawn, QUEST_3, 9)
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher022.mp3", "", "", 3351795845, 308516535, Spawn)
		AddConversationOption(conversation, "Thank you.", "TheseAreWhatWeNeeded")
		StartConversation(conversation, NPC, Spawn, "You have brought back the incense, blood, and skins.  You are good!")
	end
end

function dlg_51_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher051.mp3", "", "", 3241586378, 1169992703, Spawn)
	AddConversationOption(conversation, "What should we do?", "dlg_51_2")
	StartConversation(conversation, NPC, Spawn, "It is a necessary part of the ceremony, as it symbolizes the destruction wrought in Rallos' name, and carries the stench of death to his hiding place for his 'njoyment. ")
end

function dlg_51_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher049.mp3", "", "", 3661999476, 2150102093, Spawn)
	AddConversationOption(conversation, "What do they prize? ", "dlg_51_3")
	StartConversation(conversation, NPC, Spawn, "Trolls have no sense of 'n object's worth to others.  The key to paying a troll, 'specially Crattok, is to give 'em something they think is worth their money. ")
end

function dlg_51_3(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_3, 7)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher050.mp3", "", "", 1650066431, 2024099266, Spawn)
	AddConversationOption(conversation, "Good.  I would rather spend my coin, how I like.")
	StartConversation(conversation, NPC, Spawn, "Food.  Your rat carcasses have come in useful! ")
end

---------------------------------------------------------------------------------------------------------------------------------
--									QUEST 4
---------------------------------------------------------------------------------------------------------------------------------

function TheseAreWhatWeNeeded(NPC, Spawn, conversation)
	if conversation == nil then
		FaceTarget(NPC, Spawn)
		conversation = CreateConversation()
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher023.mp3", "", "", 908775135, 4103882964, Spawn)
	AddConversationOption(conversation, "That depends on what is expected of me.", "dlg_54_1")
	AddConversationOption(conversation, "Yes.  My body is Rallos' weapon of destruction.", "dlg_53_2")
	AddConversationOption(conversation, "No.")
	StartConversation(conversation, NPC, Spawn, "These are what we needed!  Now we can perform the ceremony to glorify Rallos Zek!  I would like you to be 'nvolved further.")
end

function dlg_53_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher053.mp3", "", "", 1170038578, 2696733239, Spawn)
	AddConversationOption(conversation, "You are not going to be there?", "dlg_56_2")
	StartConversation(conversation, NPC, Spawn, "Spoken like a true follower of Rallos.  You are perfect to fulfill my duties at this tribute.")
end

function dlg_56_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher054.mp3", "", "", 463641082, 4194162185, Spawn)
	
	if HasQuest(Spawn, QUEST_4) then
		AddConversationOption(conversation, "What items?", "WhatItems")
	else
		AddConversationOption(conversation, "What should I do to help?", "OfferQuest4")
	end
	
	StartConversation(conversation, NPC, Spawn, "No.  I am not going to be involved, myself.  I fear my presence will cause more unwanted attention.")
end

function dlg_54_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher024.mp3", "", "", 3740108603, 543623500, Spawn)
	AddConversationOption(conversation, "I am worried of my future in Freeport, and do not wish to find trouble with Captain Sorio.", "dlg_54_2")
	StartConversation(conversation, NPC, Spawn, "You do not wish to do all you can to venerate our warlord god?!")
end

function dlg_54_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher052.mp3", "", "", 1795144355, 1500995803, Spawn)
	
	if HasQuest(Spawn, QUEST_4) then
		AddConversationOption(conversation, "What items?", "WhatItems")
	else
		AddConversationOption(conversation, "Go on.", "OfferQuest4")
	end
	AddConversationOption(conversation, "Sounds too risky for me.")
	StartConversation(conversation, NPC, Spawn, "Hmm.  I understand.  That is why I am not going to be 'nvolved, myself.  This tribute is gonna be much more sneaky.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_4)
end

function WhatItems(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_4, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	-- Blood of Rallos' Enemies
	if not HasItem(Spawn, 3830) then
		SummonItem(Spawn, 3830)
	end
	
	-- Incense
	if not HasItem(Spawn, 7105) then
		SummonItem(Spawn, 7105)
	end
	
	-- Skins of the Inferior
	if not HasItem(Spawn, 11154) then
		SummonItem(Spawn, 11154)
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher058.mp3", "", "", 3108767778, 618795226, Spawn)
	AddConversationOption(conversation, "I will not disappoint.")
	StartConversation(conversation, NPC, Spawn, "The blood, skin and incense that you had collected earlier to honor Rallos Zek.  Take them to Somdoq.")
end

function OnQuest4(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_4) == 1 then
		TheseAreWhatWeNeeded(NPC, Spawn, conversation)
	elseif GetQuestStep(Spawn, QUEST_4) >= 2 and GetQuestStep(Spawn, QUEST_4) <= 6 then
		AddConversationOption(conversation, "I have forgotten where he is.", "ForgottenWhereIs")
		StartConversation(conversation, NPC, Spawn, "Somdoq is waiting for you.")
	elseif GetQuestStep(Spawn, QUEST_4) == 7 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher056.mp3", "", "", 3672867855, 2947104449, Spawn)
		AddConversationOption(conversation, "No.", "dlg_68_1")
		StartConversation(conversation, NPC, Spawn, "You're back!  Was there any trouble at the ceremony?")
	end
end

function ForgottenWhereIs(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "You will find Somdoq in the Western most room in the alleys of Big Bend. Close to the gates that lead to the Sprawl.")
end

function dlg_68_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher057.mp3", "", "", 3192900428, 1993373543, Spawn)
	AddConversationOption(conversation, "They will be put to good use at sometime.", "ProvenToKeepSecrets")
	StartConversation(conversation, NPC, Spawn, "Good.  You did not perform this task with a promise of reward, but I find you deserving, as a fellow child of Rallos.  Take these. They may help you bring victory on the battlefield.")
end

function ProvenToKeepSecrets(NPC, Spawn, conversation)
	if HasQuest(Spawn, QUEST_4) then
		SetStepComplete(Spawn, QUEST_4, 7)
	end
	
	if conversation == nil then
		FaceTarget(NPC, Spawn)
		conversation = CreateConversation()
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher027.mp3", "", "", 4152035504, 2450580515, Spawn)
	AddConversationOption(conversation, "I can follow the orders of Lucan's Enforcers, while the death and destruction I cause will bring delight to Rallos.", "dlg_68_3")
	StartConversation(conversation, NPC, Spawn, "You have proven that you can keep our secrets.  I 'xplained before how we must hide our true devotions, as we work with Lucan's army.  You can do this.")
end

------------------------------------------------------------------------------------------------------------------------------
--											QUEST 5
------------------------------------------------------------------------------------------------------------------------------

function dlg_68_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher029.mp3", "", "", 4272152175, 2492136668, Spawn)
	AddConversationOption(conversation, "I will go see this Enforcer Kurdek then.", "OfferQuest5")
	AddConversationOption(conversation, "I do not have time to see anyone else, I have my own things to do.")
	StartConversation(conversation, NPC, Spawn, "'Xactly!  Go see Enforcer Kurdek in the Sprawl to start yer service.  Any suspicion of your involvement wit' me will be calmed when you volunteer to work for him.")
end

function OfferQuest5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_5)
end

function OnQuest5(NPC, Spawn, conversation)
	PlayFlavor(NPC, "", "", "cheer", 0, 0, Spawn)
	AddConversationOption(conversation, "And the victors of war!")
	StartConversation(conversation, NPC, Spawn, "Glory to Rallos Zek!")
end
