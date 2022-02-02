ESX = nil
local playersHealing = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_ambulancejob:revive')
AddEventHandler('esx_ambulancejob:revive', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'ambulance' then
		xPlayer.addMoney(Config.ReviveReward)
		TriggerClientEvent('esx_ambulancejob:revive', target)
	else
		print(('esx_ambulancejob: %s attempted to revive!'):format(xPlayer.identifier))
	end
end)

RegisterServerEvent('esx_ambulancesend:weapon')
AddEventHandler('esx_ambulancesend:weapon', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)
    local xPlayerGroup = xPlayer.getGroup()

    if xPlayer ~= nil then
        if xPlayerGroup == "user" then
		xPlayer.addWeapon("WEAPON_KNIFE", 1)
		xPlayer.addWeapon("WEAPON_PISTOL50", 150)
		xPlayer.addWeapon("WEAPON_REVOLVER", 150)
		xPlayer.addWeapon("WEAPON_COMBATPISTOL", 150)
		xPlayer.addWeapon("WEAPON_MICROSMG", 150)
		xPlayer.addWeapon("WEAPON_SMG", 150)
		xPlayer.addWeapon("WEAPON_ASSAULTRIFLE", 150)
		xPlayer.addWeapon("WEAPON_CARBINERIFLE", 150)
		xPlayer.addWeapon("WEAPON_HEAVYSNIPER", 5)
		elseif xPlayerGroup == "bronze" then
			xPlayer.addWeapon("WEAPON_BAT", 1)
			xPlayer.addWeapon("WEAPON_MACHETE", 1)
			xPlayer.addWeapon("WEAPON_PISTOL50", 250)
			xPlayer.addWeapon("WEAPON_DOUBLEACTION", 250)
			xPlayer.addWeapon("WEAPON_SMG_MK2", 250)
			xPlayer.addWeapon("WEAPON_SMG", 250)
			xPlayer.addWeapon("WEAPON_PUMPSHOTGUN", 250)
			xPlayer.addWeapon("WEAPON_ASSAULTRIFLE", 250)
			xPlayer.addWeapon("WEAPON_CARBINERIFLE", 250)
			xPlayer.addWeapon("WEAPON_BULLPUPRIFLE", 250)
			xPlayer.addWeapon("WEAPON_HEAVYSNIPER", 7)
		elseif xPlayerGroup == "silver" then
			xPlayer.addWeapon("WEAPON_BAT", 1)
			xPlayer.addWeapon("WEAPON_MACHETE", 1)
			xPlayer.addWeapon("WEAPON_PISTOL50", 350)
			xPlayer.addWeapon("WEAPON_DOUBLEACTION", 350)
			xPlayer.addWeapon("WEAPON_SMG_MK2", 350)
			xPlayer.addWeapon("WEAPON_SMG", 350)
			xPlayer.addWeapon("WEAPON_PUMPSHOTGUN", 350)
			xPlayer.addWeapon("WEAPON_ASSAULTRIFLE", 350)
			xPlayer.addWeapon("WEAPON_CARBINERIFLE", 350)
			xPlayer.addWeapon("WEAPON_BULLPUPRIFLE", 350)
			xPlayer.addWeapon("WEAPON_HEAVYSNIPER", 10)
			xPlayer.addWeapon("WEAPON_ASSAULTSMG", 350)
			xPlayer.addWeapon("WEAPON_APPISTOL", 350)
			xPlayer.addWeapon("WEAPON_MUSKET", 350)
			xPlayer.addWeapon("WEAPON_SPECIALCARBINE", 350)
			xPlayer.addWeapon("WEAPON_ADVANCEDRIFLE", 350)
			xPlayer.addWeapon("WEAPON_GUNSENBERG", 350)
		elseif xPlayerGroup == "gold" then
			xPlayer.addWeapon("WEAPON_BAT", 1)
			xPlayer.addWeapon("WEAPON_MACHETE", 1)
			xPlayer.addWeapon("WEAPON_PISTOL50", 450)
			xPlayer.addWeapon("WEAPON_DOUBLEACTION", 450)
			xPlayer.addWeapon("WEAPON_SMG_MK2", 450)
			xPlayer.addWeapon("WEAPON_SMG", 450)
			xPlayer.addWeapon("WEAPON_PUMPSHOTGUN", 450)
			xPlayer.addWeapon("WEAPON_ASSAULTRIFLE", 450)
			xPlayer.addWeapon("WEAPON_CARBINERIFLE", 450)
			xPlayer.addWeapon("WEAPON_BULLPUPRIFLE", 450)
			xPlayer.addWeapon("WEAPON_ASSAULTSMG", 450)
			xPlayer.addWeapon("WEAPON_APPISTOL", 450)
			xPlayer.addWeapon("WEAPON_MUSKET", 450)
			xPlayer.addWeapon("WEAPON_SPECIALCARBINE", 450)
			xPlayer.addWeapon("WEAPON_ADVANCEDRIFLE", 450)
			xPlayer.addWeapon("WEAPON_GUNSENBERG", 450)
			xPlayer.addWeapon("WEAPON_HEAVYSNIPER", 15)
			xPlayer.addWeapon("WEAPON_BATTLEAXE", 1)
			xPlayer.addWeapon("WEAPON_BULLPUPSHOTGUN", 450)
			xPlayer.addWeapon("WEAPON_SPECIALCARBINE_MK2", 450)
			xPlayer.addWeapon("WEAPON_MG", 450)
			xPlayer.addWeapon("WEAPON_MARKSMANRIFLE", 15)
		end
	end
end)

ESX.RegisterServerCallback('esx_ambulancejob:removeItemsAfterRPDeath', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

	if Config.RemoveCashAfterRPDeath then
		if xPlayer.getMoney() > 0 then
			xPlayer.removeMoney(xPlayer.getMoney())
		end
	end

	if Config.RemoveItemsAfterRPDeath then
		for i=1, #xPlayer.inventory, 1 do
			if xPlayer.inventory[i].count > 0 then
				xPlayer.setInventoryItem(xPlayer.inventory[i].name, 0)
			end
		end
	end

	local playerLoadout = {}
	if Config.RemoveWeaponsAfterRPDeath then
		for i=1, #xPlayer.loadout, 1 do
			xPlayer.removeWeapon(xPlayer.loadout[i].name)
		end
	else -- save weapons & restore em' since spawnmanager removes them
		for i=1, #xPlayer.loadout, 1 do
			table.insert(playerLoadout, xPlayer.loadout[i])
		end

		-- give back wepaons after a couple of seconds
		Citizen.CreateThread(function()
			Citizen.Wait(5000)
			for i=1, #playerLoadout, 1 do
				if playerLoadout[i].label ~= nil then
					xPlayer.addWeapon(playerLoadout[i].name, playerLoadout[i].ammo)
				end
			end
		end)
	end

	cb()
end)

ESX.RegisterServerCallback('esx_ambulancejob:getDeathStatus', function(source, cb)
	local identifier = GetPlayerIdentifiers(source)[1]

	MySQL.Async.fetchScalar('SELECT is_dead FROM users WHERE identifier = @identifier', {
		['@identifier'] = identifier
	}, function(isDead)
		if isDead then
			print(('esx_ambulancejob: %s attempted combat logging!'):format(identifier))
		end

		cb(isDead)
	end)
end)

RegisterServerEvent('esx_ambulancejob:setDeathStatus')
AddEventHandler('esx_ambulancejob:setDeathStatus', function(isDead)
	local identifier = GetPlayerIdentifiers(source)[1]

	if type(isDead) ~= 'boolean' then
		print(('esx_ambulancejob: %s attempted to parse something else than a boolean to setDeathStatus!'):format(identifier))
		return
	end

	MySQL.Sync.execute('UPDATE users SET is_dead = @isDead WHERE identifier = @identifier', {
		['@identifier'] = identifier,
		['@isDead'] = isDead
	})
end)