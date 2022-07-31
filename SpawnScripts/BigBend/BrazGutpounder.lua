--[[
	Script Name	: SpawnScripts/BigBend/BrazGutpounder.lua
	Script Purpose	: Braz Gutpounder <Troll Mentor>
	Script Author	: Scatman
	Script Date	: 2008.10.01
	Script Notes	: 
--]]

local TROLL = 14
QUEST_1 = 170
QUEST_2 = 171
QUEST_3 = 172
QUEST_4 = 173
QUEST_5 = 1

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
	ProvidesQuest(NPC, QUEST_3)
	ProvidesQuest(NPC, QUEST_4)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			if HasCompletedQuest(Spawn, QUEST_3) then
				if HasCompletedQuest(Spawn, QUEST_4) then
					PlayFlavor(NPC, "", "Ol' Braz fink  gunna go far in dis city!", "", 1689589577, 4560189, Spawn)
				elseif HasQuest(Spawn, QUEST_4) then
					OnQuest4(NPC, Spawn, conversation)
				else
					YouReadyForLastThing(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn, QUEST_3) then
				OnQuest3(NPC, Spawn, conversation)
			else
				ReadyForBestStoryEver(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, QUEST_2) then
			OnQuest2(NPC, Spawn, conversation)
		else
			GudGudBack(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		if GetRace(Spawn) == TROLL then
			Huzzah(NPC, Spawn, conversation)
		else
			PlayFlavor(NPC, "", "Braz not want nuttin' ta do wit not-a-troll!", "", 1689589577, 4560189, Spawn)
		end
	end
end

------------------------------------------------------------------------------------------------------------------------
--									QUEST 1
------------------------------------------------------------------------------------------------------------------------

function Huzzah(NPC, Spawn, conversation)
	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder001.mp3", "", "", 2367644174, 3212958772, Spawn)
	AddConversationOption(conversation, "Whut ol' Braz want?", "dlg_0_1")
	AddConversationOption(conversation, "Get on with it, you oaf. It's a travesty that gutter-spoken trolls like you exist.", "dlg_1_1")
	AddConversationOption(conversation, "A'wright! It's good to be wanted.", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "Huzzah! I knowed " .. GetName(Spawn) .. " would be comin' soon! Dey sayz so much 'bout ya, ol' Braz couldn't hardly wait for yaz!")
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder002.mp3", "", "", 1648756246, 1571329846, Spawn)
	AddConversationOption(conversation, "What next? Soon dey have us trolls be eatin' wif forks n' sticks.", "dlg_1_2")
	AddConversationOption(conversation, GetName(Spawn) .. " not need a history lesson! I show Freeport whut it needs, not udder way 'round!")
	StartConversation(conversation, NPC, Spawn, "Braz lern da fick new trolls da way of da Bend. Yessir, da Overlord's city don't take so gud to us goin' 'round eatin' everyfing we see no more.")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder003.mp3", "", "", 2634593249, 1624619122, Spawn)
	AddConversationOption(conversation, "Alright, Braz, continue. I didn't truly mean to offend.", "dlg_1_2")
	AddConversationOption(conversation, "I don't need your history lesson. I'll find my own way!")
	StartConversation(conversation, NPC, Spawn, GetName(Spawn) .. " finks he so smart. Har har har! Not tell you history of why we here den. Dat teach you! Ol' Braz not stupid, been here in da Bend for long time, seen many young trolls get heads bashed in by not listenin'!")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder004.mp3", "", "", 2053971510, 2987636532, Spawn)
	AddConversationOption(conversation, "No ogre gunna keep dis troll quiet!", "dlg_1_3")
	AddConversationOption(conversation, "Do go on.", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "So den, listen gud! We'z here in da Big Bend. Why " .. GetName(Spawn) .. " asks? Cuz dey can't keep us well. Dey finks dat t'rowin us in wit da ogres keeps us quiet.")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder005.mp3", "", "", 1186376668, 3038803836, Spawn)
	AddConversationOption(conversation, "Daz right! We keeps our own! Say us more!", "dlg_1_4")
	AddConversationOption(conversation, "Seems appropriate. What else is there?", "dlg_1_4")
	StartConversation(conversation, NPC, Spawn, "It work ok, ol' Braz finks. No one botha us in da Bend. Da guards is all ogres n' trolls, picked special for us by da Freeport Militia. Dey knows dere beat, n' dey stick to it.")
end

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder006.mp3", "", "", 1724164202, 843755403, Spawn)
	AddConversationOption(conversation, "Yeh! " .. GetName(Spawn) .. " help demz dat help " .. GetName(Spawn) .. ".", "OfferQuest1")
	AddConversationOption(conversation, "Charming. I suppose I can assist.", "OfferQuest1")
	AddConversationOption(conversation, "Noz, I dun fink so.")
	AddConversationOption(conversation, "No thanks, I don't think I need more of this.")
	StartConversation(conversation, NPC, Spawn, "Now ol' Braz gotcha! Wants ta hear more ya do! I tells ya, but it's cuttin' inta da time Braz be needin' for some special work. But I bet a new troll wif lots of da energy could be doin' dis stuff fast. Whutcha say? Help ol' Braz out?")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_1) >= 1 and GetQuestStep(Spawn, QUEST_1) <= 3 then
		PlayFlavor(NPC, "", "Ol' Braz fink dat  ain't done wif dat fing.", "", 1689589577, 4560189, Spawn)
	elseif GetQuestStep(Spawn, QUEST_1) == 4 then
		PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder007.mp3", "", "", 1102536605, 2439059510, Spawn)
		AddConversationOption(conversation, "Him not give me noooo problems. We all gud. I 'splained it to him reel gud.", "dlg_11_1")
		AddConversationOption(conversation, "Don't worry, I've explained to him the proper... diet.", "dlg_11_1")
		StartConversation(conversation, NPC, Spawn, "So, howz it go? Fick-headed Ruzb give " .. GetName(Spawn) .. " any problems? Ol' Braz get real mean, mean like Ruzb not want!")
	end
end

function dlg_11_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 4)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder009.mp3", "", "", 4277467869, 198458243, Spawn)
	AddConversationOption(conversation, "Yessir we do, yessir we do!", "dlg_12_2")
	AddConversationOption(conversation, "We'll have to wait and see.")
	StartConversation(conversation, NPC, Spawn, "See?! Braz knew he could count on yaz. " .. GetName(Spawn) .. " is a stand-up troll Braz always sayz! Youz be comin' back in a bit, and ol' Braz be helpin' ya some more. " .. GetName(Spawn) .. " see, we trolls take da gud care of each other, yessir we do.")
end

----------------------------------------------------------------------------------------------------------------------------
--											QUEST 2
----------------------------------------------------------------------------------------------------------------------------

function GudGudBack(NPC, Spawn, conversation)
	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder010.mp3", "", "", 2288132986, 2296597755, Spawn)
	AddConversationOption(conversation, "Ohs yessir, mista Braz! Goodiee!", "dlg_12_2")
	AddConversationOption(conversation, "Why Braz Gutpounder, is that a hint of guile I hear?", "dlg_12_1")
	StartConversation(conversation, NPC, Spawn, "Gud, gud! Youz back, n' ol' Braz is ready ta 'splain all da more 'bout whut goes on in da Bend. Youz ready? I knowz ya gots lots ta do in da Big Bend...")
end

function dlg_12_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder012.mp3", "", "", 2019993026, 3107133657, Spawn)
	AddConversationOption(conversation, "Alright Braz, I'll bite. What's next?", "dlg_12_2")
	AddConversationOption(conversation, "I'll just be going now. I don't think I need another history lesson.")
	StartConversation(conversation, NPC, Spawn, "Braz not know whut youz talkin' bout. Hush up before da other trolls hear ya, or Braz'll hav' ta get reeeel angry. Youz no like angry Braz.")
end

function dlg_12_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder011.mp3", "", "", 2333998515, 4037225321, Spawn)
	AddConversationOption(conversation, "Har har har, Braz so funny!", "dlg_12_3")
	AddConversationOption(conversation, "Yes. Very humorous. I almost detected that wit again.", "dlg_12_3")
	StartConversation(conversation, NPC, Spawn, "Us trolls is da favoritest people of Cazic-Thule. We knowz he not 'round so much, but sometimes Braz be feelin' like da lil' ones has just a bit more fear in dem o' Braz. Den again, maybe dat's just da blood on Braz' teef.")
end

function dlg_12_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder013.mp3", "", "", 3902515970, 2686844030, Spawn)
	AddConversationOption(conversation, "Yessir! None of dat weak hate god! All da trollz be worshippin' da Thule!", "OfferQuest2")
	AddConversationOption(conversation, "You know, there might just be wisdom in that...", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "Some o' da other trolls sayz we shudda been bowin' to da Inkie god, Innoruuk. Not so sayz Braz. Der no fear in dat one's nearness, only da hatred.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function OnQuest2(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_2) >= 1 and GetQuestStep(Spawn, QUEST_2) <= 2 then
		PlayFlavor(NPC, "", "Ol' Braz fink dat  ain't done wif dat fing.", "", 1689589577, 4560189, Spawn)
	elseif GetQuestStep(Spawn, QUEST_2) == 3 then
		PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder015.mp3", "", "", 3734190728, 1696795061, Spawn)
		AddConversationOption(conversation, "I so sorry Braz. Fought Braz'd be happy wif da extra touch.", "dlg_15_1")
		AddConversationOption(conversation, "Well excuse me for appreciating my rat cooked. Where were you raised, honestly?", "dlg_15_1")
		StartConversation(conversation, NPC, Spawn, "Whutz dis? Burned rat? Arrrgh! Braz not ask for BURNED RAT! Der'z no taste wifout da blud! Ptuh! Ol' Braz be spittin' on dem fings.")
	end
end

function dlg_15_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_2, 3)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder016.mp3", "", "", 1632804970, 3876705173, Spawn)
	AddConversationOption(conversation, "Fanks Braz! You'ze da bestest!")
	AddConversationOption(conversation, "You know, I guess that's not a half bad trade for a couple of rats.")
	StartConversation(conversation, NPC, Spawn, "Iz fine, Braz be finkin'. Maybe da mizzus can skin dem fings a bit n' let out da juice. Braz said he be helpin' yaz, so here. Braz guesses dat be gud 'nuff for da rats. Come back, n' Braz tellz yaz more.")
end

-------------------------------------------------------------------------------------------------------------------------------------
--												QUEST 3
-------------------------------------------------------------------------------------------------------------------------------------

function ReadyForBestStoryEver(NPC, Spawn, conversation)
	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder017.mp3", "", "", 2251732773, 2788874651, Spawn)
	AddConversationOption(conversation, "Uhh, I no know whut a fahver is.", "dlg_16_1")
	AddConversationOption(conversation, "Your common gets worse by the minute. What on Cazic's fearful Norrath is a 'fahver'?", "dlg_16_1")
	StartConversation(conversation, NPC, Spawn, "Ok, iz yaz ready for da bestest story ever? Dis one was tol' by Braz' ol' troll fahver.")
end

function dlg_16_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder018.mp3", "", "", 3468265702, 1290513814, Spawn)
	AddConversationOption(conversation, "Okay, you'ze da boss, Braz! Tho, I fink even I can say da wurd 'father'...", "dlg_16_2")
	AddConversationOption(conversation, "Fine, tell your trite little story, and let's get this over with. I'm not sure how good it can be if you can't manage 'father'.", "dlg_16_2")
	StartConversation(conversation, NPC, Spawn, "Fahver! You'ze no! 'Zactly same as a... whuts udder word? Oh, yahz, iz like 'Dad'? Anywayz, I be givin' ya da story now. No more 'rruptions, kay?")
end

function dlg_16_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder019.mp3", "", "", 1604113201, 2181463850, Spawn)
	AddConversationOption(conversation, "Ohhh! Dis soundz gud!", "dlg_16_3")
	AddConversationOption(conversation, "So, we actually managed to defeat someone? Must have been one of my ancestors, not yours.", "dlg_16_3")
	StartConversation(conversation, NPC, Spawn, "Ol' Braz'll not pay no 'ttention ta dat lip. So da story is of da routin' of da stupid frogs from da Grobb. Wuz a great victory for da trollz. Even dat stinky Marr not able to save da froggies.")
end

function dlg_16_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder020.mp3", "", "", 727428733, 2284756867, Spawn)
	AddConversationOption(conversation, "Say more! Say more!", "dlg_16_4")
	AddConversationOption(conversation, "This is obviously the troll-notes version of the history.", "dlg_16_4")
	StartConversation(conversation, NPC, Spawn, "So, dere was da big army of da troll basherz. And den, der was dis even bigger army of da durned froggies whut were led by dat inter... interlo... meddler Miffaniel Marr. We wuz doin' well, barshin' da froggies, n' stompin' da little tadpoles.")
end

function dlg_16_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder021.mp3", "", "", 2477883719, 1452757212, Spawn)
	AddConversationOption(conversation, "Ohhh! I know, I know! We barsh dem instead?", "dlg_16_5")
	AddConversationOption(conversation, "Go on. I can't wait to hear this tale butchered in new and interesting ways.", "dlg_16_5")
	StartConversation(conversation, NPC, Spawn, "Wuz great war! Ate many froggies. Fahver tol' me dey gud like chickenz. Ahny way, we wuz bein' barshed gud by dat filthy froggie god. Was shamin' us, but da trollz juz not able ta take Grobb back. Den sometin' super happen.")
end

function dlg_16_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder022.mp3", "", "", 3262529597, 1665835871, Spawn)
	AddConversationOption(conversation, "Guddie, guddie frogslegs! Barsh, barsh, BARSH! Den whut?", "OfferQuest3")
	AddConversationOption(conversation, "Oh yes, this is likely the worst re-telling I've ever heard. So, what's next?", "OfferQuest3")
	StartConversation(conversation, NPC, Spawn, "Der was dis big green cloud. Whut was smelly to da froggies' dele... delecat... sens'tive nozez. Den Cazic-Thule came outta da big green cloud n' started lay'n into dat nasty Marr. Den all da barshin' trollz jumped in n' pounded him!")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_3)
end

function OnQuest3(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_3) >= 1 and GetQuestStep(Spawn, QUEST_3) <= 5 then
		PlayFlavor(NPC, "", "Ol' Braz fink dat  ain't done wif dat fing.", "", 1689589577, 4560189, Spawn)
	elseif GetQuestStep(Spawn, QUEST_3) == 6 then
		PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder024.mp3", "", "", 2338642678, 3809861516, Spawn)
		AddConversationOption(conversation, "Yessir. Dis.. erm... GIANT... fing... barshed mah knees... n' toez... yah... dat's it.", "dlg_18_1")
		AddConversationOption(conversation, "Look, I don't want to talk about it. Your patrol route is clear. That is enough.", "dlg_18_1")
		StartConversation(conversation, NPC, Spawn, "Yawwwwwn! Iz dat you, " .. GetName(Spawn) .. "? How da patrol go? You'ze look a bit barshed. Sometin' happen?")
	end
end

function dlg_18_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_3, 6)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder025.mp3", "", "", 3753767177, 48215964, Spawn)
	AddConversationOption(conversation, "Dat's mean. I not shur I like dis game.")
	AddConversationOption(conversation, "Well then, I guess I don't feel so badly if it was some sort of set-up.")
	StartConversation(conversation, NPC, Spawn, "Har har har! Youz got dat crazy hafflin'! He's a funny lil' one! Looks like I wun da bet wit da banker. Har har har!")
end

-------------------------------------------------------------------------------------------------------------------------------------
--											QUEST 4
-------------------------------------------------------------------------------------------------------------------------------------

function YouReadyForLastThing(NPC, Spawn, conversation)
	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder026.mp3", "", "", 2443819280, 3084140963, Spawn)
	AddConversationOption(conversation, "Yessir, Braz sir! I ready. Tell dis fing to me!", "dlg_19_1")
	AddConversationOption(conversation, "I'm surprised you've had any useful information at all, to be honest.", "dlg_19_1")
	StartConversation(conversation, NPC, Spawn, "Youz ready for da last fing I knowz 'bout livin' as a troll here in Freeport? Dis is it. Ol' Braz don't know no more after dis.")
end

function dlg_19_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder027.mp3", "", "", 1541269146, 1641332265, Spawn)
	AddConversationOption(conversation, "Whut? No eatin'? Dat's no fun...", "dlg_19_2")
	AddConversationOption(conversation, "Quite obviously. There are things which could clearly cause indigestion.", "dlg_19_2")
	StartConversation(conversation, NPC, Spawn, "Iz very short, and dis is it; no way, neva let dat stupid tummy rule whut you do. It make for a bad time in da world if a troll just go wanderin' 'round tryin' ta eat everytin'.")
end

function dlg_19_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder028.mp3", "", "", 246584716, 2626653219, Spawn)
	AddConversationOption(conversation, "No! Not ol' Braz!", "dlg_19_3")
	AddConversationOption(conversation, "Oh, now there's a shock. Something that could eat good ol' Braz... actually, that sounds rather appealing.", "dlg_19_3")
	StartConversation(conversation, NPC, Spawn, "Now, ol' Braz not say dat ya not eat whut ya want, but " .. GetName(Spawn) .. " gotta be careful. Der be fings whut can even eat a fierce war-troll what barsh stuff gud. Dat's right. Stuff dat could even eat ol' Braz.")
end

function dlg_19_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder029.mp3", "", "", 3787495393, 626589338, Spawn)
	AddConversationOption(conversation, "Whut? Why? But he jus' bein' a gud troll!", "OfferQuest4")
	AddConversationOption(conversation, "Yes, I'm sure you're going to explain how this upsets the delicate economic balance between Temple Street and Big Bend. Oh wait, that would be me saying something like that.", "OfferQuest4")
	StartConversation(conversation, NPC, Spawn, "Now, youze do ol' Braz one last fing for a favor. " .. GetName(Spawn) .. " gonna go check in on dat troll from before. If he still eatin' da lil' gnomelin's, den you barsh him gud.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_4)
end

function OnQuest4(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_4) >= 1 and GetQuestStep(Spawn, QUEST_4) <= 2 then
		PlayFlavor(NPC, "", "Ol' Braz fink dat  ain't done wif dat fing.", "", 1689589577, 4560189, Spawn)
	elseif GetQuestStep(Spawn, QUEST_4) == 3 then
		PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder031.mp3", "", "", 1815556331, 2505933111, Spawn)
		AddConversationOption(conversation, "It'za gud fing you n' me gots da smartz though!", "dlg_22_1")
		AddConversationOption(conversation, "Yes... it really is a good thing that some of us got all the brains.", "dlg_22_1")
		StartConversation(conversation, NPC, Spawn, "Dat's a shame. I'da hoped he'da learned da lesson " .. GetName(Spawn) .. " learned him before. Not all trollz gots da smartz though.")
	end
end

function dlg_22_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder032.mp3", "", "", 835625892, 929273519, Spawn)
	AddConversationOption(conversation, "Aww, " .. GetName(Spawn) .. " will keep da fing forever n' ever! But wut guys you talkin' 'bout?", "CompleteQuest4")
	AddConversationOption(conversation, "Maybe I'll keep it somewhere where no one can see how hideous it is. In the meantime, to whom do you think I should speak?", "CompleteQuest4")
	StartConversation(conversation, NPC, Spawn, "Dis be a sad time for me, cuz ol' Braz is shur dat " .. GetName(Spawn) .. " be forgettin' him as he goes off to fortune and glory. But I give ya dis fing ta remember ol' Braz by. Maybe you keep. Oh, and silly ol' Braz almos' forgot! Youz should be seein' dem guys outside!")
end

function CompleteQuest4(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_4, 3)
	--OfferQuest(NPC, Spawn, QUEST_5)
end

--------------------------------------------------------------------------------------------------------------------------------
--							QUEST 5
--------------------------------------------------------------------------------------------------------------------------------


function dlg_22_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder033.mp3", "", "", 3580752169, 3690055660, Spawn)
	AddConversationOption(conversation, GetName(Spawn) .. " gunna keep dat in mind!")
	AddConversationOption(conversation, "Perhaps I shall pay them a visit.", "dlg_22_3")
	StartConversation(conversation, NPC, Spawn, "Lessee! Der's dat troll Kurdek in da Sprawl! Youz gunna speak wit him!")
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "Uwic jla dxio hcjwphc bs rc nbo nnmrhfjhbgrp", "", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "Braz not want nuttin' ta do wit not-a-troll!", "", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "Ol' Braz fink dat  ain't done wif dat fing.", "", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "Ol' Braz fink  gunna go far in dis city!", "", 1689589577, 4560189, Spawn)
--]]