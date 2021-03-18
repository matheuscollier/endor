local mType = Game.createMonsterType("Adept of the Cult")
local monster = {}

monster.description = "um adept of the cult"
monster.experience = 400
monster.outfit = {
	lookType = 194,
	lookHead = 114,
	lookBody = 94,
	lookLegs = 94,
	lookFeet = 57,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 430
monster.maxHealth = 430
monster.race = "blood"
monster.corpse = 20311
monster.speed = 180
monster.manaCost = 0
monster.maxSummons = 2

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

monster.summons = {
	{name = "Ghoul", chance = 50, interval = 3500}
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = 6087, chance = 100},
	{id = 2662, chance = 150},
	{id = 2656, chance = 80},
	{id = 2531, chance = 900},
	{id = 10556, chance = 1500},
	{id = 12448, chance = 1800},
	{id = 2148, chance = 100000, maxCount = 50},
	{id = 2146, chance = 500},
	{id = 2167, chance = 600},
	{id = 2169, chance = 420}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -35, maxDamage = -100},
	{name ="combat", interval = 1700, chance = 33, minDamage = -40, maxDamage = -70, type = COMBAT_HOLYDAMAGE, range = 3, ShootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE, target = false},
	{name ="condition", type = CONDITION_ENERGY, interval = 2000, chance = 99, minDamage = -20, maxDamage = -30, range = 7, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = false}
}

monster.defenses = {
	defense = 5,
	armor = 10
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 90},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
