--[[
	Script Name	: Quests/TempleSt/more_quality.lua
	Script Purpose	: Quest , More Quality
	Script Author	: Xanibunib
	Script Date	: 4.25.2009
	
	Zone       : Temple Street
	Quest Giver: Neezer Grund
	Quest ID#	: 200
	Preceded by: More Power
	Followed by: 
--]]

function Init(Quest)

	--Modified Arcanic Tracer
	
	
	AddQuestStepObtainItem(Quest, 1,  "I need to get a hyper-organic suppressor. Neezer says there is one in shipment C68F near the gates to South Freeport.", 1, 100,  "Neezer Grund would like me to collect some higher quality parts for his translation device.", 291,  5710) 

	AddQuestStepObtainItem(Quest, 2,  "I need to buy a high-quality arcanic tracer from Qwergo Togglesmeet in the western corner of Temple Street.", 1, 100,  "Neezer Grund would like me to collect some higher quality parts for his translation device.", 971,  5678) 

	AddQuestStepObtainItem(Quest, 3,  "I need to buy dongle-sweep particle buoy from Twergo Togglesmeet in the western corner of Temple Street.", 1, 100,  "Neezer Grund would like me to collect some higher quality parts for his translation device.", 368,  4594)

	
	AddQuestStepCompleteAction(Quest, 1, "GotHOS")
	AddQuestStepCompleteAction(Quest, 2, "GotTracer")
	AddQuestStepCompleteAction(Quest, 3, "GotBuoy")
	

end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance (Player, QuestGiver) < 30 then
			FaceTarget (QuestGiver, Player)
			conversation = CreateConversation()
			
			AddConversationOption(NPC, Spawn, "All right.", "dlg_0_1")
			StartConversation(NPC, Spawn, "Wonderful. I'll need a hyper-organic suppressor,") --get rest from log)
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(NPC, Spawn, "All right, I will return.")
	StartConversaion(NPC, Spawn, "Once you have these items we should be able to get back to work.")
end

function GotHOS(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have obtained a hyper-organic suppressor.")
	
	if QuestIsComplete(Player, 200) then
		Step1_Complete(Quest, QuestGiver, Player)
	end
end

function GotTracer(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "	I have obtained a high-quality arcanic tracer.")
	
	if QuestIsComplete(Player, 200) then
		Step1_Complete(Quest, QuestGiver, Player)
	end
end

function GotBuoy(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "	I have obtained a high-quality arcanic tracer.")
	
	if QuestIsComplete(Player, 200) then
		Step1_Complete(Quest, QuestGiver, Player)
	end
end

function Step1_Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the high quality parts Neezer Grund asked for.")
	
	AddQuestStepChat(Quest, 4, "I need to speak with Neezer Grund near the docks.", 1, "I need to help Neezer Grund test his translation device again.", 0, 1390077) 
	AddQuestStepCompleteAction(Quest, 4, "Step2_Complete")
end	

function Step2_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Neezer Grund.")
	
	AddQuestStepSpell(Quest, 5, "I need to place the blast capsule in the translation device so that Neezer can power it up.", 1, 100, "I need to help Neezer Grund test his translation device again.", 0, 5035)
	AddQuestStepCompleteAction(Quest, 5, "Step3_Complete")
end

function Step3_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have placed the blast capsule in the translation device.")
	
	AddQuestStepChat(Quest, 6, "I need to speak with Neezer Grund again.", 1, "I need to help Neezer Grund test his translation device again.", 0, 1390077) 
	AddQuestStepCompleteAction(Quest, 6, "Step4_Complete")
end

function Step4_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have spoken with Neezer Grund.")
	
	AddQuestStepObtainItem(Quest, 7,  "I need to obtain a pig from Frondo Wignin near the gates that have been closed by the Overlord in south western Temple Street.", 1, 100,  "I need to help Neezer Grund test his translation device again.", 0,  1967)

	AddQuestStepCompleteAction(Quest, 7, "Step5_Complete")
end

function Step5_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I have recived a pig from Frondo Wignin.")
	
	AddQuestStepChat(Quest, 8, "I need to speak with Neezer Grund again now that I have this pig.", 1, "I need to help Neezer Grund test his translation device again.", 0, 1390077) 
	AddQuestStepCompleteAction(Quest, 8, "Step6_Complete")
end

function Step6_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "	I have spoken with Neezer Grund.")
	
	AddQuestStepSpell(Quest, 9, "I need to place the pig in the cage so that Neezer can attempt to translate it.", 1, 1, "I need to help Neezer Grund test his translation device again.", 0, 5036) --Place Pig In Cage
	AddQuestStepCompleteAction(Quest, 9, "Step7_Complete")
end
	
function Step7_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 9, "I have put the pig in the cage.")
	
	AddQuestStepChat(Quest, 10, "I need to speak with Neezer Grund again..", 1, "I need to help Neezer Grund test his translation device again.", 0, 1390077)
	AddQuestStepCompleteAction(Quest, 10, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 10, "	I have spoken with Neezer Grund.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have helped Neezer Grund test his translation device.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		GotHOS(Quest, QuestGiver, Player)
	elseif Step == 2 then
		GotTracer(Quest, QuestGiver, Player)
	elseif Step == 3 then
		GotBuoy(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step1_Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step2_Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step3_Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step4_Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		Step5_Complete(Quest, QuestGiver, Player)
	elseif Step == 9 then
		Step6_Complete(Quest, QuestGiver, Player)
	elseif Step == 10 then
		Step7_Complete(Quest, QuestGiver, Player)
	end
end
	
