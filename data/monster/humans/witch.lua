local mType = Game.createMonsterType("Witch")
local monster = {}

monster.description = "uma witch"
monster.experience = 120
monster.outfit = {
	lookType = 54,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 300
monster.maxHealth = 300
monster.race = "blood"
monster.corpse = 20535
monster.speed = 204
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 50
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
	staticAttackChance = 95,
	targetDistance = 4,
	runHealth = 30,
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
	{text = "Horax pokti!", yell = false},
	{text = "Hihihihi!", yell = false},
	{text = "Herba budinia ex!", yell = false}
}

monster.loot = {
	{id = 2551, chance = 20000},
	{id = 2654, chance = 50000},
	{id = 13537, chance = 2000},
	{id = 2696, chance = 40000},
	{id = 2651, chance = 20000},
	{id = 2687, chance = 30000, maxCount = 8},
	{id = 2199, chance = 2500},
	{id = 2148, chance = 10000, maxCount = 30},
	{id = 2643, chance = 50000},
	{id = 2405, chance = 40000},
	{id = 2402, chance = 500},
	{id = 2800, chance = 9000},
	{id = 2185, chance = 1000},
	{id = 2129, chance = 10000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -15, maxDamage = -30},
	{name ="combat", interval = 5500, chance = 66, minDamage = -25, maxDamage = -55, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = false},
	{name ="firefield", interval = 3250, chance = 99, range = 7, ShootEffect = CONST_ANI_FIRE, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
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
