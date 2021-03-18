local mType = Game.createMonsterType("Vampire Viscount")
local monster = {}

monster.description = "um vampire viscount"
monster.experience = 21500
monster.outfit = {
	lookType = 555,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 18000
monster.maxHealth = 18000
monster.race = "blood"
monster.corpse = 21278
monster.speed = 485
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 8000,
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
	{text = "All I need is your blood.", yell = false},
	{text = "Dead is the new alive.", yell = false},
	{text = "Come, let me kiss you, darling. Oh wait, I meant kill.", yell = false}
}

monster.loot = {
	{id = 8865, chance = 250},
	{id = 2534, chance = 330},
	{id = 6132, chance = 280},
	{id = 30884, chance = 15},
	{id = 10602, chance = 2500},
	{id = 2145, chance = 4000},
	{id = 2148, chance = 10000, maxCount = 84},
	{id = 2148, chance = 5000, maxCount = 84},
	{id = 2148, chance = 12000, maxCount = 84},
	{id = 6546, chance = 20},
	{id = 2144, chance = 800, maxCount = 4},
	{id = 2796, chance = 5900, maxCount = 3}
}

monster.attacks = {
	{name ="melee", interval = 1500, chance = 100, minDamage = -780, maxDamage = -920},
	{name ="combat", interval = 2720, chance = 33, minDamage = -850, maxDamage = -1150, type = COMBAT_LIFEDRAIN, length = 7, spread = 3, effect = CONST_ME_DRAWBLOOD, target = false},
	{name ="combat", interval = 2280, chance = 16, minDamage = -750, maxDamage = -910, type = COMBAT_DEATHDAMAGE, range = 4, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 3805, chance = 35, minDamage = -890, maxDamage = -1050, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_GROUNDSHAKER, target = true},
	{name ="speed", interval = 4000, chance = 35, SpeedChange = -500, Duration = 4000}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 4220, chance = 35, minDamage = 250, maxDamage = 650, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 19},
	{type = COMBAT_EARTHDAMAGE, percent = 52},
	{type = COMBAT_FIREDAMAGE, percent = 15},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 22},
	{type = COMBAT_HOLYDAMAGE , percent = 5},
	{type = COMBAT_DEATHDAMAGE , percent = 82}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
