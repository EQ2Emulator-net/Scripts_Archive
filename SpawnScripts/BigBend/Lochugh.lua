--[[
	Script Name	: SpawnScripts/BigBend/Lochugh.lua
	Script Purpose	: Lochugh 
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

OGRE_MENTOR_QUEST_4 = 168

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, OGRE_MENTOR_QUEST_4) and GetQuestStep(Spawn, OGRE_MENTOR_QUEST_4) == 7 then
		AddConversationOption(conversation, "Thank you.")
		StartConversation(conversation, NPC, Spawn, "Tribute is over. You were helpful.")
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lochugh/fprt_hood01/newbie_path_ogre/lochugh005.mp3", "", "", 137298448, 513849691, Spawn)
		AddConversationOption(conversation, "Uh, right.")
		StartConversation(conversation, NPC, Spawn, "Can't ya see, I'm busy?")
	end
end

function SomdoqSpeak2(NPC, Spawn)
	Somdoq = GetSpawn(Spawn, 1340042)

	FaceTarget(Somdoq, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(Somdoq, "voiceover/english/tutorial_revamp/somdoq/fprt_hood01/newbie_path_ogre/somdoq005.mp3", "", "", 1278166954, 2389281517, Spawn)
	AddConversationOption(conversation, "[listen to ceremony]", "LochSpeak2")
	StartConversation(conversation, Somdoq, Spawn, "May this land reflect the mighty throne that is your plane.  Hear the glorious tumult that is the heat of battle, where 'nlightenment is gained through victorious combat.")
end

function SomdoqSpeak3(NPC, Spawn)
	Somdoq = GetSpawn(Spawn, 1340042)

	FaceTarget(Somdoq, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(Somdoq, "voiceover/english/tutorial_revamp/somdoq/fprt_hood01/newbie_path_ogre/somdoq006.mp3", "", "", 487037760, 2070479487, Spawn)
	AddConversationOption(conversation, "[listen to ceremony]", "LochSpeak3")
	StartConversation(conversation, Somdoq, Spawn, "May joyous battle, and constant strife litter the ground with corpses of the fallen, and the bones of the weak.")
end

function SomdoqSpeak4(NPC, Spawn)
	Somdoq = GetSpawn(Spawn, 1340042)

	FaceTarget(Somdoq, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(Somdoq, "voiceover/english/tutorial_revamp/somdoq/fprt_hood01/newbie_path_ogre/somdoq007.mp3", "", "", 1249619017, 559988378, Spawn)
	AddConversationOption(conversation, "Glory to Rallos!", "ProvidedMuch")
	StartConversation(conversation, Somdoq, Spawn, "May your feast of the fallen continue until the great conflict at the end of time.  Warlord, and father, these gifts we have presented to you.")
end