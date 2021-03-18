local mType = Game.createMonsterType("Elf Arcanist")
local monster = {}

monster.description = "um elf arcanist"
monster.experience = 245
monster.outfit = {
	lookType = 63,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 63
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

monster.health = 220
monster.maxHealth = 220
monster.race = "blood"
monster.corpse = 2979
monster.speed = 220
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
	illusionable = false,
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
	{text = "Feel my wrath!", yell = false},
	{text = "For the Daughter of the Stars!", yell = false},
	{text = "I'll bring balance upon you!", yell = false},
	{text = "Tha'shi Cenath!", yell = false},
	{text = "Vihil Ealuel!", yell = false}
}

monster.loot = {
	{id = 2544, chance = 6000, maxCount = 3},
	{id = 2260, chance = 18000},
	{id = 2032, chance = 5500},
	{id = 2689, chance = 14000},
	{id = 2047, chance = 22000},
	{id = 2198, chance = 30},
	{id = 2747, chance = 7000},
	{id = 2652, chance = 7000},
	{id = 2600, chance = 9000},
	{id = 2177, chance = 1000},
	{id = 2682, chance = 22000},
	{id = 2642, chance = 13000},
	{id = 1949, chance = 30000},
	{id = 2802, chance = 5000},
	{id = 2401, chance = 11000},
	{id = 2189, chance = 1000},
	{id = 2154, chance = 200}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 25, attack = 20},
	{name ="combat", interval = 1000, chance = 10, minDamage = -25, maxDamage = -65, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_ARROW, target = false},
	{name ="combat", interval = 1000, chance = 9, minDamage = -30, maxDamage = -50, type = COMBAT_ENERGYDAMAGE, range = 7, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 1000, chance = 12, minDamage = -60, maxDamage = -80, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, target = false}
}

monster.defenses = {
	defense = 10,
	armor = 10,
	{name ="combat", interval = 1000, chance = 20, minDamage = 42, maxDamage = 68, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
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
