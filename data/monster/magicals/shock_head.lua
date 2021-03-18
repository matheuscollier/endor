local mType = Game.createMonsterType("Shock Head")
local monster = {}

monster.description = "Shock Head"
monster.experience = 7200
monster.outfit = {
	lookType = 579,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 7000
monster.maxHealth = 7000
monster.race = "blood"
monster.corpse = 22392
monster.speed = 250
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
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
	{text = "brrzz", yell = false},
	{text = "Thun... Thun... THUNDER!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 43000, maxCount = 100},
	{id = 2148, chance = 50000, maxCount = 87},
	{id = 2146, chance = 500},
	{id = 2498, chance = 270},
	{id = 22539, chance = 10000}
}

monster.attacks = {
	{name ="melee", interval = 1700, chance = 100, minDamage = -400, maxDamage = -650},
	{name ="combat", interval = 2000, chance = 15, minDamage = -500, maxDamage = -650, type = COMBAT_DEATHDAMAGE, length = 5, spread = 2, effect = CONST_ME_STUN, target = true},
	{name ="speed", interval = 2000, chance = 15, SpeedChange = -800, Duration = 7500},
	{name ="combat", interval = 2000, chance = 20, minDamage = 0, maxDamage = -350, type = COMBAT_PHYSICALDAMAGE, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_STONES, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 2000, chance = 15, minDamage = 250, maxDamage = 350, type = COMBAT_HEALING, effect = CONST_ME_INSECTS, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 35},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = 40}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
