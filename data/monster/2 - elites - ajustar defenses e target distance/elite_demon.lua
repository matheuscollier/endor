local mType = Game.createMonsterType("Elite Demon")
local monster = {}

monster.description = "um elite demon"
monster.experience = 0
monster.outfit = {
	lookType = 35,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 10000
monster.maxHealth = 10000
monster.race = "undead"
monster.corpse = 0
monster.speed = 330
monster.manaCost = 0
monster.maxSummons = 3

monster.changeTarget = {
	interval = 8000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summons = {
	{name = "fire elemental", chance = 9, interval = 5000, max = 3}
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -250, maxDamage = -500},
	{name ="combat", interval = 2700, chance = 23, minDamage = -90, maxDamage = -150, type = COMBAT_MANADRAIN, range = 8, target = false},
	{name ="combat", interval = 2250, chance = 15, minDamage = -300, maxDamage = -400, type = COMBAT_ENERGYDAMAGE, length = 8, spread = 3, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 1900, chance = 27, minDamage = -140, maxDamage = -230, type = COMBAT_FIREDAMAGE, range = 8, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="firefield", interval = 2400, chance = 35, range = 8, ShootEffect = CONST_ANI_FIRE, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 6000, chance = 30, minDamage = 100, maxDamage = 300, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
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
