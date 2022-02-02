ESX  = nil


local logs = 'https://discord.com/api/webhooks/873926291567566849/on1cNRlDV7Vp4FU83WgKTg8EBmuck37893VHPHNXgarYok-ZmvnitxFRmMkaA06Ra9-i'
local communityname ='ESX SYSTEM'
local communitylogo =''

Citizen.CreateThread(function()
	Citizen.Wait(21600000)
	while true do
        TriggerEvent("rnk:updiscord")
        TriggerEvent("rnkxp:updiscord")
        TriggerEvent("rnkcrw:updiscord")
        local name = "ANNOUNCEMENT"
        local message = "^1 SCOREBOARD UPDATE ON DICORD CEK GAIS"
        local r,g,b = 255,0,0
        TriggerClientEvent('chat:addMessage', -1, { args = { name, message }, color = r,g,b })
		Citizen.Wait(21600000)
	end
end)


TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('ttyy:getPlayerKill', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)

	-- Event untuk mendapatkan Rasio Kill
	MySQL.Async.fetchAll('SELECT * FROM users WHERE @identifier=identifier', {
    ['@identifier'] = xPlayer.identifier
    }, function(result)
        if result[1] then
        	local bnh = ""
        	if string.len(tostring(result[1].bunuh)) > 0 then
        		bnh = tostring(result[1].bunuh)
        	else
        		bnh = tostring(result[1].bunuh)
        	end
        	cb(bnh)
        else
        	cb('0')
        end
    end)
end)


ESX.RegisterServerCallback('ttyy:getPlayerKd', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)

	-- Event untuk mendapatkan Rasio Kill
	MySQL.Async.fetchAll('SELECT * FROM users WHERE @identifier=identifier', {
    ['@identifier'] = xPlayer.identifier
    }, function(result)
        if result[1] then
        	local bnh = ""
        	if string.len(tostring(result[1].rkd)) > 0 then
        		bnh = tostring(result[1].rkd)
        	else
        		bnh = tostring(result[1].rkd)
        	end
        	cb(bnh)
        else
        	cb('0')
        end
    end)
end)

ESX.RegisterServerCallback('ttyy:getPlayerDeath', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)

	-- Event untuk mendapatkan Death
	MySQL.Async.fetchAll('SELECT * FROM users WHERE @identifier=identifier', {
    ['@identifier'] = xPlayer.identifier
    }, function(result)
        if result[1] then
        	local dth = ""
        	if string.len(tostring(result[1].mati)) > 0 then
        		dth = tostring(result[1].mati)
        	else
        		dth = tostring(result[1].mati)
        	end
        	cb(dth)
        else
        	cb('0')
        end
    end)
end)


-- Event death
RegisterServerEvent('ttyyevent:playerDeath')
AddEventHandler('ttyyevent:playerDeath', function(isDead)
	local identifier = GetPlayerIdentifiers(source)[1]
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addMoney(math.random(50,100))
	MySQL.Async.execute("UPDATE users SET mati = mati + 1 WHERE identifier=@identifier", {
        ['@identifier'] = identifier
    })
end)

	
-- Event kill
RegisterServerEvent('ttyyevent:playerKill')
AddEventHandler('ttyyevent:playerKill', function(killerID, deathData)
    local _source, pembunuh = source, killerID
    local xPlayer, xPembunuh  = ESX.GetPlayerFromId(_source), ESX.GetPlayerFromId(pembunuh)
    xPembunuh.addMoney(math.random(100,150))
    TriggerClientEvent('esx_xp:Add', killerID, math.random(70,150))
    
 MySQL.Async.fetchAll('SELECT bunuh FROM users WHERE @identifier=identifier LIMIT 1', {
	['@identifier'] = xPembunuh.identifier
 }, function(result)
 	if result[1] then
		local currentBunuh = result[1].bunuh
 		local newBunuh = currentBunuh + 1
 		MySQL.Async.execute('UPDATE users SET bunuh = @newBunuh WHERE identifier = @identifier', {
 			['@newBunuh'] = newBunuh,
 			['@identifier'] = xPembunuh.identifier
 		}, function(rowsChanged)
 		end)
 	end
 end)
end)




----- Update TO DB rank

RegisterServerEvent("scr:update")
AddEventHandler("scr:update", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    
    MySQL.Async.fetchAll('SELECT * FROM users WHERE identifier = @identifier', {
        ['@identifier'] = xPlayer.identifier
    }, function(result)
        local rkds = (result[1].bunuh - result[1].mati)/2
        MySQL.Async.execute("UPDATE users SET rkd = @rkd WHERE identifier = @identifier",
            {
                ['@identifier'] = xPlayer.identifier,
                ['@rkd'] = rkds
            }
        )
    end)
end)

RegisterServerEvent("rnk:update")
AddEventHandler("rnk:update", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    MySQL.Async.fetchAll("SELECT * FROM users ORDER BY rkd DESC LIMIT 10",{}, 
    function(result)
    MySQL.Async.execute('UPDATE ranking SET firstname = @firstname , rkds = @rkds WHERE rank = @rank', {
            ['@firstname']   = result[1].firstname,
            ['@rank']   = 1,
            ['@rkds'] = result[1].rkd
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE ranking SET firstname = @firstname , rkds = @rkds WHERE rank = @rank', {
            ['@firstname']   = result[2].firstname,
            ['@rank']   = 2,
            ['@rkds'] = result[2].rkd
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE ranking SET firstname = @firstname , rkds = @rkds WHERE rank = @rank', {
            ['@firstname']   = result[3].firstname,
            ['@rank']   = 3,
            ['@rkds'] = result[3].rkd
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE ranking SET firstname = @firstname , rkds = @rkds WHERE rank = @rank', {
            ['@firstname']   = result[4].firstname,
            ['@rank']   = 4,
            ['@rkds'] = result[4].rkd
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE ranking SET firstname = @firstname , rkds = @rkds WHERE rank = @rank', {
            ['@firstname']   = result[5].firstname,
            ['@rank']   = 5,
            ['@rkds'] = result[5].rkd
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE ranking SET firstname = @firstname , rkds = @rkds WHERE rank = @rank', {
            ['@firstname']   = result[6].firstname,
            ['@rank']   = 6,
            ['@rkds'] = result[6].rkd
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE ranking SET firstname = @firstname , rkds = @rkds WHERE rank = @rank', {
            ['@firstname']   = result[7].firstname,
            ['@rank']   = 7,
            ['@rkds'] = result[7].rkd
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE ranking SET firstname = @firstname , rkds = @rkds WHERE rank = @rank', {
            ['@firstname']   = result[8].firstname,
            ['@rank']   = 8,
            ['@rkds'] = result[8].rkd
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE ranking SET firstname = @firstname , rkds = @rkds WHERE rank = @rank', {
            ['@firstname']   = result[9].firstname,
            ['@rank']   = 9,
            ['@rkds'] = result[9].rkd
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE ranking SET firstname = @firstname , rkds = @rkds WHERE rank = @rank', {
            ['@firstname']   = result[10].firstname,
            ['@rank']   = 10,
            ['@rkds'] = result[10].rkd
        }, function(result1)
        end)
    end)
end)

RegisterServerEvent("rnkxp:update")
AddEventHandler("rnkxp:update", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    MySQL.Async.fetchAll("SELECT * FROM users ORDER BY rp_rank DESC LIMIT 10",{}, 
    function(result)
    MySQL.Async.execute('UPDATE rankxp SET firstname = @firstname , xpsc = @xpsc WHERE rank = @rank', {
            ['@firstname']   = result[1].firstname,
            ['@rank']   = 1,
            ['@xpsc'] = result[1].rp_rank
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE rankxp SET firstname = @firstname , xpsc = @xpsc WHERE rank = @rank', {
            ['@firstname']   = result[2].firstname,
            ['@rank']   = 2,
            ['@xpsc'] = result[2].rp_rank
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE rankxp SET firstname = @firstname , xpsc = @xpsc WHERE rank = @rank', {
            ['@firstname']   = result[3].firstname,
            ['@rank']   = 3,
            ['@xpsc'] = result[3].rp_rank
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE rankxp SET firstname = @firstname , xpsc = @xpsc WHERE rank = @rank', {
            ['@firstname']   = result[4].firstname,
            ['@rank']   = 4,
            ['@xpsc'] = result[4].rp_rank
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE rankxp SET firstname = @firstname , xpsc = @xpsc WHERE rank = @rank', {
            ['@firstname']   = result[5].firstname,
            ['@rank']   = 5,
            ['@xpsc'] = result[5].rp_rank
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE rankxp SET firstname = @firstname , xpsc = @xpsc WHERE rank = @rank', {
            ['@firstname']   = result[6].firstname,
            ['@rank']   = 6,
            ['@xpsc'] = result[6].rp_rank
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE rankxp SET firstname = @firstname , xpsc = @xpsc WHERE rank = @rank', {
            ['@firstname']   = result[7].firstname,
            ['@rank']   = 7,
            ['@xpsc'] = result[7].rp_rank
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE rankxp SET firstname = @firstname , xpsc = @xpsc WHERE rank = @rank', {
            ['@firstname']   = result[8].firstname,
            ['@rank']   = 8,
            ['@xpsc'] = result[8].rp_rank
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE rankxp SET firstname = @firstname , xpsc = @xpsc WHERE rank = @rank', {
            ['@firstname']   = result[9].firstname,
            ['@rank']   = 9,
            ['@xpsc'] = result[9].rp_rank
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE rankxp SET firstname = @firstname , xpsc = @xpsc WHERE rank = @rank', {
            ['@firstname']   = result[10].firstname,
            ['@rank']   = 10,
            ['@xpsc'] = result[10].rp_rank
        }, function(result1)
        end)
    end)
end)

RegisterServerEvent("rnkcrew:update")
AddEventHandler("rnkcrew:update", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    MySQL.Async.fetchAll("SELECT * FROM ranking_crew ORDER BY kills DESC",{}, 
    function(result)
    MySQL.Async.execute('UPDATE rankcrew SET name = @name , killssc = @killssc WHERE rank = @rank', {
            ['@name']   = result[1].name,
            ['@rank']   = 1,
            ['@killssc'] = result[1].kills
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE rankcrew SET name = @name , killssc = @killssc WHERE rank = @rank', {
            ['@name']   = result[2].name,
            ['@rank']   = 2,
            ['@killssc'] = result[2].kills
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE rankcrew SET name = @name , killssc = @killssc WHERE rank = @rank', {
            ['@name']   = result[3].name,
            ['@rank']   = 3,
            ['@killssc'] = result[3].kills
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE rankcrew SET name = @name , killssc = @killssc WHERE rank = @rank', {
            ['@name']   = result[4].name,
            ['@rank']   = 4,
            ['@killssc'] = result[4].kills
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE rankcrew SET name = @name , killssc = @killssc WHERE rank = @rank', {
            ['@name']   = result[5].name,
            ['@rank']   = 5,
            ['@killssc'] = result[5].kills
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE rankcrew SET name = @name , killssc = @killssc WHERE rank = @rank', {
            ['@name']   = result[6].name,
            ['@rank']   = 6,
            ['@killssc'] = result[6].kills
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE rankcrew SET name = @name , killssc = @killssc WHERE rank = @rank', {
            ['@name']   = result[7].name,
            ['@rank']   = 7,
            ['@killssc'] = result[7].kills
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE rankcrew SET name = @name , killssc = @killssc WHERE rank = @rank', {
            ['@name']   = result[8].name,
            ['@rank']   = 8,
            ['@killssc'] = result[8].kills
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE rankcrew SET name = @name , killssc = @killssc WHERE rank = @rank', {
            ['@name']   = result[9].name,
            ['@rank']   = 9,
            ['@killssc'] = result[9].kills
        }, function(result1)
        end)
        MySQL.Async.execute('UPDATE rankcrew SET name = @name , killssc = @killssc WHERE rank = @rank', {
            ['@name']   = result[10].name,
            ['@rank']   = 10,
            ['@killssc'] = result[10].kills
        }, function(result1)
        end)
    end)
end)


RegisterCommand('rankmanual', function()
    TriggerEvent("rnk:updiscord")
    TriggerEvent("rnkxp:updiscord")
    TriggerEvent("rnkcrw:updiscord")
    local name = "ANNOUNCEMENT"
    local message = "^1 SCOREBOARD UPDATE ON DICORD CEK GAIS"
    local r,g,b = 255,0,0
    TriggerClientEvent('chat:addMessage', -1, { args = { name, message }, color = r,g,b })
end)


RegisterServerEvent("rnk:updiscord")
AddEventHandler("rnk:updiscord", function()
    MySQL.Async.fetchAll("SELECT * FROM ranking ",{
        },
    function(result)
	local xPlayer = ESX.GetPlayerFromId(source)
	local rank1 = result[1].firstname
	local rank2 = result[2].firstname 
	local rank3 = result[3].firstname 
    local rank4 = result[4].firstname 
	local rank5 = result[5].firstname  
	local rank6 = result[6].firstname
    local rank7 = result[7].firstname 
	local rank8 = result[8].firstname 
	local rank9 = result[9].firstname 
    local rank10 = result[10].firstname 
    local rankkd1 = result[1].rkds
    local rankkd2 = result[2].rkds
    local rankkd3 = result[3].rkds
    local rankkd4 = result[4].rkds
    local rankkd5 = result[5].rkds
    local rankkd6 = result[6].rkds
    local rankkd7 = result[7].rkds
    local rankkd8 = result[8].rkds
    local rankkd9 = result[9].rkds
    local rankkd10 = result[10].rkds
	local disconnect = {
			{
				["colo"] = "8663711",
				["title"] = "PLAYER KILL/DEATH TERBAIK",
				["description"] = "Rank 1 : **"..rank1.." , KD : "..rankkd1.."** \n  Rank 2: **"..rank2.." , KD : "..rankkd2.."**\n Rank 3 : **"..rank3.." , KD : "..rankkd3.."** \n  Rank 4: **"..rank4.." , KD : "..rankkd4.."**\n Rank 5 : **"..rank5.." , KD : "..rankkd5.."** \n  Rank 6: **"..rank6.." , KD : "..rankkd6.."**\n Rank 7 : **"..rank7.." , KD : "..rankkd7.."** \n  Rank 8: **"..rank8.." , KD : "..rankkd8.."**\n Rank 9 : **"..rank9.." , KD : "..rankkd9.."** \n  Rank 10: **"..rank10.." , KD : "..rankkd10.."**",
				["footer"] = {
					["text"] = communityname,
					["icon_url"] = communitylogo,
				}
			}
		}

		PerformHttpRequest(logs, function (err, text, header)end, 'POST', json.encode({username = "BOT RANKING", embeds = disconnect}), {['Content-Type'] = 'application/json'}) 
    end)
end)

RegisterServerEvent("rnkxp:updiscord")
AddEventHandler("rnkxp:updiscord", function()
    MySQL.Async.fetchAll("SELECT * FROM rankxp ",{
        },
    function(result)
	local xPlayer = ESX.GetPlayerFromId(source)
	local rankxp1 = result[1].firstname
	local rankxp2 = result[2].firstname 
	local rankxp3 = result[3].firstname 
    local rankxp4 = result[4].firstname 
	local rankxp5 = result[5].firstname  
	local rankxp6 = result[6].firstname
    local rankxp7 = result[7].firstname 
	local rankxp8 = result[8].firstname 
	local rankxp9 = result[9].firstname 
    local rankxp10 = result[10].firstname 
    local rankxps1 = result[1].xpsc
    local rankxps2 = result[2].xpsc
    local rankxps3 = result[3].xpsc
    local rankxps4 = result[4].xpsc
    local rankxps5 = result[5].xpsc
    local rankxps6 = result[6].xpsc
    local rankxps7 = result[7].xpsc
    local rankxps8 = result[8].xpsc
    local rankxps9 = result[9].xpsc
    local rankxps10 = result[10].xpsc
	local disconnect2 = {
			{
				["colo"] = "8663711",
				["title"] = "10 LEVEL TERTINGGI",
				["description"] = "Rank 1 : **"..rankxp1.." , Level : "..rankxps1.."** \n  Rank 2: **"..rankxp2.." , Level : "..rankxps2.."**\n Rank 3 : **"..rankxp3.." , Level : "..rankxps3.."** \n  Rank 4: **"..rankxp4.." , Level : "..rankxps4.."**\n Rank 5 : **"..rankxp5.." , Level : "..rankxps5.."** \n  Rank 6: **"..rankxp6.." , Level : "..rankxps6.."**\n Rank 7 : **"..rankxp7.." , Level : "..rankxps7.."** \n  Rank 8: **"..rankxp8.." , Level : "..rankxps8.."**\n Rank 9 : **"..rankxp9.." , Level : "..rankxps9.."** \n  Rank 10: **"..rankxp10.." , Level : "..rankxps10.."**",
				["footer"] = {
					["text"] = communityname,
					["icon_url"] = communitylogo,
				}
			}
		}

		PerformHttpRequest(logs, function (err, text, header)end, 'POST', json.encode({username = "BOT RANKING XP", embeds = disconnect2}), {['Content-Type'] = 'application/json'}) 
    end)
end)

RegisterServerEvent("rnkcrw:updiscord")
AddEventHandler("rnkcrw:updiscord", function()
    MySQL.Async.fetchAll("SELECT * FROM rankcrew",{
        },
    function(result)
	local xPlayer = ESX.GetPlayerFromId(source)
	local rankcrw1 = result[1].name
	local rankcrw2 = result[2].name 
	local rankcrw3 = result[3].name 
    local rankcrw4 = result[4].name 
	local rankcrw5 = result[5].name  
	local rankcrw6 = result[6].name
    local rankcrw7 = result[7].name 
	local rankcrw8 = result[8].name 
	local rankcrw9 = result[9].name 
    local rankcrw10 = result[10].name 
    local rankcrws1 = result[1].killssc
    local rankcrws2 = result[2].killssc
    local rankcrws3 = result[3].killssc
    local rankcrws4 = result[4].killssc
    local rankcrws5 = result[5].killssc
    local rankcrws6 = result[6].killssc
    local rankcrws7 = result[7].killssc
    local rankcrws8 = result[8].killssc
    local rankcrws9 = result[9].killssc
    local rankcrws10 = result[10].killssc
	local disconnect3 = {
			{
				["colo"] = "8663711",
				["title"] = "10 CREW TERBAIK",
				["description"] = "Rank 1 : **"..rankcrw1.." , Kill : "..rankcrws1.."** \n  Rank 2: **"..rankcrw2.." , Kill : "..rankcrws2.."**\n Rank 3 : **"..rankcrw3.." , Kill : "..rankcrws3.."** \n  Rank 4: **"..rankcrw4.." , Kill : "..rankcrws4.."**\n Rank 5 : **"..rankcrw5.." , Kill : "..rankcrws5.."** \n  Rank 6: **"..rankcrw6.." , Kill : "..rankcrws6.."**\n Rank 7 : **"..rankcrw7.." , Kill : "..rankcrws7.."** \n  Rank 8: **"..rankcrw8.." , Kill : "..rankcrws8.."**\n Rank 9 : **"..rankcrw9.." , Kill : "..rankcrws9.."** \n  Rank 10: **"..rankcrw10.." , Kill : "..rankcrws10.."**",
				["footer"] = {
					["text"] = communityname,
					["icon_url"] = communitylogo,
				}
			}
		}

		PerformHttpRequest(logs, function (err, text, header)end, 'POST', json.encode({username = "BOT RANKING CREW", embeds = disconnect3}), {['Content-Type'] = 'application/json'}) 
    end)
end)



ESX.RegisterServerCallback('ttyy:getPlayerName1', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
	MySQL.Async.fetchAll('SELECT * FROM ranking ', {
    }, function(result)
        if result[1] then
        	local rnk1 = ""
        	if string.len(tostring(result[1].firstname)) then
        		rnk1 = tostring(result[1].firstname)
        	else
        		rnk1 = tostring(result[1].firstname)
        	end
        	cb(rnk1)
        else
        	cb('0')
        end
    end)
end)

ESX.RegisterServerCallback('ttyy:getPlayerKdt1', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
	MySQL.Async.fetchAll('SELECT * FROM ranking ', {
    }, function(result)
        if result[1] then
            local rnks1 =""
        	if string.len(tostring(result[1].rkds)) then
        		rnks1 = tostring(result[1].rkds)
        	else
        		rnks1 = tostring(result[1].rkds)
        	end
        	cb(rnks1)
        else
        	cb('0')
        end
    end)
end)