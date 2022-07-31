--[[
	Script Name	: SpawnScripts/TempleSt/ChuggleValvesplitter.lua
	Script Purpose	: Chuggle Valvesplitter 
	Script Author	: John Adams
	Script Date	: 2009.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/chuggle_valvesplitter/fprt_hood03/hail_chuggle000.mp3", "", "", 986790684, 3595790226, Spawn)
	AddConversationOption(conversation, "I have your toolbox and tools right here.  Let's talk reward.  ", "dlg_0_1")
	AddConversationOption(conversation, "I'll leave you to your depression. ")
	StartConversation(conversation, NPC, Spawn, "Sorry, sorry.  What is it?  I can't really help out much since those local 858 union members stole my blasted toolbox!")
	if convo==1 then
		PlayFlavor(NPC, "voiceover/english/chuggle_valvesplitter/fprt_hood03/hail_chuggle000.mp3", "", "", 986790684, 3595790226, Spawn)
		AddConversationOption(conversation, "I have your toolbox and tools right here.  Let's talk reward.  ", "dlg_1_1")
		AddConversationOption(conversation, "I'll leave you to your depression. ")
		StartConversation(conversation, NPC, Spawn, "Sorry, sorry.  What is it?  I can't really help out much since those local 858 union members stole my blasted toolbox!")
	end

	if convo==2 then
		PlayFlavor(NPC, "voiceover/english/chuggle_valvesplitter/fprt_hood03/hail_chuggle000.mp3", "", "", 986790684, 3595790226, Spawn)
		AddConversationOption(conversation, "I'll leave you to your depression. ", "dlg_2_1")
		StartConversation(conversation, NPC, Spawn, "Sorry, sorry.  What is it?  I can't really help out much since those local 858 union members stole my blasted toolbox!")
	end

	if convo==4 then
		PlayFlavor(NPC, "voiceover/english/chuggle_valvesplitter/fprt_hood03/hail_chuggle000.mp3", "", "", 986790684, 3595790226, Spawn)
		AddConversationOption(conversation, "I'll leave you to your depression. ", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, "Sorry, sorry.  What is it?  I can't really help out much since those local 858 union members stole my blasted toolbox!")
	end

	if convo==20 then
		PlayFlavor(NPC, "voiceover/english/chuggle_valvesplitter/fprt_hood03/hail_chuggle000.mp3", "", "", 986790684, 3595790226, Spawn)
		AddConversationOption(conversation, "I'll leave you to your depression. ", "dlg_20_1")
		StartConversation(conversation, NPC, Spawn, "Sorry, sorry.  What is it?  I can't really help out much since those local 858 union members stole my blasted toolbox!")
	end

	if convo==28 then
		PlayFlavor(NPC, "voiceover/english/chuggle_valvesplitter/fprt_hood03/hail_chuggle000.mp3", "", "", 986790684, 3595790226, Spawn)
		AddConversationOption(conversation, "I'll leave you to your depression. ", "dlg_28_1")
		StartConversation(conversation, NPC, Spawn, "Sorry, sorry.  What is it?  I can't really help out much since those local 858 union members stole my blasted toolbox!")
	end

end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/chuggle_valvesplitter/fprt_hood03/hail_chuggle001.mp3", "", "", 3252705361, 2081071070, Spawn)
	AddConversationOption(conversation, "That'll do, I suppose.", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "Thank you! Thank you! Thank you! Yes! Yes! Yes! A reward! Tell you what I'll do. I need these tools to make my newest invention. I'll make an invention for you and give it to you as a reward! This piece of equipment will be all the rage! Functional and stylish if I do say so myself!")
end

