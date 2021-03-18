local mType = Game.createMonsterType("Oxyurus")
local monster = {}

monster.description = "um oxyurus"
monster.experience = 13500
monster.outfit = {
	lookType = 295,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 12500
monster.maxHealth = 12500
monster.race = "blood"
monster.corpse = 8947
monster.speed = 270
monster.manaCost = 0
monster.maxSummons = 0

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

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = 2527, chance = 3150},
	{id = 2475, chance = 750},
	{id = 11355, chance = 600},
	{id = 2477, chance = 900},
	{id = 7452, chance = 300},
	{id = 3976, chance = 20000, maxCount = 45},
	{id = 2148, chance = 25000, maxCount = 320},
	{id = 2148, chance = 50000, maxCount = 70},
	{id = 2150, chance = 300, maxCount = 2},
	{id = 2144, chance = 300, maxCount = 2},
	{id = 2143, chance = 300, maxCount = 2},
	{id = 2145, chance = 300, maxCount = 2}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -336, maxDamage = -552},
	{name ="combat", interval = 2000, chance = 25, minDamage = -415, maxDamage = -730, type = COMBAT_EARTHDAMAGE, range = 7, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_GREEN_RINGS, target = true},
	{name ="combat", interval = 2500, chance = 45, minDamage = -275, maxDamage = -490, type = COMBAT_EARTHDAMAGE, length = 5, spread = 3, effect = CONST_ME_BIGPLANTS, target = false},
	{name ="speed", interval = 2100, chance = 20, SpeedChange = -800, Duration = 3000}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 15},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = 90},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 70},
	{type = COMBAT_HOLYDAMAGE , percent = 35},
	{type = COMBAT_DEATHDAMAGE , percent = 90}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
