local mType = Game.createMonsterType("Eddie")
local monster = {}

monster.description = "Eddie"
monster.experience = 80000
monster.outfit = {
	lookType = 90,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 55000
monster.maxHealth = 55000
monster.race = "blood"
monster.corpse = 6025
monster.speed = 300
monster.manaCost = 0
monster.maxSummons = 10

monster.changeTarget = {
	interval = 5500,
	chance = 40
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
	staticAttackChance = 0,
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
	{name = "Crypt Shambler", chance = 100, interval = 2100},
	{name = "Mummy", chance = 100, interval = 2000},
	{name = "Demon Skeleton", chance = 100, interval = 1850}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "The evil that men do lives on!", yell = false},
	{text = "Eddie is gonna get you no matter how far!", yell = false},
	{text = "Show them no fear! Show them no pain!", yell = false},
	{text = "Enter the risen Osiris", yell = false}
}

monster.loot = {
	{id = 2443, chance = 2500},
	{id = 2176, chance = 40000},
	{id = 2539, chance = 1300},
	{id = 8865, chance = 1200},
	{id = 2185, chance = 38000},
	{id = 2663, chance = 38000},
	{id = 7885, chance = 15000},
	{id = 7893, chance = 12000},
	{id = 2663, chance = 2200}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -800},
	{name ="combat", interval = 2750, chance = 35, minDamage = -400, maxDamage = -700, type = COMBAT_LIFEDRAIN, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2320, chance = 65, minDamage = -600, maxDamage = -800, type = COMBAT_DEATHDAMAGE, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2100, chance = 20, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_POISONARROW, target = false, condition = {type = CONDITION_POISON, totalDamage = 840, interval = 4000}},
	{name ="combat", interval = 1900, chance = 99, minDamage = -450, maxDamage = -750, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_BURSTARROW, effect = CONST_ME_EXPLOSIONAREA, target = false},
	{name ="speed", interval = 2350, chance = 20, SpeedChange = -600, Duration = 5000}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 500, chance = 100, minDamage = 250, maxDamage = 300, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 70},
	{type = COMBAT_ENERGYDAMAGE, percent = 60},
	{type = COMBAT_EARTHDAMAGE, percent = 95},
	{type = COMBAT_FIREDAMAGE, percent = 80},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 60},
	{type = COMBAT_HOLYDAMAGE , percent = 60},
	{type = COMBAT_DEATHDAMAGE , percent = 95}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
