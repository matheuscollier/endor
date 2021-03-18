local mType = Game.createMonsterType("Lancer Beetle")
local monster = {}

monster.description = "a lancer beetle"
monster.experience = 250
monster.outfit = {
	lookType = 348,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 400
monster.maxHealth = 400
monster.race = "venom"
monster.corpse = 11375
monster.speed = 220
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 12
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
	targetDistance = 1,
	runHealth = 80,
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
	{text = "Crump!", yell = true}
}

monster.loot = {
	{id = 2148, chance = 200000, maxCount = 30},
	{id = 11372, chance = 10000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 40, attack = 60},
	{name ="combat", interval = 2000, chance = 20, length = 8, spread = 3, type = COMBAT_EARTHDAMAGE, effect = CONST_ME_POISONAREA, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="invisible", interval = 1000, chance = 10, effect = CONST_ME_MAGIC_RED}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
