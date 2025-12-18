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
                Main = vu20:AddTab({
                    Title = "| Player",
                    Icon = "user"
                }),
                GunMods = vu20:AddTab({
                    Title = "| Gun Mods",
                    Icon = "crosshair"
                }),
                VehicleMods = vu20:AddTab({
                    Title = "| Vehicle Mods",
                    Icon = "car"
                }),
                Dinosaur = vu20:AddTab({
                    Title = "| Dinosaur",
                    Icon = "users"
                }),
                Teleport = vu20:AddTab({
                    Title = "| Teleport",
                    Icon = "map"
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
            v41.Main:AddSection("Main")
            v41.Main:AddToggle("", {
                Title = "Infinite Bones",
                Description = "Gives you infinite bones, (toggle may not turn the infinite bones off)",
                Default = false,
                Callback = function(p42)
                    if vu8() ~= true then
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You Must Own Premium In Order To Use This.",
                            SubContent = "Join Our Discord To Buy MikeyHub.",
                            Duration = 5
                        })
                    else
                        local function v44(p43)
                            if p43 == true then
                                game:GetService("ReplicatedStorage").Remotes.QuestClaim:FireServer(unpack({
                                    "hunter5"
                                }))
                            end
                        end
                        while p42 and p42 ~= false do
                            v44(p42)
                            task.wait(1)
                        end
                    end
                end
            })
            v41.Main:AddButton({
                Title = "Infinite Levels",
                Description = "Bypasses level requirements and allows you to go to pro lobbies",
                Callback = function()
                    local v49, _ = pcall(function()
                        local v45 = getrawmetatable(game)
                        make_writeable(v45)
                        local vu46 = v45.__index
                        function v45.__index(p47, p48)
                            return tostring(p47) == "Level" and tostring(p48) == "Value" and 999 or vu46(p47, p48)
                        end
                    end)
                    if not v49 then
                        vu1:Notify({
                            Title = "Error.",
                            Content = "Your Executor Does Not Support This Feature.",
                            SubContent = "Your Executor Is Trash.",
                            Duration = 5
                        })
                    end
                end
            })
            v41.GunMods:AddSection("Main")
            v41.GunMods:AddButton({
                Title = "Infinite Ammo",
                Description = "Gives you infinite ammo.",
                Callback = function()
                    local vu50 = vu32.Character:FindFirstChildOfClass("Tool")
                    local v56, _ = pcall(function()
                        local v51 = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Deni210/Hydroxide-Wave-Fix/revision/ohaux.lua"))()
                        local v52 = workspace[vu32.Name][vu50.Name].LocalScript
                        local v53 = 2
                        local v54 = v51.searchClosure(v52, "rel", v53, {
                            [1] = "Reloading",
                            [2] = "StoredAmmo",
                            [3] = "script",
                            [5] = "Parent",
                            [6] = "Magazine",
                            [7] = "GetAttribute"
                        })
                        local v55 = math.huge
                        if v54 == "?" then
                            return error("Couldn\'t find the function :c")
                        end
                        debug.getupvalue(v54, v53).Capacity = v55
                    end)
                    if not v56 then
                        vu1:Notify({
                            Title = "Error.",
                            Content = "Your Executor Does Not Support This Feature.",
                            SubContent = "Your Executor Is Trash.",
                            Duration = 5
                        })
                    end
                end
            })
            v41.GunMods:AddButton({
                Title = "Fast FireRate",
                Description = "Makes your gun go pew pew faster",
                Callback = function()
                    local vu57 = vu32.Character:FindFirstChildOfClass("Tool")
                    if vu57 then
                        vu57 = vu57.CWep
                    end
                    if vu57 then
                        local v59, _ = pcall(function()
                            local v58 = require(vu57)
                            if v58 then
                                v58.Cooldown = 0
                            else
                                vu1:Notify({
                                    Title = "Error.",
                                    Content = "Something Went Wrong",
                                    SubContent = "",
                                    Duration = 5
                                })
                            end
                        end)
                        if not v59 then
                            vu1:Notify({
                                Title = "Error.",
                                Content = "Your Executor Does Not Support This Feature.",
                                SubContent = "Your Executor Is Trash.",
                                Duration = 5
                            })
                        end
                    else
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You Must Have The Gun Equipped To Use This.",
                            SubContent = "",
                            Duration = 5
                        })
                    end
                end
            })
            v41.GunMods:AddButton({
                Title = "No Spread",
                Description = "Gives you no spread",
                Callback = function()
                    local vu60 = vu32.Character:FindFirstChildOfClass("Tool")
                    if vu60 then
                        vu60 = vu60.CWep
                    end
                    if vu60 then
                        local v62, _ = pcall(function()
                            local v61 = require(vu60)
                            if v61 then
                                v61.Spread = 0
                            else
                                vu1:Notify({
                                    Title = "Error.",
                                    Content = "Something Went Wrong",
                                    SubContent = "",
                                    Duration = 5
                                })
                            end
                        end)
                        if not v62 then
                            vu1:Notify({
                                Title = "Error.",
                                Content = "Your Executor Does Not Support This Feature.",
                                SubContent = "Your Executor Is Trash.",
                                Duration = 5
                            })
                        end
                    else
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You Must Have The Gun Equipped To Use This.",
                            SubContent = "",
                            Duration = 5
                        })
                    end
                end
            })
            v41.GunMods:AddButton({
                Title = "Infinite Bullets (OP)",
                Description = "Gives you infinte bullets which basically destroys the dinosaur.",
                Callback = function()
                    if vu8() ~= true then
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You Must Own Premium In Order To Use This.",
                            SubContent = "Join Our Discord To Buy MikeyHub.",
                            Duration = 5
                        })
                    else
                        local vu63 = vu32.Character:FindFirstChildOfClass("Tool")
                        if vu63 then
                            vu63 = vu63.CWep
                        end
                        if vu63 then
                            local v65, _ = pcall(function()
                                local v64 = require(vu63)
                                if v64 then
                                    v64.Bullets = math.huge
                                else
                                    vu1:Notify({
                                        Title = "Error.",
                                        Content = "Something Went Wrong",
                                        SubContent = "",
                                        Duration = 5
                                    })
                                end
                            end)
                            if not v65 then
                                vu1:Notify({
                                    Title = "Error.",
                                    Content = "Your Executor Does Not Support This Feature.",
                                    SubContent = "Your Executor Is Trash.",
                                    Duration = 5
                                })
                            end
                        else
                            vu1:Notify({
                                Title = "Error.",
                                Content = "You Must Have The Gun Equipped To Use This.",
                                SubContent = "",
                                Duration = 5
                            })
                        end
                    end
                end
            })
            v41.GunMods:AddToggle("MyToggle", {
                Title = "Scope",
                Description = "Gives your gun a sniper scope",
                Default = false,
                Callback = function(pu66)
                    local vu67 = vu32.Character:FindFirstChildOfClass("Tool")
                    if vu67 then
                        vu67 = vu67:FindFirstChildOfClass("ModuleScript").Name
                    end
                    if vu67 then
                        local v69, _ = pcall(function()
                            local v68 = require(vu67)
                            if v68 then
                                v68.Scopable = pu66
                            else
                                vu1:Notify({
                                    Title = "Error.",
                                    Content = "Something Went Wrong",
                                    SubContent = "",
                                    Duration = 5
                                })
                            end
                        end)
                        if not v69 then
                            vu1:Notify({
                                Title = "Error.",
                                Content = "Your Executor Does Not Support This Feature.",
                                SubContent = "Your Executor Is Trash.",
                                Duration = 5
                            })
                        end
                    else
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You Must Have The Gun Equipped To Use This.",
                            SubContent = "",
                            Duration = 5
                        })
                    end
                end
            })
            v41.GunMods:AddSection("Bullet Changer")
            v41.GunMods:AddButton({
                Title = "Railgun Bullets",
                Description = "Gives your bullet color/effect etc to railgun bullets.",
                Callback = function()
                    local vu70 = vu32.Character:FindFirstChildOfClass("Tool")
                    if vu70 then
                        vu70 = vu70.CWep
                    end
                    if vu70 then
                        local v72, _ = pcall(function()
                            local v71 = require(vu70)
                            if v71 then
                                v71.Bullet = "RailgunBullet"
                            else
                                vu1:Notify({
                                    Title = "Error.",
                                    Content = "Something Went Wrong",
                                    SubContent = "",
                                    Duration = 5
                                })
                            end
                        end)
                        if not v72 then
                            vu1:Notify({
                                Title = "Error.",
                                Content = "Your Executor Does Not Support This Feature.",
                                SubContent = "Your Executor Is Trash.",
                                Duration = 5
                            })
                        end
                    else
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You Must Have The Gun Equipped To Use This.",
                            SubContent = "",
                            Duration = 5
                        })
                    end
                end
            })
            v41.GunMods:AddButton({
                Title = "Raygun Bullets",
                Description = "Gives your bullet color/effect etc to raygun bullets.",
                Callback = function()
                    if vu8() ~= true then
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You Must Own Premium In Order To Use This.",
                            SubContent = "Join Our Discord To Buy MikeyHub.",
                            Duration = 5
                        })
                    else
                        local vu73 = vu32.Character:FindFirstChildOfClass("Tool")
                        if vu73 then
                            vu73 = vu73:FindFirstChildOfClass("ModuleScript").Name
                        end
                        if vu73 then
                            local v75, _ = pcall(function()
                                local v74 = require(vu73)
                                if v74 then
                                    v74.Bullet = "RaygunBullet"
                                else
                                    vu1:Notify({
                                        Title = "Error.",
                                        Content = "Something Went Wrong",
                                        SubContent = "",
                                        Duration = 5
                                    })
                                end
                            end)
                            if not v75 then
                                vu1:Notify({
                                    Title = "Error.",
                                    Content = "Your Executor Does Not Support This Feature.",
                                    SubContent = "Your Executor Is Trash.",
                                    Duration = 5
                                })
                            end
                        else
                            vu1:Notify({
                                Title = "Error.",
                                Content = "You Must Have The Gun Equipped To Use This.",
                                SubContent = "",
                                Duration = 5
                            })
                        end
                    end
                end
            })
            v41.GunMods:AddButton({
                Title = "MoneyGun Bullets",
                Description = "Gives your bullet color/effect etc to moneygun bullets.",
                Callback = function()
                    if vu8() ~= true then
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You Must Own Premium In Order To Use This.",
                            SubContent = "Join Our Discord To Buy MikeyHub.",
                            Duration = 5
                        })
                    else
                        local vu76 = vu32.Character:FindFirstChildOfClass("Tool")
                        if vu76 then
                            vu76 = vu76.CWep
                        end
                        if vu76 then
                            local v78, _ = pcall(function()
                                local v77 = require(vu76)
                                if v77 then
                                    v77.Bullet = "MoneygunBullet"
                                else
                                    vu1:Notify({
                                        Title = "Error.",
                                        Content = "Something Went Wrong",
                                        SubContent = "",
                                        Duration = 5
                                    })
                                end
                            end)
                            if not v78 then
                                vu1:Notify({
                                    Title = "Error.",
                                    Content = "Your Executor Does Not Support This Feature.",
                                    SubContent = "Your Executor Is Trash.",
                                    Duration = 5
                                })
                            end
                        else
                            vu1:Notify({
                                Title = "Error.",
                                Content = "You Must Have The Gun Equipped To Use This.",
                                SubContent = "",
                                Duration = 5
                            })
                        end
                    end
                end
            })
            v41.VehicleMods:AddSection("Vehicle Mods")
            local vu79 = "None"
            local v80 = {}
            local v81 = game:GetService("ReplicatedStorage").Vehicles
            if v81 then
                local v82, v83, v84 = ipairs(v81:GetChildren())
                while true do
                    local v85
                    v84, v85 = v82(v83, v84)
                    if v84 == nil then
                        break
                    end
                    table.insert(v80, v85.Name)
                end
            end
            v41.VehicleMods:AddDropdown("", {
                Title = "Vechicle",
                Description = "The vehicle you want to mod.",
                Values = v80,
                Multi = false,
                Default = 1
            }):OnChanged(function(p86)
                vu79 = tostring(p86)
            end)
            v41.VehicleMods:AddButton({
                Title = "Infinite Max Speed",
                Description = "Makes your vechicle 10x faster (it only makes it faster based on your cars actual maxspeed)",
                Callback = function()
                    if vu8() ~= true then
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You Must Own Premium In Order To Use This.",
                            SubContent = "Join Our Discord To Buy MikeyHub.",
                            Duration = 5
                        })
                    elseif workspace.VehiclesFolder[vu79].Scripts.Chassis then
                        local v87 = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Deni210/Hydroxide-Wave-Fix/revision/ohaux.lua"))()
                        local v88 = workspace.VehiclesFolder[vu79].Scripts.Chassis
                        local v89 = 3
                        local v90 = v87.searchClosure(v88, "Unnamed function", v89, {
                            "Gravity",
                            90,
                            "DrivingTorque",
                            "BrakingTorque",
                            "StrutSpringStiffnessFront",
                            "StrutSpringDampingFront"
                        })
                        local v91 = 99999
                        if v90 == "?" then
                            return error("Couldn\'t find the function :c")
                        end
                        debug.getupvalue(v90, v89).MaxSpeed = v91
                    end
                end
            })
            v41.VehicleMods:AddButton({
                Title = "Infinite Reverse Speed",
                Description = "Makes your vechicle reverse 10x faster",
                Callback = function()
                    local v92 = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
                    local v93 = workspace.VehiclesFolder[vu79].Scripts.Chassis
                    local v94 = 3
                    local v95 = v92.searchClosure(v93, "Unnamed function", v94, {
                        "Gravity",
                        90,
                        "DrivingTorque",
                        "BrakingTorque",
                        "StrutSpringStiffnessFront",
                        "StrutSpringDampingFront"
                    })
                    debug.getupvalue(v95, v94).ReverseSpeed = 99999
                end
            })
            v41.Dinosaur:AddSection("Dinosaur")
            local vu96 = nil
            v41.Dinosaur:AddSlider("Slider", {
                Title = "Size",
                Description = "Size of the hitbox you want",
                Default = 100,
                Min = 1,
                Max = 1000,
                Rounding = 0.1,
                Callback = function(p97)
                    vu96 = p97
                end
            })
            v41.Dinosaur:AddToggle("", {
                Title = "Hitbox Expander (Enemy Dinosaur)",
                Description = "Expands the enemy dinosaur hitbox",
                Default = false,
                Callback = function(_)
                    local vu98 = nil
                    local v99 = 100;
                    (function()
                        local v100 = game.Teams.Dinosaur:GetPlayers()
                        local v101, v102, v103 = pairs(v100)
                        while true do
                            local v104
                            v103, v104 = v101(v102, v103)
                            if v103 == nil then
                                break
                            end
                            if v104.Character then
                                vu98 = v104
                                break
                            end
                        end
                    end)()
                    if vu98 then
                        if vu98.Character and vu98.Character:FindFirstChild("Hitbox") then
                            vu98.Character.Hitbox.Size = Vector3.new(v99, v99, v99)
                        else
                            vu1:Notify({
                                Title = "Error.",
                                Content = "Dinosaur does not have a hitbox/character",
                                SubContent = "Wait a few seconds and execute again.",
                                Duration = 5
                            })
                        end
                    else
                        vu1:Notify({
                            Title = "Error.",
                            Content = "No player found on dinosaur team.",
                            SubContent = "You must be ingame in order to use this.",
                            Duration = 5
                        })
                    end
                end
            })
            v41.Visuals:AddSection("ESP")
            local vu105 = Color3.fromRGB(255, 255, 255)
            local vu106 = Color3.fromRGB(255, 255, 255)
            local vu107 = false
            local vu108 = v41.Visuals:AddColorpicker("Colorpicker", {
                Title = "Fill Color",
                Description = "",
                Default = Color3.fromRGB(255, 255, 255)
            })
            local vu109 = v41.Visuals:AddColorpicker("Colorpicker", {
                Title = "Outline Color",
                Description = "",
                Default = Color3.fromRGB(255, 255, 255)
            })
            local v110 = vu108
            vu108.OnChanged(v110, function()
                vu105 = vu108.Value
            end)
            local v111 = vu109
            vu109.OnChanged(v111, function()
                vu106 = vu109.Value
            end)
            v41.Visuals:AddToggle("", {
                Title = "Use Team Color",
                Description = "Changes the color of esp to team color",
                Default = false,
                Callback = function(p112)
                    vu107 = p112
                end
            })
            v41.Visuals:AddToggle("", {
                Title = "ESP",
                Description = "Highlights every player, allowing you to see them from afar.",
                Default = false,
                Callback = function(p113)
                    getgenv().enabled = p113
                    getgenv().filluseteamcolor = vu107
                    getgenv().outlineuseteamcolor = vu107
                    getgenv().fillcolor = vu105
                    getgenv().outlinecolor = vu106
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
            v41.Teleport:AddSection("Main")
            v41.Teleport:AddButton({
                Title = "Teleport To Dinosaur",
                Description = "Teleports to dinosaur",
                Callback = function()
                    local vu117 = ""
                    local function v123()
                        local v118 = game.Teams.Dinosaur:GetPlayers()
                        local v119, v120, v121 = pairs(v118)
                        while true do
                            local v122
                            v121, v122 = v119(v120, v121)
                            if v121 == nil then
                                break
                            end
                            if v122.Character then
                                vu117 = v122.Name
                                break
                            end
                        end
                    end
                    local v124 = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local _ = game.Players.LocalPlayer.Character.Humanoid
                    v123()
                    if vu117 == "" or not (game.Players:FindFirstChild(vu117) and game.Players[vu117].Character) then
                        vu1:Notify({
                            Title = "Error.",
                            Content = "No player found on dinosaur team.",
                            SubContent = "You must be ingame in order to use this.",
                            Duration = 5
                        })
                    else
                        v124.CFrame = game.Players[vu117].Character.HumanoidRootPart.CFrame
                    end
                end
            })
            v41.Teleport:AddSection("Players")
            local vu125 = "None"
            local v126 = {}
            local v127 = game:GetService("Players")
            if v127 then
                local v128, v129, v130 = pairs(v127:GetPlayers())
                while true do
                    local v131, v132 = v128(v129, v130)
                    if v131 == nil then
                        break
                    end
                    v130 = v131
                    if v132 ~= vu32 then
                        table.insert(v126, v132.Name)
                    end
                end
            end
            local vu133 = v41.Teleport:AddDropdown("", {
                Title = "Target Player",
                Description = "Choose the player you wanna teleport to.",
                Values = v126,
                Multi = false,
                Default = 1
            })
            local v134 = vu133
            vu133.OnChanged(v134, function(p135)
                vu125 = p135
            end)
            local function v137(p136)
                vu133:SetValue(tostring(p136.Name))
            end
            v127.PlayerAdded:Connect(v137)
            v41.Teleport:AddButton({
                Title = "Teleport To Player",
                Description = "Teleports you to player.",
                Callback = function()
                    (function()
                        local v138 = vu32.Character
                        local v139 = game:GetService("Players"):FindFirstChild(vu125)
                        if v138 and v139 then
                            local v140 = v138:WaitForChild("HumanoidRootPart")
                            local v141 = v139.Character:WaitForChild("HumanoidRootPart")
                            local _ = v140.CFrame
                            v140.CFrame = v141.CFrame
                        else
                            vu1:Notify({
                                Title = "Error.",
                                Content = "Player Not Found.",
                                SubContent = "",
                                Duration = 5
                            })
                        end
                    end)()
                end
            })
            v41.Misc:AddSection("Main")
            local vu142 = game:GetService("RunService")
            v41.Misc:AddButton({
                Title = "Anti Lag",
                Description = "Makes your game run better",
                Callback = function()
                    local v143 = workspace:FindFirstChildOfClass("Terrain")
                    v143.WaterWaveSize = 0
                    v143.WaterWaveSpeed = 0
                    v143.WaterReflectance = 0
                    v143.WaterTransparency = 0
                    vu114.GlobalShadows = false
                    vu114.FogEnd = 9000000000
                    settings().Rendering.QualityLevel = 1
                    local v144, v145, v146 = pairs(game:GetDescendants())
                    while true do
                        local v147
                        v146, v147 = v144(v145, v146)
                        if v146 == nil then
                            break
                        end
                        if v147:IsA("Part") or (v147:IsA("UnionOperation") or (v147:IsA("MeshPart") or (v147:IsA("CornerWedgePart") or v147:IsA("TrussPart")))) then
                            v147.Material = "Plastic"
                            v147.Reflectance = 0
                        elseif v147:IsA("Decal") then
                            v147.Transparency = 1
                        elseif v147:IsA("ParticleEmitter") or v147:IsA("Trail") then
                            v147.Lifetime = NumberRange.new(0)
                        elseif v147:IsA("Explosion") then
                            v147.BlastPressure = 1
                            v147.BlastRadius = 1
                        end
                    end
                    local v148 = vu114
                    local v149, v150, v151 = pairs(v148:GetDescendants())
                    while true do
                        local v152
                        v151, v152 = v149(v150, v151)
                        if v151 == nil then
                            break
                        end
                        if v152:IsA("BlurEffect") or (v152:IsA("SunRaysEffect") or (v152:IsA("ColorCorrectionEffect") or (v152:IsA("BloomEffect") or v152:IsA("DepthOfFieldEffect")))) then
                            v152.Enabled = false
                        end
                    end
                    workspace.DescendantAdded:Connect(function(pu153)
                        task.spawn(function()
                            if pu153:IsA("ForceField") then
                                vu142.Heartbeat:Wait()
                                pu153:Destroy()
                            elseif pu153:IsA("Sparkles") then
                                vu142.Heartbeat:Wait()
                                pu153:Destroy()
                            elseif pu153:IsA("Smoke") or pu153:IsA("Fire") then
                                vu142.Heartbeat:Wait()
                                pu153:Destroy()
                            end
                        end)
                    end)
                end
            })
            v41.Misc:AddButton({
                Title = "Force Reset",
                Description = "Kills you, if you wanna live, don\'t click this lol.",
                Callback = function()
                    vu32.Character.Humanoid.Health = 0
                end
            })
            local _ = getgenv().NoPopups == false
            spawn(function()
                local v154 = math.random(300, 600)
                task.wait(v154)
                vu20:Dialog({
                    Title = "Hello!",
                    Content = "Are You Enjoying MikeyHub?",
                    Buttons = {
                        {
                            Title = "Yes",
                            Callback = function()
                                local v155 = {
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
                                local v156 = game:GetService("HttpService"):JSONEncode(v155);
                                (http_request or request or (HttpPost or syn.request))({
                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                    Body = v156,
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
                                                local v157 = {
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
                                                local v158 = game:GetService("HttpService"):JSONEncode(v157);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1274852458123886592/0LwQKT_5bJvoga9nXrp1D8aakkqgDgTdwBa71satL6c-0kQWNJcYPq4FOlyPzmiRy7GL",
                                                    Body = v158,
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
                                                local v159 = {
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
                                                local v160 = game:GetService("HttpService"):JSONEncode(v159);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1274852458123886592/0LwQKT_5bJvoga9nXrp1D8aakkqgDgTdwBa71satL6c-0kQWNJcYPq4FOlyPzmiRy7GL",
                                                    Body = v160,
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
                                                local v161 = {
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
                                                local v162 = game:GetService("HttpService"):JSONEncode(v161);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1274852458123886592/0LwQKT_5bJvoga9nXrp1D8aakkqgDgTdwBa71satL6c-0kQWNJcYPq4FOlyPzmiRy7GL",
                                                    Body = v162,
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
                                                local v163 = {
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
                                                local v164 = game:GetService("HttpService"):JSONEncode(v163);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1274852458123886592/0LwQKT_5bJvoga9nXrp1D8aakkqgDgTdwBa71satL6c-0kQWNJcYPq4FOlyPzmiRy7GL",
                                                    Body = v164,
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
                local v165 = math.random(100, 600)
                task.wait(v165)
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
        local v166 = game.Players.LocalPlayer
        if v166 and v166:IsA("Player") then
            v166:Kick("\nKey Mismatch\n \nIf you aren\'t a skid trying to bypass MikeyHub, sorry to inform you that theres no direct fix for this.")
        end
    end
else
    local v167 = game.Players.LocalPlayer
    if v167 and v167:IsA("Player") then
        v167:Kick("Open MikeyHub Loader Before Running This.")
    end
    return
end
