local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_HOLYAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -0.9, -10, -1.1, -20)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
