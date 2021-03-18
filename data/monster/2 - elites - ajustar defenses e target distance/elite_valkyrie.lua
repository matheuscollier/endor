local mType = Game.createMonsterType("Elite Valkyrie")
local monster = {}

monster.description = "uma elite valkyrie"
monster.experience = 0
monster.outfit = {
	lookType = 139,
	lookHead = 113,
	lookBody = 38,
	lookLegs = 76,
	lookFeet = 96,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 670
monster.maxHealth = 670
monster.race = "undead"
monster.corpse = 0
monster.speed = 190
monster.manaCost = 450
monster.maxSummons = 0

monster.changeTarget = {
	interval = 6000,
	chance = 10
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
	{text = "Stand still!", yell = false},
	{text = "One more head for me!", yell = false},
	{text = "Head off!", yell = false}
}

monster.loot = {
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -45, maxDamage = -90},
	{name ="combat", interval = 3000, chance = 99, minDamage = -75, maxDamage = -115, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_SPEAR, target = false}
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
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
