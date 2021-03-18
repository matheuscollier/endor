local mType = Game.createMonsterType("Smaug")
local monster = {}

monster.description = "smaug"
monster.experience = 200000
monster.outfit = {
	lookType = 39,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 85000
monster.maxHealth = 85000
monster.race = "blood"
monster.corpse = 2881
monster.speed = 350
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 8000,
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
	{id = 2522, chance = 800, unique = 1},
	{id = 13293, chance = 1200, unique = 1},
	{id = 2506, chance = 10000},
	{id = 2492, chance = 10000},
	{id = 2469, chance = 10000},
	{id = 2645, chance = 25000},
	{id = 3968, chance = 25000},
	{id = 2195, chance = 25000},
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2148, chance = 100000, maxCount = 100}
}

monster.attacks = {
	{name ="melee", interval = 1700, chance = 100, minDamage = -940, maxDamage = -1100},
	{name ="combat", interval = 1250, chance = 20, minDamage = -560, maxDamage = -1040, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 1550, chance = 60, minDamage = -1200, maxDamage = -1700, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="firefield", interval = 3250, chance = 99, minDamage = -700, maxDamage = -1200, range = 9, ShootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 3350, chance = 15, minDamage = -750, maxDamage = -1600, type = COMBAT_FIREDAMAGE, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 3700, chance = 1, minDamage = -800, maxDamage = 1300, type = COMBAT_FIREDAMAGE, effect = CONST_ME_FIREAREA, target = false}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="combat", interval = 1000, chance = 30, minDamage = 200, maxDamage = 320, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 35},
	{type = COMBAT_ENERGYDAMAGE, percent = 60},
	{type = COMBAT_EARTHDAMAGE, percent = 15},
	{type = COMBAT_FIREDAMAGE, percent = 90},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
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
