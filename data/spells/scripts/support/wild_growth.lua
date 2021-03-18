local id = ITEM_WILDGROWTH
local combat = Combat()
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_EARTH)
combat:setParameter(COMBAT_PARAM_CREATEITEM, id)

function onCastSpell(creature, var, isHotkey)
	if creature:getStorageValue(Storage.events) == 7 then
		creature:sendCancelMessage("Você não pode utilizar esta magia neste evento.")
		creature:getPosition():sendMagicEffect(CONST_ME_POFF)
		return false
	else
		local c = combat:execute(creature, var)
		if c then
			local pos = variantToPosition(var)
			tile_timer(id, pos, 45, TEXTCOLOR_LIGHTGREEN)
		end
		return c
	end
end