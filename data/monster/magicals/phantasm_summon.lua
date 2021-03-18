local mType = Game.createMonsterType("Phantasm")
local monster = {}

monster.description = "a phantasm"
monster.experience = 0
monster.outfit = {
	lookType = 241,
	lookHead = 20,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 65
monster.maxHealth = 65
monster.race = "undead"
monster.corpse = 6344
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
	pushable = true,
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
	{text = "Oh my, you forgot to put your pants on!", yell = false},
	{text = "Weeheeheeheehee!", yell = false},
	{text = "Its nothing but a dream!", yell = false},
	{text = "Give in!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 70, attack = 90, condition = {type = CONDITION_POISON, startDamage = 50, interval = 4000}},
	{name ="combat", interval = 1000, chance = 10, minDamage = -150, maxDamage = -150, range = 7, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true},
	{name ="poisonfield", interval = 1000, chance = 17, range = 7, ShootEffect = CONST_ANI_POISON, target = true},
	{name ="combat", interval = 1000, chance = 25, minDamage = -100, maxDamage = -200, type = COMBAT_MANADRAIN, range = 7, effect = CONST_ME_MAGIC_RED, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
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
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
