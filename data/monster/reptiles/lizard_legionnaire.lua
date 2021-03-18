local mType = Game.createMonsterType("Lizard Legionnaire")
local monster = {}

monster.description = "um lizard legionnaire"
monster.experience = 5200
monster.outfit = {
	lookType = 338,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 6200
monster.maxHealth = 6200
monster.race = "blood"
monster.corpse = 11273
monster.speed = 320
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
	canPushCreatures = false,
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
	{text = "Ssssss!", yell = false}
}

monster.loot = {
	{id = 2459, chance = 2500},
	{id = 2506, chance = 100},
	{id = 5881, chance = 3000},
	{id = 8880, chance = 80},
	{id = 11118, chance = 100},
	{id = 3982, chance = 600},
	{id = 2672, chance = 10200, maxCount = 5},
	{id = 2170, chance = 950},
	{id = 2149, chance = 700},
	{id = 2148, chance = 35000, maxCount = 65},
	{id = 2148, chance = 35000, maxCount = 65}
}

monster.attacks = {
	{name ="melee", interval = 1900, chance = 100, minDamage = -160, maxDamage = -280},
	{name ="combat", interval = 2300, chance = 25, minDamage = -120, maxDamage = -200, range = 5, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 2600, chance = 30, minDamage = -150, maxDamage = -210, type = COMBAT_PHYSICALDAMAGE, range = 6, ShootEffect = CONST_ANI_SPEAR, target = false},
	{name ="combat", interval = 3150, chance = 30, minDamage = -100, maxDamage = -150, range = 6, type = COMBAT_PHYSICALDAMAGE, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_GREEN_RINGS, target = true},
	{name ="condition", type = CONDITION_POISON, interval = 4000, chance = 30, minDamage = -200, maxDamage = -320, range = 1, effect = CONST_ME_GREEN_RINGS, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 85},
	{type = COMBAT_FIREDAMAGE, percent = 35},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 35},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
