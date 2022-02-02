local type = {money=1,item=2,weapon=3} -- no touchey, thank you
Config = {}

Config.Command = true  -- Change command to true to switch to /daily
Config.EveryBody = true -- Change to false to stop using Daily Rewards for everyone
Config.random_rewards_enabled = true -- Set to False to Disable Random_Rewards
Config.rblip_enabled = false -- change to false to stop using Markers/blips
Config.AcePerms = false -- Set to true to use esx Perms E.G only superadmin can access it
Config.admin   = 'users' -- Player.Group Only Access daily rewards for certain players

Config.rtime   = 1800  -- Seconds 24H:86399 12H:43199 6H:21399
Config.claimed = "~g~KAMU BERHASIL MENGAMBIL REWARD"

Config.rewards = {
    {
        type = type.money,
        value = 1000
    },
    {
        type = type.item,
        item = "water",
        count = 3
    },
    {
        type = type.item,
        item = "water",
        count = 5
    },
    {
        type = type.weapon,
        weapon = "WEAPON_PISTOL", -- if they already have the weapon, they'll only get the ammo
        ammo = 10
    }
}

Config.random_rewards = {
    {
        chance = 50, -- this can be any whole number (higher = better chance)
        {
            type = type.money,
            value = 100
        },
        {
            type = type.money,
            value = 200
        }
    },
    {
        chance = 40,
        {
            type = type.item,
            item = "boxsniper",
            count = 5
        },
        {
            type = type.item,
            item = "boxsmg",
            count = 5
        }
    },
}

--Make sure these match
Config.rblip = {
    {id = 586, x = 210.947, y = -932.262, z = 30.691}, --Legion Square
    {id = 586, x = 1707.136, y = 3844.262, z = 34.929}
}
--These are the Markers Change the XYZ to match the Map blips
Config.mblip = { 
    {id = 29, x = 210.947, y = -932.262, z = 30.691}, --Legion Square
    {id = 29, x = 1707.136, y = 3844.262, z = 34.929}
}
