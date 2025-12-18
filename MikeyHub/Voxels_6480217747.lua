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
    Acrylic = getgenv().Blur or false,
    Theme = getgenv().Theme or "Dark",
    MinimizeKey = getgenv().MinizeKey or Enum.KeyCode.LeftAlt
})
local function v24(p21)
    local v22 = 0
    for v23 = 1, # p21 do
        v22 = (v22 + string.byte(p21, v23) * v23) % 4294967296
    end
    return tostring(v22)
end
local v25 = getgenv().CollectMikeyHubData
if v25 then
    v25 = getgenv().CollectMikeyHubData.Test
end
local v26 = getgenv().LoaderKey
if v26 then
    v26 = v24(getgenv().LoaderKey)
end
if getgenv().LoaderKey ~= nil then
    if v26 == v25 then
        local function v28()
            local v27 = cloneref(game:GetService("Players"))
            return tostring(v27.LocalPlayer.UserId)
        end
        local vu29 = game:GetService("UserInputService")
        local v30 = vu29
        table.find({
            Enum.Platform.IOS,
            Enum.Platform.Android
        }, vu29.GetPlatform(v30))
        local v31 = identifyexecutor()
        local vu32 = game:GetService("Players").LocalPlayer
        local vu33 = vu32.UserId
        local function v35()
            local v34 = vu29:GetPlatform()
            return v34 ~= Enum.Platform.Android and (v34 ~= Enum.Platform.IOS and "PC" or "IPhone") or "Android"
        end
        if v16() ~= false then
            local v36 = {}
            local v37 = {}
            local v38 = {
                author = {
                    name = "Blacklisted User Has Executed! - MikeyHub",
                    icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu33 .. "&width=420&height=420"
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
                        value = v31,
                        inline = true
                    },
                    {
                        name = "Device :",
                        value = v35(),
                        inline = true
                    },
                    {
                        name = "PandaAuth HWID :",
                        value = v28(),
                        inline = true
                    }
                }
            }
            __set_list(v37, 1, {
                v38
            })
            v36.embeds = v37
            local v39 = game:GetService("HttpService"):JSONEncode(v36);
            (http_request or request or (HttpPost or syn.request))({
                Url = "https://discord.com/api/webhooks/1274850660550049844/xyyZynAaVyeELiM0blJRu1pJBjwnwMi_P6a9tk_FicTQ_PO85rn_h5z_JX6aRAX_9hxr",
                Body = v39,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                }
            })
            vu32:Kick("\nYou\'re Banned From MikeyHub \n \nReason: " .. vu9 .. "\n \nIf You Believe This is A Mistake\nContact Mods Within The Server.\nHWID: " .. vu6)
        elseif getgenv().CollectMikeyHubData.KeySystem ~= true then
            local v40 = {
                CompleteSys = vu20:AddTab({
                    Title = "Main",
                    Icon = ""
                })
            }
            local _ = vu1.Options
            v40.CompleteSys:AddSection("Main")
            v40.CompleteSys:AddParagraph({
                Title = "Please Complete Key System!",
                Content = "You must complete the key system in order to use free MikeyHub, don\'t be weird and support me."
            })
            v40.CompleteSys:AddButton({
                Title = "Open MikeyHub Loader",
                Description = "Opens mikeyhub loader/key system.",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxScriptHub/MikeyHub-V2/main/Loader/Main"))()
                    vu1:Destroy()
                end
            })
            vu20:SelectTab(1)
        else
            local v41 = {
                Player = vu20:AddTab({
                    Title = "| Player",
                    Icon = "user"
                }),
                Combat = vu20:AddTab({
                    Title = "| Combat",
                    Icon = "sword"
                }),
                World = vu20:AddTab({
                    Title = "| World",
                    Icon = "box"
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
            local vu42 = nil
            local vu43 = nil
            vu42 = hookmetamethod(game, "__namecall", function(p44, ...)
                local v45 = getnamecallmethod()
                local v46 = {
                    ...
                }
                if not checkcaller() and (p44.Name == "UpdatePlayerTarget" and v45 == "FireServer") then
                    vu43 = tostring(v46[3])
                    print(vu43)
                end
                return vu42(p44, ...)
            end)
            v41.Player:AddSection("Legit")
            v41.Player:AddButton({
                Title = "Anti Fall Damage",
                Description = "fall damage begone",
                Callback = function()
                    local vu47 = nil
                    local _ = hookmetamethod(game, "__namecall", function(p48, ...)
                        local v49 = getnamecallmethod()
                        if checkcaller() or (p48.Name ~= "FallDamage" or v49 ~= "FireServer") then
                            return vu47(p48, ...)
                        else
                            return wait(9000000000)
                        end
                    end)
                end
            })
            v41.Player:AddButton({
                Title = "Anti Drown Damage",
                Description = "you become a fish",
                Callback = function()
                    local vu50 = nil
                    local _ = hookmetamethod(game, "__namecall", function(p51, ...)
                        local v52 = getnamecallmethod()
                        if checkcaller() or (p51.Name ~= "DrownDamage" or v52 ~= "FireServer") then
                            return vu50(p51, ...)
                        else
                            return wait(9000000000)
                        end
                    end)
                end
            })
            v41.Player:AddButton({
                Title = "No Knockback",
                Description = "Makes you take no knockback",
                Callback = function()
                    local v53 = game:GetService("ReplicatedStorage").Systems.CombatSystem.Configuration
                    require(v53).PLAYER_KNOCKBACK_FORCE = 0
                end
            })
            v41.Player:AddSection("Blatant")
            local vu54 = nil
            infJumpDebounce = false
            v41.Player:AddToggle("", {
                Title = "Infinite Jump",
                Description = "jump jump jump",
                Default = false,
                Callback = function(p55)
                    if p55 == true then
                        vu54 = vu29.JumpRequest:Connect(function()
                            if not infJumpDebounce then
                                infJumpDebounce = true
                                vu32.Character:FindFirstChildWhichIsA("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
                                wait()
                                infJumpDebounce = false
                            end
                        end)
                    else
                        if vu54 then
                            vu54:Disconnect()
                        end
                        infJumpDebounce = false
                    end
                end
            })
            local vu56 = 16
            local vu57 = 7
            v41.Player:AddSlider("", {
                Title = "Speed",
                Description = "How fast can fast be",
                Default = 16,
                Min = 1,
                Max = 1000,
                Rounding = 0.1,
                Callback = function(p58)
                    vu56 = p58
                end
            })
            v41.Player:AddSlider("", {
                Title = "JumpPower",
                Description = "How high can you really jump",
                Default = 50,
                Min = 1,
                Max = 1000,
                Rounding = 0.1,
                Callback = function(p59)
                    vu57 = p59
                end
            })
            local vu60 = nil
            local vu61 = nil
            local function vu62()
                if vu60 ~= true then
                    vu32.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 16
                else
                    vu32.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = vu56
                end
            end
            local function vu63()
                if vu61 ~= true then
                    if vu32.Character:FindFirstChildOfClass("Humanoid").UseJumpPower ~= true then
                        vu32.Character:FindFirstChildOfClass("Humanoid").JumpHeight = 7
                    else
                        vu32.Character:FindFirstChildOfClass("Humanoid").JumpPower = 50
                    end
                elseif vu32.Character:FindFirstChildOfClass("Humanoid").UseJumpPower ~= true then
                    vu32.Character:FindFirstChildOfClass("Humanoid").JumpHeight = vu57
                else
                    vu32.Character:FindFirstChildOfClass("Humanoid").JumpPower = vu57
                end
            end
            v41.Player:AddToggle("", {
                Title = "Enable Speed",
                Description = "Enables/disables speed changers",
                Default = false,
                Callback = function(p64)
                    vu60 = p64
                    repeat
                        vu62(p64)
                        task.wait(0.1)
                    until vu60 == false
                end
            })
            v41.Player:AddToggle("", {
                Title = "Enable JumpPower",
                Description = "Enables/disables jumppower changers",
                Default = false,
                Callback = function(p65)
                    vu61 = p65
                    repeat
                        vu63()
                        task.wait(0.1)
                    until vu61 == false
                end
            })
            v41.Combat:AddSection("Hitbox Expander")
            local vu66 = 5
            local vu67 = 1
            local vu68 = nil
            local vu69 = true
            v41.Combat:AddSlider("", {
                Title = "Hitbox Size",
                Description = "",
                Default = 5,
                Min = 1,
                Max = 20,
                Rounding = 0.1,
                Callback = function(p70)
                    vu66 = p70
                end
            })
            v41.Combat:AddToggle("", {
                Title = "Hitbox Visualizer",
                Description = "",
                Default = true,
                Callback = function(p71)
                    vu69 = p71
                end
            })
            v41.Combat:AddToggle("", {
                Title = "Hitbox Expander",
                Description = "Reach but for guns?",
                Default = false,
                Callback = function(p72)
                    vu68 = p72
                    local vu73 = game:GetService("Players").LocalPlayer
                    local function v81(p74, p75)
                        local v76, v77, v78 = ipairs(game:GetService("Workspace"):GetDescendants())
                        while true do
                            local v79
                            v78, v79 = v76(v77, v78)
                            if v78 == nil then
                                break
                            end
                            if v79:FindFirstChild("HumanoidRootPart") and v79.Name ~= vu73.Name and game.Players:FindFirstChild(v79.Name) then
                                local v80 = v79.HumanoidRootPart
                                if v80 then
                                    if vu68 then
                                        if v80.Size ~= Vector3.new(p74, p74, p74) then
                                            v80.Size = Vector3.new(p74, p74, p74)
                                            v80.BrickColor = BrickColor.new("Really black")
                                            v80.Transparency = p75 and 0.5 or 1
                                            v80.Material = "Neon"
                                        end
                                    else
                                        v80.Size = Vector3.new(1, 2, 1)
                                        v80.BrickColor = BrickColor.new("Really black")
                                        v80.Transparency = p75 and 0.5 or vu67
                                        v80.Material = "Neon"
                                    end
                                end
                            end
                        end
                    end
                    while vu68 do
                        while vu68 do
                            v81(vu66, vu69)
                            task.wait(0.1)
                        end
                        v81(2, false)
                        v81(vu66, vu69)
                        task.wait(0.1)
                    end
                end
            })
            v41.Combat:AddSection("Kill Aura")
            local vu82 = false
            local vu83 = 50
            local vu84 = 0.1
            v41.Combat:AddSlider("", {
                Title = "Range",
                Description = "",
                Default = 50,
                Min = 1,
                Max = 50,
                Rounding = 0.1,
                Callback = function(p85)
                    vu83 = tonumber(p85) or vu83
                end
            })
            v41.Combat:AddToggle("", {
                Title = "Kill Aura",
                Description = "Say goodbye to anyone that gets near you.",
                Default = false,
                Callback = function(p86)
                    vu82 = p86
                    local function v89(p87)
                        local v88 = {
                            workspace:WaitForChild("Characters"):WaitForChild(p87),
                            "1"
                        }
                        game:GetService("ReplicatedStorage"):WaitForChild("Systems"):WaitForChild("ActionsSystem"):WaitForChild("Network"):WaitForChild("Attack"):InvokeServer(unpack(v88))
                    end
                    while vu82 do
                        local v90, v91, v92 = ipairs(game.Players:GetPlayers())
                        while true do
                            local v93
                            v92, v93 = v90(v91, v92)
                            if v92 == nil then
                                break
                            end
                            if v93 ~= vu32 then
                                local v94 = v93.Character
                                if v94 and (v94:FindFirstChild("Humanoid") and (v94.Humanoid.Health > 0 and (v94:FindFirstChild("HumanoidRootPart") and (vu32.Character.HumanoidRootPart.Position - v94.HumanoidRootPart.Position).Magnitude <= vu83))) then
                                    v89(v94.Name)
                                end
                            end
                        end
                        task.wait(vu84)
                    end
                end
            })
            v41.World:AddSection("World")
            v41.World:AddToggle("", {
                Title = "Destroy World (BETA)",
                Description = "Destroys the chunk around you. (LAGGY)\nTHIS IS EXTREMELY SLOW\nDESTROY A BLOCK TO START\nCHECK CONSOLE TO SEE IF ITS WORKING.",
                Default = false,
                Callback = function(p95)
                    if vu8() ~= true then
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You Must Own Premium In Order To Use This.",
                            SubContent = "Join Our Discord To Buy MikeyHub.",
                            Duration = 5
                        })
                    else
                        local function v100()
                            local v96 = game.Players.LocalPlayer.Character
                            if not v96 then
                                return nil
                            end
                            local v97 = v96:FindFirstChild("HumanoidRootPart")
                            if not v97 then
                                return nil
                            end
                            local v98 = Ray.new(v97.Position, Vector3.new(0, - 5, 0))
                            local v99, _ = workspace:FindPartOnRay(v98, v96)
                            return v99
                        end
                        local function v105(p101)
                            local v102 = tonumber(p101)
                            if v102 then
                                local v103 = v102 + 1
                                local v104 = math.ceil(v103 / 100000) * 100000
                                if v104 <= v103 then
                                    return v104
                                else
                                    return v103
                                end
                            else
                                print("Invalid value (destroy world): " .. tostring(p101))
                                return nil
                            end
                        end
                        while p95 do
                            if vu43 ~= nil then
                                local v106 = v100()
                                if v106 then
                                    local v107 = v106.Parent
                                    if v107 then
                                        local v108, v109 = v107.Name:match("([^_]*)_([^_]*)")
                                        if v108 and (v109 and vu43 ~= "Error") then
                                            local v110 = v105(vu43)
                                            if not v110 then
                                                print("Failed to calc next number.")
                                                vu43 = "0"
                                                v110 = v105(vu43)
                                            end
                                            local v111 = math.ceil(v110 / 100000) * 100000
                                            while v110 and v110 < v111 do
                                                local vu112 = {
                                                    v108,
                                                    v109,
                                                    tostring(v110),
                                                    8,
                                                    1
                                                }
                                                print("Destroying block: ", table.concat(vu112, ", "))
                                                local _, _ = pcall(function()
                                                    game:GetService("ReplicatedStorage"):WaitForChild("Systems"):WaitForChild("ActionsSystem"):WaitForChild("Network"):WaitForChild("Break"):InvokeServer(unpack(vu112))
                                                end)
                                                vu43 = tostring(v110)
                                                v110 = v105(vu43)
                                                if not v110 then
                                                    break
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                            task.wait(0.001)
                        end
                    end
                end
            })
            v41.World:AddSection("Misc")
            v41.World:AddButton({
                Title = "Collect All Droped Items",
                Description = "Collects every dropped item",
                Callback = function()
                    local function v114(p113)
                        print(p113.Name)
                        if p113:FindFirstChild("TouchInterest") then
                            p113.Size = Vector3.new(2048, 2048, 2048)
                            print("Made parent size 2048,2048,2048")
                        end
                    end
                    local v115 = workspace:FindFirstChild("Drops")
                    if v115 then
                        local v116, v117, v118 = pairs(v115:GetChildren())
                        while true do
                            local v119
                            v118, v119 = v116(v117, v118)
                            if v118 == nil then
                                break
                            end
                            local v120 = v119:FindFirstChild("Hitbox")
                            if v120 and v120:FindFirstChild("TouchInterest") then
                                v114(v119:FindFirstChild("Hitbox"))
                            end
                        end
                    end
                end
            })
            v41.Misc:AddSection("Main")
            v41.Misc:AddButton({
                Title = "Force Reset",
                Description = "If you wanna live, don\'t use this lol",
                Callback = function()
                    vu32.Character.Humanoid.Health = 0
                end
            })
            v41.Misc:AddButton({
                Title = "Rejoin Server",
                Description = "Rejoins the game you\'re currently in.",
                Callback = function()
                    local v121 = game:GetService("TeleportService")
                    local v122 = game:GetService("Players").LocalPlayer
                    v121:Teleport(game.PlaceId, v122)
                end
            })
            v41.Visuals:AddSection("ESP")
            local vu123 = Color3.fromRGB(255, 255, 255)
            local vu124 = Color3.fromRGB(255, 255, 255)
            local _ = game:GetService("Players").LocalPlayer
            local vu125 = v41.Visuals:AddColorpicker("Colorpicker", {
                Title = "Fill Color",
                Description = "",
                Default = Color3.fromRGB(255, 255, 255)
            })
            local vu126 = v41.Visuals:AddColorpicker("Colorpicker", {
                Title = "Outline Color",
                Description = "",
                Default = Color3.fromRGB(255, 255, 255)
            })
            local v127 = vu125
            vu125.OnChanged(v127, function()
                vu123 = vu125.Value
            end)
            local v128 = vu126
            vu126.OnChanged(v128, function()
                vu124 = vu126.Value
            end)
            v41.Visuals:AddToggle("", {
                Title = "ESP",
                Description = "Highlights every player, allowing you to see them from afar.",
                Default = false,
                Callback = function(p129)
                    getgenv().enabled = p129
                    getgenv().filluseteamcolor = false
                    getgenv().outlineuseteamcolor = false
                    getgenv().fillcolor = vu123
                    getgenv().outlinecolor = vu124
                    getgenv().filltrans = 0
                    getgenv().outlinetrans = 0
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/zntly/highlight-esp/main/esp.lua"))()
                end
            })
            v41.Visuals:AddSection("World")
            local vu130 = game:GetService("Lighting")
            local vu131 = vu130.Ambient
            v41.Visuals:AddToggle("", {
                Title = "Full Bright",
                Description = "light up light up the world",
                Default = false,
                Callback = function(p132)
                    if p132 == true then
                        vu130.Ambient = Color3.new(1, 1, 1)
                        vu130.ColorShift_Bottom = Color3.new(1, 1, 1)
                        vu130.ColorShift_Top = Color3.new(1, 1, 1)
                    else
                        vu130.Ambient = vu131
                        vu130.ColorShift_Bottom = Color3.new()
                        vu130.ColorShift_Top = Color3.new()
                    end
                end
            })
            local _ = getgenv().NoPopups == false
            spawn(function()
                local v133 = math.random(100, 400)
                task.wait(v133)
                vu20:Dialog({
                    Title = "Hello!",
                    Content = "Are You Enjoying MikeyHub?",
                    Buttons = {
                        {
                            Title = "Yes",
                            Callback = function()
                                local v134 = {
                                    embeds = {
                                        {
                                            author = {
                                                name = "User Has Selected Yes!",
                                                icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu33 .. "&width=420&height=420"
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
                                local v135 = game:GetService("HttpService"):JSONEncode(v134);
                                (http_request or request or (HttpPost or syn.request))({
                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                    Body = v135,
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
                                                local v136 = {
                                                    embeds = {
                                                        {
                                                            author = {
                                                                name = "User Has Selected No.",
                                                                icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu33 .. "&width=420&height=420"
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
                                                local v137 = game:GetService("HttpService"):JSONEncode(v136);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                                    Body = v137,
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
                                                local v138 = {
                                                    embeds = {
                                                        {
                                                            author = {
                                                                name = "User Has Selected No.",
                                                                icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu33 .. "&width=420&height=420"
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
                                                local v139 = game:GetService("HttpService"):JSONEncode(v138);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                                    Body = v139,
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
                                                local v140 = {
                                                    embeds = {
                                                        {
                                                            author = {
                                                                name = "User Has Selected No.",
                                                                icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu33 .. "&width=420&height=420"
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
                                                local v141 = game:GetService("HttpService"):JSONEncode(v140);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                                    Body = v141,
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
                                                local v142 = {
                                                    embeds = {
                                                        {
                                                            author = {
                                                                name = "User Has Selected No.",
                                                                icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu33 .. "&width=420&height=420"
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
                                                local v143 = game:GetService("HttpService"):JSONEncode(v142);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                                    Body = v143,
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
                local v144 = math.random(100, 600)
                task.wait(v144)
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
        local v145 = game.Players.LocalPlayer
        if v145 and v145:IsA("Player") then
            v145:Kick("\nKey Mismatch\n \nIf you aren\'t a skid trying to bypass MikeyHub, sorry to inform you that theres no direct fix for this.")
        end
    end
else
    local v146 = game.Players.LocalPlayer
    if v146 and v146:IsA("Player") then
        v146:Kick("Open MikeyHub Loader Before Running This.")
    end
    return
end
