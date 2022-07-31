--[[
	Script Name	: Meliorate.lua
	Script Purpose	: Templar small direct heal
	Script Author	: Zcoretri
	Script Date	: 2010.2.14
	Script Note	: 
--]]

function cast(Caster, Target, MinHeal, MaxHeal)

    healAmount = math.random(MinHeal, MaxHeal)
    ModifyHP(Target, healAmount)

end
