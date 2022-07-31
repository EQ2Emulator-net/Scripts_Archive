--[[
	Script Name	: Spells/Fighter/Brawler/Bruiser/SlurredInsult.lua
	Script Author	: Zcoretri
	Script Date	: 2010.03.31 07:03:14
	Script Notes	: Enter special notes here
			:
--]]

function cast(Caster, Target, MinTaunt, MaxTaunt)
    if MaxTaunt ~= nil and MinTaunt < MaxTaunt then
        hateAmount = math.random(MinTaunt, MaxTaunt)
        AddHate(Caster, Target, hateAmount)
    else
        AddHate(Caster, Target, MinTaunt)
    end
end

function remove(Caster, Target, MinTaunt, MaxTaunt)

end

