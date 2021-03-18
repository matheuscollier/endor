local mType = Game.createMonsterType("Novice of the Cult")
local monster = {}

monster.description = "um novice of the cult"
monster.experience = 100
monster.outfit = {
	lookType = 133,
	lookHead = 114,
	lookBody = 95,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 285
monster.maxHealth = 285
monster.race = "blood"
monster.corpse = 20470
monster.speed = 180
monster.manaCost = 0
monster.maxSummons = 3

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
	canPushCreatures = false,
	staticAttackChance = 50,
	targetDistance = 1,
	runHealth = 25,
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
	{id = 12448, chance = 1500},
	{id = 10556, chance = 1500},
	{id = 2148, chance = 80000, maxCount = 15},
	{id = 2190, chance = 1200},
	{id = 2186, chance = 600},
	{id = 2661, chance = 1500},
	{id = 2199, chance = 700},
	{id = 2200, chance = 50}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -20, maxDamage = -50},
	{name ="combat", interval = 800, chance = 100, minDamage = -5, maxDamage = -12, type = COMBAT_HOLYDAMAGE, range = 4, ShootEffect = CONST_ANI_HOLY, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 50},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
