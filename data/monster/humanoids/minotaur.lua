local mType = Game.createMonsterType("Minotaur")
local monster = {}

monster.description = "um minotaur"
monster.experience = 50
monster.outfit = {
	lookType = 25,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 25
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

monster.health = 100
monster.maxHealth = 100
monster.race = "blood"
monster.corpse = 5969
monster.speed = 168
monster.manaCost = 330
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
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
	{text = "Kaplar!", yell = false},
	{text = "Hurr", yell = false}
}

monster.loot = {
	{id = 2464, chance = 3000},
	{id = 2468, chance = 2000},
	{id = 2395, chance = 100},
	{id = 5878, chance = 19999},
	{id = 2458, chance = 2500},
	{id = 2460, chance = 1000},
	{id = 2510, chance = 4000},
	{id = 2398, chance = 5000},
	{id = 2148, chance = 20000, maxCount = 40},
	{id = 2554, chance = 1000},
	{id = 2666, chance = 10000, maxCount = 2},
	{id = 2172, chance = 90}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -7, maxDamage = -18}
}

monster.defenses = {
	defense = 15,
	armor = 15
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -15},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
