local mType = Game.createMonsterType("Edoras Guard")
local monster = {}

monster.description = "um guarda de edoras"
monster.experience = 0
monster.outfit = {
	lookType = 268,
	lookHead = 97,
	lookBody = 88,
	lookLegs = 0,
	lookFeet = 79,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 3000
monster.maxHealth = 3000
monster.race = "blood"
monster.corpse = 3058
monster.speed = 160
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 30
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = false,
	convinceable = false,
	pushable = true,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 50,
	targetDistance = 4,
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
	{text = "Estamos sendo atacados!", yell = true}
}

monster.loot = {
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -250},
	{name ="combat", interval = 2500, chance = 99, minDamage = -80, maxDamage = -200, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_SPEAR, target = true}
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
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
