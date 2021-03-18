local mType = Game.createMonsterType("Medusa")
local monster = {}

monster.description = "uma medusa"
monster.experience = 14500
monster.outfit = {
	lookType = 330,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 11500
monster.maxHealth = 11500
monster.race = "blood"
monster.corpse = 10524
monster.speed = 390
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 9000,
	chance = 8
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
	{id = 10316, chance = 150},
	{id = 8888, chance = 750},
	{id = 2648, chance = 5000},
	{id = 11303, chance = 50},
	{id = 2393, chance = 2120},
	{id = 7380, chance = 420},
	{id = 2536, chance = 1250},
	{id = 25386, chance = 1200},
	{id = 11226, chance = 500},
	{id = 2148, chance = 25000, maxCount = 20},
	{id = 2148, chance = 25000, maxCount = 25},
	{id = 2148, chance = 25000, maxCount = 35},
	{id = 2169, chance = 450},
	{id = 2011, chance = 4200},
	{id = 2150, chance = 300},
	{id = 2144, chance = 300, maxCount = 2},
	{id = 2143, chance = 300, maxCount = 2},
	{id = 2145, chance = 300, maxCount = 2}
}

monster.attacks = {
	{name ="melee", interval = 1600, chance = 100, minDamage = -272, maxDamage = -464},
	{name ="speed", interval = 2100, chance = 25, SpeedChange = -800, Duration = 3000},
	{name ="combat", interval = 2000, chance = 35, minDamage = -370, maxDamage = -590, type = COMBAT_DEATHDAMAGE, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 2450, chance = 30, minDamage = -210, maxDamage = -390, type = COMBAT_LIFEDRAIN, effect = CONST_ME_YALAHARIGHOST, target = true},
	{name ="combat", interval = 2800, chance = 50, minDamage = -330, maxDamage = -570, type = COMBAT_EARTHDAMAGE, effect = CONST_ME_YELLOW_RINGS, target = true},
	{name ="outfit", interval = 2000, chance = 1, range = 7, target = true, duration = 3000, outfitMonster = "clay guardian"}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 90, maxDamage = 170, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 35},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = 95},
	{type = COMBAT_FIREDAMAGE, percent = 15},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 70},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 95}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
