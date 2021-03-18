function onRaid()
	local monster = Game.createMonster("Nelson", Position(1385, 495, 7))  -- 33389" y="31539" z="11"
	if monster then
		monster:setReward(true)
	end
end
