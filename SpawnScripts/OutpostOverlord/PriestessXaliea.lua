--[[
	Script Name	: SpawnScripts/OutpostOverlord/PriestessXaliea.lua
	Script Purpose	: Priestess Xaliea 
	Script Author	: Scatman
	Script Date	: 2008.09.23
	Script Notes	: 
--]]

function spawn(NPC)
   ProvidesQuest(NPC, 14)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   if HasCompletedQuest(Spawn, 14) then
      PlayFlavor(NPC, "voiceover/english/priestess_xaliea/tutorial_island02_fvo_hail1.mp3", "Yeah, yeah. Heal this, cure that. Keep moving.", "", 3735315332, 426916800, Spawn)
   elseif HasQuest(Spawn, 14) then
      if GetQuestStep(Spawn, 14) == 1 then
         PlayFlavor(NPC, "voiceover/english/priestess_xaliea/tutorial_island02_fvo_hail1.mp3", "Yeah, yeah. Heal this, cure that. Keep moving.", "", 3735315332, 426916800, Spawn)
      elseif GetQuestStep(Spawn, 14) == 2 then
         SetStepComplete(Spawn, 14, 2)
         PlayFlavor(NPC, "voiceover/english/priestess_xaliea/tutorial_island01/xaliea/xaliea_ally_finaltalk_01.mp3", "", "", 3450984862, 1970143622, Spawn)
         AddConversationOption(conversation, "You're welcome.", "YoureWelcome")
         StartConversation(conversation, NPC, Spawn, "Ah, the sweet smell of death! They're so dry and brittle, just like I remembered. Thank you.")
      end
   else
      PlayFlavor(NPC, "voiceover/english/priestess_xaliea/tutorial_island01/xaliea/xaliea_ally_firsttalk_01.mp3", "", "", 1619628529, 3389802510, Spawn)
      AddConversationOption(conversation, "You aren't?", "YouArent")
      StartConversation(conversation, NPC, Spawn, "The life of a priestess isn't all posies and butterflies, you know? We aren't just here to heal and give you blessings.")
   end
end

function YouArent(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/priestess_xaliea/tutorial_island01/xaliea/xaliea_ally_firsttalk_02.mp3", "", "", 2464873714, 2323246094, Spawn)
   AddConversationOption(conversation, "Why don't you let out some steam and and go take down some skeletons or something?", "LetOutSteam")
   StartConversation(conversation, NPC, Spawn, "No! There's so much more to our way of life. We constantly battle against the ever rising ranks of the undead. If it wasn't for us, you'd all have your brains sucked out by a legion of zombies!")
end

function LetOutSteam(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/priestess_xaliea/tutorial_island01/xaliea/xaliea_ally_firsttalk_04.mp3", "", "", 585972363, 27232816, Spawn)
   AddConversationOption(conversation, "I'm sorry to hear that.", "SorryToHear")
   StartConversation(conversation, NPC, Spawn, "I can't leave my post.")
end

function SorryToHear(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/priestess_xaliea/tutorial_island01/xaliea/xaliea_ally_firsttalk_05.mp3", "", "", 2300229103, 3393998851, Spawn)
   AddConversationOption(conversation, "How do you propose I do that?", "How")
   AddConversationOption(conversation, "Not today, sorry.")
   StartConversation(conversation, NPC, Spawn, "Hmm, but you can get around freely, can't you? Maybe you could help an old priestess relieve her glory days?")
end

function How(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/priestess_xaliea/tutorial_island01/xaliea/xaliea_ally_firsttalk_06.mp3", "", "", 3310184043, 4007538840, Spawn)
   AddConversationOption(conversation, "I'll do it.", "OfferQuest1")
   AddConversationOption(conversation, "Not right now.")
   StartConversation(conversation, NPC, Spawn, "Go find these skeletons and slay them. If you bring me three bone chips from them, I'll make this all worth your while.")
end

function YoureWelcome(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/priestess_xaliea/tutorial_island01/xaliea/xaliea_ally_finaltalk_02.mp3", "", "", 1023024209, 1047449217, Spawn)
   AddConversationOption(conversation, "Thank you.", "dlg_34_2")
   StartConversation(conversation, NPC, Spawn, "Here, take these coins. This should be more than what the merchant would give you for these beauties.")
end

function OfferQuest1(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   OfferQuest(NPC, Spawn, 14)
end
