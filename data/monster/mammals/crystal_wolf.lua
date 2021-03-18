local mType = Game.createMonsterType("crystal wolf")
local monster = {}

monster.description = "a crystal wolf"
monster.experience = 275
monster.outfit = {
	lookType = 391,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 750
monster.maxHealth = 750
monster.race = "blood"
monster.corpse = 13594
monster.speed = 195
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 0
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
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 8,
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
	{text = "Raaarrr!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 50000, maxCount = 34},
	{id = 2666, chance = 90000, maxCount = 4},
	{id = 8878, chance = 1000}
}

monster.attacks = {
	{name ="melee", interval = 1500, chance = 100, skill = 34, attack = 33},
	{name ="combat", interval = 3000, chance = 18, minDamage = -30, maxDamage = -80, type = COMBAT_EARTHDAMAGE, length = 3, spread = 3, effect = CONST_ME_BIGPLANTS, target = false},
	{name ="combat", interval = 2000, chance = 9, minDamage = -20, maxDamage = -55, type = COMBAT_MANADRAIN, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="combat", interval = 2000, chance = 9, minDamage = -10, maxDamage = -55, type = COMBAT_ICEDAMAGE, length = 3, spread = 4, effect = CONST_ME_ICEAREA, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 2000, chance = 15, minDamage = 5, maxDamage = 75, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
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
