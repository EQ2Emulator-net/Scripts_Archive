--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

local HALFELF_MENTOR_QUEST_2 = 182
local HALFELF_MENTOR_QUEST_4 = 187

function init_zone_script(Zone)
	SetLocationProximityFunction(Zone, 82.78, -7.08, 112.83, 20, "InRange")
	SetLocationProximityFunction(Zone, 70.43, 5.02, -22.17, 20, "InRangeQuest4")
end

function InRange(Zone, Spawn)
	if HasQuest(Spawn, HALFELF_MENTOR_QUEST_2) and GetQuestStep(Spawn, HALFELF_MENTOR_QUEST_2) == 2 then
		MuffledVoice = GetSpawn(Spawn, 1370123)
		if MuffledVoice ~= nil then
			conversation = CreateConversation()
			PlayFlavor(MuffledVoice, "voiceover/english/tutorial_revamp/muffled_voices/fprt_hood04/quests/muffled_voice/voice000.mp3", "", "", 2566882511, 3306688521, Spawn)
			AddConversationOption(conversation, "[continue listening]", "dlg_18_1")
			StartConversation(conversation, MuffledVoice, Spawn, "Do you have him?")
		end
	end
end

function InRangeQuest4(Zone, Spawn)
	if HasQuest(Spawn, HALFELF_MENTOR_QUEST_4) and GetQuestStep(Spawn, HALFELF_MENTOR_QUEST_4) == 1 then
		if GetSpawn(Spawn, 1370069) == nil and GetSpawn(Spawn, 1370068) == nil then
			-- Two Rommuls loyalists
			choice = math.random(1, 2)
			if choice == 1 then
				SpawnMob(Zone, 1370157, false, 82.29, 5.02, -10.46, 259)
				SpawnMob(Zone, 1370069, false, 80.86, 5.02, -7.66, 276)
			elseif choice == 2 then
				SpawnMob(Zone, 1370157, false, 82.29, 5.02, -10.46, 259)
				SpawnMob(Zone, 1370069, false, 80.86, 5.02, -7.66, 276)
			end

			-- Thaen Sevellos
			SpawnMob(Zone, 1370068, false, 86.86, 5.02, -9.76, 81)
		end
	end
end