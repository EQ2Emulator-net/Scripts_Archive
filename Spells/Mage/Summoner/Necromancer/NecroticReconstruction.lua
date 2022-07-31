--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/NecroticReconstruction.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.07 09:12:29
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, healVal, tickHealVal, dispelLevels)
    -- Heals target for 9
    SpellHeal("Heal", healVal)

    -- Dispels 6 levels of any hostile effects on target
    Say(Caster, "Not Implemented: Dispel hostile effects")
end

function tick(Caster, Target, healVal, tickHealVal, dispelLevels)
    -- Heals target for 1 every second
    SpellHeal("Heal", tickHealVal)
end
