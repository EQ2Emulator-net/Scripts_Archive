--[[
	Script Name	: SignOfPacification.lua
	Script Purpose	: Templar control effect
	Script Author	: Zcoretri
	Script Date	: 2010.2.14
--]]

function cast(Caster, Target)
    --if IsEpic != true then
        AddControlEffect(Target, 3) --Daze effect
    --end
end

function remove(Caster, Target)
    RemoveControlEffect(Target)
end
