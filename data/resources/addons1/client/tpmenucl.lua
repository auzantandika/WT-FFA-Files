ESX = nil

local Keys = {
	["ESC"] = 322, ["BACKSPACE"] = 177, ["E"] = 38, ["ENTER"] = 18,	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173
}

local menuIsShowed				  = false
local hasAlreadyEnteredMarker     = false
local lastZone                    = nil
local isInhospitalistingMarker 	  = false
local elements = {}
local lastlocation = nil
local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end


	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
	
	AddEventHandler('eden_hospital:hasExitedMarker', function(zone)
		ESX.UI.Menu.CloseAll()
	end)
end)

Citizen.CreateThread(function()
	while true do
		Wait(0)
		if IsControlJustReleased(0, 288) then
			OpenCloakroomMenu()
		end
	end
end)


function OpenCloakroomMenu()
	local playerPed = PlayerPedId()
	local grade = PlayerData.job.grade_name
	local elements = {
		{ label = 'Akuma', value = 'citizen_wear' },
		{label = 'Adder', value = 'baju_dinas'}
	}
		if grade == 'bronze' then
		table.insert(elements, {label = 'bronze1', value = 'b1'})
		table.insert(elements, {label = 'bronze2', value = 'b2'})
	elseif grade == 'silver' then
		table.insert(elements, {label = 'bronze1', value = 's1'})
		table.insert(elements, {label = 'bronze1', value = 's2'})
		table.insert(elements, {label = 'bronze1', value = 'b1'})
		table.insert(elements, {label = 'bronze2', value = 'b2'})
	elseif grade == 'gold' then
		table.insert(elements, {label = 'bronze1', value = 's1'})
		table.insert(elements, {label = 'bronze1', value = 's2'})
		table.insert(elements, {label = 'bronze1', value = 'b1'})
		table.insert(elements, {label = 'bronze2', value = 'b2'})
		table.insert(elements, {label = 'bronze1', value = 'b1'})
		table.insert(elements, {label = 'bronze2', value = 'b2'})
	end

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'cloakroom', {
		title    = 'Spawn Kendaraan',
		align    = 'bottom-right',
		elements = elements

	}, function(data, menu)
		if data.current.value == 'citizen_wear' then
			TriggerEvent('ttyy:car1')
			menu.close()
		end

		if data.current.value == 'baju_dinas' then
			TriggerEvent('ttyy:car2')
			menu.close()
		end

		if data.current.value == 'b1' then
			TriggerServerEvent('spbronze1')
			menu.close()
		end
		
		if data.current.value == 'b2' then
			TriggerEvent('ttyy:carb1')
			menu.close()
		end

		if data.current.value == 's1' then
			TriggerServerEvent('spbronze1')
			menu.close()
		end
		
		if data.current.value == 's2' then
			TriggerEvent('ttyy:carb1')
			menu.close()
		end
		if data.current.value == 'g1' then
			TriggerServerEvent('spbronze1')
			menu.close()
		end
		
		if data.current.value == 'g2' then
			TriggerEvent('ttyy:carb1')
			menu.close()
		end

	end, function(data, menu)
		menu.close()

		CurrentAction     = 'menu_cloakroom'
		CurrentActionMsg  = _U('open_cloackroom')
		CurrentActionData = {}
	end)
end



RegisterNetEvent('ttyy:car1')
AddEventHandler('ttyy:car1', function(akuma)
	local myPed = GetPlayerPed(-1)
	local player = PlayerId()
	local vehicle = GetHashKey("akuma")

    RequestModel(vehicle)

	while not HasModelLoaded(vehicle) do
		Wait(1)
	end

	local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0, 5.0, 0)
	local spawned_car = CreateVehicle(vehicle, coords, 64.55118,116.613,78.69622, true, false)
	SetVehicleOnGroundProperly(spawned_car)
	SetPedIntoVehicle(myPed, spawned_car, - 1)
	SetModelAsNoLongerNeeded(vehicle)
end)

RegisterNetEvent('ttyy:car2')
AddEventHandler('ttyy:car2', function(adder)
	local myPed = GetPlayerPed(-1)
	local player = PlayerId()
	local vehicle = GetHashKey("adder")

    RequestModel(vehicle)

	while not HasModelLoaded(vehicle) do
		Wait(1)
	end

	local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0, 5.0, 0)
	local spawned_car = CreateVehicle(vehicle, coords, 64.55118,116.613,78.69622, true, false)
	SetVehicleOnGroundProperly(spawned_car)
	SetPedIntoVehicle(myPed, spawned_car, - 1)
	SetModelAsNoLongerNeeded(vehicle)
end)