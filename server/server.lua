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
    if (Player.PlayerData.money.cash < data.price) then
        TriggerClientEvent('RSGCore:Notify', src, 'You don\'t have enough cash!', 'error')
        return
    end
    MySQL.update('UPDATE player_houses SET citizenid = ?, owned = ? WHERE houseid = ?', { Player.PlayerData.citizenid, 1, data.house })
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
    MySQL.update('UPDATE player_houses SET citizenid = ?, owned = ? WHERE houseid = ?', { 0, 0, data.house })
    MySQL.update('DELETE FROM player_housekeys WHERE houseid = ?', { data.house })
    Player.Functions.AddMoney('cash', data.price)
    TriggerClientEvent('RSGCore:Notify', src, 'house sold and keys removed', 'success')
end)
