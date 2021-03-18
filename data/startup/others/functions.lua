-- These functions load the action/unique tables on the map
-- Functions that cannot be used in reload command, so they have been moved here
-- Prey slots consumption
function preyTimeLeft(player, slot)
	local timeLeft = player:getPreyTimeLeft(slot) / 60
	local monster = player:getPreyCurrentMonster(slot)
	if (timeLeft >= 1) then
		local playerId = player:getId()
		local currentTime = os.time()
		local timePassed = currentTime - nextPreyTime[playerId][slot]
		
		-- Setting new timeleft
		if timePassed >= 59 then
			timeLeft = timeLeft - 1
			nextPreyTime[playerId][slot] = currentTime + 60
		end

		-- Sending new timeLeft
		player:setPreyTimeLeft(slot, timeLeft * 60)
	else
		-- Performing automatic Bonus/LockPrey actions
		if player:getPreyTick(slot) == 1 then
			player:setAutomaticBonus(slot)
			player:sendPreyData(slot)
			return true
		elseif player:getPreyTick(slot) == 2 then
			player:setAutomaticBonus(slot)
			player:sendPreyData(slot)
			return true
		end	
		
		-- Expiring prey as there's no timeLeft
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format("Your %s's prey has expired.", monster:lower()))
		player:setPreyCurrentMonster(slot, "")
	end

	return player:sendPreyData(slot)
end
