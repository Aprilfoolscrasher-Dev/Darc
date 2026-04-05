local HttpService = game:GetService("HttpService")

-- Get key safely
local key = getgenv().script_key

if not key or key == "" then
    return warn("No script_key provided!")
end

-- Fetch whitelist
local success, response = pcall(function()
    return game:HttpGet("https://raw.githubusercontent.com/Aprilfoolscrasher-Dev/Darc/main/keys.json")
end)

if not success or not response then
    return warn("Failed to fetch keys.json")
end

-- Decode JSON
local keys
local ok, err = pcall(function()
    keys = HttpService:JSONDecode(response)
end)

if not ok or not keys then
    return warn("JSON decode failed:", err)
end

-- Check key
if not keys[key] then
    return warn("Invalid key!")
end

print("Key valid! Loading script...")

-- Fetch main.lua
local mainSuccess, mainCode = pcall(function()
    return game:HttpGet("https://raw.githubusercontent.com/Aprilfoolscrasher-Dev/Darc/main/Main.lua")
end)

if not mainSuccess or not mainCode then
    return warn("Failed to fetch Main.lua")
end

-- Execute main.lua
local func = loadstring(mainCode)

if not func then
    return warn("loadstring failed on Main.lua")
end

func()