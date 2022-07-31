--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/Assault.lua
    Script Author  : John Adams
    Script Date    : 2013.11.22 07:11:03
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DDType, MinDmg, MaxDmg)

    -- Inflicts 34 - 57 melee damage on targets in Area of Effect
    if MaxDDVal ~= nil and MinDDVal < MaxDDVal then
        SpellDamage(Target, DDType, math.random(MinDDVal, MaxDDVal))
    else
        SpellDamage(Target, DDType, MinDDVal)
    end
end