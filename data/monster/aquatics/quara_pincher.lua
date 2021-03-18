local mType = Game.createMonsterType("Quara Pincher")
local monster = {}

monster.description = "uma quara pincher"
monster.experience = 1300
monster.outfit = {
	lookType = 77,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 245
monster.Bestiary = {
	class = "Aquatic",
	race = BESTY_RACE_AQUATIC,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "x"
	}
	
monster.health = 1800
monster.maxHealth = 1800
monster.race = "blood"
monster.corpse = 6063
monster.speed = 396
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
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
	{text = "Clank clank!", yell = false},
	{text = "Clap!", yell = false},
	{text = "Crrrk! Crrrk!", yell = false}
}

monster.loot = {
	{id = 2475, chance = 333},
	{id = 7387, chance = 150},
	{id = 2536, chance = 180},
	{id = 2487, chance = 100},
	{id = 2670, chance = 4500, maxCount = 5},
	{id = 5895, chance = 2000},
	{id = 2148, chance = 25000, maxCount = 100},
	{id = 2148, chance = 25000, maxCount = 100},
	{id = 2147, chance = 500}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -160, maxDamage = -240, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2750, chance = 25, minDamage = -80, maxDamage = -200, type = COMBAT_PHYSICALDAMAGE, length = 8, spread = 3, effect = CONST_ME_LOSEENERGY, target = false},
	{name ="speed", interval = 2000, chance = 20, speedChange = -600, range = 1, effect = CONST_ME_MAGIC_RED, target = false, duration = 3000}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="combat", interval = 1500, chance = 18, minDamage = 113, maxDamage = 187, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -25},
	{type = COMBAT_EARTHDAMAGE, percent = -20},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 100},
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
