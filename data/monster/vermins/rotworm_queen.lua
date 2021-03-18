local mType = Game.createMonsterType("Wormageddon")
local monster = {}

monster.description = "Wormageddon"
monster.experience = 30000
monster.outfit = {
	lookType = 295,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 36000
monster.maxHealth = 36000
monster.race = "blood"
monster.corpse = 8947
monster.speed = 160
monster.manaCost = 0
monster.maxSummons = 6

monster.changeTarget = {
	interval = 6000,
	chance = 35
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
	canPushCreatures = false,
	staticAttackChance = 50,
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
	{name = "carrion worm", chance = 25, interval = 3000, max = 2}
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = 7886, chance = 3600},
	{id = 2483, chance = 55000},
	{id = 2475, chance = 5600},
	{id = 7382, chance = 350},
	{id = 2181, chance = 9350},
	{id = 7379, chance = 500},
	{id = 3976, chance = 20000, maxCount = 45},
	{id = 5953, chance = 12000},
	{id = 2150, chance = 800},
	{id = 2144, chance = 2600, maxCount = 3},
	{id = 2143, chance = 2600, maxCount = 3},
	{id = 2145, chance = 2600, maxCount = 3},
	{id = 7590, chance = 38000},
	{id = 2197, chance = 10000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -550, maxDamage = -850},
	{name ="combat", interval = 2600, chance = 30, minDamage = -260, maxDamage = -430, type = COMBAT_EARTHDAMAGE, range = 7, ShootEffect = CONST_ANI_POISON, target = true},
	{name ="combat", interval = 2100, chance = 35, minDamage = -160, maxDamage = -240, type = COMBAT_EARTHDAMAGE, length = 5, spread = 3, effect = CONST_ME_BIGPLANTS, target = false},
	{name ="speed", interval = 2000, chance = 20, SpeedChange = -850, Duration = 7000}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 2500, chance = 35, minDamage = 120, maxDamage = 220, type = COMBAT_HEALING, effect = CONST_ME_HOLYAREA, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
