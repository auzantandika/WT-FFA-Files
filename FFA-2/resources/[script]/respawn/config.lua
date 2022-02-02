Config                            = {}

Config.AntiCombatLog              = false -- enable anti-combat logging?

Config.Locale = 'en'

local second = 5
local minute = 5 * second

Config.EarlyRespawnTimer          = 1 * minute  -- Time til respawn is available
Config.BleedoutTimer              = 1 * minute -- Time til the player bleeds out

Config.RemoveWeaponsAfterRPDeath  = true

Config.RespawnPoint = { coords = vector3(235.01022338867,-784.07684326172,30.639345169067), heading = 154.81 }
