--[[
	Script Name	: SpawnScripts/BigBend/KarakiatBonewalker.lua
	Script Purpose	: Karakiat Bonewalker 
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_hail_gf_417aa823.mp3", "Nasty scars and boiled tar!  Warriors is what we are!", "itch", 1257994883, 3501955854, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_ogre_gf_b1f3691c.mp3", "Not mess with you, not mess with me...", "wince", 1032294332, 3970520281, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_hail_gf_f491bc11.mp3", "Tasty treats, lots of meats.", "nod", 357958006, 4074544132, Spawn)
	else
	end

end

