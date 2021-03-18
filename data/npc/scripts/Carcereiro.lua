-- AntiBot System by Dwarfer
local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
function onCreatureAppear(cid)  npcHandler:onCreatureAppear(cid)  end
function onCreatureDisappear(cid)  npcHandler:onCreatureDisappear(cid)  end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg)  end
function onThink()  npcHandler:onThink()  end

function creatureSayCallback(cid, type, msg)
    local player = Player(cid)
    if not npcHandler:isFocused(cid) then
        if msg == "hi" or msg == "hello" then
            if player:getStorageValue(ANTIBOT.storages.in_prison) == 1 then
                npcHandler:addFocus(cid)
                if player:getStorageValue(ANTIBOT.storages.prison_time) < os.time() then
                    npcHandler:say("Your time in prison is over. You can {leave} now if you want.", cid)
                    npcHandler.topic[cid] = 1
                else
                    npcHandler:say("Disrespecting the rules, right? You can leave only at ".. os.date("%d %B %Y %X", player:getStorageValue(ANTIBOT.storages.prison_time))..". However, I know a hide exit and I can take you there if you are disposed to {pay} me." , cid)
                    npcHandler.topic[cid] = 2
                end
            end
        else
            return false
        end
    elseif msgcontains(msg, "leave") and npcHandler.topic[cid] == 1 then
        local town = player:getTown()
        local destination = town:getTemplePosition()
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        player:teleportTo(destination)
        destination:sendMagicEffect(CONST_ME_TELEPORT)
        player:setStorageValue(ANTIBOT.storages.in_prison, -1)
        npcHandler:say("Okay! I hope you had learnt about your mistakes.", cid)
        npcHandler.topic[cid] = 0
    elseif msgcontains(msg, "pay") and npcHandler.topic[cid] == 2 then   
        local cost = ANTIBOT.prison.payment * player:getLevel()
        if cost > 0 then
            npcHandler:say("HaHa! Do you want your freedom back for "..cost.." gold coin"..(cost > 1 and "s" or "").."?", cid)
            npcHandler.topic[cid] = 3
        else
            local town = player:getTown()
            local destination = town:getTemplePosition()
            player:getPosition():sendMagicEffect(CONST_ME_POFF)
            player:teleportTo(destination)
            destination:sendMagicEffect(CONST_ME_TELEPORT)
            player:setStorageValue(ANTIBOT.storages.in_prison, -1)
            npcHandler:say("Follow me and I'll take you out. Please, do not make a sound.", cid)
            npcHandler.topic[cid] = 0
        end
    elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 3 then
        local cost = ANTIBOT.prison.payment * player:getLevel()
        if player:removeMoney(cost) then
            local town = player:getTown()
            local destination = town:getTemplePosition()
            player:getPosition():sendMagicEffect(CONST_ME_POFF)
            player:teleportTo(destination)
            destination:sendMagicEffect(CONST_ME_TELEPORT)
            player:setStorageValue(ANTIBOT.storages.in_prison, -1)
            npcHandler:say("Follow me and I'll take you out. Please, do not make a sound.", cid)
            npcHandler.topic[cid] = 0
        else
            local balance = player:getBankBalance()
            if balance >= cost then
                player:setBankBalance(balance - cost)
                local town = player:getTown()
                local destination = town:getTemplePosition()
                player:getPosition():sendMagicEffect(CONST_ME_POFF)
                player:teleportTo(destination)
                destination:sendMagicEffect(CONST_ME_TELEPORT)
                player:setStorageValue(ANTIBOT.storages.in_prison, -1)
                npcHandler:say("I debited the money from your bank. Follow me and I'll take you out. Please, do not make a sound.", cid)
                npcHandler.topic[cid] = 0
            else
                npcHandler:say("You do not seem to be a reliable person. You do not have "..cost.." gold coin"..(cost > 1 and "s" or "")..".", cid)
                npcHandler.topic[cid] = 0
                npcHandler:releaseFocus(cid)
            end
        end
    elseif msgcontains(msg, "no") and npcHandler.topic[cid] == 3 then
        npcHandler:say("Right. Come back when you are ready.", cid)
        npcHandler.topic[cid] = 0
        npcHandler:releaseFocus(cid)
    elseif msgcontains(msg, "bye") then
        npcHandler:say("Bye.", cid)
        npcHandler:releaseFocus(cid)
    end
    return true
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)