--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	AddTimer(NPC, 8000, "DoEmote")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
	end
end

function respawn(NPC)
	spawn(NPC)
end

function DoEmote(NPC)
	choice = math.random(1, 2)
	
	if choice == 1 then
		PlayFlavor(NPC, "", "", "taunt", 0, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "", "rude", 0, 0)
	end

	AddTimer(NPC, 8000, "DoEmote")
end