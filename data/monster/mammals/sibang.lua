local mType = Game.createMonsterType("Sibang")
local monster = {}

monster.description = "um sibang"
monster.experience = 100
monster.outfit = {
	lookType = 118,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 225
monster.maxHealth = 225
monster.race = "blood"
monster.corpse = 4274
monster.speed = 160
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 50
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
	staticAttackChance = 95,
	targetDistance = 1,
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
	{text = "Eeeeek! Eeeeek", yell = false},
	{text = "Huh! Huh! Huh!", yell = false},
	{text = "Ahhuuaaa!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 35},
	{id = 2675, chance = 10000, maxCount = 5},
	{id = 2676, chance = 15000, maxCount = 12},
	{id = 5883, chance = 9000, maxCount = 4},
	{id = 2682, chance = 7000},
	{id = 2458, chance = 3000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -20, maxDamage = -45},
	{name ="combat", interval = 3550, chance = 99, minDamage = -15, maxDamage = -35, type = COMBAT_PHYSICALDAMAGE, range = 5, ShootEffect = CONST_ANI_SMALLSTONE, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="speed", interval = 5000, chance = 12, SpeedChange = 200, Duration = 3000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
