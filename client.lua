----------------------------------------------
-- External Vehicle Commands, Made by FAXES --
----------------------------------------------

RegisterCommand("trunk", function(source, args, raw)
    local ped = GetPlayerPed(-1)
    local veh = GetVehiclePedIsUsing(ped)
    local vehLast = GetPlayersLastVehicle()
    local distanceToVeh = GetDistanceBetweenCoords(GetEntityCoords(ped), GetEntityCoords(vehLast), 1)
    local door = 5

    if IsPedInAnyVehicle(ped, false) then
        if GetVehicleDoorAngleRatio(veh, door) > 0 then
            SetVehicleDoorShut(veh, door, false)
            TriggerEvent("chatMessage", "^*[Vehicle] Trunk Closed.")
        else	
            SetVehicleDoorOpen(veh, door, false, false)
            TriggerEvent("chatMessage", "^*[Vehicle] Trunk Opened.")
        end
    else
        if distanceToVeh < 6 then
            if GetVehicleDoorAngleRatio(vehLast, door) > 0 then
                SetVehicleDoorShut(vehLast, door, false)
                TriggerEvent("chatMessage", "^*[Vehicle] Trunk Closed.")
            else
                SetVehicleDoorOpen(vehLast, door, false, false)
                TriggerEvent("chatMessage", "^*[Vehicle] Trunk Opened.")
            end
        else
            TriggerEvent("chatMessage", "^*[Vehicle] Too far away from vehicle.")
        end
    end
end)

RegisterCommand("hood", function(source, args, raw)
    local ped = GetPlayerPed(-1)
    local veh = GetVehiclePedIsUsing(ped)
    local vehLast = GetPlayersLastVehicle()
    local distanceToVeh = GetDistanceBetweenCoords(GetEntityCoords(ped), GetEntityCoords(vehLast), 1)
    local door = 4

    if IsPedInAnyVehicle(ped, false) then
        if GetVehicleDoorAngleRatio(veh, door) > 0 then
            SetVehicleDoorShut(veh, door, false)
            TriggerEvent("chatMessage", "^*[Vehicle] Hood Closed.")
        else	
            SetVehicleDoorOpen(veh, door, false, false)
            TriggerEvent("chatMessage", "^*[Vehicle] Hood Opened.")
        end
    else
        if distanceToVeh < 4 then
            if GetVehicleDoorAngleRatio(vehLast, door) > 0 then
                SetVehicleDoorShut(vehLast, door, false)
                TriggerEvent("chatMessage", "^*[Vehicle] Hood Closed.")
            else	
                SetVehicleDoorOpen(vehLast, door, false, false)
                TriggerEvent("chatMessage", "^*[Vehicle] Hood Opened.")
            end
        else
            TriggerEvent("chatMessage", "^*[Vehicle] Too far away from vehicle.")
        end
    end
end)