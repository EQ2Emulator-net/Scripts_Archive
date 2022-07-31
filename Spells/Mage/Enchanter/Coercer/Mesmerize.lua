--[[
	Script Name	: Mesmerize
	Script Purpose	: Generic Mesmerise spells with params
	Script Author	: John Adams
	Script Date	: 2008.12.05
	Script Notes	: Not completely sure if mezz is handled by LUA or in code...
			: Using the most common BOOL params: Immune to AOE, Dispel on damaged, Epic target immunity

--]]

function cast(Caster, Target, PreventAOE, DispelOnDamage, EpicImmune)

	-- Make NPC immune to AOE, unless the target of AOE
	-- Set flag if NPC takes damage, dispel Mezz
	-- If target is Epic mob, immune to Mezz? See effect info for mezz spells - seems different for a few

end

function tick(Caster, Target, Type, Min, Max)
	-- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target)
	-- code to remove the spell
end
