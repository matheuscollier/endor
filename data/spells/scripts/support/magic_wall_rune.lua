local id = ITEM_MAGICWALL
local combat = Combat()
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
combat:setParameter(COMBAT_PARAM_CREATEITEM, id)

function tile_timer(id, pos, delay, color)
	if getTileItemById(pos, id).uid == 0 then
		return true
	end
	
	if delay ~= 1 then
		addEvent(tile_timer, 1000, id, pos, delay - 1, color)
	end
   
	local people = Game.getSpectators(pos, 7, 7, 5, 5, false, true)
	if not people then
		return true
	end
	
	for i = 1, #people do
		people[i]:sendTextMessage(MESSAGE_EXPERIENCE, "This wall will disappear in " .. delay .. " second" .. (delay > 1 and "s" or "") .. ".", pos, delay, color)
	end
end

function onCastSpell(creature, var, isHotkey)
	if creature:getStorageValue(Storage.events) == 7 then
		creature:sendCancelMessage("Voc� n�o pode utilizar esta runa neste evento.")
		creature:getPosition():sendMagicEffect(CONST_ME_POFF)
		return false
	else
		local c = combat:execute(creature, var)
		if c then
			local pos = variantToPosition(var)
			tile_timer(id, pos, 20, TEXTCOLOR_LIGHTBLUE)
		end
		return c
	end
end