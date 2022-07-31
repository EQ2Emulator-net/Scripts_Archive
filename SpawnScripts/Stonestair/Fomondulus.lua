--[[
	Script Name	: SpawnScripts/Stonestair/Fomondulus.lua
	Script Purpose	: Fomondulus <Combat Arts>
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
		choice = math.random(1,3)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_evil_1/ft/service/merchant/erudite_merchant_service_evil_1_hail_gm_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time?  This isn't a museum display you know!", "glare", 3397939934, 3975525417, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_evil_1/ft/service/merchant/erudite_merchant_service_evil_1_hail_gm_f715099e.mp3", "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", "salute_freeport", 1834072357, 2642830337, Spawn)
		elseif choice == 3 then
			PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_evil_1/ft/service/merchant/erudite_merchant_service_evil_1_hail_gm_6ec08438.mp3", "In spite of the cost of living, it's still quite a popular item.", "ponder", 3214856518, 2753581081, Spawn)
		end
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1,3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_evil_1/ft/service/merchant/erudite_merchant_service_evil_1_hail_gm_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time?  This isn't a museum display you know!", "glare", 3397939934, 3975525417, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_evil_1/ft/service/merchant/erudite_merchant_service_evil_1_hail_gm_f715099e.mp3", "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", "salute_freeport", 1834072357, 2642830337, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_evil_1/ft/service/merchant/erudite_merchant_service_evil_1_hail_gm_6ec08438.mp3", "In spite of the cost of living, it's still quite a popular item.", "ponder", 3214856518, 2753581081, Spawn)
	end
end