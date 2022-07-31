--[[
	Script Name	: SpawnScripts/TempleSt/Fubbledodge.lua
	Script Purpose	: Fubbledodge <Shieldsmith>
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/service/merchant/gnome_merchant_service_evil_1_aoi_gm_53388b91.mp3", "Only traitors to the Overlord would pass up a bargain like this.  You're not a traitor are you?", "scold", 991835348, 673767052, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/service/merchant/gnome_merchant_service_evil_1_hail_gm_6ec08438.mp3", "In spite of the cost of living, it's still quite a popular item.", "ponder", 4264249232, 4201092275, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/service/merchant/gnome_merchant_service_evil_1_hail_gm_f715099e.mp3", "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", "salute_freeport", 1962442487, 899461162, Spawn)
	else
	end

end

