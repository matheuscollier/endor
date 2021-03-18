local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, FALSE)

function onCastSpell(cid, var)
    doCreatureAddHealth(cid, (getCreatureMaxHealth(cid) - getCreatureHealth(cid))/2)
    return doCombat(cid, combat, var)
end