local mType = Game.createMonsterType("Bloodboil")
local monster = {}

monster.description = "um bloodboil"
monster.experience = 16500
monster.outfit = {
	lookType = 130,
	lookHead = 0,
	lookBody = 77,
	lookLegs = 78,
	lookFeet = 97,
	lookAddons = 2,
	lookMount = 0
}

monster.health = 12000
monster.maxHealth = 12000
monster.race = "blood"
monster.corpse = 3058
monster.speed = 390
monster.manaCost = 0
monster.maxSummons = 2

monster.changeTarget = {
	interval = 4000,
	chance = 100
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
	staticAttackChance = 95,
	targetDistance = 3,
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
	{name = "hellfire fighter", chance = 40, interval = 1000, max = 1}
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = 8885, chance = 80},
	{id = 7894, chance = 1650},
	{id = 2656, chance = 2050},
	{id = 2123, chance = 50},
	{id = 2173, chance = 600},
	{id = 2152, chance = 30000, maxCount = 3},
	{id = 2148, chance = 80000, maxCount = 100},
	{id = 2167, chance = 2000}
}

monster.attacks = {
	{name ="melee", interval = 1800, chance = 100, minDamage = -120, maxDamage = -200},
	{name ="speed", interval = 5400, chance = 25, SpeedChange = -600, Duration = 4000},
	{name ="combat", interval = 1800, chance = 80, minDamage = -500, maxDamage = -600, type = COMBAT_HOLYDAMAGE, range = 7, effect = CONST_ME_HOLYAREA, target = true},
	{name ="combat", interval = 2300, chance = 50, minDamage = -520, maxDamage = -620, type = COMBAT_HOLYDAMAGE, range = 7, effect = CONST_ME_HOLYAREA, target = true}
}

monster.defenses = {
	defense = 5,
	armor = 10
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 60},
	{type = COMBAT_EARTHDAMAGE, percent = 45},
	{type = COMBAT_FIREDAMAGE, percent = 95},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 95},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
