local mType = Game.createMonsterType("Quara Hydromancer")
local monster = {}

monster.description = "um quara hydromancer"
monster.experience = 950
monster.outfit = {
	lookType = 47,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 243
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
	
monster.health = 1100
monster.maxHealth = 1100
monster.race = "blood"
monster.corpse = 6066
monster.speed = 490
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
	{text = "Qua hah tsh!", yell = false},
	{text = "Teech tsha tshul!", yell = false},
	{text = "Quara tsha Fach!", yell = false},
	{text = "Tssssha Quara!", yell = false},
	{text = "Blubber.", yell = false},
	{text = "Blup.", yell = false}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 40},
	{id = 2670, chance = 25000, maxCount = 6},
	{id = 2401, chance = 3000},
	{id = 2143, chance = 3000, maxCount = 2},
	{id = 5895, chance = 300},
	{id = 2189, chance = 400},
	{id = 2214, chance = 350},
	{id = 7896, chance = 300}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -48, maxDamage = -104, effect = CONST_ME_DRAWBLOOD, condition = {type = CONDITION_POISON, totalDamage = 100, interval = 4000}},
	{name ="combat", interval = 2550, chance = 20, minDamage = -110, maxDamage = -180, type = COMBAT_ICEDAMAGE, length = 6, spread = 3, effect = CONST_ME_LOSEENERGY, target = false},
	{name ="combat", interval = 2150, chance = 15, minDamage = -126, maxDamage = -140, type = COMBAT_ICEDAMAGE, effect = CONST_ME_LOSEENERGY, target = false},
	{name ="combat", interval = 2725, chance = 20, minDamage = -110, maxDamage = -130, type = COMBAT_LIFEDRAIN, range = 2, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = 0, maxDamage = -170, range = 7, effect = CONST_ME_MAGIC_RED, target = true},
	{name ="speed", interval = 2000, chance = 15, speedChange = -600, range = 7, effect = CONST_ME_MAGIC_RED, target = false, duration = 15000}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 100, maxDamage = 120, effect = CONST_ME_MAGIC_BLUE, target = false}
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
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
