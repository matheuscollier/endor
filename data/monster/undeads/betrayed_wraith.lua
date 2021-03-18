local mType = Game.createMonsterType("Betrayed Wraith")
local monster = {}

monster.description = "uma betrayed wraith"
monster.experience = 3500
monster.outfit = {
	lookType = 233,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 4200
monster.maxHealth = 4200
monster.race = "undead"
monster.corpse = 6316
monster.speed = 230
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 15
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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 300,
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
	{text = "Rrrah!", yell = false},
	{text = "Gnarr!", yell = false},
	{text = "Tcharrr!", yell = false}
}

monster.loot = {
	{id = 2145, chance = 1800, maxCount = 4},
	{id = 2148, chance = 100000, maxCount = 200},
	{id = 2152, chance = 20000, maxCount = 8},
	{id = 5741, chance = 900},
	{id = 6500, chance = 930},
	{id = 7368, chance = 1080, maxCount = 5},
	{id = 2393, chance = 600}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 290, maxDamage = -420},
	{name ="betrayed wraith skill reducer", interval = 2000, chance = 10, target = false},
	{name ="speed", interval = 2000, chance = 20, SpeedChange = -600, Duration = 3000}
}

monster.defenses = {
	defense = 55,
	armor = 55,
	{name ="combat", interval = 2000, chance = 30, minDamage = 150, maxDamage = 200, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="invisible", interval = 2000, chance = 10, effect = CONST_ME_DRAWBLOOD},
	{name ="speed", interval = 2000, chance = 15, SpeedChange = 460, Duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 50},
	{type = COMBAT_HOLYDAMAGE , percent = -20},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
