--[[
	Script Name	: Condemn.lua
	Script Purpose	: Inquisitor Debuff spell
	Script Author	: Zcoretri
	Script Date	: 23.May.2010
	Script Notes	:
--]]

function cast(Caster, Target, Debuff)
    -- Debuff mitigation vs all damage types
    AddSpellBonus(Target, 300, Debuff)
    AddSpellBonus(Target, 301, Debuff)
    AddSpellBonus(Target, 302, Debuff)
end

function remove(Caster, Target, Debuff)
    RemoveSpellBonus(Target)
end
