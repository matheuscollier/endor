local mType = Game.createMonsterType("Jormungand")
local monster = {}

monster.description = "Jormungand"
monster.experience = 85000
monster.outfit = {
	lookType = 121,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 35500
monster.maxHealth = 35500
monster.race = "blood"
monster.corpse = 4283
monster.speed = 230
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 10000,
	chance = 20
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

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = 2672, chance = 100000, maxCount = 100},
	{id = 2672, chance = 100000, maxCount = 100},
	{id = 2197, chance = 100000},
	{id = 2155, chance = 100000},
	{id = 2155, chance = 100000},
	{id = 2155, chance = 100000},
	{id = 2155, chance = 100000},
	{id = 2155, chance = 100000},
	{id = 12630, chance = 950},
	{id = 2536, chance = 10000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -300, maxDamage = -500},
	{name ="speed", interval = 7000, chance = 35, SpeedChange = -500, Duration = 5000},
	{name ="combat", interval = 4600, chance = 35, range = 7, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_HITBYPOISON, target = true, condition = {type = CONDITION_POISON, totalDamage = 1240, interval = 4000}},
	{name ="combat", interval = 2100, chance = 50, minDamage = -150, maxDamage = -350, type = COMBAT_PHYSICALDAMAGE, length = 8, spread = 4, effect = CONST_ME_LOSEENERGY, target = false},
	{name ="combat", interval = 2200, chance = 50, minDamage = -160, maxDamage = -380, type = COMBAT_EARTHDAMAGE, length = 8, spread = 4, effect = CONST_ME_POISONAREA, target = false},
	{name ="poisonfield", interval = 3150, chance = 99, ShootEffect = CONST_ANI_POISON, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 700, chance = 100, minDamage = 90, maxDamage = 130, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 70},
	{type = COMBAT_ENERGYDAMAGE, percent = 70},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 70},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 60},
	{type = COMBAT_HOLYDAMAGE , percent = 50},
	{type = COMBAT_DEATHDAMAGE , percent = 70}
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
