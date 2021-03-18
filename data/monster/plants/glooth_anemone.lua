local mType = Game.createMonsterType("Glooth Anemone")
local monster = {}

monster.description = "a glooth anemone"
monster.experience = 16000
monster.outfit = {
	lookType = 604,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 16000
monster.maxHealth = 16000
monster.race = "blood"
monster.corpse = 23352
monster.speed = 200
monster.manaCost = 490
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 50
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
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
	{text = "Il lorstok human!", yell = false},
	{text = "Toks utat.", yell = false},
	{text = "Human, uh whil dyh!", yell = false},
	{text = "Youh ah trak!", yell = false},
	{text = "Let da mashing begin!", yell = false}
}

monster.loot = {
	{id = 23536, chance = 40},
	{id = 7884, chance = 300},
	{id = 2148, chance = 82000, maxCount = 47},
	{id = 7590, chance = 1200},
	{id = 10557, chance = 3000},
	{id = 23566, chance = 800},
	{id = 23517, chance = 1000},
	{id = 23565, chance = 1000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 120, attack = 100},
	{name ="combat", interval = 2000, chance = 75, minDamage = -750, maxDamage = -950, range = 5, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_GREENSTAR, effect = CONST_ME_POISONAREA, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
	{type = COMBAT_ENERGYDAMAGE, percent = 25},
	{type = COMBAT_EARTHDAMAGE, percent = 90},
	{type = COMBAT_FIREDAMAGE, percent = 25},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 25},
	{type = COMBAT_HOLYDAMAGE , percent = 25},
	{type = COMBAT_DEATHDAMAGE , percent = 25}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
