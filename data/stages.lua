-- Minlevel and multiplier are MANDATORY
-- Maxlevel is OPTIONAL, but is considered infinite by default
-- Create a stage with minlevel 1 and no maxlevel to disable stages
experienceStages = {
	{
		minlevel = 1,
		maxlevel = 8,
		multiplier = 10
	}, {
		minlevel = 9,
		maxlevel = 20,
		multiplier = 6
	}, {
		minlevel = 21,
		maxlevel = 50,
		multiplier = 5
	}, {
		minlevel = 51,
		maxlevel = 100,
		multiplier = 4
	}, {
		minlevel = 101,
		maxlevel = 200,
		multiplier = 2
	}, {
		minlevel = 201,
		multiplier = 1
	}
	
}

skillsStages = {
	{
		minlevel = 10,
		maxlevel = 80,
		multiplier = 3
	}, {
		minlevel = 81,
		maxlevel = 100,
		multiplier = 2
	}, {
		minlevel = 101,
		multiplier = 1
	}
}

magicLevelStages = {
	{
		minlevel = 0,
		maxlevel = 80,
		multiplier = 3
	}, {
		minlevel = 81,
		maxlevel = 100,
		multiplier = 2
	}, {
		minlevel = 101,
		multiplier = 1
	}
}
