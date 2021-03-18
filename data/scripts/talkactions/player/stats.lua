local stats = TalkAction("!stats")
function stats.onSay(player, words, param)
	local level = getPlayerLevel(player)
	local health, healthmax = getCreatureHealth(player), getCreatureMaxHealth(player)
	local mana, manamax = getPlayerMana(player), getPlayerMaxMana(player)
	local velocidade = getCreatureSpeed(player)/2
	local saldo = getPlayerBalance(player)
	local staminaMinutes = player:getStamina()
	local taskpoints = player:getTaskPoints()
	taskrank = Player.rankTask(player)
	guild =  player:getGuild()

	
	local protectionPhysical = 0
	local protectionFire = 0
	local protectionIce = 0
	local protectionEarth = 0
	local protectionEnergy = 0
	local protectionDeath = 0
	local protectionHoly = 0
	local protectionManaDrain = 0
	local protectionLifeDrain = 0
	local totalarmor = 0
	local totaldef = 0
	local itemvazio = 0
	
	local slots = {CONST_SLOT_HEAD, CONST_SLOT_ARMOR, CONST_SLOT_LEGS, CONST_SLOT_FEET, CONST_SLOT_RING, CONST_SLOT_NECKLACE, CONST_SLOT_RIGHT, CONST_SLOT_LEFT, CONST_SLOT_AMMO}
	for _, slot in ipairs(slots) do
		local item = Player.getSlotItem(player, slot)
		if item then	
			if (item:getType():getAbsorbPercent()) == nil then
				itemvazio = 0
			else
				for i, v in    pairs(item:getType():getAbsorbPercent()) do
					if v.combatname == "energy" then
						protectionEnergy = protectionEnergy + v.absorbpercent
					end
					if v.combatname == "fire" then
						protectionFire = protectionFire + v.absorbpercent
					end
					if v.combatname == "ice" then
						protectionIce = protectionIce + v.absorbpercent
					end
					if v.combatname == "earth" then
						protectionEarth = protectionEarth + v.absorbpercent
					end
					if v.combatname == "holy" then
						protectionHoly = protectionHoly + v.absorbpercent
					end
					if v.combatname == "death" then
						protectionDeath = protectionDeath + v.absorbpercent
					end
					if v.combatname == "manadrain" then
						protectionManaDrain = protectionManaDrain + v.absorbpercent
					end
					if v.combatname == "lifedrain" then
						protectionLifeDrain = protectionLifeDrain + v.absorbpercent
					end
					if v.combatname == "physical" then
						protectionPhysical = protectionPhysical + v.absorbpercent
					end		
				end
			end
		totalarmor = totalarmor + getItemArmor(item.uid)
		end	
	end
	
	local slotweapon = CONST_SLOT_LEFT
	local slotshield = CONST_SLOT_RIGHT
	local itemweapon = Player.getSlotItem(player, slotweapon)
	local itemshield = Player.getSlotItem(player, slotshield)
	if itemshield then
		totaldef = totaldef + getItemDefense(itemshield.uid)
		if itemweapon then
			totaldef = totaldef + getItemExtraDefense(itemweapon.uid)
		end
	elseif itemweapon then
		totaldef = totaldef + getItemDefense(itemweapon.uid)
	end
	
	
	
        local vip = getPlayerPremiumDays(player)
        local world = "PVP"	
		local uptime = getWorldUpTime()
        local tmp = getWorldUpTime()
		local bonus = 0
		local questsfeitas = getPlayerStorageValue(player,100000)
		
		
		
		if vip > 0 and staminaMinutes > 2400 then
		bonus = bonus + 30
		end

		if guild == nil then
			guildname = "Você ainda não faz parte de uma guild"
		else
			guildname = guild:getName()
		end
		
		
		
		local blesslvl =  ""
		if getPlayerBlessing(player, 1) and getPlayerBlessing(player, 2) and getPlayerBlessing(player, 3) and getPlayerBlessing(player, 4) and getPlayerBlessing(player, 5) then
		blesslvl = "3.49%"
		else
		blesslvl = "7.00%"
      end
	  
	  local blessskill =  ""
		if getPlayerBlessing(player, 1) and getPlayerBlessing(player, 2) and getPlayerBlessing(player, 3) and getPlayerBlessing(player, 4) and getPlayerBlessing(player, 5) then
		blessskill = "0.35%"
		else
		blessskill = "0.70%"
      end
	  
	   local blessml =  ""
		if getPlayerBlessing(player, 1) and getPlayerBlessing(player, 2) and getPlayerBlessing(player, 3) and getPlayerBlessing(player, 4) and getPlayerBlessing(player, 5) then
		blessml = "0.35%"
		else
		blessml = "0.70%"
      end
	  
	   local looti = ""
	  if getPlayerSlotItem(player, 2).itemid == 2173 or getPlayerBlessing(player, 1) and getPlayerBlessing(player, 2) and getPlayerBlessing(player, 3) and getPlayerBlessing(player, 4) and getPlayerBlessing(player, 5) or getPlayerLevel(player) <= 50 then
	  looti = "0.00%"
       else
		looti = "25.00%"
		end
	  
	  
	  local lootb = ""
	  if getPlayerSlotItem(player, 2).itemid == 2173 or getPlayerBlessing(player, 1) and getPlayerBlessing(player, 2) and getPlayerBlessing(player, 3) and getPlayerBlessing(player, 4) and getPlayerBlessing(player, 5) or getPlayerLevel(player) <= 50 then
	  lootb = "0.00%"
	   else
		lootb = "100.00%"
		end
		

				
		
		
local hours = math.ceil(tmp / 3600) - 1
	local minutes = math.ceil((tmp - (3600 * hours)) / 60)
	if(minutes == 60) then
		minutes = 0
		hours = hours + 1
   end
   
    local horaatual = tonumber(os.date("%H"))
	local minutoatual = tonumber(os.date("%M"))
	

	local result = "Level: "..level.."\nHealth: ".. health .."/".. healthmax .."\nMana: ".. mana .."/".. manamax .. "\nVelocidade: " .. velocidade .. "\n\nQuests Feitas: ".. questsfeitas .."\nTask Points: ".. taskpoints .."\nTask Rank: ".. taskrank .." \n\nDinheiro no banco: ".. saldo .."\nDias de VIP: ".. vip .." \nGuild: ".. guildname .." \nBonus de Experiência: "..bonus.."% \nModo de Jogo: "..world.. " \n\nProteção do Personagem: \nArmadura: " ..totalarmor.. "\nDefesa: " ..totaldef.. "\n\nResistências do Personagem: \nFire: "..protectionFire.. "%  -  Ice: " ..protectionIce.. "%  -  Earth: " ..protectionEarth.. "%\nEnergy: " ..protectionEnergy.. "%  -  Death: " ..protectionDeath.. "%  -  Holy: " ..protectionHoly.. "%\nPhysical: " ..protectionPhysical.. "%  -  Lifedrain: " ..protectionLifeDrain.. "%  -  Manadrain: " ..protectionManaDrain.. "%\n\n\nTempo desde que o Server está Online: "..hours.."h"..minutes.."m \nHorário Oficial do Server: "..horaatual.."h"..minutoatual.."m \nServer Save Diário: 7:00am"

	doPlayerPopupFYI(player, result)

	return false
end

stats:register()