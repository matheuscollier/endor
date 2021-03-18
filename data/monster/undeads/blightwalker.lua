local mType = Game.createMonsterType("Blightwalker")
local monster = {}

monster.description = "um blightwalker"
monster.experience = 4950
monster.outfit = {
	lookType = 246,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 8900
monster.maxHealth = 8900
monster.race = "undead"
monster.corpse = 6354
monster.speed = 280
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 7000,
	chance = 8
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
	{text = "I can see you decaying!", yell = false},
	{text = "Let me taste your mortality!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 25000, maxCount = 98},
	{id = 2230, chance = 6666},
	{id = 2436, chance = 400},
	{id = 7388, chance = 70},
	{id = 2260, chance = 4500},
	{id = 6500, chance = 2222, maxCount = 2},
	{id = 5944, chance = 1667},
	{id = 2550, chance = 5000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -120, maxDamage = -240},
	{name ="combat", interval = 2400, chance = 99, minDamage = -150, maxDamage = -400, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2150, chance = 25, minDamage = -150, maxDamage = -350, type = COMBAT_MANADRAIN, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2450, chance = 20, minDamage = -200, maxDamage = -300, type = COMBAT_DEATHDAMAGE, effect = CONST_ME_MORTAREA, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 3100, chance = 50, minDamage = 75, maxDamage = 125, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 25},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 25},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 25},
	{type = COMBAT_HOLYDAMAGE , percent = 5},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
