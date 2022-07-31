--[[
	Script Name	: Puncture.lua
	Script Purpose	: Brigand Direct Damage + Debuff
	Script Author	: Zcoretri
	Script Date	: 23.May.2010
	Script Notes	: 
--]]

function cast(Caster, Target, DmgType, MinDmg, MaxDmg, AttackSpeed)
    -- DD component (instant damage)
    if MaxDmg ~= nil and MinDmg < MaxDmg then
        dmgAmount = math.random(MinDmg, MaxDmg)
	SpellDamage(Target, DmgType, dmgAmount)
    else
	SpellDamage(Target, DmgType, MinDmg)
    end
    -- Debuff component
    AddSpellBonus(Target, 612, AttackSpeed)
end

function remove(Caster, Target, DmgType, MinDmg, MaxDmg, AttackSpeed)
    RemoveSpellBonus(Target)
end
