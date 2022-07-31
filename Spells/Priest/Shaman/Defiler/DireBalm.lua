--[[
	Script Name	: Heal (Spell Type)
	Script Purpose	: Generic script for healing spells
	Script Author	: John Adams
	Script Date	: 2013.11.19
	Script Note	: 
--]]

function cast(Caster, Target, HealMinVal, HealMaxVal)

	-- Heal Component
	if HealMaxVal ~= nil and HealMinVal < HealMaxVal then
		ModifyHP(Caster, math.random(HealMinVal, HealMaxVal))
	else
		ModifyHP(Caster, HealMinVal)
	end

end
