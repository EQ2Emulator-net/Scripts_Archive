--[[
	Script Name	: SpawnScripts/QueensColony/aQeynosianscout.lua
	Script Purpose	: a Qeynosian scout 
	Script Author	: John Adams/Scatman
	Script Date	: 2009.01.11
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	ProvidesQuest(NPC, 55)
	Say(NPC, "Whew, thank you! I couldn't hold on much longer.")
end

function hailed(NPC, Spawn)
	if HasCompletedQuest(Spawn, 55) then
		Say(NPC, "I hate dogs!")
	else
		EvilMoraks(NPC, Spawn)
	end
end

function respawn(NPC)
	spawn(NPC)
end

function EvilMoraks(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, 55) then
		if GetQuestStep(Spawn, 55) == 2 then
			AddConversationOption(conversation, "You look pretty shaken up.", "ShakenUp")
		elseif QuestStepIsComplete(Spawn, 55, 3) and QuestStepIsComplete(Spawn, 55, 4) and QuestStepIsComplete(Spawn, 55, 5) and GetQuestStep(Spawn, 55) == 6 then
			AddConversationOption(conversation, "You're not going to like this...there are multitudes of Moraks ahead.", "NotGoingToLike")
		elseif GetQuestStep(Spawn, 55) >= 7 then
			AddConversationOption(conversation, "Um...about that gift you gave me...", "AboutThatGift")
		end
	else
		AddConversationOption(conversation, "I've gotten rid of them. Are there more?", "AreThereMore")
	end
	
	AddConversationOption(conversation, "Be brave!")
	StartConversation(conversation, NPC, Spawn, "Wh..where are they? Those nasty, evil Moraks?")
end

function AreThereMore(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I'll get rid of them.", "OfferQuest1")
	AddConversationOption(conversation, "Good luck with that.")
	StartConversation(conversation, NPC, Spawn, "Get them away! Who knew that Moraks were hounds, I ask you? They've got to be eliminated! Dratted beasts!")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, 55)
end

function ShakenUp(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "These little pups? They don't scare me.", "DontScareMe")
	StartConversation(conversation, NPC, Spawn, "Whew! When I was assigned to explore the village, I had no idea there would be these... these dogs! I'm deathly afraid of them. Got bitten very badly as a child you see. This is terrible! How can I finish my mission! Hmmm! You don't seem to be frightened of them.")
end

function DontScareMe(NPC, Spawn)
	SetStepComplete(Spawn, 55, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Not a problem. Wait for me here.")
	StartConversation(conversation, NPC, Spawn, "I would be forever in your debt if you could perhaps take a quick peek around the village for me and clear out any of those wretched Moraks so that I can continue my misson please?")
end

function NotGoingToLike(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "The Moraks are even more plentiful around the villages. I cleared a path, but they'll soon be back.", "SoonBeBack")
	StartConversation(conversation, NPC, Spawn, "Oh, dear.")
end

function SoonBeBack(NPC, Spawn)
	SetStepComplete(Spawn, 55, 6)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	-- summon A Diplomatic Gift if the player does not have one
	if not HasItem(Spawn, 1601) then
		SummonItem(Spawn, 1601)
	end
	
	AddConversationOption(conversation, "I'll take care of it, no worries.")
	StartConversation(conversation, NPC, Spawn, "I do owe you for this friend. I'm primarily a scout but also a diplomat-in-training. I'm supposed to open lines of communication with the Sapswill soothsayer, who supposedly knows a great deal about what's ailing our Colony. Can you take him this gift? As an act of diplomat-in-training?")
end

function AboutThatGift(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	-- summon A Diplomatic Gift if the player does not have one
	if not HasItem(Spawn, 1601) then
		SummonItem(Spawn, 1601)
	end
	
	AddConversationOption(conversation, "I'm sorry. I'll be more careful.")
	StartConversation(conversation, NPC, Spawn, "Oooh! You lost it, didn't you? Good thing I'm a diplomat-in-training! I have a bunch of these at hand. Here, take this one. Please try not to lose it!")
end

function ClimbTree(NPC, Spawn)
	KillTheDamnDupe(NPC)
	Say(NPC, "Ahhhhhh! I must escape!")
	SpawnMob(GetZone(NPC), 2530208, false, 268.27, -0.273935, -10.049, 177.109)
	Despawn(NPC)
end

function KillTheDamnDupe(NPC)
	TreeHalfling = GetSpawn(NPC, 2530208)
	if not (TreeHalfling == nil) then
		Despawn(TreeHalfling)
	end
end

