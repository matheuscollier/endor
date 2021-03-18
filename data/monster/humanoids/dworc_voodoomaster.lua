local mType = Game.createMonsterType("Dworc Voodoomaster")
local monster = {}

monster.description = "um dworc voodoomaster"
monster.experience = 150
monster.outfit = {
	lookType = 214,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 214
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

monster.health = 80
monster.maxHealth = 80
monster.race = "blood"
monster.corpse = 4304
monster.speed = 140
monster.manaCost = 300
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
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 80,
	targetDistance = 4,
	runHealth = 15,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
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
	{text = "Grak brrretz!", yell = false},
	{text = "Grow truk grrrrr.", yell = false},
	{text = "Prek tars, dekklep zurk.", yell = false}
}

monster.loot = {
	{id = 2231, chance = 6000},
	{id = 2230, chance = 10000},
	{id = 2148, chance = 80000, maxCount = 18},
	{id = 2467, chance = 5000},
	{id = 2411, chance = 200},
	{id = 2229, chance = 3000, maxCount = 3},
	{id = 2174, chance = 400},
	{id = 3967, chance = 500},
	{id = 3955, chance = 50}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -20, maxDamage = -45},
	{name ="combat", interval = 1333, chance = 10, minDamage = -10, maxDamage = -30, type = COMBAT_LIFEDRAIN, range = 3, target = false},
	{name ="speed", interval = 1333, chance = 12, SpeedChange = -300, Duration = 5000},
	{name ="drunk", interval = 2000, chance = 10, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_TELEPORT, target = false},
	{name ="outfit", interval = 2000, chance = 10, range = 7, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 5000, outfitMonster = "chicken"},
	{name ="combat", interval = 1700, chance = 20, minDamage = -6, maxDamage = -18, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_GREEN_RINGS, target = false},
	{name ="poisonfield", interval = 1650, chance = 13, range = 7, ShootEffect = CONST_ANI_POISON, target = true}
}

monster.defenses = {
	defense = 10,
	armor = 10,
	{name ="combat", interval = 3000, chance = 20, minDamage = 8, maxDamage = 16, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 4000, chance = 10, SpeedChange = 150, Duration = 4000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
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
