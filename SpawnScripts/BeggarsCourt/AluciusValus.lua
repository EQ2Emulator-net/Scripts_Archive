--[[
	Script Name	: SpawnScripts/BeggarsCourt/AluciusValus.lua
	Script Purpose	: Alucius Valus <Human Mentor>
	Script Author	: John Adams
	Script Date	: 2009.04.04
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local HUMAN = 9
local QUEST_1 = 174
local QUEST_2 = 176
local QUEST_3 = 177
local QUEST_4 = 178

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
	ProvidesQuest(NPC, QUEST_3)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "hello", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "hello", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "hello", 0, 0, Spawn)
	end

	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			if HasCompletedQuest(Spawn, QUEST_3) then
				if HasCompletedQuest(Spawn, QUEST_4) then
					Say(NPC, "It would be better for your health if you no longer spoke to me.", Spawn)
				elseif HasQuest(Spawn, QUEST_4) then
					OnQuest4(NPC, Spawn, conversation)
				else
					Say(NPC, "Finish the task I have set before, then return to me.", Spawn)
				end
			elseif HasQuest(Spawn, QUEST_3) then
				Say(NPC, "Finish the task I have set before, then return to me.", Spawn)
			else
				TimeToLearn(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, QUEST_2) then
			OnQuest2(NPC, Spawn, conversation)
		else
			DidWellOnLastAssignment(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		if GetRace(Spawn) == HUMAN then
			Greetings(NPC, Spawn, conversation)
		else
			Say(NPC "I am not quite sure what you are, but I don't want to talk to you.", Spawn)
		end
	end

	--[[	

	if convo==1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Work. I could definitely use some work.", "dlg_1_1")
		AddConversationOption(conversation, "Information is always helpful. What is it you want to tell me?")
		AddConversationOption(conversation, "Actually, I don't want either right now. Have a good day.")
		StartConversation(conversation, NPC, Spawn, "Greetings my friend, it looks like you may be in need of work, information, or both.")
	end

	if convo==2 then
		
		AddConversationOption(conversation, "Work. I could definitely use some work.", "dlg_2_1")
		AddConversationOption(conversation, "Information is always helpful. What is it you want to tell me?")
		AddConversationOption(conversation, "Actually, I don't want either right now. Have a good day.")
		StartConversation(conversation, NPC, Spawn, "Greetings my friend, it looks like you may be in need of work, information, or both.")
	end

	if convo==4 then

	end

	if convo==5 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'm up for it. What sort of note?", "dlg_5_1")
		AddConversationOption(conversation, "I am busy right now. I'll check back later to see if you still need assistance.")
		StartConversation(conversation, NPC, Spawn, "You did well on your last assignment. I have more work for you, if you're up to it. I found an interesting note in that bag of junk you sold me which may explain its owner's sudden disappearance.")
	end

	if convo==16 then

	end

	if convo==24 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)

	end
--]]
end

----------------------------------------------------------------------------------------------------------------------------
--							QUEST 1
----------------------------------------------------------------------------------------------------------------------------

function Greetings(NPC, Spawn, conversation)
	AddConversationOption(conversation, "Work. I could definitely use some work.", "dlg_1_4")
	AddConversationOption(conversation, "Information is always helpful. What is it you want to tell me?", "dlg_1_1")
	AddConversationOption(conversation, "Actually, I don't want either right now. Have a good day.")
	StartConversation(conversation, NPC, Spawn, "Greetings my friend, it looks like you may be in need of work, information, or both.")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What tips would those be?", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "Information is important, and you are wise to seek as much as you can. Because of this, I will give you a few free tips.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Is there anything else I should know?", "dlg_1_3")
	AddConversationOption(conversation, "I think I'll be leaving.")
	StartConversation(conversation, NPC, Spawn, "First, you must understand who you are and where you are. You are a human, and you are in Freeport. This is very important. We are the top dogs around here. Be sure you do not allow yourself to take any flak from the lesser beings that live in the other districts of the city.")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "You said something about work you needed done.", "dlg_1_4")
	AddConversationOption(conversation, "Thanks for the information. I will be leaving now.")
	StartConversation(conversation, NPC, Spawn, "You are right, I need to tell you the most important rule. It's real simple... never cross the Overlord. We exist only because of his might. Without him, Freeport would have been destroyed long ago. And remember, he does not take kindly to traitors.")
end

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Sure, I am up for it. Sounds intriguing.", "dlg_2_2")
	AddConversationOption(conversation, "Sounds a bit too dangerous for me right now. I may be back later, though.")
	StartConversation(conversation, NPC, Spawn, "Ah good, I was hoping you would be in need of work. I could use a hand right now. Of course, you will need at least a bit of the courage our great Overlord shows, as well as the ability to take destiny into your own hands. Yes, that is the kind of person I am looking for. You still up for the job?")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Rat? I do not think I understand.", "dlg_2_3")
	StartConversation(conversation, NPC, Spawn, "I knew you would be. After all, we humans have overcome every obstacle put before us so far. A little task like this shouldn't throw you off, unlike that hideous rat that used to work for me.")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "So why don't you get it yourself?", "dlg_2_4")
	AddConversationOption(conversation, "Find someone else to run your errand.")
	StartConversation(conversation, NPC, Spawn, "You know, a ratonga. A rat man. The cowardly flea bags that live in the sewers. Oh, don't worry about it. Here is what I need you to do. See, there was this guy who used to live near here. He used to talk about how no one would ever find his goods. Well, he vanished not too long ago. Word is, he was right, no one has found his stash yet.")
end

function dlg_2_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What if I just take it for myself?", "dlg_2_5")
	StartConversation(conversation, NPC, Spawn, "Well, see, here is the problem. I am known around here. It would look fishy if I was seen wandering around his old place. But you're new to town. Most people would just assume that you are lost and not think twice about it.")
end

function dlg_2_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "You make a good point. Where was that house located?", "dlg_2_6")
	AddConversationOption(conversation, "Actually, I think I will take this opportunity to depart.")
	StartConversation(conversation, NPC, Spawn, "You don't want to do that. I would turn you over to the Militia as a thief. And if you try to turn me over to them, I will just deny the plan and they will confiscate the goods. But if you work for me, you'll collect a nice fee for retrieving some poor drunkard's discarded junk. It's a winning proposition all around, don't you agree?")
end

function dlg_2_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Just have my money ready.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "I knew you would see it my way. His house is located on the far west side of Beggar's Court. It is the northernmost door on that wall. Be sure to check under every crate and barrel, even the broken ones.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_1) == 1 then
		Say(NPC, "Finish the task I have set before, then return to me.", Spawn)
	elseif GetQuestStep(Spawn, QUEST_1) == 2 then
		AddConversationOption(conversation, "Yes, I found the stash.", "dlg_4_1")
		AddConversationOption(conversation, "We'll discuss this later.")
		StartConversation(conversation, NPC, Spawn, "You're back. Did you find the hidden items I asked for?")
	end
end

function dlg_4_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Fine, take it. You could stand to be more polite.", "dlg_4_2")
	StartConversation(conversation, NPC, Spawn, "Well, give it to me already! I am paying you for it, after all!")
end

----------------------------------------------------------------------------------------------------------------------------------------------
--							QUEST 2
----------------------------------------------------------------------------------------------------------------------------------------------

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'm ready for more work now.", "DidWellOnLastAssignment")
	AddConversationOption(conversation, "I will see you again shortly then.")
	StartConversation(conversation, NPC, Spawn, "Bah, this is mostly trash, and certainly isn't worth much. You're lucky that I am an honest person. If not, I would send you on your way empty-handed. Let me look through all of this garbage. Come back when I am done, and I will have more work for you. ")
end

function DidWellOnLastAssignment(NPC, Spawn, conversation)
	if conversation == nil then
		FaceTarget(NPC, Spawn)
		conversation = CreateConversation()
	end

	AddConversationOption(conversation, "I'm up for it. What sort of note?", "dlg_5_1")
	AddConversationOption(conversation, "I am busy right now. I'll check back later to see if you still need assistance.")
	StartConversation(conversation, NPC, Spawn, "You did well on your last assignment. I have more work for you, if you're up to it. I found an interesting note in that bag of junk you sold me which may explain its owner's sudden disappearance.")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Any means necessary? Why don't you just turn him in to the Militia?", "dlg_5_2")
	AddConversationOption(conversation, "That sounds a bit dangerous. Maybe I will come back later.")
	StartConversation(conversation, NPC, Spawn, "The note mentions a shady cohort who has documents regarding the last war Freeport saw. These documents apparently contradict the history of our great Overlord's triumph. I want you to go take the documents from him, by any means necessary.")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Do not worry, I will get the documents for you.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "That thought did cross my mind. But I'm interested in seeing what the note says, and this will be a good chance for you to prove your loyalty to Freeport. You should go now. According to my information, this shady fellow is in the far southeast room here in Beggar's Court.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function OnQuest2(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_2) == 1 then
		Say(NPC, "Finish the task I have set before, then return to me.", Spawn)
	elseif GetQuestStep(Spawn, QUEST_2) == 2 then
		AddConversationOption(conversation, "Why are you so interested in a traitor's words?", "dlg_16_1")
		AddConversationOption(conversation, "I will return later.")
		StartConversation(conversation, NPC, Spawn, "You're back, and I see some papers in your hands. I assume those are the documents I requested. Hand them over so I can take a look.")
	end
end

function dlg_16_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Good point. So what is in those documents?", "dlg_16_2")
	StartConversation(conversation, NPC, Spawn, "Remember, we must know our enemies if we are to adapt and overcome them. Now, give me a moment to look these over. Hmm... interesting.")
end

function dlg_16_2(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_2, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Good. Is there anything else you need a hand with?", "TimeToLearn")
	AddConversationOption(conversation, "I will be back soon.")
	StartConversation(conversation, NPC, Spawn, "These papers contradict the truth of our Overlord's great triumph in the Rallosian war. It is well known that he almost single-handedly defeated the enemy, but these documents attempt to undermine that greatness. I will of course turn them over to the proper authorities very soon.")
end

---------------------------------------------------------------------------------------------------------------------------
--							QUEST 3
---------------------------------------------------------------------------------------------------------------------------

function TimeToLearn(NPC, Spawn, conversation)
	if conversation == nil then
		FaceTarget(NPC, Spawn)
		conversation = CreateConversation()
	end

	AddConversationOption(conversation, "What might that be?", "dlg_16_4")
	AddConversationOption(conversation, "I will return later.")
	StartConversation(conversation, NPC, Spawn, "Well, " .. GetName(Spawn) .. ", it is time for you to learn more about Beggar's Court. I need you to do a bit more leg work for me.")
end

function dlg_16_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I would not have guessed it from the look of the place.", "dlg_16_5")
	AddConversationOption(conversation, "That is good to know.")
	StartConversation(conversation, NPC, Spawn, "Beggar's Court is more than what it seems at first glance. You see, this is actually the hottest black market in all of Freeport. If you have the right connections, you can find almost anything you want here. It is also a great place to get rid of trinkets you no longer want.")
end

function dlg_16_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Sounds easy enough.", "OfferQuest3")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "Good, that's the way we want it to seem. To help you learn your way around, I have a package I need you to deliver for me. The buyer is a man named Durio Dexus. As you run south through Beggar's Court, you will find him just beyond the southeastern stair case. Be careful not to let him fool you... he's a crafty one.")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_3)
end

----------------------------------------------------------------------------------------------------------------------------------------------
--							QUEST 4
----------------------------------------------------------------------------------------------------------------------------------------------

function OnQuest4(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_4) == 1 then
		AddConversationOption(conversation, "You are right, I have neither.", "dlg_24_1")
		AddConversationOption(conversation, "Maybe I will come back later.")
		StartConversation(conversation, NPC, Spawn, "You are back, but it doesn't look like you have either my goods or my money.")
	else
		Say(NPC, "It would be better for your health if you no longer spoke to me.", Spawn)
	end
end

function dlg_24_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Indeed I do. I heard all about your ratonga friend.", "dlg_24_2")
	StartConversation(conversation, NPC, Spawn, "Do you realize what happens to people who cross me?")
end

function dlg_24_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I doubt that. The Freeport Militia was quite pleased to receive those documents.", "dlg_24_3")
	AddConversationOption(conversation, "No problem, I'll leave.")
	StartConversation(conversation, NPC, Spawn, "What? So, you think you're smart, do you? You will end up just like him.")
end

function dlg_24_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I don't need to threaten you. But you should know that the Militia will be watching out for me.", "dlg_24_4")
	AddConversationOption(conversation, "I don't want trouble. I'll leave you alone.")
	StartConversation(conversation, NPC, Spawn, "You trying to threaten me? Are you saying you'll turn me over to the Freeport Militia?")
end

function dlg_24_4(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_4, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I knew you would see it my way. Goodbye, Alucius.")
	StartConversation(conversation, NPC, Spawn, "So, you're using the Militia to protect yourself and raise your standing with the Overlord at the same time. Quite clever, I must admit. I should have stuck to hiring the lesser races. You're lucky that my most important rule is not to get caught crossing the Overlord. I guess I will have to drop this matter for now.")
end