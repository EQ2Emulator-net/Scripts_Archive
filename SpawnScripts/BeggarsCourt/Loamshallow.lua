--[[
	Script Name	: SpawnScripts/BeggarsCourt/Loamshallow.lua
	Script Purpose	: Loamshallow <Alchemist>
	Script Author	: John Adams
	Script Date	: 2009.04.05
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1, 4)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/service/alchemist/halfelf_alchemist_service_evil_1_hail_gm_ab298747.mp3", "Let me guess, you're looking for poison, right?", "wink", 2462132552, 3314756088, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/service/alchemist/halfelf_alchemist_service_evil_1_hail_gm_1cabe1c1.mp3", "I need to get some eye of griffon, a bears paw, the heart of an innocent man.  That'll be tough in this city!", "confused", 2535492808, 3183476266, Spawn)
	elseif choice == 3 then
		Say(NPC, "Be careful what you touch in here. You're liable to kill us all!", Spawn)
	elseif choice == 4 then
		Say(NPC, "Poison testers, it's been my biggest seller for the past several months. Of course poison was a close second.", Spawn)
	end
end