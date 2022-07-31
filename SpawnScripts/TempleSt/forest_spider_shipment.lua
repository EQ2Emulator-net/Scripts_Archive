--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	--SetRequiredQuest(NPC, 143, 1)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(Target, Caster)
	if HasQuest(Caster, 143) and GetQuestStep(Caster, 143) == 1 then
		-- show menu dialog once we have support
		SetStepComplete(Caster, 143, 1)
		SummonItem(Caster, 2491)
	end
end


