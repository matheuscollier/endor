local mType = Game.createMonsterType("Yeti")
local monster = {}

monster.description = "um yeti"
monster.experience = 460
monster.outfit = {
	lookType = 110,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 950
monster.maxHealth = 950
monster.race = "blood"
monster.corpse = 3055
monster.speed = 280
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 10
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
	staticAttackChance = 95,
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
	{text = "Yooodelaaahooohooo!", yell = false}
}

monster.loot = {
	{id = 2532, chance = 300},
	{id = 2111, chance = 30000, maxCount = 10},
	{id = 5909, chance = 4000},
	{id = 5896, chance = 20000, maxCount = 3},
	{id = 5896, chance = 20000, maxCount = 3},
	{id = 2148, chance = 95000, maxCount = 60},
	{id = 2644, chance = 10},
	{id = 2668, chance = 10000, maxCount = 2}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -80, maxDamage = -180},
	{name ="combat", interval = 3150, chance = 99, minDamage = -60, maxDamage = -140, type = COMBAT_PHYSICALDAMAGE, range = 6, ShootEffect = CONST_ANI_SNOWBALL, effect = CONST_ME_POFF, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
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
