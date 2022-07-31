--[[
	Script Name	: SpawnScripts/GreaterFaydark/TrainerKaaliSaarinen.lua
	Script Purpose	: Trainer Kaali Saarinen <Knowledge of Repairs and Banking>
	Script Author	: John Adams
	Script Date	: 2009.02.05
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

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/trainer_kaali_saarinen/_exp03/exp03_cty_kelethin/tutorials/qst_kaali/qst_kaali001.mp3", "", "", 379020227, 2631329786, Spawn)
	AddConversationOption(conversation, "Tell me about banking.", "dlg_2_1")
	AddConversationOption(conversation, "Tell me about mending items.")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "I can tell you all about mending and banking! Banking and mending! Which do you want to hear about?")
	if convo==3 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/trainer_kaali_saarinen/_exp03/exp03_cty_kelethin/tutorials/qst_kaali/qst_kaali001.mp3", "", "", 379020227, 2631329786, Spawn)
		AddConversationOption(conversation, "Tell me about banking.", "dlg_3_1")
		AddConversationOption(conversation, "Tell me about mending items.")
		AddConversationOption(conversation, "I'll return for training later.")
		StartConversation(conversation, NPC, Spawn, "I can tell you all about mending and banking! Banking and mending! Which do you want to hear about?")
	end

	if convo==4 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/trainer_kaali_saarinen/_exp03/exp03_cty_kelethin/tutorials/qst_kaali/qst_kaali001.mp3", "", "", 379020227, 2631329786, Spawn)
		AddConversationOption(conversation, "Tell me about banking.", "dlg_4_1")
		AddConversationOption(conversation, "Tell me about mending items.")
		AddConversationOption(conversation, "I'll return for training later.")
		StartConversation(conversation, NPC, Spawn, "I can tell you all about mending and banking! Banking and mending! Which do you want to hear about?")
	end

end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/trainer_kaali_saarinen/_exp03/exp03_cty_kelethin/tutorials/qst_kaali/qst_kaali002.mp3", "", "", 3479337661, 1558582082, Spawn)
	AddConversationOption(conversation, "How do I open my bank?", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "You may already have an account with the Kelethin First Regional Bank. Go see Banker Athinae in Kelethin to access your account.  You can access your Kelethin bank account from Qeynos, but not from Freeport.")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/trainer_kaali_saarinen/_exp03/exp03_cty_kelethin/tutorials/qst_kaali/qst_kaali003.mp3", "", "", 3503013512, 572214147, Spawn)
	AddConversationOption(conversation, "How do I make deposits and withdrawals?", "dlg_2_3")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "Inside the bank, your mouse pointer will turn into a dial icon when hovered over a banker. Just click on the banker to open your bank window. You'll see eight general slots and four 'shared' slots. You can put bags or containers in your bank to increase the number of available slots.")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/trainer_kaali_saarinen/_exp03/exp03_cty_kelethin/tutorials/qst_kaali/qst_kaali004.mp3", "", "", 2117128717, 56517132, Spawn)
	AddConversationOption(conversation, "What are 'shared' bank slots?", "dlg_2_4")
	StartConversation(conversation, NPC, Spawn, "Coins and items can be dragged from your inventory to the bank window. To drag one item from a stack, hold down the Ctrl key as you drag it. To drag a certain number of coins or items, hold down the Shift key and drag, then enter the quantity.")
end

function dlg_2_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/trainer_kaali_saarinen/_exp03/exp03_cty_kelethin/tutorials/qst_kaali/qst_kaali005.mp3", "", "", 740425505, 3325158062, Spawn)
	AddConversationOption(conversation, "Any other banking facts I should know?", "dlg_2_5")
	StartConversation(conversation, NPC, Spawn, "Items (but not coin) placed in your shared slots can be accessed by other characters on your account that are also citizens of Kelethin. Lore and No-Trade items cannot be put into the shared slots. Characters that are not Kelethin citizens cannot access a Kelethin bank.  So, you could not access a bank in Qeynos or Freeport.")
end

function dlg_2_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/trainer_kaali_saarinen/_exp03/exp03_cty_kelethin/tutorials/qst_kaali/qst_kaali006.mp3", "", "", 1392905744, 1433356720, Spawn)
	AddConversationOption(conversation, "I want to learn about mending items.", "dlg_2_6")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "If you choose to join a guild made up of your fellow players one day, you can access your guild bank by right-clicking on a banker and selecting 'Guild Bank.'")
end

function dlg_2_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about banking.", "dlg_2_7")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "Your weapons and armor wear down when you die during combat. When they are down to zero durability, you no longer receive any benefit from them. You can visit a mender, such as Mender Kaarlo Karpela at Gearheart's Forge in Kelethin, to get them repaired.  Speak to Trainer Leianna Teiampa if you wish to learn more about the effects of death.")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/trainer_kaali_saarinen/_exp03/exp03_cty_kelethin/tutorials/qst_kaali/qst_kaali002.mp3", "", "", 3479337661, 1558582082, Spawn)
	AddConversationOption(conversation, "How do I open my bank?", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "You may already have an account with the Kelethin First Regional Bank. Go see Banker Athinae in Kelethin to access your account.  You can access your Kelethin bank account from Qeynos, but not from Freeport.")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about banking.")
	AddConversationOption(conversation, "I'll return for training later.", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "Your weapons and armor wear down when you die during combat. When they are down to zero durability, you no longer receive any benefit from them. You can visit a mender, such as Mender Kaarlo Karpela at Gearheart's Forge in Kelethin, to get them repaired.  Speak to Trainer Leianna Teiampa if you wish to learn more about the effects of death.")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/trainer_kaali_saarinen/_exp03/exp03_cty_kelethin/tutorials/qst_kaali/qst_kaali003.mp3", "", "", 3503013512, 572214147, Spawn)
	AddConversationOption(conversation, "How do I make deposits and withdrawals?", "dlg_3_3")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "Inside the bank, your mouse pointer will turn into a dial icon when hovered over a banker. Just click on the banker to open your bank window. You'll see twelve general slots and eight 'shared' slots. You can put bags or containers in your bank to increase the number of available slots.")
end

function dlg_3_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/trainer_kaali_saarinen/_exp03/exp03_cty_kelethin/tutorials/qst_kaali/qst_kaali004.mp3", "", "", 2117128717, 56517132, Spawn)
	AddConversationOption(conversation, "What are 'shared' bank slots?", "dlg_3_4")
	StartConversation(conversation, NPC, Spawn, "Coins and items can be dragged from your inventory to the bank window. To drag one item from a stack, hold down the Ctrl key as you drag it. To drag a certain number of coins or items, hold down the Shift key and drag, then enter the quantity.")
end

function dlg_3_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/trainer_kaali_saarinen/_exp03/exp03_cty_kelethin/tutorials/qst_kaali/qst_kaali005.mp3", "", "", 740425505, 3325158062, Spawn)
	AddConversationOption(conversation, "Any other banking facts I should know?", "dlg_3_5")
	StartConversation(conversation, NPC, Spawn, "Items (but not coin) placed in your shared slots can be accessed by other characters on your account that are also citizens of Kelethin. Lore and No-Trade items cannot be put into the shared slots. Characters that are not Kelethin citizens cannot access a Kelethin bank.  So, you could not access a bank in Qeynos or Freeport.")
end

function dlg_3_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/trainer_kaali_saarinen/_exp03/exp03_cty_kelethin/tutorials/qst_kaali/qst_kaali006.mp3", "", "", 1392905744, 1433356720, Spawn)
	AddConversationOption(conversation, "I want to learn about mending items.", "dlg_3_6")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "If you choose to join a guild made up of your fellow players one day, you can access your guild bank by right-clicking on a banker and selecting 'Guild Bank.'")
end

function dlg_3_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about banking.", "dlg_3_7")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "Your weapons and armor wear down when you die during combat. When they are down to zero durability, you no longer receive any benefit from them. You can visit a mender, such as Mender Kaarlo Karpela at Gearheart's Forge in Kelethin, to get them repaired.  Speak to Trainer Leianna Teiampa if you wish to learn more about the effects of death.")
end

function dlg_3_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/trainer_kaali_saarinen/_exp03/exp03_cty_kelethin/tutorials/qst_kaali/qst_kaali002.mp3", "", "", 3479337661, 1558582082, Spawn)
	AddConversationOption(conversation, "How do I open my bank?", "dlg_3_8")
	StartConversation(conversation, NPC, Spawn, "You may already have an account with the Kelethin First Regional Bank. Go see Banker Athinae in Kelethin to access your account.  You can access your Kelethin bank account from Qeynos, but not from Freeport.")
end

function dlg_3_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/trainer_kaali_saarinen/_exp03/exp03_cty_kelethin/tutorials/qst_kaali/qst_kaali003.mp3", "", "", 3503013512, 572214147, Spawn)
	AddConversationOption(conversation, "How do I make deposits and withdrawals?", "dlg_3_9")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "Inside the bank, your mouse pointer will turn into a dial icon when hovered over a banker. Just click on the banker to open your bank window. You'll see twelve general slots and eight 'shared' slots. You can put bags or containers in your bank to increase the number of available slots.")
end

function dlg_3_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/trainer_kaali_saarinen/_exp03/exp03_cty_kelethin/tutorials/qst_kaali/qst_kaali004.mp3", "", "", 2117128717, 56517132, Spawn)
	AddConversationOption(conversation, "What are 'shared' bank slots?", "dlg_3_10")
	StartConversation(conversation, NPC, Spawn, "Coins and items can be dragged from your inventory to the bank window. To drag one item from a stack, hold down the Ctrl key as you drag it. To drag a certain number of coins or items, hold down the Shift key and drag, then enter the quantity.")
end

function dlg_3_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/trainer_kaali_saarinen/_exp03/exp03_cty_kelethin/tutorials/qst_kaali/qst_kaali005.mp3", "", "", 740425505, 3325158062, Spawn)
	AddConversationOption(conversation, "Any other banking facts I should know?", "dlg_3_11")
	StartConversation(conversation, NPC, Spawn, "Items (but not coin) placed in your shared slots can be accessed by other characters on your account that are also citizens of Kelethin. Lore and No-Trade items cannot be put into the shared slots. Characters that are not Kelethin citizens cannot access a Kelethin bank.  So, you could not access a bank in Qeynos or Freeport.")
end

function dlg_3_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/trainer_kaali_saarinen/_exp03/exp03_cty_kelethin/tutorials/qst_kaali/qst_kaali006.mp3", "", "", 1392905744, 1433356720, Spawn)
	AddConversationOption(conversation, "I want to learn about mending items.", "dlg_3_12")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "If you choose to join a guild made up of your fellow players one day, you can access your guild bank by right-clicking on a banker and selecting 'Guild Bank.'")
end

function dlg_3_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about banking.", "dlg_3_13")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "Your weapons and armor wear down when you die during combat. When they are down to zero durability, you no longer receive any benefit from them. You can visit a mender, such as Mender Kaarlo Karpela at Gearheart's Forge in Kelethin, to get them repaired.  Speak to Trainer Leianna Teiampa if you wish to learn more about the effects of death.")
end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me about banking.")
	AddConversationOption(conversation, "I'll return for training later.", "dlg_4_2")
	StartConversation(conversation, NPC, Spawn, "Your weapons and armor wear down when you die during combat. When they are down to zero durability, you no longer receive any benefit from them. You can visit a mender, such as Mender Kaarlo Karpela at Gearheart's Forge in Kelethin, to get them repaired.  Speak to Trainer Leianna Teiampa if you wish to learn more about the effects of death.")
end

