--[[
	Script Name	: SpawnScripts/Generic/GenericMerchantVoiceOvers.lua
	Script Purpose	: Handles the generic hails for merchants.
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: 
--]]

local BARBARIAN = 0
local DARK_ELF = 1
local DWARF = 2
local ERUDITE = 3
local FROGLOK = 4
local GNOME = 5
local HALF_ELF = 6
local HALFLING = 7
local HIGH_ELF = 8
local HUMAN = 9
local IKSAR = 10
local KERRA = 11
local OGRE = 12
local RATONGA = 13
local TROLL = 14
local WOOD_ELF = 15
local FAE = 16
local ARASAI = 17
local SARNAK = 18

local MALE = 1
local FEMALE = 2

function GenericMerchantHail(NPC, Spawn, faction)
	if NPC ~= nil then
		local race = GetRace(NPC)
		local gender = GetGender(NPC)
		
		if race >= 0 and race <= 18 and gender >= 1 and gender <= 2 then
			if race == BARBARIAN then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == DARK_ELF then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == DWARF then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == ERUDITE then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == FROGLOK then
				if gender == MALE then
					local choice = math.random(1, 3)
					if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/service/merchant/froglok_merchant_service_good_1_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "", 3275840542, 3533002656, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/service/merchant/froglok_merchant_service_good_1_hail_gm_ae84abf9.mp3", "Go on take a look at the stock. You'll never beat this price in the city. I guarantee it!", "", 1103160236, 2382190453, Spawn)
					elseif choice == 3 then
						PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/service/merchant/froglok_merchant_service_good_1_hail_gm_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "", 4162169560, 3669848700, Spawn)
					end
				elseif gender == FEMALE then
				end
			elseif race == GNOME then
				if gender == MALE then
				elseif gender == FEMALE then
					local choice = math.random(1, 4)
					if choice == 1 then
						PlayFlavor(NPC, "", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 1689589577, 4560189, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/merchant/gnome_merchant_service_good_1_hail_gf_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "confused", 246082736, 1176624798, Spawn)
					elseif choice == 3 then
						PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/merchant/gnome_merchant_service_good_1_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "wink", 3111567662, 3548853636, Spawn)
					elseif choice == 4 then
						PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/merchant/gnome_merchant_service_good_1_hail_gf_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 1338601146, 1643268062, Spawn)
					end
				end
			elseif race == HALF_ELF then
				if gender == MALE then
					local choice = math.random(1, 5)
					if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/merchant/halfelf_merchant_service_good_1_aoi_gm_c5e79ff5.mp3", "Hello there! Can I interest you in some of the finest merchandise this side of Norrath?", "wave", 1293853317, 115757857, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/merchant/halfelf_merchant_service_good_1_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 397083190, 607860501, Spawn)
					elseif choice == 3 then
						PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/merchant/halfelf_merchant_service_good_1_hail_gm_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 3839095688, 1767190740, Spawn)
					elseif choice == 4 then
						PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/merchant/halfelf_merchant_service_good_1_hail_gm_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "wink", 1745995078, 3389510546, Spawn)
					elseif choice == 5 then
						PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/merchant/halfelf_merchant_service_good_1_hail_gm_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "confused", 2835834469, 3534853920, Spawn)
					end
				elseif gender == FEMALE then
				end
			elseif race == HALFLING then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == HIGH_ELF then
				if gender == MALE then
					local choice = math.random(1, 4)
					if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/merchant/highelf_merchant_service_good_1_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 2148618169, 3301341439, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/merchant/highelf_merchant_service_good_1_hail_gm_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 3062232413, 481395622, Spawn)
					elseif choice == 3 then
						PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/merchant/highelf_merchant_service_good_1_hail_gm_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "wink", 1178509910, 1653421984, Spawn)
					elseif choice == 4 then
						PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/merchant/highelf_merchant_service_good_1_hail_gm_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "confused", 2961019025, 517163532, Spawn)
					end
				elseif gender == FEMALE then
					local choice = math.random(1, 4)
					if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/merchant/highelf_merchant_service_good_1_hail_gf_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 2023209747, 1019050798, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/merchant/highelf_merchant_service_good_1_hail_gf_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 3279499948, 2931921467, Spawn)
					elseif choice == 3 then
						PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/merchant/highelf_merchant_service_good_1_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "wink", 3725011666, 2990490195, Spawn)
					elseif choice == 4 then
						PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/merchant/highelf_merchant_service_good_1_hail_gf_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "confused", 1015791525, 798872771, Spawn)
					end
				end
			elseif race == HUMAN then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == IKSAR then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == KERRA then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == OGRE then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == RATONGA then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == TROLL then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == WOOD_ELF then
				if gender == MALE then
				elseif gender == FEMALE then
					local choice = math.random(1, 2)
					if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/service/merchant/woodelf_merchant_service_good_1_hail_gf_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 2082169991, 1448634552, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/service/merchant/woodelf_merchant_service_good_1_hail_gf_e4fa2bd8.mp3", "Confound it! Where did I put that ledger?  It must be around here somewhere!", "confused", 3534990748, 2443561795, Spawn)
					end
				end
			elseif race == FAE then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == ARASAI then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == SARNAK then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			end
		end
	end
end
