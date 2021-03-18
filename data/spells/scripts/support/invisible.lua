local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, FALSE)

local condition = createConditionObject(CONDITION_INVISIBLE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 40000)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
	if cid:getStorageValue(Storage.events) > 0 then
		cid:sendCancelMessage("Você não pode ficar invisível no evento.")
		cid:getPosition():sendMagicEffect(CONST_ME_POFF)
		return false
	else
		return doCombat(cid, combat, var)
	end
end