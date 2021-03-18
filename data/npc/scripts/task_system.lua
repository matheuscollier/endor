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
	if npcHandler.topic[cid] == 0 and (msgcontains(msg, "task") or msgcontains(msg, 'mission') or msgcontains(msg, 'tasks')) then
		if player:getTask() or player:getDailyTask() or player:getSpecialTask() then
			if player:getTask() then
				local task = player:getTask()
				if player:getStorageValue(task.storage) == task.amount then
					player:taskReward(task.pointsTask, task.items, task.exp, task.storage, task_current)
					npcHandler:say("Parabéns, você finalizou a task que lhe foi dada. Aqui está a sua recompensa", cid) -- problema
					player:setStorageValue(task.storage, task.amount + 1)
					npcHandler:releaseFocus(cid)
					return false
				end
			end
			if player:getDailyTask() then
				local task = player:getDailyTask()
				if player:getStorageValue(task.storage) == task.amount then
					player:taskReward(task.pointsTask, task.items, task.exp, task.storage, task_daily_current)
					player:setStorageValue(task_daily_time, 1 * 60 * 60 * 24 + os.time())
					npcHandler:say("Parabéns, você finalizou a task diária que lhe foi dada. Aqui está a sua recompensa", cid) -- problema
					npcHandler:releaseFocus(cid)
					return false
				end
			end
			if player:getSpecialTask() then
				local task = player:getSpecialTask()
				if player:getStorageValue(task.storage) == task.amount then
					player:taskReward(task.pointsTask, task.items, task.exp, task.storage, task_special_current)
					npcHandler:say("Parabéns, você finalizou a task especial que lhe foi dada. Aqui está a sua recompensa", cid) -- problema
					player:setStorageValue(task.storage, task.amount + 1)
					npcHandler:releaseFocus(cid)
					return false
				end
			end
		end
		
		npcHandler:say("Você gostaria de fazer uma {task comum}, uma {daily task} ou uma {task especial}? Ou você gostaria de {quitar} de uma task que está fazendo atualmente?", cid)
		npcHandler.topic[cid] = 1
	------------------------------------------------------------------
	elseif npcHandler.topic[cid] == 1 and msgcontains(msg, "task comum") then
		if player:getStorageValue(task_delay) < os.time() then
			if player:getStorageValue(task_current) <= 0 then
				local text = "Você pode escolher entre as seguintes tasks:"
				for _, task in pairs(task_monsters) do
					text = text .." {"..task.name.."},"
				end
				npcHandler:say(text.." diga-me, qual você gostaria de fazer?", cid)
				npcHandler.topic[cid] = 2
			else
				npcHandler:say("Você ja esta fazendo uma task. Você pode fazer apenas uma task por vez. Diga {!task} para ver informações sobre sua task atual. Ou use {quitar} para cancelar a task atual.", cid)
			end
		else
			npcHandler:say("Eu não posso lhe dar novas missoes porque você acabou de abandonar a missão anterior. Espere o tempo delay de 5 minutos por favor.", cid)
		end	
	elseif npcHandler.topic[cid] == 2 then
		for task_number, task in pairs(task_monsters) do 
			if msg == task.name then
				if player:getStorageValue(task.storage) <= task.amount then
					npcHandler:say("Muito bem, agora você está fazendo a task de {"..task.name:gsub("^%l", string.upper).."}, você precisa matar "..task.amount .." deles. Boa sorte!", cid)
					player:setStorageValue(task_current, task_number)

					npcHandler:releaseFocus(cid)
					break
				else
					npcHandler:say("Desculpe. Você já fez esta task, por favor escolha outra.", cid)
					break
				end
			else
				npcHandler:say("Perdão, nós não temos esta task.", cid)
			end
		end
	------------------------------------------------------------------
	elseif npcHandler.topic[cid] == 1 and msgcontains(msg, "daily task") then
		if player:getStorageValue(task_daily_time) < os.time() then
			if player:getStorageValue(task_delay) < os.time() then
				if player:getStorageValue(task_daily_current) <= 0 then
					local rand = math.random (1, 20)
					for task_number, task in pairs(task_daily) do
						if rand == task_number then
						npcHandler:say("Muito bem, agora você está fazendo a daily task de {"..task.name:gsub("^%l", string.upper).."}, você precisa matar "..task.amount.." deles. Boa sorte!", cid)
						player:setStorageValue(task_daily_current, task_number)
						npcHandler:releaseFocus(cid)
						break
						end
					end
				else
				npcHandler:say("Você já está fazendo uma daily task. Você pode fazer apenas uma task por vez. Diga {!task} para ver informações sobre sua task atual. Ou use {quitar} para cancelar a daily task atual.", cid)
				end
			else
				npcHandler:say("Eu não posso lhe dar novas missoes porque você acabou de abandonar a missão anterior. Espere o tempo delay de 5 minutos por favor.", cid)
			end
		else
			npcHandler:say("Você completou a daily task de hoje, espere 24 horas para fazer outra.", cid)
		end
	------------------------------------------------------------------
	
	elseif npcHandler.topic[cid] == 1 and msgcontains(msg, "task especial") then
		if player:getTaskPoints() >= 101 then
			if player:getStorageValue(task_delay) < os.time() then
				if player:getStorageValue(task_especial_current) <= 0 then
					local text = "Você pode escolher uma dentre as seguintes tasks especiais:"
					for _, task in pairs(task_especial) do
						text = text .." {"..task.name.."},"
					end
					npcHandler:say(text.." diga-me, qual você gostaria de fazer?", cid)
					npcHandler.topic[cid] = 5
				else
					npcHandler:say("Você ja esta fazendo uma task especial. Você pode fazer apenas uma task por vez. Diga {!task} para ver informações sobre sua task atual. Ou use {quitar} para cancelar a task especial atual.", cid)
				end
			else
				npcHandler:say("Eu não posso lhe dar novas missões porque você acabou de abandonar a missao anterior. Espere o tempo delay de 5 minutos por favor.", cid)
			end
		else
			npcHandler:say("Você precisa ser ao menos ranking explorer para fazer uma task especial.", cid)
		end

	elseif npcHandler.topic[cid] == 5 then
		for task_number, task in pairs(task_especial) do 
			if msg == task.name then
				if player:getStorageValue(task.storage) <= task.amount then
					npcHandler:say("Muito bem, agora você está fazendo a task especial de {"..task.name:gsub("^%l", string.upper).."}, você precisa matar "..task.amount.." deles. Boa sorte!", cid)
					player:setStorageValue(task_especial_current, task_number)
					player:setStorageValue(task.storage, 0)
					npcHandler:releaseFocus(cid)
					break
				else
					npcHandler:say("Desculpe. Você já fez esta task especial, por favor escolha outra.", cid)
				end
			else
				npcHandler:say("Perdão, nós não temos esta task especial.", cid)
			end
		end
	------------------------------------------------------------------
	
	elseif msgcontains(msg, "quitar") then
		if npcHandler.topic[cid] == 1 then
			npcHandler:say("De qual tipo de task você gostaria de quitar, {task comum}, {daily task} ou {task especial}? Lembre-se que ao quitar de uma daily task ou de uma task especial, seu progresso atual é perdido. Se não deseja quitar de uma task, diga {bye}.", cid)
			npcHandler.topic[cid] = 4
		end
		
	elseif npcHandler.topic[cid] == 4 and msgcontains(msg, "task comum") then
		if player:getTask() then
			npcHandler:say("Uma pena, tive esperanças de que você fosse ser bem sucedido nesta missao, mas vejo que estava errado. Espere 5 minutos antes de escolher outra task, por favor.", cid)
			player:setStorageValue(task_delay, os.time() + task_time * 60)
			player:setStorageValue(task_current, 0)
			npcHandler:releaseFocus(cid)
		else
			npcHandler:say("Você não está fazendo nenhuma task para que possa quitar dela.", cid)
		end
		
	elseif npcHandler.topic[cid] == 4 and msgcontains(msg, "daily task") then
		if player:getDailyTask() then
			npcHandler:say("Uma pena, tive esperancas de que você fosse ser bem sucedido nesta missao, mas vejo que estava errado. Espere 5 minutos antes de escolher outra task, por favor.", cid)
			player:setStorageValue(task_delay, os.time() + task_time * 60)
			player:setStorageValue(player:getDailyTask().storage, 0)
			player:setStorageValue(task_daily_current, 0)
			npcHandler:releaseFocus(cid)
		else
			npcHandler:say("Você não está fazendo nenhuma task para que possa quitar dela.", cid)
		end
		
	elseif npcHandler.topic[cid] == 4 and msgcontains(msg, "task especial") then
		if player:getDailyTask() then
			npcHandler:say("Uma pena, tive esperancas de que você fosse ser bem sucedido nesta missao, mas vejo que estava errado. Espere 5 minutos antes de escolher outra task, por favor.", cid)
			player:setStorageValue(task_delay, os.time() + task_time * 60)
			player:setStorageValue(player:getSpecialTask().storage, 0)
			player:setStorageValue(task_especial_current, 0)
			npcHandler:releaseFocus(cid)
		else
			npcHandler:say("Você não está fazendo nenhuma task para que possa quitar dela.", cid)
		end
	end
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)npcHandler:setMessage(MESSAGE_FAREWELL, 'Boa cacada, jovem gafanhoto!')
npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())