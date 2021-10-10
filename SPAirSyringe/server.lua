ESX	= nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('syringe', function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('SPAirSyringe:UseItem', _source)
    TriggerClientEvent('SPAirSyringe:CloseInventory', _source)
    xPlayer.removeInventoryItem("syringe", 1)
end)