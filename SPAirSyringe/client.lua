ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('SPAirSyringe:UseItem')
AddEventHandler('SPAirSyringe:UseItem', function()
    OpenSyringeMenu()
end)

function OpenSyringeMenu()
    local elements = {
          {label = 'Kill Yourself (New Life)!', value = 'useSyringe'},
          
        }
  
        ESX.UI.Menu.CloseAll()
  
    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'airsyringe',
      {
        title    = 'SP AirSyringe',
        align    = 'top-left',
        elements = elements
        },
  
            function(data2, menu2)

                if data2.current.value == 'useSyringe' then
                  SetEntityHealth(PlayerPedId(), 0)
                  menu2.close()
                end
            end,

      function(data2, menu2)
        menu2.close()
      end
    )
    
end