local taskSystem = CreatureEvent("taskSystem")

local config = {
    countForParty = true, -- a kill contara para todos os membros da party?
    maxDist = 7 -- se a distancia do player para o monstro for maior que esse valor, a task nao conta pra ele.
}


function taskSystem.onKill(player, creature, lastHit)
	if not player:isPlayer() or not creature:isMonster() or creature:hasBeenSummoned() or creature:isPlayer() then
		return true
	end
	
	local target = Monster(creature.uid)
    if type(target:getMaster()) ~= 'nil' then return true end

    local killers = {}
    local tpos = target:getPosition()
	
	local taskchannel = 13
	local taskchannelopen = 7007
	
	if config.countForParty then
        local party = player:getParty()
        if party and party:isSharedExperienceActive() and party:getMembers() then
            for i, creature in pairs(party:getMembers()) do
                local pos = creature:getPosition()
                if pos.z == tpos.z and pos:getDistance(tpos) <= config.maxDist then
                    killers[#killers + 1] = creature.uid
                end
            end
            local pos = party:getLeader():getPosition()
            if pos.z == tpos.z and pos:getDistance(tpos) <= config.maxDist then
                killers[#killers + 1] = party:getLeader().uid
            end
        else
            killers[1] = player.uid
        end
    else
        killers[1] = player.uid
    end

	 for i = 1, #killers do
        local player = Player(killers[i])
		if player:getTask() or player:getDailyTask() or player:getSpecialTask() then
			if player:getTask() then
				local task = player:getTask()
				if table.contains(task.monsters_list, creature:getName():lower()) and player:getStorageValue(task.storage) < task.amount then
					player:setStorageValue(task.storage, player:getStorageValue(task.storage) + 1)
					if taskchannelopen == 1 then
						player:sendChannelMessage("", "[Task Comum - System] Você matou ["..player:getStorageValue(task.storage).."/"..task.amount.."] "..creature:getName()..".", TALKTYPE_CHANNEL_O, taskchannel)
					else
						player:openChannel(13)
						player:sendChannelMessage("", "[Task Comum - System] Você matou ["..player:getStorageValue(task.storage).."/"..task.amount.."] "..creature:getName()..".", TALKTYPE_CHANNEL_O, taskchannel)
					end
				end
			end
			if player:getDailyTask() then
				local taskdaily = player:getDailyTask()
				if table.contains(taskdaily.monsters_list, creature:getName():lower()) and player:getStorageValue(taskdaily.storage) < taskdaily.amount then
					player:setStorageValue(taskdaily.storage, player:getStorageValue(taskdaily.storage) + 1)
					if taskchannelopen == 1 then
						player:sendChannelMessage("", "[Task Diária - System] Você matou ["..player:getStorageValue(taskdaily.storage).."/"..taskdaily.amount.."] "..creature:getName()..".", TALKTYPE_CHANNEL_O, taskchannel)
					else
						player:openChannel(13)
						player:sendChannelMessage("", "[Task Diária - System] Você matou ["..player:getStorageValue(taskdaily.storage).."/"..taskdaily.amount.."] "..creature:getName()..".", TALKTYPE_CHANNEL_O, taskchannel)
					end
				end
			end
			if player:getSpecialTask() then
				local task = player:getSpecialTask()
				if table.contains(task.monsters_list, creature:getName():lower()) and player:getStorageValue(task.storage) < task.amount then
					player:setStorageValue(task.storage, player:getStorageValue(task.storage) + 1)
					if taskchannelopen == 1 then
						player:sendChannelMessage("", "[Task Especial - System] Você matou ["..player:getStorageValue(task.storage).."/"..task.amount.."] "..creature:getName()..".", TALKTYPE_CHANNEL_O, taskchannel)
					else
						player:openChannel(13)
						player:sendChannelMessage("", "[Task Especial - System] Você matou ["..player:getStorageValue(task.storage).."/"..task.amount.."] "..creature:getName()..".", TALKTYPE_CHANNEL_O, taskchannel)
					end
				end
			end
		else
			return true
		end
	end

	return true
end
taskSystem:register()
