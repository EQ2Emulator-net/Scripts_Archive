--[[
	Script Name	: Quests/BigBend/troll_patrol.lua
	Script Purpose	: Handles the quest, "Troll Patrol"
	Script Author	: Scatman
	Script Date	: 2009.04.03
	
	Zone       : Big Bend
	Quest Giver: Kroota Gukbutcher
	Preceded by: Trollish Delights (trollish_delights.lua)
	Followed by: Gnomore Gnomesteaks (gnomore_gnomesteaks.lua)
--]]

function Init(Quest)
	AddQuestStepLocation(Quest, 1, "Hang a right leaving the docks, and pass under the first clothesline.", 10, "Perform Braz Gutpounder's patrol around Big Bend.", 0, -38.85, -0.86, 33.64)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_FirstLoc")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder023.mp3", "", "", 122106217, 2176574440, Player)
	AddConversationOption(conversation, "Awww, " .. GetName(Player) .. " wanna hear more!")
	AddConversationOption(conversation, "Fine. I suppose I shall demand recompense when I return from this duty you have.")
	StartConversation(conversation, QuestGiver, Player, "Den you go do sometin' for ol' Braz, dat's whut. Nuff' story, ol' Braz gots ta rest. " .. GetName(Player) .. " do his patrol. Den all be well. Yessir, dis iz da life!")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_FirstLoc(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "One o' clock, and all's well!")
	
	AddQuestStepLocation(Quest, 2, "Continue north along the eastern side of Big Bend.", 10, "Perform Braz Gutpounder's patrol around Big Bend.", 0, -48.15, 3.96, -5.66)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_SecondLoc")
end

function Step2_Complete_SecondLoc(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Two o' clock, and all's well!")
	
	AddQuestStepLocation(Quest, 3, "Head past the Freeport gate T-intersection.", 10, "Perform Braz Gutpounder's patrol around Big Bend.", 0, -4.20, 2.85, -30.40)
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_ThirdLoc")
end

function Step3_Complete_ThirdLoc(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "Three o' clock, and all's well!")
	
	AddQuestStepLocation(Quest, 4, "Move a bit further on, and take a left through the alley towards the Torch of Oggok.", 10, "Perform Braz Gutpounder's patrol around Big Bend.", 0, 2.96, 0, -9.09)
	AddQuestStepCompleteAction(Quest, 4, "Step4_Complete_FourthLoc")
end

function Step4_Complete_FourthLoc(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "There's a danged crazy halfling comin' out of the sewer!")
	
	SpawnMob(GetZone(Player), 1340049, false, 7.08, 0, -10.38, 279.32)
	Halfling = GetSpawn(Player, 1340049)
	AddHate(Player, Halfling, 100)
	
	AddQuestStepKill(Quest, 5, "Kill the halfling!", 1, 100, "Perform Braz Gutpounder's patrol around Big Bend.", 0, 1340049)
	AddQuestStepCompleteAction(Quest, 5, "Step5_Complete_KilledHalfling")
end

function Step5_Complete_KilledHalfling(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "Ow! That danged halfling.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Except for a loathsome halfling that popped out of the sewer, the patrol was quiet.")
	
	AddQuestStepChat(Quest, 6, "Speak with Braz Gutpounder", 1, "Return to Braz to tell him about the patrol.", 0, 1340002)
	AddQuestStepCompleteAction(Quest, 6, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Aside from that filthy, foul and disruptive little halfling, the whole patrol was quiet. Only one dead. I suppose it's a good day.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		Step1_Complete_FirstLoc(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_SecondLoc(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_ThirdLoc(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4_Complete_FourthLoc(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5_Complete_KilledHalfling(Quest, QuestGiver, Player)
	end
end
