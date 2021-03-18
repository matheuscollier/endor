local mType = Game.createMonsterType("Wailing Widow")
local monster = {}

monster.description = "a wailing widow"
monster.experience = 350
monster.outfit = {
	lookType = 347,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 850
monster.maxHealth = 850
monster.race = "venom"
monster.corpse = 11310
monster.speed = 280
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
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
	runHealth = 366,
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
	{text = "EMBRACE MY GIFTS!", yell = true},
	{text = "I WILL FEAST ON YOUR SOUL!", yell = true}
}

monster.loot = {
	{id = 2148, chance = 25000, maxCount = 55},
	{id = 5879, chance = 7000},
	{id = 2463, chance = 1000},
	{id = 2647, chance = 1000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 50, attack = 40, condition = {type = CONDITION_POISON, startDamage = 20, interval = 4000}},
	{name ="drunk", interval = 2000, chance = 10, effect = CONST_ME_SOUND_RED, target = true},
	{name ="combat", interval = 2000, chance = 15, minDamage = -40, maxDamage = -50, type = COMBAT_LIFEDRAIN, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2000, chance = 10, minDamage = -40, maxDamage = -60, type = COMBAT_EARTHDAMAGE, range = 7, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 2000, chance = 15, minDamage = 30, maxDamage = 50, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 20, SpeedChange = 450, Duration = 5000}
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
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
