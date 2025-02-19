Config = {}

-- Set Config.kmh to false if you want to use mph
Config.kmh = false

-- Set Config.maxSpeed to false if you want to use the same speed for all vehicles
Config.useCategories = false
Config.maxSpeed = 172

-- Speed limits for specific vehicle spawn codes
Config.vehicleSpeedLimits = {
    ["police"] = 150,     -- Police car
}

Config.Categories = {
    {category = 0, maxSpeed = 100},  -- COMPACTS
    {category = 1, maxSpeed = 100},  -- SEDANS
    {category = 2, maxSpeed = 100},  -- SUV'S
    {category = 3, maxSpeed = 100},  -- COUPES
    {category = 4, maxSpeed = 100},  -- MUSCLE
    {category = 5, maxSpeed = 100},  -- SPORT CLASSIC
    {category = 6, maxSpeed = 100},  -- SPORT
    {category = 7, maxSpeed = 100},  -- SUPER
    {category = 8, maxSpeed = 100},  -- MOTORCYCLES
    {category = 9, maxSpeed = 100},  -- OFFROAD
    {category = 10, maxSpeed = 100}, -- INDUSTRIAL
    {category = 11, maxSpeed = 100}, -- UTILITY
    {category = 12, maxSpeed = 100}, -- VANS
    {category = 13, maxSpeed = 100}, -- BICYCLES
    {category = 14, maxSpeed = 100}, -- BOATS
    {category = 15, maxSpeed = nil}, -- PLANES
    {category = 16, maxSpeed = nil}, -- HELICOPTERS
    {category = 17, maxSpeed = 100}, -- SERVICE
    {category = 18, maxSpeed = 100}, -- EMERGENCY
    {category = 19, maxSpeed = 100}  -- MILITARY
}

-- DO NOT MODIFY
Config.kmhValue = 3.6
Config.mphValue = 2.23694
