--[[
	Script Name	: Quests/Nettleville/unfortunate_mistakes.lua
	Script Purpose	: Handles the quest, "Unfortunate Mistakes"
	Script Author	: Scatman
	Script Date	: 2008.09.23
	
	Zone       : Nettleville
	Quest Giver: Lakosha Maera
	Preceded by: Required Components (required_components.lua
	Followed by: To the Source (to_the_source.lua)
--]]

function Init(Quest)
	--AddQuestStepObtainItem(Quest, 1,  "I need to buy Reactive Kesmith. Laharn says that Alchemist Garion Dunam in the scribe shop will sell some.", 1, 100,  ".", 0,  REACTIVE_KESMITH_ID)
	--AddQuestStepCompleteAction(Quest, 3, "step3_complete_gotMushrooms")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera019a.mp3", "", "", 3555353396, 4246766258, Spawn)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, QuestGiver, Player, "Go quicky, and good luck.")
end

function Declined(Quest, QuestGiver, Player)
end
