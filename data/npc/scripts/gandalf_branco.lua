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
			selfSay('Voc� ainda n�o ajudou Gandalf, o Cinzento, procure-o!', cid)
			return 
		end
			
		if getPlayerStorageValue(cid, 587427) <= 0 then
			selfSay('Voc� ainda n�o ajdou Thorin, Rei dos An�es, procure-o!', cid)
			return 
		end
			
		if getPlayerStorageValue(cid, 587430) > 0 and getPlayerStorageValue(cid, 587431) < 0 then
			setPlayerStorageValue(cid, 587431, 0)
			selfSay('Muito bem, guerreiro! Voc� foi exemplar. Agora deve procurar o hobbit Frodo, ele lhe ajudar� a prosseguir com sua miss�o!', cid)
			return 
		end
			
		if getPlayerStorageValue(cid, 587430) > 0 then
			selfSay('Voc� j� fez sua parte, agora procure Frodo, ele lhe guiar�!', cid)
			return 
		end
			
		if getPlayerStorageValue(cid, 587429) > 0  then
			selfSay('Voc� precisa matar o Mago Branco, Saruman.', cid)
			return 
		end
					
		
		if getPlayerLevel(cid) >= 250 then
			setPlayerStorageValue(cid, 587429, 1)
			setPlayerStorageValue(cid, 587430, 0)
			selfSay('Preciso que voc� me ajude a derrotar o Mago Branco, Saruman!.', cid)
		else
			selfSay('Voc� precisa ser level 250 ou mais para me ajudar!', cid)
		end
	end
return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())