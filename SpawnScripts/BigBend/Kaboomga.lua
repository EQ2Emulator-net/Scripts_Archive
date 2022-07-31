--[[
	Script Name	: SpawnScripts/BigBend/Kaboomga.lua
	Script Purpose	: Kaboomga <Alchemist>
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1, 4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/service/alchemist/troll_alchemist_service_evil_1_hail_gf_ab298747.mp3", "Let me guess, you're looking for poison right?", "lookaway", 1066650928, 3687842705, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/service/alchemist/troll_alchemist_service_evil_1_hail_gf_28ab45b2.mp3", "Poison testers, it's been my biggest seller for the past several months.  Of course poison was a close second. ", "ponder", 963113651, 204467804, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/service/alchemist/troll_alchemist_service_evil_1_hail_gf_1cabe1c1.mp3", "I need to get some eye of griffon, a bears paw, the heart of an innocent man.  That'll be tough in this city!", "confused", 601522256, 1920376246, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/service/alchemist/troll_alchemist_service_evil_1_hail_gf_75351fc2.mp3", "Be careful what you touch in here. You're liable to kill us all!", "cringe", 2923154907, 1928451319, Spawn)
	end
end

function InRange(NPC, Spawn)
	Say(NPC, "Scared to eat out at your favorite tavern? Buy one of our new poison testers and enjoy your favorite meal again!", Spawn)
end