local mType = Game.createMonsterType("Elite Novice")
local monster = {}

monster.description = "um elite novice"
monster.experience = 0
monster.outfit = {
	lookType = 133,
	lookHead = 114,
	lookBody = 95,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 955
monster.maxHealth = 955
monster.race = "undead"
monster.corpse = 0
monster.speed = 180
monster.manaCost = 0
monster.maxSummons = 3

monster.changeTarget = {
	interval = 6000,
	chance = 5
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
	{name = "Dog", chance = 10, interval = 5000},
	{name = "Chicken", chance = 10, interval = 4000},
	{name = "Rat", chance = 10, interval = 6000},
	{name = "Skunk", chance = 10, interval = 3800}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Fear us!", yell = false},
	{text = "You will not tell anyone what you have seen.", yell = false},
	{text = "Your curiosity will be punished!", yell = false}
}

monster.loot = {
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -50, maxDamage = -115},
	{name ="combat", interval = 1200, chance = 100, minDamage = -45, maxDamage = -90, type = COMBAT_ENERGYDAMAGE, range = 4, ShootEffect = CONST_ANI_ENERGY, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
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
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
