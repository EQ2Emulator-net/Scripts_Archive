--[[
	Script Name	: CharlesArker2.lua
	Script Purpose	: Spawnscript for Charles Arker that spawns in "The Nook" in Outpost of the Overlord.
	Script Author	: Scatman
	Script Date	: 2009.01.09
	Script Notes	:
--]]

function spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	if GetQuestStep(Spawn, 53) == 6 then
		DoYouHaveAllOfIt(NPC, Spawn)
	end
end

function respawn(NPC)
	spawn(NPC)
end

function DoYouHaveAllOfIt(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Except for the pieces I gave you earlier.", "GaveYouEarlier")
	AddConversationOption(conversation, "I don't know what you mean.")
	StartConversation(conversation, NPC, Spawn, "The note...do you have all of it?")
end

function GaveYouEarlier(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker016.mp3", "", "", 3260893813, 1611040301, Spawn)
	AddConversationOption(conversation, "Aha! So you killed her.", "YouKilledHer")
	StartConversation(conversation, NPC, Spawn, "Good. I wrote this note -- that's probably what puzzled you. It contained a hidden message to Laena. I was...planning to meet her secretly. Then I realized how foolish that would be, but I had already sent her the note.")
end

function YouKilledHer(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker017.mp3", "", "", 3523349076, 951813783, Spawn)
	AddConversationOption(conversation, "So you killed him?", "YouKilledHim")
	StartConversation(conversation, NPC, Spawn, "By the Overlord, no! I waited for her here, as pre-arranged. She did not come and next thing you know, one of the other men gave me part of the note and told me to investigate the Tunarians. I couldn't tell if he knew me secret or not.")
end

function YouKilledHim(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker018.mp3", "", "", 1033892853, 1591130234, Spawn)
	AddConversationOption(conversation, "So who killed Laena?", "WhoKilledLaena")
	StartConversation(conversation, NPC, Spawn, "What is with you and killing? No! I was grateful for the chance to find the rest of my note and destroy it before anyone realized I signed it! I thought Laena might still have the rest of it...and you proved that she at least had some of it still.")
end

function WhoKilledLaena(NPC, Spawn)
	SetStepComplete(Spawn, 53, 6)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker019.mp3", "", "", 3736842700, 1947055506, Spawn)
	AddConversationOption(conversation, "I'll take care of this.")
	StartConversation(conversation, NPC, Spawn, "Perhaps a jealous lover, or maybe she was torn apart by the wilderbears. You must keep this secret. My family will never understand the...indiscretion...I showed. Nothing happened between Laena and me, so it's best forgotten. Get rid of these scraps for me. I must go back before I'm missed.")
end