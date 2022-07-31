--[[
	Script Name	: KwaStalwart.lua
	Script Purpose	: Kwa Stalwart
	Script Author	: I'm a Scaaaatman
	Script Date	: 2009.09.19
	Script Notes	: 
--]]

function spawn(NPC)
   ProvidesQuest(NPC, 20)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if GetRace(Spawn) == 4 then
		if HasCompletedQuest(Spawn, 20) then
		elseif HasQuest(Spawn, 20) then
			if GetQuestStep(Spawn, 20) == 1 then
				SetStepComplete(Spawn, 20, 1)
				AddConversationOption(conversation, "Return I shall!")
				StartConversation(conversation, NPC, Spawn, "Halt a moment! Do not pay from thine own pockets. Take this coin to exchange for the fine ale.")
			elseif GetQuestStep(Spawn, 20) == 2 then
			end
		else
			AddConversationOption(conversation, "Hail, kind sir. What hath thee planned on this glorious day?", "PlannedGloriousDay")
			AddConversationOption(conversation, "Hail, kind sir. Need ye a hand to aid thee?", "NeedHand")
			StartConversation(conversation, NPC, Spawn, "Salutations and greetings to ye, noble one.")
		end
	else
		NotFroglok(NPC, Spawn)
	end
end

function respawn(NPC)
   spawn(NPC)
end

function NotFroglok(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I do what I can. Good day.")
	StartConversation(conversation, NPC, Spawn, "My hopes in that ye seize every moment to protect the innocent!")
end

function PlannedGloriousDay(NPC, Spawn)
   conversation = CreateConversation()

   AddConversationOption(conversation, "To valor and honor!", "ValorAndHonor")
   StartConversation(conversation, NPC, Spawn, "Bringing due glory to the name of Marr, I will and do! Our creator hath given unto us the mind and brawn to defeat evil, and aid the helpless. His will be done, every moment, and every breath.")
end

function ValorAndHonor(NPC, Spawn)
   conversation = CreateConversation()

   AddConversationOption(conversation, "Is there trouble afoot?", "TroubleAfoot")
   StartConversation(conversation, NPC, Spawn, "Valor and honor above all else! I am bound by my word to await a message of great importance upon this spot.")
end

function TroubleAfoot(NPC, Spawn)
   conversation = CreateConversation()

   AddConversationOption(conversation, "He hath in the past? Doth thou have tales to regale me with?", "TalesToTell")
   AddConversationOption(conversation, "Thus is he deserving of our glory and praise. Need ye a hand to aid thee?", "OfferQuest1")
   AddConversationOption(conversation, "Thus is he deserving of our glory and praise. I bid you good day, until we meet again.")
   StartConversation(conversation, NPC, Spawn, "Pray tell! I know not, but am soon to find out. Marr will guide my sword when needed, as he hath done in the past.")
end

function TalesToTell(NPC, Spawn)
   conversation = CreateConversation()

   AddConversationOption(conversation, "Genocide was not to be our fate.", "GenocideNotFate")
   StartConversation(conversation, NPC, Spawn, "The Froglok has seen battles, to be sure. Long before this Froglok was tad or egg, we doth had a long standing war against the vile Ogres. Our beloved Gukta was overwhelmed as the first casualty of the expanding Rallosian Empire. Our people were almost completely wiped out by the onslaught.")
end

function GenocideNotFate(NPC, Spawn)
   conversation = CreateConversation()

   AddConversationOption(conversation, "Cowardice they were not.", "NotCowards")
   StartConversation(conversation, NPC, Spawn, "Indeed not. Overwhelmed and unable to defend their city, the survivors were forced to abandon Gukta. Refuge they sought in the lowest portions of the former citadel of Guk. Relentless, the Rallosians continued to pursue the Frogloks. Those that had survived feared dusk was upon them, but would not slacken.")
end

function NotCowards(NPC, Spawn)
   conversation = CreateConversation()

   AddConversationOption(conversation, "The green mist.", "TheGreenMist")
   StartConversation(conversation, NPC, Spawn, "Fought on they did, to protect the tads and maidens amongst them. Prayers to Marr did not go unanswered! Praised he was, by our peoples' determination and valor. He released upon the Ogres a deadly cloud to deliver us in our moment of most dire need.")
end

function TheGreenMist(NPC, Spawn)
   conversation = CreateConversation()

   AddConversationOption(conversation, "Then came the destruction that was the shattering, and the further shaterring of our people.", "ThenCameShattering")
   StartConversation(conversation, NPC, Spawn, "Aye. 'Twas rolling through the swamps and cities alike, smiting the Ogres. The rejoicing Frogloks were then able to reclaim Gukta.")
end

function ThenCameShattering(NPC, Spawn)
   conversation = CreateConversation()

   AddConversationOption(conversation, "Until recently?", "UntilRecently")
   StartConversation(conversation, NPC, Spawn, "Come it did, and many evils with it. Villainy is persistent! During the shattering, and until recently, the soul of the hateful Rallosian General Urduuk, would not rest. Unknown to anyone, he and his army were in a state of undeath, deep within the Cleft of Thuule. There they would stay to enslaves and torture any Froglok that ventured in.")
end

function UntilRecently(NPC, Spawn)
   conversation = CreateConversation()

   AddConversationOption(conversation, "Bloody and destructive the wars were, but delivered we were. Bless Marr!", "BlessMarr")
   StartConversation(conversation, NPC, Spawn, "Aye. For once this blasphemy and injustice was known, wave of mighty wave of adventures battled valiantly and defeated Urduuk's armies. I was amongst those that battled to release our brethren.")
end


function BlessMarr(NPC, Spawn)
   conversation = CreateConversation()

   AddConversationOption(conversation, "'Twould be my pleasure!", "OfferQuest1")
   AddConversationOption(conversation, "A mere pittance to repay ye for telling me of the tale. Where be this tavern?", "OfferQuest1")
   AddConversationOption(conversation, "A bit later, sir. I am on a quest myself, at this time.")
   StartConversation(conversation, NPC, Spawn, "Delivered we were, but not before many wrongs were dealt, and more to be fought there are. Mind ye go fetch a pint for me, and quench my thirst? Grown parched have I with the telling of this tale.")
end

function NeedHand(NPC, Spawn)
   conversation = CreateConversation()

   AddConversationOption(conversation, "'Twould be my pleasure!", "OfferQuest1")
   AddConversationOption(conversation, "A bit later, sir. I am on a quest myself, at this time.")
   StartConversation(conversation, NPC, Spawn, "'Tis no job for ye of such strength, but a job I have. Mind ye go fetch a pint for me, and quench my thirst? Grown parched have I.")
end

function OfferQuest1(NPC, Spawn)
   --OfferQuest(NPC, Spawn, 20)
   Say(NPC, "Can't quite finish this one yet.")
end
