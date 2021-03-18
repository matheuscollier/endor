
local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


-- OTServ event handling functions start
function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)      npcHandler:onCreatureSay(cid, type, msg) end
function onThink()                          npcHandler:onThink() end
-- OTServ event handling functions end

local travelNode = {}

-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
travelKeyword = keywordHandler:addKeyword({'iceland'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Você quer ir para Iceland por 300?'})
	travelKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 300, destination = Position (563, 33, 7) })
	travelKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tá caro demais pra você?'})

travelKeyword = keywordHandler:addKeyword({'winterland'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Você quer ir para Winterland por 150?'})
	travelKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 150, destination = Position (1149, 95, 7) })
	travelKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tá caro demais pra você?'})


	
travelKeyword = keywordHandler:addKeyword({'travel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Posso te levar para {Iceland} ou {Winterland} por uma pequena taxa.'})
travelKeyword = keywordHandler:addKeyword({'ir'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Posso te levar para {Iceland} ou {Winterland} por uma pequena taxa.'})
travelKeyword = keywordHandler:addKeyword({'viajar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Posso te levar para {Iceland} ou {Winterland} por uma pequena taxa.'})



-- Makes sure the npc reacts when you say hi, bye etc.
npcHandler:addModule(FocusModule:new())
