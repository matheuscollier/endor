local mType = Game.createMonsterType("Marid")
local monster = {}

monster.description = "a marid"
monster.experience = 300
monster.outfit = {
	lookType = 104,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 550
monster.maxHealth = 550
monster.race = "blood"
monster.corpse = 3040
monster.speed = 234
monster.manaCost = 0
monster.maxSummons = 2

monster.changeTarget = {
	interval = 2000,
	chance = 0
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
	{name = "blue djinn", chance = 15, interval = 1000, max = 2}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Simsalabim", yell = false},
	{text = "Feel the power of my magic, tiny mortal!", yell = false},
	{text = "Be careful what you wish for.", yell = false},
	{text = "Wishes can come true.", yell = false}
}

monster.loot = {
	{id = 2158, chance = 100},
	{id = 1872, chance = 2500},
	{id = 2677, chance = 25000, maxCount = 25},
	{id = 2148, chance = 70000, maxCount = 70},
	{id = 2442, chance = 20000},
	{id = 2663, chance = 200},
	{id = 2063, chance = 20000},
	{id = 2146, chance = 700},
	{id = 2183, chance = 500},
	{id = 2070, chance = 300}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 55, attack = 35},
	{name ="combat", interval = 1000, chance = 50, minDamage = -40, maxDamage = -110, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, target = false},
	{name ="combat", interval = 1000, chance = 25, minDamage = -65, maxDamage = -115, type = COMBAT_ENERGYDAMAGE, range = 7, ShootEffect = CONST_ANI_ENERGY, target = false},
	{name ="combat", interval = 1000, chance = 20, minDamage = -60, maxDamage = -120, type = COMBAT_LIFEDRAIN, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, target = false},
	{name ="speed", interval = 1000, chance = 13, SpeedChange = -300, Duration = 15000},
	{name ="drunk", interval = 1000, chance = 20, range = 7, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="djinn electrify", interval = 2000, chance = 15, range = 5, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 1000, chance = 15, minDamage = 50, maxDamage = 80, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
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
