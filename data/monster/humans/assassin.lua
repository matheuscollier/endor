local mType = Game.createMonsterType("Assassin")
local monster = {}

monster.description = "um assassin"
monster.experience = 105
monster.outfit = {
	lookType = 152,
	lookHead = 114,
	lookBody = 114,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 175
monster.maxHealth = 175
monster.race = "blood"
monster.corpse = 20327
monster.speed = 210
monster.manaCost = 450
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 5
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 95,
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
	{text = "Die!", yell = false},
	{text = "Feel the hand of death!", yell = false},
	{text = "You are on my deathlist!", yell = false}
}

monster.loot = {
	{id = 2404, chance = 10000},
	{id = 2399, chance = 5000, maxCount = 5},
	{id = 2489, chance = 100},
	{id = 2529, chance = 1000},
	{id = 2148, chance = 80000, maxCount = 45}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -30, maxDamage = -90},
	{name ="combat", interval = 3600, chance = 99, minDamage = -28, maxDamage = -38, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_THROWINGSTAR, target = false},
	{name ="drunk", interval = 5000, chance = 35, range = 6, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="speed", interval = 4000, chance = 20, SpeedChange = 1200, Duration = 3000},
	{name ="invisible", interval = 6000, chance = 30, effect = CONST_ME_MAGIC_BLUE}
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
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
