--[[
	Script Name	: SpawnScripts/TempleSt/ZninkiFlatzazzle.lua
	Script Purpose	: Zninki Flatzazzle 
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Oh dear!  The riff-raff that's allowed to roam free in this town.  It breaks my heart.  Go away!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnome/ft/gnome/gnome_eco_garble_garbled_gm_cd85a24f.mp3", "hail hail the gnomes are here", "", 2230728991, 3389119515, Spawn)
	else
	end

end

