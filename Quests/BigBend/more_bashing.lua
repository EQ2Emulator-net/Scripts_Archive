--[[
	Script Name	: Quests/BigBend/more_bashing.lua
	Script Purpose	: Handles the quest, "More Bashing!"
	Script Author	: Scatman
	Script Date	: 2009.04.02
	
	Zone       : Big Bend
	Quest Giver: Kroota Gukbutcher
	Preceded by: The Fume and Fire Ceremony (the_fume_and_fire_ceremony.lu)
	Followed by: None
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Enforcer Kurdek.", 1, "I need to find Enforcer Kurdek in The Sprawl and see what work he has for me.", 0, 1260006)
	AddQuestStepCompleteAction(Quest, 1, "Quest_Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher059.mp3", "", "", 145399473, 3077625790, Player)
	AddConversationOption(conversation, "Good days ahead.  May many fall under your heels and feel your sword.")
	StartConversation(conversation, QuestGiver, Player, "Good!  He will be waiting for you, good luck!")
end

function Declined(Quest, QuestGiver, Player)
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Enforcer Kurdek.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found Enforcer Kurdek.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I have spoken to Enforcer Kurdek.")
end

function Reload(Quest, QuestGiver, Player)
end