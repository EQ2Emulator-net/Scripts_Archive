--[[
	Script Name	: SpawnScripts/TempleSt/Sipka.lua
	Script Purpose	: Sipka <Tailor>
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/service/merchant/ratonga_merchant_service_evil_1_hail_gf_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time?  This isn't a museum display you know!", "glare", 3896024368, 3267129756, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/service/merchant/ratonga_merchant_service_evil_1_hail_gf_d088c20d.mp3", "The stuff's over there.  Just let me know if you find anything you like.", "ponder", 4265688146, 2432877514, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/service/merchant/ratonga_merchant_service_evil_1_hail_gf_f715099e.mp3", "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", "salute_freeport", 3557499503, 3758276116, Spawn)
	else
	end

end

