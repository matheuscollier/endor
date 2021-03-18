local mType = Game.createMonsterType("Minotaur Hunter")
local monster = {}

monster.description = "a minotaur hunter"
monster.experience = 16000
monster.outfit = {
	lookType = 612,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 13500
monster.maxHealth = 13500
monster.race = "blood"
monster.corpse = 23466
monster.speed = 300
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 40
}

monster.flags = {
	isSummonable = false,
	isAttackable = true,
	isHostile = true,
	isConvinceable = false,
	isPushable = false,
	isBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 100,
	isHealthHidden = false,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "You are marked for death!", yell = false},
	{text = "This time the prey is you!", yell = false},
	{text = "You are hunted!", yell = false},
	{text = "You'll make a fine trophy!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 99500, maxCount = 199},
	{id = 2152, chance = 33000, maxCount = 3},
	{id = 5878, chance = 5000},
	{id = 12428, chance = 4700, maxCount = 2},
	{id = 3965, chance = 2000},
	{id = 10316, chance = 200},
	{id = 2496, chance = 120},
	{id = 2195, chance = 1500}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -200},
	{name ="combat", interval = 2000, chance = 100, minDamage = -350, maxDamage = -550, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_THROWINGKNIFE, effect = CONST_ME_HITAREA, target = true},
	{name ="combat", interval = 2000, chance = 22, minDamage = -450, maxDamage = -650, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_EXPLOSION, effect = CONST_ME_EXPLOSIONAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, minDamage = -350, maxDamage = -650, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_GROUNDSHAKER, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 4000, chance = 15, minDamage = 130, maxDamage = 245, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 15},
	{type = COMBAT_ENERGYDAMAGE, percent = 35},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 25},
	{type = COMBAT_DEATHDAMAGE , percent = 25}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
