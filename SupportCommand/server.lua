local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) 
    ESX = obj 
end)

RegisterServerEvent('Tutorial:callSupport')
AddEventHandler('Tutorial:callSupport', function(message)
    local xPlayerSender = ESX.GetPlayerFromId(source)

    for k, v in pairs(GetPlayers())) do
        local xPlayerTarget = ESX.GetPlayerFromId(playerID)
        local targetGrroup = xPlayerTarget.getGroup()

        if targetGrroup =='supporter' or targetGroup == 'superadmin' then
            TriggerClientEvent('FiveM:showSupport', xPlayerTarget.source, xPlayerSender.name, xPlayerSender.source, message) 
        end
end