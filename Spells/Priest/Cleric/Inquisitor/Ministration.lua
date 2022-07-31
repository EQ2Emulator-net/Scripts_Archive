--[[
	Script Name	: Ministration.lua
	Script Purpose	: Inquisitor small direct heal
	Script Author	: Zcoretri
	Script Date	: 23.May.2010
	Script Notes	: 
--]]

function cast(Caster, Target, MinHeal, MaxHeal)

    if MaxHeal ~= nil and MinHeal < MaxHeal then
      healAmount = math.random(MinHeal, MaxHeal)
      ModifyHP(Target, healAmount)
    end

end

