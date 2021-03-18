local mType = Game.createMonsterType("Wyvern")
local monster = {}

monster.description = "um wyvern"
monster.experience = 515
monster.outfit = {
	lookType = 239,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 795
monster.maxHealth = 795
monster.race = "blood"
monster.corpse = 6302
monster.speed = 270
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
	runHealth = 100,
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
	{text = "Shiiiiiek", yell = true}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 40},
	{id = 2672, chance = 3000, maxCount = 3},
	{id = 1976, chance = 3333},
	{id = 10561, chance = 2600},
	{id = 13758, chance = 2000},
	{id = 2547, chance = 1000, maxCount = 3},
	{id = 2647, chance = 270},
	{id = 7408, chance = 300},
	{id = 2127, chance = 1818},
	{id = 2187, chance = 600},
	{id = 2146, chance = 100}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -70, maxDamage = -170, condition = {type = CONDITION_POISON, startDamage = 30, interval = 4000}},
	{name ="combat", interval = 3000, chance = 12, minDamage = -30, maxDamage = -120, length = 8, spread = 3, type = COMBAT_EARTHDAMAGE, effect = CONST_ME_POISONAREA, target = false},
	{name ="melee", interval = 2000, chance = 12, minDamage = -30, maxDamage = -120},
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -240, maxDamage = -240, length = 8, spread = 3, effect = CONST_ME_POISONAREA, target = false},
	{name ="drunk", interval = 4000, chance = 2, range = 7, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_SOUND_RED, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 2200, chance = 22, minDamage = 34, maxDamage = 60, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 90},
	{type = COMBAT_FIREDAMAGE, percent = 50},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
