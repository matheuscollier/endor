local info = TalkAction("/info")

function info.onSay(player, words, param)
	local target = Player(param)
	if not target then
		player:sendCancelMessage("Player not found.")
		return false
	end

	if not player:getGroup():getAccess() or player:getAccountType() < ACCOUNT_TYPE_GOD then
		return true
	end

	if param == "" then
		player:sendCancelMessage("Command param required.")
		return false
	end

	local targetIp = target:getIp()
	player:sendTextMessage(MESSAGE_ADMINISTRADOR, "Name: " .. target:getName())
	player:sendTextMessage(MESSAGE_ADMINISTRADOR, "Access: " .. (target:getGroup():getAccess() and "1" or "0"))
	player:sendTextMessage(MESSAGE_ADMINISTRADOR, "Level: " .. target:getLevel())
	player:sendTextMessage(MESSAGE_ADMINISTRADOR, "Magic Level: " .. target:getMagicLevel())
	player:sendTextMessage(MESSAGE_ADMINISTRADOR, "Speed: " .. target:getSpeed())
	player:sendTextMessage(MESSAGE_ADMINISTRADOR, "Position: " .. string.format("(%0.5d / %0.5d / %0.3d)", target:getPosition().x, target:getPosition().y, target:getPosition().z))
	player:sendTextMessage(MESSAGE_ADMINISTRADOR, "IP: " .. Game.convertIpToString(targetIp))

	local players = {}
	for _, targetPlayer in ipairs(Game.getPlayers()) do
		if targetPlayer:getIp() == targetIp and targetPlayer ~= target then
			players[#players + 1] = targetPlayer:getName() .. " [" .. targetPlayer:getLevel() .. "]"
		end
	end

	if #players > 0 then
		player:sendTextMessage(MESSAGE_ADMINISTRADOR, "Other players on same IP: " .. table.concat(players, ", ") .. ".")
	end
	return false
end

info:separator(" ")
info:register()
