-- Script Made By FAXES
RegisterCommand('keluar', function()
    TriggerServerEvent("quitserver")
end)

Citizen.CreateThread(function()
	TriggerEvent('chat:addSuggestion', '/keluar', 'Quit FiveM.')
	TriggerEvent('chat:addSuggestion', '/home', 'Disconnect from the server.')
end)