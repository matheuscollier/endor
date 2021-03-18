local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_STONES)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)

local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_STAT_MAXHITPOINTSPERCENT, 60)
setConditionParam(condition, CONDITION_PARAM_SKILL_AXE, 40)
setConditionParam(condition, CONDITION_PARAM_SKILL_CLUB,40)
setConditionParam(condition, CONDITION_PARAM_SKILL_SWORD,40)
setConditionParam(condition, CONDITION_PARAM_TICKS, 40000)
condition:setParameter(CONDITION_PARAM_BUFF_SPELL, true)
setCombatCondition(combat, condition)



function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
