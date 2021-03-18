local mType = Game.createMonsterType("Giant Spider")
local monster = {}

monster.description = "uma giant spider"
monster.experience = 900
monster.outfit = {
	lookType = 38,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 1300
monster.maxHealth = 1300
monster.race = "venom"
monster.corpse = 2857
monster.speed = 300
monster.manaCost = 0
monster.maxSummons = 2

monster.changeTarget = {
	interval = 2000,
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

monster.summons = {
	{name = "poison spider", chance = 10, interval = 6000, max = 2}
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = 2463, chance = 1600},
	{id = 2478, chance = 2500},
	{id = 5879, chance = 5000},
	{id = 2476, chance = 820},
	{id = 2477, chance = 610},
	{id = 2148, chance = 90000, maxCount = 50},
	{id = 2171, chance = 950},
	{id = 2169, chance = 1050},
	{id = 2138, chance = 350}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -120, maxDamage = -300, condition = {type = CONDITION_POISON, startDamage = 200, interval = 3000}},
	{name ="poisonfield", interval = 1000, chance = 17, range = 7, ShootEffect = CONST_ANI_POISON, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="speed", interval = 4000, chance = 25, SpeedChange = 300, Duration = 8000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 99},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = 25},
	{type = COMBAT_DEATHDAMAGE , percent = 25}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
