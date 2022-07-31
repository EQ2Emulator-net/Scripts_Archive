--[[
	Script Name	: SpawnScripts/TempleSt/FriziFigglesnip.lua
	Script Purpose	: Frizi Figglesnip <Spell Scrolls>
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional5/scribe_frizi_figglesnip/scribefigglesnip_multhail4_edit_64.mp3", "Ah ... yes, you killed the Guttersnipes. Unfortunately, that doesn't solve my book problem. Leave me alone. I've no further use for you.", "", 4232546415, 1790498085, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional5/scribe_frizi_figglesnip/scribefigglesnip_multhail1_edit_64.mp3", "I'm busy with other customers. Come back later.", "", 3159692842, 3138177466, Spawn)
	else
	end

end

