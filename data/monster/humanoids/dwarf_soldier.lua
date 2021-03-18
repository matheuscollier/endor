local mType = Game.createMonsterType("Dwarf Soldier")
local monster = {}

monster.description = "um dwarf soldier"
monster.experience = 70
monster.outfit = {
	lookType = 71,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 71
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

monster.health = 135
monster.maxHealth = 135
monster.race = "blood"
monster.corpse = 2985
monster.speed = 176
monster.manaCost = 360
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
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
	{text = "Hail Durin!", yell = false}
}

monster.loot = {
	{id = 2481, chance = 1000},
	{id = 2455, chance = 900},
	{id = 2378, chance = 3333},
	{id = 2464, chance = 3000},
	{id = 2643, chance = 4000},
	{id = 2525, chance = 1300},
	{id = 2787, chance = 60000, maxCount = 5},
	{id = 2148, chance = 80000, maxCount = 75},
	{id = 2543, chance = 20000, maxCount = 10},
	{id = 2543, chance = 10000, maxCount = 4},
	{id = 2554, chance = 2333},
	{id = 2213, chance = 1050}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -15, maxDamage = -40},
	{name ="combat", interval = 3600, chance = 99, minDamage = -10, maxDamage = -35, type = COMBAT_PHYSICALDAMAGE, range = 5, ShootEffect = CONST_ANI_BOLT, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
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
