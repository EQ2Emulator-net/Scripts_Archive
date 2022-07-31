--[[
	Script Name	: SpawnScripts/TempleSt/OldManMuckwort.lua
	Script Purpose	: Old Man Muckwort 
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/old_man_muckwort/fprt_hood03/100_oldmanmuckwort_callout_ff44b21f.mp3", "Darn pests ... messing up my yard and sneaking up on my porch ... What do you need, ya' snot-nosed punk?", "", 3612569160, 2400812732, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/old_man_muckwort/fprt_hood03/100_oldmanmuckwort_multhail1_13434115.mp3", "Bah!  Keep your meddling to yourself, leave me be ... and STAY OFF MY PORCH! You heard me, get out of here!", "", 3647820805, 3418409987, Spawn)
	else
	end

end

