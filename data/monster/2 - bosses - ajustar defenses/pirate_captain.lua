local mType = Game.createMonsterType("Pirate Captain")
local monster = {}

monster.description = "Pirate Captain"
monster.experience = 800000
monster.outfit = {
	lookType = 244,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 200000
monster.maxHealth = 200000
monster.race = "blood"
monster.corpse = 6336
monster.speed = 450
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
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
	{text = "FOR MELKOR!!!", yell = false},
	{text = "RAAARRR!", yell = false},
	{text = "GRRRRRR!", yell = false}
}

monster.loot = {
	{id = 11302, chance = 600, unique = 1},
	{id = 12630, chance = 2500, unique = 1},
	{id = 2514, chance = 12000},
	{id = 8886, chance = 650, unique = 1},
	{id = 11303, chance = 5000, unique = 1},
	{id = 2393, chance = 25000},
	{id = 6553, chance = 1500, unique = 1},
	{id = 2444, chance = 1500, unique = 1},
	{id = 2160, chance = 25600, maxCount = 5}
}

monster.attacks = {
	{name ="melee", interval = 1900, chance = 100, minDamage = -1240, maxDamage = -1840},
	{name ="combat", interval = 2170, chance = 15, minDamage = -1640, maxDamage = -2040, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2550, chance = 25, minDamage = -850, maxDamage = -1200, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_LARGEROCK, target = true},
	{name ="combat", interval = 3150, chance = 33, minDamage = -600, maxDamage = -800, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_GROUNDSHAKER, target = false}
}

monster.defenses = {
	defense = 45,
	armor = 45
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 12},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
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
