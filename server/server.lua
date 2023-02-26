local RSGCore = exports['rsg-core']:GetCoreObject()

-- get house keys
RSGCore.Functions.CreateCallback('rsg-houses:server:GetHouseKeys', function(source, cb)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local GetHouses = {}
    local housekeys = MySQL.query.await('SELECT * FROM player_housekeys WHERE citizenid=@citizenid', { ['@citizenid'] = Player.PlayerData.citizenid })
    if housekeys[1] ~= nil then
        cb(housekeys)
    else
        return
    end
end)

-- get house keys (guests)
RSGCore.Functions.CreateCallback('rsg-houses:server:GetGuestHouseKeys', function(source, cb)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local guestinfo = MySQL.query.await('SELECT * FROM player_housekeys WHERE guest=@guest', {['@guest'] = 1})
    if guestinfo[1] ~= nil then
        cb(guestinfo)
    else
        return
    end
end)

-- get house info
RSGCore.Functions.CreateCallback('rsg-houses:server:GetHouseInfo', function(source, cb)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local houseinfo = MySQL.query.await('SELECT * FROM player_houses', {})
    if houseinfo[1] ~= nil then
        cb(houseinfo)
    else
        return
    end
end)

-- get owned house info
RSGCore.Functions.CreateCallback('rsg-houses:server:GetOwnedHouseInfo', function(source, cb)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local houseinfo = MySQL.query.await('SELECT * FROM player_houses WHERE citizenid=@citizenid AND owned=@owned', { ['@citizenid'] = Player.PlayerData.citizenid, ['@owned'] = 1 } )
    if houseinfo[1] ~= nil then
        cb(houseinfo)
    else
        return
    end
end)

-- buy house
RegisterServerEvent('rsg-houses:server:buyhouse', function(data)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local firstname = Player.PlayerData.charinfo.firstname
    local lastname = Player.PlayerData.charinfo.lastname
    local fullname = (firstname..' '..lastname)
    local housecount = MySQL.prepare.await('SELECT COUNT(*) FROM player_houses WHERE citizenid = ?', {Player.PlayerData.citizenid})
    if housecount >= 1 then
        TriggerClientEvent('RSGCore:Notify', src, 'You already have a house!', 'error')
        return
    end
    if (Player.PlayerData.money.cash < data.price) then
        TriggerClientEvent('RSGCore:Notify', src, 'You don\'t have enough cash!', 'error')
        return
    end
    MySQL.update('UPDATE player_houses SET citizenid = ?, fullname = ?, owned = ?, credit = ? WHERE houseid = ?', { Player.PlayerData.citizenid, fullname, 1, Config.StartCredit, data.house })
    MySQL.insert('INSERT INTO player_housekeys(citizenid, houseid) VALUES(@citizenid, @houseid)', {
        ['@citizenid'] = Player.PlayerData.citizenid,
        ['@houseid'] = data.house
    })
    Player.Functions.RemoveMoney('cash', data.price)
    TriggerClientEvent('RSGCore:Notify', src, 'house purchased', 'success')
end)

-- sell house
RegisterServerEvent('rsg-houses:server:sellhouse', function(data)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    MySQL.update('UPDATE player_houses SET citizenid = ?, fullname = ?, owned = ? WHERE houseid = ?', { 0, 0, 0, data.house })
    MySQL.update('DELETE FROM player_housekeys WHERE houseid = ?', { data.house })
    Player.Functions.AddMoney('cash', data.price)
    TriggerClientEvent('RSGCore:Notify', src, 'house sold and keys removed', 'success')
end)

-- add house credit
RegisterNetEvent('rsg-houses:server:addcredit', function(newcredit, removemoney, houseid)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    Player.Functions.RemoveMoney("cash", removemoney, "land-tax-credit")
    MySQL.update('UPDATE player_houses SET credit = ? WHERE houseid = ?', { newcredit, houseid })
    RSGCore.Functions.Notify(src, 'land tax credit added for '..houseid, 'success')
    Wait(5000)
    RSGCore.Functions.Notify(src,  'your land tax credit is now $'..newcredit, 'primary')
end)

--------------------------------------------------------------------------------------------------

-- get all door states
RSGCore.Functions.CreateCallback('rsg-houses:server:GetDoorState', function(source, cb)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local doorstate = MySQL.query.await('SELECT * FROM doors', {})
    if doorstate[1] ~= nil then
        cb(doorstate)
    else
        return
    end
end)

-- get current door state
RSGCore.Functions.CreateCallback('rsg-houses:server:GetCurrentDoorState', function(source, cb, door)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local result = MySQL.query.await('SELECT doorstate FROM doors WHERE doorid = ?', { door })
    if result[1] ~= nil then
        cb(result[1].doorstate)
    else
        return
    end
end)

-- update door state
RegisterNetEvent('rsg-houses:server:UpdateDoorState', function(doorid, doorstate)
    MySQL.update('UPDATE doors SET doorstate = ? WHERE doorid = ?', { doorstate, doorid })
end)

--------------------------------------------------------------------------------------------------

-- land tax billing loop
function BillingInterval()
    local result = MySQL.query.await('SELECT * FROM player_houses WHERE owned=@owned', { ['@owned'] = 1 } )
    if result then
        for i = 1, #result do
            local row = result[i]
            if Config.Debug == true then
                print(row.agent, row.houseid, row.citizenid, row.fullname, row.owned, row.price, row.credit)
            end
            if row.credit >= Config.LandTaxPerCycle then
                local creditadjust = (row.credit - Config.LandTaxPerCycle)
                MySQL.update('UPDATE player_houses SET credit = ? WHERE houseid = ? AND citizenid = ?', { creditadjust, row.houseid, row.citizenid })
                local creditwarning = (Config.LandTaxPerCycle * Config.CreditWarning)
                if row.credit < creditwarning then
                    MySQL.insert('INSERT INTO telegrams (citizenid, recipient, sender, sendername, subject, sentDate, message) VALUES (?, ?, ?, ?, ?, ?, ?)', {
                        row.citizenid,
                        row.fullname,
                        'NO-REPLY',
                        'Land Tax Office',
                        'Land Tax Credit Due to Run Out!',
                        os.date("%x"),
                        'Your land tax credit for your house is due to run out!',
                    })
                end
            else
                MySQL.insert('INSERT INTO telegrams (citizenid, recipient, sender, sendername, subject, sentDate, message) VALUES (?, ?, ?, ?, ?, ?, ?)', {
                    row.citizenid,
                    row.fullname,
                    'NO-REPLY',
                    'Land Tax Office',
                    'Land Tax Credit Ran Out!',
                    os.date("%x"),
                    'Due to lack of tax credit, your house has been repossessed!',
                })
                Wait(1000)
                MySQL.update('UPDATE player_houses SET citizenid = ?, fullname = ?, owned = ? WHERE houseid = ?', { 0, 0, 0, row.houseid })
                MySQL.update('DELETE FROM player_housekeys WHERE houseid = ?', { row.houseid })
                TriggerEvent('rsg-log:server:CreateLog', 'estateagent', 'House Lost', 'red', row.fullname..' house '..row.houseid..' has been lost!')
            end
            if row.agent == 'newhanover' then
                exports['rsg-management']:AddMoney('govenor1', Config.LandTaxPerCycle)
            end
            if row.agent == 'westelizabeth' then
                exports['rsg-management']:AddMoney('govenor2', Config.LandTaxPerCycle)
            end
            if row.agent == 'newaustin' then
                exports['rsg-management']:AddMoney('govenor3', Config.LandTaxPerCycle)
            end
            if row.agent == 'ambarino' then
                exports['rsg-management']:AddMoney('govenor4', Config.LandTaxPerCycle)
            end
            if row.agent == 'lemoyne' then
                exports['rsg-management']:AddMoney('govenor5', Config.LandTaxPerCycle)
            end
        end
    end
    print('Land Tax Billing Cycle Complete')
    SetTimeout(Config.BillingCycle * (60 * 60 * 1000), BillingInterval) -- hours
    -- SetTimeout(Config.BillingCycle * (60 * 1000), BillingInterval) -- mins (for testing)
end

SetTimeout(Config.BillingCycle * (60 * 60 * 1000), BillingInterval) -- hours
-- SetTimeout(Config.BillingCycle * (60 * 1000), BillingInterval) -- mins (for testing)

--------------------------------------------------------------------------------------------------

-- add house guest
RegisterNetEvent('rsg-houses:server:addguest', function(cid, houseid)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local keycount = MySQL.prepare.await('SELECT COUNT(*) FROM player_housekeys WHERE citizenid = ? AND houseid = ?', {cid, houseid})
    if keycount >= 1 then
        TriggerClientEvent('RSGCore:Notify', src, 'player already has a key!', 'error')
        return
    end
    MySQL.insert('INSERT INTO player_housekeys(citizenid, houseid, guest) VALUES(@citizenid, @houseid, @guest)', {
        ['@citizenid'] = cid,
        ['@houseid'] = houseid,
        ['@guest'] = 1,
    })
    RSGCore.Functions.Notify(src,  'house guest '..cid..' added', 'success')
end)

-- remove house guest
RegisterNetEvent('rsg-houses:server:removeguest', function(data)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    MySQL.update('DELETE FROM player_housekeys WHERE houseid = ? AND citizenid = ?', { data.houseid, data.guestcid })
    RSGCore.Functions.Notify(src,  'house guest '..data.guestcid..' removed', 'success')
end)

--------------------------------------------------------------------------------------------------
