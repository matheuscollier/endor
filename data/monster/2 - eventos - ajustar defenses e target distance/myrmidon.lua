local mType = Game.createMonsterType("Myrmidon")
local monster = {}

monster.description = "um Myrmidon"
monster.experience = 20000
monster.outfit = {
	lookType = 134,
	lookHead = 95,
	lookBody = 57,
	lookLegs = 95,
	lookFeet = 57,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 8000
monster.maxHealth = 8000
monster.race = "blood"
monster.corpse = 20355
monster.speed = 350
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
	{text = "Achilles!", yell = true}
}

monster.loot = {
	{id = 2489, chance = 40000},
	{id = 2490, chance = 40000},
	{id = 2521, chance = 40000},
	{id = 2515, chance = 12000},
	{id = 2430, chance = 8000}
}

monster.attacks = {
	{name ="melee", interval = 1300, chance = 100, minDamage = -800, maxDamage = -1200},
	{name ="combat", interval = 1111, chance = 99, minDamage = -700, maxDamage = -900, type = COMBAT_PHYSICALDAMAGE, range = 10, ShootEffect = CONST_ANI_SPEAR, target = false},
	{name ="combat", interval = 1498, chance = 30, minDamage = -950, maxDamage = -1050, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_HITAREA, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 1000, chance = 100, minDamage = 80, maxDamage = 100, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 15},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 15},
	{type = COMBAT_FIREDAMAGE, percent = 15},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = 15},
	{type = COMBAT_DEATHDAMAGE , percent = 15}
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
