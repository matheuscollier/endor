local mType = Game.createMonsterType("Hand of Cursed Fate")
local monster = {}

monster.description = "uma hand of cursed fate"
monster.experience = 4850
monster.outfit = {
	lookType = 230,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 10500
monster.maxHealth = 10500
monster.race = "undead"
monster.corpse = 6312
monster.speed = 290
monster.manaCost = 690
monster.maxSummons = 0

monster.changeTarget = {
	interval = 7000,
	chance = 10
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 300,
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
}

monster.loot = {
	{id = 2148, chance = 70000, maxCount = 100},
	{id = 2178, chance = 1000},
	{id = 6558, chance = 1000},
	{id = 2187, chance = 1000},
	{id = 2153, chance = 1000},
	{id = 5799, chance = 1000}
}

monster.attacks = {
	{name ="melee", interval = 1800, chance = 100, minDamage = -160, maxDamage = -480},
	{name ="combat", interval = 1200, chance = 40, minDamage = -160, maxDamage = -320, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 4200, chance = 25, minDamage = -200, maxDamage = -800, type = COMBAT_MANADRAIN, range = 6, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="invisible", interval = 9000, chance = 60, effect = CONST_ME_MAGIC_BLUE},
	{name ="combat", interval = 6000, chance = 30, minDamage = 200, maxDamage = 400, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 30},
	{type = COMBAT_FIREDAMAGE, percent = 60},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 40},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 60}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
