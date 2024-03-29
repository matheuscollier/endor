local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, FALSE)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, TRUE)

function getCombatFormulas(cid, lv, maglv)
local formula_min = ((lv*0.5 + maglv*0.5) * 1.8 + 100)
local formula_max = ((lv*0.9 + maglv*0.9) * 1.8 + 100)
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
