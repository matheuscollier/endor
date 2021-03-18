local mType = Game.createMonsterType("Wild Warrior")
local monster = {}

monster.description = "um wild warrior"
monster.experience = 60
monster.outfit = {
	lookType = 131,
	lookHead = 38,
	lookBody = 38,
	lookLegs = 38,
	lookFeet = 38,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 135
monster.maxHealth = 135
monster.race = "blood"
monster.corpse = 20531
monster.speed = 190
monster.manaCost = 420
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
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
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 10,
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
	{text = "An enemy!", yell = false},
	{text = "Gimme your money!", yell = false}
}

monster.loot = {
	{id = 2459, chance = 1200},
	{id = 2511, chance = 3000},
	{id = 2465, chance = 600},
	{id = 2509, chance = 500},
	{id = 2398, chance = 2500},
	{id = 2648, chance = 5000},
	{id = 2391, chance = 30},
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2666, chance = 20000, maxCount = 2},
	{id = 2110, chance = 50}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -20, maxDamage = -50}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="speed", interval = 4000, chance = 20, SpeedChange = 200, Duration = 4000}
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
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
