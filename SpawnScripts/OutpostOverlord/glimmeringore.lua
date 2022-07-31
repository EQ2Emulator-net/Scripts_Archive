--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
--SetRequiredQuest(NPC, 13, 3)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
end

function casted_on(Target, Caster)
if HasQuest(Caster, 13) and not QuestStepIsComplete(Caster, 13, 3) then
AddStepProgress(Caster, 13, 3, 1)
end
end
