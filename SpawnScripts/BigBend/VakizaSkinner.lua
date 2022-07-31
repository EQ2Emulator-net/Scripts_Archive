--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Sorry to bother you.")
	StartConversation(conversation, NPC, Spawn, "Why are you speaking to me? Unless the Overlord sent you, go away!")
end

function respawn(NPC)
	spawn(NPC)
end