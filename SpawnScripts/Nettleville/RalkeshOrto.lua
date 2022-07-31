--[[
	Script Name	: SpawnScripts/Nettleville/RalkeshOrto.lua
	Script Purpose	: Ralkesh Orto 
	Script Author	: John Adams
	Script Date	: 2008.09.24
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
   spawn(NPC)
end

function hailed(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   if HasQuest(Spawn, 40) then
      if GetQuestStep(Spawn, 40) == 1 then
         SomethingIMustDo(NPC, Spawn)
      end
   end

	--[[if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/qst_ralkesh_orto_ceremony_26c02873.mp3", "Blessed Ja'neth, may your spirit remain forever peaceful. Loved Ja'neth, may your bindings remain forever loose. Lost Ja'neth, may you one day find me again.", "", 1234777522, 783285646, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/qst_ralkesh_orto_mourn_6b24b157.mp3", "Oh, Ja'neth. Why!", "cry", 1219541946, 2965391465, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/qst_ralkesh_orto_onemoment_89f15716.mp3", "One moment please, this is important.", "", 4271869261, 3070926903, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/qst_ralkesh_orto_overwith_e17083e9.mp3", "Oh, Ja'Neth... Ja'Neth.", "", 3271321560, 3056376656, Spawn)
	else
	end

	if convo==32 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/quests/ralkesh_orto/ralkesh_orto001.mp3", "", "", 4080723751, 2709731004, Spawn)
		AddConversationOption(conversation, "Then you are the one performing the Pa'Rok ceremony?", "dlg_32_1")
		StartConversation(conversation, NPC, Spawn, "This is something I must do, please do not interfere.")
	end

	if convo==33 then
		
	end--]]

end

function SomethingIMustDo(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
   
   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/quests/ralkesh_orto/ralkesh_orto001.mp3", "", "", 4080723751, 2709731004, Spawn)
   AddConversationOption(conversation, "Then you are the one performing the Pa'Rok ceremony?", "dlg_30_1")
   StartConversation(conversation, NPC, Spawn, "This is something I must do, please do not interfere.")
end

function dlg_30_1(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/quests/ralkesh_orto/ralkesh_orto002.mp3", "", "", 2184946112, 169031811, Spawn)
   AddConversationOption(conversation, "The soil you are using has contaminants in it, the ceremony may be corrupted!", "dlg_30_2")
  StartConversation(conversation, NPC, Spawn, "Yes, which is precisely why you must leave me alone!")
end

function dlg_30_2(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/quests/ralkesh_orto/ralkesh_orto003.mp3", "", "", 2398850443, 2909693693, Spawn)
   AddConversationOption(conversation, "Laharn Rahai has examined samples from the soil you are using for this ceremony and found contaminants. The final offering you make may react with some of the contaminants.", "dlg_30_3")
   StartConversation(conversation, NPC, Spawn, "Explain yourself quickly, I have no patience for undue interruptions.")
end

function dlg_30_3(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/quests/ralkesh_orto/ralkesh_orto004.mp3", "", "", 3670326842, 761026372, Spawn)
   AddConversationOption(conversation, "Laharn was not certain.", "dlg_30_4")
   StartConversation(conversation, NPC, Spawn, "Oh dear, I have already made the final offering. What affect may it have?")
end

function dlg_30_4(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   -- SPAWN THE RAGE OF JA-NELTH
   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/quests/ralkesh_orto/ralkesh_orto005.mp3", "", "", 1448581600, 3435048745, Spawn)
   AddConversationOption(conversation, "We can talk later!", "CannotBelieve")
   StartConversation(conversation, NPC, Spawn, "Oh, Ja'neth, forgive me!")
end

function CannotBelieve(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/quests/ralkesh_orto/ralkesh_orto006.mp3", "", "", 3689370176, 2085039570, Spawn)
   AddConversationOption(conversation, "I do not know. Perhaps Laharn will know what you can do.", "dlg_33_1")
   StartConversation(conversation, NPC, Spawn, "I cannot believe what I have done. Have I poisoned Ja'neth's afterlife with my negligence?")
end

function dlg_33_1(NPC, Spawn)
   SetStepComplete(Spawn, 40, 1)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/quests/ralkesh_orto/ralkesh_orto007.mp3", "", "", 1914315304, 380671310, Spawn)
   AddConversationOption(conversation, "Wait! Where did you get the soil for Pa'Rok?", "dlg_33_2")
   StartConversation(conversation, NPC, Spawn, "Yes, you are right. I, I need to go now. Penance must be done.")
end

function dlg_33_2(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/quests/ralkesh_orto/ralkesh_orto008.mp3", "", "", 1425320561, 840540299, Spawn)
   AddConversationOption(conversation, "All right, you may go.")
   AddConversationOption(conversation, "Ralkesh... Ja'neth will be fine.", "dlg_33_3")
   StartConversation(conversation, NPC, Spawn, "The Bog. The Peat Bog. Please, I must go.")
end

function dlg_33_3(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/quests/ralkesh_orto/ralkesh_orto009.mp3", "", "", 2346643811, 231883534, Spawn)
   AddConversationOption(conversation, "I do, Laharn will tell you the same.")
   AddConversationOption(conversation, "I do, as should you.")
   AddConversationOption(conversation, "I do not know, but I feel it to be true.")
   AddConversationOption(conversation, "No... do you?")
   AddConversationOption(conversation, "Not at all. Your actions carry far more weight than you realize.")
   StartConversation(conversation, NPC, Spawn, "Do you believe that?")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/qst_ralkesh_orto_mourn_6b24b157.mp3", "Oh, Ja'neth. Why!", "cry", 1219541946, 2965391465, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/qst_ralkesh_orto_onemoment_89f15716.mp3", "One moment please, this is important.", "", 4271869261, 3070926903, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/qst_ralkesh_orto_ceremony_26c02873.mp3", "Blessed Ja'neth, may your spirit remain forever peaceful. Loved Ja'neth, may your bindings remain forever loose. Lost Ja'neth, may you one day find me again.", "", 1234777522, 783285646, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/qst_ralkesh_orto_overwith_e17083e9.mp3", "Oh, Ja'Neth... Ja'Neth.", "", 3271321560, 3056376656, Spawn)
--]]

