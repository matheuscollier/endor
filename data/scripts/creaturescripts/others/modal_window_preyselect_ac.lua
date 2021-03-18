local modalWindowPreySelectAC = CreatureEvent("modalWindowPreySelectAC")
function modalWindowPreySelectAC.onModalWindow(cid, modalWindowId, buttonId, choiceId)
	cid:unregisterEvent("modalWindowPreySelectAC")
	local monstersprey = {
			[1]  = {name = "Abyssal Cursed Stone"}, 
			[2]  = {name = "Acid Blob"}, 
			[3]  = {name = "Acolyte of the Cult"}, 
			[4]  = {name = "Adept of the Cult"}, 
			[5]  = {name = "Allukard"}, 
			[6]  = {name = "Amazon"}, 
			[7]  = {name = "Ancient Scarab"}, 
			[8]  = {name = "Assassin"}, 
			[9]  = {name = "Bandit"}, 
			[10] = {name = "Banshee"}, 
			[11] = {name = "Barbarian Bloodwalker"}, 
			[12] = {name = "Barbarian Brutetamer"}, 
			[13] = {name = "Barbarian Headsplitter"}, 
			[14] = {name = "Barbarian Skullhunter"}, 
			[15] = {name = "Barkless Devotee"}, 
			[16] = {name = "Barkless Fanatic"}, 
			[17] = {name = "Beduin Nomad"}, 
			[18] = {name = "Behemoth"}, 
			[19] = {name = "Beholder"}, 
			[20] = {name = "Belzebuth Minion"}, 
			[21] = {name = "Betrayed Wraith"}, 
			[22] = {name = "Black Knight"}, 
			[23] = {name = "Blightwalker"}, 
			[24] = {name = "Blood Beast"}, 
			[25] = {name = "Blood Crab"}, 
			[26] = {name = "Bloodboil"}, 
			[27] = {name = "Boar"}, 
			[28] = {name = "Bonebeast"}, 
			[29] = {name = "Boogy"}, 
			[30] = {name = "Breach Brood"}, 
			[31] = {name = "Bullwark"}, 
			[32] = {name = "Carniphila"}, 
			[33] = {name = "Carrion Worm"}, 
			[34] = {name = "Chakoya Toolshaper"}, 
			[35] = {name = "Chakoya Tribewarden"}, 
			[36] = {name = "Chakoya Windcaller"}, 
			[37] = {name = "Haunted Dragon"}, 
			[38] = {name = "Choking Fear"}, 
			[39] = {name = "Cliff Strider"}, 
			[40] = {name = "Crazed Summer Rearguard"}, 
			[41] = {name = "Crazed Summer Vanguard"}, 
			[42] = {name = "Crazed Winter Rearguard"}, 
			[43] = {name = "Crazed Winter Vanguard"}, 
			[44] = {name = "Crypt Shambler"}, 
			[45] = {name = "Crystal Spider"}, 
			[46] = {name = "Cyclops"}, 
			[47] = {name = "Cyclops Drone"}, 
			[48] = {name = "Cyclops Smith"}, 
			[49] = {name = "Cyclopslave"}
		}
		
	if modalWindowId == 1022 then
		if buttonId == 100 then
			for x = 1, #monstersprey do
				if choiceId == x then
					local a = monstersprey[x]
					cid:setPreyCurrentMonster(0, a.name)
					cid:setPreyState(0, 2)
					cid:setPreyMonsterList(0, "")
					cid:setPreyTimeLeft(0, 7200)
					cid:sendPreyData(0)
					-- Removing bonus rerolls back
					cid:setPreyBonusRerolls(cid:getPreyBonusRerolls() - 5)
					-- Send resources
					cid:sendResource("prey", cid:getPreyBonusRerolls())
				end
			end
		elseif buttonId == 101 then
			for x = 1, #monstersprey do
				if choiceId == x then
					local a = monstersprey[x]
					cid:setPreyCurrentMonster(1, a.name)
					cid:setPreyState(1, 2)
					cid:setPreyMonsterList(1, "")
					cid:setPreyTimeLeft(1, 7200)
					cid:sendPreyData(1)
					-- Removing bonus rerolls back
					cid:setPreyBonusRerolls(cid:getPreyBonusRerolls() - 5)
					-- Send resources
					cid:sendResource("prey", cid:getPreyBonusRerolls())
				end
			end
		elseif buttonId == 102 then
			for x = 1, #monstersprey do
				if choiceId == x then
					local a = monstersprey[x]
					cid:setPreyCurrentMonster(2, a.name)
					cid:setPreyState(2, 2)
					cid:setPreyMonsterList(2, "")
					cid:setPreyTimeLeft(2, 7200)
					cid:sendPreyData(2)
					-- Removing bonus rerolls back
					cid:setPreyBonusRerolls(cid:getPreyBonusRerolls() - 5)
					-- Send resources
					cid:sendResource("prey", cid:getPreyBonusRerolls())
				end
			end
		end
	end
	
end
modalWindowPreySelectAC:register()
