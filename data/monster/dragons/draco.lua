local mType = Game.createMonsterType("Draco")
local monster = {}

monster.description = "um draco"
monster.experience = 2400
monster.outfit = {
	lookType = 34,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 4001
monster.Bestiary = {
	class = "Dragon",
	race = BESTY_RACE_DRAGON,
	toKill = 1500,
	FirstUnlock = 10,
	SecondUnlock = 750,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "x."
	}

monster.health = 2100					 
monster.maxHealth = 2100
monster.race = "blood"
monster.corpse = 5973
monster.speed = 220
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
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
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 300,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
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
	{text = "GROOAAARRR", yell = true},
	{text = "FCHHHHH", yell = true}
}

monster.loot = {
	{id = 2672, chance = 11000, maxCount = 2},
	{id = 5920, chance = 4000},
	{id = 10020, chance = 1500},
	{id = 5877, chance = 5500},
	{id = 7419, chance = 140},
	{id = 2647, chance = 1350},
	{id = 2387, chance = 1500},
	{id = 2546, chance = 10000, maxCount = 13},
	{id = 2516, chance = 890},
	{id = 2409, chance = 980},
	{id = 2148, chance = 90000, maxCount = 50},
	{id = 2145, chance = 2000},
	{id = 2177, chance = 300},
	{id = 2492, chance = 200},
	{id = 2469, chance = 300}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -160, maxDamage = -320},
	{name ="combat", interval = 2000, chance = 25, minDamage = -120, maxDamage = -220, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 2000, chance = 40, minDamage = -130, maxDamage = -230, type = COMBAT_PHYSICALDAMAGE, length = 6, spread = 4, effect = CONST_ME_POFF, target = false}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 60, maxDamage = 170, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 15},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
