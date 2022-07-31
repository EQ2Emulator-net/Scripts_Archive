--[[
	Script Name	: Quests/BigBend/rat_barsh.lua
	Script Purpose	: Handles the quest, "Rat Barsh!"
	Script Author	: Scatman
	Script Date	: 2009.04.02
	
	Zone       : Big Bend
	Quest Giver: Kroota Gukbutcher
	Preceded by: Ay, There's the Rubb'ish (ay_theres_the_rubbish.lua)
	Followed by: Much Ado' About Rallos (much_ado_about_rallos.lua)
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Kill rats at the gate leading to the Sprawl.", 6, 100, "I need to go hunt for rats at the gate leading to the Sprawl.", 122, 1340047)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledRats")
end


function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher013.mp3", "", "", 2032062341, 3293141505, Player)
	AddConversationOption(conversation, "Barshing sounds good.", "dlg_43_10")
	StartConversation(conversation, QuestGiver, Player, "Since the fight ceremony was stopped, we should perform a ceremony of another type. There are some items that we need for this.  If you can barsh rats and bring back their carcasses, I will get the rest.")
end

function dlg_43_10(QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher045.mp3", "", "", 1844945483, 2398511964, Player)
	AddConversationOption(conversation, "I'll be back with the carcasses.")
	StartConversation(conversation, QuestGiver, Player, "Good.  You will have the best luck finding rodents at the gate leading to the Sprawl.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledRats(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I should have enough rat carcasses for the ceremony.")
	UpdateQuestStepDescription(Quest, 1, "I should have enough rat carcasses for the ceremony.")
	
	AddQuestStepChat(Quest, 2, "Report back to Kroota at the docks in the South end of Big Bend.", 1, "I should return to Kroota, now.", 0, 1340003)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)	
	UpdateQuestDescription(Quest, "I barshed many rats at the gate to the Sprawl for Kroota. Even though they were now what I had in mind, he still says they will come in useful.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		Step1_Complete_KilledRats(Quest, QuestGiver, Player)
	end
end
