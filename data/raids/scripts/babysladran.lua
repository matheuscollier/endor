function onRaid()
	local monster = Game.createMonster("baby sladran", Position(981, 1273, 6))  -- x="981" y="1273" z="6"
	if monster then
		monster:setReward(true)
	end
end
