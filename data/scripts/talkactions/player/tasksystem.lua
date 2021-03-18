local taskSystem = TalkAction("!task")
function taskSystem.onSay(player, words, param)
	local text = '--------------------------------|    Tasks System Infos    |--------------------------------\n\n'
	if player:getTaskPoints() > 0 then
		text = text .. '* Você tem '..player:getTaskPoints()..' task points. Seu task ranking atual é: '..player:rankTask()..'.'
	end
	

	if player:getTask() then
		local task = player:getTask()
		local cache = ' '
		local i = task.monsters_list
		for _, monster in ipairs(i) do
			cache = cache .. monster .. ", "
		end
		text = text .. '\n\n\n ---------------------|      Task Comum      |--------------------- \n\nTask Atual: '..task.name..'   -   Você precisa matar um total de: '..task.amount..'.\nMonstros: '..cache:sub(1, -3)..'.\nRecompensas: '..getItemsFromTable(task.items)..' - '..task.exp..' Experience - '..task.pointsTask..' Task Points. \nProgresso: ['..player:getStorageValue(task.storage)..'/'..task.amount..']\nTask Status: '..(player:getStorageValue(task.storage) == task.amount and 'Completed' or 'Incomplete')..'!'			
	else
		text = text .. '\n\n\n ---------------------|      Task Comum      |--------------------- \n\n *Você não esta fazendo nenhuma task comum.'
	end

	if player:getDailyTask() then
		local task = player:getDailyTask()
		local cache = ' '
		local i = task.monsters_list
		for _, monster in ipairs(i) do
			cache = cache .. monster .. ", "
		end
		text = text .. '\n\n\n ---------------------|       Task Diária       |--------------------- \n\nTask Atual: '..task.name..'   -   Você precisa matar um total de: '..task.amount..'.\nMonstros: '..cache:sub(1, -3)..'.\nRecompensas: '..getItemsFromTable(task.items)..' - '..task.exp..' Experience - '..task.pointsTask..' Task Points. \nProgresso: ['..(player:getStorageValue(task.storage))..'/'..task.amount..']\nTask Status: '..(player:getStorageValue(task.storage) == task.amount and 'Completed' or 'Incomplete')..'!'			
	else
		text = text .. '\n\n\n ---------------------|       Task Diária       |--------------------- \n\n *Você não esta fazendo nenhuma task diária.'
	end
	
	if player:getSpecialTask() then
		local task = player:getSpecialTask()
		local cache = ' '
		local i = task.monsters_list
		for _, monster in ipairs(i) do
			cache = cache .. monster .. ", "
		end
		text = text .. '\n\n\n ---------------------|      Task Especial     |--------------------- \n\nTask Atual: '..task.name..'   -   Você precisa matar um total de: '..task.amount..'.\nMonstros: '..cache:sub(1, -3)..'.\nRecompensas: '..getItemsFromTable(task.items)..' - '..task.exp..' Experience - '..task.pointsTask..' Task Points. \nProgresso: ['..(player:getStorageValue(task.storage))..'/'..task.amount..']\nTask Status: '..(player:getStorageValue(task.storage) == task.amount and 'Completed' or 'Incomplete')..'!'			
	else
		text = text .. '\n\n\n ---------------------|      Task Especial     |--------------------- \n\n *Você não esta fazendo nenhuma task especial.'
	end 

	return false,  player:popupFYI(text)
end

taskSystem:register()