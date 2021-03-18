local mType = Game.createMonsterType("Retching Horror")
local monster = {}

monster.description = "Retching Horror"
monster.experience = 9000
monster.outfit = {
	lookType = 588,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 8700
monster.maxHealth = 8700
monster.race = "fire"
monster.corpse = 22508
monster.speed = 250
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
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
	{text = "Wait for us, little maggot...", yell = false},
	{text = "We will devour you...", yell = false},
	{text = "My little beetles, go forth, eat, feast!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2152, chance = 100000, maxCount = 9},
	{id = 2514, chance = 120},
	{id = 8889, chance = 100},
	{id = 18400, chance = 350},
	{id = 22363, chance = 3700},
	{id = 2789, chance = 14000, maxCount = 2},
	{id = 7590, chance = 12500},
	{id = 22539, chance = 16400},
	{id = 22541, chance = 14000}
}

monster.attacks = {
	{name ="melee", interval = 1800, chance = 100, minDamage = -600, maxDamage = -800},
	{name ="drunk", interval = 2000, chance = 10, length = 4, spread = 3, effect = CONST_ME_MAGIC_GREEN, target = true},
	{name ="speed", interval = 2000, chance = 15, SpeedChange = 0, Duration = 15000},
	{name ="combat", interval = 2000, chance = 15, minDamage = -380, maxDamage = -600, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_HITAREA, target = false},
	{name ="combat", interval = 2000, chance = 15, minDamage = -420, maxDamage = -620, type = COMBAT_PHYSICALDAMAGE, ShootEffect = CONST_ANI_SNIPERARROW, target = true},
	{name ="combat", interval = 2000, chance = 10, minDamage = -200, maxDamage = -350, type = COMBAT_FIREDAMAGE, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 35},
	{type = COMBAT_FIREDAMAGE, percent = 70},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 15},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
