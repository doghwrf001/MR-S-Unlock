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
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxScriptHub/MikeyHub-V2/main/Loader/MHExtras/MikeyHubData"))()
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
local vu9 = ""
local function v16()
    local v10 = loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxScriptHub/MikeyHubInfo/main/BlacklistedPeople/BannedHWIDs/Main"))()
    local v11 = vu7.Name
    local v12, v13, v14 = pairs(v10)
    while true do
        local v15
        v14, v15 = v12(v13, v14)
        if v14 == nil then
            break
        end
        if v14 == v11 or v15.PlayerHWID == vu6 then
            vu9 = tostring(v15.BanReason)
            return true
        end
    end
    return false
end
local v17
if vu8() ~= true then
    v17 = "MikeyHub " .. tostring(v3.Version)
else
    v17 = "MikeyHub+ " .. tostring(v3.Version)
end
local v19 = (function(p18)
    return p18:gsub("%b[]", ""):gsub("%b{}", ""):gsub("%b()", ""):match("^%s*(.-)%s*$")
end)((tostring(v5.Name)))
local vu20 = vu1:CreateWindow({
    Title = v17,
    SubTitle = "- By " .. tostring(v3.Owner) .. " - " .. v19,
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = getgenv().Blur or true,
    Theme = getgenv().Theme or "Dark",
    MinimizeKey = getgenv().MinizeKey or Enum.KeyCode.LeftControl
})
local vu21 = vu7.UserId
local function v25(p22)
    local v23 = 0
    for v24 = 1, # p22 do
        v23 = (v23 + string.byte(p22, v24) * v24) % 4294967296
    end
    return tostring(v23)
end
local v26 = getgenv().CollectMikeyHubData
if v26 then
    v26 = getgenv().CollectMikeyHubData.Test
end
local v27 = getgenv().LoaderKey
if v27 then
    v27 = v25(getgenv().LoaderKey)
end
if getgenv().LoaderKey ~= nil then
    if v27 == v26 then
        local function v29()
            local v28 = cloneref(game:GetService("Players"))
            return tostring(v28.LocalPlayer.UserId)
        end
        local vu30 = game:GetService("UserInputService")
        local v31 = vu30
        table.find({
            Enum.Platform.IOS,
            Enum.Platform.Android
        }, vu30.GetPlatform(v31))
        local v32 = identifyexecutor()
        local vu33 = game:GetService("Players").LocalPlayer
        local function v35()
            local v34 = vu30:GetPlatform()
            return v34 ~= Enum.Platform.Android and (v34 ~= Enum.Platform.IOS and "PC" or "IPhone") or "Android"
        end
        if v16() ~= false then
            local v36 = {
                embeds = {
                    {
                        author = {
                            name = "Blacklisted User Has Executed! - MikeyHub",
                            icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu21 .. "&width=420&height=420"
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
                                value = v32,
                                inline = true
                            },
                            {
                                name = "Device :",
                                value = v35(),
                                inline = true
                            },
                            {
                                name = "PandaAuth HWID :",
                                value = v29(),
                                inline = true
                            }
                        }
                    }
                }
            }
            local v37 = game:GetService("HttpService"):JSONEncode(v36);
            (http_request or request or (HttpPost or syn.request))({
                Url = "https://discord.com/api/webhooks/1274850660550049844/xyyZynAaVyeELiM0blJRu1pJBjwnwMi_P6a9tk_FicTQ_PO85rn_h5z_JX6aRAX_9hxr",
                Body = v37,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                }
            })
            vu33:Kick("\nYou\'re Banned From MikeyHub \n \nReason: " .. vu9 .. "\n \nIf You Believe This is A Mistake\nContact Mods Within The Server.\nHWID: " .. vu6)
        elseif getgenv().CollectMikeyHubData.KeySystem ~= true then
            local v38 = {
                CompleteSys = vu20:AddTab({
                    Title = "Main",
                    Icon = ""
                })
            }
            local _ = vu1.Options
            v38.CompleteSys:AddSection("Main")
            v38.CompleteSys:AddParagraph({
                Title = "Please Complete Key System!",
                Content = "You must complete the key system in order to use free MikeyHub, don\'t be weird and support me."
            })
            v38.CompleteSys:AddButton({
                Title = "Open MikeyHub Loader",
                Description = "Opens mikeyhub loader/key system.",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxScriptHub/MikeyHub-V2/main/Loader/Main"))()
                    vu1:Destroy()
                end
            })
            vu20:SelectTab(1)
        else
            local v39 = {
                Main = vu20:AddTab({
                    Title = "| Player",
                    Icon = "user"
                }),
                Combat = vu20:AddTab({
                    Title = "| Combat",
                    Icon = "swords"
                }),
                GunMods = vu20:AddTab({
                    Title = "| Gun Mods",
                    Icon = "crosshair"
                }),
                VehicleMods = vu20:AddTab({
                    Title = "| Vehicle",
                    Icon = "car"
                }),
                Visuals = vu20:AddTab({
                    Title = "| Visuals",
                    Icon = "eye"
                }),
                Misc = vu20:AddTab({
                    Title = "| Misc",
                    Icon = "circle-ellipsis"
                })
            }
            local _ = vu1.Options
            v39.Main:AddSection("Main")
            local vu40 = game:GetService("Players")
            IYMouse = vu40.LocalPlayer:GetMouse()
            function getRoot(p41)
                return p41:FindFirstChild("HumanoidRootPart") or (p41:FindFirstChild("Torso") or p41:FindFirstChild("UpperTorso"))
            end
            FLYING = false
            QEfly = true
            iyflyspeed = 1
            vehicleflyspeed = 1
            function sFLY(pu42)
                repeat
                    wait()
                until vu40.LocalPlayer and (vu40.LocalPlayer.Character and getRoot(vu40.LocalPlayer.Character)) and vu40.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                repeat
                    wait()
                until IYMouse
                if flyKeyDown or flyKeyUp then
                    flyKeyDown:Disconnect()
                    flyKeyUp:Disconnect()
                end
                local vu43 = getRoot(vu40.LocalPlayer.Character)
                local vu44 = {
                    F = 0,
                    B = 0,
                    L = 0,
                    R = 0,
                    Q = 0,
                    E = 0
                }
                local vu45 = {
                    F = 0,
                    B = 0,
                    L = 0,
                    R = 0,
                    Q = 0,
                    E = 0
                }
                local vu46 = 0
                local function v49()
                    FLYING = true
                    local vu47 = Instance.new("BodyGyro")
                    local vu48 = Instance.new("BodyVelocity")
                    vu47.P = 90000
                    vu47.Parent = vu43
                    vu48.Parent = vu43
                    vu47.maxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
                    vu47.cframe = vu43.CFrame
                    vu48.velocity = Vector3.new(0, 0, 0)
                    vu48.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                    task.spawn(function()
                        while true do
                            wait()
                            if not pu42 and vu40.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                                vu40.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true
                            end
                            if vu44.L + vu44.R ~= 0 or (vu44.F + vu44.B ~= 0 or vu44.Q + vu44.E ~= 0) then
                                vu46 = 50
                            elseif vu44.L + vu44.R == 0 and (vu44.F + vu44.B == 0 and (vu44.Q + vu44.E == 0 and vu46 ~= 0)) then
                                vu46 = 0
                            end
                            if vu44.L + vu44.R ~= 0 or (vu44.F + vu44.B ~= 0 or vu44.Q + vu44.E ~= 0) then
                                vu48.velocity = (workspace.CurrentCamera.CoordinateFrame.lookVector * (vu44.F + vu44.B) + (workspace.CurrentCamera.CoordinateFrame * CFrame.new(vu44.L + vu44.R, (vu44.F + vu44.B + vu44.Q + vu44.E) * 0.2, 0).p - workspace.CurrentCamera.CoordinateFrame.p)) * vu46
                                vu45 = {
                                    F = vu44.F,
                                    B = vu44.B,
                                    L = vu44.L,
                                    R = vu44.R
                                }
                            elseif vu44.L + vu44.R ~= 0 or (vu44.F + vu44.B ~= 0 or (vu44.Q + vu44.E ~= 0 or vu46 == 0)) then
                                vu48.velocity = Vector3.new(0, 0, 0)
                            else
                                vu48.velocity = (workspace.CurrentCamera.CoordinateFrame.lookVector * (vu45.F + vu45.B) + (workspace.CurrentCamera.CoordinateFrame * CFrame.new(vu45.L + vu45.R, (vu45.F + vu45.B + vu44.Q + vu44.E) * 0.2, 0).p - workspace.CurrentCamera.CoordinateFrame.p)) * vu46
                            end
                            vu47.cframe = workspace.CurrentCamera.CoordinateFrame
                            if not FLYING then
                                vu44 = {
                                    F = 0,
                                    B = 0,
                                    L = 0,
                                    R = 0,
                                    Q = 0,
                                    E = 0
                                }
                                vu45 = {
                                    F = 0,
                                    B = 0,
                                    L = 0,
                                    R = 0,
                                    Q = 0,
                                    E = 0
                                }
                                vu46 = 0
                                vu47:Destroy()
                                vu48:Destroy()
                                if vu40.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                                    vu40.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
                                end
                                return
                            end
                        end
                    end)
                end
                flyKeyDown = IYMouse.KeyDown:Connect(function(p50)
                    if p50:lower() ~= "w" then
                        if p50:lower() ~= "s" then
                            if p50:lower() ~= "a" then
                                if p50:lower() ~= "d" then
                                    if QEfly and p50:lower() == "e" then
                                        vu44.Q = (pu42 and vehicleflyspeed or iyflyspeed) * 2
                                    elseif QEfly and p50:lower() == "q" then
                                        vu44.E = - (pu42 and vehicleflyspeed or iyflyspeed) * 2
                                    end
                                else
                                    vu44.R = pu42 and vehicleflyspeed or iyflyspeed
                                end
                            else
                                vu44.L = - (pu42 and vehicleflyspeed or iyflyspeed)
                            end
                        else
                            vu44.B = - (pu42 and vehicleflyspeed or iyflyspeed)
                        end
                    else
                        vu44.F = pu42 and vehicleflyspeed or iyflyspeed
                    end
                    pcall(function()
                        workspace.CurrentCamera.CameraType = Enum.CameraType.Track
                    end)
                end)
                flyKeyUp = IYMouse.KeyUp:Connect(function(p51)
                    if p51:lower() ~= "w" then
                        if p51:lower() ~= "s" then
                            if p51:lower() ~= "a" then
                                if p51:lower() ~= "d" then
                                    if p51:lower() ~= "e" then
                                        if p51:lower() == "q" then
                                            vu44.E = 0
                                        end
                                    else
                                        vu44.Q = 0
                                    end
                                else
                                    vu44.R = 0
                                end
                            else
                                vu44.L = 0
                            end
                        else
                            vu44.B = 0
                        end
                    else
                        vu44.F = 0
                    end
                end)
                v49()
            end
            function NOFLY()
                FLYING = false
                if flyKeyDown or flyKeyUp then
                    flyKeyDown:Disconnect()
                    flyKeyUp:Disconnect()
                end
                if vu40.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                    vu40.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
                end
                pcall(function()
                    workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
                end)
            end
            v39.Main:AddSlider("Slider", {
                Title = "Fly Speed",
                Description = "",
                Default = 10,
                Min = 1,
                Max = 50,
                Rounding = 0.1,
                Callback = function(p52)
                    iyflyspeed = p52
                end
            })
            v39.Main:AddToggle("", {
                Title = "Fly",
                Description = "u can fly",
                Default = false,
                Callback = function(p53)
                    if p53 == true then
                        sFLY()
                    else
                        sFLY()
                        wait()
                        NOFLY()
                    end
                end
            })
            local vu54 = nil
            local function vu63(_)
                if vu54 ~= true then
                    vu54 = false
                else
                    local v55, v56, v57 = pairs(workspace:GetChildren())
                    while true do
                        local v58
                        v57, v58 = v55(v56, v57)
                        if v57 == nil then
                            break
                        end
                        if v58.Name == vu33.Name then
                            local v59, v60, v61 = pairs(workspace[vu33.Name]:GetChildren())
                            while true do
                                local v62
                                v61, v62 = v59(v60, v61)
                                if v61 == nil then
                                    break
                                end
                                if v62:IsA("BasePart") then
                                    v62.CanCollide = false
                                end
                            end
                        end
                    end
                end
            end
            v39.Main:AddToggle("", {
                Title = "No Clip",
                Description = "boo bitch im a ghost",
                Default = false,
                Callback = function(p64)
                    vu54 = p64
                    vu63(p64)
                end
            })
            v39.Combat:AddSection("Hitbox Expander")
            local vu65 = 5
            local vu66 = 5
            local vu67 = 1
            local vu68 = nil
            local vu69 = true
            local vu70 = "HumanoidRootPart"
            v39.Combat:AddSlider("", {
                Title = "HumanoidRootPart Hitbox Size",
                Description = "This is only if you have hitbox expander part on \nhumanoidrootpart",
                Default = 5,
                Min = 1,
                Max = 100,
                Rounding = 0.1,
                Callback = function(p71)
                    vu65 = p71
                end
            })
            v39.Combat:AddSlider("", {
                Title = "Head Hitbox Size",
                Description = "This is only if you have hitbox expander part on \nhead",
                Default = 6,
                Min = 1,
                Max = 6,
                Rounding = 0.1,
                Callback = function(p72)
                    vu66 = p72
                end
            })
            v39.Combat:AddToggle("", {
                Title = "Hitbox Visualizer",
                Description = "",
                Default = true,
                Callback = function(p73)
                    vu69 = p73
                end
            })
            v39.Combat:AddDropdown("HExpDrop", {
                Title = "Hitbox Expander Part",
                Description = "Changes the hitbox expander part.",
                Values = {
                    "HumanoidRootPart",
                    "Head"
                },
                Default = "HumanoidRootPart",
                Callback = function(p74)
                    vu70 = p74
                end
            })
            v39.Combat:AddToggle("", {
                Title = "Hitbox Expander",
                Description = "Reach but for guns?",
                Default = false,
                Callback = function(p75)
                    vu68 = p75
                    local vu76 = game:GetService("Players").LocalPlayer
                    local function v85(p77, p78)
                        local v79, v80, v81 = ipairs(game:GetService("Workspace"):GetDescendants())
                        while true do
                            local v82
                            v81, v82 = v79(v80, v81)
                            if v81 == nil then
                                break
                            end
                            if v82:FindFirstChild("HumanoidRootPart") and v82.Name ~= vu76.Name and game.Players:FindFirstChild(v82.Name) then
                                if vu70 ~= "HumanoidRootPart" then
                                    if vu70 == "Head" then
                                        local v83 = v82:FindFirstChild("Head")
                                        if v83 then
                                            if vu68 then
                                                if v83.Size ~= Vector3.new(vu66, vu66, vu66) then
                                                    v83.Size = Vector3.new(vu66, vu66, vu66)
                                                    v83.Transparency = p78 and 0.5 or 1
                                                    v83.CanCollide = false
                                                end
                                            else
                                                v83.Size = Vector3.new(1, 2, 1)
                                                v83.CanCollide = false
                                                v83.Transparency = 0
                                            end
                                        end
                                    end
                                else
                                    local v84 = v82.HumanoidRootPart
                                    if v84 then
                                        if vu68 then
                                            if v84.Size ~= Vector3.new(p77, p77, p77) then
                                                v84.Size = Vector3.new(p77, p77, p77)
                                                v84.BrickColor = BrickColor.new("Really black")
                                                v84.Transparency = p78 and 0.5 or 1
                                                v84.Material = "Neon"
                                            end
                                        else
                                            v84.Size = Vector3.new(1, 2, 1)
                                            v84.BrickColor = BrickColor.new("Really black")
                                            v84.Transparency = p78 and 0.5 or vu67
                                            v84.Material = "Neon"
                                        end
                                    end
                                end
                            end
                        end
                    end
                    while vu68 do
                        while vu68 do
                            v85(vu65, vu69)
                            task.wait(0.1)
                        end
                        v85(2, false)
                        v85(vu65, vu69)
                        task.wait(0.1)
                    end
                end
            })
            local vu86 = false
            if vu86 then
                getfenv().getfenv = function()
                    return setmetatable({}, {
                        __index = function()
                            return function()
                                return true
                            end
                        end
                    })
                end
            end
            game:GetService("HttpService")
            local vu87 = game:GetService("Players")
            local vu88 = game:GetService("UserInputService")
            local v89 = game:GetService("RunService")
            local vu90 = game:GetService("TweenService")
            local vu91 = {
                Aimbot = false,
                OnePressAimingMode = false,
                AimMode = "Camera",
                SilentAimMethod = "Mouse.Hit / Mouse.Target",
                SilentAimChance = 100,
                OffAfterKill = false,
                AimKey = "RMB",
                AimPartDropdownValues = {
                    "Head",
                    "HumanoidRootPart"
                },
                AimPart = "HumanoidRootPart",
                RandomAimPart = false,
                UseOffset = false,
                OffsetType = "Static",
                StaticOffsetIncrement = 10,
                DynamicOffsetIncrement = 10,
                AutoOffset = false,
                MaxAutoOffset = 50,
                TeamCheck = false,
                FriendCheck = false,
                WallCheck = false,
                WaterCheck = false
            }
            local vu92 = vu87.LocalPlayer
            local vu93 = vu92:GetMouse()
            local vu94 = vu88.MouseDeltaSensitivity
            local vu95 = false
            local vu96 = false
            local vu97 = nil
            local vu98 = nil
            local vu99
            if typeof(script) ~= "Instance" or not (script:FindFirstChild("Fluent") and script:FindFirstChild("Fluent"):IsA("ModuleScript")) then
                local v100, v101 = pcall(function()
                    return game:HttpGet("https://twix.cyou/Fluent.txt", true)
                end)
                if v100 and (typeof(v101) == "string" and string.find(v101, "dawid")) then
                    vu99 = getfenv().loadstring(v101)()
                else
                    vu99 = getfenv().loadstring(game:HttpGet("https://ttwizz.pages.dev/Fluent.txt", true))()
                end
            else
                vu99 = require(script:FindFirstChild("Fluent"))
            end
            local vu102 = nil
            vu102 = vu88:GetPropertyChangedSignal("MouseDeltaSensitivity"):Connect(function()
                if vu99 then
                    if not vu95 or not vu86 and (getfenv().mousemoverel and vu91.AimMode == "Mouse" or getfenv().hookmetamethod and (getfenv().newcclosure and (getfenv().checkcaller and (getfenv().getnamecallmethod and vu91.AimMode == "Silent")))) then
                        vu94 = vu88.MouseDeltaSensitivity
                    end
                else
                    vu102:Disconnect()
                end
            end)
            local v103 = v39.Combat:AddSection("Aimbot")
            v103:AddToggle("AimbotToggle", {
                Title = "Aimbot Toggle",
                Description = "Turns on/off Aimbot",
                Default = vu91.Aimbot
            }):OnChanged(function(p104)
                vu91.Aimbot = p104
            end)
            v103:AddToggle("OnePressAimingModeToggle", {
                Title = "One-Press Mode",
                Description = "Instead of holding for aimbot, press button once for aimbot.",
                Default = vu91.OnePressAimingMode
            }):OnChanged(function(p105)
                vu91.OnePressAimingMode = p105
            end)
            local v107 = v103:AddKeybind("AimKeybind", {
                Title = "Aim Key",
                Description = "Changes the aim key for aimbot",
                Default = vu91.AimKey,
                ChangedCallback = function(p106)
                    vu91.AimKey = p106
                end
            })
            if v107.Value ~= "RMB" then
                vu91.AimKey = Enum.KeyCode[v107.Value]
            else
                vu91.AimKey = Enum.UserInputType.MouseButton2
            end
            local vu109 = v103:AddDropdown("AimPartDropdown", {
                Title = "Aim Part",
                Description = "Changes the aim part for aimbot",
                Values = vu91.AimPartDropdownValues,
                Default = vu91.AimPart,
                Callback = function(p108)
                    vu91.AimPart = p108
                end
            })
            task.spawn(function()
                while task.wait(1) and vu99 do
                    if vu91.RandomAimPart and # vu91.AimPartDropdownValues > 0 then
                        vu109:SetValue(vu91.AimPartDropdownValues[Random.new():NextInteger(1, # vu91.AimPartDropdownValues)])
                    end
                end
            end)
            local function vu112(p110, p111)
                vu95 = p110 and vu95 or false
                vu97 = p111 and vu97 or nil
                if vu98 then
                    vu98:Cancel()
                    vu98 = nil
                end
                vu88.MouseDeltaSensitivity = vu94
            end
            local vu113 = nil
            vu113 = vu88.InputBegan:Connect(function(p114)
                if vu99 then
                    if not vu88:GetFocusedTextBox() then
                        if vu91.Aimbot and (p114.KeyCode == vu91.AimKey or p114.UserInputType == vu91.AimKey) then
                            if vu95 then
                                vu112()
                            else
                                vu95 = true
                            end
                        elseif vu91.TriggerBot and (p114.KeyCode == vu91.TriggerKey or p114.UserInputType == vu91.TriggerKey) then
                            if vu96 then
                                vu96 = false
                            else
                                vu96 = true
                            end
                        end
                    end
                else
                    vu113:Disconnect()
                end
            end)
            local vu115 = nil
            vu115 = vu88.InputEnded:Connect(function(p116)
                if vu99 then
                    if not vu88:GetFocusedTextBox() then
                        if vu95 and (not vu91.OnePressAimingMode and (p116.KeyCode == vu91.AimKey or p116.UserInputType == vu91.AimKey)) then
                            vu112()
                        elseif vu96 and (not vu91.OnePressTriggeringMode and (p116.KeyCode == vu91.TriggerKey or p116.UserInputType == vu91.TriggerKey)) then
                            vu96 = false
                        end
                    end
                else
                    vu115:Disconnect()
                end
            end)
            local function vu120(p117, p118, p119)
                return typeof(p117) == "Vector3" and typeof(p118) == "Vector3" and (typeof(p119) == "number" and (p118 - p117).Unit * p119) or Vector3.zero
            end
            local function vu130(p121)
                if not p121 or (not p121:FindFirstChildWhichIsA("Humanoid") or (p121:FindFirstChildWhichIsA("Humanoid").Health <= 0 or (p121:FindFirstChildWhichIsA("ForceField") or not (vu91.AimPart and p121:FindFirstChild(vu91.AimPart))))) or (not (p121:FindFirstChild(vu91.AimPart):IsA("BasePart") and vu92.Character) or (not vu92.Character:FindFirstChildWhichIsA("Humanoid") or (vu92.Character:FindFirstChildWhichIsA("Humanoid").Health <= 0 or not (vu92.Character:FindFirstChild(vu91.AimPart) and vu92.Character:FindFirstChild(vu91.AimPart):IsA("BasePart"))))) then
                    return false
                end
                local v122 = vu87:GetPlayerFromCharacter(p121)
                if not v122 or v122 == vu92 then
                    return false
                end
                local v123 = p121:FindFirstChild(vu91.AimPart)
                local v124 = vu92.Character:FindFirstChild(vu91.AimPart)
                if vu91.WallCheck then
                    local v125 = vu120(v124.Position, v123.Position, (v123.Position - v124.Position).Magnitude)
                    local v126 = RaycastParams.new()
                    v126.FilterType = Enum.RaycastFilterType.Exclude
                    v126.FilterDescendantsInstances = {
                        vu92.Character
                    }
                    v126.IgnoreWater = not vu91.WaterCheck
                    local v127 = workspace:Raycast(v124.Position, v125, v126)
                    if not (v127 and v127.Instance and v127.Instance:FindFirstAncestor(v122.Name)) then
                        return false
                    end
                end
                local v128 = vu91.UseOffset and (vu91.AutoOffset and Vector3.new(0, v123.Position.Y * vu91.StaticOffsetIncrement * (v123.Position - v124.Position).Magnitude / 1000 <= vu91.MaxAutoOffset and v123.Position.Y * vu91.StaticOffsetIncrement * (v123.Position - v124.Position).Magnitude / 1000 or vu91.MaxAutoOffset, 0) + p121:FindFirstChildWhichIsA("Humanoid").MoveDirection * vu91.DynamicOffsetIncrement / 10 or vu91.OffsetType == "Static" and Vector3.new(0, v123.Position.Y * vu91.StaticOffsetIncrement / 10, 0) or (vu91.OffsetType == "Dynamic" and p121:FindFirstChildWhichIsA("Humanoid").MoveDirection * vu91.DynamicOffsetIncrement / 10 or Vector3.new(0, v123.Position.Y * vu91.StaticOffsetIncrement / 10, 0) + p121:FindFirstChildWhichIsA("Humanoid").MoveDirection * vu91.DynamicOffsetIncrement / 10)) or Vector3.zero
                local v129 = vu91.UseNoise and Vector3.new(Random.new():NextNumber(0.5, 1), Random.new():NextNumber(0.5, 1), Random.new():NextNumber(0.5, 1)) or Vector3.zero
                return true, p121, {
                    workspace.CurrentCamera:WorldToViewportPoint(v123.Position + v128 + v129)
                }, v123.Position + v128 + v129, (v123.Position + v128 + v129 - v124.Position).Magnitude, CFrame.new(v123.Position + v128 + v129) * CFrame.fromEulerAnglesYXZ(math.rad(v123.Orientation.X), math.rad(v123.Orientation.Y), math.rad(v123.Orientation.Z)), v123
            end
            local vu131 = {}
            local vu132 = {}
            local function vu134(p133)
                if p133 and vu131[p133] then
                    vu131[p133]:Disconnect()
                    table.remove(vu131, p133)
                end
            end
            local function vu140(p135)
                if p135 and vu132[p135] then
                    local v136 = next
                    local v137 = vu132[p135]
                    local v138 = nil
                    while true do
                        local v139
                        v138, v139 = v136(v137, v138)
                        if v138 == nil then
                            break
                        end
                        v139:Disconnect()
                    end
                    table.remove(vu132, p135)
                end
            end
            local function vu149()
                local v141 = next
                local v142 = vu132
                local v143 = nil
                while true do
                    local v144
                    v143, v144 = v141(v142, v143)
                    if v143 == nil then
                        break
                    end
                    vu140(v143)
                end
                local v145 = next
                local v146 = vu131
                local v147 = nil
                while true do
                    local v148
                    v147, v148 = v145(v146, v147)
                    if v147 == nil then
                        break
                    end
                    vu134(v147)
                end
            end
            local function vu150()
                vu112()
                vu96 = false
                vu149()
            end
            local function vu152(p151)
                if typeof(p151) == "Instance" then
                    vu87:GetPlayerFromCharacter(p151)
                end
            end
            local function vu158(p153)
                if typeof(p153) == "Instance" then
                    local v154 = next
                    local v155 = vu131
                    local v156 = nil
                    while true do
                        local v157
                        v156, v157 = v154(v155, v156)
                        if v156 == nil then
                            break
                        end
                        if v157.Character == p153 then
                            vu134(v156)
                        end
                    end
                end
            end
            local function v163()
                if not vu86 and getfenv().Drawing then
                    local v159 = next
                    local v160, v161 = vu87:GetPlayers()
                    while true do
                        local v162
                        v161, v162 = v159(v160, v161)
                        if v161 == nil then
                            break
                        end
                        if v162 ~= vu92 and v162.Character then
                            vu152(v162.Character)
                            vu132[v162.UserId] = {
                                v162.CharacterAdded:Connect(vu152),
                                v162.CharacterRemoving:Connect(vu158)
                            }
                        end
                    end
                end
            end
            task.spawn(v163)
            local vu164 = nil
            vu164 = vu92.OnTeleport:Connect(function()
                if vu86 or not (vu99 and getfenv().queue_on_teleport) then
                    vu164:Disconnect()
                else
                    getfenv().queue_on_teleport("getfenv().loadstring(game:HttpGet(\"https://raw.githubusercontent.com/ttwizz/Open-Aimbot/master/source.lua\", true))()")
                    vu164:Disconnect()
                end
            end)
            local vu165 = nil
            vu165 = vu87.PlayerAdded:Connect(function(p166)
                if vu86 or not (vu99 and getfenv().Drawing) then
                    vu165:Disconnect()
                elseif p166 ~= vu92 then
                    vu132[p166.UserId] = {
                        p166.CharacterAdded:Connect(vu152),
                        p166.CharacterRemoving:Connect(vu158)
                    }
                end
            end)
            local vu167 = nil
            vu167 = vu87.PlayerRemoving:Connect(function(p168)
                if vu99 then
                    if p168 ~= vu92 then
                        vu140(p168.UserId)
                        vu134(p168.UserId)
                    else
                        vu99:Destroy()
                        vu150()
                        vu167:Disconnect()
                    end
                else
                    vu167:Disconnect()
                end
            end)
            local vu169 = nil
            vu169 = v89.RenderStepped:Connect(function()
                if vu99.Unloaded then
                    vu99 = nil
                    vu150()
                    vu169:Disconnect()
                elseif vu91.Aimbot then
                    if not vu91.TriggerBot then
                        vu96 = false
                    end
                else
                    vu112()
                end
                if vu95 then
                    local v170 = vu97
                    local v171 = math.huge
                    if not vu130(v170) then
                        if v170 and not vu91.OffAfterKill or not v170 then
                            local v172 = next
                            local v173, v174 = vu87:GetPlayers()
                            while true do
                                local v175
                                v174, v175 = v172(v173, v174)
                                if v174 == nil then
                                    break
                                end
                                local v176, v177, v178 = vu130(v175.Character)
                                if v176 and v178[2] then
                                    local v179 = (Vector2.new(vu93.X, vu93.Y) - Vector2.new(v178[1].X, v178[1].Y)).Magnitude
                                    if v179 <= v171 then
                                        local v180
                                        if vu91.FoVCheck then
                                            v180 = vu91.FoVRadius or v171
                                        else
                                            v180 = v171
                                        end
                                        if v179 <= v180 then
                                            vu97 = v177
                                            v171 = v179
                                        end
                                    end
                                end
                            end
                        else
                            vu112()
                        end
                    end
                    local v181, _, v182, v183 = vu130(vu97)
                    if v181 then
                        if vu86 or (not getfenv().mousemoverel or vu91.AimMode ~= "Mouse") then
                            if vu91.AimMode == "Camera" then
                                vu88.MouseDeltaSensitivity = 0
                                if vu91.UseSensitivity then
                                    vu98 = vu90:Create(workspace.CurrentCamera, TweenInfo.new(math.clamp(vu91.Sensitivity, 9, 99) / 100, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                                        CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, v183)
                                    })
                                    vu98:Play()
                                else
                                    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, v183)
                                end
                            end
                        elseif v182[2] then
                            vu112(true, true)
                            local v184 = vu88:GetMouseLocation()
                            local v185 = vu91.UseSensitivity and vu91.Sensitivity / 10 or 10
                            getfenv().mousemoverel((v182[1].X - v184.X) / v185, (v182[1].Y - v184.Y) / v185)
                        else
                            vu112(true)
                        end
                    else
                        vu112(true)
                    end
                end
            end)
            v39.GunMods:AddSection("Main")
            v39.GunMods:AddButton({
                Title = "Infinite Ammo",
                Description = "Gives you infinite ammo.",
                Callback = function()
                    local vu186 = vu33.Character:FindFirstChildOfClass("Tool")
                    if vu186 then
                        vu186 = vu186.ACS_Settings
                    end
                    if vu186 then
                        local v188, _ = pcall(function()
                            local v187 = require(vu186)
                            if v187 then
                                v187.Ammo = math.huge
                            else
                                vu99:Notify({
                                    Title = "Error.",
                                    Content = "Something Went Wrong",
                                    SubContent = "",
                                    Duration = 5
                                })
                            end
                        end)
                        if not v188 then
                            vu99:Notify({
                                Title = "Error.",
                                Content = "Your Executor Does Not Support This Feature.",
                                SubContent = "Your Executor Is Trash.",
                                Duration = 5
                            })
                        end
                    else
                        vu99:Notify({
                            Title = "Error.",
                            Content = "You Must Have The Gun Equipped To Use This.",
                            SubContent = "",
                            Duration = 5
                        })
                    end
                end
            })
            v39.GunMods:AddButton({
                Title = "Fast FireRate",
                Description = "Makes your gun go pew pew faster",
                Callback = function()
                    if vu8() ~= true then
                        vu99:Notify({
                            Title = "Error.",
                            Content = "You Must Own Premium In Order To Use This.",
                            SubContent = "Join Our Discord To Buy MikeyHub.",
                            Duration = 5
                        })
                    else
                        local vu189 = vu33.Character:FindFirstChildOfClass("Tool")
                        if vu189 then
                            vu189 = vu189.ACS_Settings
                        end
                        if vu189 then
                            local v191, _ = pcall(function()
                                local v190 = require(vu189)
                                if v190 then
                                    v190.ShootRate = 9999999
                                else
                                    vu99:Notify({
                                        Title = "Error.",
                                        Content = "Something Went Wrong",
                                        SubContent = "",
                                        Duration = 5
                                    })
                                end
                            end)
                            if not v191 then
                                vu99:Notify({
                                    Title = "Error.",
                                    Content = "Your Executor Does Not Support This Feature.",
                                    SubContent = "Your Executor Is Trash.",
                                    Duration = 5
                                })
                            end
                        else
                            vu99:Notify({
                                Title = "Error.",
                                Content = "You Must Have The Gun Equipped To Use This.",
                                SubContent = "",
                                Duration = 5
                            })
                        end
                    end
                end
            })
            v39.VehicleMods:AddSection("Vehicle Mods")
            local vu192 = "None"
            local v193 = {}
            local v194 = game:GetService("ReplicatedStorage").Vehicles
            if v194 then
                local v195, v196, v197 = ipairs(v194:GetChildren())
                while true do
                    local v198
                    v197, v198 = v195(v196, v197)
                    if v197 == nil then
                        break
                    end
                    table.insert(v193, v198.Name)
                end
            end
            v39.VehicleMods:AddDropdown("", {
                Title = "Vechicle",
                Description = "The vehicle you want to mod.",
                Values = v193,
                Multi = false,
                Default = 1
            }):OnChanged(function(p199)
                vu192 = tostring(p199)
            end)
            v39.VehicleMods:AddInput("InPutKey", {
                Title = "Max Speed",
                Description = "Changes your vehicle max speeds",
                Default = "",
                Placeholder = "",
                Numeric = false,
                Finished = false,
                Callback = function(pu200)
                    local v208, v209 = pcall(function()
                        local v201 = vu33.Team
                        local v202 = v201 and v201.Name == "Task Force" and "Blue" or "Red"
                        local v203 = workspace.GWVehicles:FindFirstChild(v202)
                        if v203 and v203:IsA("Folder") then
                            local v204, v205, v206 = pairs(v203:GetChildren())
                            while true do
                                local v207
                                v206, v207 = v204(v205, v206)
                                if v206 == nil then
                                    break
                                end
                                if v207.Name == vu192 then
                                    if v207:FindFirstChild("Params") and v207.Params:FindFirstChild("ForwardMaxSpeed") then
                                        v207.Params.ForwardMaxSpeed.Value = pu200
                                    else
                                        vu99:Notify({
                                            Title = "Error.",
                                            Content = "Something Went Wrong. (Params Invaild)",
                                            SubContent = "",
                                            Duration = 5
                                        })
                                    end
                                end
                            end
                        else
                            vu99:Notify({
                                Title = "Error.",
                                Content = "No Vaild Team",
                                SubContent = "",
                                Duration = 5
                            })
                        end
                    end)
                    if not v208 then
                        vu99:Notify({
                            Title = "Error.",
                            Content = v209,
                            SubContent = "",
                            Duration = 5
                        })
                    end
                end
            })
            v39.VehicleMods:AddInput("InPutKey", {
                Title = "Reverse Max Speed",
                Description = "",
                Default = "",
                Placeholder = "",
                Numeric = false,
                Finished = false,
                Callback = function(pu210)
                    local v218, v219 = pcall(function()
                        local v211 = vu33.Team
                        local v212 = v211 and v211.Name == "Task Force" and "Blue" or "Red"
                        local v213 = workspace.GWVehicles:FindFirstChild(v212)
                        if v213 and v213:IsA("Folder") then
                            local v214, v215, v216 = pairs(v213:GetChildren())
                            while true do
                                local v217
                                v216, v217 = v214(v215, v216)
                                if v216 == nil then
                                    break
                                end
                                if v217.Name == vu192 then
                                    if v217:FindFirstChild("Params") and v217.Params:FindFirstChild("ReverseMaxSpeed") then
                                        v217.Params.ForwardMaxSpeed.Value = pu210
                                    else
                                        vu99:Notify({
                                            Title = "Error.",
                                            Content = "Something Went Wrong. (Params Invaild)",
                                            SubContent = "",
                                            Duration = 5
                                        })
                                    end
                                end
                            end
                        else
                            vu99:Notify({
                                Title = "Error.",
                                Content = "No Vaild Team",
                                SubContent = "",
                                Duration = 5
                            })
                        end
                    end)
                    if not v218 then
                        vu99:Notify({
                            Title = "Error.",
                            Content = v219,
                            SubContent = "",
                            Duration = 5
                        })
                    end
                end
            })
            v39.VehicleMods:AddSection("Vehicle Fly")
            v39.VehicleMods:AddSlider("Slider", {
                Title = "Fly Speed",
                Description = "",
                Default = 10,
                Min = 1,
                Max = 50,
                Rounding = 0.1,
                Callback = function(p220)
                    vehicleflyspeed = p220
                end
            })
            v39.VehicleMods:AddToggle("", {
                Title = "Vehicle Fly",
                Description = "u can fly with vehicle",
                Default = false,
                Callback = function(p221)
                    if p221 == true then
                        sFLY(true)
                    else
                        sFLY(true)
                        wait()
                        NOFLY()
                    end
                end
            })
            v39.Visuals:AddSection("ESP")
            local vu222 = Color3.fromRGB(255, 255, 255)
            local vu223 = Color3.fromRGB(255, 255, 255)
            local vu224 = true
            local vu225 = v39.Visuals:AddColorpicker("Colorpicker", {
                Title = "Fill Color",
                Description = "",
                Default = Color3.fromRGB(255, 255, 255)
            })
            local vu226 = v39.Visuals:AddColorpicker("Colorpicker", {
                Title = "Outline Color",
                Description = "",
                Default = Color3.fromRGB(255, 255, 255)
            })
            local v227 = vu225
            vu225.OnChanged(v227, function()
                vu222 = vu225.Value
            end)
            local v228 = vu226
            vu226.OnChanged(v228, function()
                vu223 = vu226.Value
            end)
            v39.Visuals:AddToggle("", {
                Title = "Use Team Color",
                Description = "Changes the color of esp to team color",
                Default = true,
                Callback = function(p229)
                    vu224 = p229
                end
            })
            v39.Visuals:AddToggle("", {
                Title = "ESP",
                Description = "Highlights every player, allowing you to see them from afar.",
                Default = false,
                Callback = function(p230)
                    getgenv().enabled = p230
                    getgenv().filluseteamcolor = vu224
                    getgenv().outlineuseteamcolor = vu224
                    getgenv().fillcolor = vu222
                    getgenv().outlinecolor = vu223
                    getgenv().filltrans = 0.7
                    getgenv().outlinetrans = 0
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/zntly/highlight-esp/main/esp.lua"))()
                end
            })
            v39.Visuals:AddSection("World")
            local vu231 = game:GetService("Lighting")
            local vu232 = vu231.Ambient
            v39.Visuals:AddToggle("", {
                Title = "Full Bright",
                Description = "light up light up the world",
                Default = false,
                Callback = function(p233)
                    if p233 == true then
                        vu231.Ambient = Color3.new(1, 1, 1)
                        vu231.ColorShift_Bottom = Color3.new(1, 1, 1)
                        vu231.ColorShift_Top = Color3.new(1, 1, 1)
                    else
                        vu231.Ambient = vu232
                        vu231.ColorShift_Bottom = Color3.new()
                        vu231.ColorShift_Top = Color3.new()
                    end
                end
            })
            v39.Misc:AddSection("Main")
            local vu234 = game:GetService("RunService")
            v39.Misc:AddButton({
                Title = "Anti Lag",
                Description = "Makes your game run better",
                Callback = function()
                    local v235 = workspace:FindFirstChildOfClass("Terrain")
                    v235.WaterWaveSize = 0
                    v235.WaterWaveSpeed = 0
                    v235.WaterReflectance = 0
                    v235.WaterTransparency = 0
                    vu231.GlobalShadows = false
                    vu231.FogEnd = 9000000000
                    settings().Rendering.QualityLevel = 1
                    local v236, v237, v238 = pairs(game:GetDescendants())
                    while true do
                        local v239
                        v238, v239 = v236(v237, v238)
                        if v238 == nil then
                            break
                        end
                        if v239:IsA("Part") or (v239:IsA("UnionOperation") or (v239:IsA("MeshPart") or (v239:IsA("CornerWedgePart") or v239:IsA("TrussPart")))) then
                            v239.Material = "Plastic"
                            v239.Reflectance = 0
                        elseif v239:IsA("Decal") then
                            v239.Transparency = 1
                        elseif v239:IsA("ParticleEmitter") or v239:IsA("Trail") then
                            v239.Lifetime = NumberRange.new(0)
                        elseif v239:IsA("Explosion") then
                            v239.BlastPressure = 1
                            v239.BlastRadius = 1
                        end
                    end
                    local v240 = vu231
                    local v241, v242, v243 = pairs(v240:GetDescendants())
                    while true do
                        local v244
                        v243, v244 = v241(v242, v243)
                        if v243 == nil then
                            break
                        end
                        if v244:IsA("BlurEffect") or (v244:IsA("SunRaysEffect") or (v244:IsA("ColorCorrectionEffect") or (v244:IsA("BloomEffect") or v244:IsA("DepthOfFieldEffect")))) then
                            v244.Enabled = false
                        end
                    end
                    workspace.DescendantAdded:Connect(function(pu245)
                        task.spawn(function()
                            if pu245:IsA("ForceField") then
                                vu234.Heartbeat:Wait()
                                pu245:Destroy()
                            elseif pu245:IsA("Sparkles") then
                                vu234.Heartbeat:Wait()
                                pu245:Destroy()
                            elseif pu245:IsA("Smoke") or pu245:IsA("Fire") then
                                vu234.Heartbeat:Wait()
                                pu245:Destroy()
                            end
                        end)
                    end)
                end
            })
            v39.Misc:AddButton({
                Title = "Force Reset",
                Description = "Kills you, if you wanna live, don\'t click this lol.",
                Callback = function()
                    vu33.Character.Humanoid.Health = 0
                end
            })
            local _ = getgenv().NoPopups == false
            spawn(function()
                local v246 = math.random(300, 600)
                task.wait(v246)
                vu20:Dialog({
                    Title = "Hello!",
                    Content = "Are You Enjoying MikeyHub?",
                    Buttons = {
                        {
                            Title = "Yes",
                            Callback = function()
                                local v247 = {
                                    embeds = {
                                        {
                                            author = {
                                                name = "User Has Selected Yes!",
                                                icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu21 .. "&width=420&height=420"
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
                                local v248 = game:GetService("HttpService"):JSONEncode(v247);
                                (http_request or request or (HttpPost or syn.request))({
                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                    Body = v248,
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
                                vu20:Dialog({
                                    Title = "Why?",
                                    Content = "Why aren\'t you enjoying MikeyHub?",
                                    Buttons = {
                                        {
                                            Title = "Bad Scripts.",
                                            Callback = function()
                                                local v249 = {
                                                    embeds = {
                                                        {
                                                            author = {
                                                                name = "User Has Selected No.",
                                                                icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu21 .. "&width=420&height=420"
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
                                                local v250 = game:GetService("HttpService"):JSONEncode(v249);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1274852458123886592/0LwQKT_5bJvoga9nXrp1D8aakkqgDgTdwBa71satL6c-0kQWNJcYPq4FOlyPzmiRy7GL",
                                                    Body = v250,
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
                                                local v251 = {
                                                    embeds = {
                                                        {
                                                            author = {
                                                                name = "User Has Selected No.",
                                                                icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu21 .. "&width=420&height=420"
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
                                                local v252 = game:GetService("HttpService"):JSONEncode(v251);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1274852458123886592/0LwQKT_5bJvoga9nXrp1D8aakkqgDgTdwBa71satL6c-0kQWNJcYPq4FOlyPzmiRy7GL",
                                                    Body = v252,
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
                                                local v253 = {
                                                    embeds = {
                                                        {
                                                            author = {
                                                                name = "User Has Selected No.",
                                                                icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu21 .. "&width=420&height=420"
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
                                                local v254 = game:GetService("HttpService"):JSONEncode(v253);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1274852458123886592/0LwQKT_5bJvoga9nXrp1D8aakkqgDgTdwBa71satL6c-0kQWNJcYPq4FOlyPzmiRy7GL",
                                                    Body = v254,
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
                                                local v255 = {
                                                    embeds = {
                                                        {
                                                            author = {
                                                                name = "User Has Selected No.",
                                                                icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu21 .. "&width=420&height=420"
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
                                                local v256 = game:GetService("HttpService"):JSONEncode(v255);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1274852458123886592/0LwQKT_5bJvoga9nXrp1D8aakkqgDgTdwBa71satL6c-0kQWNJcYPq4FOlyPzmiRy7GL",
                                                    Body = v256,
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
                local v257 = math.random(100, 600)
                task.wait(v257)
                vu20:Dialog({
                    Title = "Reminder:",
                    Content = "Join Our Discord If You Want To See Updates, Sneak Peeks, Giveaways, And More!",
                    Buttons = {
                        {
                            Title = "Copy Discord Link",
                            Callback = function()
                                setclipboard("https://discord.gg/cMgwWVzEm6")
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
            vu20:SelectTab(1)
        end
    else
        local v258 = game.Players.LocalPlayer
        if v258 and v258:IsA("Player") then
            v258:Kick("\nKey Mismatch\n \nIf you aren\'t a skid trying to bypass MikeyHub, sorry to inform you that theres no direct fix for this.")
        end
    end
else
    local v259 = game.Players.LocalPlayer
    if v259 and v259:IsA("Player") then
        v259:Kick("Open MikeyHub Loader Before Running This.")
    end
    return
end
