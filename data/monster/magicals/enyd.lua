local mType = Game.createMonsterType("Enyd")
local monster = {}

monster.description = ""
monster.experience = 3400
monster.outfit = {
	lookType = 320,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 7100
monster.maxHealth = 7100
monster.race = "undead"
monster.corpse = 9916
monster.speed = 290
monster.manaCost = 0
monster.maxSummons = 0

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

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "The sunlight is so depressing.", yell = true},
	{text = "Come with me, my child.", yell = true},
	{text = "I've been in the shadow under your bed last night.", yell = true},
	{text = "You never know what hides in the night.", yell = false},
	{text = "I remember your face - and I know where you sleep", yell = false}
}

monster.loot = {
	{id = 2148, chance = 25600, maxCount = 25},
	{id = 2148, chance = 26900, maxCount = 35},
	{id = 6529, chance = 10500, maxCount = 10},
	{id = 2804, chance = 10000},
	{id = 2499, chance = 380},
	{id = 7730, chance = 50},
	{id = 8869, chance = 450},
	{id = 7893, chance = 290},
	{id = 2537, chance = 280},
	{id = 7407, chance = 120}
}

monster.attacks = {
	{name ="melee", interval = 1800, chance = 100, minDamage = -160, maxDamage = -256},
	{name ="speed", interval = 3200, chance = 15, SpeedChange = -900, Duration = 3000},
	{name ="combat", interval = 3500, chance = 45, minDamage = -100, maxDamage = -160, type = COMBAT_EARTHDAMAGE, effect = CONST_ME_SMALLPLANTS, target = false},
	{name ="combat", interval = 2200, chance = 25, minDamage = -80, maxDamage = -150, type = COMBAT_EARTHDAMAGE, effect = CONST_ME_BIGPLANTS, target = false},
	{name ="combat", interval = 2500, chance = 25, minDamage = -100, maxDamage = -180, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_STONES, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 40},
	{type = COMBAT_EARTHDAMAGE, percent = 95},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 25},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
