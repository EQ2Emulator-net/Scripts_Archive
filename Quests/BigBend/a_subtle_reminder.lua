--[[
	Script Name	: Quests/BigBend/a_subtle_reminder.lua
	Script Purpose	: Handles the quest, "A Subtle Reminder"
	Script Author	: Scatman
	Script Date	: 2009.04.03
	
	Zone       : Big Bend
	Quest Giver: Kroota Gukbutcher
	Preceded by: None
	Followed by: Trollish Delights (trollish_delights.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak to Thick-headed Ruzb about his culinary habits. He should be east of the Freeport gate, in the building with Brona the slaver.", 1, "Speak to Thick-headed Ruzb and convince him that gnomes must remain un-eaten.", 0, 1340029)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SpokeToRuzb")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder008.mp3", "", "", 3013529972, 3485417502, Player)
	AddConversationOption(conversation, "Yessir, mista Braz. I be right back! Tell him not to eat da gnomes. I gots it!")
	AddConversationOption(conversation, "I suppose so. It wouldn't do to have him be eating the gnomes, I suppose.")
	StartConversation(conversation, QuestGiver, Player, "Gud den! Braz tell yaz more when yaz get back. Dere's dis troll we call Fick-headed Ruzb. He keep eatin' da lil' gnomies from o'er in Temple Street. Youz go n' tell him to knock it off if he be doin' it 'gain.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_SpokeToRuzb(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Ruzb needs some incentive to change to a new meat product.")
	
	AddQuestStepObtainItem(Quest, 2,  "Buy some dwarf chunks from Merchant Skagga.", 1, 100,  "Speak to Thick-headed Ruzb and convince him that gnomes must remain un-eaten.", 135,  4676)

	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_GotDwarfMeat")
end

function Step2_Complete_GotDwarfMeat(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "With the dwarf chunks in hand, it's time to return to Ruzb.")
	
	AddQuestStepChat(Quest, 3, "Return to speak with Ruzb about his new food group.", 1, "Speak to Thick-headed Ruzb and convince him that gnomes must remain un-eaten.", 0, 1340029)
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_SpokeToRuzb")
end

function Step3_Complete_SpokeToRuzb(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "Ruzb has seen the light. Or at least, he understands that it could go badly for him if he continues to eat gnomes.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Ruzb has seen the light. Or at least, he understands that it could go badly for him if he continues to eat gnomes.")

	-- dwarf chunks
	RemoveItem(Player, 5825)
	
	AddQuestStepChat(Quest, 4, "Speak with Braz Gutpounder.", 1, "Return to Braz Gutpounder and tell him about Ruzb.", 0, 1340002)
	AddQuestStepCompleteAction(Quest, 4, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "With Ruzb convinced to stop eating gnomes from the neighboring areas, Braz thanked me. Maybe I should come back later and ask him some more about the trolls.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		Step1_Complete_SpokeToRuzb(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_GotDwarfMeat(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_SpokeToRuzb(Quest, QuestGiver, Player)
	end
end
