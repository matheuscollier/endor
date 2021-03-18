local mType = Game.createMonsterType("Ratzinger")
local monster = {}

monster.description = "Ratzinger"
monster.experience = 0
monster.outfit = {
	lookType = 193,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 24000
monster.maxHealth = 24000
monster.race = "undead"
monster.corpse = 0
monster.speed = 250
monster.manaCost = 0
monster.maxSummons = 7

monster.changeTarget = {
	interval = 7000,
	chance = 5
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
	targetDistance = 3,
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
	{name = "acolyte of the cult", chance = 10, interval = 3000, max = 2},
	{name = "adept of the cult", chance = 10, interval = 3000, max = 2},
	{name = "novice of the cult", chance = 25, interval = 2000, max = 3}
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
}

monster.attacks = {
	{name ="melee", interval = 1500, chance = 100, minDamage = -248, maxDamage = -315},
	{name ="combat", interval = 1200, chance = 18, minDamage = -305, maxDamage = -390, type = COMBAT_ENERGYDAMAGE, length = 8, spread = 3, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="energyfield", interval = 1000, chance = 20, range = 8, ShootEffect = CONST_ANI_ENERGY, target = true},
	{name ="combat", interval = 1000, chance = 45, minDamage = -230, maxDamage = -280, type = COMBAT_ENERGYDAMAGE, range = 6, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true},
	{name ="condition", type = CONDITION_ENERGY, interval = 2000, chance = 99, minDamage = -50, maxDamage = -120, range = 6, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{name ="combat", interval = 5000, chance = 25, minDamage = 30, maxDamage = 50, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
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
	{type = COMBAT_HOLYDAMAGE , percent = 90},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
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
