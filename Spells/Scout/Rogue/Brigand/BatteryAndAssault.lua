--[[
    Script Name     : Spells/Scout/Rogue/Brigand/BatteryandAssault.lua
	Script Purpose	: Brigand Direct Damage
	Script Author	: Zcoretri
	Script Date	    : 23.May.2010
	Script Notes	:
--]]

function cast(Caster, Target, DmgType, MinDmg, MaxDmg)
    --Add check for if first attack misses
    if MaxDmg ~= nil and MinDmg < MaxDmg then
        dmgAmount = math.random(MinDmg, MaxDmg)
        SpellDamage(Target, DmgType, dmgAmount)
        SpellDamage(Target, DmgType, dmgAmount)
    else
        SpellDamage(Target, DmgType, MinDmg)
        SpellDamage(Target, DmgType, MinDmg)
    end

-- Info from spell_display_effects (remove from script when done)
-- Inflicts 11 - 19 melee damage on target
-- Inflicts 11 - 19 melee damage on target
end
