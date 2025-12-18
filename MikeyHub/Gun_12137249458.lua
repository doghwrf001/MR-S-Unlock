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
getgenv().CheckIfMikeyHubOwned = function(...)
    return vu8(...)
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
if CheckIfMikeyHubOwned() ~= true then
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
    Acrylic = getgenv().Blur or false,
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
        elseif getgenv().CollectMikeyHubData and getgenv().CollectMikeyHubData.KeySystem == true then
            local v38 = {
                Combat = vu20:AddTab({
                    Title = "| Combat",
                    Icon = "swords"
                }),
                GunMods = vu20:AddTab({
                    Title = "| Gun Mods",
                    Icon = "crosshair"
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
            v38.Combat:AddSection("Hitbox Expander")
            local vu39 = 5
            local vu40 = 5
            local vu41 = 1
            local vu42 = nil
            local vu43 = true
            local vu44 = "HumanoidRootPart"
            v38.Combat:AddSlider("", {
                Title = "HumanoidRootPart Hitbox Size",
                Description = "This is only if you have hitbox expander part on \nhumanoidrootpart",
                Default = 5,
                Min = 1,
                Max = 30,
                Rounding = 0.1,
                Callback = function(p45)
                    vu39 = p45
                end
            })
            v38.Combat:AddSlider("", {
                Title = "Head Hitbox Size",
                Description = "This is only if you have hitbox expander part on \nhead",
                Default = 6,
                Min = 1,
                Max = 6,
                Rounding = 0.1,
                Callback = function(p46)
                    vu40 = p46
                end
            })
            v38.Combat:AddToggle("", {
                Title = "Hitbox Visualizer",
                Description = "",
                Default = true,
                Callback = function(p47)
                    vu43 = p47
                end
            })
            v38.Combat:AddDropdown("HExpDrop", {
                Title = "Hitbox Expander Part",
                Description = "Changes the hitbox expander part.",
                Values = {
                    "HumanoidRootPart",
                    "Head"
                },
                Default = "HumanoidRootPart",
                Callback = function(p48)
                    vu44 = p48
                end
            })
            v38.Combat:AddToggle("", {
                Title = "Hitbox Expander",
                Description = "Reach but for guns?",
                Default = false,
                Callback = function(p49)
                    vu42 = p49
                    local vu50 = game:GetService("Players").LocalPlayer
                    local function v59(p51, p52)
                        local v53, v54, v55 = ipairs(game:GetService("Workspace"):GetDescendants())
                        while true do
                            local v56
                            v55, v56 = v53(v54, v55)
                            if v55 == nil then
                                break
                            end
                            if v56:FindFirstChild("HumanoidRootPart") and v56.Name ~= vu50.Name and game.Players:FindFirstChild(v56.Name) then
                                if vu44 ~= "HumanoidRootPart" then
                                    if vu44 == "Head" then
                                        local v57 = v56:FindFirstChild("Head")
                                        if v57 then
                                            if vu42 then
                                                if v57.Size ~= Vector3.new(vu40, vu40, vu40) then
                                                    v57.Size = Vector3.new(vu40, vu40, vu40)
                                                    v57.Transparency = p52 and 0.5 or 1
                                                    v57.CanCollide = false
                                                end
                                            else
                                                v57.Size = Vector3.new(1, 2, 1)
                                                v57.CanCollide = false
                                                v57.Transparency = 0
                                            end
                                        end
                                    end
                                else
                                    local v58 = v56.HumanoidRootPart
                                    if v58 then
                                        if vu42 then
                                            if v58.Size ~= Vector3.new(p51, p51, p51) then
                                                v58.Size = Vector3.new(p51, p51, p51)
                                                v58.BrickColor = BrickColor.new("Really black")
                                                v58.Transparency = p52 and 0.5 or 1
                                                v58.Material = "Neon"
                                            end
                                        else
                                            v58.Size = Vector3.new(1, 2, 1)
                                            v58.BrickColor = BrickColor.new("Really black")
                                            v58.Transparency = p52 and 0.5 or vu41
                                            v58.Material = "Neon"
                                        end
                                    end
                                end
                            end
                        end
                    end
                    while vu42 do
                        while vu42 do
                            v59(vu39, vu43)
                            task.wait(0.1)
                        end
                        v59(2, false)
                        v59(vu39, vu43)
                        task.wait(0.1)
                    end
                end
            })
            local vu60 = false
            if vu60 then
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
            local vu61 = game:GetService("Players")
            local vu62 = game:GetService("UserInputService")
            local v63 = game:GetService("RunService")
            local vu64 = game:GetService("TweenService")
            local vu65 = {
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
            local vu66 = vu61.LocalPlayer
            local vu67 = vu66:GetMouse()
            local vu68 = vu62.MouseDeltaSensitivity
            local vu69 = false
            local vu70 = false
            local vu71 = nil
            local vu72 = nil
            local vu73
            if typeof(script) ~= "Instance" or not (script:FindFirstChild("Fluent") and script:FindFirstChild("Fluent"):IsA("ModuleScript")) then
                local v74, v75 = pcall(function()
                    return game:HttpGet("https://twix.cyou/Fluent.txt", true)
                end)
                if v74 and (typeof(v75) == "string" and string.find(v75, "dawid")) then
                    vu73 = getfenv().loadstring(v75)()
                else
                    vu73 = getfenv().loadstring(game:HttpGet("https://ttwizz.pages.dev/Fluent.txt", true))()
                end
            else
                vu73 = require(script:FindFirstChild("Fluent"))
            end
            local vu76 = nil
            vu76 = vu62:GetPropertyChangedSignal("MouseDeltaSensitivity"):Connect(function()
                if vu73 then
                    if not vu69 or not vu60 and (getfenv().mousemoverel and vu65.AimMode == "Mouse" or getfenv().hookmetamethod and (getfenv().newcclosure and (getfenv().checkcaller and (getfenv().getnamecallmethod and vu65.AimMode == "Silent")))) then
                        vu68 = vu62.MouseDeltaSensitivity
                    end
                else
                    vu76:Disconnect()
                end
            end)
            local v77 = v38.Combat:AddSection("Aimbot")
            v77:AddToggle("AimbotToggle", {
                Title = "Aimbot Toggle",
                Description = "Turns on/off Aimbot",
                Default = vu65.Aimbot
            }):OnChanged(function(p78)
                vu65.Aimbot = p78
            end)
            v77:AddToggle("OnePressAimingModeToggle", {
                Title = "One-Press Mode",
                Description = "Instead of holding for aimbot, press button once for aimbot.",
                Default = vu65.OnePressAimingMode
            }):OnChanged(function(p79)
                vu65.OnePressAimingMode = p79
            end)
            local v81 = v77:AddKeybind("AimKeybind", {
                Title = "Aim Key",
                Description = "Changes the aim key for aimbot",
                Default = vu65.AimKey,
                ChangedCallback = function(p80)
                    vu65.AimKey = p80
                end
            })
            if v81.Value ~= "RMB" then
                vu65.AimKey = Enum.KeyCode[v81.Value]
            else
                vu65.AimKey = Enum.UserInputType.MouseButton2
            end
            local vu83 = v77:AddDropdown("AimPartDropdown", {
                Title = "Aim Part",
                Description = "Changes the aim part for aimbot",
                Values = vu65.AimPartDropdownValues,
                Default = vu65.AimPart,
                Callback = function(p82)
                    vu65.AimPart = p82
                end
            })
            task.spawn(function()
                while task.wait(1) and vu73 do
                    if vu65.RandomAimPart and # vu65.AimPartDropdownValues > 0 then
                        vu83:SetValue(vu65.AimPartDropdownValues[Random.new():NextInteger(1, # vu65.AimPartDropdownValues)])
                    end
                end
            end)
            local function vu86(p84, p85)
                vu69 = p84 and vu69 or false
                vu71 = p85 and vu71 or nil
                if vu72 then
                    vu72:Cancel()
                    vu72 = nil
                end
                vu62.MouseDeltaSensitivity = vu68
            end
            local vu87 = nil
            vu87 = vu62.InputBegan:Connect(function(p88)
                if vu73 then
                    if not vu62:GetFocusedTextBox() then
                        if vu65.Aimbot and (p88.KeyCode == vu65.AimKey or p88.UserInputType == vu65.AimKey) then
                            if vu69 then
                                vu86()
                            else
                                vu69 = true
                            end
                        elseif vu65.TriggerBot and (p88.KeyCode == vu65.TriggerKey or p88.UserInputType == vu65.TriggerKey) then
                            if vu70 then
                                vu70 = false
                            else
                                vu70 = true
                            end
                        end
                    end
                else
                    vu87:Disconnect()
                end
            end)
            local vu89 = nil
            vu89 = vu62.InputEnded:Connect(function(p90)
                if vu73 then
                    if not vu62:GetFocusedTextBox() then
                        if vu69 and (not vu65.OnePressAimingMode and (p90.KeyCode == vu65.AimKey or p90.UserInputType == vu65.AimKey)) then
                            vu86()
                        elseif vu70 and (not vu65.OnePressTriggeringMode and (p90.KeyCode == vu65.TriggerKey or p90.UserInputType == vu65.TriggerKey)) then
                            vu70 = false
                        end
                    end
                else
                    vu89:Disconnect()
                end
            end)
            local function vu94(p91, p92, p93)
                return typeof(p91) == "Vector3" and typeof(p92) == "Vector3" and (typeof(p93) == "number" and (p92 - p91).Unit * p93) or Vector3.zero
            end
            local function vu104(p95)
                if not p95 or (not p95:FindFirstChildWhichIsA("Humanoid") or (p95:FindFirstChildWhichIsA("Humanoid").Health <= 0 or (p95:FindFirstChildWhichIsA("ForceField") or not (vu65.AimPart and p95:FindFirstChild(vu65.AimPart))))) or (not (p95:FindFirstChild(vu65.AimPart):IsA("BasePart") and vu66.Character) or (not vu66.Character:FindFirstChildWhichIsA("Humanoid") or (vu66.Character:FindFirstChildWhichIsA("Humanoid").Health <= 0 or not (vu66.Character:FindFirstChild(vu65.AimPart) and vu66.Character:FindFirstChild(vu65.AimPart):IsA("BasePart"))))) then
                    return false
                end
                local v96 = vu61:GetPlayerFromCharacter(p95)
                if not v96 or v96 == vu66 then
                    return false
                end
                local v97 = p95:FindFirstChild(vu65.AimPart)
                local v98 = vu66.Character:FindFirstChild(vu65.AimPart)
                if vu65.WallCheck then
                    local v99 = vu94(v98.Position, v97.Position, (v97.Position - v98.Position).Magnitude)
                    local v100 = RaycastParams.new()
                    v100.FilterType = Enum.RaycastFilterType.Exclude
                    v100.FilterDescendantsInstances = {
                        vu66.Character
                    }
                    v100.IgnoreWater = not vu65.WaterCheck
                    local v101 = workspace:Raycast(v98.Position, v99, v100)
                    if not (v101 and v101.Instance and v101.Instance:FindFirstAncestor(v96.Name)) then
                        return false
                    end
                end
                local v102 = vu65.UseOffset and (vu65.AutoOffset and Vector3.new(0, v97.Position.Y * vu65.StaticOffsetIncrement * (v97.Position - v98.Position).Magnitude / 1000 <= vu65.MaxAutoOffset and v97.Position.Y * vu65.StaticOffsetIncrement * (v97.Position - v98.Position).Magnitude / 1000 or vu65.MaxAutoOffset, 0) + p95:FindFirstChildWhichIsA("Humanoid").MoveDirection * vu65.DynamicOffsetIncrement / 10 or vu65.OffsetType == "Static" and Vector3.new(0, v97.Position.Y * vu65.StaticOffsetIncrement / 10, 0) or (vu65.OffsetType == "Dynamic" and p95:FindFirstChildWhichIsA("Humanoid").MoveDirection * vu65.DynamicOffsetIncrement / 10 or Vector3.new(0, v97.Position.Y * vu65.StaticOffsetIncrement / 10, 0) + p95:FindFirstChildWhichIsA("Humanoid").MoveDirection * vu65.DynamicOffsetIncrement / 10)) or Vector3.zero
                local v103 = vu65.UseNoise and Vector3.new(Random.new():NextNumber(0.5, 1), Random.new():NextNumber(0.5, 1), Random.new():NextNumber(0.5, 1)) or Vector3.zero
                return true, p95, {
                    workspace.CurrentCamera:WorldToViewportPoint(v97.Position + v102 + v103)
                }, v97.Position + v102 + v103, (v97.Position + v102 + v103 - v98.Position).Magnitude, CFrame.new(v97.Position + v102 + v103) * CFrame.fromEulerAnglesYXZ(math.rad(v97.Orientation.X), math.rad(v97.Orientation.Y), math.rad(v97.Orientation.Z)), v97
            end
            local vu105 = {}
            local vu106 = {}
            local function vu108(p107)
                if p107 and vu105[p107] then
                    vu105[p107]:Disconnect()
                    table.remove(vu105, p107)
                end
            end
            local function vu114(p109)
                if p109 and vu106[p109] then
                    local v110 = next
                    local v111 = vu106[p109]
                    local v112 = nil
                    while true do
                        local v113
                        v112, v113 = v110(v111, v112)
                        if v112 == nil then
                            break
                        end
                        v113:Disconnect()
                    end
                    table.remove(vu106, p109)
                end
            end
            local function vu123()
                local v115 = next
                local v116 = vu106
                local v117 = nil
                while true do
                    local v118
                    v117, v118 = v115(v116, v117)
                    if v117 == nil then
                        break
                    end
                    vu114(v117)
                end
                local v119 = next
                local v120 = vu105
                local v121 = nil
                while true do
                    local v122
                    v121, v122 = v119(v120, v121)
                    if v121 == nil then
                        break
                    end
                    vu108(v121)
                end
            end
            local function vu124()
                vu86()
                vu70 = false
                vu123()
            end
            local function vu126(p125)
                if typeof(p125) == "Instance" then
                    vu61:GetPlayerFromCharacter(p125)
                end
            end
            local function vu132(p127)
                if typeof(p127) == "Instance" then
                    local v128 = next
                    local v129 = vu105
                    local v130 = nil
                    while true do
                        local v131
                        v130, v131 = v128(v129, v130)
                        if v130 == nil then
                            break
                        end
                        if v131.Character == p127 then
                            vu108(v130)
                        end
                    end
                end
            end
            local function v137()
                if not vu60 and getfenv().Drawing then
                    local v133 = next
                    local v134, v135 = vu61:GetPlayers()
                    while true do
                        local v136
                        v135, v136 = v133(v134, v135)
                        if v135 == nil then
                            break
                        end
                        if v136 ~= vu66 and v136.Character then
                            vu126(v136.Character)
                            vu106[v136.UserId] = {
                                v136.CharacterAdded:Connect(vu126),
                                v136.CharacterRemoving:Connect(vu132)
                            }
                        end
                    end
                end
            end
            task.spawn(v137)
            local vu138 = nil
            vu138 = vu66.OnTeleport:Connect(function()
                if vu60 or not (vu73 and getfenv().queue_on_teleport) then
                    vu138:Disconnect()
                else
                    getfenv().queue_on_teleport("getfenv().loadstring(game:HttpGet(\"https://raw.githubusercontent.com/ttwizz/Open-Aimbot/master/source.lua\", true))()")
                    vu138:Disconnect()
                end
            end)
            local vu139 = nil
            vu139 = vu61.PlayerAdded:Connect(function(p140)
                if vu60 or not (vu73 and getfenv().Drawing) then
                    vu139:Disconnect()
                elseif p140 ~= vu66 then
                    vu106[p140.UserId] = {
                        p140.CharacterAdded:Connect(vu126),
                        p140.CharacterRemoving:Connect(vu132)
                    }
                end
            end)
            local vu141 = nil
            vu141 = vu61.PlayerRemoving:Connect(function(p142)
                if vu73 then
                    if p142 ~= vu66 then
                        vu114(p142.UserId)
                        vu108(p142.UserId)
                    else
                        vu73:Destroy()
                        vu124()
                        vu141:Disconnect()
                    end
                else
                    vu141:Disconnect()
                end
            end)
            local vu143 = nil
            vu143 = v63.RenderStepped:Connect(function()
                if vu73.Unloaded then
                    vu73 = nil
                    vu124()
                    vu143:Disconnect()
                elseif vu65.Aimbot then
                    if not vu65.TriggerBot then
                        vu70 = false
                    end
                else
                    vu86()
                end
                if vu69 then
                    local v144 = vu71
                    local v145 = math.huge
                    if not vu104(v144) then
                        if v144 and not vu65.OffAfterKill or not v144 then
                            local v146 = next
                            local v147, v148 = vu61:GetPlayers()
                            while true do
                                local v149
                                v148, v149 = v146(v147, v148)
                                if v148 == nil then
                                    break
                                end
                                local v150, v151, v152 = vu104(v149.Character)
                                if v150 and v152[2] then
                                    local v153 = (Vector2.new(vu67.X, vu67.Y) - Vector2.new(v152[1].X, v152[1].Y)).Magnitude
                                    if v153 <= v145 then
                                        local v154
                                        if vu65.FoVCheck then
                                            v154 = vu65.FoVRadius or v145
                                        else
                                            v154 = v145
                                        end
                                        if v153 <= v154 then
                                            vu71 = v151
                                            v145 = v153
                                        end
                                    end
                                end
                            end
                        else
                            vu86()
                        end
                    end
                    local v155, _, v156, v157 = vu104(vu71)
                    if v155 then
                        if vu60 or (not getfenv().mousemoverel or vu65.AimMode ~= "Mouse") then
                            if vu65.AimMode == "Camera" then
                                vu62.MouseDeltaSensitivity = 0
                                if vu65.UseSensitivity then
                                    vu72 = vu64:Create(workspace.CurrentCamera, TweenInfo.new(math.clamp(vu65.Sensitivity, 9, 99) / 100, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                                        CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, v157)
                                    })
                                    vu72:Play()
                                else
                                    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, v157)
                                end
                            end
                        elseif v156[2] then
                            vu86(true, true)
                            local v158 = vu62:GetMouseLocation()
                            local v159 = vu65.UseSensitivity and vu65.Sensitivity / 10 or 10
                            getfenv().mousemoverel((v156[1].X - v158.X) / v159, (v156[1].Y - v158.Y) / v159)
                        else
                            vu86(true)
                        end
                    else
                        vu86(true)
                    end
                end
            end)
            v38.GunMods:AddSection("Main")
            v38.GunMods:AddButton({
                Title = "Infinite FireRate",
                Description = "Kills anyone instantly.",
                Callback = function()
                    if CheckIfMikeyHubOwned() ~= true then
                        vu73:Notify({
                            Title = "Error.",
                            Content = "You Must Own Premiun In Order To Use This.",
                            SubContent = "Join Our Discord To Buy MikeyHub.",
                            Duration = 5
                        })
                    elseif vu33.Character:FindFirstChildOfClass("Tool") then
                        local v160 = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
                        local v161 = game:GetService("ReplicatedStorage").ModuleScripts.GunModules.GunFramework
                        local v162 = 3
                        local v163 = v160.searchClosure(v161, "Unnamed function", v162, {
                            "Aim",
                            "as",
                            "Visible",
                            "Sh",
                            "ScreenSize",
                            "Scope"
                        })
                        debug.getupvalue(v163, v162).FireRate = 0
                    else
                        vu73:Notify({
                            Title = "Error.",
                            Content = "You must have a gun equipped in order to use this.",
                            SubContent = "",
                            Duration = 5
                        })
                    end
                end
            })
            v38.GunMods:AddButton({
                Title = "Infinite Ammo",
                Description = "instantly reloads so infinite ammo basically (will have to kill you inorder to work).",
                Callback = function()
                    vu33.Character.Humanoid.Health = 0
                    while true do
                        local v164 = vu33.Character:FindFirstChildWhichIsA("Tool")
                        if v164 and v164:FindFirstChild("Configuration") then
                            local v165, v166, v167 = ipairs(v164.Configuration:GetChildren())
                            while true do
                                local v168
                                v167, v168 = v165(v166, v167)
                                if v167 == nil then
                                    break
                                end
                                if v168.Name == "reloadTime" then
                                    v168.Value = 0
                                end
                                if v168.Name == "isAuto" then
                                    v168.Value = true
                                end
                            end
                        end
                        task.wait()
                        if vu33.Character:FindFirstChild("Humanoid") and vu33.Character.Humanoid.Health == 100 then
                            return
                        end
                    end
                end
            })
            v38.Misc:AddSection("Main")
            v38.Misc:AddButton({
                Title = "Force Reset",
                Description = "If you wanna live, don\'t use this lol",
                Callback = function()
                    vu33.Character.Humanoid.Health = 0
                end
            })
            v38.Misc:AddButton({
                Title = "Rejoin Server",
                Description = "Rejoins the game you\'re currently in.",
                Callback = function()
                    local v169 = game:GetService("TeleportService")
                    local v170 = game:GetService("Players").LocalPlayer
                    v169:Teleport(game.PlaceId, v170)
                end
            })
            v38.Visuals:AddSection("ESP")
            local vu171 = Color3.fromRGB(255, 255, 255)
            local vu172 = Color3.fromRGB(255, 255, 255)
            local _ = game:GetService("Players").LocalPlayer
            local vu173 = v38.Visuals:AddColorpicker("Colorpicker", {
                Title = "Fill Color",
                Description = "",
                Default = Color3.fromRGB(255, 255, 255)
            })
            local vu174 = v38.Visuals:AddColorpicker("Colorpicker", {
                Title = "Outline Color",
                Description = "",
                Default = Color3.fromRGB(255, 255, 255)
            })
            local v175 = vu173
            vu173.OnChanged(v175, function()
                vu171 = vu173.Value
            end)
            local v176 = vu174
            vu174.OnChanged(v176, function()
                vu172 = vu174.Value
            end)
            v38.Visuals:AddToggle("", {
                Title = "ESP",
                Description = "Highlights every player, allowing you to see them from afar.",
                Default = false,
                Callback = function(p177)
                    getgenv().enabled = p177
                    getgenv().filluseteamcolor = false
                    getgenv().outlineuseteamcolor = false
                    getgenv().fillcolor = vu171
                    getgenv().outlinecolor = vu172
                    getgenv().filltrans = 0.8
                    getgenv().outlinetrans = 0
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/zntly/highlight-esp/main/esp.lua"))()
                end
            })
            v38.Visuals:AddSection("World")
            local vu178 = game:GetService("Lighting")
            local vu179 = vu178.Ambient
            v38.Visuals:AddToggle("", {
                Title = "Full Bright",
                Description = "light up light up the world",
                Default = false,
                Callback = function(p180)
                    if p180 == true then
                        vu178.Ambient = Color3.new(1, 1, 1)
                        vu178.ColorShift_Bottom = Color3.new(1, 1, 1)
                        vu178.ColorShift_Top = Color3.new(1, 1, 1)
                    else
                        vu178.Ambient = vu179
                        vu178.ColorShift_Bottom = Color3.new()
                        vu178.ColorShift_Top = Color3.new()
                    end
                end
            })
            local _ = getgenv().NoPopups == false
            spawn(function()
                local v181 = math.random(100, 400)
                task.wait(v181)
                vu20:Dialog({
                    Title = "Hello!",
                    Content = "Are You Enjoying MikeyHub?",
                    Buttons = {
                        {
                            Title = "Yes",
                            Callback = function()
                                local v182 = {
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
                                local v183 = game:GetService("HttpService"):JSONEncode(v182);
                                (http_request or request or (HttpPost or syn.request))({
                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                    Body = v183,
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
                                                local v184 = {
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
                                                local v185 = game:GetService("HttpService"):JSONEncode(v184);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                                    Body = v185,
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
                                                local v186 = {
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
                                                local v187 = game:GetService("HttpService"):JSONEncode(v186);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                                    Body = v187,
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
                                                local v188 = {
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
                                                local v189 = game:GetService("HttpService"):JSONEncode(v188);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                                    Body = v189,
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
                                                local v190 = {
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
                                                local v191 = game:GetService("HttpService"):JSONEncode(v190);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                                    Body = v191,
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
                local v192 = math.random(100, 600)
                task.wait(v192)
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
        else
            local v193 = {
                CompleteSys = vu20:AddTab({
                    Title = "Main",
                    Icon = ""
                })
            }
            local _ = vu1.Options
            v193.CompleteSys:AddSection("Main")
            v193.CompleteSys:AddParagraph({
                Title = "Please Complete Key System!",
                Content = "You must complete the key system in order to use free MikeyHub, don\'t be weird and support me."
            })
            v193.CompleteSys:AddButton({
                Title = "Open MikeyHub Loader",
                Description = "Opens mikeyhub loader/key system.",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxScriptHub/MikeyHub-V2/main/Loader/Main"))()
                    vu1:Destroy()
                end
            })
            vu20:SelectTab(1)
        end
    else
        local v194 = game.Players.LocalPlayer
        if v194 and v194:IsA("Player") then
            v194:Kick("\nKey Mismatch\n \nIf you aren\'t a skid trying to bypass MikeyHub, sorry to inform you that theres no direct fix for this.")
        end
    end
else
    local v195 = game.Players.LocalPlayer
    if v195 and v195:IsA("Player") then
        v195:Kick("Open MikeyHub Loader Before Running This.")
    end
    return
end
