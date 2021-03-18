--[[
Reserved player action storage key ranges (const.h)
	It is possible to place the storage in a quest door, so the player who has that storage will go through the door

	Reserved player action storage key ranges (const.h at the source)
	[10000000 - 20000000]
	[1000 - 1500]
	[2001 - 2011]

	Others reserved player action/storages
	[100] = unmoveable/untrade/unusable items
	[101] = use pick floor
	[102] = well down action
	[103-120] = others keys action
	[103] = key 0010
	[303] = key 0303
	[1000] = level door. Here 1 must be used followed by the level.
	Example: 1010 = level 10,
	1100 = level 100]

	[3001-3008] = key 3001/3008
	[3012] = key 3012
	[3033] = key 3033
	[3100] = key 3100
	[3142] = key 3142
	[3200] = key 3200
	[3301] = key 3301
	[3302] = key 3302
	[3303] = key 3303
	[3304] = key 3304
	[3350] = key 3350
	[3520] = key 3520
	[3600] = key 3600
	[3610] = key 3610
	[3620] = key 3620
	[3650] = key 3650
	[3666] = key 3666
	[3667] = key 3667
	[3700] = key 3700
	[3701/3703] = key 3701/3703
	[3800/3802] = key 3800/3802
	[3899] = key 3899
	[3900] = key 3900
	[3909/3917] = key 3909/3917
	[3923] = key 3923
	[3925] = key 3925
	[3930] = key 3930
	[3932] = key 3932
	[3934] = key 3934
	[3935] = key 3935
	[3936] = key 3936
	[3938] = key 3938
	[3940] = key 3940
	[3950] = key 3950
	[3960] = key 3960
	[3980] = key 3980
	[3988] = key 3988
	[4001] = key 4001
	[4009] = key 4009
	[4022] = key 4022
	[4023] = key 4023
	[4033] = key 4033
	[4037] = key 4037
	[4055] = key 4055
	[4210] = key 4210
	[4501] = key 4501
	[4502] = key 4502
	[4503] = key 4503
	[4600] = key 4600
	[4601] = key 4601
	[4603] = key 4603
	[5000] = key 5000
	[5002] = key 5002
	[5010] = key 5010
	[5050] = key 5050
	[6010] = key 6010

	Questline = Storage through the Quest
]]

Storage = {
	-- General storages
	isTraining = 50000,
	NpcExhaust = 50001,
	NpcExhaustOnBuy = 50002,
	Dragonfetish = 50003,
	-- empty = 30008
	-- Promotion Storage cannot be changed, it is set in source code
	Promotion = 30018,
	combatProtectionStorage = 50023,
	Factions = 50024,
	blockMovementStorage = 50025,
	PetSummon = 50026,
	TrainerRoom = 50027,
	NpcSpawn = 50028,
	ExerciseDummyExhaust = 350029,
	StoreExaust = 50051,
	PetSummonEvent10 = 50054,
	PetSummonEvent60 = 50055,
	FreeQuests = 990000,
	PremiumAccount = 998899,

	--[[
	Old storages
	Over time, this will be dropped and replaced by the table above
	]]
	OutfitQuest = {
		-- Reserved storage from 50960 - 51039
		-- Until all outfit quests are completed
		DefaultStart = 50960,
		Ref = 50961,
		-- Golden Outfit
		GoldenOutfit = 51015,
	},
	-- News quest development
	-- New storages

}

GlobalStorage = {
	ExpBoost = 65004,
	XpDisplayMode = 65006,
}


-- Values extraction function
local function extractValues(tab, ret)
	if type(tab) == "number" then
		table.insert(ret, tab)
	else
		for _, v in pairs(tab) do
			extractValues(v, ret)
		end
	end
end

local benchmark = os.clock()
local extraction = {}
extractValues(Storage, extraction) -- Call function
table.sort(extraction) -- Sort the table
-- The choice of sorting is due to the fact that sorting is very cheap O (n log2 (n))
-- And then we can simply compare one by one the elements finding duplicates in O(n)

-- Scroll through the extracted table for duplicates
if #extraction > 1 then
	for i = 1, #extraction - 1 do
		if extraction[i] == extraction[i+1] then
			print(">> Duplicate storage value found: ".. extraction[i])
			print(string.format("> Processed in %.4f(s)", os.clock() - benchmark))
		end
	end
end
