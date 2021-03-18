local mType = Game.createMonsterType("Achilles")
local monster = {}

monster.description = "Achilles"
monster.experience = 750000
monster.outfit = {
	lookType = 134,
	lookHead = 78,
	lookBody = 57,
	lookLegs = 95,
	lookFeet = 57,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 90000
monster.maxHealth = 90000
monster.race = "blood"
monster.corpse = 3058
monster.speed = 400
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
	{id = 11302, chance = 12500},
	{id = 9776, chance = 8000},
	{id = 9933, chance = 5000},
	{id = 6528, chance = 800},
	{id = 2425, chance = 800},
	{id = 8906, chance = 800}
}

monster.attacks = {
	{name ="melee", interval = 1200, chance = 100, minDamage = -1200, maxDamage = -1500},
	{name ="combat", interval = 2500, chance = 99, minDamage = -1500, maxDamage = -2200, type = COMBAT_PHYSICALDAMAGE, range = 10, ShootEffect = CONST_ANI_SPEAR, target = false},
	{name ="combat", interval = 1900, chance = 99, minDamage = -1600, maxDamage = -1800, type = COMBAT_PHYSICALDAMAGE, range = 8, ShootEffect = CONST_ANI_WHIRLWINDAXE, effect = CONST_ME_DRAWBLOOD, target = true},
	{name ="combat", interval = 2300, chance = 25, minDamage = -900, maxDamage = -2000, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_HITAREA, target = false}
}

monster.defenses = {
	defense = 45,
	armor = 45,
	{name ="combat", interval = 600, chance = 300, minDamage = 500, maxDamage = 1000, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 35},
	{type = COMBAT_ENERGYDAMAGE, percent = 35},
	{type = COMBAT_EARTHDAMAGE, percent = 35},
	{type = COMBAT_FIREDAMAGE, percent = 35},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 35},
	{type = COMBAT_HOLYDAMAGE , percent = 35},
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
