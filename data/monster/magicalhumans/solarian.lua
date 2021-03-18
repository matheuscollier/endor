local mType = Game.createMonsterType("Solarian")
local monster = {}

monster.description = "um solarian"
monster.experience = 14500
monster.outfit = {
	lookType = 130,
	lookHead = 78,
	lookBody = 76,
	lookLegs = 94,
	lookFeet = 115,
	lookAddons = 2,
	lookMount = 0
}

monster.health = 11500
monster.maxHealth = 11500
monster.race = "blood"
monster.corpse = 3058
monster.speed = 410
monster.manaCost = 0
monster.maxSummons = 4

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
	{name = "fire elemental", chance = 50, interval = 1000, max = 1}
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = 2662, chance = 2000},
	{id = 2187, chance = 1500},
	{id = 8886, chance = 80},
	{id = 7894, chance = 1650},
	{id = 2173, chance = 600},
	{id = 7431, chance = 120},
	{id = 2152, chance = 80000, maxCount = 3},
	{id = 2148, chance = 30000, maxCount = 100},
	{id = 2197, chance = 650},
	{id = 2167, chance = 2000}
}

monster.attacks = {
	{name ="melee", interval = 1900, chance = 100, minDamage = -120, maxDamage = -200},
	{name ="speed", interval = 5400, chance = 25, SpeedChange = -500, Duration = 4000},
	{name ="combat", interval = 1800, chance = 100, minDamage = -470, maxDamage = -650, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, target = true}
}

monster.defenses = {
	defense = 5,
	armor = 10
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
	{type = COMBAT_ENERGYDAMAGE, percent = 35},
	{type = COMBAT_EARTHDAMAGE, percent = 30},
	{type = COMBAT_FIREDAMAGE, percent = 95},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 95},
	{type = COMBAT_DEATHDAMAGE , percent = 25}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
