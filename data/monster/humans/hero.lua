local mType = Game.createMonsterType("Hero")
local monster = {}

monster.description = "um hero"
monster.experience = 1200
monster.outfit = {
	lookType = 73,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 1400
monster.maxHealth = 1400
monster.race = "blood"
monster.corpse = 20415
monster.speed = 280
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5
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

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Let's have a fight!", yell = false},
	{text = "Welcome to my battleground.", yell = false},
	{text = "Have you seen princess Lumelia?", yell = false},
	{text = "I will sing a tune at your grave.", yell = false}
}

monster.loot = {
	{id = 2491, chance = 620},
	{id = 2487, chance = 250},
	{id = 2661, chance = 2000},
	{id = 5911, chance = 3000},
	{id = 13295, chance = 500},
	{id = 2392, chance = 1150},
	{id = 2195, chance = 1050},
	{id = 2432, chance = 1250},
	{id = 2519, chance = 300},
	{id = 2488, chance = 220},
	{id = 2148, chance = 100000, maxCount = 75},
	{id = 2456, chance = 8000},
	{id = 2681, chance = 10000},
	{id = 2071, chance = 1000},
	{id = 2544, chance = 20000, maxCount = 30},
	{id = 2121, chance = 200},
	{id = 2744, chance = 5000}
}

monster.attacks = {
	{name ="melee", interval = 1800, chance = 100, minDamage = -112, maxDamage = -180},
	{name ="combat", interval = 2150, chance = 60, minDamage = -70, maxDamage = -180, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_ARROW, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 3200, chance = 20, minDamage = 100, maxDamage = 200, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 45},
	{type = COMBAT_ENERGYDAMAGE, percent = 90},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 90},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = 40},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
