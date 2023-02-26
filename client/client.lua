local RSGCore = exports['rsg-core']:GetCoreObject()

-- estate agent prompts
Citizen.CreateThread(function()
    for _, v in pairs(Config.EstateAgents) do
        exports['rsg-core']:createPrompt(v.prompt, v.coords, RSGCore.Shared.Keybinds['J'], 'Talk to ' .. v.name, {
            type = 'client',
            event = 'rsg-houses:client:agentmenu',
            args = { v.location },
        })
        if v.showblip == true then
            local AgentBlip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.coords)
            SetBlipSprite(AgentBlip, GetHashKey(Config.Blip.blipSprite), true)
            SetBlipScale(AgentBlip, Config.Blip.blipScale)
            Citizen.InvokeNative(0x9CB1A1623062F402, AgentBlip, Config.Blip.blipName)
        end
    end
end)

-- add map blips
Citizen.CreateThread(function()
    for _, v in pairs(Config.Houses) do
        if v.showblip == true then
            local HouseBlip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.blipcoords)
            SetBlipSprite(HouseBlip, `blip_proc_home`, true)
            SetBlipScale(HouseBlip, 0.2)
            Citizen.InvokeNative(0x9CB1A1623062F402, HouseBlip, v.name)
        end
    end
end)

-- agent menu
RegisterNetEvent('rsg-houses:client:agentmenu', function(location)
    exports['rsg-menu']:openMenu({
        {
            header = 'Estate Agent',
            isMenuHeader = true,
        },
        {
            header = 'Buy Property',
            txt = '',
            icon = "fas fa-home",
            params = {
                event = 'rsg-houses:client:buymenu',
                isServer = false,
                args = { agentlocation = location },
            }
        },
        {
            header = 'Sell Property',
            txt = '',
            icon = "fas fa-home",
            params = {
                event = 'rsg-houses:client:sellmenu',
                isServer = false,
                args = { agentlocation = location },
            }
        },
        {
            header = 'Close Menu',
            txt = '',
            params = {
                event = 'rsg-menu:closeMenu',
            }
        },
    })
end)

-- buy house menu
RegisterNetEvent('rsg-houses:client:buymenu', function(data)
    local GetHouseInfo = {
        {
            header = 'Buy House',
            isMenuHeader = true,
            icon = "fas fa-home",
        },
    }
    RSGCore.Functions.TriggerCallback('rsg-houses:server:GetHouseInfo', function(cb)
        for _, v in pairs(cb) do
            local agent = v.agent
            local houseid = v.houseid
            local citizenid = v.citizenid
            local owned = v.owned
            local price = v.price
            if agent == data.agentlocation and owned == 0 then
                GetHouseInfo[#GetHouseInfo + 1] = {
                    header = v.houseid,
                    txt = 'Price $'..v.price..' : Land Tax $'..Config.LandTaxPerCycle,
                    icon = "fas fa-home",
                    params = {
                        event = 'rsg-houses:server:buyhouse',
                        args = { 
                            house = v.houseid,
                            price = v.price
                        },
                        isServer = true,
                    }
                }
            end
        end
        exports['rsg-menu']:openMenu(GetHouseInfo)
    end)
end)

-- sell house menu
RegisterNetEvent('rsg-houses:client:sellmenu', function(data)
    local GetOwnedHouseInfo = {
        {
            header = 'Sell House',
            isMenuHeader = true,
            icon = "fas fa-home",
        },
    }
    RSGCore.Functions.TriggerCallback('rsg-houses:server:GetOwnedHouseInfo', function(cb)
        for _, v in pairs(cb) do
            local agent = v.agent
            local houseid = v.houseid
            local citizenid = v.citizenid
            local owned = v.owned
            local sellprice = (v.price * Config.SellBack)
            if agent == data.agentlocation and owned == 1 then
                GetOwnedHouseInfo[#GetOwnedHouseInfo + 1] = {
                    header = v.houseid,
                    txt = 'Sell Price $'..sellprice,
                    icon = "fas fa-home",
                    params = {
                        event = 'rsg-houses:server:sellhouse',
                        args = { 
                            house = v.houseid,
                            price = sellprice
                        },
                        isServer = true,
                    }
                }
            end
        end
        exports['rsg-menu']:openMenu(GetOwnedHouseInfo)
    end)
end)

--------------------------------------------------------------------------------------------------

-- get door state from database and set
Citizen.CreateThread(function()
    RSGCore.Functions.TriggerCallback('rsg-houses:server:GetDoorState', function(results)
        for _,v in pairs(results) do
            Citizen.InvokeNative(0xD99229FE93B46286, tonumber(v.doorid),1,1,0,0,0,0) -- AddDoorToSystemNew
            Citizen.InvokeNative(0x6BAB9442830C7F53, tonumber(v.doorid), v.doorstate) -- DoorSystemSetDoorState
        end
    end)
end)

-- house door prompts
Citizen.CreateThread(function()
    for houses, v in pairs(Config.HouseDoors) do
        exports['rsg-core']:createPrompt(v.doorid, v.doorcoords, RSGCore.Shared.Keybinds['U'], 'Unlock ' .. v.name, {
            type = 'client',
            event = 'rsg-houses:client:toggledoor',
            args = { v.doorid, v.houseid },
        })
    end
end)

-- house door lock / unlock animation
local function unlockAnimation()
    local dict = "script_common@jail_cell@unlock@key"
    
    if not HasAnimDictLoaded(dict) then
        RequestAnimDict(dict)
        while not HasAnimDictLoaded(dict) do
            Citizen.Wait(10)
        end
    end

    local ped = PlayerPedId()

    local prop = CreateObject("P_KEY02X", GetEntityCoords(ped) + vec3(0, 0, 0.2), true, true, true)
    local boneIndex = GetEntityBoneIndexByName(ped, "SKEL_R_Finger12")

    TaskPlayAnim(ped, "script_common@jail_cell@unlock@key", "action", 8.0, -8.0, 2500, 31, 0, true, 0, false, 0, false)
    Wait(750)
    AttachEntityToEntity(prop, ped, boneIndex, 0.02, 0.0120, -0.00850, 0.024, -160.0, 200.0, true, true, false, true, 1, true)

    while IsEntityPlayingAnim(ped, "script_common@jail_cell@unlock@key", "action", 3) do
        Wait(100)
    end

    DeleteObject(prop)
end

-- lock / unlock door
RegisterNetEvent('rsg-houses:client:toggledoor', function(door, house)
    RSGCore.Functions.TriggerCallback('rsg-houses:server:GetHouseKeys', function(results)
        for _, v in pairs(results) do
            local playercitizenid = RSGCore.Functions.GetPlayerData().citizenid
            local resultcitizenid = v.citizenid
            local resulthouseid = v.houseid
            if resultcitizenid == playercitizenid and resulthouseid == house then
                RSGCore.Functions.TriggerCallback('rsg-houses:server:GetCurrentDoorState', function(cb)
                    local doorstate = cb
                    if doorstate == 1 then
                        unlockAnimation()
                        Citizen.InvokeNative(0xD99229FE93B46286, door,1,1,0,0,0,0) -- AddDoorToSystemNew
                        Citizen.InvokeNative(0x6BAB9442830C7F53, door, 0) -- DoorSystemSetDoorState
                        TriggerServerEvent('rsg-houses:server:UpdateDoorState', door, 0)
                        RSGCore.Functions.Notify('unlocked', 'primary')
                    end
                    if doorstate == 0 then
                        unlockAnimation()
                        Citizen.InvokeNative(0xD99229FE93B46286, door,1,1,0,0,0,0) -- AddDoorToSystemNew
                        Citizen.InvokeNative(0x6BAB9442830C7F53, door, 1) -- DoorSystemSetDoorState
                        TriggerServerEvent('rsg-houses:server:UpdateDoorState', door, 1)
                        RSGCore.Functions.Notify('locked', 'primary')
                    end
                end, door)
            end
        end
    end)
end)

--------------------------------------------------------------------------------------------------

-- house menu prompt
Citizen.CreateThread(function()
    for _, v in pairs(Config.Houses) do
        exports['rsg-core']:createPrompt(v.houseprompt, v.menucoords, RSGCore.Shared.Keybinds['J'], 'Open House Menu', {
            type = 'client',
            event = 'rsg-houses:client:housemenu',
            args = { v.houseid },
        })
    end
end)

-- house menu
RegisterNetEvent('rsg-houses:client:housemenu', function(houseid)
    RSGCore.Functions.TriggerCallback('rsg-houses:server:GetHouseKeys', function(results)
        for _, v in pairs(results) do
            local playercitizenid = RSGCore.Functions.GetPlayerData().citizenid
            if v.citizenid == playercitizenid and v.houseid == houseid and v.guest == 0 then
                exports['rsg-menu']:openMenu({
                    {
                        header = 'Owner House Menu',
                        isMenuHeader = true,
                        icon = "fas fa-home",
                    },
                    {
                        header = 'Open Storage',
                        txt = '',
                        icon = 'fas fa-box',
                        params = {
                            event = 'rsg-houses:client:storage',
                            isServer = false,
                            args = { house = houseid },
                        }
                    },
                    {
                        header = 'Outfits',
                        txt = '',
                        icon = 'fas fa-hat-cowboy-side',
                        params = {
                            event = 'rsg-clothes:OpenOutfits',
                            isServer = false,
                            args = {},
                        }
                    },
                    {
                        header = 'Land Tax',
                        txt = '',
                        icon = 'fas fa-dollar-sign',
                        params = {
                            event = 'rsg-houses:client:creditmenu',
                            isServer = false,
                            args = { house = houseid },
                        }
                    },
                    {
                        header = 'House Guests',
                        txt = '',
                        icon = 'fa-solid fa-circle-user',
                        params = {
                            event = 'rsg-houses:client:guestmenu',
                            isServer = false,
                            args = { house = houseid },
                        }
                    },
                    {
                        header = 'Close Menu',
                        txt = '',
                        icon = "fas fa-times",
                        params = {
                            event = 'rsg-menu:closeMenu',
                        }
                    },
                })
            elseif v.citizenid == playercitizenid and v.houseid == houseid and v.guest == 1 then
                exports['rsg-menu']:openMenu({
                    {
                        header = 'Guest House Menu',
                        isMenuHeader = true,
                        icon = "fas fa-home",
                    },
                    {
                        header = 'Open Storage',
                        txt = '',
                        icon = 'fas fa-box',
                        params = {
                            event = 'rsg-houses:client:storage',
                            isServer = false,
                            args = { house = houseid },
                        }
                    },
                    {
                        header = 'Outfits',
                        txt = '',
                        icon = 'fas fa-hat-cowboy-side',
                        params = {
                            event = 'rsg-clothes:OpenOutfits',
                            isServer = false,
                            args = {},
                        }
                    },
                    {
                        header = 'Close Menu',
                        txt = '',
                        icon = "fas fa-times",
                        params = {
                            event = 'rsg-menu:closeMenu',
                        }
                    },
                })
            end
        end
    end)
end)

--------------------------------------------------------------------------------------------------

-- credit menu
RegisterNetEvent('rsg-houses:client:creditmenu', function(data)
    RSGCore.Functions.TriggerCallback('rsg-houses:server:GetOwnedHouseInfo', function(result)
        local housecitizenid = result[1].citizenid
        local playercitizenid = RSGCore.Functions.GetPlayerData().citizenid
        if housecitizenid ~= playercitizenid then
            RSGCore.Functions.Notify('You don\'t own this house!', 'error')
            return
        end
        if housecitizenid == playercitizenid then
            exports['rsg-menu']:openMenu({
                {
                    header = 'Land Tax Credit',
                    isMenuHeader = true,
                    txt = 'current credit $'..result[1].credit,
                    icon = "fas fa-home",
                },
                {
                    header = 'Add Credit',
                    txt = '',
                    icon = 'fas fa-dollar-sign',
                    params = {
                        event = 'rsg-houses:client:addcredit',
                        isServer = false,
                        args = { 
                            houseid = result[1].houseid, 
                            credit = result[1].credit,
                        },
                    }
                },
                {
                    header = 'Close Menu',
                    txt = '',
                    icon = "fas fa-times",
                    params = {
                        event = 'rsg-menu:closeMenu',
                    }
                },
            })
        end
    end)
end)

-- credit form
RegisterNetEvent('rsg-houses:client:addcredit', function(data)
    local dialog = exports['rsg-input']:ShowInput({
        header = 'Add Land Tax Credit',
        submitText = "Add Credit",
        inputs = {
            {
                text = 'Amount',
                name = "addcredit",
                type = "number",
                isRequired = true,
                default = 50,
            },
        }
    })
    if dialog ~= nil then
        for k,v in pairs(dialog) do
            if Config.Debug == true then
                print(dialog.addcredit)
                print(data.houseid)
            end
            local newcredit = (data.credit + dialog.addcredit)
            TriggerServerEvent('rsg-houses:server:addcredit', newcredit, dialog.addcredit, data.houseid)
        end
    end
end)

--------------------------------------------------------------------------------------------------

-- guest menu
RegisterNetEvent('rsg-houses:client:guestmenu', function(data)
    RSGCore.Functions.TriggerCallback('rsg-houses:server:GetOwnedHouseInfo', function(result)
        local housecitizenid = result[1].citizenid
        local playercitizenid = RSGCore.Functions.GetPlayerData().citizenid
        if housecitizenid ~= playercitizenid then
            RSGCore.Functions.Notify('You don\'t own this house!', 'error')
            return
        end
        if housecitizenid == playercitizenid then
            exports['rsg-menu']:openMenu({
                {
                    header = 'House Guests',
                    isMenuHeader = true,
                    txt = '',
                    icon = "fas fa-home",
                },
                {
                    header = 'Add Guest',
                    txt = '',
                    icon = 'fa-solid fa-circle-user',
                    params = {
                        event = 'rsg-houses:client:addguest',
                        isServer = false,
                        args = { 
                            houseid = result[1].houseid,
                        },
                    }
                },
                {
                    header = 'Remove Guest',
                    txt = '',
                    icon = 'fa-solid fa-circle-user',
                    params = {
                        event = 'rsg-houses:client:removeguest',
                        isServer = false,
                        args = { 
                            houseid = result[1].houseid,
                        },
                    }
                },
                {
                    header = 'Close Menu',
                    txt = '',
                    icon = "fas fa-times",
                    params = {
                        event = 'rsg-menu:closeMenu',
                    }
                },
            })
        end
    end)
end)

-- add house guest
RegisterNetEvent('rsg-houses:client:addguest', function(data)
    local dialog = exports['rsg-input']:ShowInput({
        header = 'Add House Guest',
        submitText = "Add",
        inputs = {
            {
                text = 'Citizen ID',
                name = "addguest",
                type = "text",
                isRequired = true,
            },
        }
    })
    if dialog ~= nil then
        for k,v in pairs(dialog) do
            if Config.Debug == true then
                print(dialog.addguest)
                print(data.houseid)
            end
            TriggerServerEvent('rsg-houses:server:addguest', string.upper(dialog.addguest), data.houseid)
        end
    end
end)

-- remove house guest
RegisterNetEvent('rsg-houses:client:removeguest', function(data)
    local GuestMenu = {
        {
            header = 'Remove Guest',
            isMenuHeader = true,
            icon = "fa-solid fa-circle-info",
        },
    }
    RSGCore.Functions.TriggerCallback('rsg-houses:server:GetGuestHouseKeys', function(cb)
        for _, v in pairs(cb) do
            if v.houseid == data.houseid then
                GuestMenu[#GuestMenu + 1] = {
                    header = v.citizenid,
                    txt = '',
                    icon = "fa-solid fa-circle-user",
                    params = {
                        event = "rsg-houses:server:removeguest",
                        isServer = true,
                        args = {
                            guestcid = v.citizenid,
                            houseid = v.houseid
                        }
                    }
                }
            end
        end
        GuestMenu[#GuestMenu + 1] = {
            header = 'Close',
            icon = "fas fa-times",
            params = {
                event = "rsg-menu:closeMenu",
            }
        }
        exports['rsg-menu']:openMenu(GuestMenu)
    end)
end)

--------------------------------------------------------------------------------------------------

-- house storage
RegisterNetEvent('rsg-houses:client:storage', function(data)
    TriggerServerEvent("inventory:server:OpenInventory", "stash", data.house, {
        maxweight = Config.StorageMaxWeight,
        slots = Config.StorageMaxSlots,
    })
    TriggerEvent("inventory:client:SetCurrentStash", data.house)
end)

--------------------------------------------------------------------------------------------------

--[[
    0 = DOORSTATE_UNLOCKED,
    1 = DOORSTATE_LOCKED_UNBREAKABLE,
    2 = DOORSTATE_LOCKED_BREAKABLE,
    3 = DOORSTATE_HOLD_OPEN_POSITIVE,
    4 = DOORSTATE_HOLD_OPEN_NEGATIVE
--]]
