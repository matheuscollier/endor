local mType = Game.createMonsterType("Boogy")
local monster = {}

monster.description = "um boogy"
monster.experience = 950
monster.outfit = {
	lookType = 981,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1439
monster.Bestiary = {
	class = "Fey",
	race = BESTY_RACE_FEY,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Feyrist."
	}

monster.health = 1350
monster.maxHealth = 1350
monster.race = "blood"
monster.corpse = 29106
monster.speed = 220
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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 20,
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
	{text = "Go to sleep!", yell = false},
	{text = "Roarrr!", yell = false}
}

monster.loot = {
	{name = "terra amulet", chance = 60},
	{name = "terra legs", chance = 600},
	{name = "terra mantle", chance = 300},
	{name = "terra hood", chance = 1200},
	{id = 2515, chance = 850},
	{name = "golden sickle", chance = 20},
	{name = "mandrake", chance = 20},
	{name = "leaf star", chance = 200, maxCount = 5},
	{name = "gold coin", chance = 30000, maxCount = 100},
	{name = "stealth ring", chance = 492},
	{id = 2684, chance = 5500, maxCount = 3},
	{name = "orange mushroom", chance = 1000},
	{name = "orange mushroom", chance = 2155},
	{name = "wood cape", chance = 591},
	{name = "Small Ruby", chance = 1400, maxCount = 2}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -520},
	-- bleed
	{name ="condition", type = CONDITION_BLEEDING, interval = 3000, chance = 11, minDamage = -100, maxDamage = -300, radius = 6, shootEffect = CONST_ANI_WHIRLWINDCLUB, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -130, maxDamage = -215, range = 7, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_EXPLOSIONAREA, target = true}
}

monster.defenses = {
	defense = 35,
	armor = 35,
	{name ="speed", interval = 2000, chance = 15, speedChange = 450, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 0, maxDamage = 110, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 70},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 40},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
