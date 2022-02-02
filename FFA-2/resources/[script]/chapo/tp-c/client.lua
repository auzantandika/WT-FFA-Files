ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(50)
	end
end)

local elements = {}

--[[
    TELEPORT MENU COORDINATES
]]--

table.insert(elements, { label = 'Taman Kota', x = 232.36, y = -790.52, z = 30.6  }) 
table.insert(elements, { label = 'GARASI PANGGUNG', x = 694.04, y = 627.72, z = 128.4 }) 
table.insert(elements, { label = 'PALETO', x = 148.03883361816, y = 6363.11, z = 31.52214050293 }) 
table.insert(elements, { label = 'IKEA', x = 2763.04, y = 3466.44, z = 55.68 })

--[[
    NPC SPAWN COORDINATES
]]--

local coordonate = {
    {232.36, -790.52, 29.6, "Taman Kota", 159.02, 0x58D696FE, "s_m_y_marine_02"},
    {694.04, 627.72, 128.01, "GARASI PANGGUNG", 249.24, 0x58D696FE, "s_m_y_marine_02"},
    {148.03883361816, 6364.11, 30.52214050293, "PALETO", 92.77, 0x58D696FE, "s_m_y_marine_02"},
    {2761.1875,3464.4426269531,54.716812133789, "IKEA", 68.85, 0x58D696FE, "s_m_y_marine_02"},
}

Citizen.CreateThread(function()

    for _,v in pairs(coordonate) do
      RequestModel(GetHashKey(v[7]))
      while not HasModelLoaded(GetHashKey(v[7])) do
        Wait(1)
      end
  
      RequestAnimDict("mini@strip_club@idles@bouncer@base")
      while not HasAnimDictLoaded("mini@strip_club@idles@bouncer@base") do
        Wait(1)
      end
      ped =  CreatePed(4, v[6], v[1], v[2], v[3], 3374176, false, true)
      SetEntityHeading(ped, v[5])
      FreezeEntityPosition(ped, true)
      SetEntityInvincible(ped, true)
      SetBlockingOfNonTemporaryEvents(ped, true)
      TaskPlayAnim(ped,"mini@strip_club@idles@bouncer@base","base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
    end
end)

Citizen.CreateThread(function()
    while true do
        local pos = GetEntityCoords(PlayerPedId())
        Citizen.Wait(0)
        for _,v in pairs(coordonate) do
            x = v[1]
            y = v[2]
            z = v[3]
            if (Vdist(pos.x, pos.y, pos.z, x, y, z) < 30.0) then
                DrawText3D(x, y, z + 1.0, "TELEPORT MENU", 1.2, 1)
            end
            if (Vdist(pos.x, pos.y, pos.z, x, y, z) < 1.5) then
                if IsControlJustReleased(0, 38) then
                    TriggerEvent("tp:openMenu")
                end
            end

            if IsControlJustReleased(0, 194) then
                ESX.UI.Menu.CloseAll()
            end
            
            if IsControlJustReleased(0, 25) then
                ESX.UI.Menu.CloseAll()
            end
        end
    end
end)

function DrawText3D(x, y, z, text, scl, font) 
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x, _y)
    local factor = (string.len(text)) / 370
    DrawRect(_x, _y + 0.0125, 0.015 + factor, 0.03, 41, 11, 41, 68)
end

RegisterNetEvent('tp:openMenu')
AddEventHandler('tp:openMenu', function()
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'teleport_menu', {
        title    = 'Teleport Menu',
        align    = 'right',
        elements = elements
    }, function(data, menu)
        menu.close()

        local coords = { x = data.current.x,  y = data.current.y, z = data.current.z}

        DoScreenFadeOut(100)
		Wait(750)

        ESX.Game.Teleport(PlayerPedId(), coords)

        DoScreenFadeIn(100)
    end)
end)

--[[ENJOY]]--