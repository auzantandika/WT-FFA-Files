ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterNetEvent('ttyy:car1')
AddEventHandler('ttyy:car1', function(source, args, rawCommand)
	local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0, 5.0, 0)
	local spawned_car = CreateVehicle(vehiclehash, coords, GetEntityHeading(myPed), true, false)
	SetVehicleOnGroundProperly(spawned_car)
  	SetModelAsNoLongerNeeded(vehiclehash)
    local veh = adder
    if veh == nil then veh = "adder" end
    vehiclehash = GetHashKey(veh)
    RequestModel(vehiclehash)
		TaskWarpPedIntoVehicle(GetPlayerPed(-1), spawned_car, -1)
	end)

RegisterNetEvent('ttyy:car2')
AddEventHandler('ttyy:car2', function(source, args, rawCommand)
	local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0, 5.0, 0)
	local spawned_car = CreateVehicle(vehiclehash, coords, GetEntityHeading(myPed), true, false)
	SetVehicleOnGroundProperly(spawned_car)
  	SetModelAsNoLongerNeeded(vehiclehash)
    local veh = akuma
    if veh == nil then veh = "akuma" end
    vehiclehash = GetHashKey(veh)
    RequestModel(vehiclehash)
		TaskWarpPedIntoVehicle(GetPlayerPed(-1), spawned_car, -1)
	end)