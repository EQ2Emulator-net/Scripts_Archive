--[[
	Script Name	: SpawnScripts/BigBend/ArmsdealerBlort.lua
	Script Purpose	: Armsdealer Blort <Weaponsmith>
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/armsdealer_blort/fprt_hood1/100_armsdealerblort_callout_3cd01679.mp3", "Come talk to Blort about buying cutters and slicers!", "beckon", 3535784211, 4217415631, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/armsdealer_blort/fprt_hood1/100_armsdealerblort_multhail2_2a9e4c06.mp3", "You like my cutters and slicers? Blort needs help selling more cutters and slicers.", "", 3019394454, 1413480824, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/armsdealer_blort/fprt_hood1/100_armsdealerblort_multhail1_46fdaf7b.mp3", "You like my cutters and slicers? Choose quick or Blort test these weapons on you.", "", 1848056518, 3558912775, Spawn)
	else
	end

end

