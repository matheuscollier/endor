local mType = Game.createMonsterType("Dwarf Geomancer")
local monster = {}

monster.description = "um dwarf geomancer"
monster.experience = 245
monster.outfit = {
	lookType = 66,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 66
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "x."
	}

monster.health = 380
monster.maxHealth = 380
monster.race = "blood"
monster.corpse = 2987
monster.speed = 170
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 4,
	runHealth = 110,
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
	{text = "Hail Durin!", yell = false},
	{text = "Earth is the strongest element.", yell = false},
	{text = "Dust to dust.", yell = false}
}

monster.loot = {
	{id = 2648, chance = 5000},
	{id = 2641, chance = 650},
	{id = 2148, chance = 100000, maxCount = 80},
	{id = 2787, chance = 20000, maxCount = 3},
	{id = 2673, chance = 6666, maxCount = 3},
	{id = 2260, chance = 4000},
	{id = 2162, chance = 2500},
	{id = 2088, chance = 100000},
	{id = 2213, chance = 2050}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -30, maxDamage = -100},
	{name ="combat", interval = 2270, chance = 20, minDamage = -30, maxDamage = -70, type = COMBAT_PHYSICALDAMAGE, range = 5, ShootEffect = CONST_ANI_LARGEROCK, target = false},
	{name ="combat", interval = 1300, chance = 20, minDamage = -40, maxDamage = -70, type = COMBAT_MANADRAIN, range = 3, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 3000, chance = 20, minDamage = 40, maxDamage = 80, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
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
