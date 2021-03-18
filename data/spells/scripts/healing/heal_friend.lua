


local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, 0)


function onGetFormulaValues(player, level, maglevel)
	local min = ((level*1.8) + (maglevel *1.8) * 1.8) + 60
	local max = ((level*2.0) + (maglevel *2.0) * 1.8) + 80
	return min, max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(creature, var)
	return combat:execute(creature, var)
end