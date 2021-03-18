local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
--setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, TRUE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)

function getSpellDamage(cid, weaponSkill, weaponAttack, attackStrength)

	local skill = getPlayerSkill(cid, 4)

	local maxWeaponDamage = 30 * skill * 0.06
	local damage = -((math.random(maxWeaponDamage/4,maxWeaponDamage)))

	return damage, damage --The random part of the formula has already been made, just return the normal damage
end

setCombatCallback(combat, CALLBACK_PARAM_SKILLVALUE, "getSpellDamage")

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
