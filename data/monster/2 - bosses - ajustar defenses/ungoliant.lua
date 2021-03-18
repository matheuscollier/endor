local mType = Game.createMonsterType("Ungoliant")
local monster = {}

monster.description = "Ungoliant"
monster.experience = 200000
monster.outfit = {
	lookType = 208,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 80000
monster.maxHealth = 80000
monster.race = "venom"
monster.corpse = 5977
monster.speed = 450
monster.manaCost = 0
monster.maxSummons = 2

monster.changeTarget = {
	interval = 5000,
	chance = 40
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
	{name = "laracna", chance = 13, interval = 4000, max = 2}
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = 2152, chance = 20000, maxCount = 27},
	{id = 2149, chance = 25000, maxCount = 5},
	{id = 5922, chance = 15000, maxCount = 3},
	{id = 7379, chance = 25350},
	{id = 13307, chance = 5000, unique = 1},
	{id = 2536, chance = 19320},
	{id = 7887, chance = 12000},
	{id = 8882, chance = 2600, unique = 1},
	{id = 2195, chance = 12000},
	{id = 5953, chance = 50000},
	{id = 8880, chance = 950, unique = 1},
	{id = 8856, chance = 450, unique = 1},
	{id = 15490, chance = 950, unique = 1}
}

monster.attacks = {
	{name ="melee", interval = 1750, chance = 100, minDamage = -600, maxDamage = -1200},
	{name ="combat", interval = 1750, chance = 65, minDamage = -650, maxDamage = -1250, range = 7, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true},
	{name ="condition", type = CONDITION_POISON, interval = 4000, chance = 15, minDamage = -840, maxDamage = -1680, range = 7, radius = 7, effect = CONST_ME_HITBYPOISON, target = true},
	{name ="speed", interval = 11000, chance = 50, SpeedChange = -700, Duration = 10000},
	{name ="poisonfield", interval = 1800, chance = 25, range = 7, ShootEffect = CONST_ANI_POISON, target = true}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="combat", interval = 3200, chance = 17, minDamage = 225, maxDamage = 275, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 45},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 25},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
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
