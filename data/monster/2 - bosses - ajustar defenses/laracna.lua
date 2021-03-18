local mType = Game.createMonsterType("Laracna")
local monster = {}

monster.description = "Laracna"
monster.experience = 50000
monster.outfit = {
	lookType = 208,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 15000
monster.maxHealth = 15000
monster.race = "venom"
monster.corpse = 5977
monster.speed = 280
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
	targetDistance = 1,
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
	{name = "giant spider", chance = 13, interval = 4000, max = 2}
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = 2152, chance = 20000, maxCount = 7},
	{id = 2149, chance = 25000, maxCount = 3},
	{id = 2182, chance = 100000},
	{id = 2536, chance = 2000, unique = 1},
	{id = 2138, chance = 2000, unique = 1},
	{id = 2158, chance = 100000},
	{id = 2430, chance = 7000, unique = 1},
	{id = 2195, chance = 2000, unique = 1},
	{id = 5953, chance = 20000}
}

monster.attacks = {
	{name ="melee", interval = 1950, chance = 100, minDamage = -240, maxDamage = -480},
	{name ="combat", interval = 1750, chance = 32, minDamage = -250, maxDamage = -350, range = 7, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_POISONARROW, effect = CONST_ME_POISONAREA, target = false},
	{name ="condition", type = CONDITION_POISON, interval = 4000, chance = 20, minDamage = -320, maxDamage = -640, range = 3, radius = 1, effect = CONST_ME_HITBYPOISON, target = true},
	{name ="speed", interval = 6000, chance = 25, SpeedChange = -800, Duration = 5000},
	{name ="poisonfield", interval = 1800, chance = 99, range = 7, ShootEffect = CONST_ANI_POISON, target = true}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{name ="combat", interval = 500, chance = 100, minDamage = 50, maxDamage = 70, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 99},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
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
