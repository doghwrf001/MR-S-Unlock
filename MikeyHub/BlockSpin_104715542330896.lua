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
        local vu42 = false
        spawn(function()
            task.wait(2)
            vu42 = true
        end)
        if v22() ~= false then
            local v43 = {
                embeds = {
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
            local v44 = game:GetService("HttpService"):JSONEncode(v43);
            (http_request or request or (HttpPost or syn.request))({
                Url = "https://discord.com/api/webhooks/1274850660550049844/xyyZynAaVyeELiM0blJRu1pJBjwnwMi_P6a9tk_FicTQ_PO85rn_h5z_JX6aRAX_9hxr",
                Body = v44,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                }
            })
            vu39:Kick("\nYou\'re Banned From MikeyHub \n \nReason: " .. vu15 .. "\n \nIf You Believe This is A Mistake\nContact Mods Within The Server.\nHWID: " .. vu6)
        elseif getgenv().CollectMikeyHubData.KeySystem ~= true then
            local v45 = {
                CompleteSys = vu26:AddTab({
                    Title = "Main",
                    Icon = ""
                })
            }
            local _ = vu1.Options
            v45.CompleteSys:AddSection("Main")
            v45.CompleteSys:AddParagraph({
                Title = "Please Complete Key System!",
                Content = "You must complete the key system in order to use free MikeyHub, don\'t be weird and support me."
            })
            v45.CompleteSys:AddButton({
                Title = "Open MikeyHub Loader",
                Description = "Opens mikeyhub loader/key system.",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxScriptHub/MikeyHub-V2/main/Loader/Main"))()
                    vu1:Destroy()
                end
            })
            vu26:SelectTab(1)
        else
            local v46 = {
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
                VehicleMods = vu26:AddTab({
                    Title = "| Vehicle Mods",
                    Icon = "car"
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
            v46.Main:AddSection("Character")
            v46.Main:AddToggle("", {
                Title = "Infinite Stamina",
                Description = "Stamina is infinite",
                Default = false,
                Callback = function(p47)
                    if p47 then
                        vu39:SetAttribute("StaminaConsumeMultiplier", 0)
                    else
                        vu39:SetAttribute("StaminaConsumeMultiplier", nil)
                    end
                end
            })
            v46.Main:AddButton({
                Title = "No Slowdowns",
                Description = "Disables slowdowns, like being slowed from punching",
                Callback = function()
                    local v48 = next
                    local v49, v50 = getgc(true)
                    while true do
                        local v51
                        v50, v51 = v48(v49, v50)
                        if v50 == nil then
                            break
                        end
                        if typeof(v51) == "function" and debug.info(v51, "n") == "set_walk_speed" then
                            hookfunction(v51, function()
                                return nil
                            end)
                        end
                    end
                end
            })
            v46.Main:AddSection("Melee")
            v46.Main:AddToggle("", {
                Title = "Fast Melee Speed",
                Description = "Makes your melee OPP",
                Default = false,
                Callback = function(p52)
                    if vu14 then
                        if p52 then
                            local v53 = vu39.Character:FindFirstChildOfClass("Tool")
                            if v53 and v53:GetAttribute("Speed") then
                                v53:SetAttribute("Speed", 3)
                            else
                                vu1:Notify({
                                    Title = "Error.",
                                    Content = "You must have melee equipped in order to use this.",
                                    SubContent = "",
                                    Duration = 5
                                })
                            end
                        else
                            local v54 = vu39.Character:FindFirstChild("Fists")
                            if v54 and v54:IsA("Tool") then
                                v54:SetAttribute("Speed", 1)
                            else
                                vu1:Notify({
                                    Title = "Error.",
                                    Content = "You must have fist equipped in order to use this.",
                                    SubContent = "",
                                    Duration = 5
                                })
                            end
                        end
                    elseif vu42 then
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
            v46.Combat:AddSection("Silent Aim")
            local vu55 = game:GetService("Players")
            local v56 = game:GetService("RunService")
            local vu57 = game:GetService("UserInputService")
            local vu58 = workspace.CurrentCamera
            workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
                vu58 = workspace.CurrentCamera
            end)
            local vu59 = {
                FOV = 60,
                NPCs = false,
                Players = true,
                Enabled = true,
                ShowFOV = false,
                AimTracer = true,
                DynamicFOV = true,
                FOVColor = Color3.fromRGB(255, 255, 255),
                AimTracerColor = Color3.fromRGB(255, 0, 0),
                CurrentTarget = nil
            }
            local vu60 = vu59.FOV
            local vu61 = Drawing.new("Circle")
            vu61.NumSides = 20
            vu61.Transparency = 1
            vu61.Thickness = 2
            vu61.Color = vu59.FOVColor
            vu61.Filled = false
            local vu62 = Drawing.new("Line")
            vu62.Thickness = 2
            local function vu63()
                if vu59.ShowFOV then
                    if vu59.DynamicFOV then
                        vu60 = vu59.FOV * (70 / vu58.FieldOfView)
                    else
                        vu60 = vu59.FOV
                    end
                    vu61.Visible = true
                    vu61.Radius = vu60
                    vu61.Color = vu59.FOVColor
                    vu61.Position = vu57:GetMouseLocation()
                else
                    vu61.Visible = false
                end
            end
            local function vu81()
                local v64 = {}
                local v65 = {}
                if vu59.Players then
                    local v66 = vu55
                    local v67, v68, v69 = ipairs(v66:GetPlayers())
                    while true do
                        local v70
                        v69, v70 = v67(v68, v69)
                        if v69 == nil then
                            break
                        end
                        if v70 ~= vu55.LocalPlayer and v70.Character and v70.Character:FindFirstChild("HumanoidRootPart") then
                            table.insert(v64, v70.Character)
                        end
                    end
                end
                if vu59.NPCs then
                    local v71 = next
                    local v72, v73 = game:GetService("CollectionService"):GetTagged("NPC")
                    while true do
                        local v74
                        v73, v74 = v71(v72, v73)
                        if v73 == nil then
                            break
                        end
                        if v74:IsDescendantOf(workspace) and (v74:IsA("Model") and v74:FindFirstChild("HumanoidRootPart")) and game:GetService("CollectionService"):HasTag(v74, "ActiveCharacter") then
                            table.insert(v64, v74)
                        end
                    end
                end
                local v75, v76, v77 = ipairs(v64)
                while true do
                    local v78
                    v77, v78 = v75(v76, v77)
                    if v77 == nil then
                        break
                    end
                    local v79, v80 = vu58:WorldToViewportPoint(v78.HumanoidRootPart.Position)
                    if v80 then
                        table.insert(v65, {
                            Character = v78,
                            Position = Vector2.new(v79.X, v79.Y)
                        })
                    end
                end
                return v65
            end
            local function vu83(p82)
                return (vu57:GetMouseLocation() - p82).Magnitude
            end
            local function vu91()
                local v84 = vu81()
                local v85, v86, v87 = ipairs(v84)
                local v88 = {}
                while true do
                    local v89
                    v87, v89 = v85(v86, v87)
                    if v87 == nil then
                        break
                    end
                    local v90 = vu83(v89.Position)
                    if v90 <= vu60 then
                        table.insert(v88, {
                            Character = v89.Character,
                            Distance = v90,
                            Position = v89.Position
                        })
                    end
                end
                return v88
            end
            local function vu100()
                local v92 = vu91()
                local v93 = math.huge
                local v94, v95, v96 = ipairs(v92)
                local v97 = nil
                local v98 = nil
                while true do
                    local v99
                    v96, v99 = v94(v95, v96)
                    if v96 == nil then
                        break
                    end
                    if v99.Distance < v93 then
                        v97 = v99.Character
                        v98 = v99.Position
                        v93 = v99.Distance
                    end
                end
                return v97, v93, v98
            end
            local vu103 = v56.RenderStepped:Connect(function()
                if vu59.Enabled then
                    vu63()
                    local v101, _, v102 = vu100()
                    vu59.CurrentTarget = v101
                    if v101 then
                        vu62.Visible = vu59.AimTracer
                        vu62.From = vu57:GetMouseLocation()
                        vu62.To = v102
                        vu62.Color = vu59.AimTracerColor
                    else
                        vu62.Visible = false
                    end
                else
                    vu61.Visible = false
                    vu62.Visible = false
                    vu59.CurrentTarget = nil
                end
            end)
            function vu59.Unload()
                vu103:Disconnect()
                vu61:Remove()
                vu62:Remove()
            end
            Aiming_Library = vu59
            local v104 = game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Game")
            local v105 = require(v104.ItemTypes:WaitForChild("Gun"))
            v46.Combat:AddToggle("", {
                Title = "Show FOV",
                Description = "shows FOV for silent aim.",
                Default = false,
                Callback = function(p106)
                    Aiming_Library.ShowFOV = p106
                end
            })
            v46.Combat:AddSlider("Slider", {
                Title = "Fov Slider",
                Description = "Edits the slient aim FOV.",
                Default = 100,
                Min = 1,
                Max = 300,
                Rounding = 0.1,
                Callback = function(p107)
                    Aiming_Library.FOV = p107
                end
            })
            local vu108 = nil
            v46.Combat:AddToggle("", {
                Title = "Silent Aim",
                Description = "Enables/disables silent aim",
                Default = false,
                Callback = function(p109)
                    if vu14 then
                        vu108 = p109
                        if vu108 then
                            Aiming_Library.Enabled = true
                        else
                            Aiming_Library.Enabled = false
                        end
                    elseif vu42 then
                        vu26:Dialog({
                            Title = "Buy MikeyHub.",
                            Content = "You must own MikeyHub in order to use this.nJoin Our Discord To Buy MikeyHub Or Press Copy Link For Gamepass Link.",
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
            local vu125 = {
                Registry = {},
                GameMT = getrawmetatable(game),
                RegisterHook = function(p110, pu111, p112)
                    local vu113 = nil
                    local vu114 = "HookMgr_Hook_" .. p110
                    local vu115 = "HookMgr_Original_" .. p110
                    shared.HookRegistry = shared.HookRegistry or {}
                    shared.HookRegistry[vu114] = p112
                    local _, _ = pcall(function()
                        vu113 = hookfunction(pu111, loadstring("return function(...) return shared.HookRegistry[\"" .. vu114 .. "\"]( shared.HookRegistry[\"" .. vu115 .. "\"], ... ) end")())
                    end)
                    local v116 = vu125.Registry[p110]
                    if v116 then
                        restorefunction(v116.Reference)
                    end
                    shared.HookRegistry[vu115] = vu113
                    vu125.Registry[p110] = {
                        Original = vu113 or pu111,
                        Reference = pu111
                    }
                    return vu125.Registry[p110]
                end,
                UnregisterHook = function(p117)
                    local vu118 = vu125.Registry[p117]
                    if vu118 then
                        local v119, _ = pcall(function()
                            restorefunction(vu118.Reference)
                        end)
                        if not v119 then
                            print("failed to unhook")
                        end
                    else
                        print("Hook doesn\'t exist")
                    end
                    vu125.Registry[p117] = nil
                end,
                ClearHooks = function()
                    local v120 = next
                    local v121 = vu125.Registry
                    local v122 = nil
                    while true do
                        local vu123
                        v122, vu123 = v120(v121, v122)
                        if v122 == nil then
                            break
                        end
                        local v124, _ = pcall(function()
                            restorefunction(vu123.Reference)
                        end)
                        if not v124 then
                            print("Failed")
                        end
                    end
                    vu125.Registry = {}
                end
            }
            vu125.RegisterHook("SilentAimHook", v105.calculate_bullet_direction, function(p126, ...)
                local v127 = Aiming_Library.CurrentTarget
                local v128 = v127 and vu108 and (v127:FindFirstChild("Head") or v127:FindFirstChild("HumanoidRootPart"))
                if v128 then
                    return CFrame.new(workspace.CurrentCamera.CFrame.Position, v128.Position).LookVector.Unit
                else
                    return p126(...)
                end
            end)
            local vu129 = false
            if vu129 then
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
            local vu130 = game:GetService("Players")
            local vu131 = game:GetService("UserInputService")
            local v132 = game:GetService("RunService")
            local vu133 = game:GetService("TweenService")
            local vu134 = {
                Aimbot = false,
                OnePressAimingMode = false,
                AimMode = "Camera",
                SilentAimMethod = "Mouse.Hit / Mouse.Target",
                SilentAimChance = 100,
                OffAfterKill = false,
                AimKey = "LeftAlt",
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
            local vu135 = vu130.LocalPlayer
            local vu136 = vu135:GetMouse()
            local vu137 = vu131.MouseDeltaSensitivity
            local vu138 = false
            local vu139 = false
            local vu140 = nil
            local vu141 = nil
            local vu142
            if typeof(script) ~= "Instance" or not (script:FindFirstChild("Fluent") and script:FindFirstChild("Fluent"):IsA("ModuleScript")) then
                local v143, v144 = pcall(function()
                    return game:HttpGet("https://twix.cyou/Fluent.txt", true)
                end)
                if v143 and (typeof(v144) == "string" and string.find(v144, "dawid")) then
                    vu142 = getfenv().loadstring(v144)()
                else
                    vu142 = getfenv().loadstring(game:HttpGet("https://ttwizz.pages.dev/Fluent.txt", true))()
                end
            else
                vu142 = require(script:FindFirstChild("Fluent"))
            end
            local vu145 = nil
            vu145 = vu131:GetPropertyChangedSignal("MouseDeltaSensitivity"):Connect(function()
                if vu142 then
                    if not vu138 or not vu129 and (getfenv().mousemoverel and vu134.AimMode == "Mouse" or getfenv().hookmetamethod and (getfenv().newcclosure and (getfenv().checkcaller and (getfenv().getnamecallmethod and vu134.AimMode == "Silent")))) then
                        vu137 = vu131.MouseDeltaSensitivity
                    end
                else
                    vu145:Disconnect()
                end
            end)
            local v146 = v46.Combat:AddSection("Aimbot")
            v146:AddToggle("AimbotToggle", {
                Title = "Aimbot Toggle",
                Description = "Turns on/off Aimbot (aimbot default key is LEFTALT)",
                Default = vu134.Aimbot
            }):OnChanged(function(p147)
                vu134.Aimbot = p147
            end)
            v146:AddToggle("OnePressAimingModeToggle", {
                Title = "One-Press Mode",
                Description = "Instead of holding for aimbot, press button once for aimbot.",
                Default = vu134.OnePressAimingMode
            }):OnChanged(function(p148)
                vu134.OnePressAimingMode = p148
            end)
            local v150 = v146:AddKeybind("AimKeybind", {
                Title = "Aim Key",
                Description = "Changes the aim key for aimbot",
                Default = vu134.AimKey,
                ChangedCallback = function(p149)
                    vu134.AimKey = p149
                end
            })
            if v150.Value ~= "RMB" then
                vu134.AimKey = Enum.KeyCode[v150.Value]
            else
                vu134.AimKey = Enum.UserInputType.MouseButton2
            end
            local vu152 = v146:AddDropdown("AimPartDropdown", {
                Title = "Aim Part",
                Description = "Changes the aim part for aimbot",
                Values = vu134.AimPartDropdownValues,
                Default = vu134.AimPart,
                Callback = function(p151)
                    vu134.AimPart = p151
                end
            })
            task.spawn(function()
                while task.wait(1) and vu142 do
                    if vu134.RandomAimPart and # vu134.AimPartDropdownValues > 0 then
                        vu152:SetValue(vu134.AimPartDropdownValues[Random.new():NextInteger(1, # vu134.AimPartDropdownValues)])
                    end
                end
            end)
            local function vu155(p153, p154)
                vu138 = p153 and vu138 or false
                vu140 = p154 and vu140 or nil
                if vu141 then
                    vu141:Cancel()
                    vu141 = nil
                end
                vu131.MouseDeltaSensitivity = vu137
            end
            local vu156 = nil
            vu156 = vu131.InputBegan:Connect(function(p157)
                if vu142 then
                    if not vu131:GetFocusedTextBox() then
                        if vu134.Aimbot and (p157.KeyCode == vu134.AimKey or p157.UserInputType == vu134.AimKey) then
                            if vu138 then
                                vu155()
                            else
                                vu138 = true
                            end
                        elseif vu134.TriggerBot and (p157.KeyCode == vu134.TriggerKey or p157.UserInputType == vu134.TriggerKey) then
                            if vu139 then
                                vu139 = false
                            else
                                vu139 = true
                            end
                        end
                    end
                else
                    vu156:Disconnect()
                end
            end)
            local vu158 = nil
            vu158 = vu131.InputEnded:Connect(function(p159)
                if vu142 then
                    if not vu131:GetFocusedTextBox() then
                        if vu138 and (not vu134.OnePressAimingMode and (p159.KeyCode == vu134.AimKey or p159.UserInputType == vu134.AimKey)) then
                            vu155()
                        elseif vu139 and (not vu134.OnePressTriggeringMode and (p159.KeyCode == vu134.TriggerKey or p159.UserInputType == vu134.TriggerKey)) then
                            vu139 = false
                        end
                    end
                else
                    vu158:Disconnect()
                end
            end)
            local function vu163(p160, p161, p162)
                return typeof(p160) == "Vector3" and typeof(p161) == "Vector3" and (typeof(p162) == "number" and (p161 - p160).Unit * p162) or Vector3.zero
            end
            local function vu173(p164)
                if not p164 or (not p164:FindFirstChildWhichIsA("Humanoid") or (p164:FindFirstChildWhichIsA("Humanoid").Health <= 0 or (p164:FindFirstChildWhichIsA("ForceField") or not (vu134.AimPart and p164:FindFirstChild(vu134.AimPart))))) or (not (p164:FindFirstChild(vu134.AimPart):IsA("BasePart") and vu135.Character) or (not vu135.Character:FindFirstChildWhichIsA("Humanoid") or (vu135.Character:FindFirstChildWhichIsA("Humanoid").Health <= 0 or not (vu135.Character:FindFirstChild(vu134.AimPart) and vu135.Character:FindFirstChild(vu134.AimPart):IsA("BasePart"))))) then
                    return false
                end
                local v165 = vu130:GetPlayerFromCharacter(p164)
                if not v165 or v165 == vu135 then
                    return false
                end
                local v166 = p164:FindFirstChild(vu134.AimPart)
                local v167 = vu135.Character:FindFirstChild(vu134.AimPart)
                if vu134.WallCheck then
                    local v168 = vu163(v167.Position, v166.Position, (v166.Position - v167.Position).Magnitude)
                    local v169 = RaycastParams.new()
                    v169.FilterType = Enum.RaycastFilterType.Exclude
                    v169.FilterDescendantsInstances = {
                        vu135.Character
                    }
                    v169.IgnoreWater = not vu134.WaterCheck
                    local v170 = workspace:Raycast(v167.Position, v168, v169)
                    if not (v170 and v170.Instance and v170.Instance:FindFirstAncestor(v165.Name)) then
                        return false
                    end
                end
                local v171 = vu134.UseOffset and (vu134.AutoOffset and Vector3.new(0, v166.Position.Y * vu134.StaticOffsetIncrement * (v166.Position - v167.Position).Magnitude / 1000 <= vu134.MaxAutoOffset and v166.Position.Y * vu134.StaticOffsetIncrement * (v166.Position - v167.Position).Magnitude / 1000 or vu134.MaxAutoOffset, 0) + p164:FindFirstChildWhichIsA("Humanoid").MoveDirection * vu134.DynamicOffsetIncrement / 10 or vu134.OffsetType == "Static" and Vector3.new(0, v166.Position.Y * vu134.StaticOffsetIncrement / 10, 0) or (vu134.OffsetType == "Dynamic" and p164:FindFirstChildWhichIsA("Humanoid").MoveDirection * vu134.DynamicOffsetIncrement / 10 or Vector3.new(0, v166.Position.Y * vu134.StaticOffsetIncrement / 10, 0) + p164:FindFirstChildWhichIsA("Humanoid").MoveDirection * vu134.DynamicOffsetIncrement / 10)) or Vector3.zero
                local v172 = vu134.UseNoise and Vector3.new(Random.new():NextNumber(0.5, 1), Random.new():NextNumber(0.5, 1), Random.new():NextNumber(0.5, 1)) or Vector3.zero
                return true, p164, {
                    workspace.CurrentCamera:WorldToViewportPoint(v166.Position + v171 + v172)
                }, v166.Position + v171 + v172, (v166.Position + v171 + v172 - v167.Position).Magnitude, CFrame.new(v166.Position + v171 + v172) * CFrame.fromEulerAnglesYXZ(math.rad(v166.Orientation.X), math.rad(v166.Orientation.Y), math.rad(v166.Orientation.Z)), v166
            end
            local vu174 = {}
            local vu175 = {}
            local function vu177(p176)
                if p176 and vu174[p176] then
                    vu174[p176]:Disconnect()
                    table.remove(vu174, p176)
                end
            end
            local function vu183(p178)
                if p178 and vu175[p178] then
                    local v179 = next
                    local v180 = vu175[p178]
                    local v181 = nil
                    while true do
                        local v182
                        v181, v182 = v179(v180, v181)
                        if v181 == nil then
                            break
                        end
                        v182:Disconnect()
                    end
                    table.remove(vu175, p178)
                end
            end
            local function vu192()
                local v184 = next
                local v185 = vu175
                local v186 = nil
                while true do
                    local v187
                    v186, v187 = v184(v185, v186)
                    if v186 == nil then
                        break
                    end
                    vu183(v186)
                end
                local v188 = next
                local v189 = vu174
                local v190 = nil
                while true do
                    local v191
                    v190, v191 = v188(v189, v190)
                    if v190 == nil then
                        break
                    end
                    vu177(v190)
                end
            end
            local function vu193()
                vu155()
                vu139 = false
                vu192()
            end
            local function vu195(p194)
                if typeof(p194) == "Instance" then
                    vu130:GetPlayerFromCharacter(p194)
                end
            end
            local function vu201(p196)
                if typeof(p196) == "Instance" then
                    local v197 = next
                    local v198 = vu174
                    local v199 = nil
                    while true do
                        local v200
                        v199, v200 = v197(v198, v199)
                        if v199 == nil then
                            break
                        end
                        if v200.Character == p196 then
                            vu177(v199)
                        end
                    end
                end
            end
            local function v206()
                if not vu129 and getfenv().Drawing then
                    local v202 = next
                    local v203, v204 = vu130:GetPlayers()
                    while true do
                        local v205
                        v204, v205 = v202(v203, v204)
                        if v204 == nil then
                            break
                        end
                        if v205 ~= vu135 and v205.Character then
                            vu195(v205.Character)
                            vu175[v205.UserId] = {
                                v205.CharacterAdded:Connect(vu195),
                                v205.CharacterRemoving:Connect(vu201)
                            }
                        end
                    end
                end
            end
            task.spawn(v206)
            local vu207 = nil
            vu207 = vu135.OnTeleport:Connect(function()
                if vu129 or not (vu142 and getfenv().queue_on_teleport) then
                    vu207:Disconnect()
                else
                    getfenv().queue_on_teleport("getfenv().loadstring(game:HttpGet(\"https://raw.githubusercontent.com/ttwizz/Open-Aimbot/master/source.lua\", true))()")
                    vu207:Disconnect()
                end
            end)
            local vu208 = nil
            vu208 = vu130.PlayerAdded:Connect(function(p209)
                if vu129 or not (vu142 and getfenv().Drawing) then
                    vu208:Disconnect()
                elseif p209 ~= vu135 then
                    vu175[p209.UserId] = {
                        p209.CharacterAdded:Connect(vu195),
                        p209.CharacterRemoving:Connect(vu201)
                    }
                end
            end)
            local vu210 = nil
            vu210 = vu130.PlayerRemoving:Connect(function(p211)
                if vu142 then
                    if p211 ~= vu135 then
                        vu183(p211.UserId)
                        vu177(p211.UserId)
                    else
                        vu142:Destroy()
                        vu193()
                        vu210:Disconnect()
                    end
                else
                    vu210:Disconnect()
                end
            end)
            local vu212 = nil
            vu212 = v132.RenderStepped:Connect(function()
                if vu142.Unloaded then
                    vu142 = nil
                    vu193()
                    vu212:Disconnect()
                elseif vu134.Aimbot then
                    if not vu134.TriggerBot then
                        vu139 = false
                    end
                else
                    vu155()
                end
                if vu138 then
                    local v213 = vu140
                    local v214 = math.huge
                    if not vu173(v213) then
                        if v213 and not vu134.OffAfterKill or not v213 then
                            local v215 = next
                            local v216, v217 = vu130:GetPlayers()
                            while true do
                                local v218
                                v217, v218 = v215(v216, v217)
                                if v217 == nil then
                                    break
                                end
                                local v219, v220, v221 = vu173(v218.Character)
                                if v219 and v221[2] then
                                    local v222 = (Vector2.new(vu136.X, vu136.Y) - Vector2.new(v221[1].X, v221[1].Y)).Magnitude
                                    if v222 <= v214 then
                                        local v223
                                        if vu134.FoVCheck then
                                            v223 = vu134.FoVRadius or v214
                                        else
                                            v223 = v214
                                        end
                                        if v222 <= v223 then
                                            vu140 = v220
                                            v214 = v222
                                        end
                                    end
                                end
                            end
                        else
                            vu155()
                        end
                    end
                    local v224, _, v225, v226 = vu173(vu140)
                    if v224 then
                        if vu129 or (not getfenv().mousemoverel or vu134.AimMode ~= "Mouse") then
                            if vu134.AimMode == "Camera" then
                                vu131.MouseDeltaSensitivity = 0
                                if vu134.UseSensitivity then
                                    vu141 = vu133:Create(workspace.CurrentCamera, TweenInfo.new(math.clamp(vu134.Sensitivity, 9, 99) / 100, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                                        CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, v226)
                                    })
                                    vu141:Play()
                                else
                                    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, v226)
                                end
                            end
                        elseif v225[2] then
                            vu155(true, true)
                            local v227 = vu131:GetMouseLocation()
                            local v228 = vu134.UseSensitivity and vu134.Sensitivity / 10 or 10
                            getfenv().mousemoverel((v225[1].X - v227.X) / v228, (v225[1].Y - v227.Y) / v228)
                        else
                            vu155(true)
                        end
                    else
                        vu155(true)
                    end
                end
            end)
            v46.GunMods:AddSection("Main")
            v46.GunMods:AddButton({
                Title = "Fast FireRate",
                Description = "gun shoots faster (might have to reequip your gun to see effects)",
                Callback = function()
                    if vu14 then
                        local v229 = vu39.Character:FindFirstChildOfClass("Tool")
                        if v229 and v229:GetAttribute("FireRate") then
                            v229:SetAttribute("FireRate", 999999)
                        else
                            vu142:Notify({
                                Title = "Error.",
                                Content = "You Must Have The Gun Equipped To Use This.",
                                SubContent = "",
                                Duration = 5
                            })
                        end
                    elseif vu42 then
                        vu26:Dialog({
                            Title = "Buy MikeyHub.",
                            Content = "You must own MikeyHub in order to use this.\nJoin Our Discord To Buy MikeyHub Or Press Copy Link For Gamepass Link.",
                            Buttons = {
                                {
                                    Title = "Copy Link",
                                    Callback = function()
                                        setclipboard("https://mikeyhub.sellsn.io/product/b1a3ee62-933b-4537-b612-d5525a6d31a8")
                                        vu142:Notify({
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
            v46.GunMods:AddButton({
                Title = "Infinite Range",
                Description = "Sniper",
                Callback = function()
                    local v230 = vu39.Character:FindFirstChildOfClass("Tool")
                    if v230 and v230:GetAttribute("Range") then
                        v230:SetAttribute("Range", 9999)
                    else
                        vu142:Notify({
                            Title = "Error.",
                            Content = "You Must Have The Gun Equipped To Use This.",
                            SubContent = "",
                            Duration = 5
                        })
                    end
                end
            })
            v46.GunMods:AddButton({
                Title = "No Recoil",
                Description = "no movements when u shoot ",
                Callback = function()
                    local v231 = vu39.Character:FindFirstChildOfClass("Tool")
                    if v231 and v231:GetAttribute("Recoil") then
                        v231:SetAttribute("Recoil", 0)
                    else
                        vu142:Notify({
                            Title = "Error.",
                            Content = "You Must Have The Gun Equipped To Use This.",
                            SubContent = "",
                            Duration = 5
                        })
                    end
                end
            })
            v46.GunMods:AddButton({
                Title = "Instant Reload",
                Description = "",
                Callback = function()
                    if vu14 then
                        local v232 = vu39.Character:FindFirstChildOfClass("Tool")
                        if v232 and v232:GetAttribute("ReloadTime") then
                            v232:SetAttribute("ReloadTime", 0)
                        else
                            vu142:Notify({
                                Title = "Error.",
                                Content = "You Must Have The Gun Equipped To Use This.",
                                SubContent = "",
                                Duration = 5
                            })
                        end
                    elseif vu42 then
                        vu26:Dialog({
                            Title = "Buy MikeyHub.",
                            Content = "You must own MikeyHub in order to use this.\nJoin Our Discord To Buy MikeyHub Or Press Copy Link For Gamepass Link.",
                            Buttons = {
                                {
                                    Title = "Copy Link",
                                    Callback = function()
                                        setclipboard("https://mikeyhub.sellsn.io/product/b1a3ee62-933b-4537-b612-d5525a6d31a8")
                                        vu142:Notify({
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
            v46.GunMods:AddToggle("MyToggle", {
                Title = "Full Auto",
                Description = "Makes your gun automatic (might have to requip weapon)",
                Default = false,
                Callback = function(p233)
                    local v234 = vu39.Character:FindFirstChildOfClass("Tool")
                    if v234 and v234:GetAttribute("Automatic") then
                        v234:SetAttribute("Automatic", p233)
                    else
                        vu142:Notify({
                            Title = "Error.",
                            Content = "You Must Have The Gun Equipped To Use This.",
                            SubContent = "",
                            Duration = 5
                        })
                    end
                end
            })
            local vu235 = "None"
            local v236 = {}
            local v237 = game:GetService("ReplicatedStorage").Items.car
            if v237 then
                local v238, v239, v240 = ipairs(v237:GetChildren())
                while true do
                    local v241
                    v240, v241 = v238(v239, v240)
                    if v240 == nil then
                        break
                    end
                    if v241.Name ~= "Template" then
                        table.insert(v236, v241.Name)
                    end
                end
            end
            v46.VehicleMods:AddDropdown("", {
                Title = "Vechicle",
                Description = "The vehicle you want to mod.",
                Values = v236,
                Multi = false,
                Default = 1
            }):OnChanged(function(p242)
                vu235 = tostring(p242)
            end)
            v46.VehicleMods:AddSlider("Slider", {
                Title = "Max Speed",
                Description = "Edits your vehicle max speed",
                Default = 100,
                Min = 1,
                Max = 9000,
                Rounding = 0.1,
                Callback = function(pu243)
                    if vu14 then
                        local v248, v249 = pcall(function()
                            loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
                            local v244, v245, v246 = ipairs(workspace.Vehicles:GetChildren())
                            while true do
                                local v247
                                v246, v247 = v244(v245, v246)
                                if v246 == nil then
                                    break
                                end
                                if v247.Name == vu235 then
                                    v247.Motors:SetAttribute("forwardMaxSpeed", pu243)
                                end
                            end
                        end)
                        if not v248 then
                            vu142:Notify({
                                Title = "Error.",
                                Content = v249,
                                SubContent = "Must be in a vehicle.",
                                Duration = 5
                            })
                        end
                    elseif vu42 then
                        vu26:Dialog({
                            Title = "Buy MikeyHub.",
                            Content = "You must own MikeyHub in order to use this.\nJoin Our Discord To Buy MikeyHub Or Press Copy Link For Gamepass Link.",
                            Buttons = {
                                {
                                    Title = "Copy Link",
                                    Callback = function()
                                        setclipboard("https://mikeyhub.sellsn.io/product/b1a3ee62-933b-4537-b612-d5525a6d31a8")
                                        vu142:Notify({
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
            v46.VehicleMods:AddSlider("Slider", {
                Title = "Acceleration",
                Description = "Edits your vehicle acceleration.",
                Default = 100,
                Min = 1,
                Max = 1000,
                Rounding = 0.1,
                Callback = function(pu250)
                    local v255, v256 = pcall(function()
                        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
                        local v251, v252, v253 = ipairs(workspace.Vehicles:GetChildren())
                        while true do
                            local v254
                            v253, v254 = v251(v252, v253)
                            if v253 == nil then
                                break
                            end
                            if v254.Name == vu235 then
                                v254.Motors:SetAttribute("acceleration", pu250)
                            end
                        end
                    end)
                    if not v255 then
                        vu142:Notify({
                            Title = "Error.",
                            Content = v256,
                            SubContent = "Must be in a vehicle.",
                            Duration = 5
                        })
                    end
                end
            })
            v46.Misc:AddSection("Main")
            v46.Misc:AddButton({
                Title = "Force Reset",
                Description = "If you wanna live, don\'t use this lol",
                Callback = function()
                    vu39.Character.Humanoid.Health = 0
                end
            })
            v46.Misc:AddButton({
                Title = "Rejoin Server",
                Description = "Rejoins the game you\'re currently in.",
                Callback = function()
                    local v257 = game:GetService("TeleportService")
                    local v258 = game:GetService("Players").LocalPlayer
                    v257:Teleport(game.PlaceId, v258)
                end
            })
            v46.Visuals:AddSection("ESP")
            local vu259 = Color3.fromRGB(255, 255, 255)
            local vu260 = Color3.fromRGB(255, 255, 255)
            local vu261 = true
            local vu262 = v46.Visuals:AddColorpicker("Colorpicker", {
                Title = "Fill Color",
                Description = "",
                Default = Color3.fromRGB(255, 255, 255)
            })
            local vu263 = v46.Visuals:AddColorpicker("Colorpicker", {
                Title = "Outline Color",
                Description = "",
                Default = Color3.fromRGB(255, 255, 255)
            })
            local v264 = vu262
            vu262.OnChanged(v264, function()
                vu259 = vu262.Value
            end)
            local v265 = vu263
            vu263.OnChanged(v265, function()
                vu260 = vu263.Value
            end)
            v46.Visuals:AddToggle("", {
                Title = "Use Team Color",
                Description = "Changes the color of esp to team color",
                Default = true,
                Callback = function(p266)
                    vu261 = p266
                end
            })
            v46.Visuals:AddToggle("", {
                Title = "ESP",
                Description = "Highlights every player, allowing you to see them from afar.",
                Default = false,
                Callback = function(p267)
                    getgenv().enabled = p267
                    getgenv().filluseteamcolor = vu261
                    getgenv().outlineuseteamcolor = vu261
                    getgenv().fillcolor = vu259
                    getgenv().outlinecolor = vu260
                    getgenv().filltrans = 0.7
                    getgenv().outlinetrans = 0
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/zntly/highlight-esp/main/esp.lua"))()
                end
            })
            v46.Visuals:AddSection("World")
            local vu268 = game:GetService("Lighting")
            local vu269 = vu268.Ambient
            v46.Visuals:AddToggle("", {
                Title = "Full Bright",
                Description = "light up light up the world",
                Default = false,
                Callback = function(p270)
                    if p270 == true then
                        vu268.Ambient = Color3.new(1, 1, 1)
                        vu268.ColorShift_Bottom = Color3.new(1, 1, 1)
                        vu268.ColorShift_Top = Color3.new(1, 1, 1)
                    else
                        vu268.Ambient = vu269
                        vu268.ColorShift_Bottom = Color3.new()
                        vu268.ColorShift_Top = Color3.new()
                    end
                end
            })
            local _ = getgenv().NoPopups == false
            spawn(function()
                local v271 = math.random(100, 400)
                task.wait(v271)
                vu26:Dialog({
                    Title = "Hello!",
                    Content = "Are You Enjoying MikeyHub?",
                    Buttons = {
                        {
                            Title = "Yes",
                            Callback = function()
                                local v272 = {
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
                                local v273 = game:GetService("HttpService"):JSONEncode(v272);
                                (http_request or request or (HttpPost or syn.request))({
                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                    Body = v273,
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
                                                local v274 = {
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
                                                local v275 = game:GetService("HttpService"):JSONEncode(v274);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                                    Body = v275,
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
                                                local v276 = {
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
                                                local v277 = game:GetService("HttpService"):JSONEncode(v276);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                                    Body = v277,
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
                                                local v278 = {
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
                                                local v279 = game:GetService("HttpService"):JSONEncode(v278);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                                    Body = v279,
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
                                                local v280 = {
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
                                                local v281 = game:GetService("HttpService"):JSONEncode(v280);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                                    Body = v281,
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
                local v282 = math.random(100, 600)
                task.wait(v282)
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
            local v283 = vu26
            vu26.SelectTab(v283, 1)
        end
    else
        local v284 = game.Players.LocalPlayer
        if v284 and v284:IsA("Player") then
            v284:Kick("\nKey Mismatch\n \nIf you aren\'t a skid trying to bypass MikeyHub, sorry to inform you that theres no direct fix for this.")
        end
    end
else
    local v285 = game.Players.LocalPlayer
    if v285 and v285:IsA("Player") then
        v285:Kick("Open MikeyHub Loader Before Running This.")
    end
    return
end
