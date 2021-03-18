local mType = Game.createMonsterType("Vanska")
local monster = {}

monster.description = "Vanska"
monster.experience = 150000
monster.outfit = {
	lookType = 254,
	lookHead = 0,
	lookBody = 77,
	lookLegs = 77,
	lookFeet = 114,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 75000
monster.maxHealth = 75000
monster.race = "blood"
monster.corpse = 20347
monster.speed = 280
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
	{text = "Lai lai lalalai.", yell = true}
}

monster.loot = {
	{id = 2168, chance = 50000},
	{id = 2168, chance = 50000},
	{id = 7462, chance = 50000},
	{id = 2430, chance = 50000},
	{id = 10298, chance = 50000},
	{id = 8884, chance = 50000}
}

monster.attacks = {
	{name ="melee", interval = 1500, chance = 100, minDamage = -1200, maxDamage = -1500},
	{name ="combat", interval = 1420, chance = 99, minDamage = -1050, maxDamage = -1350, type = COMBAT_PHYSICALDAMAGE, range = 8, ShootEffect = CONST_ANI_WHIRLWINDAXE, effect = CONST_ME_DRAWBLOOD, target = true},
	{name ="combat", interval = 1855, chance = 75, minDamage = -850, maxDamage = -1250, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_SOUND_RED, target = false}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="combat", interval = 500, chance = 100, minDamage = 100, maxDamage = 200, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
	{type = COMBAT_FIREDAMAGE, percent = 50},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 95},
	{type = COMBAT_HOLYDAMAGE , percent = 50},
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