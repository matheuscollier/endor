local LEVEL_LOWER = 1
local LEVEL_SAME = 2
local LEVEL_HIGHER = 3

local DISTANCE_BESIDE = 1
local DISTANCE_CLOSE = 2
local DISTANCE_FAR = 3
local DISTANCE_VERYFAR = 4

local directions = {
	[DIRECTION_NORTH] = "norte",
	[DIRECTION_SOUTH] = "sul",
	[DIRECTION_EAST] = "leste",
	[DIRECTION_WEST] = "oeste",
	[DIRECTION_NORTHEAST] = "nordeste",
	[DIRECTION_NORTHWEST] = "noroeste",
	[DIRECTION_SOUTHEAST] = "sudeste",
	[DIRECTION_SOUTHWEST] = "sudoeste"
}

local messages = {
	[DISTANCE_BESIDE] = {
		[LEVEL_LOWER] = " est� abaixo de voc�.",
		[LEVEL_SAME] = " est� ao seu lado.",
		[LEVEL_HIGHER] = " est� acima de voc�."
	},
	[DISTANCE_CLOSE] = {
		[LEVEL_LOWER] = " est� em um andar mais baixo ao ",
		[LEVEL_SAME] = " est� ao ",
		[LEVEL_HIGHER] = " est� em um andar mais alto ao "
	},
	[DISTANCE_FAR] = " est� longe ao ",
	[DISTANCE_VERYFAR] =  " est� muito longe ao "
}

function onCastSpell(creature, variant)
	local targetPlayer = Player(variant:getString())
	if not targetPlayer then
	creature:sendTextMessage(MESSAGE_STATUS_SMALL, "Nenhum jogador com este nome online.")
		return false
	end

	if targetPlayer:getGroup():getAccess() and not creature:getGroup():getAccess() then
		creature:sendCancelMessage(RETURNVALUE_PLAYERWITHTHISNAMEISNOTONLINE)
		creature:getPosition():sendMagicEffect(CONST_ME_POFF)
		return false
	end

	local playerPosition = creature:getPosition()
	local targetPosition = targetPlayer:getPosition()
	local offset = {
		x = playerPosition.x - targetPosition.x,
		y = playerPosition.y - targetPosition.y,
		z = playerPosition.z - targetPosition.z
	}

	local level = LEVEL_SAME
	if offset.z > 0 then
		level = LEVEL_HIGHER
	elseif offset.z < 0 then
		level = LEVEL_LOWER
	end

	local direction
	local distanceOutput = DISTANCE_VERYFAR
	if math.abs(offset.x) < 4 and math.abs(offset.y) < 4 then
		distanceOutput = DISTANCE_BESIDE
	else
		local distanceFormula = math.pow(offset.x, 2) + math.pow(offset.y, 2)
		if distanceFormula < 1000 then
			distanceOutput = DISTANCE_CLOSE
		elseif distanceFormula < math.pow(274, 2) then
			distanceOutput = DISTANCE_FAR
		end

		local distanceValue = offset.x ~= 0 and (offset.y / offset.x) or 10
		local absValue = math.abs(distanceValue)
		if absValue < 0.4142 then
			direction = offset.x > 0 and DIRECTION_WEST or DIRECTION_EAST
		elseif absValue < 2.4142 then
			if distanceValue > 0 then
				direction = offset.y > 0 and DIRECTION_NORTHWEST or DIRECTION_SOUTHEAST
			else
				direction = offset.x > 0 and DIRECTION_SOUTHWEST or DIRECTION_NORTHEAST
			end
		else
			direction = offset.y > 0 and DIRECTION_NORTH or DIRECTION_SOUTH
		end
	end

	local returnMessage = targetPlayer:getName()
	if distanceOutput == DISTANCE_BESIDE then
		returnMessage = returnMessage .. messages[distanceOutput][level]
	elseif distanceOutput == DISTANCE_CLOSE then
		returnMessage = returnMessage .. messages[distanceOutput][level] .. directions[direction] .. "."
	else
		returnMessage = returnMessage .. messages[distanceOutput] .. directions[direction] .. "."
	end

	creature:sendTextMessage(MESSAGE_LOOK, returnMessage)
	playerPosition:sendMagicEffect(CONST_ME_MAGIC_BLUE)
	return true
end
