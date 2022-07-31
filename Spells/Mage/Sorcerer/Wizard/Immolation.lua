--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/Immolation.lua
    Script Author  : Zcoretri
    Script Date    : 2013.13.12 17:43:18
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, DmgType, MinVal, MaxVal, DotMinVal, DotMaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end


function tick(Caster, Target, DmgType, MinVal, MaxVal, DotMinVal, DotMaxVal)
    if DotMaxVal ~= nil and DotMinVal < DotMaxVal then
        SpellDamage(Target, DmgType, math.random(DotMinVal, DotMaxVal))
    else
        SpellDamage(Target, DmgType, DotMinVal)
    end
end


function remove(Caster, Target, DmgType, MinVal, MaxVal, DotMinVal, DotMaxVal)

end

