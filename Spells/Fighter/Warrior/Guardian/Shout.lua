--[[
	Script Name	: Shout.lua
	Script Purpose	: Generic Taunt script
	Script Author	: John Adams
	Script Date	: 2008.12.07
--]]

function cast(Caster, Target, MinTaunt, MaxTaunt)
	-- Taunt component
	if MaxTaunt ~= nil and MinTaunt < MaxTaunt then
                hateAmount = math.random(MinTaunt, MaxTaunt)
                AddHate(Caster, Target, hateAmount)
	else
                AddHate(Caster, Target, MinTaunt)
	end
end

function tick(Caster, Target, MinTaunt, MaxTaunt)

end

function remove(Caster, Target, MinTaunt, MaxTaunt)

end