local mType = Game.createMonsterType("Stampor")
local monster = {}

monster.description = "um stampor"
monster.experience = 2000
monster.outfit = {
	lookType = 381,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 2200
monster.maxHealth = 2200
monster.race = "blood"
monster.corpse = 13312
monster.speed = 380
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 10
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
	{text = "KRRRRRNG", yell = true}
}

monster.loot = {
	{id = 2148, chance = 31250, maxCount = 100},
	{id = 2148, chance = 31250, maxCount = 56},
	{id = 2152, chance = 15000, maxCount = 2},
	{id = 9970, chance = 1500, maxCount = 2},
	{id = 2476, chance = 650},
	{id = 2645, chance = 650},
	{id = 7452, chance = 300},
	{id = 13299, chance = 15000, maxCount = 2},
	{id = 13300, chance = 15000, maxCount = 3},
	{id = 13301, chance = 15000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 50, attack = 90},
	{name ="combat", interval = 2000, chance = 15, minDamage = -100, maxDamage = -200, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_SMALLSTONE, target = false},
	{name ="combat", interval = 1000, chance = 7, minDamage = -150, maxDamage = -250, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_POFF, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 2000, chance = 11, minDamage = 90, maxDamage = 120, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 45},
	{type = COMBAT_ENERGYDAMAGE, percent = 5},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = 5},
	{type = COMBAT_DEATHDAMAGE , percent = 15}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
