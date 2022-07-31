--[[
	Script Name	: SpawnScripts/Stonestair/ArmsdealerMelai.lua
	Script Purpose	: Armsdealer Melai <Weaponsmith>
	Script Author	: John Adams
	Script Date	: 2009.04.25
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1, 7)

	if choice == 1 then
		PlayFlavor(NPC, "", "What do you want?", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/service/weaponsmith/kerran_weaponsmith_service_evil_1_hail_gm_fa46b6f6.mp3", "Is there a specific way you're looking to kill someone?  Disemboweling, beheading, impaling, strangulation?", "shrug", 2577680587, 2106179899, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Buy something or quit staring.", "", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "...revenge...", "", 1689589577, 4560189, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/service/weaponsmith/kerran_weaponsmith_service_evil_1_hail_gm_de25bbfc.mp3", "The only thing separating you from death in this city are your wits.  I wouldn't call that adequate protection.", "sarcasm", 2053298845, 3493913475, Spawn)
	elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/service/weaponsmith/kerran_weaponsmith_service_evil_1_hail_gm_9d2ef5c4.mp3", "A good weapon at your side is the only real friend you'll ever have!", "agree", 3161241753, 980947795, Spawn)
	elseif choice == 7 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/service/weaponsmith/kerran_weaponsmith_service_evil_1_hail_gm_febc50f4.mp3", "We have a nice selection of previously owned weapons for those with modest funds.", "snicker", 2538860683, 3246755305, Spawn)
	end
end