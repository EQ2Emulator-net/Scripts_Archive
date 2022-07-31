--[[
	Script Name	: SpawnScripts/BeggarsCourt/DurioDexus.lua
	Script Purpose	: Durio Dexus 
	Script Author	: John Adams
	Script Date	: 2009.04.05
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local HUMAN = 9
local HUMAN_MENTOR_QUEST_3 = 177
local HUMAN_MENTOR_QUEST_4 = 178
local HUMAN_MENTOR_QUEST_5 = 179

function spawn(NPC)
	ProvidesQuest(NPC, HUMAN_MENTOR_QUEST_4)
	ProvidesQuest(NPC, HUMAN_MENTOR_QUEST_5)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	--if GetRace(Spawn) ~= HUMAN then
		--PlayFlavor(NPC, "", "I do not deal with your kind.", "", 1689589577, 4560189, Spawn)
	--else
		choice = math.random(1, 3)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "hello", 0, 0, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "hello", 0, 0, Spawn)
		elseif choice == 3 then
			PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "hello", 0, 0, Spawn)
		end
		
		if HasCompletedQuest(Spawn, HUMAN_MENTOR_QUEST_3) then
			if HasCompletedQuest(Spawn, HUMAN_MENTOR_QUEST_4) then
				if HasCompletedQuest(Spawn, HUMAN_MENTOR_QUEST_5) then
					Say(NPC, "Good luck in your future journeys.", Spawn)
				elseif HasQuest(Spawn, HUMAN_MENTOR_QUEST_5) then
					MeetMyFriend(NPC, Spawn, conversation)
				else
					MeetMyFriend(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn, HUMAN_MENTOR_QUEST_4) then
				OnQuest4(NPC, Spawn, conversation)
			else
				Diverted(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, HUMAN_MENTOR_QUEST_3) then
			OnQuest1(NPC, Spawn, conversation)
		end
	--end
end

-------------------------------------------------------------------------------------------------
--							HUMAN MENTOR QUEST 3
-------------------------------------------------------------------------------------------------

function OnQuest1(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, HUMAN_MENTOR_QUEST_3) == 1 then
		AddConversationOption(conversation, "I am " .. GetName(Spawn) .. ", here on behalf of Alucius. I was sent to sell you this package.", "dlg_21_1")
		AddConversationOption(conversation, "I am just a bit lost. I am leaving now.")
		StartConversation(conversation, NPC, Spawn, "Greetings. Who might you be? I do not run into many people over in this area. You must have some purpose for being here.")
	elseif GetQuestStep(Spawn, HUMAN_MENTOR_QUEST_3) == 2 then
		Say(NPC, "You do not appear to be done your task yet. Once you finish it, come back to me.", Spawn)
	elseif GetQuestStep(Spawn, HUMAN_MENTOR_QUEST_3) == 3 then
		AddConversationOption(conversation, "Indeed I did. I think I stayed out of trouble.", "Diverted")
		AddConversationOption(conversation, "I had best return later.")
		StartConversation(conversation, NPC, Spawn, "Hello again, " .. GetName(Spawn) .. ". Did you speak to Kaseo like I suggested?")
	end
end

function dlg_21_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Regardless, I have the package you were interested in. Do you still want to purchase it or not?", "dlg_21_2")
	StartConversation(conversation, NPC, Spawn, "That is odd. It's not like him to trust anyone with his rare goods.")
end

function dlg_21_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Considering the price, I suppose it's okay to let you take a look first.", "dlg_21_3")
	AddConversationOption(conversation, "I think I will be going now.")
	StartConversation(conversation, NPC, Spawn, "Very well, I have the platinum I told Alucius I would give him for it. I would like to inspect the goods first if you do not mind.")
end

function dlg_21_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "No, I was only asked to sell it. Why do you ask?", "dlg_21_4")
	StartConversation(conversation, NPC, Spawn, "Tell me, " .. GetName(Spawn) .. ", do you know what is in this package?")
end

function dlg_21_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What? Alucius had me collect those so he could turn them in, not sell them..", "dlg_21_5")
	StartConversation(conversation, NPC, Spawn, "These are some very dangerous papers to have in your possession. No wonder Alucius did not come himself. These documents claim the Overlord is not as valiant as he seems.")
end

function dlg_21_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What do you mean by that? Alucius said that the ratonga was worthless.", "dlg_21_6")
	AddConversationOption(conversation, "I think I had better go.")
	StartConversation(conversation, NPC, Spawn, "Looks like he fooled you. He is more treacherous than he seems, and not a man to be crossed. Even so, I can not buy these papers. My life would be forfeit if I was caught with them. Of course, if you take them back to Alucius, you may end up like the ratonga that used to work for him.")
end

function dlg_21_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What should I do now? I don't want to end up dead or in jail.", "dlg_21_7")
	AddConversationOption(conversation, "I better find a safe place to hide!")
	StartConversation(conversation, NPC, Spawn, "There were rumors that the ratonga went missing while trying to sell some high-priced goods for Alucius. From what I hear, the merchandise included some obscure documents, probably something like these. The Militia found out and took him away, but they could never find the papers they were looking for. Apparently rats are very good at hiding things.")
end

function dlg_21_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I can't do that. I have done some... questionable work for Alucius already.", "dlg_21_8")
	StartConversation(conversation, NPC, Spawn, "Sounds like Alucius put you in quite a fix. Why don't you just turn him over to the Freeport Militia?")
end

function dlg_21_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What should I do about Alucius?", "dlg_21_9")
	AddConversationOption(conversation, "Maybe I should just leave.")
	StartConversation(conversation, NPC, Spawn, "These are some fairly important papers. I know of an opened-minded captain of the Freeport Militia in the area. He does not like to be pestered over menial affairs, but you may be able to hand them to him without getting yourself into trouble. ")
end

function dlg_21_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What can you tell me of the Freeport Militia?", "dlg_21_10")
	StartConversation(conversation, NPC, Spawn, "While you take the papers to Kaseo Volcatius, I will think about what to do concerning Alucius. It's important to get these papers into the proper hands before someone finds out about them. Kaseo is the Militia captain I spoke of earlier.")
end

function dlg_21_10(NPC, Spawn)
	SetStepComplete(Spawn, HUMAN_MENTOR_QUEST_3, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you, I will go speak with Kaseo now.", "dlg_21_11")
	StartConversation(conversation, NPC, Spawn, "They are the Overlord's army and the defenders of Freeport. They are not to be trifled with, for they hold considerable power and authority. I have sometimes seen Kaseo near the gates to North Freeport here in Beggar's Court. Go speak to him, but be careful of what you say. It is probably not wise to speak of the work you have done for Alucius, or even mention Alucius at all.")
end

function dlg_21_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you for all the help. I will be back.")
	StartConversation(conversation, NPC, Spawn, "Good. Come back when you are done and I will help you figure out what to do about Alucius.")
end

function Diverted(NPC, Spawn, conversation)
	if HasQuest(Spawn, HUMAN_MENTOR_QUEST_3) then
		SetStepComplete(Spawn, HUMAN_MENTOR_QUEST_3, 3)
	end
	
	if conversation == nil then
		FaceTarget(NPC, Spawn)
		conversation = CreateConversation()
	end

	AddConversationOption(conversation, "Yes. Kaseo doesn't believe I had anything to do with it.", "dlg_23_2")
	StartConversation(conversation, NPC, Spawn, "So you diverted suspicion about the documents away from yourself?")
end

-------------------------------------------------------------------------------------------------------------
--						HUMAN MENTOR QUEST 4
-------------------------------------------------------------------------------------------------------------

function dlg_23_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I told him that I slew a man who tried to sell me the documents. Kaseo was pleased and said he would tell others of my heroism.", "dlg_23_3")
	StartConversation(conversation, NPC, Spawn, "Well done! Tell me what happened so I can find a way to help you be rid of Alucius.")
end

function dlg_23_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What do you purpose I do?", "dlg_23_4")
	AddConversationOption(conversation, "I should be going.")
	StartConversation(conversation, NPC, Spawn, "Hmm, this might be used to your advantage. Alucius will no doubt hear that the propaganda was given to a member of the Freeport Militia. You may be able to use this to scare Alucius away.")
end

function dlg_23_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I will confront Alucius.", "OfferQuest4")
	StartConversation(conversation, NPC, Spawn, "Tell him that because of your deeds, the Freeport Militia considers you an ally. He wouldn't act against you if he believes the Militia are watching out for you. No one dares to cross them.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, HUMAN_MENTOR_QUEST_4)
end

function OnQuest4(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, HUMAN_MENTOR_QUEST_4) == 1 then
		Say(NPC, "You do not appear to be done your task yet. Once you finish it, come back to me.", Spawn)
	elseif GetQuestStep(Spawn, HUMAN_MENTOR_QUEST_4) == 2 then
		SetStepComplete(Spawn, HUMAN_MENTOR_QUEST_4, 2)
		AddConversationOption(conversation, "Yes. I don't think I have anything to fear from him.", "dlg_25_1")
		StartConversation(conversation, NPC, Spawn, "Hello again. Can I assume you handled Alucius?")
	end
end

------------------------------------------------------------------------------------------------------------------------
--							HUMAN MENTOR QUEST 5
------------------------------------------------------------------------------------------------------------------------

function dlg_25_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'd like to hear more about this friend.", "MeetMyFriend")
	AddConversationOption(conversation, "I'll come back and hear about your friend later.")
	StartConversation(conversation, NPC, Spawn, "That is good to hear. You made the right decision by turning those papers over to the Militia. This city could use more people like you. If you're interested, I could introduce you to a friend of mine who would give you work and guide you in a more suitable fashion than Alucius could.")
end

function MeetMyFriend(NPC, Spawn, conversation)
	if conversation == nil then
		FaceTarget(NPC, Spawn)
		conversation = CreateConversation()
	end

	AddConversationOption(conversation, "Yes, please tell me where I can meet him.", "dlg_25_3")
	AddConversationOption(conversation, "Not just yet.")
	StartConversation(conversation, NPC, Spawn, "So, " ..GetName(Spawn) .. ", are you ready to meet my friend Inquisitor Thorson?")
end

function dlg_25_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "point", 0, 0, Spawn)
	
	if HasQuest(Spawn, HUMAN_MENTOR_QUEST_5) then
		AddConversationOption(conversation, "I will go seek out Inquisitor Thorson.", "ProvenYourSelf")
	else
		AddConversationOption(conversation, "I will go seek out Inquisitor Thorson.", "OfferQuest5")
	end
	StartConversation(conversation, NPC, Spawn, "You can find him in the Sunken City. To get there, go to the docks and ring the bell to summon transportation outside of Freeport proper. You should be able to locate him quite easily once you arrive in the Sunken City.")
end

function OfferQuest5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, HUMAN_MENTOR_QUEST_5)
end

function ProvenYourSelf(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you again for all of your help.")
	StartConversation(conversation, NPC, Spawn, "You have proven yourself well. I'm sure you will be a great help to him. Travel safely, " .. GetName(Spawn) .. ".")
end