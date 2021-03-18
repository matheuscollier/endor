local mType = Game.createMonsterType("Spirit Of Fire")
local monster = {}

monster.description = "um spirit of fire"
monster.experience = 4100
monster.outfit = {
	lookType = 242,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 4000
monster.maxHealth = 4000
monster.race = "fire"
monster.corpse = 6324
monster.speed = 320
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
	runHealth = 250,
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
	{id = 2191, chance = 1533},
	{id = 9933, chance = 5},
	{id = 8881, chance = 500},
	{id = 2462, chance = 1450},
	{id = 2392, chance = 1050},
	{id = 7427, chance = 300},
	{id = 2432, chance = 950},
	{id = 10553, chance = 7000},
	{id = 2156, chance = 500},
	{id = 2148, chance = 100000, maxCount = 70},
	{id = 2546, chance = 1000, maxCount = 10},
	{id = 2147, chance = 650},
	{id = 2151, chance = 650, maxCount = 2},
	{id = 2201, chance = 390}
}

monster.attacks = {
	{name ="melee", interval = 1300, chance = 100, minDamage = -136, maxDamage = -224},
	{name ="combat", interval = 2500, chance = 35, minDamage = -150, maxDamage = -220, type = COMBAT_FIREDAMAGE, range = 4, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="firefield", interval = 1000, chance = 34, range = 4, ShootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 4100, chance = 20, minDamage = -200, maxDamage = -450, type = COMBAT_FIREDAMAGE, range = 4, effect = CONST_ME_FIREATTACK, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="speed", interval = 1000, chance = 9, SpeedChange = 290, Duration = 4000},
	{name ="combat", interval = 1000, chance = 20, minDamage = 150, maxDamage = 230, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
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
