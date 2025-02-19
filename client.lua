local isSpeedSet = false

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000) -- Regular checks every 1 second

        local playerPed = PlayerPedId()

        -- Check if the player is in any vehicle
        if IsPedInAnyVehicle(playerPed, false) then
            local vehicle = GetVehiclePedIsIn(playerPed, false)
            local modelHash = GetEntityModel(vehicle) -- Get correct vehicle hash
            local vehicleClass = GetVehicleClass(vehicle)

            -- Always check & apply speed (even if player stays in the vehicle)
            setSpeed(vehicle, modelHash, vehicleClass)
        else
            -- If the player is not in a vehicle, reset the flag and wait
            isSpeedSet = false
            Citizen.Wait(2000)
        end
    end
end)

function setSpeed(vehicle, modelHash, vehicleClass)
    local speed = nil

    -- Check for specific vehicle speed limit by comparing hashes
    for spawnCode, limit in pairs(Config.vehicleSpeedLimits) do
        if GetHashKey(spawnCode) == modelHash then
            speed = limit
            break
        end
    end

    -- If no specific speed limit found, use category-based limits
    if speed == nil then
        if Config.useCategories and Config.Categories[vehicleClass + 1] then
            speed = Config.Categories[vehicleClass + 1].maxSpeed
        else
            speed = Config.maxSpeed
        end
    end

    -- Ensure planes and helicopters are not locked
    if vehicleClass == 16 or vehicleClass == 15 then
        speed = nil
    end

    -- Apply speed limit if defined
    if speed ~= nil then
        local conversionFactor = Config.kmh and Config.kmhValue or Config.mphValue
        SetVehicleMaxSpeed(vehicle, speed / conversionFactor)
        isSpeedSet = true
    end
end
