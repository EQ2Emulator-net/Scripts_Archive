--[[
    Script Name    : Spells/Scout/Rogue/Brigand/Puncture.lua
    Script Author  : John Adams
    Script Date    : 2013.11.20 07:11:10
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, AttackSpeed)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    AddSpellBonus(Target, 612, AttackSpeed)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

