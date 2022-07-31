--[[
	Script Name	: SpawnScripts/Stonestair/Fariola.lua
	Script Purpose	: Fariola <Armorsmith>
	Script Author	: John Adams
	Script Date	: 2009.04.25
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	chance = math.random(1, 100)

	if chance <= 35 then
		choice = math.random(1, 2)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/service/merchant/erudite_merchant_service_evil_1_hail_gf_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time?  This isn't a museum display you know!", "glare", 2944389248, 2464861027, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/service/merchant/erudite_merchant_service_evil_1_hail_gf_f715099e.mp3", "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", "salute_freeport", 83870236, 433715613, Spawn)
		end
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1, 2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/service/merchant/erudite_merchant_service_evil_1_hail_gf_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time?  This isn't a museum display you know!", "glare", 2944389248, 2464861027, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/service/merchant/erudite_merchant_service_evil_1_hail_gf_f715099e.mp3", "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", "salute_freeport", 83870236, 433715613, Spawn)
	end
end