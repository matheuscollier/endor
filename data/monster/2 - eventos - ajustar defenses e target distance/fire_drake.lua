local mType = Game.createMonsterType("Fire Drake")
local monster = {}

monster.description = "um fire drake"
monster.experience = 120000
monster.outfit = {
	lookType = 39,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 20000
monster.maxHealth = 20000
monster.race = "blood"
monster.corpse = 2881
monster.speed = 200
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 10000,
	chance = 20
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
	{text = "Esta cidade vai queimar!", yell = true}
}

monster.loot = {
	{id = 2506, chance = 300},
	{id = 2469, chance = 500},
	{id = 2492, chance = 500},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2197, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2197, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2197, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2506, chance = 999999}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -450},
	{name ="combat", interval = 1800, chance = 35, minDamage = -290, maxDamage = -560, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="firefield", interval = 2400, chance = 20, range = 7, ShootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 1300, chance = 25, minDamage = -310, maxDamage = -470, type = COMBAT_FIREDAMAGE, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 500, chance = 100, minDamage = 50, maxDamage = 80, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 70},
	{type = COMBAT_ENERGYDAMAGE, percent = 65},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
	{type = COMBAT_FIREDAMAGE, percent = 99},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 40},
	{type = COMBAT_HOLYDAMAGE , percent = 50},
	{type = COMBAT_DEATHDAMAGE , percent = 60}
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
