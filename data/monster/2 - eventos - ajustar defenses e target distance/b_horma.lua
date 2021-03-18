local mType = Game.createMonsterType("Horma")
local monster = {}

monster.description = "Horma"
monster.experience = 225000
monster.outfit = {
	lookType = 264,
	lookHead = 78,
	lookBody = 116,
	lookLegs = 95,
	lookFeet = 121,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 90000
monster.maxHealth = 90000
monster.race = "blood"
monster.corpse = 20339
monster.speed = 290
monster.manaCost = 590
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
	{id = 8887, chance = 4500},
	{id = 8890, chance = 50000},
	{id = 2454, chance = 50000}
}

monster.attacks = {
	{name ="melee", interval = 1500, chance = 100, minDamage = -1200, maxDamage = -1500},
	{name ="combat", interval = 1420, chance = 99, minDamage = -1200, maxDamage = -1650, type = COMBAT_PHYSICALDAMAGE, range = 8, ShootEffect = CONST_ANI_WHIRLWINDAXE, effect = CONST_ME_DRAWBLOOD, target = true},
	{name ="combat", interval = 1855, chance = 75, minDamage = -1200, maxDamage = -1850, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_SOUND_RED, target = false},
	{name ="speed", interval = 3380, chance = 75, SpeedChange = -600, Duration = 3500}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="combat", interval = 500, chance = 100, minDamage = 150, maxDamage = 200, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 55},
	{type = COMBAT_EARTHDAMAGE, percent = 55},
	{type = COMBAT_FIREDAMAGE, percent = 55},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 95},
	{type = COMBAT_HOLYDAMAGE , percent = 55},
	{type = COMBAT_DEATHDAMAGE , percent = 55}
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
