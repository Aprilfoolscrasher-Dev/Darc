local HttpService = game:GetService("HttpService")

-- User key (must be set before loading)
local key = getgenv().script_key or ""

if key == "" then
    return warn("No key provided!")
end

-- Fetch the JSON whitelist
local success, keys = pcall(function()
    local response = game:HttpGet("https://raw.githubusercontent.com/Aprilfoolscrasher-Dev/Checker.lua/main/loader.luamain/keys.json")
    return HttpService:JSONDecode(response)
end)

if not success then
    return warn("Failed to fetch whitelist!")
end

-- Check if key is valid
if not keys[key] then
    return warn("Invalid key!")
end

-- If key is valid → load main script
https://raw.githubusercontent.com/Aprilfoolscrasher-Dev/Darc/main/Main.lua