local mType = Game.createMonsterType("Sight of Surrender")
local monster = {}

monster.description = "Sight of Surrender"
monster.experience = 25000
monster.outfit = {
	lookType = 583,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 22000
monster.maxHealth = 22000
monster.race = "undead"
monster.corpse = 22478
monster.speed = 300
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20
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
	staticAttackChance = 80,
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
	{text = "BOW LOW!", yell = false},
	{text = "FEEL THE TRUE MEANING OF VANQUISH!", yell = false},
	{text = "HAHAHAHA DO YOU WANT TO AMUSE YOUR MASTER?", yell = false},
	{text = "NOW YOU WILL SURRENDER!", yell = false}
}

monster.loot = {
	{id = 2152, chance = 100000, maxCount = 20},
	{id = 15643, chance = 30},
	{id = 18404, chance = 300},
	{id = 18405, chance = 300},
	{id = 18406, chance = 300},
	{id = 2169, chance = 300},
	{id = 18413, chance = 2000, maxCount = 3},
	{id = 18414, chance = 1500, maxCount = 3},
	{id = 18416, chance = 2000, maxCount = 5},
	{id = 18417, chance = 1500, maxCount = 5},
	{id = 22396, chance = 1800},
	{id = 22517, chance = 100000},
	{id = 22518, chance = 100000},
	{id = 22542, chance = 460}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -900, maxDamage = -1250},
	{name ="combat", interval = 2000, chance = 15, minDamage = -500, maxDamage = -800, type = COMBAT_ENERGYDAMAGE, length = 8, spread = 3, effect = CONST_ME_YELLOWENERGY, target = true},
	{name ="combat", interval = 2000, chance = 20, minDamage = -500, maxDamage = -650, type = COMBAT_PHYSICALDAMAGE, ShootEffect = CONST_ANI_LARGEROCK, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 2000, chance = 30, minDamage = 350, maxDamage = 500, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, SpeedChange = 520, Duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 80},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 25},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 80},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
