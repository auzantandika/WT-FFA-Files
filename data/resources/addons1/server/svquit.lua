-- Script Made By FAXES
RegisterServerEvent("quitserver")
AddEventHandler("quitserver", function()
	DropPlayer(playerId)
end)

RegisterCommand('home', function(source, args, rawCommand)
    DropPlayer(source, 'TERIMAKASIH SUDAH MAMPIR')-- Change this message, It is displayed to the player on leave.
end)
