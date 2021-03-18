local mType = Game.createMonsterType("Necromancer")
local monster = {}

monster.description = "um necromancer"
monster.experience = 580
monster.outfit = {
	lookType = 6973,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 580
monster.maxHealth = 580
monster.race = "blood"
monster.corpse = 3058
monster.speed = 188
monster.manaCost = 0
monster.maxSummons = 4

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

monster.summons = {
	{name = "ghoul", chance = 17, interval = 2000, max = 2},
	{name = "ghost", chance = 15, interval = 1500, max = 1},
	{name = "mummy", chance = 13, interval = 1800, max = 1}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Your corpse will be mine!", yell = false},
	{text = "Taste the sweetness of death!", yell = false}
}

monster.loot = {
	{id = 2663, chance = 115},
	{id = 2423, chance = 1000},
	{id = 2436, chance = 350},
	{id = 2195, chance = 50},
	{id = 1987, chance = 100000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -50, maxDamage = -110},
	{name ="combat", interval = 1800, chance = 20, minDamage = -60, maxDamage = -100, type = COMBAT_LIFEDRAIN, range = 1, effect = CONST_ME_DRAWBLOOD, target = false},
	{name ="combat", interval = 1500, chance = 17, minDamage = -35, maxDamage = -95, type = COMBAT_EARTHDAMAGE, range = 7, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 2500, chance = 34, minDamage = -30, maxDamage = -80, type = COMBAT_ENERGYDAMAGE, range = 7, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 1900, chance = 25, minDamage = 42, maxDamage = 68, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
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
