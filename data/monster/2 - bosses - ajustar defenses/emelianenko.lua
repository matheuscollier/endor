local mType = Game.createMonsterType("Emelianenko")
local monster = {}

monster.description = "a Emelianenko"
monster.experience = 950000
monster.outfit = {
	lookType = 323,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 75000
monster.maxHealth = 75000
monster.race = "blood"
monster.corpse = 9107
monster.speed = 450
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 10
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
	{text = "TA NA HORA DO PAU!", yell = true}
}

monster.loot = {
	{id = 2396, chance = 1000000},
	{id = 2522, chance = 1000, unique = 1, maxCount = 1},
	{id = 7382, chance = 15000, maxCount = 2},
	{id = 3962, chance = 20000, maxCount = 1},
	{id = 2466, chance = 1000, unique = 1, maxCount = 1},
	{id = 2470, chance = 500, unique = 1, maxCount = 1},
	{id = 24718, chance = 300, unique = 1, maxCount = 1}
}

monster.attacks = {
	{name ="melee", interval = 800, chance = 100, minDamage = -1900, maxDamage = -2500},
	{name ="combat", interval = 2100, chance = 20, minDamage = -1800, maxDamage = -2800, type = COMBAT_PHYSICALDAMAGE, length = 8, spread = 3, effect = CONST_ME_STONES, target = false},
	-- curse
	{name ="condition", type = CONDITION_CURSED, interval = 2500, chance = 15, minDamage = -250, maxDamage = -250, range = 1, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = -450, range = 7, effect = CONST_ME_MAGIC_RED, target = false, duration = 30000}
}

monster.defenses = {
	defense = 50,
	armor = 50
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 95},
	{type = COMBAT_EARTHDAMAGE, percent = 95},
	{type = COMBAT_FIREDAMAGE, percent = 95},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 95},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 95},
	{type = COMBAT_HOLYDAMAGE , percent = 95},
	{type = COMBAT_DEATHDAMAGE , percent = 95}
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