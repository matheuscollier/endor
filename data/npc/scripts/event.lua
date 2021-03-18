local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then return false end
	local player = Player(cid)
	local msg = msg:lower()
	------------------------------------------------------------------
	if npcHandler.topic[cid] == 0 and (msgcontains(msg, "tokens") or msgcontains(msg, 'yes') or msgcontains(msg, 'sim')) then
		npcHandler:say("Você gostaria de negociar prêmios por {silver} tokens ou por {gold} tokens?", cid)
		npcHandler.topic[cid] = 1
	------------------------------------------------------------------
	elseif npcHandler.topic[cid] == 1 and msgcontains(msg, "silver") then
		local text = "Você pode escolher os seguintes prêmios para trocar por silver tokens:\n"
		local text1= "Por 3 Silver Tokens: 5 {Crystal Coins}.\n"
		local text2= "Por 9 Silver Tokens: 5 {Demon Horns}, 2 {Slime Hearts}, 5 {Polar Bear Paws}, 1 {Energy Vein}, 5 {Petrified Screams}.\n"
		local text3= "Por 18 Silver Tokens: {Vampirism} (25 Vampire Teeth, 15 Bloody Pincers, 5 Piece of Dead Brain), {Void} ( 25 Rope Belts, 25 Silencer Claws, 5 Some Grimeleech Wings), {Swiftness} (15 Damselfly Wings, 25 Compasses, 20 Waspoid Wings).\n"
		local text4= "Por 25 Silver Tokens: 2 {Prey Bonus Rerolls}\n"
		npcHandler:say(text .. text1 .. text2 .. text3 .. text4 .."Diga-me, qual você gostaria de obter?", cid)
		npcHandler.topic[cid] = 2
	elseif npcHandler.topic[cid] == 2 then
		if msgcontains(msg, "Crystal Coin") or msgcontains(msg, "Crystal Coins") or msgcontains(msg, "Crystal") or msgcontains(msg, "Coins") then
			if (getPlayerItemCount(cid,25172)) >= 3 then
				doPlayerRemoveItem(cid,25172,3)
				doPlayerAddItem(cid, 2160, 5)
				npcHandler:say("Aqui está. Foi um prazer fazer negócios com você!", cid)
				npcHandler:releaseFocus(cid)
			else
				npcHandler:say("Você não tem a quantia necessária de tokens para trocar por este prêmio.", cid)
			end
		elseif msgcontains(msg, "Demon Horns") or msgcontains(msg, "Demon Horn") then
			if (getPlayerItemCount(cid,25172)) >= 9 then
				doPlayerRemoveItem(cid,25172,9)
				doPlayerAddItem(cid, 5954, 5)
				npcHandler:say("Aqui está. Foi um prazer fazer negócios com você!", cid)
				npcHandler:releaseFocus(cid)
			else
				npcHandler:say("Você não tem a quantia necessária de tokens para trocar por este prêmio.", cid)
			end
		elseif msgcontains(msg, "Slime Hearts") or msgcontains(msg, "Slime Heart") then
			if (getPlayerItemCount(cid,25172)) >= 9 then
				doPlayerRemoveItem(cid,25172,9)
				doPlayerAddItem(cid, 23565, 2)
				npcHandler:say("Aqui está. Foi um prazer fazer negócios com você!", cid)
				npcHandler:releaseFocus(cid)
			else
				npcHandler:say("Você não tem a quantia necessária de tokens para trocar por este prêmio.", cid)
			end
		elseif msgcontains(msg, "Polar Bear Paws") or msgcontains(msg, "Polar Bear Paw") then
			if (getPlayerItemCount(cid,25172)) >= 9 then
				doPlayerRemoveItem(cid,25172,9)
				doPlayerAddItem(cid, 10567, 5)
				npcHandler:say("Aqui está. Foi um prazer fazer negócios com você!", cid)
				npcHandler:releaseFocus(cid)
			else
				npcHandler:say("Você não tem a quantia necessária de tokens para trocar por este prêmio.", cid)
			end
		elseif msgcontains(msg, "Energy Veins") or msgcontains(msg, "Energy Vein") then
			if (getPlayerItemCount(cid,25172)) >= 9 then
				doPlayerRemoveItem(cid,25172,9)
				doPlayerAddItem(cid, 26164, 1)
				npcHandler:say("Aqui está. Foi um prazer fazer negócios com você!", cid)
				npcHandler:releaseFocus(cid)
			else
				npcHandler:say("Você não tem a quantia necessária de tokens para trocar por este prêmio.", cid)
			end
		elseif msgcontains(msg, "Petrified Screams") or msgcontains(msg, "Petrified Scream") then
			if (getPlayerItemCount(cid,25172)) >= 9 then
				doPlayerRemoveItem(cid,25172,9)
				doPlayerAddItem(cid, 11337, 5)
				npcHandler:say("Aqui está. Foi um prazer fazer negócios com você!", cid)
				npcHandler:releaseFocus(cid)
			else
				npcHandler:say("Você não tem a quantia necessária de tokens para trocar por este prêmio.", cid)
			end
		elseif msgcontains(msg, "Vampirism") then
			if (getPlayerItemCount(cid,25172)) >= 18 then
				doPlayerRemoveItem(cid,25172,18)
				doPlayerAddItem(cid, 10602, 25)
				doPlayerAddItem(cid, 10550, 15)
				doPlayerAddItem(cid, 10580, 5)
				npcHandler:say("Aqui está. Foi um prazer fazer negócios com você!", cid)
				npcHandler:releaseFocus(cid)
			else
				npcHandler:say("Você não tem a quantia necessária de tokens para trocar por este prêmio.", cid)
			end
		elseif msgcontains(msg, "Void") then
			if (getPlayerItemCount(cid,25172)) >= 18 then
				doPlayerRemoveItem(cid,25172,18)
				doPlayerAddItem(cid, 12448, 25)
				doPlayerAddItem(cid, 22534, 25)
				doPlayerAddItem(cid, 25386, 5)
				npcHandler:say("Aqui está. Foi um prazer fazer negócios com você!", cid)
				npcHandler:releaseFocus(cid)
			else
				npcHandler:say("Você não tem a quantia necessária de tokens para trocar por este prêmio.", cid)
			end
		elseif msgcontains(msg, "Swiftness") then
			if (getPlayerItemCount(cid,25172)) >= 18 then
				doPlayerRemoveItem(cid,25172,18)
				doPlayerAddItem(cid, 19738, 15)
				doPlayerAddItem(cid, 11219, 25)
				doPlayerAddItem(cid, 15484, 20)
				npcHandler:say("Aqui está. Foi um prazer fazer negócios com você!", cid)
				npcHandler:releaseFocus(cid)
			else
				npcHandler:say("Você não tem a quantia necessária de tokens para trocar por este prêmio.", cid)	
			end
		elseif msgcontains(msg, "Prey") or msgcontains(msg, "Prey Bonus Rerolls") or msgcontains(msg, "Bonus Rerolls") then
			if (getPlayerItemCount(cid,25172)) >= 25 then
				doPlayerRemoveItem(cid,25172,25)
				player:addBonusReroll(2)
				npcHandler:say("Aqui está. Foi um prazer fazer negócios com você!", cid)
				npcHandler:releaseFocus(cid)
			else
				npcHandler:say("Você não tem a quantia necessária de tokens para trocar por este prêmio.", cid)	
			end		
		else
			npcHandler:say("Não tenho este item para negociar.", cid)
		end
	------------------------------------------------------------------
	elseif npcHandler.topic[cid] == 1 and msgcontains(msg, "gold") or msgcontains(msg, "golden") then
		local text = "Você pode escolher os seguintes prêmios para trocar por gold tokens:\n"
		local text1= "Por 3 Gold Tokens: Poção de {Refil de Stamina} (1 hora).\n"
		local text2= "Por 50 Gold Tokens: {Endor Boots} (bota especial de eventos).\n"
		local text3= "Por 150 Gold Tokens: {Festive Addon Full} (addon especial de eventos).\n"
		npcHandler:say(text .. text1 .. text2 .. text3 .."Diga-me, qual você gostaria de obter?", cid)
		npcHandler.topic[cid] = 3	
	elseif npcHandler.topic[cid] == 3 then
		if msgcontains(msg, "Refil de Stamina") or msgcontains(msg, "Refil") or msgcontains(msg, "Stamina") then
			if (getPlayerItemCount(cid,25377)) >= 3 then
				doPlayerRemoveItem(cid,25377,3)
				doPlayerAddItem(cid, 7439, 1)
				npcHandler:say("Aqui está. Foi um prazer fazer negócios com você!", cid)
				npcHandler:releaseFocus(cid)
			else
				npcHandler:say("Você não tem a quantia necessária de tokens para trocar por este prêmio.", cid)
			end
		elseif msgcontains(msg, "Bota") or msgcontains(msg, "Boots") or msgcontains(msg, "Endor Boots") then
			if (getPlayerItemCount(cid,25377)) >= 50 then
				doPlayerRemoveItem(cid,25377,50)
				doPlayerAddItem(cid, 26133, 1)
				npcHandler:say("Aqui está. Foi um prazer fazer negócios com você!", cid)
				npcHandler:releaseFocus(cid)
			else
				npcHandler:say("Você não tem a quantia necessária de tokens para trocar por este prêmio.", cid)
			end
		elseif msgcontains(msg, "Addon") or msgcontains(msg, "Festive Addon") or msgcontains(msg, "Festive") or msgcontains(msg, "Festive Addon Full") then
			if (getPlayerItemCount(cid,25377)) >= 150 then
				if player:hasOutfit(931) or player:hasOutfit(929) then
					npcHandler:say("Desculpe, mas você já possui esta roupa!", cid)
				else	
					doPlayerRemoveItem(cid,25377,150)
					player:addOutfitAddon(931, 3)
					player:addOutfitAddon(929, 3)
					npcHandler:say("Aqui está. Foi um prazer fazer negócios com você!", cid)
					npcHandler:releaseFocus(cid)
				end
			else
				npcHandler:say("Você não tem a quantia necessária de tokens para trocar por este prêmio.", cid)
			end
		else
			npcHandler:say("Não tenho este item para negociar.", cid)
		end
	------------------------------------------------------------------
	end
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)npcHandler:setMessage(MESSAGE_FAREWELL, 'Foi um prazer fazer negócios com você!')
npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())