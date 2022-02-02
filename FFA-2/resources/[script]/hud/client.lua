local status = nil
Citizen.CreateThread(function()
    while true do

        Citizen.Wait(100)
        local playerId = PlayerId()
        local ped = GetPlayerPed(-1)
        local health = GetEntityHealth(ped)
        local armor = GetPedArmour(ped)
        local playerStamina = 100 - GetPlayerSprintStaminaRemaining(playerId)
        local playerDive = GetPlayerUnderwaterTimeRemaining(playerId) * 10.00
        
        SendNUIMessage({
            show = IsPauseMenuActive(),
            health = (GetEntityHealth(GetPlayerPed(-1))-100),
            stamina = playerStamina,
            dive = playerDive,
            heal = health,
            armor = armor,
            food = food,
            water = water,
            id = GetPlayerServerId(PlayerId())
        })
    end
end)

RegisterNetEvent("kittidexh_statushud:updateStatus")
AddEventHandler("kittidexh_statushud:updateStatus", function(status)
    food, water = status[1].percent, status[2].percent
end)