local mType = Game.createMonsterType("Terror Bird")
local monster = {}

monster.description = "um terror bird"
monster.experience = 215
monster.outfit = {
	lookType = 218,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 218
monster.Bestiary = {
	class = "Bird",
	race = BESTY_RACE_BIRD,
	toKill = 500,
	FirstUnlock = 25,
	SecondUnlock = 250,
	CharmsPoints = 15,
	Stars = 2,
	Occurrence = 0,
	Locations = "x."
	}
	
monster.health = 300
monster.maxHealth = 300
monster.race = "blood"
monster.corpse = 6057
monster.speed = 212
monster.manaCost = 490
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
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
	{text = "CRAAAHHH!", yell = false},
	{text = "Gruuuh Gruuuh.", yell = false},
	{text = "Carrah! Carrah!", yell = false}
}

monster.loot = {
	{id = 21310, chance = 8000},
	{id = 3976, chance = 100000, maxCount = 5},
	{id = 2666, chance = 100000, maxCount = 5},
	{id = 2148, chance = 100000, maxCount = 45}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -35, maxDamage = -90},
	{name ="combat", interval = 3350, chance = 99, minDamage = -25, maxDamage = -60, type = COMBAT_PHYSICALDAMAGE, range = 6, ShootEffect = CONST_ANI_SMALLSTONE, target = false}
}

monster.defenses = {
	defense = 10,
	armor = 10,
	{name ="combat", interval = 5000, chance = 80, minDamage = 10, maxDamage = 40, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
