_G.key = "KAI"


local lago_request
if syn then
    lago_request = syn.request
else
    lago_request = request
end


function script()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fepfaaa/XOPHUB/main/SCRIPTXOP.lua"))();
    end

VPSIP = "localhost"

if _G.key == nil then
    return game.Players.LocalPlayer:Kick("\n Use Key")
end

local chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ127389127398127398273894327842u38xasjdiowqhdqw8yqw78iqowsqwjdjwqdiowjqoidueyqwu'
local length = math.random(100,9999)
local randomString = ''
charTable = {}
for c in chars:gmatch"." do
    table.insert(charTable, c)
end
for i = 1, length do
    randomString = randomString .. charTable[math.random(1, #charTable)]
end
local chars = '0123456789'
local length = math.random(100,9999)
local randomString = ''
charTable = {}
for c in chars:gmatch"." do
    table.insert(charTable, c)
end
for i = 1, length do
    randomString = randomString .. charTable[math.random(1, #charTable)]
end
local Lago_random = randomString

local randomtime = math.random(os.time())


local server = lago_request({
    Url = "http://"..VPSIP.."/server.php?key=".._G.key.."&KuyCrackerman="..Lago_random.."&ostime="..randomtime,
    Method = "GET"
})

local decode = syn_crypt_b64_decode(server.Body)

if decode == "Whitelist" then
        if server.StatusCode == 200 then
                if server.StatusMessage == "OK" then
                        if server.Success == true then
                                if decode == "Update Hwid" then
                                    game.Players.LocalPlayer:Kick("Update Hwid \n Wait 5 Second to rejoin")
                                    wait(5)
                                    local ts = game:GetService("TeleportService")
                                    local p = game:GetService("Players").localPlayer
                                    
                                    
                                    
                                    ts:Teleport(game.PlaceId, p)
                                else
                                    if decode == "Invalid HWID" then
                                        game.Players.LocalPlayer:Kick("Invalid Hwid")
                                    else
                                        script()
                                    end
                                end
                            else
                                game.Players.LocalPlayer:Kick("KUY")
                        end
                    else
                        game.Players.LocalPlayer:Kick("KAI")
                end
            else
                game.Players.LocalPlayer:Kick("NOOB")
        end
    else
        game.Players.LocalPlayer:Kick("EZ")
end


