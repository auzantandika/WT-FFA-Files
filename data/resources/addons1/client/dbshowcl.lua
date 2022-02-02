ESX = nil
local playerDeath = 0
local playerKill = 0
local Kdt1 = 0
local Name1 = 0
local Kd = 0
local ID = GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1)))

Citizen.CreateThread(function()
    while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(10)
    end
end)

Citizen.CreateThread(function()
	Citizen.Wait(10000)
	while true do
		TriggerServerEvent("scr:update")
		TriggerServerEvent("rnk:update")
		TriggerServerEvent("rnkxp:update")
		TriggerServerEvent("rnkcrew:update")

		ESX.TriggerServerCallback('ttyy:getPlayerKill', function(kill)
        	playerKill = kill
    	end)
		ESX.TriggerServerCallback('ttyy:getPlayerDeath', function(death)
        	playerDeath = death
    	end)
		ESX.TriggerServerCallback('ttyy:getPlayerName1', function(rank1)
        	Name1 = rank1
    	end)
		ESX.TriggerServerCallback('ttyy:getPlayerKdt1', function(ranks1)
        	Kdt1 = ranks1
    	end)
		ESX.TriggerServerCallback('ttyy:getPlayerKd', function(kd)
        	Kd = kd
    	end)
		Citizen.Wait(10000)
	end
end)


Citizen.CreateThread(function()
	Citizen.Wait(21600000)
	while true do
		TriggerServerEvent("rnk:updiscord")
		Citizen.Wait(21600000)
	end
end)

Citizen.CreateThread(function()
	Citizen.Wait(500)
	while true do
		Citizen.Wait(0)
		drawTxt(1, 1.360, 0.5, false, 'I D: ~p~' .. ID .. '~s~', 185, 185, 185, 255)
		drawTxt(1, 1.200, 0.5, false, '⚔️: ~p~' .. playerKill .. '~s~', 185, 185, 185, 255)
		drawTxt(1, 1.260, 0.5, false, '☠️: ~p~' .. playerDeath .. '~s~', 185, 185, 185, 255)
		drawTxt(1, 1.320, 0.5, false, 'K/D: ~p~' .. Kd .. '~s~', 185, 185, 185, 255)
		--[[drawTxt(1, 0.810, 0.5, false, 'PLAYER NO 1: ~p~' .. Name1 ..' , ' ..Kdt1.. '~s~', 185, 185, 185, 255)]]
	end
end)

function drawTxt(x, y, s, ss , text, red, green, blue, alpha)
	SetTextFont(7)--fontId)
	SetTextProportional(1)
	SetTextScale(s, s)
	SetTextColour(red, green, blue, alpha)
	SetTextDropShadow(0, 0, 0, 0, 255)
	if ss then
		SetTextEdge(1, 0, 0, 0, 255)
	end
	SetTextDropShadow()
	SetTextOutline()

	BeginTextCommandDisplayText("STRING")
	AddTextComponentSubstringPlayerName(text)
	EndTextCommandDisplayText(x, y - 1 / 2 - 0.065)
end


---Trigger BUNUH/MATI
AddEventHandler('esx:onPlayerDeath', function(data)
	TriggerServerEvent('ttyyevent:playerDeath')
	exports.esx_xp:ESXP_Add(math.random(10,50))
end)

AddEventHandler('baseevents:onPlayerKilled', function(killerID, deathData)
	TriggerServerEvent('ttyyevent:playerKill', killerID, deathData)
end)

  
RegisterNetEvent("output")
AddEventHandler("output", function(argument)
    TriggerEvent("chatMessage", "[Success]", {0,255,0}, argument)
end)