local mType = Game.createMonsterType("Ancient Scarab")
local monster = {}

monster.description = "um ancient scarab"
monster.experience = 720
monster.outfit = {
	lookType = 79,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 1000
monster.maxHealth = 1000
monster.race = "venom"
monster.corpse = 6021
monster.speed = 230
monster.manaCost = 0
monster.maxSummons = 3

monster.changeTarget = {
	interval = 8000,
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

monster.summons = {
	{name = "larva", chance = 15, interval = 6000, max = 3}
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = 2148, chance = 99900, maxCount = 40},
	{id = 2463, chance = 1500},
	{id = 2540, chance = 500},
	{id = 2440, chance = 200},
	{id = 2150, chance = 900},
	{id = 2135, chance = 400},
	{id = 2159, chance = 1000, maxCount = 4},
	{id = 2142, chance = 350}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -24, maxDamage = -104, condition = {type = CONDITION_POISON, startDamage = 100, interval = 4000}},
	{name ="combat", interval = 1000, chance = 12, minDamage = -15, maxDamage = -135, range = 7, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false},
	{name ="speed", interval = 6000, chance = 20, SpeedChange = -700, Duration = 5000},
	{name ="combat", interval = 3000, chance = 17, minDamage = -30, maxDamage = -100, type = COMBAT_EARTHDAMAGE, effect = CONST_ME_POISONAREA, target = false, condition = {type = CONDITION_POISON, totalDamage = 200, interval = 4000}}
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
