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
end

function casted_on(Target, Caster)
	if HasQuest(Caster, 61) and not QuestStepIsComplete(Spawn, 61, 5) then
		SetStepComplete(Spawn, 61, 5)
	end
end