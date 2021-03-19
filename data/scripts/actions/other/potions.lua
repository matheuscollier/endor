local berserk = Condition(CONDITION_ATTRIBUTES)
berserk:setParameter(CONDITION_PARAM_TICKS, 10 * 60 * 1000)
berserk:setParameter(CONDITION_PARAM_SKILL_MELEE, 5)
berserk:setParameter(CONDITION_PARAM_SKILL_SHIELD, -10)
berserk:setParameter(CONDITION_PARAM_BUFF_SPELL, true)

local mastermind = Condition(CONDITION_ATTRIBUTES)
mastermind:setParameter(CONDITION_PARAM_TICKS, 10 * 60 * 1000)
mastermind:setParameter(CONDITION_PARAM_STAT_MAGICPOINTS, 3)
mastermind:setParameter(CONDITION_PARAM_BUFF_SPELL, true)

local bullseye = Condition(CONDITION_ATTRIBUTES)
bullseye:setParameter(CONDITION_PARAM_TICKS, 10 * 60 * 1000)
bullseye:setParameter(CONDITION_PARAM_SKILL_DISTANCE, 5)
bullseye:setParameter(CONDITION_PARAM_SKILL_SHIELD, -10)
bullseye:setParameter(CONDITION_PARAM_BUFF_SPELL, true)

local antidote = Combat()
antidote:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
antidote:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
antidote:setParameter(COMBAT_PARAM_DISPEL, CONDITION_POISON)
antidote:setParameter(COMBAT_PARAM_AGGRESSIVE, false)
antidote:setParameter(COMBAT_PARAM_TARGETCASTERORTOPMOST, true)

local exhaust = Condition(CONDITION_EXHAUST_HEAL)
exhaust:setParameter(CONDITION_PARAM_TICKS, (configManager.getNumber(configKeys.EX_ACTIONS_DELAY_INTERVAL) - 1000))
-- 1000 - 100 due to exact condition timing. -100 doesn't hurt us, and players don't have reminding ~50ms exhaustion.

local function magicshield(player)
local condition = Condition(CONDITION_MANASHIELD)
condition:setParameter(CONDITION_PARAM_TICKS, 60000)
condition:setParameter(CONDITION_PARAM_MANASHIELD, math.min(player:getMaxMana(), 300 + 7.6 * player:getLevel() + 7 * player:getMagicLevel()))
player:addCondition(condition)
end

local potions = {
	[6558] = {
		transform = {
			id = {7589}
		},
		effect = CONST_ME_DRAWBLOOD
	},
	[7440] = {
		vocations = {9,36,28,37,10,44,29,45},
		condition = mastermind,
		effect = CONST_ME_MAGIC_BLUE,
		description = "Apenas magos e druidas de terceira classe ou acima podem tomar esta poção.",
		text = "Sua magia foi melhorada."
	},
	[7443] = {
		vocations = {12,25,33,26},
		condition = bullseye,
		effect = CONST_ME_MAGIC_GREEN,
		description = "Apenas arqueiros de terceira classe ou acima podem tomar esta poção.",
		text = "Sua precisão foi melhorada."
	},
	[7588] = {
		health = {
			250,
			350
		},
		vocations = {11,16,30,31},
		level = 101,
		flask = 7634,
		description = "Apenas guerreiros de level 101 ou maior podem tomar esta poção."
	},
	[7589] = {
		vocations = {7,24,12,25,33,26,5,35,9,36,28,37,6,43,10,44,29,45},
		mana = {
			200,
			320
		},
		level = 50,
		flask = 7634,
		description = "Apenas arqueiros, magos e druidas de level 50 ou maior podem beber este fluído."
	},
	[7590] = {
		mana = {
			450,
			540
		},
		vocations = {5,35,9,36,28,37,6,43,10,44,29,45},
		level = 80,
		flask = 7635,
		description = "Apenas magos e druidas de level 80 ou superior podem beber este fluído."
	},
	[7618] = {
		health = {
			125,
			175
		},
		flask = 7636
	},
	[7620] = {
		mana = {
			120,
			175
		},
		flask = 7636
	},
	[8472] = {
		health = {
			200,
			300
		},
		mana = {
			200,
			300
		},
		vocations = {3,7,12,13,32,33,23,24,25,26,27},
		level = 80,
		flask = 7635,
		description = "Somente arqueiros de level 80 ou maior podem beber este fluído."
	},
	[8474] = {
		combat = antidote,
		flask = 7636
	},
	[8704] = {
		health = {
			60,
			90
		},
		flask = 7636
	}
}

local flaskPotion = Action()

function flaskPotion.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if type(target) == "userdata" and not target:isPlayer() then
		return false
	end

	-- Delay potion
	if not playerDelayPotion[player:getId()] then
		playerDelayPotion[player:getId()] = 0
	end
	if playerDelayPotion[player:getId()] > os.mtime() then
		player:sendTextMessage(MESSAGE_FAILURE, Game.getReturnMessage(RETURNVALUE_YOUAREEXHAUSTED))
		return true
	end

	local potion = potions[item:getId()]
	if potion.level and player:getLevel() < potion.level or potion.vocations and not table.contains(potion.vocations, player:getVocation():getId()) and not (player:getGroup():getId() >= 2) then
		player:say(potion.description, TALKTYPE_MONSTER_SAY )
		return true
	end

	if player:getCondition(CONDITION_EXHAUST_HEAL) then
		player:sendTextMessage(MESSAGE_FAILURE, Game.getReturnMessage(RETURNVALUE_YOUAREEXHAUSTED))
		return true
	end

	if potion.health or potion.mana or potion.combat then
		if potion.health then
			doTargetCombatHealth(0, target, COMBAT_HEALING, potion.health[1], potion.health[2], CONST_ME_MAGIC_BLUE)
		end

		if potion.mana then
			doTargetCombatMana(0, target, potion.mana[1], potion.mana[2], CONST_ME_MAGIC_BLUE)
		end

		if potion.combat then
			potion.combat:execute(target, Variant(target:getId()))
		end
		
		target:say("Aaaah...", TALKTYPE_MONSTER_SAY )
		player:addItem(potion.flask, 1)
		player:addCondition(exhaust)
		player:setStorageValue(38412, player:getStorageValue(38412)+1)
	end

	-- Delay potion
	playerDelayPotion[player:getId()] = os.mtime() + 500
	
	if potion.func then
		potion.func(player)
		if potion.text then
			player:say(potion.text, TALKTYPE_MONSTER_SAY )
		end
		player:getPosition():sendMagicEffect(potion.effect)
	end

	if potion.condition then
		player:addCondition(potion.condition)
		player:say(potion.text, TALKTYPE_MONSTER_SAY )
		player:getPosition():sendMagicEffect(potion.effect)
	end

	if potion.transform then
		if item:getCount() >= 1 then
			item:remove(1)
			player:addItem(potion.transform.id[math.random(#potion.transform.id)], 1)
			item:getPosition():sendMagicEffect(potion.effect)
			return true
		end
	end

	if not configManager.getBoolean(configKeys.REMOVE_POTION_CHARGES) then
		return true
	end

	player:updateSupplyTracker(item)
	item:remove(1)
	return true
end

for index, value in pairs(potions) do
	flaskPotion:id(index)
end

flaskPotion:register()
