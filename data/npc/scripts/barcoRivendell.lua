
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
travelKeyword = keywordHandler:addKeyword({'Lorien'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voc� quer ir para o Lorien por 50?'})
	travelKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 50, destination = Position (1067, 860, 7) })
	travelKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'T� caro demais pra voc�?'})

travelKeyword = keywordHandler:addKeyword({'pantano'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voc� quer ir para o Pantano por 25?'})
	travelKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 25, destination = Position (1250, 1075, 7) })
	travelKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'T� caro demais pra voc�?'})
	
travelKeyword = keywordHandler:addKeyword({'dolguldur'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voc� quer ir para Dol\'Guldur por 55?'})
	travelKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 55, destination = Position (1162, 747, 7) })
	travelKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'T� caro demais pra voc�?'})

travelKeyword = keywordHandler:addKeyword({'grey'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voc� quer ir para Grey Mountains por 100?'})
	travelKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 100, destination = Position (1093, 339, 7) })
	travelKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'T� caro demais pra voc�?'})

travelKeyword = keywordHandler:addKeyword({'edoras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voc� quer ir para Edoras por 85 gp?'})
	travelKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 85, destination = Position (1037, 984, 7) })
	travelKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'T� caro demais pra voc�?.'})
	
travelKeyword = keywordHandler:addKeyword({'pirata'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voc� quer ir para a Ilha Pirata por 100?'})
	travelKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 100, destination = Position (580, 1157, 7) })
	travelKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'T� caro demais pra voc�?'})

travelKeyword = keywordHandler:addKeyword({'mordor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voc� quer ir para Mordor por 100?'})
	travelKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 100, destination = Position (1436, 1278, 7) })
	travelKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'T� caro demais pra voc�?'})
	
travelKeyword = keywordHandler:addKeyword({'dunedain'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voc� quer ir para Dunedain por 80?'})
	travelKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 100, destination = Position (1558, 458, 7) })
	travelKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'T� caro demais pra voc�?'})
	
keywordHandler:addKeyword({'ir'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Posso te levar para o {Pantano}, {Dol\'Guldur}, {Lorien}, {Grey Mountains}, {Edoras}, {Dunedain}, {Mordor} ou {Pirata} por uma pequena taxa.'})
keywordHandler:addKeyword({'travel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Posso te levar para o {Pantano}, {Dol\'Guldur}, {Lorien}, {Grey Mountains}, {Edoras}, {Dunedain}, {Mordor} ou {Pirata} por uma pequena taxa.'})
keywordHandler:addKeyword({'viajar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Posso te levar para o {Pantano}, {Dol\'Guldur}, {Lorien}, {Grey Mountains}, {Edoras}, {Dunedain}, {Mordor} ou {Pirata} por uma pequena taxa.'})

-- Makes sure the npc reacts when you say hi, bye etc.
npcHandler:addModule(FocusModule:new())

