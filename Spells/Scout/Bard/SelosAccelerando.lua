--[[
	Script Name	: Spells/Scout/Bard/SelosAccelerando.lua
	Script Author	: Zcoretri
	Script Date	: 2010.03.30 10:03:38
	Script Notes	: Enter special notes here
			:
--]]

function cast(Caster, Target, BuffValue)
    NewSpeed = GetSpeed(Caster)
    if NewSpeed == 0 then
        SetSpeed(Caster, BuffValue)
    else
        SetSpeed(Caster, NewSpeed + BuffValue)
    end
end

function remove(Caster, Target, BuffValue)
    SetSpeed(Caster, 0)
end

