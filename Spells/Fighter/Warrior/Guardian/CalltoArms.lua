--[[
    Script Name    : CallToArms.lua
    Script Author  : Zcoretri
    Script Date    : 2010.01.31
    Script Note    : Guardian Group Buff
--]]

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, 418532101, SkillAmt)  -- Slashing
    AddSkillBonus(Target, 3421494576, SkillAmt) -- Crushing
    AddSkillBonus(Target, 3048574950, SkillAmt) -- Piercing
    AddSkillBonus(Target, 1756482397, SkillAmt) -- Ranged
end

function tick(Caster, Target, SkillAmt)

end

function remove(Caster, Target, SkillAmt)
    RemoveSkillBonus(Target)
end