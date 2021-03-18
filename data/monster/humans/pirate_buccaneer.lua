local mType = Game.createMonsterType("Pirate Buccaneer")
local monster = {}

monster.description = "um pirate buccaneer"
monster.experience = 250
monster.outfit = {
	lookType = 97,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 425
monster.maxHealth = 425
monster.race = "blood"
monster.corpse = 20471
monster.speed = 180
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5
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
	staticAttackChance = 50,
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
	{text = "Give up!", yell = false}
}

monster.loot = {
	{id = 11219, chance = 800},
	{id = 2385, chance = 2500},
	{id = 2463, chance = 650},
	{id = 2238, chance = 3000},
	{id = 6097, chance = 3000},
	{id = 6098, chance = 2000},
	{id = 6126, chance = 1000},
	{id = 2148, chance = 40000, maxCount = 40}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -50, maxDamage = -125},
	{name ="combat", interval = 3150, chance = 99, minDamage = -25, maxDamage = -66, type = COMBAT_PHYSICALDAMAGE, range = 5, ShootEffect = CONST_ANI_THROWINGKNIFE, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
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
