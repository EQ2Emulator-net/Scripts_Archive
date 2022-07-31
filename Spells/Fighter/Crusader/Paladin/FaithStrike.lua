--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/FaithStrike.lua
    Script Author  : John Adams
    Script Date    : 2013.11.17 06:11:09
    Script Purpose : DD + Heal
                   : 
--]]

function cast(Caster, Target, DDType, MinDmg, MaxDmg, HealAmt)

  -- DD Component
  if MaxDmg ~= nil and MinDmg < MaxDmg then
    dmgAmount = math.random(MinDmg, MaxDmg)
    SpellDamage(Target, DDType, dmgAmount)
  else
    SpellDamage(Target, DDType, MinDmg)
  end

  -- Heal Component
  if HealAmt ~= nil then
    SpellHeal("Heal", HealAmt, HealAmt, Caster)
  end

end
