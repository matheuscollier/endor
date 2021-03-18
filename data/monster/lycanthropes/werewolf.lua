local mType = Game.createMonsterType("Werewolf")
local monster = {}

monster.description = ""
monster.experience = 1450
monster.outfit = {
	lookType = 308,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 1955
monster.maxHealth = 1955
monster.race = "blood"
monster.corpse = 6080
monster.speed = 300
monster.manaCost = 0
monster.maxSummons = 6

monster.changeTarget = {
	interval = 0,
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
	{name = "war wolf", chance = 25, interval = 2500}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "BLOOD!", yell = true},
	{text = "HRAAAAAAAAAARRRRRR!", yell = true}
}

monster.loot = {
	{id = 2148, chance = 40000, maxCount = 96},
	{id = 2148, chance = 40000, maxCount = 74},
	{id = 5897, chance = 50000, maxCount = 5},
	{id = 2476, chance = 360},
	{id = 2640, chance = 80},
	{id = 2479, chance = 900},
	{id = 2407, chance = 550},
	{id = 5897, chance = 3000},
	{id = 7367, chance = 1400},
	{id = 2805, chance = 4000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -200},
	{name ="outfit", interval = 2000, chance = 1, radius = 1, effect = CONST_ME_SOUND_BLUE, target = true, duration = 2000, outfitMonster = "werewolf"},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -80, maxDamage = -200, length = 4, spread = 2, effect = CONST_ME_SOUND_RED, target = false},
	{name ="combat", interval = 2000, chance = 40, type = COMBAT_PHYSICALDAMAGE, radius = 3, effect = CONST_ME_SOUND_WHITE, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, radius = 1, effect = CONST_ME_SOUND_GREEN, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
