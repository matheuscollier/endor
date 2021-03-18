local mType = Game.createMonsterType("Barbarian Brutetamer")
local monster = {}

monster.description = "um brutetamer"
monster.experience = 230
monster.outfit = {
	lookType = 264,
	lookHead = 78,
	lookBody = 116,
	lookLegs = 95,
	lookFeet = 121,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 365
monster.maxHealth = 365
monster.race = "blood"
monster.corpse = 20339
monster.speed = 270
monster.manaCost = 0
monster.maxSummons = 3

monster.changeTarget = {
	interval = 60000,
	chance = 0
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
	staticAttackChance = 90,
	targetDistance = 4,
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
	{name = "War Wolf", chance = 40, interval = 7000}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "To me, creatures of the wild!", yell = false},
	{text = "My instincts tell me about your cowardice.", yell = false}
}

monster.loot = {
	{id = 2148, chance = 33333, maxCount = 14},
	{id = 2686, chance = 10000, maxCount = 2},
	{id = 2464, chance = 2200},
	{id = 2401, chance = 1200},
	{id = 7463, chance = 400},
	{id = 3965, chance = 500},
	{id = 7457, chance = 233},
	{id = 7464, chance = 200}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -60, maxDamage = -120},
	{name ="combat", interval = 3100, chance = 99, minDamage = -35, maxDamage = -70, type = COMBAT_ENERGYDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_ENERGYHIT, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 6000, chance = 25, minDamage = 50, maxDamage = 80, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
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
