local mType = Game.createMonsterType("Pixie")
local monster = {}

monster.description = "a pixie"
monster.experience = 700
monster.outfit = {
	lookType = 982,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1438
monster.Bestiary = {
	class = "Fey",
	race = BESTY_RACE_FEY,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Feyrist."
	}

monster.health = 770
monster.maxHealth = 770
monster.race = "blood"
monster.corpse = 29098
monster.speed = 240
monster.manaCost = 450
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
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 20,
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
	{text = "Glamour, glitter, glistening things! Do you have any of those?", yell = false},
	{text = "Sweet Dreams!", yell = false},
	{text = "You might be a threat! I'm sorry but I can allow you to linger here.", yell = false},
	{text = "Let's try a step or two!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 30000, maxCount = 112},
	{id = 5015, chance = 50},
	{id = 2162, chance = 492},
	{id = 2796, chance = 492, maxCount = 4},
	{id = 2146, chance = 1492, maxCount = 3},
	{id = 29036, chance = 10000, maxCount = 8},
	{id = 9970, chance = 1591}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -50, maxDamage = -320},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -85, maxDamage = -135, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true},
	{name ="speed", interval = 2000, chance = 11, speedChange = -440, length = 4, spread = 2, effect = CONST_ME_MAGIC_GREEN, target = false, duration = 7000},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = 0, maxDamage = -100, range = 4, shootEffect = CONST_ANI_LEAFSTAR, target = false},
	{name ="pixie skill reducer", interval = 2000, chance = 20, target = false}
}

monster.defenses = {
	defense = 45,
	armor = 50,
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 40, maxDamage = 75, effect = CONST_ME_MAGIC_GREEN, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -5},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 60},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE , percent = 60},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
