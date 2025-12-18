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
local v14 = v13.CheckIfMikeyHubOwned()
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
if v14 == true then
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
            local v43 = {}
            local v44 = {}
            local v45 = {
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
            __set_list(v44, 1, {
                v45
            })
            v43.embeds = v44
            local v46 = game:GetService("HttpService"):JSONEncode(v43);
            (http_request or request or (HttpPost or syn.request))({
                Url = "https://discord.com/api/webhooks/",
                Body = v46,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                }
            })
            vu39:Kick("\nYou\'re Banned From MikeyHub \n \nReason: " .. vu15 .. "\n \nIf You Believe This is A Mistake\nContact Mods Within The Server.\nHWID: " .. vu6)
        elseif getgenv().CollectMikeyHubData.KeySystem ~= true then
            local v47 = {
                CompleteSys = vu26:AddTab({
                    Title = "Main",
                    Icon = ""
                })
            }
            local _ = vu1.Options
            v47.CompleteSys:AddSection("Main")
            v47.CompleteSys:AddParagraph({
                Title = "Please Complete Key System!",
                Content = "You must complete the key system in order to use free MikeyHub, don\'t be weird and support me."
            })
            v47.CompleteSys:AddButton({
                Title = "Open MikeyHub Loader",
                Description = "Opens mikeyhub loader/key system.",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/doghwrf001/MR-S-Unlock/refs/heads/Cracked-Projects/MikeyHub/Owner"))()
                    vu1:Destroy()
                end
            })
            vu26:SelectTab(1)
        else
            local v48 = {
                Main = vu26:AddTab({
                    Title = "| Player",
                    Icon = "user"
                }),
                AutoFarm = vu26:AddTab({
                    Title = "| AutoFarm",
                    Icon = "home"
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
            v48.Main:AddSection("Character")
            v48.Main:AddButton({
                Title = "Infinite Stamina",
                Description = "yes",
                Callback = function()
                    local v49 = next
                    local v50, v51 = getgc(true)
                    while true do
                        local v52
                        v51, v52 = v49(v50, v51)
                        if v51 == nil then
                            break
                        end
                        if typeof(v52) == "function" and debug.info(v52, "n") == "getMaxStamina" then
                            hookfunction(v52, function()
                                return 999999
                            end)
                        end
                    end
                end
            })
            v48.AutoFarm:AddSection("Training")
            v48.AutoFarm:AddToggle("", {
                Title = "Auto Train",
                Description = "",
                Default = false,
                Callback = function(p53)
                    if vu39:GetAttribute("IsWorkingOut") then
                        while p53 do
                            local v54 = {
                                workspace:GetServerTimeNow() - game:GetService("Players").LocalPlayer.AccountAge * 24 * 60 * 60
                            }
                            game:GetService("ReplicatedStorage"):WaitForChild("WorkoutHandler_TriggerWorkoutGain"):FireServer(unpack(v54))
                            task.wait()
                        end
                    else
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You must be working out in order for this to work",
                            SubContent = "",
                            Duration = 5
                        })
                    end
                end
            })
            v48.AutoFarm:AddSection("Prestige")
            v48.AutoFarm:AddToggle("", {
                Title = "Auto Prestige",
                Description = "",
                Default = false,
                Callback = function(p55)
                    while p55 do
                        local v56 = {
                            game:GetService("Players").LocalPlayer
                        }
                        game:GetService("ReplicatedStorage"):WaitForChild("BodyTransform_prestigeToServerEvent"):FireServer(unpack(v56))
                        task.wait()
                    end
                end
            })
            v48.Misc:AddSection("Main")
            v48.Misc:AddButton({
                Title = "Force Reset",
                Description = "If you wanna live, don\'t use this lol",
                Callback = function()
                    vu39.Character.Humanoid.Health = 0
                end
            })
            v48.Misc:AddButton({
                Title = "Rejoin Server",
                Description = "Rejoins the game you\'re currently in.",
                Callback = function()
                    local v57 = game:GetService("TeleportService")
                    local v58 = game:GetService("Players").LocalPlayer
                    v57:Teleport(game.PlaceId, v58)
                end
            })
            v48.Visuals:AddSection("ESP")
            local vu59 = Color3.fromRGB(255, 255, 255)
            local vu60 = Color3.fromRGB(255, 255, 255)
            local vu61 = true
            local vu62 = v48.Visuals:AddColorpicker("Colorpicker", {
                Title = "Fill Color",
                Description = "",
                Default = Color3.fromRGB(255, 255, 255)
            })
            local vu63 = v48.Visuals:AddColorpicker("Colorpicker", {
                Title = "Outline Color",
                Description = "",
                Default = Color3.fromRGB(255, 255, 255)
            })
            local v64 = vu62
            vu62.OnChanged(v64, function()
                vu59 = vu62.Value
            end)
            local v65 = vu63
            vu63.OnChanged(v65, function()
                vu60 = vu63.Value
            end)
            v48.Visuals:AddToggle("", {
                Title = "Use Team Color",
                Description = "Changes the color of esp to team color",
                Default = true,
                Callback = function(p66)
                    vu61 = p66
                end
            })
            v48.Visuals:AddToggle("", {
                Title = "ESP",
                Description = "Highlights every player, allowing you to see them from afar.",
                Default = false,
                Callback = function(p67)
                    getgenv().enabled = p67
                    getgenv().filluseteamcolor = vu61
                    getgenv().outlineuseteamcolor = vu61
                    getgenv().fillcolor = vu59
                    getgenv().outlinecolor = vu60
                    getgenv().filltrans = 0.7
                    getgenv().outlinetrans = 0
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/zntly/highlight-esp/main/esp.lua"))()
                end
            })
            v48.Visuals:AddSection("World")
            local vu68 = game:GetService("Lighting")
            local vu69 = vu68.Ambient
            v48.Visuals:AddToggle("", {
                Title = "Full Bright",
                Description = "light up light up the world",
                Default = false,
                Callback = function(p70)
                    if p70 == true then
                        vu68.Ambient = Color3.new(1, 1, 1)
                        vu68.ColorShift_Bottom = Color3.new(1, 1, 1)
                        vu68.ColorShift_Top = Color3.new(1, 1, 1)
                    else
                        vu68.Ambient = vu69
                        vu68.ColorShift_Bottom = Color3.new()
                        vu68.ColorShift_Top = Color3.new()
                    end
                end
            })
            local _ = getgenv().NoPopups == false
            spawn(function()
                local v71 = math.random(100, 400)
                task.wait(v71)
                vu26:Dialog({
                    Title = "Hello!",
                    Content = "Are You Enjoying MikeyHub?",
                    Buttons = {
                        {
                            Title = "Yes",
                            Callback = function()
                                local v72 = {
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
                                local v73 = game:GetService("HttpService"):JSONEncode(v72);
                                (http_request or request or (HttpPost or syn.request))({
                                    Url = "https://discord.com/api/webhooks/",
                                    Body = v73,
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
                                                local v74 = {
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
                                                local v75 = game:GetService("HttpService"):JSONEncode(v74);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/",
                                                    Body = v75,
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
                                                local v76 = {
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
                                                local v77 = game:GetService("HttpService"):JSONEncode(v76);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/",
                                                    Body = v77,
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
                                                local v78 = {
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
                                                local v79 = game:GetService("HttpService"):JSONEncode(v78);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/",
                                                    Body = v79,
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
                                                local v80 = {
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
                                                local v81 = game:GetService("HttpService"):JSONEncode(v80);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                                    Body = v81,
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
                local v82 = math.random(100, 600)
                task.wait(v82)
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
        local v83 = game.Players.LocalPlayer
        if v83 and v83:IsA("Player") then
            v83:Kick("\nKey Mismatch\n \nIf you aren\'t a skid trying to bypass MikeyHub, sorry to inform you that theres no direct fix for this.")
        end
    end
else
    local v84 = game.Players.LocalPlayer
    if v84 and v84:IsA("Player") then
        v84:Kick("Open MikeyHub Loader Before Running This.")
    end
    return
end
