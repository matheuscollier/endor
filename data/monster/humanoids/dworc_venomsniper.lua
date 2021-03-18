local mType = Game.createMonsterType("Dworc Venomsniper")
local monster = {}

monster.description = "um dworc venomsniper"
monster.experience = 70
monster.outfit = {
	lookType = 216,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 216
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 500,
	FirstUnlock = 25,
	SecondUnlock = 250,
	CharmsPoints = 15,
	Stars = 2,
	Occurrence = 0,
	Locations = "x."
	}

monster.health = 80
monster.maxHealth = 80
monster.race = "blood"
monster.corpse = 4310
monster.speed = 135
monster.manaCost = 300
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 15,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
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
	{text = "Grak brrretz!", yell = false},
	{text = "Grow truk grrrrr.", yell = false},
	{text = "Prek tars, dekklep zurk.", yell = false}
}

monster.loot = {
	{id = 2148, chance = 80000, maxCount = 15},
	{id = 3983, chance = 500},
	{id = 2172, chance = 700},
	{id = 2467, chance = 5000},
	{id = 2411, chance = 500},
	{id = 2229, chance = 1000, maxCount = 2},
	{id = 2410, chance = 15000, maxCount = 3},
	{id = 3967, chance = 500}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -10, maxDamage = -45},
	{name ="condition", type = CONDITION_POISON, interval = 4000, chance = 30, minDamage = -40, maxDamage = -80, range = 5, ShootEffect = CONST_ANI_POISON, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
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
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
