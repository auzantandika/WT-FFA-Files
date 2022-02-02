Config = {}

Config.Locale = 'en'

Config.Price = 10
Config.Priceclothes = 10


Config.EnableControls = true

Config.DrawDistance = 100.0
Config.Size   = {x = 1.5, y = 1.5, z = 1.0}
Config.Color  = {r = 102, g = 102, b = 204}
Config.Type   = 1


Config.MarkerSize   = {x = 1.5, y = 1.5, z = 1.0}
Config.MarkerColor  = {r = 102, g = 102, b = 204}
Config.MarkerType   = 1

Config.Shopsclothes = {
	vector3(72.3, -1399.1, 28.4),
	vector3(-703.8, -152.3, 36.4),
	vector3(-167.9, -299.0, 38.7),
	vector3(428.7, -800.1, 28.5),
	vector3(-829.4, -1073.7, 10.3),
	vector3(-1447.8, -242.5, 48.8),
	vector3(11.6, 6514.2, 30.9),
	vector3(123.6, -219.4, 53.6),
	vector3(1696.3, 4829.3, 41.1),
	vector3(618.1, 2759.6, 41.1),
	vector3(1190.6, 2713.4, 37.2),
	vector3(-1193.4, -772.3, 16.3),
	vector3(-3172.5, 1048.1, 19.9),
	vector3(-1108.4, 2708.9, 18.1)
}



Config.ShopsBlips = {
	Ears = {
		Pos = nil,
		Blip = nil
	},
	Mask = {
		Pos = { 
			vector3(-1338.1, -1278.2, 3.8),
		},
		Blip = {sprite = 362, color = 2}
	},
	Helmet = {
		Pos = nil,
		Blip = nil
	},
	Glasses = {
		Pos = nil,
		Blip = nil
	}
}

Config.Zonesacc = {
	Ears = {
		Pos = {
			vector3(80.3, -1389.4, 28.4),
			vector3(-163.0, -302.0, 38.8),
			vector3(-163.0,-302.0, 38.8),
			vector3(420.7, -809.6, 28.6),
			vector3(-817.0, -1075.9, 10.4),
			vector3(-1451.3, -238.2, 48.9),
			vector3(-0.7, 6513.6, 30.9),
			vector3(123.4, -208.0, 53.6),
			vector3(1687.3, 4827.6, 41.1),
			vector3(622.8, 2749.2, 41.2),
			vector3(1200.0, 2705.4,	37.3),
			vector3(-1199.9, -782.5, 16.4),
			vector3(-3171.8, 1059.6, 19.9),
			vector3(-1095.6, 2709.2, 18.2),
		}},
	
	Mask = {
		Pos = {
			vector3(-1338.1, -1278.2, 3.8),
		}},
	
	Helmet = {
		Pos = {
			vector3(81.5, -1400.6, 28.4),
			vector3(-705.8, -159.0,	36.5),
			vector3(-161.3, -295.7,	38.8),
			vector3(419.3, -800.6, 28.6),
			vector3(-824.3, -1081.7, 10.4),
			vector3(-1454.8, -242.9, 48.9),
			vector3(4.7, 6520.9, 30.9),
			vector3(121.0, -223.2, 53.3),
			vector3(1689.6, 4818.8,	41.1),
			vector3(613.9, 2749.9, 41.2),
			vector3(1189.5, 2703.9,	37.3),
			vector3(-1204.0, -774.4, 16.4),
			vector3(-3164.2, 1054.7, 19.9),
			vector3(-1103.1, 2700.5, 18.2),
		}},
	
	Glasses = {
		Pos = {
			vector3(75.2, -1391.1, 28.4),
			vector3(-713.1, -160.1, 36.5),
			vector3(-156.1, -300.5,	38.8),
			vector3(425.4, -807.8, 28.6),
			vector3(-820.8, -1072.9, 10.4),
			vector3(-1458.0, -236.7, 48.9),
			vector3(3.5, 6511.5, 30.9),
			vector3(131.3, -212.3, 53.6),
			vector3(1694.9, 4820.8,	41.1),
			vector3(613.9, 2768.8, 41.2),
			vector3(1198.6, 2711.0, 37.3),
			vector3(-1188.2, -764.5, 16.4),
			vector3(-3173.1,  1038.2, 19.9),
			vector3(-1100.4, 2712.4, 18.2),
		}}
}

Config.Zonestatto = {
	vector3(1322.6, -1651.9, 51.2),
	vector3(-1153.6, -1425.6, 4.9),
	vector3(322.1, 180.4, 103.5),
	vector3(-3170.0, 1075.0, 20.8),
	vector3(1864.6, 3747.7, 33.0),
	vector3(-293.7, 6200.0, 31.4)
}

Config.Marker = {
	r = 250, g = 0, b = 0, a = 100,  -- red color
	x = 1.0, y = 1.0, z = 1.5,       -- tiny, cylinder formed circle
	DrawDistance = 15.0, Type = 1    -- default circle type, low draw distance due to indoors area
}

Config.PoliceNumberRequired = 0
Config.AmbulanceNumberRequired = 0
Config.TimerBeforeNewRob    = 1800 -- The cooldown timer on a store after robbery was completed / canceled, in seconds

Config.MaxDistance    = 20   -- max distance from the robbary, going any longer away from it will to cancel the robbary
Config.GiveBlackMoney = false -- give black money? If disabled it will give cash instead

Stores = {
	["paleto_twentyfourseven"] = {
		position = { x = 1736.32, y = 6419.47, z = 35.03 },
		reward = math.random(1000, 1200),
		nameOfStore = "24/7. (Paleto Bay)",
		secondsRemaining = 360, -- seconds
		lastRobbed = 0
	},
	["sandyshores_twentyfoursever"] = {
		position = { x = 1961.24, y = 3749.46, z = 32.34 },
		reward = math.random(1000, 1200),
		nameOfStore = "24/7. (Sandy Shores)",
		secondsRemaining = 310, -- seconds
		lastRobbed = 0
	},
	["littleseoul_twentyfourseven"] = {
		position = { x = -709.17, y = -904.21, z = 19.21 },
		reward = math.random(1000, 1200),
		nameOfStore = "24/7. (Little Seoul)",
		secondsRemaining = 500, -- seconds
		lastRobbed = 0
	},
	["bar_one"] = {
		position = { x = 1990.57, y = 3044.95, z = 47.21 },
		reward = math.random(1000, 1200),
		nameOfStore = "Yellow Jack. (Sandy Shores)",
		secondsRemaining = 330, -- seconds
		lastRobbed = 0
	},
	["ocean_liquor"] = {
		position = { x = -2959.33, y = 388.21, z = 14.00 },
		reward = math.random(1000, 1200),
		nameOfStore = "Robs Liquor. (Great Ocean Highway)",
		secondsRemaining = 500, -- seconds
		lastRobbed = 0
	},
	["rancho_liquor"] = {
		position = { x = 1126.80, y = -980.40, z = 45.41 },
		reward = math.random(1000, 1200),
		nameOfStore = "Robs Liquor. (El Rancho Blvd)",
		secondsRemaining = 310, -- seconds
		lastRobbed = 0
	},
	["sanandreas_liquor"] = {
		position = { x = -1219.85, y = -916.27, z = 11.32 },
		reward = math.random(1000, 1200),
		nameOfStore = "Robs Liquor. (San Andreas Avenue)",
		secondsRemaining = 310, -- seconds
		lastRobbed = 0
	},
	["grove_ltd"] = {
		position = { x = -43.40, y = -1749.20, z = 29.42 },
		reward = math.random(1000, 1200),
		nameOfStore = "LTD Gasoline. (Grove Street)",
		secondsRemaining = 310, -- seconds
		lastRobbed = 0
	},
	["mirror_ltd"] = {
		position = { x = 1160.67, y = -314.40, z = 69.20 },
		reward = math.random(1000, 1200),
		nameOfStore = "LTD Gasoline. (Mirror Park Boulevard)",
		secondsRemaining = 310, -- seconds
		lastRobbed = 0
	}
}