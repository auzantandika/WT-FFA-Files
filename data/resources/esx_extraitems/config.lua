Config = {}
Config.Locale = 'en'

Config.Removeables = {
	-- true = Removes when used | false = Does opposite of true
	Bandage = true,
	BulletProofVest = true,
	Defib = false,
	Drill = false,
	Firework = true,
	FirstAidKit = true,
	OxygenMask = true,
	CleanKit = true,
	RepairKit = true,
	TireKit = true,
	WeaKit = false,
	AmmoBoxes = true,
	-- true = Removes if Failed | false = Doesn't remove if Failed
	LockPick = true
}

-- Item Scenario Wait Times in MS
Config.Wait = {
	Drill = 10000,
	LockPick = 10000,
	CleanKit = 10000,
	RepairKit = 10000,
	TireKit = 10000
}

Config.Heal = true -- true = Will allow First Aid Kits to Heal Players | false = Will give 3 Bandages
Config.BandageHP = 10

-- Binoculars
Config.BinocularsPutAway = 177 -- Backspace Key

-- Weapon Ammos
Config.AmmoBoxes = {
	Pistol = 11, -- 9mm @ 0.28 per round | 50 x 1.05 = 14
	SMG = 11, -- 9mm @ 0.28 per round | 50 x 1.05 = 14
	Shotgun = 11, -- 12g @ 0.36 per round | 25 x 0.36 = 9
	Rifle = 11, -- 5.56 @ 0.47 per round | 25 x 0.47 = 11.75 (12)
	MG = 11, -- 5.56 @ 0.47 per round | 50 x 0.47 = 23.50 (24)
	Sniper = 1, -- 7.62 @ 1.05 per round | 20 x 1.05 = 21
	Flare = 5, -- Not doing Realistic Price
	BoxBig = 100,
	BoxSmall = 50
}

Config.AllowRemove = true -- Allows removing Weapon Attachments

Config.ComponentList = {
	Melee = {
		{weapon = 'WEAPON_KNUCKLE', components = {true, true, true, true, true, true, true, true, true, true}},
		{weapon = 'WEAPON_SWITCHBLADE', components = {true, true, true}}
	},
	Pistols = {
		{weapon = 'WEAPON_APPISTOL', components = {true, true, true, true, true}},
		{weapon = 'WEAPON_CERAMICPISTOL', components = {true, true, true}},
		{weapon = 'WEAPON_COMBATPISTOL', components = {true, true, true, true, true}},
		{weapon = 'WEAPON_HEAVYPISTOL', components = {true, true, true, true, true}},
		{weapon = 'WEAPON_REVOLVER', components = {true, true, true}},
		{weapon = 'WEAPON_REVOLVER_MK2', components = {true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true}},
		{weapon = 'WEAPON_PISTOL', components = {true, true, true, true, true}},
		{weapon = 'WEAPON_PISTOL_MK2', components = {true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true}},
		{weapon = 'WEAPON_PISTOL50', components = {true, true, true, true, true}},
		{weapon = 'WEAPON_SNSPISTOL', components = {true, true, true}},
		{weapon = 'WEAPON_SNSPISTOL_MK2', components = {true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true}},
		{weapon = 'WEAPON_VINTAGEPISTOL', components = {true, true, true}}
	},
	SMGs = {
		{weapon = 'WEAPON_ASSAULTSMG', components = {true, true, true, true, true, true}},
		{weapon = 'WEAPON_COMBATPDW', components = {true, true, true, true, true, true}},
		{weapon = 'WEAPON_MACHINEPISTOL', components = {true, true, true, true}},
		{weapon = 'WEAPON_MICROSMG', components = {true, true, true, true, true, true}},
		{weapon = 'WEAPON_MINISMG', components = {true, true}},
		{weapon = 'WEAPON_SMG', components = {true, true, true, true, true, true, true}},
		{weapon = 'WEAPON_SMG_MK2', components = {true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true}}
	},
	Shotguns = {
		{weapon = 'WEAPON_ASSAULTSHOTGUN', components = {true, true, true, true, true}},
		{weapon = 'WEAPON_BULLPUPSHOTGUN', components = {true, true, true}},
		{weapon = 'WEAPON_COMBATSHOTGUN', components = {true, true}},
		{weapon = 'WEAPON_HEAVYSHOTGUN', components = {true, true, true, true, true, true}},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {true, true, true}},
		{weapon = 'WEAPON_PUMPSHOTGUN_MK2', components = {true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true}},
		{weapon = 'WEAPON_SAWNOFFSHOTGUN', components = {true}}
	},
	Rifles = {
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {true, true, true, true, true, true}},
		{weapon = 'WEAPON_ASSAULTRIFLE', components = {true, true, true, true, true, true, true, true}},
		{weapon = 'WEAPON_ASSAULTRIFLE_MK2', components = {true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true}},
		{weapon = 'WEAPON_BULLPUPRIFLE', components = {true, true, true, true, true, true, true}},
		{weapon = 'WEAPON_BULLPUPRIFLE_MK2', components = {true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true}},
		{weapon = 'WEAPON_CARBINERIFLE', components = {true, true, true, true, true, true, true, true}},
		{weapon = 'WEAPON_CARBINERIFLE_MK2', components = {true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true}},
		{weapon = 'WEAPON_COMPACTRIFLE', components = {true, true, true}},
		{weapon = 'WEAPON_MILITARYRIFLE', components = {true, true, true, true, true, true}},
		{weapon = 'WEAPON_SPECIALCARBINE', components = {true, true, true, true, true, true, true, true}},
		{weapon = 'WEAPON_SPECIALCARBINE_MK2', components = {true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true}}
	},
	MGs = {
		{weapon = 'WEAPON_COMBATMG', components = {true, true, true, true, true}},
		{weapon = 'WEAPON_COMBATMG_MK2', components = {true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true}},
		{weapon = 'WEAPON_GUSENBERG', components = {true, true}},
		{weapon = 'WEAPON_MG', components = {true, true, true, true}}
	},
	Snipers = {
		{weapon = 'WEAPON_HEAVYSNIPER', components = {true, true}},
		{weapon = 'WEAPON_HEAVYSNIPER_MK2', components = {true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true}},
		{weapon = 'WEAPON_MARKSMANRIFLE', components = {true, true, true, true, true, true, true}},
		{weapon = 'WEAPON_MARKSMANRIFLE_MK2', components = {true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true}},
		{weapon = 'WEAPON_SNIPERRIFLE', components = {true, true, true, true}}
	}
}

Config.WeaponList = {
	Pistols = {
		'WEAPON_PISTOL',
		'WEAPON_COMBATPISTOL',
		'WEAPON_APPISTOL',
		'WEAPON_PISTOL50',
		'WEAPON_SNSPISTOL',
		'WEAPON_HEAVYPISTOL',
		'WEAPON_VINTAGEPISTOL',
		'WEAPON_MACHINEPISTOL',
		'WEAPON_REVOLVER',
		'WEAPON_MARKSMANPISTOL',
		'WEAPON_DOUBLEACTION'
	},
	SMGs = {
		'WEAPON_SMG',
		'WEAPON_ASSAULTSMG',
		'WEAPON_MICROSMG',
		'WEAPON_MINISMG',
		'WEAPON_COMBATPDW'
	},
	Shotguns = {
		'WEAPON_PUMPSHOTGUN',
		'WEAPON_SAWNOFFSHOTGUN',
		'WEAPON_ASSAULTSHOTGUN',
		'WEAPON_BULLPUPSHOTGUN',
		'WEAPON_HEAVYSHOTGUN',
		'WEAPON_DBSHOTGUN',
		'WEAPON_AUTOSHOTGUN',
		'WEAPON_MUSKET'
	},
	Rifles = {
		'WEAPON_ASSAULTRIFLE',
		'WEAPON_CARBINERIFLE',
		'WEAPON_ADVANCEDRIFLE',
		'WEAPON_SPECIALCARBINE',
		'WEAPON_BULLPUPRIFLE',
		'WEAPON_COMPACTRIFLE'
	},
	MGs = {
		'WEAPON_MG',
		'WEAPON_COMBATMG',
		'WEAPON_GUSENBERG'
	},
	Snipers = {
		'WEAPON_SNIPERRIFLE',
		'WEAPON_HEAVYSNIPER',
		'WEAPON_MARKSMANRIFLE'
	},
	Flares = {
		'WEAPON_FLAREGUN'
	}
}

-- Vape
Config.Vape = {
	SmokeSize = 0.5, -- Size of Vape Clouds
	FailurePerc = 100, -- Odds of Vape Exploding | 10594 = 0.0001% Chance
	HealAmt = 10, -- How much to Heal the Player
	Cooldown = 4000, -- Amount of Time in MS must wait to take Hit again
	SmokeTime = 2800 -- Amount of Time in MS the smoke will linger
}
