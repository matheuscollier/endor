local mType = Game.createMonsterType("Terrorsleep")
local monster = {}

monster.description = "Terrorsleep"
monster.experience = 5900
monster.outfit = {
	lookType = 593,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 7200
monster.maxHealth = 7200
monster.race = "blood"
monster.corpse = 22497
monster.speed = 270
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
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
	{text = "Aktat Roshok! Marruk!", yell = false},
	{text = "I will eat you in your sleep.", yell = false},
	{text = "I am the darkness around you...", yell = false}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2152, chance = 100000, maxCount = 8},
	{id = 2149, chance = 400},
	{id = 2147, chance = 900},
	{id = 2150, chance = 700},
	{id = 2393, chance = 560},
	{id = 2475, chance = 2820},
	{id = 2476, chance = 4000},
	{id = 5909, chance = 4520},
	{id = 5911, chance = 1130},
	{id = 7590, chance = 36000, maxCount = 2},
	{id = 8473, chance = 26000},
	{id = 9970, chance = 17000, maxCount = 2},
	{id = 18413, chance = 6000},
	{id = 18418, chance = 13000},
	{id = 22537, chance = 13000},
	{id = 22538, chance = 18000},
	{id = 22363, chance = 1130}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 90, attack = 90},
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 20, minDamage = -1000, maxDamage = -1500, radius = 7, effect = CONST_ME_YELLOW_RINGS, target = false},
	{name ="combat", interval = 2000, chance = 10, minDamage = -100, maxDamage = -300, type = COMBAT_MANADRAIN, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="feversleep skill reducer", interval = 2000, chance = 10, target = false},
	{name ="combat", interval = 2000, chance = 10, minDamage = -350, maxDamage = -500, type = COMBAT_LIFEDRAIN, length = 6, spread = 3, effect = CONST_ME_YELLOWENERGY, target = true},
	{name ="combat", interval = 2000, chance = 20, minDamage = -200, maxDamage = -450, type = COMBAT_DEATHDAMAGE, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 2000, chance = 15, minDamage = 350, maxDamage = 600, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="invisible", interval = 2000, chance = 15, effect = CONST_ME_HITAREA},
	{name ="speed", interval = 2000, chance = 15, SpeedChange = 300, Duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 5},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 5},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
