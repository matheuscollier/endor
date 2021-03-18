local mType = Game.createMonsterType("Magma Crawler")
local monster = {}

monster.description = "magma crawler"
monster.experience = 3700
monster.outfit = {
	lookType = 492,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 885
monster.Bestiary = {
	class = "Construct",
	race = BESTY_RACE_CONSTRUCT,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "x."
	}

monster.health = 5200
monster.maxHealth = 5200
monster.race = "fire"
monster.corpse = 17336
monster.speed = 460
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
	random = 10
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
	staticAttackChance = 90,
	targetDistance = 4,
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
	{text = "Crrroak!", yell = false},
	{text = "Rrroarrr", yell = false}
}

monster.loot = {
	{id = 2152, chance = 100000, maxCount = 3},
	{id = 2145, chance = 800, maxCount = 3},
	{id = 10553, chance = 7000},
	{id = 18425, chance = 4300},
	{id = 2173, chance = 800},
	{id = 7894, chance = 500},
	{id = 5914, chance = 3000},
	{id = 2392, chance = 800},
	{id = 7891, chance = 600},
	{id = 2154, chance = 1200},
	{id = 2187, chance = 1500}
}

monster.attacks = {
	{name ="melee", interval = 1700, chance = 100, minDamage = -300, maxDamage = -500},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -300, maxDamage = -700, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="magma crawler wave", interval = 2000, chance = 15, minDamage = -290, maxDamage = -800, target = false},
	{name ="magma crawler soulfire", interval = 2000, chance = 20, target = false},
	{name ="soulfire", interval = 2000, chance = 10, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -140, maxDamage = -180, radius = 3, effect = CONST_ME_HITBYFIRE, target = false},
	{name ="speed", interval = 2000, chance = 10, speedChange = -800, radius = 2, effect = CONST_ME_MAGIC_RED, target = false, duration = 20000}																																		 
}

monster.defenses = {
	defense = 45,
	armor = 45
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
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
