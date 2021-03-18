local mType = Game.createMonsterType("Azazel")
local monster = {}

monster.description = "Azazel"
monster.experience = 600000
monster.outfit = {
	lookType = 334,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 130000
monster.maxHealth = 130000
monster.race = "blood"
monster.corpse = 11317
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
	{id = 13294, chance = 950, unique = 1},
	{id = 11308, chance = 15000},
	{id = 11305, chance = 3500},
	{id = 11307, chance = 950, unique = 1},
	{id = 11118, chance = 2150},
	{id = 11302, chance = 1500},
	{id = 11301, chance = 8000},
	{id = 11304, chance = 8000},
	{id = 8856, chance = 950, unique = 1},
	{id = 8853, chance = 950, unique = 1},
	{id = 2160, chance = 35000, maxCount = 15}
}

monster.attacks = {
	{name ="melee", interval = 1550, chance = 100, minDamage = -960, maxDamage = -1360},
	{name ="speed", interval = 11000, chance = 50, SpeedChange = -700, Duration = 10000},
	{name ="combat", interval = 2100, chance = 25, minDamage = -500, maxDamage = -720, range = 7, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_GREEN_RINGS, target = true},
	{name ="combat", interval = 2320, chance = 30, minDamage = -450, maxDamage = -700, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_REDSTAR, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 2633, chance = 30, minDamage = -750, maxDamage = -1050, type = COMBAT_FIREDAMAGE, length = 8, spread = 3, effect = CONST_ME_FIREATTACK, target = false},
	{name ="combat", interval = 2922, chance = 30, minDamage = -550, maxDamage = -750, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_WHIRLWINDAXE, effect = CONST_ME_DRAWBLOOD, target = true},
	{name ="combat", interval = 3311, chance = 35, minDamage = -650, maxDamage = -900, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_BLOCKHIT, target = false},
	{name ="combat", interval = 3912, chance = 35, minDamage = -650, maxDamage = -850, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_WHIRLWINDAXE, effect = CONST_ME_GROUNDSHAKER, target = true}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="combat", interval = 2400, chance = 35, minDamage = 500, maxDamage = 900, type = COMBAT_HEALING, effect = CONST_ME_YELLOW_RINGS, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 70},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 90},
	{type = COMBAT_FIREDAMAGE, percent = 90},
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
