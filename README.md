Vehicle Speed Limiter
A FiveM script that limits the speed of vehicles based on their class or specific spawn codes. This script works without any dependencies on a specific framework, making it perfect for standalone servers or those using other frameworks.

Features
Speed Limiting: Set custom speed limits for specific vehicles based on their spawn code.
Category-Based Speed Limits: Assign default speed limits to vehicle classes (e.g., Compacts, Sedans, SUVs, etc.).
Supports Km/h and Mph: Configure the speed limit in either kilometers per hour (km/h) or miles per hour (mph).
Works with all vehicles: Includes support for common cars, motorcycles, and even planes/helicopters (which are not speed-limited).
Installation
Download the script and place it in your resources folder.
Add the following line to your server.cfg
  start vehicle-speed-limiter

Configuration
In the config.lua file, you can adjust the following settings:

General Settings
Config.kmh: Set this to true to use km/h or false to use mph.
Config.maxSpeed: Default speed for vehicles if no specific limit is set.
Config.useCategories: Set to true to use category-based speed limits (e.g., Compacts, Sedans, etc.).
Specific Vehicle Speed Limits
You can add specific spawn codes for vehicles in Config.vehicleSpeedLimits:
   Config.vehicleSpeedLimits = {
    ["police"] = 150,  -- Police car speed limit
    ["adder"] = 200,   -- Adder supercar speed limit
    ["sultan"] = 180   -- Sultan speed limit
}

How It Works
The script automatically detects the vehicle you are in and applies the appropriate speed limit.
If no specific limit is set for a vehicle, it uses the default or category-based speed limit.
Speed limits are enforced as long as the player is in the vehicle.


License
This script is open-source and available for free use. Contributions are welcome!
