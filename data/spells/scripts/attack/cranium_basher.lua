local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, TRUE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_STUN)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_WEAPONTYPE)

function onGetFormulaValues(player, skill, attack, factor)
	local skillTotal = skill * attack
	local levelTotal = player:getLevel()
	return -(((skillTotal * 0.08) + 8) + (levelTotal)), -(((skillTotal * 0.09) + 12) + (levelTotal))
end

setCombatCallback(combat, CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

local condition = createConditionObject(CONDITION_PARALYZE)

setConditionParam(condition, CONDITION_PARAM_TICKS, 3000)
setConditionFormula(condition, -0.65, 0.6, -0.65, 0.6)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
