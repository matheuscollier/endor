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
	if msgcontains(msg, 'yes') then
		if getPlayerStorageValue(cid, 587432) >  0 and  getPlayerItemCount(cid,2091) >= 1 then
					selfSay('Ora ora, percorreu todo este caminho at� aqui? Gostaria de ser jovem novamente para viver todas estas aventuras. O seu destino final se encontra em algum lugar da Cidade dos Pesadelos. L� encontrar� aquilo que busca. Tome cuidado, ser� perigoso.', cid)
				else
					selfSay('� um neg�cio perigoso, jovem, sair da sua porta. Voc� pisa na estrada, e, se n�o controlar seus p�s, n�o h� como saber at� onde voc� pode ser levado. Volte aqui quando possuir a Chave e lhe direi aonde ir!', cid)
	
			end
	end
return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())