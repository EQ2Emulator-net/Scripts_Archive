--[[
    Script Name   : Assault.lua 
    Script Author : Zcoretri
    Script Date   : 2010.01.31
    Script Notes  : Direct Damage AoE script
--]]

function cast(Caster, Target, DDType, MinDmg, MaxDmg)

    if MaxDDVal ~= nil and MinDDVal < MaxDDVal then
        dmgAmount = math.random(MinDDVal, MaxDDVal)
        SpellDamage(Target, DDType, dmgAmount)
    else
        SpellDamage(Target, DDType, MinDDVal)
    end
end

function remove(Caster, Target, DDType, MinDDVal, MaxDDVal)

end

