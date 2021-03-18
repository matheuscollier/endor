local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, FALSE)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)


function getCombatFormulas(cid, lv, maglv)
local formula_min = ((lv*1.4 + maglv*1.4) * 1.8 + 250 )
local formula_max = ((lv*1.7 + maglv*1.7) * 1.8 + 250 )
if(formula_max < formula_min) then
local tmp = formula_max
formula_max = formula_min
formula_min = tmp
end
return formula_min, formula_max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "getCombatFormulas")


function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end
