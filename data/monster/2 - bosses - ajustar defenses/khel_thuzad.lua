local mType = Game.createMonsterType("Khel Thuzad")
local monster = {}

monster.description = "Khel Thuzad"
monster.experience = 600000
monster.outfit = {
	lookType = 287,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 85000
monster.maxHealth = 85000
monster.race = "undead"
monster.corpse = 8937
monster.speed = 370
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 15
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
	{text = "Feel the power of the Lich King!!!", yell = false}
}

monster.loot = {
	{id = 2640, chance = 1250, unique = 1},
	{id = 8889, chance = 1200, unique = 1},
	{id = 8890, chance = 25000},
	{id = 2514, chance = 25000},
	{id = 2446, chance = 3100, unique = 1},
	{id = 5741, chance = 12000},
	{id = 30884, chance = 850, unique = 1},
	{id = 2160, chance = 35000, maxCount = 7},
	{id = 6300, chance = 50000}
}

monster.attacks = {
	{name ="melee", interval = 1550, chance = 100, minDamage = -600, maxDamage = -1000},
	{name ="speed", interval = 11000, chance = 50, SpeedChange = -700, Duration = 10000},
	{name ="combat", interval = 3000, chance = 34, minDamage = -600, maxDamage = -800, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_DRAWBLOOD, target = true},
	{name ="combat", interval = 2200, chance = 20, minDamage = -500, maxDamage = -800, type = COMBAT_PHYSICALDAMAGE, range = 14, effect = CONST_ME_POFF, target = false},
	{name ="combat", interval = 1800, chance = 45, minDamage = -350, maxDamage = -600, type = COMBAT_DEATHDAMAGE, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 4100, chance = 35, minDamage = -850, maxDamage = -1250, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_GROUNDSHAKER, target = true},
	{name ="combat", interval = 2850, chance = 22, minDamage = -1600, maxDamage = -2300, type = COMBAT_LIFEDRAIN, length = 7, spread = 3, effect = CONST_ME_DRAWBLOOD, target = false}
}

monster.defenses = {
	defense = 45,
	armor = 45,
	{name ="combat", interval = 2400, chance = 35, minDamage = 500, maxDamage = 900, type = COMBAT_HEALING, effect = CONST_ME_FIREWORK_BLUE, target = false},
	{name ="invisible", interval = 15000, chance = 45, effect = CONST_ME_POFF}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 70},
	{type = COMBAT_ENERGYDAMAGE, percent = 70},
	{type = COMBAT_EARTHDAMAGE, percent = 70},
	{type = COMBAT_FIREDAMAGE, percent = 70},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 70},
	{type = COMBAT_HOLYDAMAGE , percent = 70},
	{type = COMBAT_DEATHDAMAGE , percent = 70}
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

