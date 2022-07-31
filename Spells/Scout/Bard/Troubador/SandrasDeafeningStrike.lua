--[[
    Script Name    : Spells/Scout/Bard/Troubador/SandrasDeafeningStrike.lua
    Script Author  : John Adams
    Script Date    : 2013.11.20 07:11:08
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, MinDebuffVal, MaxDebuffVal, MinBuffVal, MaxBuffVal)

    -- Inflicts 6 - 10 mental damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Decreases power of target by 6 - 10
    if MaxDebuffVal ~= nil and MinDebuffVal < MaxDebuffVal then
        DebuffAmt = math.random(MinDebuffVal, MaxDebuffVal)
    else
        DebuffAmt = MinDebuffVal
    end

    AddSpellBonus(Caster, 501, DebuffAmt)

    -- Increases power of caster by 2 - 3
    if MaxBuffVal ~= nil and MinBuffVal < MaxBuffVal then
        BuffAmt = math.random(MinBuffVal, MaxBuffVal)
    else
        BuffAmt = MinBuffVal
    end

    AddSpellBonus(Caster, 501, BuffAmt)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSpellBonus(Caster)
end
