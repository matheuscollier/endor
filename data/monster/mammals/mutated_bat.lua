local mType = Game.createMonsterType("Mutated Bat")
local monster = {}

monster.description = "um mutated bat"
monster.experience = 825
monster.outfit = {
	lookType = 307,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 900
monster.maxHealth = 900
monster.race = "blood"
monster.corpse = 9829
monster.speed = 245
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
}

monster.loot = {
	{id = 2148, chance = 20000, maxCount = 50},
	{id = 2800, chance = 13000},
	{id = 5894, chance = 5200, maxCount = 2},
	{id = 2534, chance = 45},
	{id = 2150, chance = 800},
	{id = 2144, chance = 600, maxCount = 3},
	{id = 7407, chance = 100},
	{id = 2165, chance = 650},
	{id = 10016, chance = 150}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -104, maxDamage = -176},
	{name ="combat", interval = 2500, chance = 25, minDamage = -60, maxDamage = -110, type = COMBAT_EARTHDAMAGE, range = 7, ShootEffect = CONST_ANI_POISON, target = true},
	{name ="combat", interval = 3200, chance = 15, minDamage = -100, maxDamage = -130, type = COMBAT_DROWNDAMAGE, effect = CONST_ME_SOUND_WHITE, target = false},
	{name ="drunk", interval = 7000, chance = 30, effect = CONST_ME_SOUND_YELLOW, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
