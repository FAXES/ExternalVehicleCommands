----------------------------------------------
-- External Vehicle Commands, Made by FAXES --
----------------------------------------------

RegisterCommand("trunk", function(source, args, raw)
    local ped = GetPlayerPed(-1)
    local veh GetVehiclePedIsIn(ped, true)
    local door = 5

    if GetVehicleDoorAngleRatio(veh, door) > 0 then
        SetVehicleDoorShut(veh, door, false)
        TriggerEvent("chatMessage", "^*[Vehicle] Trunk Closed.")
    else
        SetVehicleDoorOpen(veh, door, false, false)
        TriggerEvent("chatMessage", "^*[Vehicle] Trunk Opened.")
    end
end)

RegisterCommand("hood", function(source, args, raw)
    local ped = GetPlayerPed(-1)
    local veh GetVehiclePedIsIn(ped, true)
    local door = 4

    if GetVehicleDoorAngleRatio(veh, door) > 0 then
        SetVehicleDoorShut(veh, door, false)
        TriggerEvent("chatMessage", "^*[Vehicle] Hood Closed.")
    else	
        SetVehicleDoorOpen(veh, door, false, false)
        TriggerEvent("chatMessage", "^*[Vehicle] Hood Opened.")
    end
end)