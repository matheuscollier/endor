local mType = Game.createMonsterType("Rustheap Golem")
local monster = {}

monster.description = "um rustheap golem"
monster.experience = 14500
monster.outfit = {
	lookType = 603,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1041
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

monster.health = 13000
monster.maxHealth = 13000
monster.race = "venom"
monster.corpse = 23355
monster.speed = 350
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
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
	{text = "*clatter*", yell = false},
	{text = "*krrk*", yell = false},
	{text = "*frzzp*", yell = false}
}

monster.loot = {
	{id = 23567, chance = 1000},
	{id = 2148, chance = 100000, maxCount = 290},
	{id = 2152, chance = 58310, maxCount = 3},
	{id = 2391, chance = 250},
	{id = 2195, chance = 150}
}

monster.attacks = {
	{name ="melee", interval = 1250, chance = 100, minDamage = -350, maxDamage = -450},
	{name ="combat", interval = 2000, chance = 10, minDamage = -600, maxDamage = -900, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_DRAWBLOOD, target = false},
	{name ="rustheap golem electrify", interval = 2000, chance = 11, range = 7, target = false},
	{name ="frazzlemaw paralyze", interval = 2000, chance = 10, target = false},
	{name ="rustheap golem wave", interval = 2000, chance = 9, minDamage = -600, maxDamage = -910, target = false}
}

monster.defenses = {
	defense = 45,
	armor = 40,
	{name ="speed", interval = 2000, chance = 11, speedChange = 428, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 6000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -5},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 70},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
