local mType = Game.createMonsterType("Saurons Possessed Beholder")
local monster = {}

monster.description = "um saurons possessed beholder"
monster.experience = 15000
monster.outfit = {
	lookType = 256,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 11000
monster.maxHealth = 11000
monster.race = "undead"
monster.corpse = 6037
monster.speed = 270
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 8000,
	chance = 28
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
	staticAttackChance = 90,
	targetDistance = 5,
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
	{text = "Let me see you...", yell = false},
	{text = "I can see your death!!!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 35000, maxCount = 59},
	{id = 2148, chance = 35000, maxCount = 59},
	{id = 3972, chance = 1500},
	{id = 2518, chance = 1800},
	{id = 5898, chance = 10000, maxCount = 5},
	{id = 8865, chance = 90},
	{id = 7895, chance = 120},
	{id = 2436, chance = 800},
	{id = 2163, chance = 3000},
	{id = 10580, chance = 1000},
	{id = 2148, chance = 80000, maxCount = 100},
	{id = 2149, chance = 950},
	{id = 2127, chance = 1200},
	{id = 2167, chance = 750}
}

monster.attacks = {
	{name ="melee", interval = 1720, chance = 100, minDamage = -288, maxDamage = -504},
	{name ="combat", interval = 2500, chance = 25, minDamage = -150, maxDamage = -250, type = COMBAT_ENERGYDAMAGE, range = 7, ShootEffect = CONST_ANI_ENERGY, target = true},
	{name ="combat", interval = 2650, chance = 30, minDamage = -180, maxDamage = -280, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 2100, chance = 35, minDamage = -170, maxDamage = -390, type = COMBAT_DEATHDAMAGE, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 3000, chance = 25, minDamage = -230, maxDamage = -270, type = COMBAT_EARTHDAMAGE, range = 7, ShootEffect = CONST_ANI_POISON, target = true},
	{name ="combat", interval = 1823, chance = 25, minDamage = -75, maxDamage = -355, type = COMBAT_LIFEDRAIN, range = 7, effect = CONST_ME_MAGIC_RED, target = true},
	{name ="combat", interval = 3110, chance = 25, minDamage = -50, maxDamage = -240, type = COMBAT_MANADRAIN, range = 1, effect = CONST_ME_LOSEENERGY, target = true},
	{name ="speed", interval = 10000, chance = 70, SpeedChange = -400, Duration = 8000}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 35},
	{type = COMBAT_ENERGYDAMAGE, percent = 35},
	{type = COMBAT_EARTHDAMAGE, percent = 35},
	{type = COMBAT_FIREDAMAGE, percent = 35},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 35},
	{type = COMBAT_HOLYDAMAGE , percent = 35},
	{type = COMBAT_DEATHDAMAGE , percent = 35}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
