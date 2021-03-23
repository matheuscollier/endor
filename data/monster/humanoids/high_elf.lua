local mType = Game.createMonsterType("High Elf")
local monster = {}

monster.description = "um high elf"
monster.experience = 2000
monster.outfit = {
	lookType = 63,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 4014
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

monster.health = 1900
monster.maxHealth = 1900
monster.race = "blood"
monster.corpse = 2979
monster.speed = 260
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 20
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
	{text = "Feel my wrath!", yell = false},
	{text = "For the Daughter of the Stars!", yell = false},
	{text = "I'll bring balance upon you!", yell = false},
	{text = "Tha'shi Cenath!", yell = false},
	{text = "Vihil Ealuel!", yell = false}
}

monster.loot = {
	{id = 21311, chance = 2300},
	{id = 2505, chance = 1200},
	{id = 2466, chance = 60},
	{id = 2507, chance = 1750},
	{id = 7893, chance = 900},
	{id = 7731, chance = 300},
	{id = 7438, chance = 850},
	{id = 2150, chance = 950},
	{id = 2148, chance = 35000, maxCount = 75},
	{id = 2148, chance = 35000, maxCount = 75},
	{id = 2546, chance = 3000, maxCount = 12},
	{id = 2544, chance = 3000, maxCount = 12},
	{id = 7364, chance = 2200, maxCount = 12},
	{id = 7365, chance = 2000, maxCount = 12}
}

monster.attacks = {
	{name ="melee", interval = 1600, chance = 100, minDamage = -152, maxDamage = -200},
	{name ="combat", interval = 2320, chance = 35, minDamage = -150, maxDamage = -190, type = COMBAT_HOLYDAMAGE, range = 7, ShootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYAREA, target = true},
	{name ="combat", interval = 1600, chance = 99, minDamage = -90, maxDamage = -180, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_ARROW, target = false},
	{name ="combat", interval = 2530, chance = 45, minDamage = -250, maxDamage = -350, type = COMBAT_HOLYDAMAGE, range = 7, ShootEffect = CONST_ANI_FLAMMINGARROW, effect = CONST_ME_HOLYAREA, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 2300, chance = 25, minDamage = 90, maxDamage = 153, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 60},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 85},
	{type = COMBAT_DEATHDAMAGE , percent = 25}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
