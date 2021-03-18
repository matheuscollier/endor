local mType = Game.createMonsterType("Cyclops Drone")
local monster = {}

monster.description = "um cyclops drone"
monster.experience = 200
monster.outfit = {
	lookType = 280,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 391
monster.Bestiary = {
	class = "Giant",
	race = BESTY_RACE_GIANT,
	toKill = 1500,
	FirstUnlock = 100,
	SecondUnlock = 750,
	CharmsPoints = 50,
	Stars = 3,
	Occurrence = 0,
	Locations = "x."
	}

monster.health = 325
monster.maxHealth = 325
monster.race = "blood"
monster.corpse = 7847
monster.speed = 250
monster.manaCost = 525
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	damage = 30,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 95,
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
	{text = "Fee! Fie! Foe! Fum!", yell = false},
	{text = "Luttl pest!", yell = false},
	{text = "Me makking you pulp!", yell = false},
	{text = "Humy tasy! Hum hum!", yell = false}
}

monster.loot = {
	{id = 2513, chance = 2500},
	{id = 2490, chance = 1500},
	{id = 2148, chance = 10000, maxCount = 80},
	{id = 2666, chance = 5000, maxCount = 2},
	{id = 2510, chance = 2000},
	{id = 2442, chance = 2000},
	{id = 2518, chance = 950},
	{id = 2417, chance = 1250},
	{id = 2148, chance = 4000, maxCount = 50}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 52, attack = 40},
	{name ="combat", interval = 2000, chance = 99, minDamage = -46, maxDamage = -74, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_LARGEROCK, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 1},
	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
