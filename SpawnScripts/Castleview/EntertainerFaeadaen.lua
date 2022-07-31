--[[
	Script Name	: SpawnScripts/Castleview/EntertainerFaeadaen.lua
	Script Purpose	: Entertainer Faeadaen 
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/entertainer_faeadaen/qey_village04/100_entertainer_faeadaen_multhail2_2d3351bb.mp3", "Step up and watch as I make lights dance and coins disappear into thin air!", "flirt", 3189499038, 1784304503)
end