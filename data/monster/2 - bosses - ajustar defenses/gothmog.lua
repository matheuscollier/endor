local mType = Game.createMonsterType("Gothmog")
local monster = {}

monster.description = "Gothmog"
monster.experience = 500000
monster.outfit = {
	lookType = 12,
	lookHead = 38,
	lookBody = 114,
	lookLegs = 0,
	lookFeet = 94,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 85000
monster.maxHealth = 85000
monster.race = "undead"
monster.corpse = 0
monster.speed = 320
monster.manaCost = 0
monster.maxSummons = 3

monster.changeTarget = {
	interval = 8000,
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

monster.summons = {
	{name = "demon", chance = 15, interval = 12000, max = 3}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Sinta a furia do Senhor dos Balrogs!", yell = true},
	{text = "Estuprarei suas almas!", yell = true}
}

monster.loot = {
	{id = 2086, chance = 1000000, unique = 1, actionId = 2040}
}

monster.attacks = {
	{name ="melee", interval = 1800, chance = 100, minDamage = -800, maxDamage = -1200},
	{name ="combat", interval = 2200, chance = 18, minDamage = -650, maxDamage = -1100, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 1600, chance = 99, minDamage = -450, maxDamage = -700, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 3200, chance = 13, minDamage = -200, maxDamage = -300, type = COMBAT_MANADRAIN, length = 2, spread = 3, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="combat", interval = 1350, chance = 16, minDamage = -1000, maxDamage = -1500, type = COMBAT_ENERGYDAMAGE, length = 8, spread = 3, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="condition", type = CONDITION_POISON, interval = 4000, chance = 30, minDamage = -840, maxDamage = -1680, range = 7, radius = 1, effect = CONST_ME_HITBYPOISON, target = true},
	{name ="combat", interval = 2750, chance = 25, minDamage = -1000, maxDamage = -1500, type = COMBAT_LIFEDRAIN, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false}
}

monster.defenses = {
	defense = 25,
	armor = 25,
	{name ="combat", interval = 700, chance = 100, minDamage = 70, maxDamage = 100, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 60},
	{type = COMBAT_FIREDAMAGE, percent = 90},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
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
