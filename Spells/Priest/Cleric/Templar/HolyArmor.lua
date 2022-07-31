--[[
	Script Name	: HolyArmor.lua
	Script Purpose	: Templar Holy Armor spell line
	Script Author	: Zcoretri
	Script Date	: 2010.2.14
--]]

function cast(Caster, Target, HealthAmt, MitAmt)
    --AddSpellBonus(Target, , MitAmt)
    AddSpellBonus(Target, 500, HealthAmt)
end

function remove(Caster, Target, HealthAmt, MitAmt)
    RemoveSpellBonus(Target)
end