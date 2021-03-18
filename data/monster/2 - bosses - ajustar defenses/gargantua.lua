local mType = Game.createMonsterType("Gargantua")
local monster = {}

monster.description = "Gargantua"
monster.experience = 0
monster.outfit = {
	lookType = 334,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 150000
monster.maxHealth = 150000
monster.race = "undead"
monster.corpse = 0
monster.speed = 350
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 8000,
	chance = 25
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
	{text = "Muahahahaha!!!", yell = false}
}

monster.loot = {
	{id = 2086, chance = 1000000, unique = 1, actionId = 2056}
}

monster.attacks = {
	{name ="melee", interval = 1550, chance = 100, minDamage = -1080, maxDamage = -1520},
	{name ="speed", interval = 11000, chance = 50, SpeedChange = -700, Duration = 10000},
	{name ="combat", interval = 2100, chance = 25, minDamage = -700, maxDamage = -920, type = COMBAT_EARTHDAMAGE, range = 7, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_GREEN_RINGS, target = true},
	{name ="combat", interval = 2320, chance = 30, minDamage = -650, maxDamage = -900, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_REDSTAR, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 2633, chance = 30, minDamage = -950, maxDamage = -1250, type = COMBAT_FIREDAMAGE, length = 8, spread = 3, effect = CONST_ME_FIREATTACK, target = false},
	{name ="combat", interval = 2922, chance = 30, minDamage = -750, maxDamage = -950, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_WHIRLWINDAXE, effect = CONST_ME_DRAWBLOOD, target = true},
	{name ="combat", interval = 3311, chance = 35, minDamage = -850, maxDamage = -1100, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_BLOCKHIT, target = false},
	{name ="combat", interval = 3912, chance = 35, minDamage = -850, maxDamage = -1050, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_WHIRLWINDAXE, effect = CONST_ME_GROUNDSHAKER, target = true}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="combat", interval = 2400, chance = 35, minDamage = 500, maxDamage = 900, type = COMBAT_HEALING, effect = CONST_ME_YELLOW_RINGS, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 75},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 35},
	{type = COMBAT_HOLYDAMAGE , percent = 45},
	{type = COMBAT_DEATHDAMAGE , percent = 65}
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
