local mType = Game.createMonsterType("Silencer")
local monster = {}

monster.description = "Silencer"
monster.experience = 7500
monster.outfit = {
	lookType = 585,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 7000
monster.maxHealth = 7000
monster.race = "blood"
monster.corpse = 22489
monster.speed = 360
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
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
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
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
	{text = "Prrrroooaaaah!!! PRROAAAH!!", yell = false},
	{text = "PRRRROOOOOAAAAAHHHH!!!", yell = false},
	{text = "HUUUSSSSSSSSH!!", yell = false},
	{text = "Hussssssh!!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2152, chance = 100000, maxCount = 5},
	{id = 2165, chance = 1200},
	{id = 2195, chance = 500},
	{id = 7387, chance = 80},
	{id = 7407, chance = 50},
	{id = 7885, chance = 70},
	{id = 7886, chance = 120},
	{id = 22608, chance = 5},
	{id = 22534, chance = 1500},
	{id = 22535, chance = 8410}
}

monster.attacks = {
	{name ="melee", interval = 1680, chance = 100, minDamage = -400, maxDamage = -670},
	{name ="combat", interval = 2000, chance = 15, minDamage = -40, maxDamage = -120, type = COMBAT_MANADRAIN, ShootEffect = CONST_ANI_ONYXARROW, effect = CONST_ME_MAGIC_RED, target = true},
	{name ="combat", interval = 2850, chance = 29, minDamage = -500, maxDamage = -700, type = COMBAT_LIFEDRAIN, length = 7, spread = 3, effect = CONST_ME_DRAWBLOOD, target = false},
	{name ="combat", interval = 3100, chance = 32, minDamage = -350, maxDamage = -495, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_DRAWBLOOD, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="speed", interval = 2000, chance = 15, SpeedChange = 450, Duration = 5000},
	{name ="combat", interval = 2000, chance = 10, minDamage = 220, maxDamage = 425, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 30},
	{type = COMBAT_FIREDAMAGE, percent = 25},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 15},
	{type = COMBAT_DEATHDAMAGE , percent = 80}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
