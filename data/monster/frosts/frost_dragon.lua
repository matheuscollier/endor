local mType = Game.createMonsterType("Frost Dragon")
local monster = {}

monster.description = "um frost dragon"
monster.experience = 2100
monster.outfit = {
	lookType = 248,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 317
monster.Bestiary = {
	class = "Dragon",
	race = BESTY_RACE_DRAGON,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "x."
	}
	
monster.health = 1800
monster.maxHealth = 1800
monster.race = "undead"
monster.corpse = 7091
monster.speed = 310
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 250,
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
	{text = "YOU WILL FREEZE!", yell = true},
	{text = "ZCHHHHH!", yell = true},
	{text = "I am so cool.", yell = false},
	{text = "Chill out!", yell = false}
}

monster.loot = {
	{id = 2672, chance = 10000, maxCount = 3},
	{id = 10578, chance = 2000},
	{id = 1973, chance = 3222},
	{id = 7290, chance = 1777},
	{id = 2498, chance = 750},
	{id = 2396, chance = 300},
	{id = 2492, chance = 320},
	{id = 2148, chance = 40000, maxCount = 75},
	{id = 2146, chance = 200},
	{id = 2528, chance = 750},
	{id = 7441, chance = 400},
	{id = 2167, chance = 600}
}

monster.attacks = {
	{name ="melee", interval = 1900, chance = 100, minDamage = -180, maxDamage = -300},
	{name ="combat", interval = 1750, chance = 25, minDamage = -120, maxDamage = -180, type = COMBAT_PHYSICALDAMAGE, length = 6, spread = 4, effect = CONST_ME_POFF, target = false},
	{name ="speed", interval = 2000, chance = 5, speedChange = -700, radius = 3, effect = CONST_ME_POFF, target = false, duration = 12000},										
	{name ="combat", interval = 2000, chance = 70, type = COMBAT_ICEDAMAGE, minDamage = -60, maxDamage = -120, radius = 3, effect = CONST_ME_ICETORNADO, target = false},
	{name ="combat", interval = 2000, chance = 70, type = COMBAT_ICEDAMAGE, minDamage = -100, maxDamage = -240, radius = 4, effect = CONST_ME_ICEAREA, target = true},
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -220, length = 1, spread = 0, effect = CONST_ME_POFF, target = false},
	{name ="speed", interval = 2000, chance = 20, speedChange = -600, radius = 4, effect = CONST_ME_ICEAREA, target = true, duration = 12000}
}

monster.defenses = {
	defense = 45,
	armor = 45,
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 150, maxDamage = 200, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = 290, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 75},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
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
