--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 1.12, 4.75, -51.30, 3, 30, "Spot1")
	MovementLoopAddLocation(NPC, -12.53, 4.00, -37.45, 3, 30, "Spot2")
	MovementLoopAddLocation(NPC, 0.16, 5.00, -38.72, 3, 30, "Spot3")
end

function Spot1(NPC)
	SetHeading(NPC, 258.04)
end

function Spot2(NPC)
	SetHeading(NPC, 56.20)
end

function Spot3(NPC)
	SetHeading(NPC, 256.06)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1003.mp3", "", "hello", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1003.mp3", "", "hello", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1003.mp3", "", "hello", 0, 0, Spawn)
	end
end

function respawn(NPC)
end
