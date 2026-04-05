local HttpService = game:GetService("HttpService")

-- Make sure the script key is set
local key = getgenv().script_key
if not key or key == "" then
    return warn("No script_key provided!")
end

-- Fetch keys.json from GitHub
local ok, response = pcall(function()
    return game:HttpGet("https://raw.githubusercontent.com/Aprilfoolscrasher-Dev/Checker.lua/main/keys.json")
end)

if not ok or not response then
    return warn("Failed to fetch keys.json")
end

-- Decode JSON
local data
local success, err = pcall(function()
    data = HttpService:JSONDecode(response)
end)

if not success or not data then
    return warn("Failed to decode JSON:", err)
end

-- Get the nested keys table
local keys = data["keys"]
if type(keys) ~= "table" then
    return warn("JSON format invalid: 'keys' table missing")
end

-- Check if the provided key exists
local keyData = keys[key]
if type(keyData) ~= "table" then
    return warn("Invalid key!")
end

-- Optional: You can check type/duration/HWID here
-- Example:
-- if keyData["type"] == "timed" and os.time() > keyData["created"] + keyData["duration"] then
--     return warn("Key expired!")
-- end

print("Key valid! Loading main.lua...")

-- Fetch main.lua from GitHub
local mainOk, mainCode = pcall(function()
    return game:HttpGet("https://raw.githubusercontent.com/Aprilfoolscrasher-Dev/Checker.lua/main/main.lua")
end)

if not mainOk or not mainCode then
    return warn("Failed to fetch main.lua")
end

-- Load and execute main.lua
local func, loadErr = loadstring(mainCode)
if not func then
    return warn("Failed to load main.lua:", loadErr)
end

func()