local waterIds = {493, 4608, 4609, 4610, 4611, 13550, 13552, 4612, 4613, 4614, 4615, 4616, 4617, 4618, 4619, 4620, 4621, 4622, 4623, 4624, 4625, 7236, 10499, 15401, 15402, 13549, 23785}
local lootTrash = {2234, 2238, 2376, 2509, 2667}
local lootCommon = {2152, 2167, 2168, 2669, 7588, 7589}
local lootRare = {2143, 2146, 2149, 7158, 7159}
local lootVeryRare = {7632, 7633, 10220}
local lootVeryRare1 = {7632, 13546}
local lootRare1 = {2143, 13546}
local lootCommon1 = {2152, 7589, 13546}

local useWorms = true

local fishing = Action()

function fishing.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local targetId = target.itemid
    if not isInArray(waterIds, target.itemid) then
        return false
    end

    if targetId == 10499 then
        local owner = target:getAttribute(ITEM_ATTRIBUTE_CORPSEOWNER)
        if owner ~= 0 and owner ~= player:getId() then
            player:sendTextMessage(MESSAGE_STATUS_SMALL, "You are not the owner.")
            return true
        end

        toPosition:sendMagicEffect(CONST_ME_WATERSPLASH)
        target:remove()

        local rareChance = math.random(1, 100)
        if rareChance == 1 then
            player:addItem(lootVeryRare[math.random(#lootVeryRare)], 1)
        elseif rareChance <= 3 then
            player:addItem(lootRare[math.random(#lootRare)], 1)
        elseif rareChance <= 10 then
            player:addItem(lootCommon[math.random(#lootCommon)], 1)
        else
            player:addItem(lootTrash[math.random(#lootTrash)], 1)
        end
        return true
    end

    if targetId ~= 7236 then
        toPosition:sendMagicEffect(CONST_ME_LOSEENERGY)
    end

    if targetId == 493 or targetId == 15402 then
        return true
    end
    if math.random(1, 100) <= math.min(math.max(10 + (player:getEffectiveSkillLevel(SKILL_FISHING) - 10) * 0.597, 10), 50) then
        if useWorms and not player:removeItem(3976, 1) then
            return true
        end
        player:addSkillTries(SKILL_FISHING, 1)

        if targetId == 15401 then
            target:transform(targetId + 1)
            target:decay()

            if math.random(1, 100) >= 97 then
                player:addItem(15405, 1)
                return true
            end
        elseif targetId == 7236 then
            target:transform(targetId + 1)
            target:decay()

            local rareChance = math.random(1, 100)
            if rareChance == 1 then
                player:addItem(7158, 1)
                return true
            elseif rareChance <= 4 then
                player:addItem(2669, 1)
                return true
            elseif rareChance <= 10 then
                player:addItem(7159, 1)
                return true
            end
        end
        local weight = math.random(18, math.min(math.max(10 + (player:getEffectiveSkillLevel(SKILL_FISHING) - 10) * 0.597, 10), 50) * 4) * 10
        local fishid = 2667 -- Fish
        if weight >= 1500 then
            fishid = 7963 -- Marlin
        elseif weight >= 1200 then
            fishid = 7158 -- Rainbow Trout
        elseif weight >= 1000 then
            fishid = 2669 -- Northern Pike
        elseif weight >= 800 then
            fishid = 7159 --Green Perch
        end
        local item = Game.createItem(fishid, 1)
        item:setAttribute("weight", weight) -- peso
        item:setAttribute(ITEM_ATTRIBUTE_WRITER, player:getGuid()) -- quem pescou
        item:setAttribute(ITEM_ATTRIBUTE_DATE, os.time()) -- quando
        player:addItemEx(item, true)
    end
    return true
end

fishing:id(2580)
fishing:allowFarUse(true)
fishing:register()

