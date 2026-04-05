local HttpService = game:GetService("HttpService")

-- Make sure your script_key is set
local key = getgenv().script_key
if not key or key == "" then
    return warn("No script_key provided!")
end

-- Fetch keys.json
local success, response = pcall(function()
    return game:HttpGet("https://raw.githubusercontent.com/Aprilfoolscrasher-Dev/Checker.lua/main/keys.json")
end)

if not success or not response then
    return warn("Failed to fetch keys.json")
end

-- Decode JSON
local data
local ok, err = pcall(function()
    data = HttpService:JSONDecode(response)
end)

if not ok or not data then
    return warn("JSON decode failed:", err)
end

-- Keys are nested under "keys"
local keys = data["keys"]
if not keys then
    return warn("No 'keys' field found in JSON")
end

-- Check if the provided key exists
if not keys[key] then
    return warn("Invalid key!")
end

print("Key valid! Loading main.lua...")

-- Fetch main.lua
local mainSuccess, mainCode = pcall(function()
    return game:HttpGet("https://raw.githubusercontent.com/Aprilfoolscrasher-Dev/Checker.lua/main/main.lua")
end)

if not mainSuccess or not mainCode then
    return warn("Failed to fetch main.lua")
end

-- Execute main.lua
local func = loadstring(mainCode)
if not func then
    return warn("loadstring failed on main.lua")
end

func()