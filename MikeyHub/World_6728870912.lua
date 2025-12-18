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
local function v8()
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
if v8() ~= true then
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
                AutoFarm = vu20:AddTab({
                    Title = "| AutoFarm",
                    Icon = "home"
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
            v41.Player:AddSection("Main")
            local vu42 = game:GetService("UserInputService")
            local vu43 = nil
            infJumpDebounce = false
            v41.Player:AddToggle("", {
                Title = "Infinite Jump",
                Description = "jump jump jump",
                Default = false,
                Callback = function(p44)
                    if p44 == true then
                        vu43 = vu42.JumpRequest:Connect(function()
                            if not infJumpDebounce then
                                infJumpDebounce = true
                                vu32.Character:FindFirstChildWhichIsA("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
                                wait()
                                infJumpDebounce = false
                            end
                        end)
                    else
                        if vu43 then
                            vu43:Disconnect()
                        end
                        infJumpDebounce = false
                    end
                end
            })
            local vu45 = nil
            local function vu54(_)
                if vu45 ~= true then
                    vu45 = false
                else
                    local v46, v47, v48 = pairs(workspace:GetChildren())
                    while true do
                        local v49
                        v48, v49 = v46(v47, v48)
                        if v48 == nil then
                            break
                        end
                        if v49.Name == vu32.Name then
                            local v50, v51, v52 = pairs(workspace[vu32.Name]:GetChildren())
                            while true do
                                local v53
                                v52, v53 = v50(v51, v52)
                                if v52 == nil then
                                    break
                                end
                                if v53:IsA("BasePart") then
                                    v53.CanCollide = false
                                end
                            end
                        end
                    end
                end
            end
            v41.Player:AddToggle("", {
                Title = "No Clip",
                Description = "boo bitch im a ghost",
                Default = false,
                Callback = function(p55)
                    vu45 = p55
                    vu54(p55)
                end
            })
            v41.AutoFarm:AddSection("AutoFarm Mob")
            local vu56 = 9
            local v57 = v41.AutoFarm:AddDropdown("", {
                Title = "Mob",
                Description = "",
                Values = {
                    "Thug",
                    "Criminal",
                    "Strong Thug",
                    "Vampire Capo",
                    "Mobster",
                    "Speedwagon Gang Member",
                    "Corrupt Cop"
                },
                Multi = false,
                Default = "Thug"
            })
            local vu58 = nil
            v57:OnChanged(function(p59)
                vu58 = p59
            end)
            v41.AutoFarm:AddSlider("Distance", {
                Title = "Distance",
                Description = "",
                Default = 6,
                Min = 1,
                Max = 10,
                Rounding = 0.1,
                Callback = function(p60)
                    vu56 = p60
                end
            })
            v41.AutoFarm:AddSlider("Tween Speed", {
                Title = "Tween Speed",
                Description = "500 = Safe, 1000 = Risky.",
                Default = 750,
                Min = 1,
                Max = 1000,
                Rounding = 0.1,
                Callback = function(p61)
                    tweenspeed = p61
                end
            })
            local function vu87(p62, p63)
                local v64 = game.Players.LocalPlayer
                local v65 = v64.Character
                if p63 == true then
                    local v66, v67, v68 = pairs(workspace:GetChildren())
                    while true do
                        local v69
                        v68, v69 = v66(v67, v68)
                        if v68 == nil then
                            break
                        end
                        if v69.Name == v64.Name then
                            local v70, v71, v72 = pairs(workspace[v64.Name]:GetChildren())
                            while true do
                                local v73
                                v72, v73 = v70(v71, v72)
                                if v72 == nil then
                                    break
                                end
                                if v73:IsA("BasePart") then
                                    v73.CanCollide = false
                                end
                            end
                        end
                    end
                end
                local v74 = game:GetService("TweenService")
                game:GetService("RunService")
                if v65 then
                    v65 = v65:FindFirstChild("HumanoidRootPart")
                end
                if v65 then
                    local v75 = v65.Position
                    local v76 = math.huge
                    local v77 = game:GetService("Workspace"):GetChildren()
                    local v78 = nil
                    for v79 = 1, # v77 do
                        local v80 = v77[v79]
                        local v81 = v80:FindFirstChild("HumanoidRootPart")
                        if v81 then
                            if v80.Name == p62 then
                                local v82 = (v75 - v81.Position).Magnitude
                                if v82 < v76 then
                                    v78 = v80
                                    v76 = v82
                                end
                            end
                        end
                    end
                    if v78 then
                        local v83 = v78:FindFirstChild("HumanoidRootPart") and v78.HumanoidRootPart.Position
                        if v83 then
                            local v84 = vu56
                            local v85 = v83 + v78.HumanoidRootPart.CFrame.LookVector * - v84
                            local v86 = v74:Create(v65, TweenInfo.new(math.round((v83 - workspace.CurrentCamera.CFrame.p).Magnitude) / tweenspeed, Enum.EasingStyle.Linear), {
                                CFrame = CFrame.new(v85, v83)
                            })
                            v86:Play()
                            v86.Completed:Wait()
                            if v78:FindFirstChildOfClass("Humanoid") and (v78.Humanoid.Health ~= 0 and (not v78 and v78.Humanoid.Health < 5)) then
                                v78:Destroy()
                            end
                        end
                    else
                        vu1:Notify({
                            Title = "Error.",
                            Content = "Target Not Found.",
                            SubContent = "Waiting Until It Spawns.",
                            Duration = 5
                        })
                        task.wait(5)
                    end
                else
                    return
                end
            end
            local vu88 = nil
            v41.AutoFarm:AddToggle("", {
                Title = "AutoFarm",
                Description = "",
                Default = false,
                Callback = function(p89)
                    vu88 = p89
                    while task.wait() and vu88 do
                        vu87(vu58, vu88)
                    end
                end
            })
            v41.AutoFarm:AddSection("AutoFarm Chest")
            local vu90 = 15
            v41.AutoFarm:AddSlider("Distance", {
                Title = "Wait Time",
                Description = "The time it waits before auto collecting another chest (anytime less than 15 will put you at risk for getting kicked)",
                Default = 15,
                Min = 10,
                Max = 20,
                Rounding = 0.1,
                Callback = function(p91)
                    vu90 = p91
                end
            })
            local vu92 = nil
            v41.AutoFarm:AddToggle("", {
                Title = "Auto Chest",
                Description = "Auto collects every chest in the game",
                Default = false,
                Callback = function(p93)
                    vu92 = p93
                    local vu94 = game.Players.LocalPlayer
                    local vu95 = vu94.Character or vu94.CharacterAdded:Wait()
                    local vu96 = vu95:WaitForChild("HumanoidRootPart")
                    while true do
                        if not vu92 then
                            return
                        end
                        local function v100(p97)
                            vu95 = vu94.Character or vu94.CharacterAdded:Wait()
                            local v98 = vu95:FindFirstChild("Humanoid")
                            if v98 and v98.Health > 0 then
                                vu96 = vu95:FindFirstChild("HumanoidRootPart")
                                if vu96 then
                                    vu96.CFrame = p97.CFrame
                                    wait(1)
                                    local v99 = p97:FindFirstChild("ProximityPrompt")
                                    if v99 and (vu96.Position - p97.Position).Magnitude <= v99.MaxActivationDistance then
                                        fireproximityprompt(v99)
                                    end
                                end
                            else
                                vu1:Notify({
                                    Title = "Chest AutoFarm : ",
                                    Content = "Player has died, reconnecting auto chest.",
                                    SubContent = "",
                                    Duration = 5
                                })
                            end
                        end
                        local v101, v102, v103 = pairs(workspace:GetChildren())
                        local v104 = false
                        while true do
                            local v105
                            v103, v105 = v101(v102, v103)
                            if v103 == nil then
                                break
                            end
                            local v106 = v105:FindFirstChild("Inside")
                            if v106 and v106:FindFirstChild("ProximityPrompt") then
                                v100(v106)
                                vu1:Notify({
                                    Title = "Chest AutoFarm : ",
                                    Content = "Sucessfully found chest, now looking for another chest.",
                                    SubContent = "",
                                    Duration = 15
                                })
                                wait(vu90)
                                v104 = true
                                break
                            end
                        end
                        if not v104 then
                            vu1:Notify({
                                Title = "Chest AutoFarm : ",
                                Content = "No Chest Found, Waiting Until One Spawns.",
                                SubContent = "",
                                Duration = 5
                            })
                            task.wait(5)
                        end
                        task.wait(0.5)
                    end
                end
            })
            v41.Visuals:AddSection("ESP")
            local vu107 = Color3.fromRGB(255, 255, 255)
            local vu108 = Color3.fromRGB(255, 255, 255)
            local _ = game:GetService("Players").LocalPlayer
            local vu109 = v41.Visuals:AddColorpicker("Colorpicker", {
                Title = "Fill Color",
                Description = "",
                Default = Color3.fromRGB(255, 255, 255)
            })
            local vu110 = v41.Visuals:AddColorpicker("Colorpicker", {
                Title = "Outline Color",
                Description = "",
                Default = Color3.fromRGB(255, 255, 255)
            })
            local v111 = vu109
            vu109.OnChanged(v111, function()
                vu107 = vu109.Value
            end)
            local v112 = vu110
            vu110.OnChanged(v112, function()
                vu108 = vu110.Value
            end)
            v41.Visuals:AddToggle("", {
                Title = "ESP",
                Description = "Highlights every player, allowing you to see them from afar.",
                Default = false,
                Callback = function(p113)
                    getgenv().enabled = p113
                    getgenv().filluseteamcolor = false
                    getgenv().outlineuseteamcolor = false
                    getgenv().fillcolor = vu107
                    getgenv().outlinecolor = vu108
                    getgenv().filltrans = 0
                    getgenv().outlinetrans = 0
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/zntly/highlight-esp/main/esp.lua"))()
                end
            })
            v41.Visuals:AddSection("World")
            local vu114 = game:GetService("Lighting")
            local vu115 = vu114.Ambient
            v41.Visuals:AddToggle("", {
                Title = "Full Bright",
                Description = "light up light up the world",
                Default = false,
                Callback = function(p116)
                    if p116 == true then
                        vu114.Ambient = Color3.new(1, 1, 1)
                        vu114.ColorShift_Bottom = Color3.new(1, 1, 1)
                        vu114.ColorShift_Top = Color3.new(1, 1, 1)
                    else
                        vu114.Ambient = vu115
                        vu114.ColorShift_Bottom = Color3.new()
                        vu114.ColorShift_Top = Color3.new()
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
            local _ = getgenv().NoPopups == false
            spawn(function()
                local v117 = math.random(300, 600)
                task.wait(v117)
                vu20:Dialog({
                    Title = "Hello!",
                    Content = "Are You Enjoying MikeyHub?",
                    Buttons = {
                        {
                            Title = "Yes",
                            Callback = function()
                                local v118 = {
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
                                local v119 = game:GetService("HttpService"):JSONEncode(v118);
                                (http_request or request or (HttpPost or syn.request))({
                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                    Body = v119,
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
                                                local v120 = {
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
                                                local v121 = game:GetService("HttpService"):JSONEncode(v120);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1274852458123886592/0LwQKT_5bJvoga9nXrp1D8aakkqgDgTdwBa71satL6c-0kQWNJcYPq4FOlyPzmiRy7GL",
                                                    Body = v121,
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
                                                local v122 = {
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
                                                local v123 = game:GetService("HttpService"):JSONEncode(v122);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1274852458123886592/0LwQKT_5bJvoga9nXrp1D8aakkqgDgTdwBa71satL6c-0kQWNJcYPq4FOlyPzmiRy7GL",
                                                    Body = v123,
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
                                                local v124 = {
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
                                                local v125 = game:GetService("HttpService"):JSONEncode(v124);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1274852458123886592/0LwQKT_5bJvoga9nXrp1D8aakkqgDgTdwBa71satL6c-0kQWNJcYPq4FOlyPzmiRy7GL",
                                                    Body = v125,
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
                                                local v126 = {
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
                                                local v127 = game:GetService("HttpService"):JSONEncode(v126);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1274852458123886592/0LwQKT_5bJvoga9nXrp1D8aakkqgDgTdwBa71satL6c-0kQWNJcYPq4FOlyPzmiRy7GL",
                                                    Body = v127,
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
                local v128 = math.random(100, 600)
                task.wait(v128)
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
        local v129 = game.Players.LocalPlayer
        if v129 and v129:IsA("Player") then
            v129:Kick("\nKey Mismatch\n \nIf you aren\'t a skid trying to bypass MikeyHub, sorry to inform you that theres no direct fix for this.")
        end
    end
else
    local v130 = game.Players.LocalPlayer
    if v130 and v130:IsA("Player") then
        v130:Kick("Open MikeyHub Loader Before Running This.")
    end
    return
end
