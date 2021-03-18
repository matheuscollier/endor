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
                    npcHandler:say("Seu tempo na prisao acabou. Voce pode [sair] agora se quiser.", cid)
                    npcHandler.topic[cid] = 1
                else
                    npcHandler:say("Quebrando as regras? Voce podera sair somente as ".. os.date("%d %B %Y %X", player:getStorageValue(ANTIBOT.storages.prison_time))..". No entanto, eu conheco uma saida secreta e posso leva-lo se voce quiser [pagar]." , cid)
                    npcHandler.topic[cid] = 2
                end
            end
        else
            return false
        end
    elseif msgcontains(msg, "sair") and npcHandler.topic[cid] == 1 then
        local town = player:getTown()
        local destination = town:getTemplePosition()
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        player:teleportTo(destination)
        destination:sendMagicEffect(CONST_ME_TELEPORT)
        player:setStorageValue(ANTIBOT.storages.in_prison, -1)
        npcHandler:say("Certo! Espero que tenha aprendido uma licao com seus erros.", cid)
        npcHandler.topic[cid] = 0
    elseif msgcontains(msg, "pagar") and npcHandler.topic[cid] == 2 then   
        local cost = ANTIBOT.prison.payment * player:getLevel()
        if cost > 0 then
            npcHandler:say("HaHa! Voce quer sua liberdade de volta por "..cost.." gold coins"..(cost > 1 and "" or "").."?", cid)
            npcHandler.topic[cid] = 3
        else
            local town = player:getTown()
            local destination = town:getTemplePosition()
            player:getPosition():sendMagicEffect(CONST_ME_POFF)
            player:teleportTo(destination)
            destination:sendMagicEffect(CONST_ME_TELEPORT)
            player:setStorageValue(ANTIBOT.storages.in_prison, -1)
            npcHandler:say("Siga-me! Eu irei leva-lo embora. Por favor, nao faca um som.", cid)
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
            npcHandler:say("Siga-me! Eu irei leva-lo embora. Por favor, nao faca um som.", cid)
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
                npcHandler:say("Eu debitei o dinheiro do seu banco. Siga-me! Eu irei leva-lo embora. Por favor, nao faca um som.", cid)
                npcHandler.topic[cid] = 0
            else
                npcHandler:say("Que pobre. Voce nao tem "..cost.." gold coins"..(cost > 1 and "" or "")..".", cid)
                npcHandler.topic[cid] = 0
                npcHandler:releaseFocus(cid)
            end
        end
    elseif msgcontains(msg, "no") and npcHandler.topic[cid] == 3 then
        npcHandler:say("Certo. Volte aqui quando estiver pronto.", cid)
        npcHandler.topic[cid] = 0
        npcHandler:releaseFocus(cid)
    elseif msgcontains(msg, "bye") then
        npcHandler:say("Bye.", cid)
        npcHandler:releaseFocus(cid)
    end
    return true
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)