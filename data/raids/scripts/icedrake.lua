function onRaid()
	local monster = Game.createMonster("Ice Drake", Position(1073, 999, 6))  -- 33389" y="31539" z="11"
	if monster then
		monster:setReward(true)
	end
end
