local mType = Game.createMonsterType("Graug-Olog")
local monster = {}

monster.description = "Graug-Olog"
monster.experience = 250000
monster.outfit = {
	lookType = 857,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 120000
monster.maxHealth = 120000
monster.race = "blood"
monster.corpse = 24799
monster.speed = 300
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 10
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
	staticAttackChance = 98,
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
	{text = "You, stop! You'll be my lunch!", yell = false},
	{text = "Smash you face in!!!", yell = false},
	{text = "I'LL GET YOU ALL!", yell = true},
	{text = "I won't let you escape!", yell = false},
	{text = "I'll crush you beneath my feet!", yell = false},
	{text = "I am the greatest among the Ologs! Fear me!", yell = false}
}

monster.loot = {
	{id = 2152, chance = 50000, maxCount = 130},
	{id = 11302, chance = 120},
	{id = 11304, chance = 150},
	{id = 7423, chance = 45},
	{id = 11301, chance = 300},
	{id = 2391, chance = 25000},
	{id = 2645, chance = 8000},
	{id = 3968, chance = 3000},
	{id = 2496, chance = 2000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 900, maxDamage = -1169, condition = {type = CONDITION_POISON, startDamage = 60, interval = 4000}},
	{name ="combat", interval = 2000, chance = 15, minDamage = -700, maxDamage = -1200, type = COMBAT_EARTHDAMAGE, range = 7, ShootEffect = CONST_ANI_POISON, target = false},
	{name ="melee", interval = 2824, chance = 99, minDamage = -830, maxDamage = -1100},
	{name ="drunk", interval = 2000, chance = 10, range = 7, effect = CONST_ME_STUN, target = false},
	{name ="combat", interval = 2700, chance = 99, minDamage = -1050, maxDamage = -1390, type = COMBAT_PHYSICALDAMAGE, range = 6, ShootEffect = CONST_ANI_LARGEROCK, target = false},
	{name ="combat", interval = 3100, chance = 33, minDamage = -1300, maxDamage = -1750, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_GROUNDSHAKER, target = false}
}

monster.defenses = {
	defense = 44,
	armor = 46,
	{name ="speed", interval = 2000, chance = 100, SpeedChange = 500, Duration = 2500},
	{name ="combat", interval = 6000, chance = 65, minDamage = 200, maxDamage = 500, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 65},
	{type = COMBAT_ENERGYDAMAGE, percent = 60},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 90},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 70}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
