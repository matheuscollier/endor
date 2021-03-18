local mType = Game.createMonsterType("Phantasm")
local monster = {}

monster.description = "a phantasm"
monster.experience = 4400
monster.outfit = {
	lookType = 241,
	lookHead = 20,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 3950
monster.maxHealth = 3950
monster.race = "undead"
monster.corpse = 6344
monster.speed = 280
monster.manaCost = 0
monster.maxSummons = 4

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

monster.summons = {
	{name = "Phantasm summon", chance = 20, interval = 3000}
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
	{id = 2148, chance = 80000, maxCount = 70},
	{id = 2230, chance = 2000},
	{id = 2804, chance = 950, maxCount = 2},
	{id = 2260, chance = 1300},
	{id = 5944, chance = 900},
	{id = 8868, chance = 270},
	{id = 8879, chance = 30},
	{id = 2149, chance = 100}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 75, attack = 56},
	{name ="combat", interval = 2000, chance = 10, minDamage = -150, maxDamage = -300, type = COMBAT_EARTHDAMAGE, range = 7, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true},
	{name ="poisonfield", interval = 1000, chance = 14, range = 7, ShootEffect = CONST_ANI_POISON, target = true},
	{name ="combat", interval = 3000, chance = 20, minDamage = -100, maxDamage = -300, type = COMBAT_MANADRAIN, range = 7, effect = CONST_ME_MAGIC_RED, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 1000, chance = 50, minDamage = 75, maxDamage = 125, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 100},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = -15},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
