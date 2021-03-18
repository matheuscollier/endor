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
			selfSay('Primeiro, você precisa falar com Gandalf, o Cinzento.', cid)
			return 
		end
		
		if getPlayerStorageValue(cid, 587427) >  0 and  getPlayerItemCount(cid,24850) >= 1 then
			selfSay('Obrigado por devolver o bem mais precioso do meu povo, a Pedra de Arken. Retorne para Gandalf, o Branco, e ele lhe dará novos direcionamentos!', cid)
			doPlayerRemoveItem(cid, 24850,1)
			setPlayerStorageValue(cid, 587428, 1)
			setPlayerStorageValue(cid, 587429, 0)
			return 
		end
		
		if getPlayerStorageValue(cid, 587428) > 0 then
			selfSay('Você já fez sua parte, agora procure Gandalf, o Branco.', cid)
			return 
		end
			
		if getPlayerStorageValue(cid, 587427) > 0 then
			selfSay('Incrível, você matou o Smaug! Agora por favor, ajude-me a encontrar a Pedra de Arken, escondida nos tesouros da montanha.', cid)
			return 
		end
			
		if getPlayerStorageValue(cid, 587426) > 0 then
			selfSay('Você já está nessa missão meu nobre guerreiro.', cid)
			return 
		end
				
		if getPlayerLevel(cid) >= 250 then
			setPlayerStorageValue(cid, 587426, 1)
			selfSay('Muito bem meu nobre, vamos combater aquele desprezível dragão!', cid)
		else
			selfSay('Você precisa ser level 250 ou mais para me ajudar!', cid)
		end
	end
return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())