--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

local melia_in_range

function spawn(NPC)
	melia_in_range = false
	AddTimer(NPC, 1000, "CheckForMelia")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "hello", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "hello", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "hello", 0, 0, Spawn)
	end
end

function respawn(NPC)
	spawn(NPC)
end

function CheckForMelia(NPC)
	Melia = GetSpawn(NPC, 1370005)
	if Melia ~= nil and GetDistance(NPC, Melia) < 5 then
		if melia_in_range == false then
			melia_in_range = true
			FaceTarget(NPC, Melia)
			Say(NPC, "You're a little slower than usual today. Have you been slippin yourself more than a few drinks under the table?")
		end
	else
		melia_in_range = false
	end

	AddTimer(NPC, 1000, "CheckForMelia")
end