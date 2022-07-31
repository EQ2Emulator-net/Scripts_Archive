--[[
	Script Name	: SpawnScripts/TempleSt/JubilFrankobi.lua
	Script Purpose	: Jubil Frankobi <Temple Street Doctor>
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jubil_frankobi/fprt_hood03/qst_jubil_frankobi_notonquest_1e3160ee.mp3", "Sorry, I'm busy dealing with this patient right now.", "", 1861301948, 1865284455, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jubil_frankobi/fprt_hood03/qst_jubil_frankobi_canthear_6df6ecce.mp3", "She can't hear you.", "", 1464421964, 2236048691, Spawn)
	else
	end

end

