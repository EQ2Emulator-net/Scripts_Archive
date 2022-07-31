--[[
	Script Name	: Quests/BigBend/ay_theres_the_rubbish.lua
	Script Purpose	: Handles the quest, "Ay, There's the Rubb'ish"
	Script Author	: Scatman
	Script Date	: 2009.04.02
	
	Zone       : Big Bend
	Quest Giver: Kroota Gukbutcher
	Preceded by: None
	Followed by: Rat Barsh! (rat_barsh.lua)
--]]

function Init(Quest)
	AddQuestStepObtainItem(Quest, 1,  "Any broken bits of vase need to be picked up.", 4, 100,  "I am to remove the remnants of the fight from around the gate to South Freeport.", 2365,  8089)
	AddQuestStepObtainItem(Quest, 2,  "Any bones on the ground should also be removed.", 2, 100,  "I am to remove the remnants of the fight from around the gate to South Freeport.", 418,  10008)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_CleanedVases")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_CleanedBones")
end


function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher006.mp3", "", "", 1413745133, 1208180432, Player)
	AddConversationOption(conversation, "Better make it worth a lot.")
	StartConversation(conversation, QuestGiver, Player, "You clean up the rubbish, and I will make it worth it to you.  Our fight was at the gate to South Freeport. ")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_CleanedVases(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I removed the broken bits of vase at the gate.")
	
	if QuestIsComplete(Player, 165) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Step2_Complete_CleanedBones(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I removed the bones at the gate.")
	
	if QuestIsComplete(Player, 165) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Multiple_Steps_Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I cleaned up the rubbish.")
	
	AddQuestStepChat(Quest, 3, "Report back to Kroota at the docks in the South end of Big Bend.", 1, "I should return to Kroota now.", 0, 1340003)
	AddQuestStepCompleteAction(Quest, 3, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	--
	RemoveItem(Player, 10175)
	RemoveItem(Player, 10175)
	RemoveItem(Player, 10175)
	RemoveItem(Player, 10175)
	--
	RemoveItem(Player, 12611)
	RemoveItem(Player, 12611)
	UpdateQuestDescription(Quest, "I cleaned up the trash and other signs of the fight from around the gate the gate to S. Freeport.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		Step1_Complete_CleanedVases(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_CleanedBones(Quest, QuestGiver, Player)
	end
end
