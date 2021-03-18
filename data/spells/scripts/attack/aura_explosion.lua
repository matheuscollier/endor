local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYHIT)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -0.85, 0, -1.1, 0)

function getCombatFormulas(cid, lv, maglv)
local formula_min = ((lv*-0.85 + maglv*-0.85) * 1.8 )
local formula_max = ((lv*-1.1 + maglv*-1.1) * 1.8 )
if(formula_max < formula_min) then
local tmp = formula_max
formula_max = formula_min
formula_min = tmp
end
return formula_min, formula_max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "getCombatFormulas")

local area = createCombatArea(AREA_CIRCLE3X3)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end