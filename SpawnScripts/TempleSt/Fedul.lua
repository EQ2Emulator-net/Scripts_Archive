--[[
	Script Name	: SpawnScripts/TempleSt/Fedul.lua
	Script Purpose	: Fedul <Ratonga Mentor>
	Script Author	: Scatman
	Script Date	: 2008.09.29
	Script Notes	: 
--]]

local Ratonga = 13
QUEST_1 = 143

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
		OnQuest1(NPC, Spawn, conversation)
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		if GetRace(Spawn) == Ratonga then
			IKnewYoudApproach(NPC, Spawn, conversation)
		else
			PlayFlavor(NPC, "", "You leaves... Fedul haves nothing for you.", "", 1689589577, 4560189, Spawn)
		end
	end
end

----------------------------------------------------------------------------------------------------------------
--									QUEST 1
----------------------------------------------------------------------------------------------------------------

function IKnewYoudApproach(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fedul/fprt_hood03/quests/fedul/fedul001.mp3", "", "", 803328933, 4035909398, Spawn)
	AddConversationOption(conversation, "How?", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "I knew you would approach me.")
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fedul/fprt_hood03/quests/fedul/fedul002.mp3", "", "", 3938277719, 3127006741, Spawn)
	AddConversationOption(conversation, "What are you doing here?", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Part of what people pay me for is my ability to read others. I merely read you correctly.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fedul/fprt_hood03/quests/fedul/fedul003.mp3", "", "", 45503405, 3799413972, Spawn)
	AddConversationOption(conversation, "I am interested.", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "Making offers, just making offers. I have one, maybe two, for you if you're interested.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fedul/fprt_hood03/quests/fedul/fedul004.mp3", "", "", 643813368, 1343125636, Spawn)
	AddConversationOption(conversation, "I would like to stay in Temple Street.", "dlg_0_4")
	AddConversationOption(conversation, "I would like to help elsewhere.", "HelpElseWhere")
	StartConversation(conversation, NPC, Spawn, "Good, good. You may choose which suits you better. You can either help me here, in Temple Street, or you can head out to an acquaintance of mine who may also have work for you. Naturally the work outside of Temple Street is slightly more dangerous. What do you choose?")
end

function HelpElseWhere(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fedul/fprt_hood03/quests/fedul/fedul005.mp3", "", "", 3165761126, 1443420852, Spawn)
	AddConversationOption(conversation, "Very well.")
	AddConversationOption(conversation, "I changed my mind, I want to help in Temple Street.", "dlg_0_4")
	StartConversation(conversation, NPC, Spawn, "Impressive. Please, go to the Sunken City. Speak with Inquisitor Thorson, he will guide you where I cannot.")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fedul/fprt_hood03/quests/fedul/fedul006.mp3", "", "", 2604338294, 3594428227, Spawn)
	AddConversationOption(conversation, "It had been delivered?", "dlg_0_5")
	StartConversation(conversation, NPC, Spawn, "Very well. There has been a mistake and you will help me correct it. There was an item recently shipped to Temple Street. Neither the shipper nor the intended recipient know of the importance of this item. I, however, do. I had intended to intercept this item as it arrived. Parcel has never been swift, and the mistake that was made was my own. I let a week go by before I went to collect, but I was too late.")
end

function dlg_0_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fedul/fprt_hood03/quests/fedul/fedul007.mp3", "", "", 3284679321, 288850401, Spawn)
	AddConversationOption(conversation, "Why is it so important?", "dlg_0_6")
	StartConversation(conversation, NPC, Spawn, "No, someone had beaten me to the prize. I scurried away quickly, I did not want to get caught up in this investigation. I have a certain reputation with the guards around here, and if the true nature of the stolen shipment were ever revealed the case against me would be very strong. I do not know when they stole my treasure, but we need to get that artifact.")
end

function dlg_0_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Why would you want it then?", "dlg_0_7")
	StartConversation(conversation, NPC, Spawn, "It is called the Forest Spider. Nobody knows where it originally came from. We--our race--dug it out of the earth prior to the Rallosian uprising. It has been traveling from owner to owner ever since. Its owners tend to die soon after they acquire it.")
end

function dlg_0_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "So what can I do?", "dlg_0_8")
	StartConversation(conversation, NPC, Spawn, "It is not 'cursed' as some say--nor is it malevolent, at least not any more than any real spider--but it does contain very strong magic. In the wrong hands, under the ownership of a weak mind, the Forest Spider invariably brings about the doom of its owner. In the right hands, well, nobody knows its true potential.")
end

function dlg_0_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What if I get caught up in the investigation?", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "I'd like you to head to the scene of the crime and find anything useful that you can bring back to me. I don't expect a trail leading us to that dirty thief, but I'm sure there must be something there. It was shipment B8CF, it shouldn't be hard to find.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_1) == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fedul/fprt_hood03/quests/fedul/fedul012.mp3", "", "", 4058991366, 277069653, Spawn)
		AddConversationOption(conversation, "No, not yet.")
		StartConversation(conversation, NPC, Spawn, "Did you find any clues?")
	elseif GetQuestStep(Spawn, QUEST_1) == 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fedul/fprt_hood03/quests/fedul/fedul012.mp3", "", "", 4058991366, 277069653, Spawn)
		AddConversationOption(conversation, "I found this piece of wood with some hair in it.", "dlg_3_1")
		StartConversation(conversation, NPC, Spawn, "Did you find any clues?")
	elseif GetQuestStep(Spawn, QUEST_1) == 3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fedul/fprt_hood03/quests/fedul/fedul015.mp3", "", "", 2874797489, 895617263, Spawn)
		AddConversationOption(conversation, "I don't know yet.")
		StartConversation(conversation, NPC, Spawn, "What did Neezer's tests show?")
	else--if GetQuestStep(Spawn, QUEST_1) == 4 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fedul/fprt_hood03/quests/fedul/fedul015.mp3", "", "", 2874797489, 895617263, Spawn)
		AddConversationOption(conversation, "I don't know yet.")
		StartConversation(conversation, NPC, Spawn, "What did Neezer's tests show?")
	end
end

function dlg_3_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	if not HasItem(Spawn, 12993) then
		-- Samples and payment for Neezer
		SummonItem(Spawn, 12993)
	end
	
	-- a piece of wood
	RemoveItem(Spawn, 2491)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fedul/fprt_hood03/quests/fedul/fedul013.mp3", "", "", 300398016, 3806373999, Spawn)
	AddConversationOption(conversation, "Sickness?", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "Hmm... that may work for us. And also, deep in these scars it looks like there are some claw fragments. I figured it had to be another ratonga, no gnome could beat me to my prize. Speaking of gnomes, Neezer Grund on the docks would be able to test these and possibly come up with some clues for us. Take these samples to him, give him this money for payment. Ask him to test the dust present on the hair and see if he can determine if this hair comes from a long-time resident of Freeport. Also, and this would probably come from the claw fragments, have him test for any diseases or any sign of sickness. I'd bet... a reasonable amount... that I've met this ratonga before.")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fedul/fprt_hood03/quests/fedul/fedul014.mp3", "", "", 1002685056, 157827272, Spawn)
	AddConversationOption(conversation, "I will return after I speak with Neezer.", "dlg_3_3")
	StartConversation(conversation, NPC, Spawn, "It involves the Forest Spider. Perhaps this was a previous owner, a certain ratonga who left for the commonlands long ago. He would be sick. As I said, in the wrong hands the Forest Spider causes only death.")
end

