local Keys = {
	["ESC"] = 322, ["BACKSPACE"] = 177, ["E"] = 38, ["ENTER"] = 18,	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173
}

local menuIsShowed				  = false
local hasAlreadyEnteredMarker     = false
local lastZone                    = nil
local isInhospitalistingMarker 	  = false
local elements = {}
local lastlocation = nil
 
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

AddEventHandler('eden_hospital:hasExitedMarker', function(zone)
	ESX.UI.Menu.CloseAll()
end)


-- Activate menu when player is inside marker
Citizen.CreateThread(function()
	while true do
		Wait(0)
		local coords      = GetEntityCoords(GetPlayerPed(-1))
		isInHospitallistingMarker  = false
		local currentZone = nil
		for i=1, #Config.Zones, 1 do
			if(GetDistanceBetweenCoords(coords, Config.Zones[i].x, Config.Zones[i].y, Config.Zones[i].z, true) < Config.ZoneSize.x) then
				isInHospitallistingMarker  = true
				SetTextComponentFormat('STRING')
            	AddTextComponentString(_U('access_hospital_center'))
            	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
			end
		end
		if isInHospitallistingMarker and not hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = true
		end
		if not isInHospitallistingMarker and hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = false
			TriggerEvent('eden_hospital:hasExitedMarker')
		end
	end
end)

-- Menu Controls
Citizen.CreateThread(function()
	while true do
		Wait(0)
		if IsControlJustReleased(0, Keys['E']) and isInHospitallistingMarker and not menuIsShowed then
			TriggerEvent('tpmenu:open')
		end
	end
end)


table.insert(elements, { label = 'KANTOR POLISI', x = 425.1, y = -979.5, z = 30.7  })
table.insert(elements, { label = 'ALUN ALUN KOTA', x = 229.59, y = -784.5, z = 30.7 })
table.insert(elements, { label = 'IKEA', x = 2757.22, y = 3468.57, z = 55.73  })
table.insert(elements, { label = 'CAR DEALER', x = -38.22, y= -1112.42, z = 26.44  })



local Locale = {
    ['teleported']  = 'You have teleported to ~b~',
    ['teleported_last']  = 'You have teleported to ~r~Last Location',
    ['teleported_last_empty']  = 'You didn\'t visit any location with this menu.',
}

RegisterNetEvent('tpmenu:open')
AddEventHandler('tpmenu:open', function()
    ESX.UI.Menu.CloseAll()					--Close everything ESX.Menu related	
    
    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'tpmenu',
        {
            title    = 'Teleport menu',
            align    = 'bottom-right',
            elements = elements
        },
        function(data, menu)						--on data selection
            if data.current.label == "Last location" then
                if lastlocation ~= nil then  
                    ESX.Game.Teleport(PlayerPedId(), lastlocation) 
                    ESX.ShowNotification(Locale['teleported_last'])
                else 
                    ESX.ShowNotification(Locale['teleported_last_empty'])
                end
            else
                lastlocation = GetEntityCoords(GetPlayerPed(-1))
                local coords = { x = data.current.x,  y = data.current.y, z = data.current.z}
                ESX.Game.Teleport(PlayerPedId(), coords)
                ESX.ShowNotification(Locale['teleported'] .. data.current.label)
            end
            menu.close()							--close menu after selection
          end,
          function(data, menu)
            menu.close()
          end
        )
    
end)