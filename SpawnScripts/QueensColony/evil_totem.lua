--[[
	Script Name	: evil_totem.lua
	Script Purpose	: Destroy evil totems on the Queen's Colony for quests
	Script Author	: John Adams
	Script Date	: 2008.12.09
	Script Notes	: 
--]]

function spawn(NPC) 
   --uncomment to require quest 
   --SetRequiredQuest(NPC, 31, 2) --only allow people with the quest to click on it 
end

function respawn(NPC)
   spawn(NPC)
end
