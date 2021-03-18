local mType = Game.createMonsterType("Zamulosh")
local monster = {}

monster.description = "um zamulosh"
monster.experience = 650000
monster.outfit = {
	lookType = 862,
	lookHead = 16,
	lookBody = 12,
	lookLegs = 73,
	lookFeet = 55,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 250000
monster.maxHealth = 250000
monster.race = "fire"
monster.corpse = 6068
monster.speed = 380
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
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
	{text = "BOW TO THE POWER OF THE RUTHLESS SEVEN!", yell = true},
	{text = "DESTRUCTION!", yell = true},
	{text = "CHAOS!", yell = true},
	{text = "DEATH TO ALL!", yell = true}
}

monster.loot = {
	{id = 2160, chance = 53000, maxCount = 45},
	{id = 2493, chance = 800, unique = 1},
	{id = 12607, chance = 350, unique = 1},
	{id = 2523, chance = 90, unique = 1},
	{id = 8889, chance = 1200, unique = 1},
	{id = 30884, chance = 300, unique = 1}
}

monster.attacks = {
	{name ="melee", interval = 1500, chance = 100, skill = 230, attack = 210},
	{name ="combat", interval = 1000, chance = 8, minDamage = -1200, maxDamage = -1900, type = COMBAT_DEATHDAMAGE, effect = CONST_ME_MORTAREA, target = false},
	{name ="speed", interval = 1200, chance = 12, SpeedChange = -850, Duration = 60000},
	{name ="combat", interval = 1200, chance = 10, minDamage = -1350, maxDamage = -1850, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_HITAREA, target = false},
	{name ="combat", interval = 2500, chance = 13, minDamage = -1980, maxDamage = -2120, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 2800, chance = 8, minDamage = -600, maxDamage = -700, type = COMBAT_MANADRAIN, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="combat", interval = 2000, chance = 9, minDamage = -1750, maxDamage = -2150, type = COMBAT_ENERGYDAMAGE, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="condition", type = CONDITION_POISON, interval = 4000, chance = 20, minDamage = -1680, maxDamage = -2400, range = 7, radius = 3, effect = CONST_ME_HITBYPOISON, target = false},
	{name ="combat", interval = 2000, chance = 6, minDamage = -800, maxDamage = -1600, type = COMBAT_LIFEDRAIN, effect = CONST_ME_MAGIC_GREEN, target = false}
}

monster.defenses = {
	defense = 40,
	armor = 40,
	{name ="combat", interval = 1000, chance = 5, minDamage = 300, maxDamage = 500, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 8, SpeedChange = 480, Duration = 6000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 50},
	{type = COMBAT_HOLYDAMAGE , percent = 50},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
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
