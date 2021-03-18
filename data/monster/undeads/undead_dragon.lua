local mType = Game.createMonsterType("Undead Dragon")
local monster = {}

monster.description = "um undead dragon"
monster.experience = 5100
monster.outfit = {
	lookType = 231,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 8350
monster.maxHealth = 8350
monster.race = "undead"
monster.corpse = 6306
monster.speed = 270
monster.manaCost = 0
monster.maxSummons = 4

monster.changeTarget = {
	interval = 2000,
	chance = 5
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 95,
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
	{name = "bonebeast", chance = 10, interval = 1000}
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = 2470, chance = 5},
	{id = 2387, chance = 600},
	{id = 2230, chance = 15000},
	{id = 2229, chance = 15000},
	{id = 2148, chance = 100000, maxCount = 80},
	{id = 2148, chance = 100000, maxCount = 80},
	{id = 2148, chance = 100000, maxCount = 80},
	{id = 6500, chance = 10000},
	{id = 2547, chance = 20000, maxCount = 2}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -240, maxDamage = -360},
	{name ="combat", interval = 1850, chance = 20, minDamage = -150, maxDamage = -250, type = COMBAT_FIREDAMAGE, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false},
	{name ="speed", interval = 7000, chance = 35, SpeedChange = -600, Duration = 6000}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 2800, chance = 16, minDamage = 100, maxDamage = 300, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 40},
	{type = COMBAT_EARTHDAMAGE, percent = 90},
	{type = COMBAT_FIREDAMAGE, percent = 40},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 40},
	{type = COMBAT_HOLYDAMAGE , percent = 25},
	{type = COMBAT_DEATHDAMAGE , percent = 95}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
