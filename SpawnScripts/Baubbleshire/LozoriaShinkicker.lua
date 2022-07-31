--[[
	Script Name	: SpawnScripts/Baubbleshire/LozoriaShinkicker.lua
	Script Purpose	: Lozoria Shinkicker 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if math.random(0, 100) <= 25 then
		PlayFlavor(NPC, "voiceover/english/lozoria_shinkicker/qey_village06/100_lozoria_shinkicker_callout_7d9f1c7c.mp3", "Ahh ... nothing like a pint to tide you over till the next one. Greetings, traveler! Won't you join me for an ale?", "", 2310344859, 4256384860, Spawn)
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1, 2)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/lozoria_shinkicker/qey_village06/100_lozoria_shinkicker_multhail2_c18b6ff4.mp3", "Bring me another pint, Bregun!  Mine's almost empty!  What brings you into my papa's fine establishment, friend?", "", 1585254591, 550642986, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/lozoria_shinkicker/qey_village06/100_lozoria_shinkicker_lozoria_first_a433e906.mp3", "Ahh, there's nothing like a nice pint to tide you over till the next one!", "", 908545867, 693626511, Spawn)
	end
end
