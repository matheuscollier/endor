local mType = Game.createMonsterType("Uruloki")
local monster = {}

monster.description = "um uruloki"
monster.experience = 3150
monster.outfit = {
	lookType = 39,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 4002
monster.Bestiary = {
	class = "Dragon",
	race = BESTY_RACE_DRAGON,
	toKill = 1500,
	FirstUnlock = 100,
	SecondUnlock = 750,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "x."
	}

monster.health = 3400
monster.maxHealth = 3400
monster.race = "blood"
monster.corpse = 5984
monster.speed = 320
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
	random = 10,
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
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 300,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
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
	{text = "ZCHHHHH", yell = true},
	{text = "YOU WILL BURN!", yell = true}
}

monster.loot = {
	{id = 5882, chance = 4000},
	{id = 5948, chance = 7000},
	{id = 2392, chance = 1320},
	{id = 2492, chance = 500},
	{id = 2474, chance = 180},
	{id = 2645, chance = 380},
	{id = 2516, chance = 1350},
	{id = 7388, chance = 180},
	{id = 2191, chance = 950},
	{id = 2148, chance = 100000, maxCount = 50},
	{id = 2546, chance = 9000, maxCount = 9},
	{id = 2672, chance = 10000, maxCount = 4},
	{id = 2149, chance = 700},
	{id = 2146, chance = 600},
	{id = 2147, chance = 600},
	{id = 2796, chance = 1000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -250, maxDamage = -410},
	{name ="combat", interval = 2200, chance = 35, minDamage = -170, maxDamage = -340, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="firefield", interval = 2400, chance = 20, range = 7, ShootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 1300, chance = 19, minDamage = -300, maxDamage = -900, type = COMBAT_FIREDAMAGE, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false}
}

monster.defenses = {
	defense = 40,
	armor = 40,
	{name ="combat", interval = 2100, chance = 30, minDamage = 80, maxDamage = 123, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 80},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
