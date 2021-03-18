local mType = Game.createMonsterType("Ice Witch")
local monster = {}

monster.description = "uma ice witch"
monster.experience = 580
monster.outfit = {
	lookType = 149,
	lookHead = 0,
	lookBody = 47,
	lookLegs = 105,
	lookFeet = 105,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 540
monster.maxHealth = 540
monster.race = "blood"
monster.corpse = 20423
monster.speed = 260
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 50,
	targetDistance = 3,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "So you think you are cool?", yell = false},
	{text = "I hope it is not too cold for you! HeHeHe.", yell = false},
	{text = "Freeze!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 40},
	{id = 2436, chance = 800},
	{id = 7441, chance = 1200},
	{id = 7387, chance = 250},
	{id = 2195, chance = 650},
	{id = 2445, chance = 600},
	{id = 2423, chance = 1650},
	{id = 2796, chance = 9999, maxCount = 3},
	{id = 2663, chance = 500},
	{id = 7459, chance = 450}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -90, maxDamage = -210},
	{name ="outfit", interval = 2000, chance = 1, range = 7, shootEffect = CONST_ANI_SNOWBALL, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 4000, outfitItem = 7172},
	{name ="combat", interval = 2950, chance = 33, minDamage = -110, maxDamage = -190, type = COMBAT_PHYSICALDAMAGE, range = 6, effect = CONST_ME_BIGCLOUDS, target = false},
	{name ="combat", interval = 2750, chance = 99, minDamage = -90, maxDamage = -180, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_SNOWBALL, target = true},
	{name ="speed", interval = 6000, chance = 20, SpeedChange = -600, Duration = 5000}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 5200, chance = 25, minDamage = 50, maxDamage = 90, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 75},
	{type = COMBAT_EARTHDAMAGE, percent = 35},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 95},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
