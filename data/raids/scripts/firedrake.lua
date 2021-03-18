function onRaid()
	local monster = Game.createMonster("Fire Drake", Position(1065, 1005, 5))  -- 33389" y="31539" z="11"
	if monster then
		monster:setReward(true)
	end
end
