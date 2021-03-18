local mType = Game.createMonsterType("Stone Rhino")
local monster = {}

monster.description = "um stone rhino"
monster.experience = 2500
monster.outfit = {
	lookType = 936,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 2000
monster.maxHealth = 2000
monster.race = "blood"
monster.corpse = 27750
monster.speed = 285
monster.manaCost = 290
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 0
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 15,
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
	{text = "Snarl!", yell = false},
	{text = "SNIFF!", yell = false}
}

monster.loot = {
	{id = 5925, chance = 50320},
	{id = 27054, chance = 50320},
	{id = 27056, chance = 50320},
	{id = 27057, chance = 50320},
	{id = 2528, chance = 620},
	{id = 2476, chance = 900},
	{id = 2645, chance = 750}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -260, maxDamage = -420},
	{name ="combat", interval = 2000, chance = 10, minDamage = 200, maxDamage = 315, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_SMALLSTONE, target = false}
}

monster.defenses = {
	defense = 5,
	armor = 10
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 90},
	{type = COMBAT_FIREDAMAGE, percent = 15},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 5},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
