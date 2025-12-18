-- CN
-- 开源by：MR
-- http://qins.mc.hi.cn/MR-S
-- 功能效果没测试过,自行测试,如有损坏自行修复！
-- 全源开源，应该没有人闲的没事拿这个圈钱吧？
-- 最后：请标明来源，谢谢！


-- EN
-- Open Source by: MR
-- http://qins.mc.hi.cn/MR-S
-- Functionality hasn't been tested; test it yourself and fix any issues if damaged!
-- Fully open-source; hopefully no one would bother monetizing this, right?
-- Lastly: Please credit the source, thank you!

local vu1 = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local v2, v3 = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/doghwrf001/MR-S-Unlock/refs/heads/Cracked-Projects/MikeyHub/MikeyHubData"))()
end)
if not v2 or (v3 == nil or v3 == "") then
    game.Players.LocalPlayer:Kick("Failed to load MikeyHub Info.\nThis is either because the MikeyHub URL is invalid\nOr you\'re attempting to spoof it.")
end
local v4 = game.PlaceId
local v5 = game:GetService("MarketplaceService"):GetProductInfo(v4)
local vu6 = game:GetService("RbxAnalyticsService"):GetClientId()
local vu7 = game:GetService("Players").LocalPlayer
local function vu8()
    return (game:GetService("MarketplaceService"):UserOwnsGamePassAsync(vu7.UserId, 267790155) == true or getgenv().CollectMikeyHubData and getgenv().CollectMikeyHubData.Premium == true) and true or false
end
local vu9 = {}
local v12 = {
    __index = function(_, p10)
        return p10 == "CheckIfMikeyHubOwned" and function(...)
            local v11 = vu8(...)
            if v11 ~= true and v11 ~= false then
                vu7:Kick("Invaild mikeyhub result")
            end
            return v11
        end or rawget(vu9, p10)
    end,
    __newindex = function(_, _, _)
        vu7:Kick("[ MikeyHub AntiCheat ] : Detected tampering with mikeyhub function nerd")
    end
}
local v13 = setmetatable({}, v12)
vu9.CheckIfMikeyHubOwned = vu8
local vu14 = v13.CheckIfMikeyHubOwned()
local vu15 = ""
local function v22()
    local v16 = loadstring(game:HttpGet("https://raw.githubusercontent.com/doghwrf001/MR-S-Unlock/refs/heads/Cracked-Projects/MikeyHub/Owner"))()
    local v17 = vu7.Name
    local v18, v19, v20 = pairs(v16)
    while true do
        local v21
        v20, v21 = v18(v19, v20)
        if v20 == nil then
            break
        end
        if v20 == v17 or v21.PlayerHWID == vu6 then
            vu15 = tostring(v21.BanReason)
            return true
        end
    end
    return false
end
local v23
if vu14 == true then
    v23 = "MikeyHub+ " .. tostring(v3.Version)
else
    v23 = "MikeyHub " .. tostring(v3.Version)
end
local v25 = (function(p24)
    return p24:gsub("%b[]", ""):gsub("%b{}", ""):gsub("%b()", ""):match("^%s*(.-)%s*$")
end)((tostring(v5.Name)))
local vu26 = vu1:CreateWindow({
    Title = v23,
    SubTitle = "- By " .. tostring(v3.Owner) .. " - " .. v25,
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = getgenv().Blur or false,
    Theme = getgenv().Theme or "Dark",
    MinimizeKey = getgenv().MinizeKey or Enum.KeyCode.LeftControl
})
local vu27 = vu7.UserId
local function v31(p28)
    local v29 = 0
    for v30 = 1, # p28 do
        v29 = (v29 + string.byte(p28, v30) * v30) % 4294967296
    end
    return tostring(v29)
end
local v32 = getgenv().CollectMikeyHubData
if v32 then
    v32 = getgenv().CollectMikeyHubData.Test
end
local v33 = getgenv().LoaderKey
if v33 then
    v33 = v31(getgenv().LoaderKey)
end
if getgenv().LoaderKey ~= nil then
    if v33 == v32 then
        local function v35()
            local v34 = cloneref(game:GetService("Players"))
            return tostring(v34.LocalPlayer.UserId)
        end
        local vu36 = game:GetService("UserInputService")
        local v37 = vu36
        table.find({
            Enum.Platform.IOS,
            Enum.Platform.Android
        }, vu36.GetPlatform(v37))
        local v38 = identifyexecutor()
        local vu39 = game:GetService("Players").LocalPlayer
        local function v41()
            local v40 = vu36:GetPlatform()
            return v40 ~= Enum.Platform.Android and (v40 ~= Enum.Platform.IOS and "PC" or "IPhone") or "Android"
        end
        local vu42 = nil
        vu42 = hookmetamethod(game, "__namecall", function(p43, ...)
            local v44 = getnamecallmethod()
            if checkcaller() or (p43.Name ~= "SecureSettings" or v44 ~= "FireServer") then
                return vu42(p43, ...)
            end
        end)
        local vu45 = false
        spawn(function()
            task.wait(2)
            vu45 = true
        end)
        if v22() ~= false then
            local v46 = {}
            local v47 = {}
            local v48 = {
                author = {
                    name = "Blacklisted User Has Executed! - MikeyHub",
                    icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu27 .. "&width=420&height=420"
                },
                description = "User info logged and kicked successfully",
                type = "rich",
                color = tonumber(16777215),
                fields = {
                    {
                        name = "HWID :",
                        value = game:GetService("RbxAnalyticsService"):GetClientId(),
                        inline = true
                    },
                    {
                        name = "Player Username :",
                        value = game:GetService("Players").LocalPlayer.Name,
                        inline = true
                    },
                    {
                        name = "Player DisplayName :",
                        value = game:GetService("Players").LocalPlayer.DisplayName,
                        inline = true
                    },
                    {
                        name = "Player UserId :",
                        value = game:GetService("Players").LocalPlayer.UserId,
                        inline = true
                    },
                    {
                        name = "Player Account Age :",
                        value = game:GetService("Players").LocalPlayer.AccountAge,
                        inline = true
                    },
                    {
                        name = "Executor :",
                        value = v38,
                        inline = true
                    },
                    {
                        name = "Device :",
                        value = v41(),
                        inline = true
                    },
                    {
                        name = "PandaAuth HWID :",
                        value = v35(),
                        inline = true
                    }
                }
            }
            __set_list(v47, 1, {
                v48
            })
            v46.embeds = v47
            local v49 = game:GetService("HttpService"):JSONEncode(v46);
            (http_request or request or (HttpPost or syn.request))({
                Url = "https://discord.com/api/webhooks/",
                Body = v49,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                }
            })
            vu39:Kick("\nYou\'re Banned From MikeyHub \n \nReason: " .. vu15 .. "\n \nIf You Believe This is A Mistake\nContact Mods Within The Server.\nHWID: " .. vu6)
        elseif getgenv().CollectMikeyHubData.KeySystem ~= true then
            local v50 = {
                CompleteSys = vu26:AddTab({
                    Title = "Main",
                    Icon = ""
                })
            }
            local _ = vu1.Options
            v50.CompleteSys:AddSection("Main")
            v50.CompleteSys:AddParagraph({
                Title = "Please Complete Key System!",
                Content = "You must complete the key system in order to use free MikeyHub, don\'t be weird and support me."
            })
            v50.CompleteSys:AddButton({
                Title = "Open MikeyHub Loader",
                Description = "Opens mikeyhub loader/key system.",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/doghwrf001/MR-S-Unlock/refs/heads/Cracked-Projects/MikeyHub/Owner"))()
                    vu1:Destroy()
                end
            })
            vu26:SelectTab(1)
        else
            local v51 = {
                Main = vu26:AddTab({
                    Title = "| Player",
                    Icon = "user"
                }),
                GunMods = vu26:AddTab({
                    Title = "| Gun Mods",
                    Icon = "crosshair"
                }),
                VehicleMods = vu26:AddTab({
                    Title = "| Vehicle Mods",
                    Icon = "car"
                }),
                Players = vu26:AddTab({
                    Title = "| Players",
                    Icon = "users"
                }),
                Visuals = vu26:AddTab({
                    Title = "| Visuals",
                    Icon = "eye"
                }),
                Misc = vu26:AddTab({
                    Title = "| Misc",
                    Icon = "circle-ellipsis"
                })
            }
            local _ = vu1.Options
            v51.Main:AddSection("Character")
            local vu52 = game:GetService("Players")
            IYMouse = vu52.LocalPlayer:GetMouse()
            function getRoot(p53)
                return p53:FindFirstChild("HumanoidRootPart") or (p53:FindFirstChild("Torso") or p53:FindFirstChild("UpperTorso"))
            end
            FLYING = false
            QEfly = true
            iyflyspeed = 1
            vehicleflyspeed = 1
            function sFLY(pu54)
                repeat
                    wait()
                until vu52.LocalPlayer and (vu52.LocalPlayer.Character and getRoot(vu52.LocalPlayer.Character)) and vu52.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                repeat
                    wait()
                until IYMouse
                if flyKeyDown or flyKeyUp then
                    flyKeyDown:Disconnect()
                    flyKeyUp:Disconnect()
                end
                local vu55 = getRoot(vu52.LocalPlayer.Character)
                local vu56 = {
                    F = 0,
                    B = 0,
                    L = 0,
                    R = 0,
                    Q = 0,
                    E = 0
                }
                local vu57 = {
                    F = 0,
                    B = 0,
                    L = 0,
                    R = 0,
                    Q = 0,
                    E = 0
                }
                local vu58 = 0
                local function v61()
                    FLYING = true
                    local vu59 = Instance.new("BodyGyro")
                    local vu60 = Instance.new("BodyVelocity")
                    vu59.P = 90000
                    vu59.Parent = vu55
                    vu60.Parent = vu55
                    vu59.maxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
                    vu59.cframe = vu55.CFrame
                    vu60.velocity = Vector3.new(0, 0, 0)
                    vu60.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                    task.spawn(function()
                        while true do
                            wait()
                            if not pu54 and vu52.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                                vu52.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true
                            end
                            if vu56.L + vu56.R ~= 0 or (vu56.F + vu56.B ~= 0 or vu56.Q + vu56.E ~= 0) then
                                vu58 = 50
                            elseif vu56.L + vu56.R == 0 and (vu56.F + vu56.B == 0 and (vu56.Q + vu56.E == 0 and vu58 ~= 0)) then
                                vu58 = 0
                            end
                            if vu56.L + vu56.R ~= 0 or (vu56.F + vu56.B ~= 0 or vu56.Q + vu56.E ~= 0) then
                                vu60.velocity = (workspace.CurrentCamera.CoordinateFrame.lookVector * (vu56.F + vu56.B) + (workspace.CurrentCamera.CoordinateFrame * CFrame.new(vu56.L + vu56.R, (vu56.F + vu56.B + vu56.Q + vu56.E) * 0.2, 0).p - workspace.CurrentCamera.CoordinateFrame.p)) * vu58
                                vu57 = {
                                    F = vu56.F,
                                    B = vu56.B,
                                    L = vu56.L,
                                    R = vu56.R
                                }
                            elseif vu56.L + vu56.R ~= 0 or (vu56.F + vu56.B ~= 0 or (vu56.Q + vu56.E ~= 0 or vu58 == 0)) then
                                vu60.velocity = Vector3.new(0, 0, 0)
                            else
                                vu60.velocity = (workspace.CurrentCamera.CoordinateFrame.lookVector * (vu57.F + vu57.B) + (workspace.CurrentCamera.CoordinateFrame * CFrame.new(vu57.L + vu57.R, (vu57.F + vu57.B + vu56.Q + vu56.E) * 0.2, 0).p - workspace.CurrentCamera.CoordinateFrame.p)) * vu58
                            end
                            vu59.cframe = workspace.CurrentCamera.CoordinateFrame
                            if not FLYING then
                                vu56 = {
                                    F = 0,
                                    B = 0,
                                    L = 0,
                                    R = 0,
                                    Q = 0,
                                    E = 0
                                }
                                vu57 = {
                                    F = 0,
                                    B = 0,
                                    L = 0,
                                    R = 0,
                                    Q = 0,
                                    E = 0
                                }
                                vu58 = 0
                                vu59:Destroy()
                                vu60:Destroy()
                                if vu52.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                                    vu52.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
                                end
                                return
                            end
                        end
                    end)
                end
                flyKeyDown = IYMouse.KeyDown:Connect(function(p62)
                    if p62:lower() ~= "w" then
                        if p62:lower() ~= "s" then
                            if p62:lower() ~= "a" then
                                if p62:lower() ~= "d" then
                                    if QEfly and p62:lower() == "e" then
                                        vu56.Q = (pu54 and vehicleflyspeed or iyflyspeed) * 2
                                    elseif QEfly and p62:lower() == "q" then
                                        vu56.E = - (pu54 and vehicleflyspeed or iyflyspeed) * 2
                                    end
                                else
                                    vu56.R = pu54 and vehicleflyspeed or iyflyspeed
                                end
                            else
                                vu56.L = - (pu54 and vehicleflyspeed or iyflyspeed)
                            end
                        else
                            vu56.B = - (pu54 and vehicleflyspeed or iyflyspeed)
                        end
                    else
                        vu56.F = pu54 and vehicleflyspeed or iyflyspeed
                    end
                    pcall(function()
                        workspace.CurrentCamera.CameraType = Enum.CameraType.Track
                    end)
                end)
                flyKeyUp = IYMouse.KeyUp:Connect(function(p63)
                    if p63:lower() ~= "w" then
                        if p63:lower() ~= "s" then
                            if p63:lower() ~= "a" then
                                if p63:lower() ~= "d" then
                                    if p63:lower() ~= "e" then
                                        if p63:lower() == "q" then
                                            vu56.E = 0
                                        end
                                    else
                                        vu56.Q = 0
                                    end
                                else
                                    vu56.R = 0
                                end
                            else
                                vu56.L = 0
                            end
                        else
                            vu56.B = 0
                        end
                    else
                        vu56.F = 0
                    end
                end)
                v61()
            end
            function NOFLY()
                FLYING = false
                if flyKeyDown or flyKeyUp then
                    flyKeyDown:Disconnect()
                    flyKeyUp:Disconnect()
                end
                if vu52.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                    vu52.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
                end
                pcall(function()
                    workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
                end)
            end
            v51.Main:AddSlider("Slider", {
                Title = "Fly Speed",
                Description = "",
                Default = 10,
                Min = 1,
                Max = 50,
                Rounding = 0.1,
                Callback = function(p64)
                    iyflyspeed = p64
                end
            })
            v51.Main:AddToggle("", {
                Title = "Fly",
                Description = "u can fly",
                Default = false,
                Callback = function(p65)
                    if p65 == true then
                        sFLY()
                    else
                        sFLY()
                        wait()
                        NOFLY()
                    end
                end
            })
            local vu66 = nil
            local function vu75(_)
                if vu66 ~= true then
                    vu66 = false
                else
                    local v67, v68, v69 = pairs(workspace:GetChildren())
                    while true do
                        local v70
                        v69, v70 = v67(v68, v69)
                        if v69 == nil then
                            break
                        end
                        if v70.Name == vu39.Name then
                            local v71, v72, v73 = pairs(workspace[vu39.Name]:GetChildren())
                            while true do
                                local v74
                                v73, v74 = v71(v72, v73)
                                if v73 == nil then
                                    break
                                end
                                if v74:IsA("BasePart") then
                                    v74.CanCollide = false
                                end
                            end
                        end
                    end
                end
            end
            v51.Main:AddToggle("", {
                Title = "No Clip",
                Description = "boo bitch im a ghost",
                Default = false,
                Callback = function(p76)
                    vu66 = p76
                    vu75(p76)
                end
            })
            v51.GunMods:AddSection("Main")
            v51.GunMods:AddButton({
                Title = "Infinite Ammo",
                Description = "your ammo is infinite",
                Callback = function()
                    if vu14 then
                        local vu77 = vu39.Character:FindFirstChildOfClass("Tool")
                        local v79, _ = pcall(function()
                            local v78 = require(vu39.Character[vu77.Name]:FindFirstChild("Setting"))
                            if v78 then
                                v78.MaxAmmo = math.huge
                                v78.Ammo = math.huge
                                v78.AmmoPerMag = math.huge
                                v78.LimitedAmmoEnabled = false
                            else
                                vu1:Notify({
                                    Title = "Error.",
                                    Content = "Failed to edit gun stats.",
                                    SubContent = "",
                                    Duration = 5
                                })
                            end
                        end)
                        if not v79 then
                            vu1:Notify({
                                Title = "Error.",
                                Content = "You must have a gun equipped in order to use this.",
                                SubContent = "",
                                Duration = 5
                            })
                        end
                    elseif vu45 then
                        vu26:Dialog({
                            Title = "Buy MikeyHub.",
                            Content = "You must own MikeyHub in order to use this.\nJoin Our Discord To Buy MikeyHub Or Press Copy Link For Gamepass Link.",
                            Buttons = {
                                {
                                    Title = "Copy Link",
                                    Callback = function()
                                        setclipboard("https://mikeyhub.sellsn.io/product/b1a3ee62-933b-4537-b612-d5525a6d31a8")
                                        vu1:Notify({
                                            Title = "Copied Gamepass Url To Clipboard.",
                                            Content = "Paste the url into your browser.",
                                            SubContent = "Join Our Discord For Customer Role",
                                            Duration = 5
                                        })
                                    end
                                },
                                {
                                    Title = "Ok",
                                    Callback = function()
                                    end
                                }
                            }
                        })
                    end
                end
            })
            v51.GunMods:AddButton({
                Title = "Infinite FireRate",
                Description = "gun shoots REALLY fast (make sure your gun is auto)",
                Callback = function()
                    if vu14 then
                        local vu80 = vu39.Character:FindFirstChildOfClass("Tool")
                        local v82, _ = pcall(function()
                            local v81 = require(vu39.Character[vu80.Name]:FindFirstChild("Setting"))
                            if v81 then
                                v81.FireRate = 0
                            else
                                vu1:Notify({
                                    Title = "Error.",
                                    Content = "Failed to edit gun stats.",
                                    SubContent = "",
                                    Duration = 5
                                })
                            end
                        end)
                        if not v82 then
                            vu1:Notify({
                                Title = "Error.",
                                Content = "You must have a gun equipped in order to use this.",
                                SubContent = "",
                                Duration = 5
                            })
                        end
                    elseif vu45 then
                        vu26:Dialog({
                            Title = "Buy MikeyHub.",
                            Content = "You must own MikeyHub in order to use this.\nJoin Our Discord To Buy MikeyHub Or Press Copy Link For Gamepass Link.",
                            Buttons = {
                                {
                                    Title = "Copy Link",
                                    Callback = function()
                                        setclipboard("https://mikeyhub.sellsn.io/product/b1a3ee62-933b-4537-b612-d5525a6d31a8")
                                        vu1:Notify({
                                            Title = "Copied Gamepass Url To Clipboard.",
                                            Content = "Paste the url into your browser.",
                                            SubContent = "Join Our Discord For Customer Role",
                                            Duration = 5
                                        })
                                    end
                                },
                                {
                                    Title = "Ok",
                                    Callback = function()
                                    end
                                }
                            }
                        })
                    end
                end
            })
            v51.GunMods:AddToggle("", {
                Title = "Full Auto",
                Description = "makes yo gun automatic",
                Default = false,
                Callback = function(pu83)
                    local vu84 = vu39.Character:FindFirstChildOfClass("Tool")
                    local v86, _ = pcall(function()
                        local v85 = require(vu39.Character[vu84.Name]:FindFirstChild("Setting"))
                        if v85 then
                            v85.Auto = pu83
                        else
                            vu1:Notify({
                                Title = "Error.",
                                Content = "Failed to edit gun stats.",
                                SubContent = "",
                                Duration = 5
                            })
                        end
                    end)
                    if not v86 then
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You must have a gun equipped in order to use this.",
                            SubContent = "",
                            Duration = 5
                        })
                    end
                end
            })
            v51.GunMods:AddButton({
                Title = "No Recoil",
                Description = "",
                Callback = function()
                    local vu87 = vu39.Character:FindFirstChildOfClass("Tool")
                    local v89, _ = pcall(function()
                        local v88 = require(vu39.Character[vu87.Name]:FindFirstChild("Setting"))
                        if v88 then
                            v88.Recoil = 0
                        else
                            vu1:Notify({
                                Title = "Error.",
                                Content = "Failed to edit gun stats.",
                                SubContent = "",
                                Duration = 5
                            })
                        end
                    end)
                    if not v89 then
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You must have a gun equipped in order to use this.",
                            SubContent = "",
                            Duration = 5
                        })
                    end
                end
            })
            v51.GunMods:AddButton({
                Title = "No Spread",
                Description = "",
                Callback = function()
                    local vu90 = vu39.Character:FindFirstChildOfClass("Tool")
                    local v92, _ = pcall(function()
                        local v91 = require(vu39.Character[vu90.Name]:FindFirstChild("Setting"))
                        if v91 then
                            v91.Spread = 0
                        else
                            vu1:Notify({
                                Title = "Error.",
                                Content = "Failed to edit gun stats.",
                                SubContent = "",
                                Duration = 5
                            })
                        end
                    end)
                    if not v92 then
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You must have a gun equipped in order to use this.",
                            SubContent = "",
                            Duration = 5
                        })
                    end
                end
            })
            v51.GunMods:AddButton({
                Title = "Infinite Range",
                Description = "",
                Callback = function()
                    local vu93 = vu39.Character:FindFirstChildOfClass("Tool")
                    local v95, _ = pcall(function()
                        local v94 = require(vu39.Character[vu93.Name]:FindFirstChild("Setting"))
                        if v94 then
                            v94.Range = 99999
                        else
                            vu1:Notify({
                                Title = "Error.",
                                Content = "Failed to edit gun stats.",
                                SubContent = "",
                                Duration = 5
                            })
                        end
                    end)
                    if not v95 then
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You must have a gun equipped in order to use this.",
                            SubContent = "",
                            Duration = 5
                        })
                    end
                end
            })
            v51.Players:AddSection("All Players")
            v51.Players:AddButton({
                Title = "Kill All",
                Description = "ONLY KILLS EVERYONE WHO HAS PVP ENABLED\nMUST HAVE PVP ENABLED and Must have a gun equipped.",
                Callback = function()
                    if vu14 then
                        if vu39.Character:FindFirstChildOfClass("Tool") then
                            local v96 = game:GetService("Players")
                            local vu97 = game:GetService("ReplicatedStorage")
                            local vu98 = v96.LocalPlayer
                            local function vu103(p99)
                                local v100 = {
                                    vu98.Character:FindFirstChildOfClass("Tool"),
                                    vu98,
                                    p99.Character.Humanoid,
                                    p99.Character.HumanoidRootPart,
                                    vu97:WaitForChild("Modules"):WaitForChild("ProjectileHandler"),
                                    {
                                        16,
                                        2,
                                        true,
                                        7.413201808929443,
                                        false,
                                        10000,
                                        1000
                                    }
                                }
                                local v101 = {
                                    0,
                                    0,
                                    false,
                                    false,
                                    vu98.Character:FindFirstChildOfClass("Tool").GunScript_Server.IgniteScript,
                                    vu98.Character:FindFirstChildOfClass("Tool").GunScript_Server.IcifyScript,
                                    100,
                                    100
                                }
                                v100[7] = v101
                                v100[8] = {
                                    false,
                                    5,
                                    3
                                }
                                v100[9] = p99.Character.LeftHand
                                local v102 = {
                                    false,
                                    {
                                        1930359546
                                    },
                                    1,
                                    1.5,
                                    1,
                                    vu98.Character:FindFirstChildOfClass("Tool").GunScript_Local.GoreEffect
                                }
                                v100[10] = v102
                                vu97:WaitForChild("Remotes"):WaitForChild("InflictTarget"):InvokeServer(unpack(v100))
                            end
                            local v104, v105, v106 = pairs(v96:GetPlayers())
                            local v107 = vu98
                            local function v110(p108)
                                local v109 = p108.Character
                                return v109 and (v109:FindFirstChild("Humanoid") and v109:FindFirstChild("HumanoidRootPart")) and true or false
                            end
                            while true do
                                local vu111
                                v106, vu111 = v104(v105, v106)
                                if v106 == nil then
                                    break
                                end
                                if vu111 ~= v107 and v110(vu111) then
                                    task.spawn(function()
                                        while vu111.Character and (vu111.Character:FindFirstChild("Humanoid") and vu111.Character.Humanoid.Health > 0) do
                                            vu103(vu111)
                                            task.wait(0.05)
                                        end
                                        print(vu111.Name .. " died testing yes.")
                                    end)
                                end
                            end
                        else
                            vu1:Notify({
                                Title = "Error.",
                                Content = "You must have a gun equipped in order to use this.",
                                SubContent = "",
                                Duration = 5
                            })
                        end
                    elseif vu45 then
                        vu26:Dialog({
                            Title = "Buy MikeyHub.",
                            Content = "You must own MikeyHub in order to use this.\nJoin Our Discord To Buy MikeyHub Or Press Copy Link For Gamepass Link.",
                            Buttons = {
                                {
                                    Title = "Copy Link",
                                    Callback = function()
                                        setclipboard("https://mikeyhub.sellsn.io/product/b1a3ee62-933b-4537-b612-d5525a6d31a8")
                                        vu1:Notify({
                                            Title = "Copied Gamepass Url To Clipboard.",
                                            Content = "Paste the url into your browser.",
                                            SubContent = "Join Our Discord For Customer Role",
                                            Duration = 5
                                        })
                                    end
                                },
                                {
                                    Title = "Ok",
                                    Callback = function()
                                    end
                                }
                            }
                        })
                    end
                end
            })
            v51.VehicleMods:AddSection("Vehicle Mods")
            v51.VehicleMods:AddButton({
                Title = "Mod Vehicle Stats",
                Description = "Mods the vehicle max speed and accel, can be random.",
                Callback = function()
                    local v112, v113, v114 = ipairs(workspace.Cars:GetChildren())
                    while true do
                        local vu115
                        v114, vu115 = v112(v113, v114)
                        if v114 == nil then
                            break
                        end
                        local v116 = vu115:FindFirstChild("PlayerLoc")
                        if v116 and v116:IsA("ObjectValue") then
                            if v116.Value and v116.Value.Name == vu39.Name then
                                local v118, v119 = pcall(function()
                                    local v117 = vu115
                                    return require(v117:FindFirstChild("A-Chassis Tune"))
                                end)
                                if v118 and v119 then
                                    v119.Horsepower = 9999
                                    v119.Redline = 8500
                                    v119.PeakRPM = 8000
                                    v119.EqPoint = 7000
                                    v119.FinalDrive = 3.2
                                    v119.Ratios = {
                                        4.2,
                                        3.2,
                                        2.1,
                                        1.4,
                                        1,
                                        0.75
                                    }
                                    v119.Weight = 1000
                                    v119.Grip = 2
                                else
                                    vu1:Notify({
                                        Title = "Error.",
                                        Content = "Failed to edit vehicle stats.",
                                        SubContent = "",
                                        Duration = 5
                                    })
                                end
                            end
                        else
                            vu1:Notify({
                                Title = "Error.",
                                Content = "Something went wrong.",
                                SubContent = "",
                                Duration = 5
                            })
                        end
                    end
                end
            })
            v51.Misc:AddSection("Main")
            v51.Misc:AddButton({
                Title = "Force Reset",
                Description = "If you wanna live, don\'t use this lol",
                Callback = function()
                    vu39.Character.Humanoid.Health = 0
                end
            })
            v51.Misc:AddButton({
                Title = "Rejoin Server",
                Description = "Rejoins the game you\'re currently in.",
                Callback = function()
                    local v120 = game:GetService("TeleportService")
                    local v121 = game:GetService("Players").LocalPlayer
                    v120:Teleport(game.PlaceId, v121)
                end
            })
            v51.Visuals:AddSection("ESP")
            local vu122 = Color3.fromRGB(255, 255, 255)
            local vu123 = Color3.fromRGB(255, 255, 255)
            local vu124 = true
            local vu125 = v51.Visuals:AddColorpicker("Colorpicker", {
                Title = "Fill Color",
                Description = "",
                Default = Color3.fromRGB(255, 255, 255)
            })
            local vu126 = v51.Visuals:AddColorpicker("Colorpicker", {
                Title = "Outline Color",
                Description = "",
                Default = Color3.fromRGB(255, 255, 255)
            })
            local v127 = vu125
            vu125.OnChanged(v127, function()
                vu122 = vu125.Value
            end)
            local v128 = vu126
            vu126.OnChanged(v128, function()
                vu123 = vu126.Value
            end)
            v51.Visuals:AddToggle("", {
                Title = "Use Team Color",
                Description = "Changes the color of esp to team color",
                Default = true,
                Callback = function(p129)
                    vu124 = p129
                end
            })
            v51.Visuals:AddToggle("", {
                Title = "ESP",
                Description = "Highlights every player, allowing you to see them from afar.",
                Default = false,
                Callback = function(p130)
                    getgenv().enabled = p130
                    getgenv().filluseteamcolor = vu124
                    getgenv().outlineuseteamcolor = vu124
                    getgenv().fillcolor = vu122
                    getgenv().outlinecolor = vu123
                    getgenv().filltrans = 0.7
                    getgenv().outlinetrans = 0
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/zntly/highlight-esp/main/esp.lua"))()
                end
            })
            v51.Visuals:AddSection("World")
            local vu131 = game:GetService("Lighting")
            local vu132 = vu131.Ambient
            v51.Visuals:AddToggle("", {
                Title = "Full Bright",
                Description = "light up light up the world",
                Default = false,
                Callback = function(p133)
                    if p133 == true then
                        vu131.Ambient = Color3.new(1, 1, 1)
                        vu131.ColorShift_Bottom = Color3.new(1, 1, 1)
                        vu131.ColorShift_Top = Color3.new(1, 1, 1)
                    else
                        vu131.Ambient = vu132
                        vu131.ColorShift_Bottom = Color3.new()
                        vu131.ColorShift_Top = Color3.new()
                    end
                end
            })
            local _ = getgenv().NoPopups == false
            spawn(function()
                local v134 = math.random(100, 400)
                task.wait(v134)
                vu26:Dialog({
                    Title = "Hello!",
                    Content = "Are You Enjoying MikeyHub?",
                    Buttons = {
                        {
                            Title = "Yes",
                            Callback = function()
                                local v135 = {
                                    embeds = {
                                        {
                                            author = {
                                                name = "User Has Selected Yes!",
                                                icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu27 .. "&width=420&height=420"
                                            },
                                            description = "he likes mikeyhub i suppose",
                                            type = "rich",
                                            color = tonumber(16777215),
                                            fields = {
                                                {
                                                    name = "Username :",
                                                    value = game:GetService("Players").LocalPlayer.Name,
                                                    inline = true
                                                }
                                            }
                                        }
                                    }
                                }
                                local v136 = game:GetService("HttpService"):JSONEncode(v135);
                                (http_request or request or (HttpPost or syn.request))({
                                    Url = "https://discord.com/api/webhooks/",
                                    Body = v136,
                                    Method = "POST",
                                    Headers = {
                                        ["Content-Type"] = "application/json"
                                    }
                                })
                            end
                        },
                        {
                            Title = "No",
                            Callback = function()
                                vu26:Dialog({
                                    Title = "Why?",
                                    Content = "Why aren\'t you enjoying MikeyHub?",
                                    Buttons = {
                                        {
                                            Title = "Bad Scripts.",
                                            Callback = function()
                                                local v137 = {
                                                    embeds = {
                                                        {
                                                            author = {
                                                                name = "User Has Selected No.",
                                                                icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu27 .. "&width=420&height=420"
                                                            },
                                                            description = "he doesn\'t like mikeyhub i suppose",
                                                            type = "rich",
                                                            color = tonumber(16777215),
                                                            fields = {
                                                                {
                                                                    name = "Username :",
                                                                    value = game:GetService("Players").LocalPlayer.Name,
                                                                    inline = true
                                                                },
                                                                {
                                                                    name = "Reason :",
                                                                    value = "Scripts Are DooDoo, Bad, Terrible.",
                                                                    inline = true
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                local v138 = game:GetService("HttpService"):JSONEncode(v137);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/",
                                                    Body = v138,
                                                    Method = "POST",
                                                    Headers = {
                                                        ["Content-Type"] = "application/json"
                                                    }
                                                })
                                            end
                                        },
                                        {
                                            Title = "Lag",
                                            Callback = function()
                                                local v139 = {
                                                    embeds = {
                                                        {
                                                            author = {
                                                                name = "User Has Selected No.",
                                                                icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu27 .. "&width=420&height=420"
                                                            },
                                                            description = "he doesn\'t like mikeyhub i suppose",
                                                            type = "rich",
                                                            color = tonumber(16777215),
                                                            fields = {
                                                                {
                                                                    name = "Username :",
                                                                    value = game:GetService("Players").LocalPlayer.Name,
                                                                    inline = true
                                                                },
                                                                {
                                                                    name = "Reason :",
                                                                    value = "Laggy Scripts",
                                                                    inline = true
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                local v140 = game:GetService("HttpService"):JSONEncode(v139);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/",
                                                    Body = v140,
                                                    Method = "POST",
                                                    Headers = {
                                                        ["Content-Type"] = "application/json"
                                                    }
                                                })
                                            end
                                        },
                                        {
                                            Title = "Little Features",
                                            Callback = function()
                                                local v141 = {
                                                    embeds = {
                                                        {
                                                            author = {
                                                                name = "User Has Selected No.",
                                                                icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu27 .. "&width=420&height=420"
                                                            },
                                                            description = "he doesn\'t like mikeyhub i suppose",
                                                            type = "rich",
                                                            color = tonumber(16777215),
                                                            fields = {
                                                                {
                                                                    name = "Username :",
                                                                    value = game:GetService("Players").LocalPlayer.Name,
                                                                    inline = true
                                                                },
                                                                {
                                                                    name = "Reason :",
                                                                    value = "Little Features",
                                                                    inline = true
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                local v142 = game:GetService("HttpService"):JSONEncode(v141);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/",
                                                    Body = v142,
                                                    Method = "POST",
                                                    Headers = {
                                                        ["Content-Type"] = "application/json"
                                                    }
                                                })
                                            end
                                        },
                                        {
                                            Title = "Other",
                                            Callback = function()
                                                local v143 = {
                                                    embeds = {
                                                        {
                                                            author = {
                                                                name = "User Has Selected No.",
                                                                icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu27 .. "&width=420&height=420"
                                                            },
                                                            description = "he doesn\'t like mikeyhub i suppose",
                                                            type = "rich",
                                                            color = tonumber(16777215),
                                                            fields = {
                                                                {
                                                                    name = "Username :",
                                                                    value = game:GetService("Players").LocalPlayer.Name,
                                                                    inline = true
                                                                },
                                                                {
                                                                    name = "Reason :",
                                                                    value = "Other / Unknown Reason",
                                                                    inline = true
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                local v144 = game:GetService("HttpService"):JSONEncode(v143);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/",
                                                    Body = v144,
                                                    Method = "POST",
                                                    Headers = {
                                                        ["Content-Type"] = "application/json"
                                                    }
                                                })
                                            end
                                        }
                                    }
                                })
                            end
                        },
                        {
                            Title = "Not Sure",
                            Callback = function()
                            end
                        }
                    }
                })
            end)
            spawn(function()
                local v145 = math.random(100, 600)
                task.wait(v145)
                vu26:Dialog({
                    Title = "Reminder:",
                    Content = "mmmm",
                    Buttons = {
                        {
                            Title = "Copy MR-S Link",
                            Callback = function()
                                setclipboard("http://qins.mc.hi.cn/MR-S")
                            end
                        },
                        {
                            Title = "Ignore",
                            Callback = function()
                            end
                        }
                    }
                })
            end)
            vu26:SelectTab(1)
        end
    else
        local v146 = game.Players.LocalPlayer
        if v146 and v146:IsA("Player") then
            v146:Kick("\nKey Mismatch\n \nIf you aren\'t a skid trying to bypass MikeyHub, sorry to inform you that theres no direct fix for this.")
        end
    end
else
    local v147 = game.Players.LocalPlayer
    if v147 and v147:IsA("Player") then
        v147:Kick("Open MikeyHub Loader Before Running This.")
    end
    return
end
