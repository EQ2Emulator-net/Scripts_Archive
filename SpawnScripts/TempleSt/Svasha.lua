--[[
	Script Name	: SpawnScripts/TempleSt/Svasha.lua
	Script Purpose	: Svasha <Armorsmith>
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/service/housing/ratonga_housing_service_evil_1_hail_gf_1330ddd8.mp3", "We don't sell contraband furnishings here.  We sell only pieces approved by the Overlord!", "salute_freeport", 1392993711, 273366781, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/service/housing/ratonga_housing_service_evil_1_hail_gf_33fe2ae6.mp3", "Don't be ashamed, friend.  We have pieces that even ratongas can afford!", "wink", 4096328055, 3693524473, Spawn)
	else
	end

end

