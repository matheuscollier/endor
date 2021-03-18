local mType = Game.createMonsterType("Obujos")
local monster = {}

monster.description = "a obujos"
monster.experience = 800000
monster.outfit = {
	lookType = 445,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 150000
monster.maxHealth = 150000
monster.race = "blood"
monster.corpse = 15225
monster.speed = 350
monster.manaCost = 0
monster.maxSummons = 2

monster.changeTarget = {
	interval = 5000,
	chance = 8
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
	targetDistance = 2,
	runHealth = 0,
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

monster.summons = {
	{name = "Deepling Warrior", chance = 100, interval = 2000, max = 2}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "QJELL KEJH!!", yell = false},
	{text = "JN OBU!!", yell = false}
}

monster.loot = {
	{id = 2160, chance = 50000, maxCount = 10},
	{id = 2523, chance = 500, unique = 1},
	{id = 12630, chance = 5000, unique = 1},
	{id = 15412, chance = 450, unique = 1},
	{id = 2472, chance = 1200, unique = 1},
	{id = 9778, chance = 1200, unique = 1},
	{id = 6132, chance = 8000, unique = 1},
	{id = 13292, chance = 5000, unique = 1}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 60, attack = 55},
	{name ="combat", interval = 3000, chance = 30, minDamage = -2000, maxDamage = -2350, type = COMBAT_ENERGYDAMAGE, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_BIGCLOUDS, target = false},
	{name ="combat", interval = 2000, chance = 100, minDamage = -1200, maxDamage = -1800, type = COMBAT_ENERGYDAMAGE, range = 7, effect = CONST_ME_BIGCLOUDS, target = false},
	{name ="speed", interval = 1000, chance = 20, SpeedChange = -200, Duration = 10000},
	{name ="combat", interval = 2000, chance = 100, minDamage = -1200, maxDamage = -1800, type = COMBAT_ICEDAMAGE, range = 7, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_ICETORNADO, target = false},
	{name ="combat", interval = 1000, chance = 25, minDamage = -300, maxDamage = -450, type = COMBAT_MANADRAIN, range = 7, target = false},
	{name ="combat", interval = 2000, chance = 30, minDamage = -800, maxDamage = -1200, type = COMBAT_DEATHDAMAGE, length = 7, spread = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="speed", interval = 2000, chance = 37, SpeedChange = -400, Duration = 20000}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="combat", interval = 1000, chance = 25, minDamage = 800, maxDamage = 1200, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
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
