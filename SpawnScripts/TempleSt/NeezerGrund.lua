--[[
	Script Name	: SpawnScripts/TempleSt/NeezerGrund.lua
	Script Purpose	: Neezer Grund <Gnome Mentor>
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
QUEST_1 = 199
QUEST_2 = 200

RATONGA = 13
local RATONGA_MENTOR_QUEST_1 = 143

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			if HasCompletedQuest(Spawn, QUEST_3) then
			--------------------------------------------------------
			end
		elseif HasQuest(Spawn, QUEST_2) then
			if GetQuestStep(Spawn, QUEST_2) == 7 then
				Parts(NPC, Spaw)
		elseif HasQuest(Spawn, QUEST_2) then
			if GetQuestStep(spawn, QUEST_2) == 8 then
				Pig(NPC, Spawn)
			end
		else
			dlg_1_10(NPC,Spawn)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		HavePowder(NPC, Spawn)
	elseif HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 4 then
	else
		dlg_0_0(NPC, Spawn)
	end
end
--[[
	Script Name	: SpawnScripts/TempleSt/NeezerGrund.lua
	Script Purpose	: Neezer Grund <Gnome Mentor>
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
QUEST_1 = 199
QUEST_2 = 200

RATONGA = 13
local RATONGA_MENTOR_QUEST_1 = 143

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
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
			--------------------------------------------------------
			end
		elseif HasQuest(Spawn, QUEST_2) then
			if GetQuestStep(Spawn, QUEST_2) == 7 then
				Parts(NPC, Spaw)
		elseif HasQuest(Spawn, QUEST_2) then
			if GetQuestStep(spawn, QUEST_2) == 8 then
				Pig(NPC, Spawn)
			end
		else
			dlg_1_10(NPC,Spawn)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		HavePowder(NPC, Spawn)
	elseif HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 4 then
	else
		dlg_0_0(NPC, Spawn)
		end
	end
end
	
	--[[if HasQuest(Spawn, RATONGA_MENTOR_QUEST_1) and GetQuestStep(Spawn, RATONGA_MENTOR_QUEST_1) == 3 then
		-- also display before next quest
		RatongaMentorQuest(NPC, Spawn, conversation)
	end--]]
	
	--[[Hailed responses

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/qst_neezer_grund_blastingtwo_2c0e8052.mp3", "Don't be afraid... the high quality parts will certainly almost probably stop any explosions.", "", 652571017, 367300687, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/qst_neezer_grund_blasting_610b5248.mp3", "Come now, place the blasting capsule in the translation device.", "", 3007812352, 3808878638, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/qst_neezer_grund_notonquest_f19aeb36.mp3", "Our proximity concerns me.", "", 1049236413, 2313040785, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/qst_neezer_grund_translating_cc4f0d5a.mp3", "I'm quite busy, I'll be free in just a moment or two!", "", 955771039, 458972401, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer000.mp3", "", "", 1064443430, 1657973609, Spawn)
	AddConversationOption(conversation, "What if none of them are correct?", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "I have so many amazing theories and only one has to be correct for my name to go down in history!")
	if convo==1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer000.mp3", "", "", 1064443430, 1657973609, Spawn)
		AddConversationOption(conversation, "What if none of them are correct?", "dlg_1_1")
		StartConversation(conversation, NPC, Spawn, "I have so many amazing theories and only one has to be correct for my name to go down in history!")
	end

	if convo==2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer000.mp3", "", "", 1064443430, 1657973609, Spawn)
		AddConversationOption(conversation, "What if none of them are correct?", "dlg_2_1")
		StartConversation(conversation, NPC, Spawn, "I have so many amazing theories and only one has to be correct for my name to go down in history!")
	end

	if convo==3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer000.mp3", "", "", 1064443430, 1657973609, Spawn)
		AddConversationOption(conversation, "What if none of them are correct?", "dlg_3_1")
		StartConversation(conversation, NPC, Spawn, "I have so many amazing theories and only one has to be correct for my name to go down in history!")
	end

	if convo==4 then

	end

	if convo==5 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/ratonga_neezer_grund001.mp3", "", "", 2684720516, 1780605878, Spawn)
		AddConversationOption(conversation, "Um... does that mean you won't be able to help me?", "dlg_5_1")
		AddConversationOption(conversation, "I'd better go.")
		StartConversation(conversation, NPC, Spawn, "I may have figured it out... Gnomes ARE machines!")
	end

	if convo==6 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/ratonga_neezer_grund008.mp3", "", "", 3607506094, 2869789771, Spawn)
		AddConversationOption(conversation, "No, not yet.", "dlg_6_1")
		StartConversation(conversation, NPC, Spawn, "Have you collected the glands?")
	end

	if convo==26 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer012.mp3", "", "", 3753422322, 2761264411, Spawn)
		AddConversationOption(conversation, "Yes, here it is.", "dlg_26_1")
		StartConversation(conversation, NPC, Spawn, "Do you have the powder?")
	end

	if convo==27 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer014.mp3", "", "", 1941489242, 2412694288, Spawn)
		AddConversationOption(conversation, "You knew that was going to happen?", "dlg_27_1")
		StartConversation(conversation, NPC, Spawn, "Wow! That was exactly what I had expected to happen.")
	end

	if convo==30 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer017.mp3", "", "", 246977036, 964620595, Spawn)
		AddConversationOption(conversation, "Yes, here they are.", "dlg_30_1")
		StartConversation(conversation, NPC, Spawn, "Did you get all of the replacement parts?")
	end

	if convo==31 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer019.mp3", "", "", 1013796389, 2474357354, Spawn)
		AddConversationOption(conversation, "With what?", "dlg_31_1")
		StartConversation(conversation, NPC, Spawn, "Hah-hah! It worked, it worked! This is great! Now we just need to test it.")
	end

	if convo==32 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer021.mp3", "", "", 1272003205, 2928185130, Spawn)
		AddConversationOption(conversation, "No, not yet.", "dlg_32_1")
		StartConversation(conversation, NPC, Spawn, "Did you get the pig?")
	end

	if convo==35 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer021.mp3", "", "", 1272003205, 2928185130, Spawn)
		AddConversationOption(conversation, "Yes, here it is.", "dlg_35_1")
		StartConversation(conversation, NPC, Spawn, "Did you get the pig?")
	end

	if convo==36 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer023.mp3", "", "", 3023506555, 2115890375, Spawn)
		AddConversationOption(conversation, "What happened to it?", "dlg_36_1")
		StartConversation(conversation, NPC, Spawn, "WOW! I did not expect that to happen. This is amazing.")
	end

	if convo==40 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer029.mp3", "", "", 2272871201, 1537695095, Spawn)
		AddConversationOption(conversation, "Ok, I'll find the pig for you.", "dlg_40_1")
		StartConversation(conversation, NPC, Spawn, "You've got to help! The pig escaped! It killed some ratonga and then took off. This could ruin me! They will throw me in jail or execute me! You need to find him, find the pig, and kill him or capture him. I don't think you can capture him, he's a wild beast! You need to kill him!")
	end

	if convo==41 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer031.mp3", "", "", 3051236940, 593094236, Spawn)
		AddConversationOption(conversation, "No, I haven't found it yet.", "dlg_41_1")
		StartConversation(conversation, NPC, Spawn, "Did you stop the pig yet?")
	end

	if convo==43 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer031.mp3", "", "", 3051236940, 593094236, Spawn)
		AddConversationOption(conversation, "Yes, it is dead.", "dlg_43_1")
		StartConversation(conversation, NPC, Spawn, "Did you stop the pig yet?")
	end--]]

--[[
--------------------------------------------------------------------------------------------------------------
--				RATONGA MENTOR QUEST 1
--------------------------------------------------------------------------------------------------------------

function RatongaMentorQuest(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/ratonga_neezer_grund001.mp3", "", "", 2684720516, 1780605878, Spawn)
	AddConversationOption(conversation, "Um... does that mean you won't be able to help me?", "dlg_5_1")
	AddConversationOption(conversation, "I'd better go.")
	StartConversation(conversation, NPC, Spawn, "I may have figured it out... Gnomes ARE machines!")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/ratonga_neezer_grund002.mp3", "", "", 2029719873, 2086091326, Spawn)
	AddConversationOption(conversation, "I have some hair samples and claw fragments that I'd like you to run some tests on.", "dlg_5_2")
	StartConversation(conversation, NPC, Spawn, "Machines are very efficient. I could probably help everybody... at the same time! What do you need?")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/ratonga_neezer_grund003.mp3", "", "", 3775446221, 295496669, Spawn)
	AddConversationOption(conversation, "I need you to test for two things. First, any information about dust and particles on the fur to determine how long the ratonga has been in Freeport for.", "dlg_5_3")
	StartConversation(conversation, NPC, Spawn, "Tests? I absolutely love tests. What do you need?")
end

function dlg_5_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/ratonga_neezer_grund004.mp3", "", "", 2294065134, 42867786, Spawn)
	AddConversationOption(conversation, "Any hint of disease you can find.", "dlg_5_4")
	StartConversation(conversation, NPC, Spawn, "And second?")
end

function dlg_5_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/ratonga_neezer_grund005.mp3", "", "", 2374280096, 2852299362, Spawn)
	AddConversationOption(conversation, "Here is some money.", "dlg_5_5")
	StartConversation(conversation, NPC, Spawn, "All right. These tests can be done, but they aren't cheap. I'll need something from you in exchange for these tests.")
end

function dlg_5_5(NPC, Spawn)
	if HasQuest(Spawn, RATONGA_MENTOR_QUEST_1) then
		SetStepComplete(Spawn, RATONGA_MENTOR_QUEST_1, 3)
	end

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/ratonga_neezer_grund006.mp3", "", "", 2771043254, 4155432724, Spawn)
	AddConversationOption(conversation, "Sure.", "dlg_5_6")
	StartConversation(conversation, NPC, Spawn, "Ah, yes. Here is your change. But there is a non-monetary payment: the acid glands that produce the acidic compound I use as a catalyst come from the little devils that run around this place and hide in our garbage. Filth gobblers is what we call 'em. I need some glands collected. Think you can do this for me?")
end

--------------------------------------------------------------------------------------------------------------
--				RATONGA MENTOR QUEST 2
--------------------------------------------------------------------------------------------------------------

function dlg_5_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/ratonga_neezer_grund007.mp3", "", "", 3259263183, 1723452651, Spawn)
	AddConversationOption(conversation, "I can do this.", "OfferRatongaQuest2")
	StartConversation(conversation, NPC, Spawn, "Good. They generally sleep in the garbage piles that are strewn about Temple Street. I'm sure you can rouse one--or six, I need six glands--by poking around in some garbage. By the time you have collected the glands I should be done with the tests you requested.")
end

function OfferRatongaQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	--OfferQuest(NPC, Spawn, RATONGA_QUEST_2)
end

function dlg_5_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/ratonga_neezer_grund007a.mp3", "", "", 3729599538, 4025692399, Spawn)
	AddConversationOption(conversation, "I will return.", "dlg_5_8")
	StartConversation(conversation, NPC, Spawn, "Great! I'll be right here when you're done.")
end

--]]
function dlg_0_0(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer000.mp3", "", "", 1064443430, 1657973609, Spawn)
	AddConversationOption(conversation, "What if none of them are correct?", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "I have so many amazing theories and only one has to be correct for my name to go down in history!")
end
	
function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer001.mp3", "", "", 2185904706, 697636844, Spawn)
	AddConversationOption(conversation, "So your goal in life is to go down in history?", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Then maybe I'll go down in history for having the most amazing theories!")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer002.mp3", "", "", 952020039, 816626458, Spawn)
	AddConversationOption(conversation, "Yeah, I know.", "dlg_0_4")
	AddConversationOption(conversation, "No, I don't know.", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "Not really. I don't have any long-term goals. Short term, however, I just wanna keep learning. It doesn't really matter what I'm doing, so long as it's an opportunity to discover new things. It's the gnome in me, you know?")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer003.mp3", "", "", 4127517684, 2567427060, Spawn)
	AddConversationOption(conversation, "Ah, then I know what you mean.", "dlg_0_4 ")
	AddConversationOption(conversation, "I've never felt that.")
	StartConversation(conversation, NPC, Spawn, "Of course you know, you just don't know it yet. It's that little pull you feel inside you every time you pass something that works in a mysterious way. It's the desire you have to break things apart and put them back together.")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer006.mp3", "", "", 980408376, 3201642943, Spawn)
	AddConversationOption(conversation, "I'll help.", "dlg_1_5")
	AddConversationOption(conversation, "I'd like to head away from Temple Street, where the adventure is.", "dlg_SunkenCity")
	StartConversation(conversation, NPC, Spawn, "Good. Then you won't turn down my offer, how would you like to hang around Temple Street for a while and help me out? You might learn a few new things, and I could certainly use an extra pair of arms. If not, I know some other places you can go, where more adventure might be.")
end

function dlg_SunkenCity(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer005.mp3", "", "", 3028297950, 2047960092, Spawn)
	AddConversationOption(conversation, "All right, thank you.")
	AddConversationOption(conversation, "I changed my mind, I would like to help you here in Temple Street.", "dlg_1_5")
	StartConversation(conversation, NPC, Spawn, "All right, then I know where to send you. Go to speak with Inquisitor Thorson in the Sunken City. He'll be able to get you started on your adventure!")
end

------------------------------------------------------------------------------------------------------------------------------------------------------------
--GNOME QUEST 1---------------------------------------------------------------------------------------------------------------------------------------------
function dlg_1_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer007.mp3", "", "", 3178893097, 2748396183, Spawn)
	AddConversationOption(conversation, "What is it?", "dlg_1_6")
	StartConversation(conversation, NPC, Spawn, "Great! I'm working on a very important device right now, it may change the way we do... everything!")
end

function dlg_1_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer008.mp3", "", "", 1939855840, 1728224176, Spawn)
	AddConversationOption(conversation, "You hope?", "dlg_1_7")
	StartConversation(conversation, NPC, Spawn, "I don't have a name for it yet, I just know what it will do. It's a translation device. It will, I hope, transfer objects from one point to another point instantly.")
end

function dlg_1_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer009.mp3", "", "", 2068012557, 4069282289, Spawn)
	AddConversationOption(conversation, "So you're expecting it to fail?", "dlg_1_8")
	AddConversationOption(conversation, "It worked but didn't?")
	StartConversation(conversation, NPC, Spawn, "Well, I haven't finished it until just now. And I still haven't tested it. No invention works the first time, that never happens. The last time I made a translation device it worked the first time... but it also... didn't.")
end

function dlg_1_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer010.mp3", "", "", 4102027768, 3624664445, Spawn)
	AddConversationOption(conversation, "Sure, I'll help. What do I need to do?", "OfferQuest1")
	AddConversationOption(conversation, "Not a chance.")
	StartConversation(conversation, NPC, Spawn, "Perhaps catastrophically so! I need you to help me gather the last of what I need to fire it up, what do you say?")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function HavePowder(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer012.mp3", "", "", 3753422322, 2761264411, Spawn)
		AddConversationOption(conversation, "Yes, here it is.", "dlg_1_9")
		StartConversation(conversation, NPC, Spawn, "Do you have the powder?")
	
	elseif HasQuest(Spawn, QUEST_1) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer012.mp3", "", "", 3753422322, 2761264411, Spawn)
		AddConversationOption(conversation, "No, not yet")
		StartConversation(conversation, NPC, Spawn, "Do you have the powder?")
	end
end

function dlg_1_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	
	SetStepComplete(Spawn, QUEST_1, 2) 
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer013.mp3", "", "", 1001313127, 3828519249, Spawn)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "Great, I'll just put this in the blasting cap. Ah, there we go. Now, take this blasting cap and put it in the main-control right here. ")
end

function Quest1End(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, QUEST_1, 4)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer014.mp3", "", "", 1941489242, 2412694288, Spawn)
	AddConversationOption(conversation, "You knew that was going to happen?", "dlg_1_10")
	StartConversation(conversation, NPC, Spawn, "Wow! That was exactly what I had expected to happen.")
end
---Gnome Quest 2 --------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function dlg_1_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer015.mp3", "", "", 963936177, 441290953, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "Yeah, I didn't build this with very high quality parts. Mostly stuff I found on the streets. I'll work on rebuilding the blast capsule. You can help by collecting some higher quality parts, what do you say?")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function dlg_2_0(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer016.mp3", "", "", 1141884265, 1772243009, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_2_1")
	StartConversation(conversation, NPC, Spawn, "Wonderful. I'll need a hyper-organic suppressor, which--if my sources are correct--can be found in shipment C68F near the gates to South Freeport. I'll also need a high-quality arcanic tracer and a dongle-sweep particle buoy. Qwergo and Twergo Togglesmeet in the small area in the western corner of the central area of Temple Street sell these items.")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer016a.mp3", "", "", 332474193, 3438624410, Spawn)
	AddConversationOption(conversation, "All right, I will return.")
	StartConversation(conversation, NPC, Spawn, "Once you have these items we should be able to get back to work.")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer018.mp3", "", "", 1114976010, 3577030997, Spawn)
	AddConversationOption(conversation, "Ok.", "dlg_2_3")
	AddConversationOption(conversation, "This better work.")
	StartConversation(conversation, NPC, Spawn, "Wonderful! Here is the new blasting capsule. These repairs will only take a second longer... there we go! All right, let's try this again, shall we? Put the blasting capsule in the translation device when you're ready and it'll power up.")
end

function dlg_31_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer020.mp3", "", "", 2891679745, 2404642843, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_31_2")
	StartConversation(conversation, NPC, Spawn, "I know exactly what with. I have a friend who owes me a favor, Frondo Wignin. He sells pigs by those gates that were shut down by the Overlord, in south-western Temple Street. Go see him, tell him I want a pig. Then bring the pig back to me.")
end

function dlg_35_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer022.mp3", "", "", 447570827, 3590173439, Spawn)
	AddConversationOption(conversation, "Ok.", "dlg_35_2")
	StartConversation(conversation, NPC, Spawn, "No, don't give it to me. It's filthy! Put it in this cage here when you're ready and I'll start the process!")
end
--- starts More Money -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function dlg_36_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer024.mp3", "", "", 3385551552, 868280340, Spawn)
	AddConversationOption(conversation, "Why is this perfect? Your device failed.", "dlg_36_2")
	StartConversation(conversation, NPC, Spawn, "Bad translation. Wow, look at it. This is great, this is perfect!")
end

function dlg_36_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer025.mp3", "", "", 477122328, 3891671601, Spawn)
	AddConversationOption(conversation, "Yes.", "dlg_36_3")
	StartConversation(conversation, NPC, Spawn, "It didn't fail, it worked beyond my wildest expectations! People would pay HUGE for pigs like this. Their military application alone is substantial. I need you to go see some potential buyers for me while I try to figure out what happened. Can you do this?")
end

function dlg_36_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer026.mp3", "", "", 838555551, 3086722146, Spawn)
	AddConversationOption(conversation, "Ok.", "dlg_36_4")
	StartConversation(conversation, NPC, Spawn, "Great. Speak with Malyk, he's a ratonga who hides out in a small room just north after you leave the docks here. Also speak with Malvir Destrin, he should be near the gates to South Freeport inspecting packages and looking for anything worth buying. Finally, speak with Darsus Tavalin who I believe hangs out in the north-eastern corner of the central area of Temple Street.")
end

function dlg_36_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer026a.mp3", "", "", 1174644756, 2228180387, Spawn)
	AddConversationOption(conversation, "I will get their offers and return.", "dlg_36_5")
	StartConversation(conversation, NPC, Spawn, "If they don't give you exact figures that's fine, we do business a lot so I'll know what they meant.")
end

function dlg_40_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer030.mp3", "", "", 1613832225, 500026650, Spawn)
	AddConversationOption(conversation, "Ok.", "dlg_40_2")
	StartConversation(conversation, NPC, Spawn, "Good! He ran off, no idea where he went. But pigs are smart. You should go talk to Frondo again, in case the pig returned to his previous owner or something. Or, maybe Frondo will know where the pig might have gone.")
end

function dlg_40_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer030a.mp3", "", "", 1031230380, 3863072286, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_40_3")
	StartConversation(conversation, NPC, Spawn, "Be careful! If he kills you I might be fined!")
end

function dlg_43_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer032.mp3", "", "", 3893860465, 2064685275, Spawn)
	AddConversationOption(conversation, "Sure, I'm interested.", "dlg_43_2")
	StartConversation(conversation, NPC, Spawn, "Perfect! That could've been disastrous. Thank you so much. You may have saved my life. Listen, you've been a lot of help, but most of the rest of my work on this project is going to be theoretical. I won't be powering it up again for some time now, so it would be pointless to have you continue helping me. But I do know someone who might benefit from your presence, what do you say?")
end

function dlg_43_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer033.mp3", "", "", 1373424773, 2951146412, Spawn)
	AddConversationOption(conversation, "Ok.", "dlg_43_3")
	StartConversation(conversation, NPC, Spawn, "Great. Go see Inquisitor Thorson in the Sunken City. I'm sure he could use some help, and I'm sure you would be perfect. At the end of the docks you can use the Mariner's Bell to reach the Sunken City.")
end

function dlg_43_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer033a.mp3", "", "", 3859816129, 2499083786, Spawn)
	AddConversationOption(conversation, "Yeah... maybe.", "dlg_43_4")
	StartConversation(conversation, NPC, Spawn, "Maybe we'll see each other again someday! Or maybe you'll die while helping the Inquisitor!")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/qst_neezer_grund_notonquest_f19aeb36.mp3", "Our proximity concerns me.", "", 1049236413, 2313040785, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/qst_neezer_grund_blasting_610b5248.mp3", "Come now, place the blasting capsule in the translation device.", "", 3007812352, 3808878638, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/qst_neezer_grund_blastingtwo_2c0e8052.mp3", "Don't be afraid... the high quality parts will certainly almost probably stop any explosions.", "", 652571017, 367300687, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/qst_neezer_grund_translating_cc4f0d5a.mp3", "I'm quite busy, I'll be free in just a moment or two!", "", 955771039, 458972401, Spawn)
--]]


	
	
	--[[if HasQuest(Spawn, RATONGA_MENTOR_QUEST_1) and GetQuestStep(Spawn, RATONGA_MENTOR_QUEST_1) == 3 then
		-- also display before next quest
		RatongaMentorQuest(NPC, Spawn, conversation)
	end--]]
	
	--[[Hailed responses

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/qst_neezer_grund_blastingtwo_2c0e8052.mp3", "Don't be afraid... the high quality parts will certainly almost probably stop any explosions.", "", 652571017, 367300687, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/qst_neezer_grund_blasting_610b5248.mp3", "Come now, place the blasting capsule in the translation device.", "", 3007812352, 3808878638, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/qst_neezer_grund_notonquest_f19aeb36.mp3", "Our proximity concerns me.", "", 1049236413, 2313040785, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/qst_neezer_grund_translating_cc4f0d5a.mp3", "I'm quite busy, I'll be free in just a moment or two!", "", 955771039, 458972401, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer000.mp3", "", "", 1064443430, 1657973609, Spawn)
	AddConversationOption(conversation, "What if none of them are correct?", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "I have so many amazing theories and only one has to be correct for my name to go down in history!")
	if convo==1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer000.mp3", "", "", 1064443430, 1657973609, Spawn)
		AddConversationOption(conversation, "What if none of them are correct?", "dlg_1_1")
		StartConversation(conversation, NPC, Spawn, "I have so many amazing theories and only one has to be correct for my name to go down in history!")
	end

	if convo==2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer000.mp3", "", "", 1064443430, 1657973609, Spawn)
		AddConversationOption(conversation, "What if none of them are correct?", "dlg_2_1")
		StartConversation(conversation, NPC, Spawn, "I have so many amazing theories and only one has to be correct for my name to go down in history!")
	end

	if convo==3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer000.mp3", "", "", 1064443430, 1657973609, Spawn)
		AddConversationOption(conversation, "What if none of them are correct?", "dlg_3_1")
		StartConversation(conversation, NPC, Spawn, "I have so many amazing theories and only one has to be correct for my name to go down in history!")
	end

	if convo==4 then

	end

	if convo==5 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/ratonga_neezer_grund001.mp3", "", "", 2684720516, 1780605878, Spawn)
		AddConversationOption(conversation, "Um... does that mean you won't be able to help me?", "dlg_5_1")
		AddConversationOption(conversation, "I'd better go.")
		StartConversation(conversation, NPC, Spawn, "I may have figured it out... Gnomes ARE machines!")
	end

	if convo==6 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/ratonga_neezer_grund008.mp3", "", "", 3607506094, 2869789771, Spawn)
		AddConversationOption(conversation, "No, not yet.", "dlg_6_1")
		StartConversation(conversation, NPC, Spawn, "Have you collected the glands?")
	end

	if convo==26 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer012.mp3", "", "", 3753422322, 2761264411, Spawn)
		AddConversationOption(conversation, "Yes, here it is.", "dlg_26_1")
		StartConversation(conversation, NPC, Spawn, "Do you have the powder?")
	end

	if convo==27 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer014.mp3", "", "", 1941489242, 2412694288, Spawn)
		AddConversationOption(conversation, "You knew that was going to happen?", "dlg_27_1")
		StartConversation(conversation, NPC, Spawn, "Wow! That was exactly what I had expected to happen.")
	end

	if convo==30 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer017.mp3", "", "", 246977036, 964620595, Spawn)
		AddConversationOption(conversation, "Yes, here they are.", "dlg_30_1")
		StartConversation(conversation, NPC, Spawn, "Did you get all of the replacement parts?")
	end

	if convo==31 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer019.mp3", "", "", 1013796389, 2474357354, Spawn)
		AddConversationOption(conversation, "With what?", "dlg_31_1")
		StartConversation(conversation, NPC, Spawn, "Hah-hah! It worked, it worked! This is great! Now we just need to test it.")
	end

	if convo==32 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer021.mp3", "", "", 1272003205, 2928185130, Spawn)
		AddConversationOption(conversation, "No, not yet.", "dlg_32_1")
		StartConversation(conversation, NPC, Spawn, "Did you get the pig?")
	end

	if convo==35 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer021.mp3", "", "", 1272003205, 2928185130, Spawn)
		AddConversationOption(conversation, "Yes, here it is.", "dlg_35_1")
		StartConversation(conversation, NPC, Spawn, "Did you get the pig?")
	end

	if convo==36 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer023.mp3", "", "", 3023506555, 2115890375, Spawn)
		AddConversationOption(conversation, "What happened to it?", "dlg_36_1")
		StartConversation(conversation, NPC, Spawn, "WOW! I did not expect that to happen. This is amazing.")
	end

	if convo==40 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer029.mp3", "", "", 2272871201, 1537695095, Spawn)
		AddConversationOption(conversation, "Ok, I'll find the pig for you.", "dlg_40_1")
		StartConversation(conversation, NPC, Spawn, "You've got to help! The pig escaped! It killed some ratonga and then took off. This could ruin me! They will throw me in jail or execute me! You need to find him, find the pig, and kill him or capture him. I don't think you can capture him, he's a wild beast! You need to kill him!")
	end

	if convo==41 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer031.mp3", "", "", 3051236940, 593094236, Spawn)
		AddConversationOption(conversation, "No, I haven't found it yet.", "dlg_41_1")
		StartConversation(conversation, NPC, Spawn, "Did you stop the pig yet?")
	end

	if convo==43 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer031.mp3", "", "", 3051236940, 593094236, Spawn)
		AddConversationOption(conversation, "Yes, it is dead.", "dlg_43_1")
		StartConversation(conversation, NPC, Spawn, "Did you stop the pig yet?")
	end--]]

--[[
--------------------------------------------------------------------------------------------------------------
--				RATONGA MENTOR QUEST 1
--------------------------------------------------------------------------------------------------------------

function RatongaMentorQuest(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/ratonga_neezer_grund001.mp3", "", "", 2684720516, 1780605878, Spawn)
	AddConversationOption(conversation, "Um... does that mean you won't be able to help me?", "dlg_5_1")
	AddConversationOption(conversation, "I'd better go.")
	StartConversation(conversation, NPC, Spawn, "I may have figured it out... Gnomes ARE machines!")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/ratonga_neezer_grund002.mp3", "", "", 2029719873, 2086091326, Spawn)
	AddConversationOption(conversation, "I have some hair samples and claw fragments that I'd like you to run some tests on.", "dlg_5_2")
	StartConversation(conversation, NPC, Spawn, "Machines are very efficient. I could probably help everybody... at the same time! What do you need?")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/ratonga_neezer_grund003.mp3", "", "", 3775446221, 295496669, Spawn)
	AddConversationOption(conversation, "I need you to test for two things. First, any information about dust and particles on the fur to determine how long the ratonga has been in Freeport for.", "dlg_5_3")
	StartConversation(conversation, NPC, Spawn, "Tests? I absolutely love tests. What do you need?")
end

function dlg_5_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/ratonga_neezer_grund004.mp3", "", "", 2294065134, 42867786, Spawn)
	AddConversationOption(conversation, "Any hint of disease you can find.", "dlg_5_4")
	StartConversation(conversation, NPC, Spawn, "And second?")
end

function dlg_5_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/ratonga_neezer_grund005.mp3", "", "", 2374280096, 2852299362, Spawn)
	AddConversationOption(conversation, "Here is some money.", "dlg_5_5")
	StartConversation(conversation, NPC, Spawn, "All right. These tests can be done, but they aren't cheap. I'll need something from you in exchange for these tests.")
end

function dlg_5_5(NPC, Spawn)
	if HasQuest(Spawn, RATONGA_MENTOR_QUEST_1) then
		SetStepComplete(Spawn, RATONGA_MENTOR_QUEST_1, 3)
	end

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/ratonga_neezer_grund006.mp3", "", "", 2771043254, 4155432724, Spawn)
	AddConversationOption(conversation, "Sure.", "dlg_5_6")
	StartConversation(conversation, NPC, Spawn, "Ah, yes. Here is your change. But there is a non-monetary payment: the acid glands that produce the acidic compound I use as a catalyst come from the little devils that run around this place and hide in our garbage. Filth gobblers is what we call 'em. I need some glands collected. Think you can do this for me?")
end

--------------------------------------------------------------------------------------------------------------
--				RATONGA MENTOR QUEST 2
--------------------------------------------------------------------------------------------------------------

function dlg_5_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/ratonga_neezer_grund007.mp3", "", "", 3259263183, 1723452651, Spawn)
	AddConversationOption(conversation, "I can do this.", "OfferRatongaQuest2")
	StartConversation(conversation, NPC, Spawn, "Good. They generally sleep in the garbage piles that are strewn about Temple Street. I'm sure you can rouse one--or six, I need six glands--by poking around in some garbage. By the time you have collected the glands I should be done with the tests you requested.")
end

function OfferRatongaQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	--OfferQuest(NPC, Spawn, RATONGA_QUEST_2)
end

function dlg_5_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/ratonga_neezer_grund007a.mp3", "", "", 3729599538, 4025692399, Spawn)
	AddConversationOption(conversation, "I will return.", "dlg_5_8")
	StartConversation(conversation, NPC, Spawn, "Great! I'll be right here when you're done.")
end

--]]
function dlg_0_0(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer000.mp3", "", "", 1064443430, 1657973609, Spawn)
	AddConversationOption(conversation, "What if none of them are correct?", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "I have so many amazing theories and only one has to be correct for my name to go down in history!")
end
	
function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer001.mp3", "", "", 2185904706, 697636844, Spawn)
	AddConversationOption(conversation, "So your goal in life is to go down in history?", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Then maybe I'll go down in history for having the most amazing theories!")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer002.mp3", "", "", 952020039, 816626458, Spawn)
	AddConversationOption(conversation, "Yeah, I know.", "dlg_0_4")
	AddConversationOption(conversation, "No, I don't know.", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "Not really. I don't have any long-term goals. Short term, however, I just wanna keep learning. It doesn't really matter what I'm doing, so long as it's an opportunity to discover new things. It's the gnome in me, you know?")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer003.mp3", "", "", 4127517684, 2567427060, Spawn)
	AddConversationOption(conversation, "Ah, then I know what you mean.", "dlg_0_4 ")
	AddConversationOption(conversation, "I've never felt that.")
	StartConversation(conversation, NPC, Spawn, "Of course you know, you just don't know it yet. It's that little pull you feel inside you every time you pass something that works in a mysterious way. It's the desire you have to break things apart and put them back together.")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer006.mp3", "", "", 980408376, 3201642943, Spawn)
	AddConversationOption(conversation, "I'll help.", "dlg_1_5")
	AddConversationOption(conversation, "I'd like to head away from Temple Street, where the adventure is.", "dlg_SunkenCity")
	StartConversation(conversation, NPC, Spawn, "Good. Then you won't turn down my offer, how would you like to hang around Temple Street for a while and help me out? You might learn a few new things, and I could certainly use an extra pair of arms. If not, I know some other places you can go, where more adventure might be.")
end

function dlg_SunkenCity(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer005.mp3", "", "", 3028297950, 2047960092, Spawn)
	AddConversationOption(conversation, "All right, thank you.")
	AddConversationOption(conversation, "I changed my mind, I would like to help you here in Temple Street.", "dlg_1_5")
	StartConversation(conversation, NPC, Spawn, "All right, then I know where to send you. Go to speak with Inquisitor Thorson in the Sunken City. He'll be able to get you started on your adventure!")
end

------------------------------------------------------------------------------------------------------------------------------------------------------------
--GNOME QUEST 1---------------------------------------------------------------------------------------------------------------------------------------------
function dlg_1_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer007.mp3", "", "", 3178893097, 2748396183, Spawn)
	AddConversationOption(conversation, "What is it?", "dlg_1_6")
	StartConversation(conversation, NPC, Spawn, "Great! I'm working on a very important device right now, it may change the way we do... everything!")
end

function dlg_1_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer008.mp3", "", "", 1939855840, 1728224176, Spawn)
	AddConversationOption(conversation, "You hope?", "dlg_1_7")
	StartConversation(conversation, NPC, Spawn, "I don't have a name for it yet, I just know what it will do. It's a translation device. It will, I hope, transfer objects from one point to another point instantly.")
end

function dlg_1_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer009.mp3", "", "", 2068012557, 4069282289, Spawn)
	AddConversationOption(conversation, "So you're expecting it to fail?", "dlg_1_8")
	AddConversationOption(conversation, "It worked but didn't?")
	StartConversation(conversation, NPC, Spawn, "Well, I haven't finished it until just now. And I still haven't tested it. No invention works the first time, that never happens. The last time I made a translation device it worked the first time... but it also... didn't.")
end

function dlg_1_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer010.mp3", "", "", 4102027768, 3624664445, Spawn)
	AddConversationOption(conversation, "Sure, I'll help. What do I need to do?", "OfferQuest1")
	AddConversationOption(conversation, "Not a chance.")
	StartConversation(conversation, NPC, Spawn, "Perhaps catastrophically so! I need you to help me gather the last of what I need to fire it up, what do you say?")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function HavePowder(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer012.mp3", "", "", 3753422322, 2761264411, Spawn)
		AddConversationOption(conversation, "Yes, here it is.", "dlg_1_9")
		StartConversation(conversation, NPC, Spawn, "Do you have the powder?")
	
	elseif HasQuest(Spawn, QUEST_1) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer012.mp3", "", "", 3753422322, 2761264411, Spawn)
		AddConversationOption(conversation, "No, not yet")
		StartConversation(conversation, NPC, Spawn, "Do you have the powder?")
	end
end

function dlg_1_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	
	SetStepComplete(Spawn, QUEST_1, 2) 
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer013.mp3", "", "", 1001313127, 3828519249, Spawn)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "Great, I'll just put this in the blasting cap. Ah, there we go. Now, take this blasting cap and put it in the main-control right here. ")
end

function Quest1End(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, QUEST_1, 4)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer014.mp3", "", "", 1941489242, 2412694288, Spawn)
	AddConversationOption(conversation, "You knew that was going to happen?", "dlg_1_10")
	StartConversation(conversation, NPC, Spawn, "Wow! That was exactly what I had expected to happen.")
end

function dlg_1_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer015.mp3", "", "", 963936177, 441290953, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "Yeah, I didn't build this with very high quality parts. Mostly stuff I found on the streets. I'll work on rebuilding the blast capsule. You can help by collecting some higher quality parts, what do you say?")
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function dlg_27_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer015.mp3", "", "", 963936177, 441290953, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_27_2")
	StartConversation(conversation, NPC, Spawn, "Yeah, I didn't build this with very high quality parts. Mostly stuff I found on the streets. I'll work on rebuilding the blast capsule. You can help by collecting some higher quality parts, what do you say?")
end

function dlg_27_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer016.mp3", "", "", 1141884265, 1772243009, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_27_3")
	StartConversation(conversation, NPC, Spawn, "Wonderful. I'll need a hyper-organic suppressor, which--if my sources are correct--can be found in shipment C68F near the gates to South Freeport. I'll also need a high-quality arcanic tracer and a dongle-sweep particle buoy. Qwergo and Twergo Togglesmeet in the small area in the western corner of the central area of Temple Street sell these items.")
end

function dlg_27_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer016a.mp3", "", "", 332474193, 3438624410, Spawn)
	AddConversationOption(conversation, "All right, I will return.", "dlg_27_4")
	StartConversation(conversation, NPC, Spawn, "Once you have these items we should be able to get back to work.")
end

function dlg_30_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer018.mp3", "", "", 1114976010, 3577030997, Spawn)
	AddConversationOption(conversation, "Ok.", "dlg_30_2")
	AddConversationOption(conversation, "This better work.")
	StartConversation(conversation, NPC, Spawn, "Wonderful! Here is the new blasting capsule. These repairs will only take a second longer... there we go! All right, let's try this again, shall we? Put the blasting capsule in the translation device when you're ready and it'll power up.")
end

function dlg_31_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer020.mp3", "", "", 2891679745, 2404642843, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_31_2")
	StartConversation(conversation, NPC, Spawn, "I know exactly what with. I have a friend who owes me a favor, Frondo Wignin. He sells pigs by those gates that were shut down by the Overlord, in south-western Temple Street. Go see him, tell him I want a pig. Then bring the pig back to me.")
end

function dlg_35_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer022.mp3", "", "", 447570827, 3590173439, Spawn)
	AddConversationOption(conversation, "Ok.", "dlg_35_2")
	StartConversation(conversation, NPC, Spawn, "No, don't give it to me. It's filthy! Put it in this cage here when you're ready and I'll start the process!")
end

function dlg_36_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer024.mp3", "", "", 3385551552, 868280340, Spawn)
	AddConversationOption(conversation, "Why is this perfect? Your device failed.", "dlg_36_2")
	StartConversation(conversation, NPC, Spawn, "Bad translation. Wow, look at it. This is great, this is perfect!")
end

function dlg_36_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer025.mp3", "", "", 477122328, 3891671601, Spawn)
	AddConversationOption(conversation, "Yes.", "dlg_36_3")
	StartConversation(conversation, NPC, Spawn, "It didn't fail, it worked beyond my wildest expectations! People would pay HUGE for pigs like this. Their military application alone is substantial. I need you to go see some potential buyers for me while I try to figure out what happened. Can you do this?")
end

function dlg_36_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer026.mp3", "", "", 838555551, 3086722146, Spawn)
	AddConversationOption(conversation, "Ok.", "dlg_36_4")
	StartConversation(conversation, NPC, Spawn, "Great. Speak with Malyk, he's a ratonga who hides out in a small room just north after you leave the docks here. Also speak with Malvir Destrin, he should be near the gates to South Freeport inspecting packages and looking for anything worth buying. Finally, speak with Darsus Tavalin who I believe hangs out in the north-eastern corner of the central area of Temple Street.")
end

function dlg_36_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer026a.mp3", "", "", 1174644756, 2228180387, Spawn)
	AddConversationOption(conversation, "I will get their offers and return.", "dlg_36_5")
	StartConversation(conversation, NPC, Spawn, "If they don't give you exact figures that's fine, we do business a lot so I'll know what they meant.")
end

function dlg_40_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer030.mp3", "", "", 1613832225, 500026650, Spawn)
	AddConversationOption(conversation, "Ok.", "dlg_40_2")
	StartConversation(conversation, NPC, Spawn, "Good! He ran off, no idea where he went. But pigs are smart. You should go talk to Frondo again, in case the pig returned to his previous owner or something. Or, maybe Frondo will know where the pig might have gone.")
end

function dlg_40_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer030a.mp3", "", "", 1031230380, 3863072286, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_40_3")
	StartConversation(conversation, NPC, Spawn, "Be careful! If he kills you I might be fined!")
end

function dlg_43_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer032.mp3", "", "", 3893860465, 2064685275, Spawn)
	AddConversationOption(conversation, "Sure, I'm interested.", "dlg_43_2")
	StartConversation(conversation, NPC, Spawn, "Perfect! That could've been disastrous. Thank you so much. You may have saved my life. Listen, you've been a lot of help, but most of the rest of my work on this project is going to be theoretical. I won't be powering it up again for some time now, so it would be pointless to have you continue helping me. But I do know someone who might benefit from your presence, what do you say?")
end

function dlg_43_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer033.mp3", "", "", 1373424773, 2951146412, Spawn)
	AddConversationOption(conversation, "Ok.", "dlg_43_3")
	StartConversation(conversation, NPC, Spawn, "Great. Go see Inquisitor Thorson in the Sunken City. I'm sure he could use some help, and I'm sure you would be perfect. At the end of the docks you can use the Mariner's Bell to reach the Sunken City.")
end

function dlg_43_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/neezer033a.mp3", "", "", 3859816129, 2499083786, Spawn)
	AddConversationOption(conversation, "Yeah... maybe.", "dlg_43_4")
	StartConversation(conversation, NPC, Spawn, "Maybe we'll see each other again someday! Or maybe you'll die while helping the Inquisitor!")
end
--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/qst_neezer_grund_notonquest_f19aeb36.mp3", "Our proximity concerns me.", "", 1049236413, 2313040785, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/qst_neezer_grund_blasting_610b5248.mp3", "Come now, place the blasting capsule in the translation device.", "", 3007812352, 3808878638, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/qst_neezer_grund_blastingtwo_2c0e8052.mp3", "Don't be afraid... the high quality parts will certainly almost probably stop any explosions.", "", 652571017, 367300687, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/qst_neezer_grund_translating_cc4f0d5a.mp3", "I'm quite busy, I'll be free in just a moment or two!", "", 955771039, 458972401, Spawn)
--]]

