--[[
	Script Name	: Invocation.lua
	Script Purpose	: Inquisitor Direct Damage spell + interrupt
	Script Author	: Zcoretri
	Script Date	: 23.May.2010
	Script Notes	:
--]]

function cast(Caster, Target, DmgType, MinDmg, MaxDmg, Chance)
    -- DD component
    if MaxDmg ~= nil and MinDmg < MaxDmg then
	SpellDamage(Target, DmgType, math.random(MinDmg, MaxDmg))
    else
	SpellDamage(Target, DmgType, MinDmg)
    end

    PctChance = math.random(1, 100)
    if PctChance >= Chance then
        -- Interrupt(Target)
    end
end