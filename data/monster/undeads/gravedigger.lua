local mType = Game.createMonsterType("Gravedigger")
local monster = {}

monster.description = "a gravedigger"
monster.experience = 4500
monster.outfit = {
	lookType = 558,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 3800
monster.maxHealth = 3800
monster.race = "blood"
monster.corpse = 21279
monster.speed = 370
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
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
	{text = "High Five!", yell = false},
	{text = "No... don't go further, stranger... danger lies in every step...", yell = false},
	{text = "scratch", yell = false}
}

monster.loot = {
	{id = 2148, chance = 23000, maxCount = 140},
	{id = 12440, chance = 4000},
	{id = 8865, chance = 500},
	{id = 2436, chance = 800},
	{id = 2187, chance = 900},
	{id = 11240, chance = 5}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -40, maxDamage = -320, condition = {type = CONDITION_POISON, startDamage = 20, interval = 4000}},
	{name ="combat", interval = 2000, chance = 15, minDamage = -200, maxDamage = -250, type = COMBAT_MANADRAIN, range = 7, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="combat", interval = 1000, chance = 20, minDamage = -200, maxDamage = -350, type = COMBAT_DEATHDAMAGE, range = 2, ShootEffect = CONST_ANI_SUDDENDEATH, target = false},
	{name ="drunk", interval = 1000, chance = 15, range = 7, effect = CONST_ME_MAGIC_RED, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="speed", interval = 2000, chance = 6, SpeedChange = 500, Duration = 10000},
	{name ="combat", interval = 2000, chance = 25, minDamage = 100, maxDamage = 195, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="invisible", interval = 1000, chance = 9, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 40},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 40},
	{type = COMBAT_HOLYDAMAGE , percent = 45},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
