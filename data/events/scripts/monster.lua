function Monster:onDropLoot(corpse)
	if configManager.getNumber(configKeys.RATE_LOOT) == 0 then
		return
	end

	local mType = self:getType()
	if mType:isRewardBoss() then
		corpse:registerReward()
		return
	end

	local player = Player(corpse:getCorpseOwner())
	local mType = self:getType()
	if not player or player:getStamina() > 840 then
		local monsterLoot = mType:getLoot()
		for i = 1, #monsterLoot do
			local boolCharm = false
			if player then
				local charmType = player:getCharmMonsterType(CHARM_GUT)
				if charmType and charmType:raceId() == mType:raceId() then
					boolCharm = true
				end
			end
		
			local item = corpse:createLootItem(monsterLoot[i], boolCharm)
			if self:getName():lower() == (Game.getBoostedCreature()):lower() then
				local itemBoosted = corpse:createLootItem(monsterLoot[i], boolCharm)
			end
			if not item then
				print('[Warning] DropLoot:', 'Could not add loot item to corpse.')
			end
		end

		if player then
			local text = {}
			local oldClientText = ""
			local version = player:getClient().version
			if self:getName():lower() == (Game.getBoostedCreature()):lower() then
				 text = ("Loot of %s: %s (boosted loot)"):format(mType:getNameDescription(), corpse:getContentDescription())
				 if party or version < 1200 then
					oldClientText = ("Loot of %s: %s (boosted loot)"):format(mType:getNameDescription(), corpse:getContentDescription(true))
				 end
			else
				 text = ("Loot of %s: %s"):format(mType:getNameDescription(), corpse:getContentDescription())
				 if party or version < 1200 then
					oldClientText = ("Loot of %s: %s"):format(mType:getNameDescription(), corpse:getContentDescription(true))
				 end
			end
			local party = player:getParty()
			if party then
				party:broadcastPartyLoot(text, oldClientText)
			else
				player:sendTextMessage(MESSAGE_LOOT, version >= 1200 and text or oldClientText)
				if version < 1200 then
					player:sendTextMessage(MESSAGE_GUILD, oldClientText, 9)
				end
			end
			player:updateKillTracker(self, corpse)
		end
	else
		local text = ("Loot of %s: nothing (due to low stamina)"):format(mType:getNameDescription())
		local party = player:getParty()
		if party then
			party:broadcastPartyLoot(text)
		else
			player:sendTextMessage(MESSAGE_LOOT, text)
		end
	end
end

function Monster:onSpawn(position)
	if self:getType():isRewardBoss() then
		self:setReward(true)
	end

	if not self:getType():canSpawn(position) then
		self:remove()
	else
		local spec = Game.getSpectators(position, false, false)
		for _, pid in pairs(spec) do
			local monster = Monster(pid)
			if monster and not monster:getType():canSpawn(position) then
				monster:remove()
			end
		end
	end
	
end
