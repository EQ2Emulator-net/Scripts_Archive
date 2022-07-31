--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/Charm.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 08:08:12
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- code to cast the spell
    Say(Caster, "Whoops! Guess this is not implemented yet!")

-- Info from spell_display_effects (remove from script when done)
-- Charms target
-- Applies Disorientation on termination.  Lasts for 3.0 seconds.
-- Mesmerizes target
-- Dispelled when target takes damage
-- Epic targets gain an immunity to Mesmerize effects of 9.0 seconds and duration is reduced to 1.0 second.
-- Applies Warning on termination.  Lasts for 0.5 seconds.
-- Grants Sonic Vision to caster
-- Increases Out-of-Combat Power Regeneration of target by 2.0
-- Increases Out-of-Combat Health Regeneration of target by 4.0
-- Certain enemies cannot be charmed
-- Only affects targets level 16 and below
-- Does not affect Epic targets

end

function tick(Caster, Target)
    -- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target)
    -- code to remove the spell
end

