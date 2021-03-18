local mType = Game.createMonsterType("Beelzeboss")
local monster = {}

monster.description = "Beelzeboss"
monster.experience = 0
monster.outfit = {
	lookType = 12,
	lookHead = 19,
	lookBody = 94,
	lookLegs = 78,
	lookFeet = 78,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 48000
monster.maxHealth = 48000
monster.race = "undead"
monster.corpse = 0
monster.speed = 380
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 9000,
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
	{text = "LET THE ROCK OFF BEGIN!", yell = true},
	{text = "Im the devil I love metal!", yell = true},
	{text = "I'm gonna fill you with my hot demon gel!", yell = true},
	{text = "Now I'm complete and my cock you will suck!", yell = true}
}

monster.loot = {
	{id = 2086, chance = 1000000, unique = 1, actionId = 2026}
}

monster.attacks = {
	{name ="melee", interval = 1800, chance = 100, minDamage = -240, maxDamage = -480},
	{name ="combat", interval = 2450, chance = 22, minDamage = -200, maxDamage = -600, type = COMBAT_DEATHDAMAGE, effect = CONST_ME_MORTAREA, target = false},
	{name ="speed", interval = 6000, chance = 20, SpeedChange = -500, Duration = 5000},
	{name ="firefield", interval = 4100, chance = 10, minDamage = -100, maxDamage = -200, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 3600, chance = 8, minDamage = -200, maxDamage = -300, type = COMBAT_MANADRAIN, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="combat", interval = 3200, chance = 16, minDamage = -150, maxDamage = -300, type = COMBAT_LIFEDRAIN, effect = CONST_ME_MAGIC_RED, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 1000, chance = 30, minDamage = 100, maxDamage = 200, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 70}
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
