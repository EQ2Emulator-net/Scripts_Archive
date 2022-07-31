--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/Shackle.lua
    Script Author  : Zcoretri
    Script Date    : 2013.13.12 19:08:55
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Slow)
    -- Roots target
    SetSpeedMultiplier(Target, 0)
end

function tick(Caster, Target, Slow)
    -- Need server support for these checks
    -- 5% chance to dispel when target receives hostile action
    -- 5% chance to dispel when target takes damage
    -- 15% chance to dispel when target takes damage
end

function remove(Caster, Target, Slow)
    -- Applies Root on termination.  Lasts for 10.0 seconds.
    -- Slows target by x amount
    SetSpeedMultiplier(Target, Slow)
    -- remove after 10 seconds
    AddSpellTimer(10000, "RemoveSnare")
end

function RemoveSnare(Caster, Target, Slow)
    -- return speed to normal
    SetSpeedMultiplier(Target, 1)
end
