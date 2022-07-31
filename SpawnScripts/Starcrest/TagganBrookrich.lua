--[[
	Script Name	: SpawnScripts/Starcrest/TagganBrookrich.lua
	Script Purpose	: Taggan Brookrich 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
	Spawn(NPC)
end

function InRange(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/taggan_brookrich/qey_village02/100_human_spectator_callout_85964bfe.mp3", "Can you believe Vandis? You'd think he'd want help considering the mess he's in. But, ooohhh no... He's too stubborn to listen to any advice. When will he learn that he can't win without help?", "confused", 3426132034, 1351118898, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	PlayFlavor(NPC, "voiceover/english/taggan_brookrich/qey_village02/100_human_spectator_multhail1_8a7fa75d.mp3", "Sorry, friend. I don't think you can help with my cunning scheme.", "", 3665262967, 2636803513, Spawn)
end

