
RematchSaved = {
	[62909] = {
		{
			"BattlePet-0-000008AA7AE8", -- [1]
			445, -- [2]
			369, -- [3]
			564, -- [4]
			568, -- [5]
		}, -- [1]
		{
			"BattlePet-0-000008AA7ADF", -- [1]
			777, -- [2]
			282, -- [3]
			334, -- [4]
			339, -- [5]
		}, -- [2]
		{
			"BattlePet-0-000008AA7BC4", -- [1]
			110, -- [2]
			364, -- [3]
			538, -- [4]
			1211, -- [5]
		}, -- [3]
		["teamName"] = "Pandaren Thundering Spirit",
	},
	[68464] = {
		{
			"BattlePet-0-000008AA7BC4", -- [1]
			110, -- [2]
			364, -- [3]
			538, -- [4]
			1211, -- [5]
		}, -- [1]
		{
			"BattlePet-0-000008AA7A75", -- [1]
			299, -- [2]
			611, -- [3]
			593, -- [4]
			1152, -- [5]
		}, -- [2]
		{
			"BattlePet-0-000008AA799F", -- [1]
			115, -- [2]
			589, -- [3]
			593, -- [4]
			57, -- [5]
		}, -- [3]
		["teamName"] = "Whispering Pandaren Spirit",
	},
	[63498] = {
		{
			"BattlePet-0-000008AA7A9E", -- [1]
			406, -- [2]
			453, -- [3]
			490, -- [4]
			1155, -- [5]
		}, -- [1]
		{
			"BattlePet-0-000008AA7AF1", -- [1]
			122, -- [2]
			168, -- [3]
			405, -- [4]
			1161, -- [5]
		}, -- [2]
		{
			"BattlePet-0-000008AA7ABF", -- [1]
			459, -- [2]
			566, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [3]
		["teamName"] = "Pandaren Burning Spirit",
	},
	[32641] = {
		{
			"BattlePet-0-000008AA7B56", -- [1]
			504, -- [2]
			312, -- [3]
			802, -- [4]
			1416, -- [5]
		}, -- [1]
		{
			"BattlePet-0-000008AA7AF1", -- [1]
			122, -- [2]
			168, -- [3]
			405, -- [4]
			1161, -- [5]
		}, -- [2]
		{
			"BattlePet-0-000008AA7A9E", -- [1]
			406, -- [2]
			453, -- [3]
			490, -- [4]
			1155, -- [5]
		}, -- [3]
		["teamName"] = "Pandaren Flowing Spirit",
	},
}
RematchSettings = {
	["ScriptFilters"] = {
		{
			"Unnamed Pets", -- [1]
			"-- Collected pets that still have their original name.\n\nreturn owned and not customName", -- [2]
		}, -- [1]
		{
			"Partially Leveled", -- [1]
			"-- Pets that have earned some xp in battle.\n\nreturn xp and xp>0", -- [2]
		}, -- [2]
		{
			"Unique Abilities", -- [1]
			"-- Pets with abilities not shared by other pets.\n\nif not count then\n  -- create count of each ability per species\n  count = {}\n  for speciesID in AllSpeciesIDs() do\n    for abilityID in AllAbilities(speciesID) do\n      if not count[abilityID] then\n        count[abilityID] = 0\n      end\n      count[abilityID] = count[abilityID] + 1\n    end\n  end\nend\n\nfor _,abilityID in ipairs(abilityList) do\n  if count[abilityID]==1 then\n    return true\n  end\nend", -- [2]
		}, -- [3]
		{
			"Pets Without Rares", -- [1]
			"-- Collected battle pets that have no rare version.\n\nif not rares then\n  rares = {}\n  for petID in AllPetIDs() do\n    if select(5,C_PetJournal.GetPetStats(petID))==4 then\n      rares[C_PetJournal.GetPetInfoByPetID(petID)]=true\n    end\n  end\nend\n\nif canBattle and owned and not rares[speciesID] then\n  return true\nend", -- [2]
		}, -- [4]
		{
			"Hybrid Counters", -- [1]
			"-- Pets with three or more attack types different than their pet type.\n\nlocal count = 0\nfor _,abilityID in ipairs(abilityList) do\n  local abilityType,noHints = select(7, C_PetBattles.GetAbilityInfoByID(abilityID) )\n  if not noHints and abilityType~=petType then\n    count = count + 1\n  end\nend\n\nreturn count>=3\n", -- [2]
		}, -- [5]
	},
	["QueueSortOrder"] = 1,
	["XPos"] = 625.222229003906,
	["DialogYPos"] = 512.000061035156,
	["HidePetToast"] = true,
	["FavoriteFilters"] = {
	},
	["Sort"] = {
		["Order"] = 1,
		["FavoritesFirst"] = true,
	},
	["JournalPanel"] = 1,
	["BackupCount"] = 0,
	["TeamGroups"] = {
		{
			"Pandaren Spirits", -- [1]
			"Interface\\Icons\\PetJournalPortrait", -- [2]
		}, -- [1]
	},
	["Filters"] = {
		["Other"] = {
		},
		["Strong"] = {
		},
		["Moveset"] = {
		},
		["Tough"] = {
		},
		["Level"] = {
		},
		["Rarity"] = {
		},
		["Sources"] = {
		},
		["Breed"] = {
		},
		["Similar"] = {
		},
		["Script"] = {
		},
		["Collected"] = {
		},
		["Favorite"] = {
		},
		["Types"] = {
		},
	},
	["loadedTeam"] = 63498,
	["AllowHiddenPetsDefaulted"] = true,
	["DialogXPos"] = 910.222351074219,
	["CollapsedOptHeaders"] = {
	},
	["ElvUIToastDefaulted"] = true,
	["PreferredMode"] = 1,
	["ActivePanel"] = 1,
	["Sanctuary"] = {
		["BattlePet-0-000008AA7AE8"] = {
			1, -- [1]
			true, -- [2]
			568, -- [3]
			25, -- [4]
			1790, -- [5]
			276, -- [6]
			224, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000008AA7BC4"] = {
			2, -- [1]
			true, -- [2]
			1211, -- [3]
			25, -- [4]
			1237, -- [5]
			305, -- [6]
			305, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000008AA7ABF"] = {
			1, -- [1]
			true, -- [2]
			1387, -- [3]
			25, -- [4]
			1546, -- [5]
			305, -- [6]
			244, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000008AA7A75"] = {
			1, -- [1]
			true, -- [2]
			1152, -- [3]
			25, -- [4]
			1644, -- [5]
			276, -- [6]
			260, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000008AA799F"] = {
			1, -- [1]
			true, -- [2]
			57, -- [3]
			25, -- [4]
			1481, -- [5]
			309, -- [6]
			260, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000008AA7B56"] = {
			1, -- [1]
			true, -- [2]
			1416, -- [3]
			25, -- [4]
			1546, -- [5]
			289, -- [6]
			260, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000008AA7AF1"] = {
			2, -- [1]
			true, -- [2]
			1161, -- [3]
			25, -- [4]
			1465, -- [5]
			305, -- [6]
			257, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000008AA7A9E"] = {
			2, -- [1]
			true, -- [2]
			1155, -- [3]
			25, -- [4]
			1725, -- [5]
			276, -- [6]
			244, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000008AA7ADF"] = {
			1, -- [1]
			true, -- [2]
			339, -- [3]
			25, -- [4]
			1546, -- [5]
			273, -- [6]
			273, -- [7]
			4, -- [8]
		},
	},
	["SpecialSlots"] = {
	},
	["CornerPos"] = "BOTTOMLEFT",
	["LevelingQueue"] = {
	},
	["JournalUsed"] = true,
	["YPos"] = 209.999954223633,
	["SelectedTab"] = 1,
	["PetNotes"] = {
	},
}