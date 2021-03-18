local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)

function getCombatFormulas(cid, lv, maglv)
local formula_min = ((lv*-2.3 + maglv*-2.5) * 1.8 - 500)
local formula_max = ((lv*-2.5 + maglv*-2.8) * 1.8 - 500)
if(formula_max < formula_min) then
local tmp = formula_max
formula_max = formula_min
formula_min = tmp
end
return formula_min, formula_max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "getCombatFormulas")

local area = createCombatArea(AREA_CROSS6X6)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end