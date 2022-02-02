ESX                           = nil
local HasAlreadyEnteredMarker = false
local LastZone                = nil
local CurrentAction           = nil
local CurrentActionMsg        = ''
local CurrentActionData       = {}
local PlayerData			  = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(250)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)

function BMenu()
	
	local elements = {}
	
    table.insert(elements, {label = 'sanchez', value = 'sanchez'})
    table.insert(elements, {label = 'BF 400', value = 'bf400'}) 
    table.insert(elements, {label = 'Double T', value = 'double'})
    table.insert(elements, {label = 'Cliff Hanger', value = 'cliffhanger'})
	
	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'client',
    {
		title    = 'SPAWN KENDARAAN',
		align    = 'right',
		elements = elements,
    },
	
	
	function(data, menu)
	
    if data.current.value == 'sanchez' then
		TriggerEvent('esx:spawnVehicle', "sanchez")
        ESX.UI.Menu.CloseAll()
	end
            
	if data.current.value == 'bf400' then
		TriggerEvent('esx:spawnVehicle', "bf400")
        ESX.UI.Menu.CloseAll()
	end

    if data.current.value == 'cliffhanger' then
		TriggerEvent('esx:spawnVehicle', "cliffhanger")
        ESX.UI.Menu.CloseAll()
	end
            
    if data.current.value == 'double' then
		TriggerEvent('esx:spawnVehicle', "double")
        ESX.UI.Menu.CloseAll()
	end

            
	ESX.UI.Menu.CloseAll()
    end,
	function(data, menu)
		menu.close()
	end)
end

Citizen.CreateThread(function()
	while true do
		Wait(120000)
		exports['mythic_notify']:SendAlert('inform', 'PEMBERSIHAN KENDARAAN !', 5000, { ['background-color'] = '#ffffff', ['color'] = '#000000' })
		TriggerEvent("wld:delallveh", -1)
	end
end)

AddEventHandler('kendaraan:hasEnteredMarker', function(zone)
	CurrentAction     = 'client'
	CurrentActionMsg  = "Tekan ~r~ E ~s~ Untuk Membuka Menu"
	CurrentActionData = {}
end)

AddEventHandler('kendaraan:hasExitedMarker', function(zone)
	
	ESX.UI.Menu.CloseAll()
	CurrentAction = nil
	
end)

-- Display markers
Citizen.CreateThread(function()
	while true do

		Wait(5)

		local coords = GetEntityCoords(PlayerPedId())

		for k,v in pairs(Config.Zones) do
			if(v.Type ~= -1 and GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < Config.DrawDistance) then
				DrawMarker(v.Type, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 100, false, true, 2, false, false, false, false)
			end
		end

	end
end)

-- Enter / Exit marker events
Citizen.CreateThread(function()
	while true do

		Wait(5)

		local coords      = GetEntityCoords(PlayerPedId())
		local isInMarker  = false
		local currentZone = nil

		for k,v in pairs(Config.Zones) do
			if(GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < v.Size.x) then
				isInMarker  = true
				currentZone = k
			end
		end

		if (isInMarker and not HasAlreadyEnteredMarker) or (isInMarker and LastZone ~= currentZone) then
			HasAlreadyEnteredMarker = true
			LastZone                = currentZone
			TriggerEvent('kendaraan:hasEnteredMarker', currentZone)
		end

		if not isInMarker and HasAlreadyEnteredMarker then
			HasAlreadyEnteredMarker = false
			TriggerEvent('kendaraan:hasExitedMarker', LastZone)
		end

	end
end)

-- Key controls
Citizen.CreateThread(function()
	while true do

		Citizen.Wait(5)

		if CurrentAction ~= nil then

			SetTextComponentFormat('STRING')
			AddTextComponentString(CurrentActionMsg)
			DisplayHelpTextFromStringLabel(0, 0, 1, -1)

			if IsControlPressed(0, 46) then
					BMenu()
				CurrentAction = nil
			end

		end

	end
end)