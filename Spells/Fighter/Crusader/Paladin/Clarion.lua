--[[
	Script Name	: taunt.lua
	Script Purpose	: Generic Taunt script
	Script Author	: John Adams
	Script Date	: 2008.12.07
--]]

function cast(Caster, Target, MinTaunt1, MaxTaunt1, MinTaunt2, MaxTaunt2)
	-- Taunt component
	if MaxTaunt1 ~= nil and MinTaunt1 < MaxTaunt1 then
                hateAmount = math.random(MinTaunt1, MaxTaunt1)
                AddHate(Caster, Target, hateAmount)
	else
                AddHate(Caster, Target, MinTaunt1)
	end
end

function tick(Caster, Target, MinTaunt1, MaxTaunt1, MinTaunt2, MaxTaunt2)
	if MaxTaunt2 ~= nil and MinTaunt2 < MaxTaunt2 then
                hateAmount = math.random(MinTaunt2, MaxTaunt2)
		AddHate(Caster, Target, hateAmount)
	else
		AddHate(Caster, Target, MinTaunt2)
	end
end


function remove(Caster, Target, TauntType, MinTauntVal, MaxTauntVal)

end