ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local pedId = PlayerPedId()
        if IsControlJustReleased(0, 289) then
            local ped = PlayerPedId()
            if not HasPedGotWeapon(ped, GetHashKey("WEAPON_PISTOL50"), false) or not HasPedGotWeapon(ped, GetHashKey("WEAPON_REVOLVER_MK2"), false) or not HasPedGotWeapon(ped, GetHashKey("WEAPON_MACHINEPISTOL"), false) or not HasPedGotWeapon(ped, GetHashKey("WEAPON_PISTOL_MK2"), false) or not HasPedGotWeapon(ped, GetHashKey("WEAPON_HEAVYSNIPER"), false) or not HasPedGotWeapon(ped, GetHashKey("WEAPON_ASSAULTRIFLE"), false) then
                GiveWeaponToPed(ped, GetHashKey("WEAPON_PISTOL50"), 120, false, false)
                GiveWeaponToPed(ped, GetHashKey("WEAPON_REVOLVER_MK2"), 120, false, false)
                GiveWeaponToPed(ped, GetHashKey("WEAPON_MACHINEPISTOL"), 200, false, false)
                GiveWeaponToPed(ped, GetHashKey("WEAPON_PISTOL_MK2"), 120, false, false)
                GiveWeaponToPed(ped, GetHashKey("WEAPON_ASSAULTRIFLE"), 120, false, false)
                GiveWeaponToPed(ped, GetHashKey("WEAPON_HEAVYSNIPER"), 12, false, false)

                exports['mythic_notify']:SendAlert('inform', 'SPAWN SENJATA !', 2500, { ['background-color'] = '#ffffff', ['color'] = '#000000' })
		end
	end
        if IsEntityDead(pedId) then
            ped = PlayerPedId()
            RemoveAllPedWeapons(ped, true)
        end
    end
end)

AddEventHandler('playerSpawned', function()
    ped = PlayerPedId()
    RemoveAllPedWeapons(ped, true)
end)