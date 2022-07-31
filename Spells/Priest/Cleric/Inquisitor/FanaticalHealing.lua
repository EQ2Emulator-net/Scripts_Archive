--[[
	Script Name	: FanaticalHealing.lua
	Script Purpose	: Inquisitor large direct heal
	Script Author	: Zcoretri
	Script Date	: 23.May.2010
	Script Notes	: 
--]]

function cast(Caster, Target, MinHeal, MaxHeal)

    healAmount = math.random(MinHeal, MaxHeal)
    ModifyHP(Target, healAmount)

end
