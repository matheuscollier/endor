local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)			npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)			npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()					npcHandler:onThink()					end

function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end

	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid



-- CONFIG --	
local player = Player(cid)
	if msgcontains(msg, 'yes') or msgcontains(msg, 'sim') then
		if getPlayerStorageValue(cid, 587423) <= 0 then
			selfSay('Você precisa falar com Gandalf, o Cinzento.', cid)
			return 
		end
			
		if getPlayerStorageValue(cid, 587427) <= 0 then
			selfSay('Você precisa falar com Thorin, Rei dos Anões.', cid)
			return 
		end
			
		if getPlayerStorageValue(cid, 587430) <= 0 then
			selfSay('Você precisa falar com Gandalf, o Branco.', cid)
			return 
		end
			
		if getPlayerStorageValue(cid, 587433) > 0 then
			selfSay('Você já fez sua parte, agora você já pode matar o maligno Maiar, Sauron. Aprenda Ueroknês, a língua dos Orcs, e viaje até as montanhas sombrias de Mordor para encontrá-lo!', cid)
			return 
		end
			
		if getPlayerStorageValue(cid, 587432) >  0 and  getPlayerItemCount(cid,22543) >= 1 then
			setPlayerStorageValue(cid, 587433, 1)
			setPlayerStorageValue(cid, 587434, 0)
			doPlayerRemoveItem(cid, 22543,1)
			selfSay('Muito obrigado, agora você pode finalmente derrotar o maligno Maiar, Sauron.', cid)
			return 
		end
			
		if getPlayerStorageValue(cid, 587432) > 0 then
			selfSay('Incrível, você derrotou o Gollum. Traga-me o Anel de Sauron que se encontrava com ele!', cid)
			return 
		end
			
		if getPlayerStorageValue(cid, 587431) > 0 then
			selfSay('Por favor Nobre guerreiro, mate o Gollum ao sudoeste de Edoras e pegue com ele o Anel de Sauron.', cid)
			return 
		end
				
		if getPlayerLevel(cid) >= 300 then
			setPlayerStorageValue(cid, 587431, 1)
			setPlayerStorageValue(cid, 587432, 0)
			selfSay('Obrigado. Vamos atrás daquele desprezível ladrão, o Gollum! Ouvi boatos de que ele estava escondido ao sudoeste da cidade de Edoras.', cid)
		else
			selfSay('Você precisa ser level 300 ou mais para me ajudar!', cid)
		end
	end
return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())