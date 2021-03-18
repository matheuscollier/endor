local mType = Game.createMonsterType("Pirate Corsair")
local monster = {}

monster.description = "um pirate corsair"
monster.experience = 350
monster.outfit = {
	lookType = 98,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 675
monster.maxHealth = 675
monster.race = "blood"
monster.corpse = 20475
monster.speed = 240
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
}

monster.loot = {
	{id = 11219, chance = 1200},
	{id = 2385, chance = 6000},
	{id = 2489, chance = 850},
	{id = 2521, chance = 900},
	{id = 5462, chance = 850},
	{id = 6096, chance = 1500},
	{id = 2238, chance = 3000},
	{id = 6097, chance = 3000},
	{id = 6098, chance = 2000},
	{id = 6126, chance = 1000},
	{id = 2148, chance = 40000, maxCount = 50},
	{id = 2114, chance = 150}
}

monster.attacks = {
	{name ="melee", interval = 1800, chance = 100, minDamage = -70, maxDamage = -160},
	{name ="combat", interval = 2850, chance = 99, minDamage = -60, maxDamage = -145, type = COMBAT_PHYSICALDAMAGE, range = 5, ShootEffect = CONST_ANI_THROWINGKNIFE, target = false}
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
