--[[
	Script Name	: SpawnScripts/TempleSt/ArmsdealerShinska.lua
	Script Purpose	: Armsdealer Shinska <Weaponsmith>
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Hmmmmmm ...  You looks like you could use somethings to protect yourself.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1031.mp3", "", "", 0, 0, Spawn)
	else
	end

end

