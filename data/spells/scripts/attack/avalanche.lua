local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_ICEAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ICE)
local mage = {1, 2, 5, 6, 35, 43, 9, 10, 36, 44, 28, 29, 37, 45}

function getCombatFormulas(cid, lv, maglv, var)
	local player = Player(cid)
	local vocationId = player:getVocation():getId()
		if isInArray(mage, vocationId)  then
			local formula_min = ((lv*-0.2 + maglv*-1.2) * 2.0 - 20)
			local formula_max = ((lv*-0.2 + maglv*-1.5) * 2.0 - 25)
			if(formula_max < formula_min) then
			local tmp = formula_max
			formula_max = formula_min
			formula_min = tmp
			end
			return formula_min, formula_max	
		else
			local formula_min = ((lv*-0.2 + maglv*-1.2) * 1.8 - 20)
			local formula_max = ((lv*-0.2 + maglv*-1.5) * 1.8 - 25)	
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



local area = createCombatArea(AREA_CIRCLE3X3)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end