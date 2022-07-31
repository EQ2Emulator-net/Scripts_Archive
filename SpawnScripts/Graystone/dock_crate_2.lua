--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(Target, Caster)
	if HasQuest(Caster, 16) and GetQuestStep(Caster, 16) == 4 then
		AddStepProgress(Caster, 16, 4, 1)
		SpawnSet(Target, "targetable", 0)
		SpawnSet(Target, "show_command_icon", 0)
		AddTimer(Target, 30000, "ResetBarrel")
	end
end

function ResetBarrel(NPC)
	SpawnSet(NPC, "targetable", 1)
	SpawnSet(NPC, "show_command_icon", 1)
end