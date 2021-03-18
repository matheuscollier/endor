local mType = Game.createMonsterType("Frost Torog")
local monster = {}

monster.description = "um frost torog"
monster.experience = 1500
monster.outfit = {
	lookType = 261,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 4003
monster.Bestiary = {
	class = "Construct",
	race = BESTY_RACE_CONSTRUCT,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "x."
	}

monster.health = 1700
monster.maxHealth = 1700
monster.race = "undead"
monster.corpse = 7282
monster.speed = 235
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5
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
	staticAttackChance = 50,
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
	{text = "Chrrr.", yell = false},
	{text = "Crrrrk.", yell = false},
	{text = "Gnarr.", yell = false}
}

monster.loot = {
	{id = 2148, chance = 45000, maxCount = 98},
	{id = 2144, chance = 1500, maxCount = 2},
	{id = 2145, chance = 1500, maxCount = 4},
	{id = 10578, chance = 2000},
	{id = 7441, chance = 2222},
	{id = 7901, chance = 180},
	{id = 2146, chance = 500},
	{id = 2396, chance = 300},
	{id = 2445, chance = 850},
	{id = 7455, chance = 750},
	{id = 7407, chance = 350}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -120, maxDamage = -180},
	{name ="speed", interval = 1000, chance = 13, speedChange = -800, length = 8, spread = 3, effect = CONST_ME_ENERGYHIT, target = false, duration = 20000},
	{name ="combat", interval = 1000, chance = 15, minDamage = -150, maxDamage = -170, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_LARGEROCK, target = false},
	{name ="ice golem skill reducer", interval = 2000, chance = 10, target = false}
}

monster.defenses = {
	defense = 26,
	armor = 25
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 15},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 15},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 100},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
