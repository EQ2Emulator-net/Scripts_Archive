--[[
	Script Name	: SacredArmor.lua
	Script Purpose	: Inquisitor Sacred Armor spell line
	Script Author	: Zcoretri
	Script Date	: 23.May.2010
	Script Notes	:
--]]

function cast(Caster, Target, HealthAmt, MitAmt)
    AddSpellBonus(Target, 204, MitAmt)
    AddSpellBonus(Target, 205, MitAmt)
    AddSpellBonus(Target, 206, MitAmt)
    AddSpellBonus(Target, 500, HealthAmt)
end

function remove(Caster, Target, HealthAmt, MitAmt)
    RemoveSpellBonus(Target)
end