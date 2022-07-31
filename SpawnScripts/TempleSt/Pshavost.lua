--[[
	Script Name	: SpawnScripts/TempleSt/Pshavost.lua
	Script Purpose	: Pshavost <Bartender>
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/service/bartender/ratonga_bartender_service_evil_1_hail_gm_c5b9c7c2.mp3", "You want to talk?  If you want us to be friends all you need to do is buy a drink!", "stare", 2131223265, 1605898906, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/service/bartender/ratonga_bartender_service_evil_1_hail_gm_4b169ed.mp3", "I do believe a gratuity is in order.", "glare", 2139635297, 3079613468, Spawn)
	else
	end

end

