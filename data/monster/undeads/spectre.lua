local mType = Game.createMonsterType("Spectre")
local monster = {}

monster.description = "um spectre"
monster.experience = 1800
monster.outfit = {
	lookType = 235,
	lookHead = 20,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 1350
monster.maxHealth = 1350
monster.race = "undead"
monster.corpse = 6348
monster.speed = 250
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
	{text = "Revenge ... is so ... sweet!", yell = false},
	{text = "Life...force! Feed me your... lifeforce!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 15000, maxCount = 100},
	{id = 2148, chance = 15000, maxCount = 100},
	{id = 2148, chance = 15000, maxCount = 100},
	{id = 2260, chance = 6667},
	{id = 2260, chance = 3333},
	{id = 5909, chance = 2222},
	{id = 2134, chance = 2857},
	{id = 2642, chance = 5000},
	{id = 2071, chance = 1818},
	{id = 2189, chance = 1333},
	{id = 6500, chance = 2857},
	{id = 5944, chance = 1429},
	{id = 2136, chance = 150}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -136, maxDamage = -240},
	{name ="combat", interval = 2300, chance = 18, minDamage = -150, maxDamage = -250, range = 7, type = COMBAT_FIREDAMAGE, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_SOUND_RED, target = true},
	{name ="poisonfield", interval = 1000, chance = 17, range = 7, ShootEffect = CONST_ANI_POISON, target = true},
	{name ="combat", interval = 3000, chance = 25, minDamage = -10, maxDamage = -100, type = COMBAT_MANADRAIN, range = 7, effect = CONST_ME_MAGIC_RED, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 1000, chance = 25, minDamage = 75, maxDamage = 125, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
