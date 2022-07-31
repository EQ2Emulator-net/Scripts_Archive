--[[
	Script Name	: SpawnScripts/Baubbleshire/KaldinDeeppockets.lua
	Script Purpose	: Kaldin Deeppockets <General Goods>
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if math.random(0, 100) <= 25 then
		PlayFlavor(NPC, "voiceover/english/barkeep_kaldin_deeppockets/qey_village06/100_barkeep_deeppockets_callout_d2d77b95.mp3", "Come over and meet one of the most famous brewmasters in Qeynos!", "", 2446853968, 3962612908, Spawn)
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1, 3)

	if choice == 1 then
		GenericHail(NPC, Spawn)
		PlayFlavor(NPC, "", "The best part about this job is all the extra coin I get.", "wink", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/barkeep_kaldin_deeppockets/qey_village06/100_barkeep_deeppockets_multhail1_b497dcb7.mp3", "My name is Deeppockets.  Pleased to meet you, I am!  Perhaps we'll talk again some day!", "", 3221951518, 4136363260, Spawn)
	elseif choice == 3 then
		GenericHail(NPC, Spawn)
		PlayFlavor(NPC, "", "Might I interest you in some meat and cheese to go with that tall glass of ale?", "shrug", 1689589577, 4560189, Spawn)
	end
end
