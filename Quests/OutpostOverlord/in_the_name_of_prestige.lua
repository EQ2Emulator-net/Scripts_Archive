--[[
	Script Name	: Quests/OutpostOverlord/in_the_name_of_prestige.lua
	Script Purpose	: Handles the quest, "In the Name of Prestige"
	Script Author	: Scatman
	Script Date	: 2008.12.21

	
	Zone       : Outpost of the Overlord
	Quest Giver: Charles Arker
	Preceded by: None
	Followed by: In the Name of Honor (in_the_name_of_honor.lua)
--]]


function Init(Quest)
	--Arker's belt pouch


	AddQuestStepChat(Quest, 1, "Receive the parchment pieces from Charles Arker.", 1, "Charles Arker will give me the pieces of parchment I'll need to investigate this puzzle.", 0, 2780089) 
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talkedToCharles")

end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			conversation = CreateConversation()

			PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker004.mp3", "", "", 1870656524, 1643000002, Player)
			AddConversationOption(conversation, "I'll see what I can find out.", "SeeWhatICanFindOut")
			StartConversation(conversation, QuestGiver, Player, "I appreciate it, " .. GetName(Player) .. ". Whatever glory comes of this, we'll share in the credit. I'm sure this will more than make up for the work I've done that others have taken credit for.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function SeeWhatICanFindOut(Quest, QuestGiver, Player)
	SetStepComplete(Player, 50, 1)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker021.mp3", "", "", 1916109124, 3504506765, Player)
	AddConversationOption(conversation, "I'll keep that in mind.")
	StartConversation(conversation, QuestGiver, Player, "A word of warning: be wary of those wood elves.  They're more cunning than others may realize.")
end

function step1_complete_talkedToCharles(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I received the initial pieces of parchment from Charles Arker.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I received the initial pieces of parchment from Charles Arker.")
	
	--Pachment Scrap(Right click this to examine it)
	--The edges of the parchment are torn and jagged as though ripped from a much larger document.
	--		Examine the parchment. ()
	--		Put the parchment away.
	
	--You can barely make out some writing on this scrap: "The horse sentries will ... that we ..." There is very little to go on in this notes, but it's obvious the Tunarian horse sentries are involved. You decide you will hunt them down until you retrieve more information.
	--		Roll the parchment up. ()
	
	--update quest
	--You carefully roll the parchment and stow it away.
	--		Put the parchment away.
	
	--SummonItem(Player, 11449)
	AddQuestStepChat(Quest, 2, "I should take a look at these parchment scraps given to me by Charles Arker to get some more clues on where to gather more. (Dev note: Talk to Charles Arker for now.)", 1, "The Tunarians have probably hidden the rest of this parchment and they feel secure. It will be up to me to shatter their security.", 0, 2780089)
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_examinedParchment")
end

function step2_complete_examinedParchment(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've examined the parchment.")
	
	AddQuestStepKill(Quest, 3, "Search the Tunarian horse sentries for more pieces of parchment.", 3, 100, "The Tunarians have probably hidden the rest of this parchment and they feel secure. It will be up to me to shatter their security.", 611, 2780114, 2780083, 2780123, 2780161, 2780095, 2780134, 2780097, 2780190, 2780138, 2780188, 2780108)
	AddQuestStepCompleteAction(Quest, 3, "step3_complete_killedSentries")
end

function step3_complete_killedSentries(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've located another piece of parchment.")
	
	--Pachment Scrap
	--The edges of the parchment are torn and jagged as though ripped from a much larger document.
	--		Put together the parchment pieces. ()
	--		Put the parchment away.
	
	--You line up the parchment pieces. The newest piece adds enough new words that you can read: "The horse sentries will ... that we can ... wilderbears ..." The Tunarians are using the wilderbears for something? Perhaps slaying the wilderbears will force a change in plans?
	--		Roll the parchment up. ()
	
	--update quest
	--You carefully roll the parchment and stow it away.
	--		Put the parchment away.
	
	AddQuestStepChat(Quest, 4, "I should examine the parchment pieces. (Dev note: Talk to Charles Arker for now.)", 1, "The Tunarians have probably hidden the rest of this parchment and they feel secure. It will be up to me to shatter their security.", 0, 2780089)
	AddQuestStepCompleteAction(Quest, 4, "step4_complete_examinedParchment")
end

function step4_complete_examinedParchment(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've examined the parchment.")
	
	--SummonItem(Player, 11445)
	--RemoveItem(Player, 11449)
	AddQuestStepKill(Quest, 5, "Remove some of the wilderbear cubs. Taking out the young will delay the Tunarian plans for them.", 4, 100, "The Tunarians have probably hidden the rest of this parchment and they feel secure. It will be up to me to shatter their security.", 611, 2780082)
	AddQuestStepCompleteAction(Quest, 5, "step5_complete_killedBearCubs")
end

function step5_complete_killedBearCubs(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've slain the wilderbear cubs.")
	
	AddQuestStepKill(Quest, 6, "Now to remove some of the wilderbears themselves!", 3, 100, "The Tunarians have probably hidden the rest of this parchment and they feel secure. It will be up to me to shatter their security.", 611, 2780096)
	AddQuestStepCompleteAction(Quest, 6, "step6_complete_killedBears")
end

function step6_complete_killedBears(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I've slain several wilderbears.")
	
	--Parchment Scrap
	--The edges of the parchment are torn and jagged as though ripped from a much larger document.
	--		Re-examine the parchment scraps. ()
	--		Put the parchment away.
	
	--There seems to be no new clues to finish off this puzzle: "The horse sentries will ... that we can ... wilderbears ..." What are the Tunarians doing? And what plan do they have that would use the wilderbears? Perhaps Charles Arker has some insight into what this all means. You plan to visit him again to see if he has perhaps gotten any more information.
	--		Roll the parchment up. ()
	
	--update quest
	--You carefully roll the parchment and stow it away.
	--		Put the parchment away.
	
	AddQuestStepChat(Quest, 7, "I'm not sure whether there's more to this parchment or not. I'll take another look and see if it makes any more sense now. (Dev note: Talk to Charles Arker for now.)", 1, "The Tunarians have probably hidden the rest of this parchment and they feel secure. It will be up to me to shatter their security.", 0, 2780089)
	AddQuestStepCompleteAction(Quest, 7, "step7_complete_examinedParchment")
end

function step7_complete_examinedParchment(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I've located many pieces of this parchment and pieced together what I could locate.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've located many pieces of this parchment and pieced together what I could locate.")

	AddQuestStepChat(Quest, 8, "Speak with Charles Arker.", 1, "I need to return to Charles Arker and show him the pieces I've assembled. Hopefully, he has found the scraps that I missed and we'll know what the Tunarians are doing.", 0, 2780089)
	AddQuestStepCompleteAction(Quest, 8, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	--RemoveItem(Player, 11445)
	UpdateQuestDescription(Quest, "Though I located some of the notes' scattered pieces, I wasn't able to locate every piece. Neither was Charles Arker, though he still believes this note has some significance. It's frusterating to realize that the Tunarians are planning something, yet we are unable to completely solve this riddle. Perhaps in time, more will be made clear to me.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	   step1_complete_talkedToCharles(Quest, QuestGiver, Player)
	elseif Step == 2 then
	   step2_complete_examinedParchment(Quest, QuestGiver, Player)
	elseif Step == 3 then
	   step3_complete_killedSentries(Quest, QuestGiver, Player)
	elseif Step == 4 then
	   step4_complete_examinedParchment(Quest, QuestGiver, Player)
	elseif Step == 5 then
	   step5_complete_killedBearCubs(Quest, QuestGiver, Player)
	elseif Step == 6 then
	  step6_complete_killedBears(Quest, QuestGiver, Player)
	elseif Step == 7 then
	   step7_complete_examinedParchment(Quest, QuestGiver, Player)
	end
end
