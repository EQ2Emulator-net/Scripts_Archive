--[[
    Script Name    : Spells/Scout/Rogue/Sneak.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.16 01:12:19
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Grants stealth to caster
-- Suspends caster's movement speed enhancements
-- Grants See Stealth to caster

function cast(Caster, Target)
    Stealth(Target, 1)
end

function remove(Caster, Target)

end
