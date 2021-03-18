local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)			npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)			npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()					npcHandler:onThink()					end

local function releasePlayer(cid)
	if not Player(cid) then
		return
	end

	npcHandler:releaseFocus(cid)
	npcHandler:resetNpc(cid)
end

function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end

	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

-- CONFIG --	
local gold = {
p1 = 10000, -- Preço em Gold 1 ao 100
p2 = 35000, -- Preço em Gold 101 ao 150
p3 = 50000, -- Preço em Gold 151 ao 200
p4 = 75000, -- Preço em Gold 201 ao 250
p5 = 90000, -- Preço em Gold 251 ao 299
p6 = 120000 -- Preço em Gold 300 em diante
}
-- CONFIG --	
local player = Player(cid)
local cost = getBlessingsCost(player:getLevel())
	if msgcontains(msg, 'valor') then
		doPlayerPopupFYI(cid, "Preço benção:\n\nLeve 1 ao 100: "..gold.p1.." gp\nLeve 101 ao 150: "..gold.p2.." gp\nLeve 151 ao 200: "..gold.p3.." gp\nLeve 201 ao 250: "..gold.p4.." gp\nLeve 251 ao 299: "..gold.p5.." gp\nLeve 300 em diante: "..gold.p6.." gp")
	end
	if msgcontains(msg, 'bless') then
		if getPlayerBlessing(cid, 5) then
			selfSay('Voce ja foi abencoado pelo Senhor!', cid)
		return end
		
			if getPlayerLevel(cid) >= 1 and getPlayerLevel(cid) <= 100 then
				if player:removeMoneyNpc(gold.p1) then
				for i = 1, 6 do
					player:addBlessing(i, 1)
				end
				player:getPosition():sendMagicEffect(CONST_ME_HOLYAREA)
				npcHandler:say('Voce foi abencoado!', cid)
				releasePlayer(cid)
				else
				npcHandler:say('Voce nao tem esse dinheiro!', cid)
				npcHandler.topic[cid] = 1
			end

			elseif getPlayerLevel(cid) >= 101 and getPlayerLevel(cid) <= 150 then
				if player:removeMoneyNpc(gold.p2) then
				for i = 1, 6 do
					player:addBlessing(i, 1)
				end
				player:getPosition():sendMagicEffect(CONST_ME_HOLYAREA)
				npcHandler:say('Voce foi abencoado!', cid)
				releasePlayer(cid)
				else
				npcHandler:say('Voce nao tem esse dinheiro!', cid)
				npcHandler.topic[cid] = 1
			end

			elseif getPlayerLevel(cid) >= 151 and getPlayerLevel(cid) <= 200 then
				if player:removeMoneyNpc(gold.p3) then
				for i = 1, 6 do
					player:addBlessing(i, 1)
				end
				player:getPosition():sendMagicEffect(CONST_ME_HOLYAREA)
				npcHandler:say('Voce foi abencoado!', cid)
				releasePlayer(cid)
				else
				npcHandler:say('Voce nao tem esse dinheiro!', cid)
				npcHandler.topic[cid] = 1
			end

			elseif getPlayerLevel(cid) >= 201 and getPlayerLevel(cid) <= 250 then
				if player:removeMoneyNpc(gold.p4) then
				for i = 1, 6 do
					player:addBlessing(i, 1)
				end
				player:getPosition():sendMagicEffect(CONST_ME_HOLYAREA)
				npcHandler:say('Voce foi abencoado!', cid)
				releasePlayer(cid)
				else
				npcHandler:say('Voce nao tem esse dinheiro!', cid)
				npcHandler.topic[cid] = 1
			end

			elseif getPlayerLevel(cid) >= 251 and getPlayerLevel(cid) <= 299 then
				if player:removeMoneyNpc(gold.p5) then
				for i = 1, 6 do
					player:addBlessing(i, 1)
				end
				player:getPosition():sendMagicEffect(CONST_ME_HOLYAREA)
				npcHandler:say('Voce foi abencoado!', cid)
				releasePlayer(cid)
				else
				npcHandler:say('Voce nao tem esse dinheiro!', cid)
				npcHandler.topic[cid] = 1
			end

			elseif getPlayerLevel(cid) >= 300 then
				if player:removeMoneyNpc(gold.p6) then
				for i = 1, 6 do
					player:addBlessing(i, 1)
				end
				player:getPosition():sendMagicEffect(CONST_ME_HOLYAREA)
				npcHandler:say('Voce foi abencoado!', cid)
				releasePlayer(cid)
				else
				npcHandler:say('Voce nao tem esse dinheiro!', cid)
				npcHandler.topic[cid] = 1
			end				
			end
	end
return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())