function onSpeak(player, type, message)
	local playerAccountType = player:getAccountType()
	if player then
	player:sendCancelMessage("Voce não pode falar neste canal.")
	return false
	end
	
	
	return false
end

function onJoin(player)

player:setStorageValue(7007, 1)
return true
end

function onLeave(player)

player:setStorageValue(7007, -1)
return true
end