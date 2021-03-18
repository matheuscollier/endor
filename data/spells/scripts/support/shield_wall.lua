local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 8)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)

local condition = createConditionObject(CONDITION_ATTRIBUTES)

setConditionParam(condition, CONDITION_PARAM_SKILL_SHIELDPERCENT,100 + 30)
setConditionParam(condition, CONDITION_PARAM_TICKS, 40000)
condition:setParameter(CONDITION_PARAM_BUFF_SPELL, true)
setCombatCondition(combat, condition)



function onCastSpell(cid, var)
     doCreatureSay(cid,"Hooooold!!", TALKTYPE_ORANGE_1)  
     return doCombat(cid, combat, var)
end
