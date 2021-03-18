local mType = Game.createMonsterType("Elf Scout")
local monster = {}

monster.description = "um elf scout"
monster.experience = 135
monster.outfit = {
	lookType = 64,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 64
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

monster.health = 160
monster.maxHealth = 160
monster.race = "blood"
monster.corpse = 2981
monster.speed = 200
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
	targetDistance = 4,
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
	{text = "Tha'shi Ab'Dendriel!", yell = false},
	{text = "Feel the sting of my arrows!", yell = false},
	{text = "Thy blood will quench the soil's thirst!", yell = false},
	{text = "Evicor guide my arrow.", yell = false}
}

monster.loot = {
	{id = 2544, chance = 30000, maxCount = 12},
	{id = 2456, chance = 4000},
	{id = 2397, chance = 2000},
	{id = 2545, chance = 15000, maxCount = 4},
	{id = 2642, chance = 1000},
	{id = 2484, chance = 6000},
	{id = 2482, chance = 8000},
	{id = 12420, chance = 2000},
	{id = 2148, chance = 30000, maxCount = 20},
	{id = 2681, chance = 18000},
	{id = 2198, chance = 20}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -30, maxDamage = -75},
	{name ="combat", interval = 3350, chance = 99, minDamage = -30, maxDamage = -60, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_ARROW, target = false}
}

monster.defenses = {
	defense = 10,
	armor = 10
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
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
