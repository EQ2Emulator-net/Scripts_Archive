--[[
	Script Name	: Quests/Starcrest/confrontation.lua
	Script Purpose	: Handles the quest, "Confrontation"
	Script Author	: Scatman
	Script Date	: 2008.09.21
	
	Zone       : Starcrest Commune
	Quest Giver: Maareona Ludimintium
	Preceded by: Hidden Treasures (hidden_treasures.lua)
	Followed by: 
--]]

function Init(Quest)
	
	--Erud's Wristband of Warding


	AddQuestStepChat(Quest, 1, "I need to retrieve materials for a public demonstration from Cayan Sable. I can get to Cayan by climbing the bench behind the northwest corner of the armor shop.", 1, ".", 0, 2340009) 
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talkedToCayan")

end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
		FaceTarget(QuestGiver, Player)
		conversation = CreateConversation()

		PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona029.mp3", "", "", 2162492923, 520954117, Player)
		AddConversationOption(conversation, "How do I destroy the soul spike?", "TapIt")
		StartConversation(conversation, QuestGiver, Player, "He might, but do not worry. He will not harm you, not here. At most he will attempt to pull you to Freeport with him. I do not think I need to lecture you on that.")
		end
	end
end

function TapIt(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	-- Nullification Stone
	-- Soul Spike
	SummonItem(Spawn, 8750)
	SummonItem(Spawn, 11413)

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona030.mp3", "", "", 720107384, 4004540442, Spawn)
	AddConversationOption(conversation, "I will return.")
	StartConversation(conversation, NPC, Spawn, "Tap it with this stone. The rest will attend to itself. Again, do not be wary of Velderoth.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_talkedToCayan(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have gotten the needed materials.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gotten the needed materials.") 
	
	-- folding stand
	SummonItem(Spawn, 6403)
	
	AddQuestStepLocation(Quest, 2, "I need to put a display in the central area of the Starcrest Commune, near the fountain of Deep Reflection.", 20, ".", 0, 769.82, -18.84, 280.61)
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_placedDisplay")
end

function step2_complete_placedDisplay(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have gotten the needed materials.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gotten the needed materials.") 
	
	-- folding stand
	SummonItem(Spawn, 6403)
	
	AddQuestStepLocation(Quest, 2, "I need to put a display in the central area of the Starcrest Commune, near the fountain of Deep Reflection.", 20, ".", 0, 769.82, -18.84, 280.61)
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_placedDisplay")
end
