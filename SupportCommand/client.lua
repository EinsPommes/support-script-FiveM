ESX = nil
Citizen.CreateThread(function()
 while ESX == nil do
  TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
  Citizen.Wait(0)
 end
end)

local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) 
    ESX = obj 
end)

-- /support arg1 arg2 arg3
RegisterCommand("support", function(source, args, rawCommand)
    
    local message = ''
    for i=1, #args, 1 do
        message = message .. ' ' .. args[i]

    end

    TriggerServerEvent('FiveM:callSupport', message)



end)

RegisterNetEvent('FiveM:showSupport')
AddEventHandler('FiveM:showSupport', function(playername, playerid, message)

    ESX.ShowNotification('~r~es gibt ein neuen Supportfall!\n~y~' .. playername .. ' ~s~(~y~' .. playerid .. '~s~) benötigt Hilfe. \nNachricht: ~b~' .. message)

end)

  