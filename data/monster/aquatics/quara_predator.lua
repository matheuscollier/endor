local mType = Game.createMonsterType("Quara Predator")
local monster = {}

monster.description = "uma quara predator"
monster.experience = 1750
monster.outfit = {
	lookType = 20,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 237
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
	
monster.health = 2200
monster.maxHealth = 2200
monster.race = "blood"
monster.corpse = 6067
monster.speed = 450
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
	canPushCreatures = true,
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
	{text = "Rrrah!", yell = false},
	{text = "Rraaar!", yell = false}
}

monster.loot = {
	{id = 2670, chance = 4000, maxCount = 5},
	{id = 7893, chance = 75},
	{id = 5895, chance = 2000},
	{id = 5461, chance = 350},
	{id = 2483, chance = 1000},
	{id = 2148, chance = 2500, maxCount = 88},
	{id = 2148, chance = 2500, maxCount = 88},
	{id = 2158, chance = 500},
	{id = 2148, chance = 2500, maxCount = 88},
	{id = 2145, chance = 429, maxCount = 2},
	{id = 2457, chance = 856}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -160, maxDamage = -430, effect = CONST_ME_DRAWBLOOD}
}

monster.defenses = {
	defense = 45,
	armor = 45,
	{name ="speed", interval = 2000, chance = 15, speedChange = 270, effect = CONST_ME_MAGIC_GREEN, target = false, duration = 5000},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 25, maxDamage = 75, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -20},
	{type = COMBAT_ENERGYDAMAGE, percent = -25},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
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
