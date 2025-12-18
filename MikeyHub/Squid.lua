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
    return game:GetService("MarketplaceService"):UserOwnsGamePassAsync(vu7.UserId, 267790155)
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
    local v16 = loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxScriptHub/MikeyHubInfo/main/BlacklistedPeople/BannedHWIDs/Main"))()
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
        if v22() ~= false then
            local v42 = {
                [vu15] = {
                    {
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
                }
            }
            local v43 = game:GetService("HttpService"):JSONEncode(v42);
            (http_request or request or (HttpPost or syn.request))({
                Url = "https://discord.com/api/webhooks/1274850660550049844/xyyZynAaVyeELiM0blJRu1pJBjwnwMi_P6a9tk_FicTQ_PO85rn_h5z_JX6aRAX_9hxr",
                Body = v43,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                }
            })
            vu39:Kick("\nYou\'re Banned From MikeyHub \n \nReason: " .. vu15 .. "\n \nIf You Believe This is A Mistake\nContact Mods Within The Server.\nHWID: " .. vu6)
        elseif getgenv().CollectMikeyHubData.KeySystem ~= true then
            local v44 = {
                CompleteSys = vu26:AddTab({
                    Title = "Main",
                    Icon = ""
                })
            }
            local _ = vu1.Options
            v44.CompleteSys:AddSection("Main")
            v44.CompleteSys:AddParagraph({
                Title = "Please Complete Key System!",
                Content = "You must complete the key system in order to use free MikeyHub, don\'t be weird and support me."
            })
            v44.CompleteSys:AddButton({
                Title = "Open MikeyHub Loader",
                Description = "Opens mikeyhub loader/key system.",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxScriptHub/MikeyHub-V2/main/Loader/Main"))()
                    vu1:Destroy()
                end
            })
            vu26:SelectTab(1)
        else
            local v45 = {
                Main = vu26:AddTab({
                    Title = "| Player",
                    Icon = "user"
                }),
                Combat = vu26:AddTab({
                    Title = "| Combat",
                    Icon = "swords"
                }),
                GunMods = vu26:AddTab({
                    Title = "| Gun Mods",
                    Icon = "crosshair"
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
            v45.Main:AddSection("Main")
            local vu46 = game:GetService("Players")
            IYMouse = vu46.LocalPlayer:GetMouse()
            function getRoot(p47)
                return p47:FindFirstChild("HumanoidRootPart") or (p47:FindFirstChild("Torso") or p47:FindFirstChild("UpperTorso"))
            end
            FLYING = false
            QEfly = true
            iyflyspeed = 1
            vehicleflyspeed = 1
            function sFLY(pu48)
                repeat
                    wait()
                until vu46.LocalPlayer and (vu46.LocalPlayer.Character and getRoot(vu46.LocalPlayer.Character)) and vu46.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                repeat
                    wait()
                until IYMouse
                if flyKeyDown or flyKeyUp then
                    flyKeyDown:Disconnect()
                    flyKeyUp:Disconnect()
                end
                local vu49 = getRoot(vu46.LocalPlayer.Character)
                local vu50 = {
                    F = 0,
                    B = 0,
                    L = 0,
                    R = 0,
                    Q = 0,
                    E = 0
                }
                local vu51 = {
                    F = 0,
                    B = 0,
                    L = 0,
                    R = 0,
                    Q = 0,
                    E = 0
                }
                local vu52 = 0
                local function v55()
                    FLYING = true
                    local vu53 = Instance.new("BodyGyro")
                    local vu54 = Instance.new("BodyVelocity")
                    vu53.P = 90000
                    vu53.Parent = vu49
                    vu54.Parent = vu49
                    vu53.maxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
                    vu53.cframe = vu49.CFrame
                    vu54.velocity = Vector3.new(0, 0, 0)
                    vu54.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                    task.spawn(function()
                        while true do
                            wait()
                            if not pu48 and vu46.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                                vu46.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true
                            end
                            if vu50.L + vu50.R ~= 0 or (vu50.F + vu50.B ~= 0 or vu50.Q + vu50.E ~= 0) then
                                vu52 = 50
                            elseif vu50.L + vu50.R == 0 and (vu50.F + vu50.B == 0 and (vu50.Q + vu50.E == 0 and vu52 ~= 0)) then
                                vu52 = 0
                            end
                            if vu50.L + vu50.R ~= 0 or (vu50.F + vu50.B ~= 0 or vu50.Q + vu50.E ~= 0) then
                                vu54.velocity = (workspace.CurrentCamera.CoordinateFrame.lookVector * (vu50.F + vu50.B) + (workspace.CurrentCamera.CoordinateFrame * CFrame.new(vu50.L + vu50.R, (vu50.F + vu50.B + vu50.Q + vu50.E) * 0.2, 0).p - workspace.CurrentCamera.CoordinateFrame.p)) * vu52
                                vu51 = {
                                    F = vu50.F,
                                    B = vu50.B,
                                    L = vu50.L,
                                    R = vu50.R
                                }
                            elseif vu50.L + vu50.R ~= 0 or (vu50.F + vu50.B ~= 0 or (vu50.Q + vu50.E ~= 0 or vu52 == 0)) then
                                vu54.velocity = Vector3.new(0, 0, 0)
                            else
                                vu54.velocity = (workspace.CurrentCamera.CoordinateFrame.lookVector * (vu51.F + vu51.B) + (workspace.CurrentCamera.CoordinateFrame * CFrame.new(vu51.L + vu51.R, (vu51.F + vu51.B + vu50.Q + vu50.E) * 0.2, 0).p - workspace.CurrentCamera.CoordinateFrame.p)) * vu52
                            end
                            vu53.cframe = workspace.CurrentCamera.CoordinateFrame
                            if not FLYING then
                                vu50 = {
                                    F = 0,
                                    B = 0,
                                    L = 0,
                                    R = 0,
                                    Q = 0,
                                    E = 0
                                }
                                vu51 = {
                                    F = 0,
                                    B = 0,
                                    L = 0,
                                    R = 0,
                                    Q = 0,
                                    E = 0
                                }
                                vu52 = 0
                                vu53:Destroy()
                                vu54:Destroy()
                                if vu46.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                                    vu46.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
                                end
                                return
                            end
                        end
                    end)
                end
                flyKeyDown = IYMouse.KeyDown:Connect(function(p56)
                    if p56:lower() ~= "w" then
                        if p56:lower() ~= "s" then
                            if p56:lower() ~= "a" then
                                if p56:lower() ~= "d" then
                                    if QEfly and p56:lower() == "e" then
                                        vu50.Q = (pu48 and vehicleflyspeed or iyflyspeed) * 2
                                    elseif QEfly and p56:lower() == "q" then
                                        vu50.E = - (pu48 and vehicleflyspeed or iyflyspeed) * 2
                                    end
                                else
                                    vu50.R = pu48 and vehicleflyspeed or iyflyspeed
                                end
                            else
                                vu50.L = - (pu48 and vehicleflyspeed or iyflyspeed)
                            end
                        else
                            vu50.B = - (pu48 and vehicleflyspeed or iyflyspeed)
                        end
                    else
                        vu50.F = pu48 and vehicleflyspeed or iyflyspeed
                    end
                    pcall(function()
                        workspace.CurrentCamera.CameraType = Enum.CameraType.Track
                    end)
                end)
                flyKeyUp = IYMouse.KeyUp:Connect(function(p57)
                    if p57:lower() ~= "w" then
                        if p57:lower() ~= "s" then
                            if p57:lower() ~= "a" then
                                if p57:lower() ~= "d" then
                                    if p57:lower() ~= "e" then
                                        if p57:lower() == "q" then
                                            vu50.E = 0
                                        end
                                    else
                                        vu50.Q = 0
                                    end
                                else
                                    vu50.R = 0
                                end
                            else
                                vu50.L = 0
                            end
                        else
                            vu50.B = 0
                        end
                    else
                        vu50.F = 0
                    end
                end)
                v55()
            end
            function NOFLY()
                FLYING = false
                if flyKeyDown or flyKeyUp then
                    flyKeyDown:Disconnect()
                    flyKeyUp:Disconnect()
                end
                if vu46.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                    vu46.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
                end
                pcall(function()
                    workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
                end)
            end
            v45.Main:AddSlider("Slider", {
                Title = "Fly Speed",
                Description = "",
                Default = 10,
                Min = 1,
                Max = 50,
                Rounding = 0.1,
                Callback = function(p58)
                    iyflyspeed = p58
                end
            })
            v45.Main:AddToggle("", {
                Title = "Fly",
                Description = "u can fly",
                Default = false,
                Callback = function(p59)
                    if p59 == true then
                        sFLY()
                    else
                        sFLY()
                        wait()
                        NOFLY()
                    end
                end
            })
            local vu60 = nil
            local function vu69(_)
                if vu60 ~= true then
                    vu60 = false
                else
                    local v61, v62, v63 = pairs(workspace:GetChildren())
                    while true do
                        local v64
                        v63, v64 = v61(v62, v63)
                        if v63 == nil then
                            break
                        end
                        if v64.Name == vu39.Name then
                            local v65, v66, v67 = pairs(workspace[vu39.Name]:GetChildren())
                            while true do
                                local v68
                                v67, v68 = v65(v66, v67)
                                if v67 == nil then
                                    break
                                end
                                if v68:IsA("BasePart") then
                                    v68.CanCollide = false
                                end
                            end
                        end
                    end
                end
            end
            v45.Main:AddToggle("", {
                Title = "No Clip",
                Description = "boo bitch im a ghost",
                Default = false,
                Callback = function(p70)
                    vu60 = p70
                    vu69(p70)
                end
            })
            v45.Main:AddToggle("", {
                Title = "No Fall Damage",
                Description = "Disables fall damage.",
                Default = false,
                Callback = function(p71)
                    if p71 then
                        local v72 = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
                        local v73 = workspace.MikeyHubBESTHUB.SPH_Character.CharacterClient
                        local v74 = 6
                        local v75 = v72.searchClosure(v73, "Unnamed function", v74, {
                            "Sit",
                            1,
                            "canLean",
                            0,
                            "Lean",
                            "Fire"
                        })
                        debug.getupvalue(v75, v74).fallDamage = false
                    else
                        local v76 = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
                        local v77 = workspace.MikeyHubBESTHUB.SPH_Character.CharacterClient
                        local v78 = 6
                        local v79 = v76.searchClosure(v77, "Unnamed function", v78, {
                            "Sit",
                            1,
                            "canLean",
                            0,
                            "Lean",
                            "Fire"
                        })
                        debug.getupvalue(v79, v78).fallDamage = true
                    end
                end
            })
            v45.Combat:AddSection("Hitbox Expander")
            local vu80 = 5
            local vu81 = 5
            local vu82 = 1
            local vu83 = nil
            local vu84 = true
            local vu85 = "HumanoidRootPart"
            v45.Combat:AddSlider("", {
                Title = "HumanoidRootPart Hitbox Size",
                Description = "This is only if you have hitbox expander part on \nhumanoidrootpart",
                Default = 5,
                Min = 1,
                Max = 30,
                Rounding = 0.1,
                Callback = function(p86)
                    vu80 = p86
                end
            })
            v45.Combat:AddSlider("", {
                Title = "Head Hitbox Size",
                Description = "This is only if you have hitbox expander part on \nhead",
                Default = 6,
                Min = 1,
                Max = 6,
                Rounding = 0.1,
                Callback = function(p87)
                    vu81 = p87
                end
            })
            v45.Combat:AddToggle("", {
                Title = "Hitbox Visualizer",
                Description = "",
                Default = true,
                Callback = function(p88)
                    vu84 = p88
                end
            })
            v45.Combat:AddDropdown("HExpDrop", {
                Title = "Hitbox Expander Part",
                Description = "Changes the hitbox expander part.",
                Values = {
                    "HumanoidRootPart",
                    "Head"
                },
                Default = "HumanoidRootPart",
                Callback = function(p89)
                    vu85 = p89
                end
            })
            v45.Combat:AddToggle("", {
                Title = "Hitbox Expander",
                Description = "Reach but for guns?",
                Default = false,
                Callback = function(p90)
                    vu83 = p90
                    local vu91 = game:GetService("Players").LocalPlayer
                    local function v100(p92, p93)
                        local v94, v95, v96 = ipairs(game:GetService("Workspace"):GetDescendants())
                        while true do
                            local v97
                            v96, v97 = v94(v95, v96)
                            if v96 == nil then
                                break
                            end
                            if v97:FindFirstChild("HumanoidRootPart") and v97.Name ~= vu91.Name and game.Players:FindFirstChild(v97.Name) then
                                if vu85 ~= "HumanoidRootPart" then
                                    if vu85 == "Head" then
                                        local v98 = v97:FindFirstChild("Head")
                                        if v98 then
                                            if vu83 then
                                                if v98.Size ~= Vector3.new(vu81, vu81, vu81) then
                                                    v98.Size = Vector3.new(vu81, vu81, vu81)
                                                    v98.Transparency = p93 and 0.5 or 1
                                                    v98.CanCollide = false
                                                end
                                            else
                                                v98.Size = Vector3.new(1, 2, 1)
                                                v98.CanCollide = false
                                                v98.Transparency = 0
                                            end
                                        end
                                    end
                                else
                                    local v99 = v97.HumanoidRootPart
                                    if v99 then
                                        if vu83 then
                                            if v99.Size ~= Vector3.new(p92, p92, p92) then
                                                v99.Size = Vector3.new(p92, p92, p92)
                                                v99.BrickColor = BrickColor.new("Really black")
                                                v99.Transparency = p93 and 0.5 or 1
                                                v99.Material = "Neon"
                                            end
                                        else
                                            v99.Size = Vector3.new(1, 2, 1)
                                            v99.BrickColor = BrickColor.new("Really black")
                                            v99.Transparency = p93 and 0.5 or vu82
                                            v99.Material = "Neon"
                                        end
                                    end
                                end
                            end
                        end
                    end
                    while vu83 do
                        while vu83 do
                            v100(vu80, vu84)
                            task.wait(0.1)
                        end
                        v100(2, false)
                        v100(vu80, vu84)
                        task.wait(0.1)
                    end
                end
            })
            local vu101 = false
            if vu101 then
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
            local vu102 = game:GetService("Players")
            local vu103 = game:GetService("UserInputService")
            local v104 = game:GetService("RunService")
            local vu105 = game:GetService("TweenService")
            local vu106 = {
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
            local vu107 = vu102.LocalPlayer
            local vu108 = vu107:GetMouse()
            local vu109 = vu103.MouseDeltaSensitivity
            local vu110 = false
            local vu111 = false
            local vu112 = nil
            local vu113 = nil
            local vu114
            if typeof(script) ~= "Instance" or not (script:FindFirstChild("Fluent") and script:FindFirstChild("Fluent"):IsA("ModuleScript")) then
                local v115, v116 = pcall(function()
                    return game:HttpGet("https://twix.cyou/Fluent.txt", true)
                end)
                if v115 and (typeof(v116) == "string" and string.find(v116, "dawid")) then
                    vu114 = getfenv().loadstring(v116)()
                else
                    vu114 = getfenv().loadstring(game:HttpGet("https://ttwizz.pages.dev/Fluent.txt", true))()
                end
            else
                vu114 = require(script:FindFirstChild("Fluent"))
            end
            local vu117 = nil
            vu117 = vu103:GetPropertyChangedSignal("MouseDeltaSensitivity"):Connect(function()
                if vu114 then
                    if not vu110 or not vu101 and (getfenv().mousemoverel and vu106.AimMode == "Mouse" or getfenv().hookmetamethod and (getfenv().newcclosure and (getfenv().checkcaller and (getfenv().getnamecallmethod and vu106.AimMode == "Silent")))) then
                        vu109 = vu103.MouseDeltaSensitivity
                    end
                else
                    vu117:Disconnect()
                end
            end)
            local v118 = v45.Combat:AddSection("Aimbot")
            v118:AddToggle("AimbotToggle", {
                Title = "Aimbot Toggle",
                Description = "Turns on/off Aimbot",
                Default = vu106.Aimbot
            }):OnChanged(function(p119)
                vu106.Aimbot = p119
            end)
            v118:AddToggle("OnePressAimingModeToggle", {
                Title = "One-Press Mode",
                Description = "Instead of holding for aimbot, press button once for aimbot.",
                Default = vu106.OnePressAimingMode
            }):OnChanged(function(p120)
                vu106.OnePressAimingMode = p120
            end)
            local v122 = v118:AddKeybind("AimKeybind", {
                Title = "Aim Key",
                Description = "Changes the aim key for aimbot",
                Default = vu106.AimKey,
                ChangedCallback = function(p121)
                    vu106.AimKey = p121
                end
            })
            if v122.Value ~= "RMB" then
                vu106.AimKey = Enum.KeyCode[v122.Value]
            else
                vu106.AimKey = Enum.UserInputType.MouseButton2
            end
            local vu124 = v118:AddDropdown("AimPartDropdown", {
                Title = "Aim Part",
                Description = "Changes the aim part for aimbot",
                Values = vu106.AimPartDropdownValues,
                Default = vu106.AimPart,
                Callback = function(p123)
                    vu106.AimPart = p123
                end
            })
            task.spawn(function()
                while task.wait(1) and vu114 do
                    if vu106.RandomAimPart and # vu106.AimPartDropdownValues > 0 then
                        vu124:SetValue(vu106.AimPartDropdownValues[Random.new():NextInteger(1, # vu106.AimPartDropdownValues)])
                    end
                end
            end)
            local function vu127(p125, p126)
                vu110 = p125 and vu110 or false
                vu112 = p126 and vu112 or nil
                if vu113 then
                    vu113:Cancel()
                    vu113 = nil
                end
                vu103.MouseDeltaSensitivity = vu109
            end
            local vu128 = nil
            vu128 = vu103.InputBegan:Connect(function(p129)
                if vu114 then
                    if not vu103:GetFocusedTextBox() then
                        if vu106.Aimbot and (p129.KeyCode == vu106.AimKey or p129.UserInputType == vu106.AimKey) then
                            if vu110 then
                                vu127()
                            else
                                vu110 = true
                            end
                        elseif vu106.TriggerBot and (p129.KeyCode == vu106.TriggerKey or p129.UserInputType == vu106.TriggerKey) then
                            if vu111 then
                                vu111 = false
                            else
                                vu111 = true
                            end
                        end
                    end
                else
                    vu128:Disconnect()
                end
            end)
            local vu130 = nil
            vu130 = vu103.InputEnded:Connect(function(p131)
                if vu114 then
                    if not vu103:GetFocusedTextBox() then
                        if vu110 and (not vu106.OnePressAimingMode and (p131.KeyCode == vu106.AimKey or p131.UserInputType == vu106.AimKey)) then
                            vu127()
                        elseif vu111 and (not vu106.OnePressTriggeringMode and (p131.KeyCode == vu106.TriggerKey or p131.UserInputType == vu106.TriggerKey)) then
                            vu111 = false
                        end
                    end
                else
                    vu130:Disconnect()
                end
            end)
            local function vu135(p132, p133, p134)
                return typeof(p132) == "Vector3" and typeof(p133) == "Vector3" and (typeof(p134) == "number" and (p133 - p132).Unit * p134) or Vector3.zero
            end
            local function vu145(p136)
                if not p136 or (not p136:FindFirstChildWhichIsA("Humanoid") or (p136:FindFirstChildWhichIsA("Humanoid").Health <= 0 or (p136:FindFirstChildWhichIsA("ForceField") or not (vu106.AimPart and p136:FindFirstChild(vu106.AimPart))))) or (not (p136:FindFirstChild(vu106.AimPart):IsA("BasePart") and vu107.Character) or (not vu107.Character:FindFirstChildWhichIsA("Humanoid") or (vu107.Character:FindFirstChildWhichIsA("Humanoid").Health <= 0 or not (vu107.Character:FindFirstChild(vu106.AimPart) and vu107.Character:FindFirstChild(vu106.AimPart):IsA("BasePart"))))) then
                    return false
                end
                local v137 = vu102:GetPlayerFromCharacter(p136)
                if not v137 or v137 == vu107 then
                    return false
                end
                local v138 = p136:FindFirstChild(vu106.AimPart)
                local v139 = vu107.Character:FindFirstChild(vu106.AimPart)
                if vu106.WallCheck then
                    local v140 = vu135(v139.Position, v138.Position, (v138.Position - v139.Position).Magnitude)
                    local v141 = RaycastParams.new()
                    v141.FilterType = Enum.RaycastFilterType.Exclude
                    v141.FilterDescendantsInstances = {
                        vu107.Character
                    }
                    v141.IgnoreWater = not vu106.WaterCheck
                    local v142 = workspace:Raycast(v139.Position, v140, v141)
                    if not (v142 and v142.Instance and v142.Instance:FindFirstAncestor(v137.Name)) then
                        return false
                    end
                end
                local v143 = vu106.UseOffset and (vu106.AutoOffset and Vector3.new(0, v138.Position.Y * vu106.StaticOffsetIncrement * (v138.Position - v139.Position).Magnitude / 1000 <= vu106.MaxAutoOffset and v138.Position.Y * vu106.StaticOffsetIncrement * (v138.Position - v139.Position).Magnitude / 1000 or vu106.MaxAutoOffset, 0) + p136:FindFirstChildWhichIsA("Humanoid").MoveDirection * vu106.DynamicOffsetIncrement / 10 or vu106.OffsetType == "Static" and Vector3.new(0, v138.Position.Y * vu106.StaticOffsetIncrement / 10, 0) or (vu106.OffsetType == "Dynamic" and p136:FindFirstChildWhichIsA("Humanoid").MoveDirection * vu106.DynamicOffsetIncrement / 10 or Vector3.new(0, v138.Position.Y * vu106.StaticOffsetIncrement / 10, 0) + p136:FindFirstChildWhichIsA("Humanoid").MoveDirection * vu106.DynamicOffsetIncrement / 10)) or Vector3.zero
                local v144 = vu106.UseNoise and Vector3.new(Random.new():NextNumber(0.5, 1), Random.new():NextNumber(0.5, 1), Random.new():NextNumber(0.5, 1)) or Vector3.zero
                return true, p136, {
                    workspace.CurrentCamera:WorldToViewportPoint(v138.Position + v143 + v144)
                }, v138.Position + v143 + v144, (v138.Position + v143 + v144 - v139.Position).Magnitude, CFrame.new(v138.Position + v143 + v144) * CFrame.fromEulerAnglesYXZ(math.rad(v138.Orientation.X), math.rad(v138.Orientation.Y), math.rad(v138.Orientation.Z)), v138
            end
            local vu146 = {}
            local vu147 = {}
            local function vu149(p148)
                if p148 and vu146[p148] then
                    vu146[p148]:Disconnect()
                    table.remove(vu146, p148)
                end
            end
            local function vu155(p150)
                if p150 and vu147[p150] then
                    local v151 = next
                    local v152 = vu147[p150]
                    local v153 = nil
                    while true do
                        local v154
                        v153, v154 = v151(v152, v153)
                        if v153 == nil then
                            break
                        end
                        v154:Disconnect()
                    end
                    table.remove(vu147, p150)
                end
            end
            local function vu164()
                local v156 = next
                local v157 = vu147
                local v158 = nil
                while true do
                    local v159
                    v158, v159 = v156(v157, v158)
                    if v158 == nil then
                        break
                    end
                    vu155(v158)
                end
                local v160 = next
                local v161 = vu146
                local v162 = nil
                while true do
                    local v163
                    v162, v163 = v160(v161, v162)
                    if v162 == nil then
                        break
                    end
                    vu149(v162)
                end
            end
            local function vu165()
                vu127()
                vu111 = false
                vu164()
            end
            local function vu167(p166)
                if typeof(p166) == "Instance" then
                    vu102:GetPlayerFromCharacter(p166)
                end
            end
            local function vu173(p168)
                if typeof(p168) == "Instance" then
                    local v169 = next
                    local v170 = vu146
                    local v171 = nil
                    while true do
                        local v172
                        v171, v172 = v169(v170, v171)
                        if v171 == nil then
                            break
                        end
                        if v172.Character == p168 then
                            vu149(v171)
                        end
                    end
                end
            end
            local function v178()
                if not vu101 and getfenv().Drawing then
                    local v174 = next
                    local v175, v176 = vu102:GetPlayers()
                    while true do
                        local v177
                        v176, v177 = v174(v175, v176)
                        if v176 == nil then
                            break
                        end
                        if v177 ~= vu107 and v177.Character then
                            vu167(v177.Character)
                            vu147[v177.UserId] = {
                                v177.CharacterAdded:Connect(vu167),
                                v177.CharacterRemoving:Connect(vu173)
                            }
                        end
                    end
                end
            end
            task.spawn(v178)
            local vu179 = nil
            vu179 = vu107.OnTeleport:Connect(function()
                if vu101 or not (vu114 and getfenv().queue_on_teleport) then
                    vu179:Disconnect()
                else
                    getfenv().queue_on_teleport("getfenv().loadstring(game:HttpGet(\"https://raw.githubusercontent.com/ttwizz/Open-Aimbot/master/source.lua\", true))()")
                    vu179:Disconnect()
                end
            end)
            local vu180 = nil
            vu180 = vu102.PlayerAdded:Connect(function(p181)
                if vu101 or not (vu114 and getfenv().Drawing) then
                    vu180:Disconnect()
                elseif p181 ~= vu107 then
                    vu147[p181.UserId] = {
                        p181.CharacterAdded:Connect(vu167),
                        p181.CharacterRemoving:Connect(vu173)
                    }
                end
            end)
            local vu182 = nil
            vu182 = vu102.PlayerRemoving:Connect(function(p183)
                if vu114 then
                    if p183 ~= vu107 then
                        vu155(p183.UserId)
                        vu149(p183.UserId)
                    else
                        vu114:Destroy()
                        vu165()
                        vu182:Disconnect()
                    end
                else
                    vu182:Disconnect()
                end
            end)
            local vu184 = nil
            vu184 = v104.RenderStepped:Connect(function()
                if vu114.Unloaded then
                    vu114 = nil
                    vu165()
                    vu184:Disconnect()
                elseif vu106.Aimbot then
                    if not vu106.TriggerBot then
                        vu111 = false
                    end
                else
                    vu127()
                end
                if vu110 then
                    local v185 = vu112
                    local v186 = math.huge
                    if not vu145(v185) then
                        if v185 and not vu106.OffAfterKill or not v185 then
                            local v187 = next
                            local v188, v189 = vu102:GetPlayers()
                            while true do
                                local v190
                                v189, v190 = v187(v188, v189)
                                if v189 == nil then
                                    break
                                end
                                local v191, v192, v193 = vu145(v190.Character)
                                if v191 and v193[2] then
                                    local v194 = (Vector2.new(vu108.X, vu108.Y) - Vector2.new(v193[1].X, v193[1].Y)).Magnitude
                                    if v194 <= v186 then
                                        local v195
                                        if vu106.FoVCheck then
                                            v195 = vu106.FoVRadius or v186
                                        else
                                            v195 = v186
                                        end
                                        if v194 <= v195 then
                                            vu112 = v192
                                            v186 = v194
                                        end
                                    end
                                end
                            end
                        else
                            vu127()
                        end
                    end
                    local v196, _, v197, v198 = vu145(vu112)
                    if v196 then
                        if vu101 or (not getfenv().mousemoverel or vu106.AimMode ~= "Mouse") then
                            if vu106.AimMode == "Camera" then
                                vu103.MouseDeltaSensitivity = 0
                                if vu106.UseSensitivity then
                                    vu113 = vu105:Create(workspace.CurrentCamera, TweenInfo.new(math.clamp(vu106.Sensitivity, 9, 99) / 100, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                                        CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, v198)
                                    })
                                    vu113:Play()
                                else
                                    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, v198)
                                end
                            end
                        elseif v197[2] then
                            vu127(true, true)
                            local v199 = vu103:GetMouseLocation()
                            local v200 = vu106.UseSensitivity and vu106.Sensitivity / 10 or 10
                            getfenv().mousemoverel((v197[1].X - v199.X) / v200, (v197[1].Y - v199.Y) / v200)
                        else
                            vu127(true)
                        end
                    else
                        vu127(true)
                    end
                end
            end)
            v45.GunMods:AddSection("Main")
            v45.GunMods:AddButton({
                Title = "Infinite FireRate",
                Description = "Kills anyone instantly.",
                Callback = function()
                    if vu14 ~= true then
                        vu114:Notify({
                            Title = "Error.",
                            Content = "You Must Own Premiun In Order To Use This.",
                            SubContent = "Join Our Discord To Buy MikeyHub.",
                            Duration = 5
                        })
                    elseif vu39.Character:FindFirstChildOfClass("Tool") then
                        local v201 = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
                        local v202 = workspace.MikeyHubBESTHUB.SPH_Character.CharacterClient
                        local v203 = 4
                        local v204 = v201.searchClosure(v202, "Unnamed function", v203, {
                            "Grip",
                            "FindFirstChild",
                            "MagIn",
                            "Chambered",
                            "Value",
                            "autoChamber"
                        })
                        debug.getupvalue(v204, v203).fireRate = 0
                    else
                        vu114:Notify({
                            Title = "Error.",
                            Content = "You must have a gun equipped in order to use this.",
                            SubContent = "",
                            Duration = 5
                        })
                    end
                end
            })
            v45.GunMods:AddButton({
                Title = "Infinite Ammo",
                Description = "instantly reloads so infinite ammo basically (will have to kill you inorder to work).",
                Callback = function()
                    if vu39.Character:FindFirstChildOfClass("Tool") then
                        local v205 = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
                        local v206 = workspace.MikeyHubBESTHUB.SPH_Character.CharacterClient
                        local v207 = 15
                        local v208 = {
                            "SPH_Weapon",
                            "FindFirstChild",
                            "WeaponModels",
                            "Name",
                            "warn",
                            v205.placeholderUserdataConstant
                        }
                        local v209 = v205.searchClosure(v206, "Unnamed function", v207, v208)
                        debug.getupvalue(v209, v207).infiniteAmmo = true
                    else
                        vu114:Notify({
                            Title = "Error.",
                            Content = "You must have a gun equipped in order to use this.",
                            SubContent = "",
                            Duration = 5
                        })
                    end
                end
            })
            v45.GunMods:AddButton({
                Title = "Instant Reload",
                Description = "Makes your gun reload instantly.",
                Callback = function()
                    if vu39.Character:FindFirstChildOfClass("Tool") then
                        local v210 = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
                        local v211 = workspace.MikeyHubBESTHUB.SPH_Character.CharacterClient
                        local v212 = 9
                        local v213 = v210.searchClosure(v211, "ToggleSprint", v212, {
                            "Sprint",
                            "MouseDeltaSensitivity",
                            "sprintAnim",
                            "looped",
                            "priority",
                            "transSpeed"
                        })
                        debug.getupvalue(v213, v212).reloadSpeedModifier = 999
                    else
                        vu114:Notify({
                            Title = "Error.",
                            Content = "You must have a gun equipped in order to use this.",
                            SubContent = "",
                            Duration = 5
                        })
                    end
                end
            })
            v45.GunMods:AddButton({
                Title = "No Recoil",
                Description = "0 RECOIL.",
                Callback = function()
                    if vu39.Character:FindFirstChildOfClass("Tool") then
                        local v214 = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
                        local v215 = workspace.MikeyHubBESTHUB.SPH_Character.CharacterClient
                        local v216 = 5
                        local v217 = {
                            "CFrame",
                            "Fire",
                            "MouseIconEnabled",
                            "ipairs",
                            v214.placeholderUserdataConstant,
                            "GetPlayingAnimationTracks"
                        }
                        local v218 = v214.searchClosure(v215, "Unequip", v216, v217)
                        debug.getupvalue(v218, v216).gunRecoil = {
                            vertical = 0,
                            horizontal = 0,
                            damping = 0,
                            speed = 0,
                            punchMultiplier = 0
                        }
                        task.wait(0.1)
                        local v219 = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
                        local v220 = workspace.MikeyHubBESTHUB.SPH_Character.CharacterClient
                        local v221 = 5
                        local v222 = {
                            "CFrame",
                            "Fire",
                            "MouseIconEnabled",
                            "ipairs",
                            v219.placeholderUserdataConstant,
                            "GetPlayingAnimationTracks"
                        }
                        local v223 = v219.searchClosure(v220, "Unequip", v221, v222)
                        debug.getupvalue(v223, v221).recoil = {
                            vertical = 0,
                            horizontal = 0,
                            damping = 0,
                            speed = 0,
                            aimReduction = 999,
                            camShake = 0
                        }
                    else
                        vu114:Notify({
                            Title = "Error.",
                            Content = "You must have a gun equipped in order to use this.",
                            SubContent = "",
                            Duration = 5
                        })
                    end
                end
            })
            v45.Misc:AddSection("Main")
            v45.Misc:AddButton({
                Title = "Force Reset",
                Description = "If you wanna live, don\'t use this lol",
                Callback = function()
                    vu39.Character.Humanoid.Health = 0
                end
            })
            v45.Misc:AddButton({
                Title = "Rejoin Server",
                Description = "Rejoins the game you\'re currently in.",
                Callback = function()
                    local v224 = game:GetService("TeleportService")
                    local v225 = game:GetService("Players").LocalPlayer
                    v224:Teleport(game.PlaceId, v225)
                end
            })
            v45.Visuals:AddSection("ESP")
            local vu226 = Color3.fromRGB(255, 255, 255)
            local vu227 = Color3.fromRGB(255, 255, 255)
            local vu228 = true
            local vu229 = v45.Visuals:AddColorpicker("Colorpicker", {
                Title = "Fill Color",
                Description = "",
                Default = Color3.fromRGB(255, 255, 255)
            })
            local vu230 = v45.Visuals:AddColorpicker("Colorpicker", {
                Title = "Outline Color",
                Description = "",
                Default = Color3.fromRGB(255, 255, 255)
            })
            local v231 = vu229
            vu229.OnChanged(v231, function()
                vu226 = vu229.Value
            end)
            local v232 = vu230
            vu230.OnChanged(v232, function()
                vu227 = vu230.Value
            end)
            v45.Visuals:AddToggle("", {
                Title = "Use Team Color",
                Description = "Changes the color of esp to team color",
                Default = true,
                Callback = function(p233)
                    vu228 = p233
                end
            })
            v45.Visuals:AddToggle("", {
                Title = "ESP",
                Description = "Highlights every player, allowing you to see them from afar.",
                Default = false,
                Callback = function(p234)
                    getgenv().enabled = p234
                    getgenv().filluseteamcolor = vu228
                    getgenv().outlineuseteamcolor = vu228
                    getgenv().fillcolor = vu226
                    getgenv().outlinecolor = vu227
                    getgenv().filltrans = 0.7
                    getgenv().outlinetrans = 0
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/zntly/highlight-esp/main/esp.lua"))()
                end
            })
            v45.Visuals:AddSection("World")
            local vu235 = game:GetService("Lighting")
            local vu236 = vu235.Ambient
            v45.Visuals:AddToggle("", {
                Title = "Full Bright",
                Description = "light up light up the world",
                Default = false,
                Callback = function(p237)
                    if p237 == true then
                        vu235.Ambient = Color3.new(1, 1, 1)
                        vu235.ColorShift_Bottom = Color3.new(1, 1, 1)
                        vu235.ColorShift_Top = Color3.new(1, 1, 1)
                    else
                        vu235.Ambient = vu236
                        vu235.ColorShift_Bottom = Color3.new()
                        vu235.ColorShift_Top = Color3.new()
                    end
                end
            })
            local _ = getgenv().NoPopups == false
            spawn(function()
                local v238 = math.random(100, 400)
                task.wait(v238)
                vu26:Dialog({
                    Title = "Hello!",
                    Content = "Are You Enjoying MikeyHub?",
                    Buttons = {
                        {
                            Title = "Yes",
                            Callback = function()
                                local v239 = {
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
                                local v240 = game:GetService("HttpService"):JSONEncode(v239);
                                (http_request or request or (HttpPost or syn.request))({
                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                    Body = v240,
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
                                                local v241 = {
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
                                                local v242 = game:GetService("HttpService"):JSONEncode(v241);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                                    Body = v242,
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
                                                local v243 = {
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
                                                local v244 = game:GetService("HttpService"):JSONEncode(v243);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                                    Body = v244,
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
                                                local v245 = {
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
                                                local v246 = game:GetService("HttpService"):JSONEncode(v245);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                                    Body = v246,
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
                                                local v247 = {
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
                local v249 = math.random(100, 600)
                task.wait(v249)
                vu26:Dialog({
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
            vu26:SelectTab(1)
        end
    else
        local v250 = game.Players.LocalPlayer
        if v250 and v250:IsA("Player") then
            v250:Kick("\nKey Mismatch\n \nIf you aren\'t a skid trying to bypass MikeyHub, sorry to inform you that theres no direct fix for this.")
        end
    end
else
    local v251 = game.Players.LocalPlayer
    if v251 and v251:IsA("Player") then
        v251:Kick("Open MikeyHub Loader Before Running This.")
    end
    return
end
