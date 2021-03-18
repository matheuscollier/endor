local mType = Game.createMonsterType("Cerberus")
local monster = {}

monster.description = "Cerberus"
monster.experience = 650000
monster.outfit = {
	lookType = 240,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 80000
monster.maxHealth = 80000
monster.race = "undead"
monster.corpse = 6332
monster.speed = 360
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 8000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "I'll Let you know how deep Aqueronte can be", yell = false},
	{text = "Bring the money to pay Caronte!", yell = false}
}

monster.loot = {
	{id = 8906, chance = 850, unique = 1},
	{id = 7382, chance = 2500},
	{id = 7427, chance = 2500},
	{id = 7388, chance = 2500},
	{id = 8877, chance = 950, unique = 1},
	{id = 23810, chance = 950, unique = 1},
	{id = 6558, chance = 30000},
	{id = 8886, chance = 25000},
	{id = 2173, chance = 15000},
	{id = 6500, chance = 38000},
	{id = 2156, chance = 25000},
	{id = 5930, chance = 20000, maxCount = 9}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -280, maxDamage = -320},
	{name ="combat", interval = 2020, chance = 90, minDamage = -280, maxDamage = -400, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_DRAWBLOOD, condition = {type = CONDITION_POISON, startDamage = 50, interval = 4000}},
	{name ="combat", interval = 2040, chance = 80, minDamage = -360, maxDamage = -440, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_DRAWBLOOD, condition = {type = CONDITION_FIRE, startDamage = 0, interval = 9000}},
	{name ="combat", interval = 2350, chance = 75, minDamage = -400, maxDamage = -600, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = true},
	{name ="combat", interval = 2460, chance = 65, minDamage = -900, maxDamage = -1300, type = COMBAT_EARTHDAMAGE, length = 8, spread = 3, effect = CONST_ME_GREEN_RINGS, target = false},
	{name ="combat", interval = 2670, chance = 25, minDamage = -450, maxDamage = -600, type = COMBAT_DEATHDAMAGE, effect = CONST_ME_MORTAREA, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 1000, chance = 100, minDamage = 100, maxDamage = 200, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 90},
	{type = COMBAT_FIREDAMAGE, percent = 90},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = 90}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
