--[[
	Script Name	: Quests/BigBend/trollish_delights.lua
	Script Purpose	: Handles the quest, "Trollish Delights"
	Script Author	: Scatman
	Script Date	: 2009.04.03
	
	Zone       : Big Bend
	Quest Giver: Kroota Gukbutcher
	Preceded by: A Subtle Reminder (a_subtle_reminder.lua)
	Followed by: Troll Patrol (troll_patrol.lua)
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Club down four Big Bend rats and take their carcasses. Braz said they should be by the gate to The Sprawl.", 4, 100, "Braz Gutpounder would like some food. It's a hungry job explaining the nuances of being a troll.", 136, 1340047)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledRats")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder014.mp3", "", "", 2937462756, 4237727989, Player)
	AddConversationOption(conversation, "Datz a nice fing you do, Braz. I help yaz, yes I do!")
	AddConversationOption(conversation, "Oh goodiee! You mean I'll get a treat?!")
	StartConversation(conversation, QuestGiver, Player, "No matter tho'. Braz finks da gods all gone, and we can do whut we wants. An' right now, Braz wants some o' dem big n' juicy rats by da Sprawl gate! " .. GetName(Player) .. " be gettin' dem if he wants some more history. An' ol' Braz may juz hav'a some'tin-some'tin for yaz too!")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledRats(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Braz is going to feast well on these plump n' juicy rascals!")
	
	AddQuestStepSpell(Quest, 2, "Braz might just like these little guys cooked up. Head to the Torch of Oggok and do him the honor.", 1, 100, "Braz Gutpounder would like some food. It's a hungry job explaining the nuances of being a troll.", 0, 5027)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Completed_CookedRats")
end

function Step2_Completed_CookedRats(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "The rats are cooked. They sure do look tasty!")
	UpdateQuestTaskGroupDescription(Quest, 1, "Braz will no doubt appreciate the additional touch. It's the little things that count.")
	
	AddQuestStepChat(Quest, 3, "Give the slightly-cooked rats to Braz Gutpounder.", 1, "Return to Braz Gutpounder with the rats that he asked for.", 0, 1340002)
	AddQuestStepCompleteAction(Quest, 3, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "How could anyone know that Braz wouldn't like his rats cooked? It seems like such a natural thing to do, really. Don't eat the food unless it's cooked. Isn't that taught to everyone?")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		Step1_Complete_KilledRats(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Completed_CookedRats(Quest, QuestGiver, Player)
	end
end
