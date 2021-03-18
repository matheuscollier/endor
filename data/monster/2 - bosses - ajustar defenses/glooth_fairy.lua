local mType = Game.createMonsterType("Glooth Fairy")
local monster = {}

monster.description = "um glooth fairy"
monster.experience = 900000
monster.outfit = {
	lookType = 679,
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
monster.corpse = 23343
monster.speed = 500
monster.manaCost = 0
monster.maxSummons = 2

monster.changeTarget = {
	interval = 4000,
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

monster.summons = {
	{name = "walker", chance = 50, interval = 3000, max = 2}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Il lorstok human!", yell = false},
	{text = "Toks utat.", yell = false},
	{text = "Human, uh whil dyh!", yell = false},
	{text = "Youh ah trak!", yell = false},
	{text = "Let da mashing begin!", yell = false}
}

monster.loot = {
	{id = 23529, chance = 500, unique = 1},
	{id = 23549, chance = 2000, unique = 1},
	{id = 23550, chance = 2000, unique = 1},
	{id = 23551, chance = 2000, unique = 1},
	{id = 23557, chance = 5000, unique = 1},
	{id = 2160, chance = 15600, maxCount = 25}
}

monster.attacks = {
	{name ="melee", interval = 1500, chance = 100, skill = 150, attack = 150},
	{name ="combat", interval = 2000, chance = 100, minDamage = -1850, maxDamage = -2350, type = COMBAT_EARTHDAMAGE, range = 7, ShootEffect = CONST_ANI_GREENSTAR, effect = CONST_ME_POISONAREA, target = true},
	{name ="combat", interval = 3000, chance = 45, minDamage = -1950, maxDamage = -2450, type = COMBAT_EARTHDAMAGE, range = 7, ShootEffect = CONST_ANI_GREENSTAR, effect = CONST_ME_POISONAREA, target = true},
	{name ="combat", interval = 3500, chance = 40, minDamage = -2800, maxDamage = -3200, type = COMBAT_FIREDAMAGE, range = 7, length = 7, spread = 3, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_HITBYFIRE, target = true},
	{name ="condition", type = CONDITION_POISON, interval = 4000, chance = 60, minDamage = -1950, maxDamage = -2450, range = 7, radius = 7, effect = CONST_ME_HITBYPOISON, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 80},
	{type = COMBAT_ENERGYDAMAGE, percent = 80},
	{type = COMBAT_EARTHDAMAGE, percent = 80},
	{type = COMBAT_FIREDAMAGE, percent = 80},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 65},
	{type = COMBAT_HOLYDAMAGE , percent = 75},
	{type = COMBAT_DEATHDAMAGE , percent = 80}
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
