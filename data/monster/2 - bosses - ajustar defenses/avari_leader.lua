local mType = Game.createMonsterType("Avari Leader")
local monster = {}

monster.description = "Avari Leader"
monster.experience = 300000
monster.outfit = {
	lookType = 63,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 70000
monster.maxHealth = 70000
monster.race = "blood"
monster.corpse = 2979
monster.speed = 310
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2500,
	chance = 15
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 3,
	runHealth = 2000,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Feel my wrath!", yell = false},
	{text = "For the Daughter of the Stars!", yell = false},
	{text = "I'll bring balance upon you!", yell = false},
	{text = "Tha'shi Cenath!", yell = false},
	{text = "Vihil Ealuel!", yell = false}
}

monster.loot = {
	{id = 2505, chance = 50000},
	{id = 2466, chance = 250, unique = 1},
	{id = 2507, chance = 50000},
	{id = 2474, chance = 12000},
	{id = 2470, chance = 150, unique = 1},
	{id = 7893, chance = 25000},
	{id = 7731, chance = 850, unique = 1},
	{id = 7438, chance = 50000},
	{id = 2150, chance = 19000, maxCount = 3},
	{id = 2152, chance = 35000, maxCount = 5},
	{id = 2152, chance = 35000, maxCount = 25},
	{id = 2152, chance = 35000, maxCount = 15},
	{id = 2546, chance = 3000, maxCount = 12},
	{id = 2544, chance = 3000, maxCount = 12},
	{id = 7364, chance = 2200, maxCount = 12},
	{id = 7365, chance = 2000, maxCount = 12}
}

monster.attacks = {
	{name ="melee", interval = 1800, chance = 100, minDamage = -800, maxDamage = -1000},
	{name ="combat", interval = 2165, chance = 30, minDamage = -1000, maxDamage = -2500, type = COMBAT_HOLYDAMAGE, length = 8, spread = 3, effect = CONST_ME_HOLYAREA, target = false},
	{name ="combat", interval = 1650, chance = 99, minDamage = -450, maxDamage = -1250, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_ARROW, effect = CONST_ME_DRAWBLOOD, target = true},
	{name ="combat", interval = 1930, chance = 45, minDamage = -800, maxDamage = -1600, type = COMBAT_HOLYDAMAGE, range = 7, ShootEffect = CONST_ANI_FLAMMINGARROW, effect = CONST_ME_HOLYAREA, target = true},
	{name ="combat", interval = 2280, chance = 75, minDamage = -650, maxDamage = -900, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_BURSTARROW, effect = CONST_ME_FIREAREA, target = true},
	{name ="speed", interval = 6510, chance = 80, SpeedChange = -500, Duration = 4000}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{name ="combat", interval = 2300, chance = 350, minDamage = 200, maxDamage = 350, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 55},
	{type = COMBAT_EARTHDAMAGE, percent = 35},
	{type = COMBAT_FIREDAMAGE, percent = 35},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 65},
	{type = COMBAT_HOLYDAMAGE , percent = 85},
	{type = COMBAT_DEATHDAMAGE , percent = 35}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
