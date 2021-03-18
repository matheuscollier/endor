function onRaid()
	local monster = Game.createMonster("Venom Drake", Position(1063, 985, 7))  -- 33389" y="31539" z="11"
	if monster then
		monster:setReward(true)
	end
end
