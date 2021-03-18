local mType = Game.createMonsterType("Fingerless Butcher")
local monster = {}

monster.description = "fingerless butcher"
monster.experience = 0
monster.outfit = {
	lookType = 255,
	lookHead = 114,
	lookBody = 132,
	lookLegs = 132,
	lookFeet = 132,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 15000
monster.maxHealth = 15000
monster.race = "undead"
monster.corpse = 0
monster.speed = 250
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 8000,
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
	{text = "YAAAHEEE!", yell = false},
	{text = "SLAUGHTER!", yell = false},
	{text = "CARNAGE!", yell = false}
}

monster.loot = {
	{id = 2086, chance = 1000000, unique = 1, actionId = 2006}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -156, maxDamage = -236},
	{name ="combat", interval = 3000, chance = 99, minDamage = -180, maxDamage = -270, type = COMBAT_PHYSICALDAMAGE, range = 3, ShootEffect = CONST_ANI_WHIRLWINDAXE, effect = CONST_ME_DRAWBLOOD, target = false},
	{name ="speed", interval = 6000, chance = 25, SpeedChange = -500, Duration = 5000},
	{name ="outfit", interval = 2000, chance = 10, range = 7, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 5000, outfitMonster = "chicken"},
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{name ="combat", interval = 6000, chance = 25, minDamage = 50, maxDamage = 100, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
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
