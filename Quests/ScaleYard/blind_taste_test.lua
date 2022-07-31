--[[
	Script Name	: Quests/ScaleYard/blind_taste_test.lua
	Script Purpose	: Quest 197, Blind Taste Test
	Script Author	: Xanibunib
	Script Date	: 4.11.2009
	
	Zone       : Scale Yard
	Quest Giver: Bartend Icebrew
	Preceded by: Icebrew's Secret Recipe
	Followed by: n/a
--]]


function Init(Quest)



	

	AddQuestStepChat(Quest, 1, "I need to find a Dark Elf to test the Wheat Rust Stout.", 1, "I should look around the makeshift tavern in Longshadow Alley and find someone to drink this.", 0, 0) 
	AddQuestStepCompleteAction(Quest, 1, "DarkElf")

	--SetCompletedDescription(Quest, Description)


end


function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then

			FaceTarget(NPC, Spawn)
			conversation = CreateConversation()

			PlayFlavor(NPC, "voiceover/english/bartender_icebrew/fprt_hood06/quests/bartendericebrew/icebrew_x2_accept.mp3", "", "", 1018004755, 1842224270, Spawn)
			AddConversationOption(conversation, "Will do. I'll let you know what he thinks.", "dlg_1_3")
			StartConversation(conversation, NPC, Spawn, "Take this tankard of Stout and head to Longshadow Alley where those prissy little Dark Elves live. The Iksar at my bar drink some strange things, so I can't use them to gauge the quality of my brew.  Find one of those little purple freaks in a tavern and offer him a taste.  Let me know how he likes it. Got it?")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end





