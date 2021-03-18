local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)
local mage = {1, 2, 5, 6, 35, 43, 9, 10, 36, 44, 28, 29, 37, 45}

function getCombatFormulas(cid, lv, maglv, var)
	local player = Player(cid)
	local vocationId = player:getVocation():getId()
		if isInArray(mage, vocationId)  then
			local formula_min = ((lv*-1.2 + maglv*-2.8) * 1.8)
			local formula_max = ((lv*-1.5 + maglv*-3.0) * 1.8)
			if(formula_max < formula_min) then
			local tmp = formula_max
			formula_max = formula_min
			formula_min = tmp
			end
			return formula_min, formula_max	
		else
			local formula_min = ((lv*-1.2 + maglv*-2.8) * 1.6)
			local formula_max = ((lv*-1.5 + maglv*-3.0) * 1.6)	
			if(formula_max < formula_min) then
			local tmp = formula_max
			formula_max = formula_min
			formula_min = tmp
			end
			return formula_min, formula_max
		end

end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "getCombatFormulas")

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end