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
		if getPlayerStorageValue(cid, 587423) > 0 then
			selfSay('Você já está me ajudando nessa jornada.', cid)
		return end
				
		
		
		if getPlayerLevel(cid) >= 250 then
			setPlayerStorageValue(cid, 587423, 1)
			selfSay('Obrigado por me ajudar {'..getPlayerName(cid)..'}, agora você tem que procurar Thorin, Rei dos Anões e continuar sua jornada.', cid)
			doSendMagicEffect(getPlayerPosition(cid), 29)
		else
			selfSay('Você precisa ser level 250 ou mais para me ajudar!', cid)
		end
	end
return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())