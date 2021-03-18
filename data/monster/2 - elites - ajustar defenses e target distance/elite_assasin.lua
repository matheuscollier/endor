local mType = Game.createMonsterType("Elite Assassin")
local monster = {}

monster.description = "um elite assassin"
monster.experience = 0
monster.outfit = {
	lookType = 129,
	lookHead = 95,
	lookBody = 95,
	lookLegs = 95,
	lookFeet = 95,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 625
monster.maxHealth = 625
monster.race = "undead"
monster.corpse = 0
monster.speed = 210
monster.manaCost = 450
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 5
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Die!", yell = false},
	{text = "Feel the hand of death!", yell = false},
	{text = "You are on my deathlist!", yell = false}
}

monster.loot = {
}

monster.attacks = {
	{name ="melee", interval = 1500, chance = 100, minDamage = -90, maxDamage = -135},
	{name ="combat", interval = 3000, chance = 99, minDamage = -58, maxDamage = -118, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_THROWINGSTAR, target = false},
	{name ="drunk", interval = 5000, chance = 25, range = 6, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="invisible", interval = 6000, chance = 10, effect = CONST_ME_MAGIC_BLUE}
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
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
