math.randomseed(os.time())
dofile('data/lib/lib.lua')

NOT_MOVEABLE_ACTION = 100
PARTY_PROTECTION = 1 -- Set to 0 to disable.
ADVANCED_SECURE_MODE = 1 -- Set to 0 to disable.

STORAGEVALUE_PROMOTION = 30018

SERVER_NAME = configManager.getString(configKeys.SERVER_NAME)

-- Bestiary charm
GLOBAL_CHARM_GUT = 0
GLOBAL_CHARM_SCAVENGE = 0

--WEATHER
weatherConfig = {
    groundEffect = CONST_ME_LOSEENERGY,
	fallEffect = CONST_ANI_SMALLICE,
    thunderEffect = configManager.getBoolean(configKeys.WEATHER_THUNDER),
    minDMG = 1,
    maxDMG = 5
}

-- Event Schedule
SCHEDULE_LOOT_RATE = 100
SCHEDULE_EXP_RATE = 100
SCHEDULE_SKILL_RATE = 100

-- MARRY
PROPOSED_STATUS = 1
MARRIED_STATUS = 2
PROPACCEPT_STATUS = 3
LOOK_MARRIAGE_DESCR = TRUE
ITEM_WEDDING_RING = 2121
ITEM_ENGRAVED_WEDDING_RING = 10502

-- Scarlett Etzel
SCARLETT_MAY_TRANSFORM = 0
SCARLETT_MAY_DIE = 0

ropeSpots = {384, 418, 8278, 8592, 13189, 14436, 15635, 19518, 26019, 24621, 24622, 24623, 24624}
specialRopeSpots = { 14435 }

   function getItemAttack(uid) return ItemType(getThing(uid).itemid):getAttack() end
   function getItemDefense(uid) return ItemType(getThing(uid).itemid):getDefense() end
   function getItemExtraDefense(uid) return ItemType(getThing(uid).itemid):getExtraDefense() end
   function getItemArmor(uid) return ItemType(getThing(uid).itemid):getArmor() end
   function getItemWeaponType(uid) return ItemType(getThing(uid).itemid):getWeaponType() end
   function isArmor(uid) if (getItemArmor(uid) ~= 0 and getItemWeaponType(uid) == 0) then return true else return false end end
   function isWeapon(uid) return (getItemWeaponType(uid) > 0 and getItemWeaponType(uid) ~= 4) end
   function isShield(uid) return getItemWeaponType(uid) == 4 end
   function isBow(uid) return (getItemWeaponType(uid) == 5 and (not ItemType(getThing(uid).itemid):isStackable())) end
   
       function getItemAttribute(uid, key)
       local i = ItemType(Item(uid):getId())
       local string_attributes = {
         [ITEM_ATTRIBUTE_NAME] = i:getName(),
         [ITEM_ATTRIBUTE_ARTICLE] = i:getArticle(),
         [ITEM_ATTRIBUTE_PLURALNAME] = i:getPluralName(),
         ["name"] = i:getName(),
         ["article"] = i:getArticle(),
         ["pluralname"] = i:getPluralName()
       }

       local numeric_attributes = {
         [ITEM_ATTRIBUTE_WEIGHT] = i:getWeight(),
         [ITEM_ATTRIBUTE_ATTACK] = i:getAttack(),
         [ITEM_ATTRIBUTE_DEFENSE] = i:getDefense(),
         [ITEM_ATTRIBUTE_EXTRADEFENSE] = i:getExtraDefense(),
         [ITEM_ATTRIBUTE_ARMOR] = i:getArmor(),
         [ITEM_ATTRIBUTE_HITCHANCE] = i:getHitChance(),
         [ITEM_ATTRIBUTE_SHOOTRANGE] = i:getShootRange(),
         ["weight"] = i:getWeight(),
         ["attack"] = i:getAttack(),
         ["defense"] = i:getDefense(),
         ["extradefense"] = i:getExtraDefense(),
         ["armor"] = i:getArmor(),
         ["hitchance"] = i:getHitChance(),
         ["shootrange"] = i:getShootRange()
       }
       
       local attr = Item(uid):getAttribute(key)
       if tonumber(attr) then
         if numeric_attributes[key] then
           return attr ~= 0 and attr or numeric_attributes[key]
         end
       else
         if string_attributes[key] then
           if attr == "" then
             return string_attributes[key]
           end
         end
       end
    return attr
    end

    function doItemSetAttribute(uid, key, value)
       return Item(uid):setAttribute(key, value)
    end

    function doItemEraseAttribute(uid, key)
       return Item(uid):removeAttribute(key)
    end
	
	
	
	function getItemAttribute(uid, key)
       local i = ItemType(Item(uid):getId())
       local string_attributes = {
         [ITEM_ATTRIBUTE_NAME] = i:getName(),
         [ITEM_ATTRIBUTE_ARTICLE] = i:getArticle(),
         [ITEM_ATTRIBUTE_PLURALNAME] = i:getPluralName(),
         ["name"] = i:getName(),
         ["article"] = i:getArticle(),
         ["pluralname"] = i:getPluralName()
       }

       local numeric_attributes = {
         [ITEM_ATTRIBUTE_WEIGHT] = i:getWeight(),
         [ITEM_ATTRIBUTE_ATTACK] = i:getAttack(),
         [ITEM_ATTRIBUTE_DEFENSE] = i:getDefense(),
         [ITEM_ATTRIBUTE_EXTRADEFENSE] = i:getExtraDefense(),
         [ITEM_ATTRIBUTE_ARMOR] = i:getArmor(),
         [ITEM_ATTRIBUTE_HITCHANCE] = i:getHitChance(),
         [ITEM_ATTRIBUTE_SHOOTRANGE] = i:getShootRange(),
         ["weight"] = i:getWeight(),
         ["attack"] = i:getAttack(),
         ["defense"] = i:getDefense(),
         ["extradefense"] = i:getExtraDefense(),
         ["armor"] = i:getArmor(),
         ["hitchance"] = i:getHitChance(),
         ["shootrange"] = i:getShootRange()
       }
       
       local attr = Item(uid):getAttribute(key)
       if tonumber(attr) then
         if numeric_attributes[key] then
           return attr ~= 0 and attr or numeric_attributes[key]
         end
       else
         if string_attributes[key] then
           if attr == "" then
             return string_attributes[key]
           end
         end
       end
    return attr
    end

    function doItemSetAttribute(uid, key, value)
       return Item(uid):setAttribute(key, value)
    end

    function doItemEraseAttribute(uid, key)
       return Item(uid):removeAttribute(key)
    end

     

   
   function getItemInfo( param )
    local itemType = ItemType( param )
    if itemType:getId() == 0 then
        itemType = ItemType(tonumber( param ))
        if itemType:getId() == 0 then
            return false
        end
    end
    return true
end

-- Impact Analyser
-- Every 2 seconds
updateInterval = 2
-- Healing
-- Global table to insert data
healingImpact = {}
-- Damage
-- Global table to insert data
damageImpact = {}

-- New prey => preyTimeLeft
nextPreyTime = {}

do -- Event Schedule rates
	local lootRate = Game.getEventSLoot()
	if lootRate ~= 100 then
		SCHEDULE_LOOT_RATE = lootRate
	end

	local expRate = Game.getEventSExp()
	if expRate ~= 100 then
		SCHEDULE_EXP_RATE = expRate
	end

	local skillRate = Game.getEventSSkill()
	if skillRate ~= 100 then
		SCHEDULE_SKILL_RATE = skillRate
	end
end

table.contains = function(array, value)
	for _, targetColumn in pairs(array) do
		if targetColumn == value then
			return true
		end
	end
	return false
end

string.split = function(str, sep)
	local res = {}
	for v in str:gmatch("([^" .. sep .. "]+)") do
		res[#res + 1] = v
	end
	return res
end

string.splitTrimmed = function(str, sep)
	local res = {}
	for v in str:gmatch("([^" .. sep .. "]+)") do
		res[#res + 1] = v:trim()
	end
	return res
end

string.trim = function(str)
	return str:match'^()%s*$' and '' or str:match'^%s*(.*%S)'
end

-- Stamina
if nextUseStaminaTime == nil then
	nextUseStaminaTime = {}
end

if nextUseStaminaPrey == nil then
	nextUseStaminaPrey = {}
end

if nextUseXpStamina == nil then
	nextUseXpStamina = {}
end

if lastItemImbuing == nil then
	lastItemImbuing = {}
end

if nextDelayPreyReroll == nil then
	nextDelayPreyReroll = {}
end

-- Delay potion
if not playerDelayPotion then
	playerDelayPotion = {}
end
