local mType = Game.createMonsterType("Priestess")
local monster = {}

monster.description = "uma priestess"
monster.experience = 420
monster.outfit = {
	lookType = 58,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 390
monster.maxHealth = 390
monster.race = "blood"
monster.corpse = 20491
monster.speed = 170
monster.manaCost = 0
monster.maxSummons = 2

monster.changeTarget = {
	interval = 2000,
	chance = 50
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 95,
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
	{name = "ghoul", chance = 33, interval = 3000, max = 2}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Your energy is mine.", yell = false},
	{text = "Now, your life has come to an end, hahahha!", yell = false},
	{text = "Throw the soul on the altar!", yell = false}
}

monster.loot = {
	{id = 2529, chance = 320},
	{id = 2183, chance = 850},
	{id = 2200, chance = 100},
	{id = 10556, chance = 1500},
	{id = 2148, chance = 90000, maxCount = 40},
	{id = 2070, chance = 1000},
	{id = 2032, chance = 2000},
	{id = 2143, chance = 500},
	{id = 2114, chance = 690},
	{id = 2134, chance = 550},
	{id = 2151, chance = 150},
	{id = 2145, chance = 200}
}

monster.attacks = {
	{name ="melee", interval = 2200, chance = 100, minDamage = -20, maxDamage = -60, condition = {type = CONDITION_POISON, startDamage = 250, interval = 4000}},
	{name ="combat", interval = 2000, chance = 25, minDamage = -55, maxDamage = -95, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, target = false},
	{name ="combat", interval = 5200, chance = 25, minDamage = -50, maxDamage = -100, type = COMBAT_MANADRAIN, range = 7, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 1700, chance = 15, minDamage = 34, maxDamage = 56, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
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
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
