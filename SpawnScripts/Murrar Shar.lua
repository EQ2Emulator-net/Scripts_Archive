function spawn(NPC)
	ProvidesQuest(NPC, 1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if HasQuest(Spawn, 1) then
		if QuestIsComplete(Spawn, 1) then
			AddConversationOption(conversation, "Yup.  Got my money, or am I gonna have to get physical with you?", "QuestComplete")
			StartConversation(conversation, NPC, Spawn, "Hello again " .. GetName(Spawn) .. ".  Did you kill all the crabs as I requested?")		
		else
			AddConversationOption(conversation, "No problem")
			StartConversation(conversation, NPC, Spawn, "Hello again " .. GetName(Spawn) .. ".  Thank you for accepting my task.")
		end
	else 
		if HasCompletedQuest(Spawn, 1) then
			AddConversationOption(conversation, "Anytime")
			StartConversation(conversation, NPC, Spawn, "Hello again " .. GetName(Spawn) .. ".  Thank you for killing those crabs.")	
		else
			AddConversationOption(conversation, "Why can't you kill them?", "KillThemYourself")
			AddConversationOption(conversation, "Why should I help you?", "WhyHelpYou")
			StartConversation(conversation, NPC, Spawn, "Greetings " .. GetName(Spawn) .. "!  Thank you for coming.  Could you please kill some of the crabs on the shore for me?  I haven't liked them ever since I was pinched as a child.")
		end
	end
end

function KillThemYourself(NPC, Spawn)
	conversation = CreateConversation()	
	AddConversationOption(conversation, "A dragon?  Right.... Anyways, I want a good pair of leggings for this favor.", "GiveMeQuest")
	AddConversationOption(conversation, "I'll need 12 bottles of Rum, 3 pints of Ale, and 12 gold pieces.  I'm not risking my life for nothing!", "TooGreedy")
	StartConversation(conversation, NPC, Spawn, "I could kill them myself, but my sword was recently damaged while I was battling a dragon.")
end

function TooGreedy(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Have Fun.")	
	StartConversation(conversation, NPC, Spawn, "Forget it, you are too greedy.  I'll get another adventurer to do it for me.")
	Emote(NPC, " makes a rude gesture at you.", Spawn)
end

function GiveMeQuest(NPC, Spawn)
	OfferQuest(NPC, Spawn, 1)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Bye")
	StartConversation(conversation, NPC, Spawn, "Well you drive a hard bargain, but very well.  I agree to your terms.")
end

function WhyHelpYou(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Give me some coins and some of those leggings the merchant is selling.", "GiveMeQuest")
	AddConversationOption(conversation, "Hmm, how much do you have?  I don't know if you have enough to pay me what I want...", "TooGreedy")
	StartConversation(conversation, NPC, Spawn, "I will pay you if you are that greedy...")
end

function QuestComplete(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "I'll let it go... THIS TIME.")
	StartConversation(conversation, NPC, Spawn, "I have it right here, please don't hurt me.")
	Quest = GetQuest(Spawn, 1)
	if Quest ~= nil then
		GiveQuestReward(Quest, Spawn)
	end
end