--[[
	Script Name	: Quests/BigBend/much_ado_about_rallos.lua
	Script Purpose	: Handles the quest, "Much Ado' About Rallos"
	Script Author	: Scatman
	Script Date	: 2009.04.02
	
	Zone       : Big Bend
	Quest Giver: Kroota Gukbutcher
	Preceded by: Rat Barsh! (rat_barsh.lua)
	Followed by: The Fume and Fire Ceremony (the_fume_and_fire_ceremony.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Zukogg is just outside the Freeport Reserve bank in the center of Big Bend. Speak to her about the skins.", 1, "Rallos' ceremony requires blood of his enemies, skins of the inferior, and incense.", 0, 1340018)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SpokeToZukogg")
end


function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher020.mp3", "", "", 2057670634, 3634328658, Player)
	AddConversationOption(conversation, "I will go speak to each now")
	StartConversation(conversation, QuestGiver, Player, "No need ta hunt.  Speak with Zukogg for the flesh, Barch for the blood, and Crattok, the troll for the incense.  Do not speak to anyone else about this ceremony.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_SpokeToZukogg(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke to Zukogg.")
	
	AddQuestStepSpell(Quest, 2, "Gather a fresh kill from a barrel near Darby the tailor, in the center of Big Bend.", 1, 100, "Rallos' ceremony requires blood of his enemies, skins of the inferior, and incense.", 0, 5024)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_GotSkins")
end

function Step2_Complete_GotSkins(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have the skins of the inferior.")
	
	-- Skins of the Inferior
	SummonItem(Player, 11154)
	
	AddQuestStepChat(Quest, 3, "Barch has the blood that is required. He is near the Torch of Oggok in the center of Big Bend.", 1, "Rallos' ceremony requires blood of his enemies, skins of the inferior, and incense.", 0, 1340015)
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_SpokeToBarch")
end

function Step3_Complete_SpokeToBarch(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I spoke to Barch.")
	
	AddQuestStepObtainItem(Quest, 4,  "Barch needs an elvish vase. Seek one in the room with the Qeynosian prisoners in North Big Bend.", 1, 100,  "Rallos' ceremony requires blood of his enemies skins of the inferior and incense.", 569,  10574)

	AddQuestStepCompleteAction(Quest, 4, "Step4_Complete_GotVase")
end

function Step4_Complete_GotVase(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have found an elvish vase for the blood!")
	
	AddQuestStepChat(Quest, 5, "Return to Barch for the blood. He is near the Torch of Oggok in the center of Big Bend.", 1, "Rallos' ceremony requires blood of his enemies, skins of the inferior, and incense.", 0, 1340015)
	AddQuestStepCompleteAction(Quest, 5, "Step5_Complete_SpokeToBarch")
end

function Step5_Complete_SpokeToBarch(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have the blood of the enemy.")
	
	-- Vase of Qeynosian Origin
	RemoveItem(Player, 13299)
	-- Blood of Rallos' Enemies
	SummonItem(Player, 3830)
	
	AddQuestStepChat(Quest, 6, "Crattok can be found near the Big Boom Magics! scribe shop, with the incense I need.", 1, "Rallos' ceremony requires blood of his enemies, skins of the inferior, and incense.", 0, 1340028)
	AddQuestStepCompleteAction(Quest, 6, "Step6_Complete_SpokeToCrattok")
end

function Step6_Complete_SpokeToCrattok(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "She would not give the incense to me without some form of payment. Maybe Kroota knows what she wants.")
	
	AddQuestStepChat(Quest, 7, "Report back to Kroota at the docks in the South end of Big Bend.", 1, "Rallos' ceremony requires blood of his enemies, skins of the inferior, and incense.", 0, 1340003)
	AddQuestStepCompleteAction(Quest, 7, "Step7_Complete_SpokeToKroota")
end

function Step7_Complete_SpokeToKroota(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "Kroota thinks Crattok will take the rats as payment.")
	
	AddQuestStepChat(Quest, 8, "Return to Crattok now that you have the sack of rat carcasses asy payment. Trolls like snacks!", 1, "Rallos' ceremony requires blood of his enemies, skins of the inferior, and incense.", 0, 1340028)
	AddQuestStepCompleteAction(Quest, 8, "Step8_Complete_SpokeToCrattok")
end

function Step8_Complete_SpokeToCrattok(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I have the incense that is needed for the ceremony.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have the items for the ceremony.")
	
	-- Incense
	SummonItem(Player, 7105)
	
	AddQuestStepChat(Quest, 9, "Report back to Kroota at the docks in the South end of Big Bend.", 1, "I should return to Kroota, now.", 0, 1340003)
	AddQuestStepCompleteAction(Quest, 9, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	RemoveItem(Player, 11154)
	RemoveItem(Player, 3830)
	RemoveItem(Player, 7105)
	UpdateQuestDescription(Quest, "The ceremony to honor Rallos Zek will go well, now that the needed items were given to Kroota.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		Step1_Complete_SpokeToZukogg(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_GotSkins(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_SpokeToBarch(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4_Complete_GotVase(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5_Complete_SpokeToBarch(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step6_Complete_SpokeToCrattok(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7_Complete_SpokeToKroota(Quest, QuestGiver, Player)
	elseif Step == 8 then
		Step8_Complete_SpokeToCrattok(Quest, QuestGiver, Player)
	end
end
