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
    MinimizeKey = getgenv().MinizeKey or Enum.KeyCode.LeftAlt
})
local function v30(p27)
    local v28 = 0
    for v29 = 1, # p27 do
        v28 = (v28 + string.byte(p27, v29) * v29) % 4294967296
    end
    return tostring(v28)
end
local v31 = getgenv().CollectMikeyHubData
if v31 then
    v31 = getgenv().CollectMikeyHubData.Test
end
local v32 = getgenv().LoaderKey
if v32 then
    v32 = v30(getgenv().LoaderKey)
end
if getgenv().LoaderKey ~= nil then
    if v32 == v31 then
        local function v34()
            local v33 = cloneref(game:GetService("Players"))
            return tostring(v33.LocalPlayer.UserId)
        end
        local vu35 = game:GetService("UserInputService")
        local v36 = vu35
        table.find({
            Enum.Platform.IOS,
            Enum.Platform.Android
        }, vu35.GetPlatform(v36))
        local v37 = identifyexecutor()
        local vu38 = game:GetService("Players").LocalPlayer
        local vu39 = vu38.UserId
        local function v41()
            local v40 = vu35:GetPlatform()
            return v40 ~= Enum.Platform.Android and (v40 ~= Enum.Platform.IOS and "PC" or "IPhone") or "Android"
        end
        if v22() ~= false then
            local v42 = {
                embeds = {
                    {
                        author = {
                            name = "Blacklisted User Has Executed! - MikeyHub",
                            icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu39 .. "&width=420&height=420"
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
                                value = v37,
                                inline = true
                            },
                            {
                                name = "Device :",
                                value = v41(),
                                inline = true
                            },
                            {
                                name = "PandaAuth HWID :",
                                value = v34(),
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
            vu38:Kick("\nYou\'re Banned From MikeyHub \n \nReason: " .. vu15 .. "\n \nIf You Believe This is A Mistake\nContact Mods Within The Server.\nHWID: " .. vu6)
        else
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Pixeluted/adoniscries/main/Source.lua", true))()
            if getgenv().CollectMikeyHubData.KeySystem ~= true then
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
                    Autofarm = vu26:AddTab({
                        Title = "| AutoFarm",
                        Icon = "home"
                    }),
                    Players = vu26:AddTab({
                        Title = "| Players",
                        Icon = "users"
                    }),
                    GunMods = vu26:AddTab({
                        Title = "| Gun Mods",
                        Icon = "crosshair"
                    }),
                    Combat = vu26:AddTab({
                        Title = "| Combat",
                        Icon = "swords"
                    }),
                    Teleport = vu26:AddTab({
                        Title = "| Teleport",
                        Icon = "map"
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
                v45.Main:AddSection("Player")
                local vu46 = nil
                infJumpDebounce = false
                v45.Main:AddToggle("", {
                    Title = "Infinite Jump",
                    Description = "jump jump jump",
                    Default = false,
                    Callback = function(p47)
                        if p47 == true then
                            vu46 = vu35.JumpRequest:Connect(function()
                                if not infJumpDebounce then
                                    infJumpDebounce = true
                                    vu38.Character:FindFirstChildWhichIsA("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
                                    wait()
                                    infJumpDebounce = false
                                end
                            end)
                        else
                            if vu46 then
                                vu46:Disconnect()
                            end
                            infJumpDebounce = false
                        end
                    end
                })
                local vu48 = nil
                local function vu57(_)
                    if vu48 ~= true then
                        vu48 = false
                    else
                        local v49, v50, v51 = pairs(workspace:GetChildren())
                        while true do
                            local v52
                            v51, v52 = v49(v50, v51)
                            if v51 == nil then
                                break
                            end
                            if v52.Name == vu38.Name then
                                local v53, v54, v55 = pairs(workspace[vu38.Name]:GetChildren())
                                while true do
                                    local v56
                                    v55, v56 = v53(v54, v55)
                                    if v55 == nil then
                                        break
                                    end
                                    if v56:IsA("BasePart") then
                                        v56.CanCollide = false
                                    end
                                end
                            end
                        end
                    end
                end
                v45.Main:AddToggle("", {
                    Title = "No Clip",
                    Description = "boo bitch im a ghost.",
                    Default = false,
                    Callback = function(p58)
                        vu48 = p58
                        vu57(p58)
                    end
                })
                v45.Main:AddToggle("", {
                    Title = "God Mode",
                    Description = "Makes you invincible. (invincible title card reference)",
                    Default = false,
                    Callback = function(p59)
                        if vu14 ~= true then
                            vu1:Notify({
                                Title = "Error.",
                                Content = "You Must Own Premiun In Order To Use This.",
                                SubContent = "Join Our Discord To Buy MikeyHub.",
                                Duration = 5
                            })
                        elseif p59 == true then
                            local v60 = workspace.SafeZones
                            local v61, v62, v63 = ipairs(v60:GetChildren())
                            while true do
                                local v64
                                v63, v64 = v61(v62, v63)
                                if v63 == nil then
                                    break
                                end
                                if v60 then
                                    local v65 = Vector3.new(1000000000, 1000000000, 1000000000)
                                    if v64 then
                                        v64.Size = v65
                                    end
                                else
                                    vu1:Notify({
                                        Title = "Error.",
                                        Content = "Failed to give god mode",
                                        SubContent = "",
                                        Duration = 5
                                    })
                                end
                            end
                        else
                            local v66 = workspace.SafeZones
                            local v67, v68, v69 = ipairs(v66:GetChildren())
                            while true do
                                local v70
                                v69, v70 = v67(v68, v69)
                                if v69 == nil then
                                    break
                                end
                                if v66 then
                                    if v70 then
                                        v70.Size = Vector3.new(53.5, 13.59999942779541, 29.5)
                                    end
                                else
                                    vu1:Notify({
                                        Title = "Error.",
                                        Content = "Failed to remove god mode",
                                        SubContent = "",
                                        Duration = 5
                                    })
                                end
                            end
                        end
                    end
                })
                v45.Main:AddButton({
                    Title = "Anti Ragdoll",
                    Description = "Disables ragdoll",
                    Callback = function()
                        vu38.Character:WaitForChild("CharCarRagdoll"):Destroy()
                        local v71, v72, v73 = ipairs(vu38.Character:WaitForChild("CollisionConstraints"):GetChildren())
                        while true do
                            local v74
                            v73, v74 = v71(v72, v73)
                            if v73 == nil then
                                break
                            end
                            if v74 then
                                v74:Destroy()
                            end
                        end
                        local v75, v76, v77 = ipairs(vu38.Character:WaitForChild("RagdollConstraints"):GetChildren())
                        while true do
                            local v78
                            v77, v78 = v75(v76, v77)
                            if v77 == nil then
                                break
                            end
                            if v78 then
                                v78:Destroy()
                            end
                        end
                    end
                })
                v45.Autofarm:AddSection("AutoFarms")
                local vu79 = nil
                v45.Autofarm:AddToggle("", {
                    Title = "Auto Box Farm",
                    Description = "Auto farms boxes.",
                    Default = false,
                    Callback = function(p80)
                        vu79 = p80
                        while true do
                            if not vu79 then
                                return
                            end
                            local vu81 = false
                            local function v82()
                                vu81 = true
                            end
                            if vu79 ~= true then
                                v82()
                            else
                                if not vu79 then
                                    v82()
                                end
                                local v83 = workspace:FindFirstChild("Job System") and workspace["Job System"]:FindFirstChild("BoxPickingJob")
                                if v83 then
                                    v83 = workspace["Job System"].BoxPickingJob:FindFirstChild("BOX1")
                                end
                                if not v83 and vu79 == true then
                                    local v84 = game.Players.LocalPlayer
                                    if v84 and v84.Character and v84.Character:FindFirstChild("HumanoidRootPart") then
                                        v84.Character.HumanoidRootPart.CFrame = CFrame.new(- 1943.31262, 1.29876947, - 48.7324791, 0.986658573, - 0.162618339, 0.00775466161, - 0.0000850400829, 0.0471173376, 0.998889387, - 0.162803099, - 0.985563397, 0.0464748964)
                                    end
                                    task.wait(0.3)
                                end
                                local v85 = game.Players.LocalPlayer
                                if v85.Character:FindFirstChild("BOX") and vu79 == true then
                                    v85.Character.HumanoidRootPart.CFrame = CFrame.new(- 1925.52405, 3.10753107, - 22.6503544, 0.00872191321, - 2.26020158e-9, - 0.999961972, - 1.51289226e-9, 1, - 2.2734834e-9, 0.999961972, 1.53266377e-9, 0.00872191321)
                                    task.wait(1.5)
                                else
                                    v85.Character.HumanoidRootPart.CFrame = CFrame.new(- 1942.19177, 3.40753174, - 49.1391335, 0.994523048, - 5.43831327e-8, 0.104517564, 4.6209216e-8, 1, 8.06276574e-8, - 0.104517564, - 7.53563896e-8, 0.994523048)
                                    local v86 = v83:FindFirstChild("ProximityPrompt")
                                    if v86 and vu79 == true then
                                        fireproximityprompt(v86)
                                    end
                                    task.wait(0.3)
                                    local v87 = v85.Backpack:FindFirstChild("BOX")
                                    if v87 and vu79 == true then
                                        v85.Character.Humanoid:EquipTool(v87)
                                    end
                                end
                            end
                            task.wait(0.3)
                            if vu81 then
                                break
                            end
                        end
                    end
                })
                local vu88 = nil
                v45.Autofarm:AddToggle("", {
                    Title = "Auto Garbage Farm",
                    Description = "Auto farms garbage.",
                    Default = false,
                    Callback = function(p89)
                        vu88 = p89
                        while true do
                            if not vu88 then
                                return
                            end
                            local vu90 = false
                            local function v91()
                                vu90 = true
                            end
                            if vu88 ~= true then
                                v91()
                            else
                                if not vu88 then
                                    v91()
                                end
                                local v92 = workspace:FindFirstChild("Job System") and workspace["Job System"]:FindFirstChild("GarbageJob")
                                if v92 then
                                    v92 = workspace["Job System"].GarbageJob:FindFirstChild("BOX1")
                                end
                                if not v92 and vu88 == true then
                                    local v93 = game.Players.LocalPlayer
                                    if v93 and v93.Character and v93.Character:FindFirstChild("HumanoidRootPart") then
                                        v93.Character.HumanoidRootPart.CFrame = CFrame.new(- 1384.86157, 3.40753126, 24.0149231, - 0.941323757, 3.74008593e-8, 0.337505013, 3.81606462e-8, 1, - 4.38315428e-9, - 0.337505013, 8.75344153e-9, - 0.941323757)
                                    end
                                    task.wait(0.3)
                                end
                                local v94 = game.Players.LocalPlayer
                                if v94.Character:FindFirstChild("Garbage") and vu88 == true then
                                    v94.Character.HumanoidRootPart.CFrame = CFrame.new(- 1409.12061, 3.38966608, 28.5656128, - 0.999544799, - 6.48121279e-10, 0.0301695131, 2.30105091e-9, 1, 9.77186758e-8, - 0.0301695131, 9.77436159e-8, - 0.999544799)
                                    task.wait(1)
                                else
                                    v94.Character.HumanoidRootPart.CFrame = CFrame.new(- 1382.39819, 3.40753126, 26.5910397, - 0.99875927, - 2.43763765e-8, - 0.0497990772, - 2.1103352e-8, 1, - 6.62504007e-8, 0.0497990772, - 6.51172698e-8, - 0.99875927)
                                    local v95 = v92:FindFirstChild("ProximityPrompt")
                                    if v95 and vu88 == true then
                                        fireproximityprompt(v95)
                                    end
                                    task.wait(0.3)
                                    local v96 = v94.Backpack:FindFirstChild("Garbage")
                                    if v96 and vu88 == true then
                                        v94.Character.Humanoid:EquipTool(v96)
                                    end
                                end
                            end
                            task.wait(0.3)
                            if vu90 then
                                break
                            end
                        end
                    end
                })
                local vu97 = nil
                v45.Autofarm:AddToggle("", {
                    Title = "Auto Car Robbery",
                    Description = "Auto robs all cars.",
                    Default = false,
                    Callback = function(p98)
                        vu97 = p98
                        local function v109()
                            local v99, v100, v101 = pairs(workspace.CarRobberys:GetDescendants())
                            local v102 = {}
                            while true do
                                local v103
                                v101, v103 = v99(v100, v101)
                                if v101 == nil then
                                    break
                                end
                                if v103:IsA("ProximityPrompt") then
                                    table.insert(v102, v103)
                                end
                            end
                            local v104, v105, v106 = ipairs(v102)
                            while true do
                                local v107
                                v106, v107 = v104(v105, v106)
                                if v106 == nil then
                                    break
                                end
                                if not vu97 then
                                    return
                                end
                                local v108 = v107.Parent
                                if v108 and v108:IsA("BasePart") then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v108.CFrame
                                    task.wait(0.5)
                                    fireproximityprompt(v107)
                                    task.wait(1)
                                end
                            end
                        end
                        while vu97 do
                            if vu97 == true then
                                v109()
                            end
                            task.wait(1)
                        end
                    end
                })
                v45.Autofarm:AddParagraph({
                    Title = "Next Update:",
                    Content = "Adding more autofarms later."
                })
                v45.Players:AddSection("A Player")
                local vu110 = "None"
                local vu111 = {}
                local vu112 = game:GetService("Players")
                if vu112 then
                    local v113, v114, v115 = pairs(vu112:GetPlayers())
                    while true do
                        local v116
                        v115, v116 = v113(v114, v115)
                        if v115 == nil then
                            break
                        end
                        if v116 ~= vu38 then
                            table.insert(vu111, v116.Name)
                        end
                    end
                end
                local vu117 = v45.Players:AddDropdown("", {
                    Title = "Target Player Dropdown",
                    Description = "Choose the player you wanna target.",
                    Values = vu111,
                    Multi = false,
                    Default = 1
                })
                v45.Players:AddInput("Input", {
                    Title = "Target Player Input",
                    Description = "Choose the player you want to target\n(use this if you can\'t find them\non the dropdown). ",
                    Default = "",
                    Placeholder = "",
                    Numeric = false,
                    Finished = false,
                    Callback = function(p118)
                        vu110 = p118
                    end
                })
                local v119 = vu117
                vu117.OnChanged(v119, function(p120)
                    vu110 = p120
                end)
                local function v126(_)
                    vu111 = {}
                    local v121 = vu112
                    local v122, v123, v124 = pairs(v121:GetPlayers())
                    while true do
                        local v125
                        v124, v125 = v122(v123, v124)
                        if v124 == nil then
                            break
                        end
                        table.insert(vu111, v125.Name)
                    end
                    vu117:SetValue(vu111)
                end
                local function v132(_)
                    vu111 = {}
                    local v127 = vu112
                    local v128, v129, v130 = pairs(v127:GetPlayers())
                    while true do
                        local v131
                        v130, v131 = v128(v129, v130)
                        if v130 == nil then
                            break
                        end
                        table.insert(vu111, v131.Name)
                    end
                    vu117:SetValue(vu111)
                end
                vu112.PlayerAdded:Connect(v126)
                vu112.PlayerRemoving:Connect(v132)
                v45.Players:AddButton({
                    Title = "Teleport",
                    Description = "Teleports you to targetted player.",
                    Callback = function()
                        local v133 = game.Players.LocalPlayer.Character.HumanoidRootPart
                        local v134 = game:GetService("Players"):FindFirstChild(vu110)
                        if v134 then
                            if v134.Character and v134.Character:FindFirstChild("HumanoidRootPart") then
                                local _ = v133.CFrame
                                v133.CFrame = v134.Character.HumanoidRootPart.CFrame
                            else
                                vu1:Notify({
                                    Title = "Error.",
                                    Content = "Player found but not ingame (they\'re in menu).",
                                    SubContent = "",
                                    Duration = 5
                                })
                            end
                        else
                            vu1:Notify({
                                Title = "Error.",
                                Content = "Player Not Found.",
                                SubContent = "",
                                Duration = 5
                            })
                        end
                    end
                })
                v45.Players:AddButton({
                    Title = "Kill",
                    Description = "Kills targetted player (THEY MUST HAVE A GUN).\nVERY BUGGY, MAY NOT WORK",
                    Callback = function()
                        if vu14 ~= true then
                            vu1:Notify({
                                Title = "Error.",
                                Content = "You Must Own Premiun In Order To Use This.",
                                SubContent = "Join Our Discord To Buy MikeyHub.",
                                Duration = 5
                            })
                        else
                            game:GetService("Players")
                            local _ = game:GetService("Players").LocalPlayer
                            local v142 = (function(p135)
                                local v136, v137, v138 = pairs(game:GetService("Players"):GetPlayers())
                                while true do
                                    local v139
                                    v138, v139 = v136(v137, v138)
                                    if v138 == nil then
                                        break
                                    end
                                    local v140 = v139.DisplayName:lower()
                                    local v141 = v139.Name:lower()
                                    if string.find(v140, p135:lower()) or string.find(v141, p135:lower()) then
                                        return v139
                                    end
                                end
                                return nil
                            end)(vu110)
                            local function v151(p143)
                                local v144 = {
                                    "Gun",
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool")
                                }
                                local v145 = {
                                    IgnoreHumanoids = false,
                                    TacticalReloadAnimationSpeed = 1,
                                    PenetrationIgnoreDelay = math.huge,
                                    CanSpinPart = false,
                                    AngleX_Min = 1,
                                    Lifesteal = 0,
                                    MeleeCriticalDamageEnabled = false,
                                    SilenceEffect = false,
                                    BulletShellType = "Normal",
                                    ExplosionCraterFadeTime = 1,
                                    BaseDamage = math.huge,
                                    GoreSoundVolume = 1,
                                    HitCharSndPitchMin = 1,
                                    CustomMeleeHitEffect = false,
                                    WhizDistance = 25,
                                    Handles = {
                                        "Handle"
                                    },
                                    ProjectileMotion = false,
                                    HitmarkerFadeTimeHS = 0.4,
                                    ReloadAnimationSpeed = 1.5,
                                    MeleeDebuffChance = 100,
                                    SpreadRedutionS = 0.6,
                                    VisibleTime = 0.01,
                                    HoldDownAnimationSpeed = 0.5,
                                    DebuffName = "",
                                    ScopeSwaySpeed = 15,
                                    HoldingTime = 1,
                                    HeatPerFireMax = 8,
                                    LaserTrailDamageRate = 0.1,
                                    MeleeBloodEnabled = true,
                                    ApplyLaserTrailDebuffOnCritical = false,
                                    LaserTrailHeight = 0.5,
                                    MeleeDamage = 20,
                                    EquippedAnimationID = 12512019963,
                                    RaycastHitboxData = {
                                        CFrame.new(- 1, 1, - 1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                                        CFrame.new(1, 1, - 1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                                        CFrame.new(- 1, - 1, - 1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                                        CFrame.new(1, - 1, - 1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                                        CFrame.new(1, - 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                                        CFrame.new(- 1, - 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                                        CFrame.new(- 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                                        CFrame.new(1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                                    },
                                    ShellClipinSpeed = 0.5,
                                    EasingStyleNAD = Enum.EasingStyle.Quint,
                                    LockOnRadius = 10,
                                    ScopeKnockbackMultiplier = 5,
                                    BulletHoleVisibleTime = 3,
                                    AltAnimationSpeed = 1,
                                    AimIdleAnimationSpeed = 0,
                                    MeleeHitSoundIDs = {
                                        6000828622
                                    },
                                    PreShotgunReload = false,
                                    BulletPerBurst = 3,
                                    RicochetAmount = 0,
                                    ScanFrameHeight = 0.5,
                                    ShotsForDepletion = 12,
                                    SprintAnimationSpeed = 1,
                                    MaximumTargets = 3,
                                    BulletBrightness = 400,
                                    MuzzleLightEnabled = false,
                                    RecoilRedution = 0.5,
                                    EasingStyle = Enum.EasingStyle.Quint,
                                    MotionBlur = true,
                                    HitmarkerColorHS = Color3.new(1, 0, 0),
                                    BloodWoundFadeTime = 1,
                                    RaycastHitbox = false,
                                    DisappearTime = 5,
                                    SprintAnimationID = 12512158240,
                                    ExplosionSoundIDs = {
                                        163064102
                                    },
                                    LaserTrailEnabled = false,
                                    LaserBeamStartupAnimationSpeed = 1,
                                    BloodWoundPartColor = true,
                                    MeleeHitSoundPitchMax = 1.5,
                                    ExplosionKnockbackMultiplierOnPlayer = 2,
                                    DecayProjectile = false,
                                    ShotgunPumpinSpeed = 0.5,
                                    PenetrationType = "HumanoidPenetration",
                                    LaserTrailFadeTime = 0.5,
                                    HitmarkerSoundPitchHS = 1,
                                    LowAmmo = true,
                                    BulletShellRotVelocity = 40,
                                    TimeBeforeScan = 0.5,
                                    MeleeBloodWoundFadeTime = 1,
                                    EasingDirectionNAD = Enum.EasingDirection.Out,
                                    LaserTrailDebuffChance = 100,
                                    LightBrightness = 4,
                                    HitmarkerFadeTime = 0.4,
                                    BlacklistParts = {
                                        ["Part Name Here"] = true
                                    },
                                    DelayAfterFiring = 1,
                                    MaximumTime = 1,
                                    ChargingTime = 1,
                                    InspectAnimationSpeed = 1
                                }
                                local v146 = {
                                    {
                                        FireAnimationSpeed = 1,
                                        FireAnimationID = 12512005718
                                    }
                                }
                                v145.FireAnimations = v146
                                v145.LaserTrailKnockback = 0
                                v145.FieldOfViewS = 12.5
                                v145.CrossScaleIS = 0.6
                                v145.BoltShape = "Block"
                                v145.IronsightEnabled = false
                                v145.BoltVisibleTime = 1
                                v145.SmokeTrailEnabled = false
                                v145.BulletShellHitSoundPitchMin = 1
                                v145.MeleeAttackEnabled = false
                                v145.MeleeDebuffName = ""
                                v145.WhizSoundIDs = {
                                    9114115640,
                                    9114115577,
                                    9114115499
                                }
                                v145.AngleZ_Max = 1
                                v145.MinigunRevDownAnimationSpeed = 1
                                v145.DebuffChance = 100
                                v145.FieldOfViewIS = 50
                                v145.CameraRecoilingEnabled = true
                                v145.SwitchTime = 0.25
                                v145.CrossSize = 4
                                v145.Lifetime = 5
                                v145.ScopeSwayDamper = 0.65
                                v145.IgnoreBlacklistedParts = true
                                v145.SpreadRedutionIS = 0.6
                                v145.MeleeBloodWoundVisibleTime = 3
                                v145.RadomizeRotVelocity = true
                                v145.MouseSensitiveS = 0.2
                                v145.LaserBeamStartupDelay = 1
                                v145.BoltScaleMultiplier = 1.5
                                v145.MeleeHitSoundVolume = 1
                                v145.ReloadAnimationID = 12512015034
                                v145.AnchorDecay = false
                                v145.EquipTime = 0
                                v145.LaserTrailColor = Color3.new(0, 0.6666666865348816, 1)
                                local v147 = {
                                    {
                                        AimFireAnimationSpeed = 1
                                    }
                                }
                                v145.AimFireAnimations = v147
                                v145.RandomizeBoltColorIn = "None"
                                v145.BurstFireEnabled = false
                                v145.BulletHoleFadeTime = 1
                                v145.MarkerPartColor = true
                                v145.LaserTrailCriticalBaseChance = 5
                                v145.DistantSoundVolume = 1.5
                                v145.HoldAndReleaseEnabled = false
                                v145.BloodWoundTextureColor = Color3.new(1, 0, 0)
                                v145.ShotgunReload = false
                                v145.IdleAnimationSpeed = 0
                                v145.TweenLengthNAD = 0.8
                                v145.TimeBeforeCooldown = 3
                                v145.LaserTrailWidth = 0.5
                                v145.SelfKnockbackRedution = 0.8
                                v145.GoreSoundPitchMin = 1
                                v145.DebrisProjectile = false
                                v145.ChargingSoundIncreasePitch = true
                                v145.BoltFadeTime = 0.5
                                v145.MeleeBloodWoundEnabled = true
                                v145.BoltRadius = 5
                                v145.AimChargingAnimationSpeed = 1
                                v145.HoldDownAnimationID = 12512158240
                                v145.DelayBeforeFiring = 1
                                local v148 = {
                                    {
                                        ShotgunPumpinAnimationSpeed = 1
                                    }
                                }
                                v145.ShotgunPumpinAnimations = v148
                                v145.BurstRates = {
                                    0,
                                    0.075,
                                    0.075,
                                    0
                                }
                                v145.OnHitEventName = "None"
                                v145.Acceleration = Vector3.zero
                                v145.LaserTrailDebuff = false
                                v145.CanBreakGlass = true
                                v145.Auto = true
                                v145.LaserColorCycleTime = 5
                                v145.MeleeBloodWoundPartColor = true
                                v145.BurstRate = 0.075
                                v145.TacticalReloadAnimationEnabled = false
                                v145.BulletHoleTexture = {
                                    64291961
                                }
                                v145.UpdateRayInExtra = false
                                v145.AimAnimationsEnabled = false
                                v145.Recoil = 25
                                v145.MeleeAttackRange = 4
                                v145.SelfDamage = false
                                v145.AmmoPerMag = 30
                                v145.SelfKnockback = false
                                v145.RecoilDamper = 0.65
                                v145.HitCharSndPitchMax = 1
                                v145.BloodEnabled = true
                                v145.MaxHeat = 100
                                v145.LaserBeamLoopAnimationSpeed = 1
                                v145.Debuff = false
                                v145.LaserTrailTransparency = 0
                                v145.SlopeAngle = 90
                                v145.MeleeLifesteal = 0
                                v145.HitmarkerSoundPitch = 1
                                v145.GoreEffectEnabled = false
                                v145.BounceBetweenHumanoids = false
                                v145.ScopeKnockbackSpeed = 15
                                v145.BulletShellParticles = false
                                v145.HitSoundPitchMax = 1.5
                                v145.SuperRicochet = false
                                v145.CycleHandles = false
                                v145.ExplosionCraterSize = 3
                                v145.BoltWidth = 0.5
                                v145.BoltReflectance = 0
                                v145[p143] = 1000
                                v145.BounceHeight = 50
                                v145.MeleeHitSoundPitchMin = 1
                                v145.HitEffectEnabled = true
                                v145.PreShotgunReloadSpeed = 0.5
                                v145.Level2ChargingTime = 2
                                v145.Homing = false
                                v145.WhizSoundEnabled = true
                                v145.LaserTrailDamage = 20
                                v145.AngleY_Min = 0
                                v145.AngleX_Max = 1
                                v145.Level1ChargingTime = 1
                                v145.BoltWideness = 5
                                v145.SelectiveFireEnabled = false
                                v145.LightRange = 15
                                v145.BulletShellHitSoundVolume = 1
                                v145.BulletBloom = 0.005
                                v145.LockOnOnHovering = false
                                v145.IgnoreSlope = false
                                v145.MeleeBloodWoundTexture = {
                                    2078626
                                }
                                v145.MeleeKnockback = 0
                                v145.BatteryEnabled = false
                                v145.HeatPerFireMin = 7
                                v145.EasingDirection = Enum.EasingDirection.Out
                                v145.MouseSensitiveIS = 0.2
                                v145.Knockback = math.huge
                                v145.ExplosionCraterPartColor = false
                                v145.MeleeHeadshotHitmarker = true
                                v145.HoldDownEnabled = true
                                v145.MeleeHitCharSndIDs = {
                                    6398015798,
                                    6398016125,
                                    6398016391,
                                    6398016618
                                }
                                v145.LookAtInput = false
                                v145.ShotgunPump = false
                                v145.PenetrationAmount = 0
                                v145.CrossScaleS = 0
                                v145.MuzzleFlashEnabled = true
                                v145.ScanFrameWidth = 0.5
                                v145.LightningBoltEnabled = false
                                v145.OverheatTime = 2.5
                                v145.Range = 5000
                                v145.MeleeDebuff = false
                                v145.WhizSoundPitchMin = 1
                                v145.MeleeCriticalBaseChance = 5
                                v145.BloodWoundVisibleTime = 3
                                v145.WhizSoundVolume = 1
                                v145.EchoEffect = true
                                v145.SelfKnockbackPower = 50
                                v145.ScopeSensitive = 0.25
                                v145.DamageBasedOnDistance = false
                                v145.BloodWoundTexture = {
                                    2078626
                                }
                                v145.Spread = 5
                                v145.ExplosionCraterTexture = {
                                    53875997
                                }
                                v145.ChargingAnimationSpeed = 1
                                v145.HitCharSndVolume = 0.5
                                v145.ReduceSelfDamageOnAirOnly = false
                                v145.MarkerEffectFadeTime = 1
                                v145.BulletParticle = false
                                v145.MeleeCriticalDamageMultiplier = 3
                                v145.MeleeAttackAnimationSpeed = 1
                                v145.RandomizeLaserColorIn = "None"
                                v145.ExplosionSoundPitchMin = 1
                                v145.FireModes = {
                                    1,
                                    2,
                                    3,
                                    true
                                }
                                v145.DisableDebrisContents = {
                                    Trail = false,
                                    Beam = false,
                                    Sound = false,
                                    Particle = false,
                                    Light = false
                                }
                                v145.ShotgunClipinAnimationSpeed = 1
                                v145.HeadshotHitmarker = true
                                v145.MarkerEffectEnabled = true
                                v145.HitCharSndIDs = {
                                    3802437008,
                                    3802437361,
                                    3802437696,
                                    3802440043,
                                    3802440388,
                                    3802442962
                                }
                                v145.PreShotgunReloadAnimationSpeed = 1
                                v145.LaserBeam = false
                                v145.MinDepletion = 2
                                v145.ModuleName = "1"
                                v145.LockOnScan = false
                                v145.CrossDamper = 0.8
                                v145.ExplosionKnockbackMultiplierOnTarget = 2
                                v145.GoreSoundIDs = {
                                    1930359546
                                }
                                v145.ExplosionCraterEnabled = true
                                v145.ExplosionSoundPitchMax = 1.5
                                v145.BoltHeight = 0.5
                                v145.LightColor = Color3.new(1, 1.1098039150238037, 0)
                                v145.AnimationKeyframes = {}
                                v145.WhizSoundPitchMax = 1
                                v145.AltTime = 1
                                v145.ScanRate = 0.5
                                v145.FireRates = {
                                    0.125,
                                    0.5,
                                    0.5,
                                    0.1
                                }
                                v145.CooldownRate = 1
                                v145.BounceElasticity = 1
                                v145.BulletSize = 0.4
                                v145.ChargingSoundPitchRange = {
                                    1,
                                    1.5
                                }
                                v145.OnMeleeHitEventName = "None"
                                v145.CriticalDamageMultiplier = 3
                                v145.CollideDebris = true
                                v145.BulletType = "Normal"
                                v145.TravelType = "Distance"
                                v145.MeleeBloodWoundSize = 0.5
                                v145.LaserTrailShape = "Block"
                                v145.ChargingAnimationEnabled = false
                                v145.FireModeTexts = {
                                    "SEMI-AUTO",
                                    "2-ROUND-BURST",
                                    "3-ROUND-BURST",
                                    "AUTO"
                                }
                                v145.VelocityInfluence = true
                                v145.ScopeDelay = 0
                                v145.MaximumRate = 2
                                v145.ExplosionSoundVolume = 1
                                v145.MeleeDamageMultipliers = {
                                    Head = 2
                                }
                                v145.AllowCollide = false
                                v145.TurnRatePerSecond = 1
                                v145.SpinZ = 0
                                v145.TacticalReloadTime = 3
                                v145.CustomShotName = "Template"
                                v145.SmokeTrailRateIncrement = 1
                                v145.PenetrationDepth = 0
                                v145.HitSoundIDs = {
                                    9114115640,
                                    9114115577,
                                    9114115499
                                }
                                v145.Ammo = 360
                                v145.ExplosionKnockback = false
                                v145.HitSoundVolume = 0.5
                                v145.LaserBeamStopDelay = 1
                                v145.ProjectileType = "NewBullet"
                                v145.RaisePitch = false
                                v145.Accuracy = 0.1
                                v145.InspectAnimationEnabled = false
                                v145.ZeroDamageDistance = 10000
                                v145.SwitchAnimationSpeed = 1
                                v145.ApplyDebuffOnCritical = false
                                v145.MaxDepletion = 4
                                v145.GoreSoundPitchMax = 1.5
                                v145.FullyGibbedLimbChance = 50
                                v145.CustomExplosion = false
                                v145.MeleeHitCharSndVolume = 1
                                v145.HomingDistance = 250
                                v145.MeleeCanBreakGlass = true
                                v145.LockOnDistance = 100
                                v145.BoltColor = Color3.new(0, 0.6666666865348816, 1)
                                v145.ScaleBolt = false
                                v145.MeleeBloodWoundTextureColor = Color3.new(1, 0, 0)
                                v145.StopBouncingOn = "None"
                                v145.AdvancedChargingTime = 5
                                v145.ExplosionSoundEnabled = true
                                v145.BoltCount = 1
                                v145.MinigunEnabled = false
                                v145.OnLaserHitEventName = "None"
                                v145.LaserTrailDebuffName = ""
                                v145.HitmarkerSoundIDs = {
                                    7837535984,
                                    7837536770,
                                    7837535984
                                }
                                v145.CollideDecay = true
                                v145.ShotgunPattern = false
                                v145.FireRate = 0.125
                                v145.BounceVelocity = 30
                                v145.PartColor = true
                                v145.DamageDropOffEnabled = false
                                v145.AnchorDebris = false
                                v145.ScopeKnockbackDamper = 0.65
                                v145.SpinY = 0
                                v145.AngleY_Max = 0
                                v145.ExplosionCraterVisibleTime = 3
                                v145.LaserTrailCriticalDamageEnabled = false
                                v145.BulletShellHitSoundEnabled = true
                                v145.MinigunRevUpAnimationSpeed = 1
                                v145.ScaleLaserTrail = false
                                v145.BounceDelay = 1
                                v145.BulletSpeed = 2000
                                v145.ExplosiveEnabled = false
                                v145.BulletShellHitSoundIDs = {
                                    3909012115
                                }
                                v145.ChargedShotAdvanceEnabled = false
                                v145.AmmoCost = 1
                                v145.CriticalBaseChance = 5
                                v145.LockOnScanBurstRate = 0.1
                                v145.MarkerEffectVisibleTime = 3
                                v145.ExplosionRadius = 8
                                v145.ReloadTime = 3
                                v145.HomeThroughWall = false
                                v145.LaserTrailConstantDamage = true
                                v145.HitmarkerEnabled = true
                                v145.CustomHitEffect = false
                                v145.NormalizeDebris = false
                                v145.ShootType = "Projectile"
                                v145.MeleeHitEffectEnabled = true
                                v145.BulletShellVelocity = 17
                                v145.RecoilSpeed = 15
                                v145.LightShadows = true
                                v145.HitmarkerColor = Color3.new(1, 1, 1)
                                v145.SpinX = 3
                                v145.CooldownTime = 0.05
                                v145.BulletHoleSize = 0.2
                                v145.ChargedShotEnabled = false
                                v145.LaserBeamRange = 100
                                v145.FriendlyFire = true
                                v145.ApplyMeleeDebuffOnCritical = false
                                v145.BounceDebris = true
                                v145.PredictDirection = false
                                v145.AngleZ_Min = - 1
                                v145.NoExplosionWhileBouncing = false
                                v145.DistantSoundIds = {
                                    177174605
                                }
                                v145.BulletShellHitSoundPitchMax = 1
                                v145.BulletPerShot = 8
                                v145.ExplosionKnockbackPower = 50
                                v145.LaserTrailReflectance = 0
                                local v149 = {
                                    {
                                        0,
                                        - 0.4
                                    },
                                    {
                                        - 0.35,
                                        0.2
                                    },
                                    {
                                        0.35,
                                        0.2
                                    },
                                    {
                                        0,
                                        1
                                    },
                                    {
                                        0.95,
                                        0.31
                                    },
                                    {
                                        0.59,
                                        - 0.81
                                    },
                                    {
                                        - 0.59,
                                        - 0.81
                                    },
                                    {
                                        - 0.95,
                                        0.31
                                    }
                                }
                                v145.SpreadPattern = v149
                                v145.MarkerEffectSize = 0.5
                                v145.BoltTransparency = 0
                                v145.RaycastHitboxAnchorPoint = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                                v145.LaserTrailVisibleTime = 1
                                v145.LimitedAmmoEnabled = true
                                v145.IdleAnimationID = 12512011732
                                v145.TweenLength = 0.8
                                v145.CriticalDamageEnabled = false
                                v145.ExtraRayUpdater = "Template"
                                v145.HitSoundPitchMin = 1
                                v145.EquippedAnimationSpeed = 2
                                v145.ShotgunEnabled = false
                                v145.FrictionConstant = 0
                                v145.LaserBeamStopAnimationSpeed = 1
                                v145.SniperEnabled = false
                                v145.BloodWoundSize = 0.5
                                v145.SelfKnockbackMultiplier = 2
                                v145.BoltMaterial = Enum.Material.Neon
                                v145.ChargeAlterTable = {}
                                v145.LaserTrailScaleMultiplier = 1.5
                                v145.DamageMultipliers = {
                                    Head = 2
                                }
                                v145.HitEventOnTermination = true
                                v145.MeleeHitCharSndPitchMax = 1
                                v145.BloodWoundEnabled = true
                                v145.DecayVelocity = 30
                                v145.MeleeHitCharSndPitchMin = 1
                                v145.BulletHoleEnabled = true
                                v145.OverheatAnimationSpeed = 1
                                v145.MaxAmmo = 360
                                v145.LaserTrailMaterial = Enum.Material.Neon
                                v145.BulletShellDelay = 0
                                v145.CrossExpansion = 0
                                v145.DamageableLaserTrail = false
                                v145.LaserTrailCriticalDamageMultiplier = 3
                                v145.BulletShellEnabled = true
                                v145.MarkerEffectTexture = {
                                    2078626
                                }
                                v145.SelfDamageRedution = 0.5
                                v145.LaserTrailLifesteal = 0
                                v145.CrossSpeed = 1
                                v144[3] = v145
                                v144[4] = game:GetService("Players"):WaitForChild(p143).Character.Humanoid
                                v144[5] = game:GetService("Players"):WaitForChild(p143).Character.HumanoidRootPart
                                v144[6] = game:GetService("Players"):WaitForChild(p143).Character.RightFoot
                                v144[7] = Vector3.new(0.8361780643463135, 0.6279295086860657, 1.242453932762146)
                                local v150 = {
                                    ChargeLevel = 0,
                                    ExplosionEffectFolder = game:GetService("ReplicatedStorage"):WaitForChild("Miscs"):WaitForChild("GunVisualEffects"):WaitForChild("Common"):WaitForChild("ExplosionEffect"),
                                    MuzzleFolder = game:GetService("ReplicatedStorage"):WaitForChild("Miscs"):WaitForChild("GunVisualEffects"):WaitForChild("Common"):WaitForChild("MuzzleEffect"),
                                    HitEffectFolder = game:GetService("ReplicatedStorage"):WaitForChild("Miscs"):WaitForChild("GunVisualEffects"):WaitForChild("Common"):WaitForChild("HitEffect"),
                                    GoreEffect = game:GetService("ReplicatedStorage"):WaitForChild("Miscs"):WaitForChild("GunVisualEffects"):WaitForChild("Common"):WaitForChild("GoreEffect"),
                                    BloodEffectFolder = game:GetService("ReplicatedStorage"):WaitForChild("Miscs"):WaitForChild("GunVisualEffects"):WaitForChild("Common"):WaitForChild("BloodEffect")
                                }
                                v144[8] = v150
                                v144[9] = 9.079609870910645
                                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("InflictTarget"):InvokeServer(unpack(v144))
                            end
                            local function v154(p152)
                                local v153 = p152.Character
                                return v153 and (v153:FindFirstChild("Humanoid") and (v153:FindFirstChild("HumanoidRootPart") and v153:FindFirstChild("RightFoot"))) and true or false
                            end
                            if v142 then
                                if v154(v142) then
                                    v151(v142.Name)
                                else
                                    vu1:Notify({
                                        Title = "Error.",
                                        Content = "Couldn\'t kill player.",
                                        SubContent = "",
                                        Duration = 5
                                    })
                                end
                            elseif not v142 then
                                vu1:Notify({
                                    Title = "Error.",
                                    Content = "Player Not Found.",
                                    SubContent = "",
                                    Duration = 5
                                })
                            end
                        end
                    end
                })
                v45.Players:AddSection("All Players")
                v45.Players:AddButton({
                    Title = "Kill All",
                    Description = "Kill every player (WITH A GUN) in the game (they must have a gun)\nVERY BUGGY, MAY NOT WORK",
                    Callback = function()
                        if vu14 ~= true then
                            vu1:Notify({
                                Title = "Error.",
                                Content = "You Must Own Premiun In Order To Use This.",
                                SubContent = "Join Our Discord To Buy MikeyHub.",
                                Duration = 5
                            })
                        else
                            local v155 = game:GetService("Players")
                            local v156, v157, v158 = pairs(v155:GetPlayers())
                            local function v161(p159)
                                local v160 = p159.Character
                                return v160 and (v160:FindFirstChild("Humanoid") and (v160:FindFirstChild("HumanoidRootPart") and v160:FindFirstChild("RightFoot"))) and true or false
                            end
                            local function v170(p162)
                                local v163 = {
                                    "Gun",
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool")
                                }
                                local v164 = {
                                    IgnoreHumanoids = false,
                                    TacticalReloadAnimationSpeed = 1,
                                    PenetrationIgnoreDelay = math.huge,
                                    CanSpinPart = false,
                                    AngleX_Min = 1,
                                    Lifesteal = 0,
                                    MeleeCriticalDamageEnabled = false,
                                    SilenceEffect = false,
                                    BulletShellType = "Normal",
                                    ExplosionCraterFadeTime = 1,
                                    BaseDamage = math.huge,
                                    GoreSoundVolume = 1,
                                    HitCharSndPitchMin = 1,
                                    CustomMeleeHitEffect = false,
                                    WhizDistance = 25,
                                    Handles = {
                                        "Handle"
                                    },
                                    ProjectileMotion = false,
                                    HitmarkerFadeTimeHS = 0.4,
                                    ReloadAnimationSpeed = 1.5,
                                    MeleeDebuffChance = 100,
                                    SpreadRedutionS = 0.6,
                                    VisibleTime = 0.01,
                                    HoldDownAnimationSpeed = 0.5,
                                    DebuffName = "",
                                    ScopeSwaySpeed = 15,
                                    HoldingTime = 1,
                                    HeatPerFireMax = 8,
                                    LaserTrailDamageRate = 0.1,
                                    MeleeBloodEnabled = true,
                                    ApplyLaserTrailDebuffOnCritical = false,
                                    LaserTrailHeight = 0.5,
                                    MeleeDamage = 20,
                                    EquippedAnimationID = 12512019963,
                                    RaycastHitboxData = {
                                        CFrame.new(- 1, 1, - 1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                                        CFrame.new(1, 1, - 1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                                        CFrame.new(- 1, - 1, - 1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                                        CFrame.new(1, - 1, - 1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                                        CFrame.new(1, - 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                                        CFrame.new(- 1, - 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                                        CFrame.new(- 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                                        CFrame.new(1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                                    },
                                    ShellClipinSpeed = 0.5,
                                    EasingStyleNAD = Enum.EasingStyle.Quint,
                                    LockOnRadius = 10,
                                    ScopeKnockbackMultiplier = 5,
                                    BulletHoleVisibleTime = 3,
                                    AltAnimationSpeed = 1,
                                    AimIdleAnimationSpeed = 0,
                                    MeleeHitSoundIDs = {
                                        6000828622
                                    },
                                    PreShotgunReload = false,
                                    BulletPerBurst = 3,
                                    RicochetAmount = 0,
                                    ScanFrameHeight = 0.5,
                                    ShotsForDepletion = 12,
                                    SprintAnimationSpeed = 1,
                                    MaximumTargets = 3,
                                    BulletBrightness = 400,
                                    MuzzleLightEnabled = false,
                                    RecoilRedution = 0.5,
                                    EasingStyle = Enum.EasingStyle.Quint,
                                    MotionBlur = true,
                                    HitmarkerColorHS = Color3.new(1, 0, 0),
                                    BloodWoundFadeTime = 1,
                                    RaycastHitbox = false,
                                    DisappearTime = 5,
                                    SprintAnimationID = 12512158240,
                                    ExplosionSoundIDs = {
                                        163064102
                                    },
                                    LaserTrailEnabled = false,
                                    LaserBeamStartupAnimationSpeed = 1,
                                    BloodWoundPartColor = true,
                                    MeleeHitSoundPitchMax = 1.5,
                                    ExplosionKnockbackMultiplierOnPlayer = 2,
                                    DecayProjectile = false,
                                    ShotgunPumpinSpeed = 0.5,
                                    PenetrationType = "HumanoidPenetration",
                                    LaserTrailFadeTime = 0.5,
                                    HitmarkerSoundPitchHS = 1,
                                    LowAmmo = true,
                                    BulletShellRotVelocity = 40,
                                    TimeBeforeScan = 0.5,
                                    MeleeBloodWoundFadeTime = 1,
                                    EasingDirectionNAD = Enum.EasingDirection.Out,
                                    LaserTrailDebuffChance = 100,
                                    LightBrightness = 4,
                                    HitmarkerFadeTime = 0.4,
                                    BlacklistParts = {
                                        ["Part Name Here"] = true
                                    },
                                    DelayAfterFiring = 1,
                                    MaximumTime = 1,
                                    ChargingTime = 1,
                                    InspectAnimationSpeed = 1
                                }
                                local v165 = {
                                    {
                                        FireAnimationSpeed = 1,
                                        FireAnimationID = 12512005718
                                    }
                                }
                                v164.FireAnimations = v165
                                v164.LaserTrailKnockback = 0
                                v164.FieldOfViewS = 12.5
                                v164.CrossScaleIS = 0.6
                                v164.BoltShape = "Block"
                                v164.IronsightEnabled = false
                                v164.BoltVisibleTime = 1
                                v164.SmokeTrailEnabled = false
                                v164.BulletShellHitSoundPitchMin = 1
                                v164.MeleeAttackEnabled = false
                                v164.MeleeDebuffName = ""
                                v164.WhizSoundIDs = {
                                    9114115640,
                                    9114115577,
                                    9114115499
                                }
                                v164.AngleZ_Max = 1
                                v164.MinigunRevDownAnimationSpeed = 1
                                v164.DebuffChance = 100
                                v164.FieldOfViewIS = 50
                                v164.CameraRecoilingEnabled = true
                                v164.SwitchTime = 0.25
                                v164.CrossSize = 4
                                v164.Lifetime = 5
                                v164.ScopeSwayDamper = 0.65
                                v164.IgnoreBlacklistedParts = true
                                v164.SpreadRedutionIS = 0.6
                                v164.MeleeBloodWoundVisibleTime = 3
                                v164.RadomizeRotVelocity = true
                                v164.MouseSensitiveS = 0.2
                                v164.LaserBeamStartupDelay = 1
                                v164.BoltScaleMultiplier = 1.5
                                v164.MeleeHitSoundVolume = 1
                                v164.ReloadAnimationID = 12512015034
                                v164.AnchorDecay = false
                                v164.EquipTime = 0
                                v164.LaserTrailColor = Color3.new(0, 0.6666666865348816, 1)
                                local v166 = {
                                    {
                                        AimFireAnimationSpeed = 1
                                    }
                                }
                                v164.AimFireAnimations = v166
                                v164.RandomizeBoltColorIn = "None"
                                v164.BurstFireEnabled = false
                                v164.BulletHoleFadeTime = 1
                                v164.MarkerPartColor = true
                                v164.LaserTrailCriticalBaseChance = 5
                                v164.DistantSoundVolume = 1.5
                                v164.HoldAndReleaseEnabled = false
                                v164.BloodWoundTextureColor = Color3.new(1, 0, 0)
                                v164.ShotgunReload = false
                                v164.IdleAnimationSpeed = 0
                                v164.TweenLengthNAD = 0.8
                                v164.TimeBeforeCooldown = 3
                                v164.LaserTrailWidth = 0.5
                                v164.SelfKnockbackRedution = 0.8
                                v164.GoreSoundPitchMin = 1
                                v164.DebrisProjectile = false
                                v164.ChargingSoundIncreasePitch = true
                                v164.BoltFadeTime = 0.5
                                v164.MeleeBloodWoundEnabled = true
                                v164.BoltRadius = 5
                                v164.AimChargingAnimationSpeed = 1
                                v164.HoldDownAnimationID = 12512158240
                                v164.DelayBeforeFiring = 1
                                local v167 = {
                                    {
                                        ShotgunPumpinAnimationSpeed = 1
                                    }
                                }
                                v164.ShotgunPumpinAnimations = v167
                                v164.BurstRates = {
                                    0,
                                    0.075,
                                    0.075,
                                    0
                                }
                                v164.OnHitEventName = "None"
                                v164.Acceleration = Vector3.zero
                                v164.LaserTrailDebuff = false
                                v164.CanBreakGlass = true
                                v164.Auto = true
                                v164.LaserColorCycleTime = 5
                                v164.MeleeBloodWoundPartColor = true
                                v164.BurstRate = 0.075
                                v164.TacticalReloadAnimationEnabled = false
                                v164.BulletHoleTexture = {
                                    64291961
                                }
                                v164.UpdateRayInExtra = false
                                v164.AimAnimationsEnabled = false
                                v164.Recoil = 25
                                v164.MeleeAttackRange = 4
                                v164.SelfDamage = false
                                v164.AmmoPerMag = 30
                                v164.SelfKnockback = false
                                v164.RecoilDamper = 0.65
                                v164.HitCharSndPitchMax = 1
                                v164.BloodEnabled = true
                                v164.MaxHeat = 100
                                v164.LaserBeamLoopAnimationSpeed = 1
                                v164.Debuff = false
                                v164.LaserTrailTransparency = 0
                                v164.SlopeAngle = 90
                                v164.MeleeLifesteal = 0
                                v164.HitmarkerSoundPitch = 1
                                v164.GoreEffectEnabled = false
                                v164.BounceBetweenHumanoids = false
                                v164.ScopeKnockbackSpeed = 15
                                v164.BulletShellParticles = false
                                v164.HitSoundPitchMax = 1.5
                                v164.SuperRicochet = false
                                v164.CycleHandles = false
                                v164.ExplosionCraterSize = 3
                                v164.BoltWidth = 0.5
                                v164.BoltReflectance = 0
                                v164[p162] = 1000
                                v164.BounceHeight = 50
                                v164.MeleeHitSoundPitchMin = 1
                                v164.HitEffectEnabled = true
                                v164.PreShotgunReloadSpeed = 0.5
                                v164.Level2ChargingTime = 2
                                v164.Homing = false
                                v164.WhizSoundEnabled = true
                                v164.LaserTrailDamage = 20
                                v164.AngleY_Min = 0
                                v164.AngleX_Max = 1
                                v164.Level1ChargingTime = 1
                                v164.BoltWideness = 5
                                v164.SelectiveFireEnabled = false
                                v164.LightRange = 15
                                v164.BulletShellHitSoundVolume = 1
                                v164.BulletBloom = 0.005
                                v164.LockOnOnHovering = false
                                v164.IgnoreSlope = false
                                v164.MeleeBloodWoundTexture = {
                                    2078626
                                }
                                v164.MeleeKnockback = 0
                                v164.BatteryEnabled = false
                                v164.HeatPerFireMin = 7
                                v164.EasingDirection = Enum.EasingDirection.Out
                                v164.MouseSensitiveIS = 0.2
                                v164.Knockback = math.huge
                                v164.ExplosionCraterPartColor = false
                                v164.MeleeHeadshotHitmarker = true
                                v164.HoldDownEnabled = true
                                v164.MeleeHitCharSndIDs = {
                                    6398015798,
                                    6398016125,
                                    6398016391,
                                    6398016618
                                }
                                v164.LookAtInput = false
                                v164.ShotgunPump = false
                                v164.PenetrationAmount = 0
                                v164.CrossScaleS = 0
                                v164.MuzzleFlashEnabled = true
                                v164.ScanFrameWidth = 0.5
                                v164.LightningBoltEnabled = false
                                v164.OverheatTime = 2.5
                                v164.Range = 5000
                                v164.MeleeDebuff = false
                                v164.WhizSoundPitchMin = 1
                                v164.MeleeCriticalBaseChance = 5
                                v164.BloodWoundVisibleTime = 3
                                v164.WhizSoundVolume = 1
                                v164.EchoEffect = true
                                v164.SelfKnockbackPower = 50
                                v164.ScopeSensitive = 0.25
                                v164.DamageBasedOnDistance = false
                                v164.BloodWoundTexture = {
                                    2078626
                                }
                                v164.Spread = 5
                                v164.ExplosionCraterTexture = {
                                    53875997
                                }
                                v164.ChargingAnimationSpeed = 1
                                v164.HitCharSndVolume = 0.5
                                v164.ReduceSelfDamageOnAirOnly = false
                                v164.MarkerEffectFadeTime = 1
                                v164.BulletParticle = false
                                v164.MeleeCriticalDamageMultiplier = 3
                                v164.MeleeAttackAnimationSpeed = 1
                                v164.RandomizeLaserColorIn = "None"
                                v164.ExplosionSoundPitchMin = 1
                                v164.FireModes = {
                                    1,
                                    2,
                                    3,
                                    true
                                }
                                v164.DisableDebrisContents = {
                                    Trail = false,
                                    Beam = false,
                                    Sound = false,
                                    Particle = false,
                                    Light = false
                                }
                                v164.ShotgunClipinAnimationSpeed = 1
                                v164.HeadshotHitmarker = true
                                v164.MarkerEffectEnabled = true
                                v164.HitCharSndIDs = {
                                    3802437008,
                                    3802437361,
                                    3802437696,
                                    3802440043,
                                    3802440388,
                                    3802442962
                                }
                                v164.PreShotgunReloadAnimationSpeed = 1
                                v164.LaserBeam = false
                                v164.MinDepletion = 2
                                v164.ModuleName = "1"
                                v164.LockOnScan = false
                                v164.CrossDamper = 0.8
                                v164.ExplosionKnockbackMultiplierOnTarget = 2
                                v164.GoreSoundIDs = {
                                    1930359546
                                }
                                v164.ExplosionCraterEnabled = true
                                v164.ExplosionSoundPitchMax = 1.5
                                v164.BoltHeight = 0.5
                                v164.LightColor = Color3.new(1, 1.1098039150238037, 0)
                                v164.AnimationKeyframes = {}
                                v164.WhizSoundPitchMax = 1
                                v164.AltTime = 1
                                v164.ScanRate = 0.5
                                v164.FireRates = {
                                    0.125,
                                    0.5,
                                    0.5,
                                    0.1
                                }
                                v164.CooldownRate = 1
                                v164.BounceElasticity = 1
                                v164.BulletSize = 0.4
                                v164.ChargingSoundPitchRange = {
                                    1,
                                    1.5
                                }
                                v164.OnMeleeHitEventName = "None"
                                v164.CriticalDamageMultiplier = 3
                                v164.CollideDebris = true
                                v164.BulletType = "Normal"
                                v164.TravelType = "Distance"
                                v164.MeleeBloodWoundSize = 0.5
                                v164.LaserTrailShape = "Block"
                                v164.ChargingAnimationEnabled = false
                                v164.FireModeTexts = {
                                    "SEMI-AUTO",
                                    "2-ROUND-BURST",
                                    "3-ROUND-BURST",
                                    "AUTO"
                                }
                                v164.VelocityInfluence = true
                                v164.ScopeDelay = 0
                                v164.MaximumRate = 2
                                v164.ExplosionSoundVolume = 1
                                v164.MeleeDamageMultipliers = {
                                    Head = 2
                                }
                                v164.AllowCollide = false
                                v164.TurnRatePerSecond = 1
                                v164.SpinZ = 0
                                v164.TacticalReloadTime = 3
                                v164.CustomShotName = "Template"
                                v164.SmokeTrailRateIncrement = 1
                                v164.PenetrationDepth = 0
                                v164.HitSoundIDs = {
                                    9114115640,
                                    9114115577,
                                    9114115499
                                }
                                v164.Ammo = 360
                                v164.ExplosionKnockback = false
                                v164.HitSoundVolume = 0.5
                                v164.LaserBeamStopDelay = 1
                                v164.ProjectileType = "NewBullet"
                                v164.RaisePitch = false
                                v164.Accuracy = 0.1
                                v164.InspectAnimationEnabled = false
                                v164.ZeroDamageDistance = 10000
                                v164.SwitchAnimationSpeed = 1
                                v164.ApplyDebuffOnCritical = false
                                v164.MaxDepletion = 4
                                v164.GoreSoundPitchMax = 1.5
                                v164.FullyGibbedLimbChance = 50
                                v164.CustomExplosion = false
                                v164.MeleeHitCharSndVolume = 1
                                v164.HomingDistance = 250
                                v164.MeleeCanBreakGlass = true
                                v164.LockOnDistance = 100
                                v164.BoltColor = Color3.new(0, 0.6666666865348816, 1)
                                v164.ScaleBolt = false
                                v164.MeleeBloodWoundTextureColor = Color3.new(1, 0, 0)
                                v164.StopBouncingOn = "None"
                                v164.AdvancedChargingTime = 5
                                v164.ExplosionSoundEnabled = true
                                v164.BoltCount = 1
                                v164.MinigunEnabled = false
                                v164.OnLaserHitEventName = "None"
                                v164.LaserTrailDebuffName = ""
                                v164.HitmarkerSoundIDs = {
                                    7837535984,
                                    7837536770,
                                    7837535984
                                }
                                v164.CollideDecay = true
                                v164.ShotgunPattern = false
                                v164.FireRate = 0.125
                                v164.BounceVelocity = 30
                                v164.PartColor = true
                                v164.DamageDropOffEnabled = false
                                v164.AnchorDebris = false
                                v164.ScopeKnockbackDamper = 0.65
                                v164.SpinY = 0
                                v164.AngleY_Max = 0
                                v164.ExplosionCraterVisibleTime = 3
                                v164.LaserTrailCriticalDamageEnabled = false
                                v164.BulletShellHitSoundEnabled = true
                                v164.MinigunRevUpAnimationSpeed = 1
                                v164.ScaleLaserTrail = false
                                v164.BounceDelay = 1
                                v164.BulletSpeed = 2000
                                v164.ExplosiveEnabled = false
                                v164.BulletShellHitSoundIDs = {
                                    3909012115
                                }
                                v164.ChargedShotAdvanceEnabled = false
                                v164.AmmoCost = 1
                                v164.CriticalBaseChance = 5
                                v164.LockOnScanBurstRate = 0.1
                                v164.MarkerEffectVisibleTime = 3
                                v164.ExplosionRadius = 8
                                v164.ReloadTime = 3
                                v164.HomeThroughWall = false
                                v164.LaserTrailConstantDamage = true
                                v164.HitmarkerEnabled = true
                                v164.CustomHitEffect = false
                                v164.NormalizeDebris = false
                                v164.ShootType = "Projectile"
                                v164.MeleeHitEffectEnabled = true
                                v164.BulletShellVelocity = 17
                                v164.RecoilSpeed = 15
                                v164.LightShadows = true
                                v164.HitmarkerColor = Color3.new(1, 1, 1)
                                v164.SpinX = 3
                                v164.CooldownTime = 0.05
                                v164.BulletHoleSize = 0.2
                                v164.ChargedShotEnabled = false
                                v164.LaserBeamRange = 100
                                v164.FriendlyFire = true
                                v164.ApplyMeleeDebuffOnCritical = false
                                v164.BounceDebris = true
                                v164.PredictDirection = false
                                v164.AngleZ_Min = - 1
                                v164.NoExplosionWhileBouncing = false
                                v164.DistantSoundIds = {
                                    177174605
                                }
                                v164.BulletShellHitSoundPitchMax = 1
                                v164.BulletPerShot = 8
                                v164.ExplosionKnockbackPower = 50
                                v164.LaserTrailReflectance = 0
                                local v168 = {
                                    {
                                        0,
                                        - 0.4
                                    },
                                    {
                                        - 0.35,
                                        0.2
                                    },
                                    {
                                        0.35,
                                        0.2
                                    },
                                    {
                                        0,
                                        1
                                    },
                                    {
                                        0.95,
                                        0.31
                                    },
                                    {
                                        0.59,
                                        - 0.81
                                    },
                                    {
                                        - 0.59,
                                        - 0.81
                                    },
                                    {
                                        - 0.95,
                                        0.31
                                    }
                                }
                                v164.SpreadPattern = v168
                                v164.MarkerEffectSize = 0.5
                                v164.BoltTransparency = 0
                                v164.RaycastHitboxAnchorPoint = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                                v164.LaserTrailVisibleTime = 1
                                v164.LimitedAmmoEnabled = true
                                v164.IdleAnimationID = 12512011732
                                v164.TweenLength = 0.8
                                v164.CriticalDamageEnabled = false
                                v164.ExtraRayUpdater = "Template"
                                v164.HitSoundPitchMin = 1
                                v164.EquippedAnimationSpeed = 2
                                v164.ShotgunEnabled = false
                                v164.FrictionConstant = 0
                                v164.LaserBeamStopAnimationSpeed = 1
                                v164.SniperEnabled = false
                                v164.BloodWoundSize = 0.5
                                v164.SelfKnockbackMultiplier = 2
                                v164.BoltMaterial = Enum.Material.Neon
                                v164.ChargeAlterTable = {}
                                v164.LaserTrailScaleMultiplier = 1.5
                                v164.DamageMultipliers = {
                                    Head = 2
                                }
                                v164.HitEventOnTermination = true
                                v164.MeleeHitCharSndPitchMax = 1
                                v164.BloodWoundEnabled = true
                                v164.DecayVelocity = 30
                                v164.MeleeHitCharSndPitchMin = 1
                                v164.BulletHoleEnabled = true
                                v164.OverheatAnimationSpeed = 1
                                v164.MaxAmmo = 360
                                v164.LaserTrailMaterial = Enum.Material.Neon
                                v164.BulletShellDelay = 0
                                v164.CrossExpansion = 0
                                v164.DamageableLaserTrail = false
                                v164.LaserTrailCriticalDamageMultiplier = 3
                                v164.BulletShellEnabled = true
                                v164.MarkerEffectTexture = {
                                    2078626
                                }
                                v164.SelfDamageRedution = 0.5
                                v164.LaserTrailLifesteal = 0
                                v164.CrossSpeed = 1
                                v163[3] = v164
                                v163[4] = game:GetService("Players"):WaitForChild(p162).Character.Humanoid
                                v163[5] = game:GetService("Players"):WaitForChild(p162).Character.HumanoidRootPart
                                v163[6] = game:GetService("Players"):WaitForChild(p162).Character.RightFoot
                                v163[7] = Vector3.new(0.8361780643463135, 0.6279295086860657, 1.242453932762146)
                                local v169 = {
                                    ChargeLevel = 0,
                                    ExplosionEffectFolder = game:GetService("ReplicatedStorage"):WaitForChild("Miscs"):WaitForChild("GunVisualEffects"):WaitForChild("Common"):WaitForChild("ExplosionEffect"),
                                    MuzzleFolder = game:GetService("ReplicatedStorage"):WaitForChild("Miscs"):WaitForChild("GunVisualEffects"):WaitForChild("Common"):WaitForChild("MuzzleEffect"),
                                    HitEffectFolder = game:GetService("ReplicatedStorage"):WaitForChild("Miscs"):WaitForChild("GunVisualEffects"):WaitForChild("Common"):WaitForChild("HitEffect"),
                                    GoreEffect = game:GetService("ReplicatedStorage"):WaitForChild("Miscs"):WaitForChild("GunVisualEffects"):WaitForChild("Common"):WaitForChild("GoreEffect"),
                                    BloodEffectFolder = game:GetService("ReplicatedStorage"):WaitForChild("Miscs"):WaitForChild("GunVisualEffects"):WaitForChild("Common"):WaitForChild("BloodEffect")
                                }
                                v163[8] = v169
                                v163[9] = 9.079609870910645
                                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("InflictTarget"):InvokeServer(unpack(v163))
                            end
                            while true do
                                local v171
                                v158, v171 = v156(v157, v158)
                                if v158 == nil then
                                    break
                                end
                                if v171 ~= vu38 and v161(v171) then
                                    v170(v171.Name)
                                    print(v171.Name)
                                end
                            end
                        end
                    end
                })
                v45.Players:AddButton({
                    Title = "Arrest All (V1)",
                    Description = "Arrests every player (thats arrestable) in the game (better with anti ragdoll)",
                    Callback = function()
                        local vu172 = game:GetService("Players")
                        local function vu177(p173)
                            local v174 = p173.Character
                            local v175 = p173.Backpack
                            if v174 then
                                if not v174:FindFirstChild("HandCuffs") then
                                    local v176 = v175:FindFirstChild("HandCuffs")
                                    if v176 then
                                        vu38.Character.Humanoid:EquipTool(v176)
                                    end
                                end
                            else
                                return
                            end
                        end
                        local function vu182(p178)
                            local v179 = p178.Character
                            if v179 and v179:FindFirstChild("HumanoidRootPart") then
                                local v180 = v179.HumanoidRootPart
                                local v181 = v180:FindFirstChild("Arrest")
                                if v181 and v181:IsA("ProximityPrompt") then
                                    vu38.Character.HumanoidRootPart.CFrame = v180.CFrame
                                    task.wait(0.1)
                                    fireproximityprompt(v181)
                                end
                            end
                        end;
                        (function()
                            local vu183 = vu172.LocalPlayer
                            if vu183.Team.Name ~= "Police" then
                                print(vu183.Team.Name)
                                vu1:Notify({
                                    Title = "Error.",
                                    Content = "You must be on the police team in order to use this.",
                                    SubContent = "",
                                    Duration = 5
                                })
                            else
                                vu177(vu183);
                                (function()
                                    local v184 = vu172
                                    local v185, v186, v187 = pairs(v184:GetPlayers())
                                    while true do
                                        local v188
                                        v187, v188 = v185(v186, v187)
                                        if v187 == nil then
                                            break
                                        end
                                        if v188 ~= vu183 and v188.Character and v188.Character:FindFirstChild("HumanoidRootPart") then
                                            vu182(v188)
                                            task.wait(0.5)
                                        end
                                    end
                                end)()
                            end
                        end)()
                    end
                })
                v45.GunMods:AddSection("Main")
                v45.GunMods:AddButton({
                    Title = "Infinite Damage (ONE SHOT)",
                    Description = "Kills everyone you shoot at in one shot.",
                    Callback = function()
                        if vu14 ~= true then
                            vu1:Notify({
                                Title = "Error.",
                                Content = "You Must Own Premiun In Order To Use This.",
                                SubContent = "Join Our Discord To Buy MikeyHub.",
                                Duration = 5
                            })
                        else
                            local v189 = vu38.Character:FindFirstChildOfClass("Tool")
                            if v189 then
                                local v190 = game:GetService("ReplicatedStorage").Modules.WeaponSettings.Gun[v189.Name].Setting["1"]
                                require(v190).BaseDamage = 99999
                            else
                                vu1:Notify({
                                    Title = "Error.",
                                    Content = "You must have a gun equipped in order to use this.",
                                    SubContent = "",
                                    Duration = 5
                                })
                            end
                        end
                    end
                })
                v45.GunMods:AddButton({
                    Title = "Infinite Knockback (OP)",
                    Description = "Flings ze target.\nCAN KILL GOD MODE PLAYERS.",
                    Callback = function()
                        if vu14 ~= true then
                            vu1:Notify({
                                Title = "Error.",
                                Content = "You Must Own Premiun In Order To Use This.",
                                SubContent = "Join Our Discord To Buy MikeyHub.",
                                Duration = 5
                            })
                        else
                            local v191 = vu38.Character:FindFirstChildOfClass("Tool")
                            if v191 then
                                local v192 = game:GetService("ReplicatedStorage").Modules.WeaponSettings.Gun[v191.Name].Setting["1"]
                                require(v192).Knockback = 99999
                            else
                                vu1:Notify({
                                    Title = "Error.",
                                    Content = "You must have a gun equipped in order to use this.",
                                    SubContent = "",
                                    Duration = 5
                                })
                            end
                        end
                    end
                })
                v45.GunMods:AddButton({
                    Title = "No FireRate",
                    Description = "Game can shoot really fast",
                    Callback = function()
                        local v193 = vu38.Character:FindFirstChildOfClass("Tool")
                        if v193 then
                            local v194 = game:GetService("ReplicatedStorage").Modules.WeaponSettings.Gun[v193.Name].Setting["1"]
                            require(v194).FireRate = 0
                        else
                            vu1:Notify({
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
                    Description = "Removes recoil",
                    Callback = function()
                        local v195 = vu38.Character:FindFirstChildOfClass("Tool")
                        if v195 then
                            local v196 = game:GetService("ReplicatedStorage").Modules.WeaponSettings.Gun[v195.Name].Setting["1"]
                            require(v196).Recoil = 0
                        else
                            vu1:Notify({
                                Title = "Error.",
                                Content = "You must have a gun equipped in order to use this.",
                                SubContent = "",
                                Duration = 5
                            })
                        end
                    end
                })
                v45.Combat:AddSection("Hitbox Expander")
                local vu197 = 5
                local vu198 = 5
                local vu199 = 1
                local vu200 = nil
                local vu201 = true
                local vu202 = "HumanoidRootPart"
                v45.Combat:AddSlider("", {
                    Title = "HumanoidRootPart Hitbox Size",
                    Description = "This is only if you have hitbox expander part on \nhumanoidrootpart",
                    Default = 5,
                    Min = 1,
                    Max = 100,
                    Rounding = 0.1,
                    Callback = function(p203)
                        vu197 = p203
                    end
                })
                v45.Combat:AddSlider("", {
                    Title = "Head Hitbox Size",
                    Description = "This is only if you have hitbox expander part on \nhead",
                    Default = 6,
                    Min = 1,
                    Max = 6,
                    Rounding = 0.1,
                    Callback = function(p204)
                        vu198 = p204
                    end
                })
                v45.Combat:AddToggle("", {
                    Title = "Hitbox Visualizer",
                    Description = "",
                    Default = true,
                    Callback = function(p205)
                        vu201 = p205
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
                    Callback = function(p206)
                        vu202 = p206
                    end
                })
                v45.Combat:AddToggle("", {
                    Title = "Hitbox Expander",
                    Description = "Reach but for guns?",
                    Default = false,
                    Callback = function(p207)
                        vu200 = p207
                        local vu208 = game:GetService("Players").LocalPlayer
                        local function v217(p209, p210)
                            local v211, v212, v213 = ipairs(game:GetService("Workspace"):GetDescendants())
                            while true do
                                local v214
                                v213, v214 = v211(v212, v213)
                                if v213 == nil then
                                    break
                                end
                                if v214:FindFirstChild("HumanoidRootPart") and v214.Name ~= vu208.Name and game.Players:FindFirstChild(v214.Name) then
                                    if vu202 ~= "HumanoidRootPart" then
                                        if vu202 == "Head" then
                                            local v215 = v214:FindFirstChild("Head")
                                            if v215 then
                                                if vu200 then
                                                    if v215.Size ~= Vector3.new(vu198, vu198, vu198) then
                                                        v215.Size = Vector3.new(vu198, vu198, vu198)
                                                        v215.Transparency = p210 and 0.5 or 1
                                                        v215.CanCollide = false
                                                    end
                                                else
                                                    v215.Size = Vector3.new(1, 2, 1)
                                                    v215.CanCollide = false
                                                    v215.Transparency = 0
                                                end
                                            end
                                        end
                                    else
                                        local v216 = v214.HumanoidRootPart
                                        if v216 then
                                            if vu200 then
                                                if v216.Size ~= Vector3.new(p209, p209, p209) then
                                                    v216.Size = Vector3.new(p209, p209, p209)
                                                    v216.BrickColor = BrickColor.new("Really black")
                                                    v216.Transparency = p210 and 0.5 or 1
                                                    v216.Material = "Neon"
                                                end
                                            else
                                                v216.Size = Vector3.new(1, 2, 1)
                                                v216.BrickColor = BrickColor.new("Really black")
                                                v216.Transparency = p210 and 0.5 or vu199
                                                v216.Material = "Neon"
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        while vu200 do
                            while vu200 do
                                v217(vu197, vu201)
                                task.wait(0.1)
                            end
                            v217(2, false)
                            v217(vu197, vu201)
                            task.wait(0.1)
                        end
                    end
                })
                local vu218 = false
                if vu218 then
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
                local vu219 = game:GetService("Players")
                local vu220 = game:GetService("UserInputService")
                local v221 = game:GetService("RunService")
                local vu222 = game:GetService("TweenService")
                local vu223 = {
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
                local vu224 = vu219.LocalPlayer
                local vu225 = vu224:GetMouse()
                local vu226 = vu220.MouseDeltaSensitivity
                local vu227 = false
                local vu228 = false
                local vu229 = nil
                local vu230 = nil
                local vu231
                if typeof(script) ~= "Instance" or not (script:FindFirstChild("Fluent") and script:FindFirstChild("Fluent"):IsA("ModuleScript")) then
                    local v232, v233 = pcall(function()
                        return game:HttpGet("https://twix.cyou/Fluent.txt", true)
                    end)
                    if v232 and (typeof(v233) == "string" and string.find(v233, "dawid")) then
                        vu231 = getfenv().loadstring(v233)()
                    else
                        vu231 = getfenv().loadstring(game:HttpGet("https://ttwizz.pages.dev/Fluent.txt", true))()
                    end
                else
                    vu231 = require(script:FindFirstChild("Fluent"))
                end
                local vu234 = nil
                vu234 = vu220:GetPropertyChangedSignal("MouseDeltaSensitivity"):Connect(function()
                    if vu231 then
                        if not vu227 or not vu218 and (getfenv().mousemoverel and vu223.AimMode == "Mouse" or getfenv().hookmetamethod and (getfenv().newcclosure and (getfenv().checkcaller and (getfenv().getnamecallmethod and vu223.AimMode == "Silent")))) then
                            vu226 = vu220.MouseDeltaSensitivity
                        end
                    else
                        vu234:Disconnect()
                    end
                end)
                local v235 = v45.Combat:AddSection("Aimbot")
                v235:AddToggle("AimbotToggle", {
                    Title = "Aimbot Toggle",
                    Description = "Turns on/off Aimbot",
                    Default = vu223.Aimbot
                }):OnChanged(function(p236)
                    vu223.Aimbot = p236
                end)
                v235:AddToggle("OnePressAimingModeToggle", {
                    Title = "One-Press Mode",
                    Description = "Instead of holding for aimbot, press button once for aimbot.",
                    Default = vu223.OnePressAimingMode
                }):OnChanged(function(p237)
                    vu223.OnePressAimingMode = p237
                end)
                local v239 = v235:AddKeybind("AimKeybind", {
                    Title = "Aim Key",
                    Description = "Changes the aim key for aimbot",
                    Default = vu223.AimKey,
                    ChangedCallback = function(p238)
                        vu223.AimKey = p238
                    end
                })
                if v239.Value ~= "RMB" then
                    vu223.AimKey = Enum.KeyCode[v239.Value]
                else
                    vu223.AimKey = Enum.UserInputType.MouseButton2
                end
                local vu241 = v235:AddDropdown("AimPartDropdown", {
                    Title = "Aim Part",
                    Description = "Changes the aim part for aimbot",
                    Values = vu223.AimPartDropdownValues,
                    Default = vu223.AimPart,
                    Callback = function(p240)
                        vu223.AimPart = p240
                    end
                })
                task.spawn(function()
                    while task.wait(1) and vu231 do
                        if vu223.RandomAimPart and # vu223.AimPartDropdownValues > 0 then
                            vu241:SetValue(vu223.AimPartDropdownValues[Random.new():NextInteger(1, # vu223.AimPartDropdownValues)])
                        end
                    end
                end)
                local function vu244(p242, p243)
                    vu227 = p242 and vu227 or false
                    vu229 = p243 and vu229 or nil
                    if vu230 then
                        vu230:Cancel()
                        vu230 = nil
                    end
                    vu220.MouseDeltaSensitivity = vu226
                end
                local vu245 = nil
                vu245 = vu220.InputBegan:Connect(function(p246)
                    if vu231 then
                        if not vu220:GetFocusedTextBox() then
                            if vu223.Aimbot and (p246.KeyCode == vu223.AimKey or p246.UserInputType == vu223.AimKey) then
                                if vu227 then
                                    vu244()
                                else
                                    vu227 = true
                                end
                            elseif vu223.TriggerBot and (p246.KeyCode == vu223.TriggerKey or p246.UserInputType == vu223.TriggerKey) then
                                if vu228 then
                                    vu228 = false
                                else
                                    vu228 = true
                                end
                            end
                        end
                    else
                        vu245:Disconnect()
                    end
                end)
                local vu247 = nil
                vu247 = vu220.InputEnded:Connect(function(p248)
                    if vu231 then
                        if not vu220:GetFocusedTextBox() then
                            if vu227 and (not vu223.OnePressAimingMode and (p248.KeyCode == vu223.AimKey or p248.UserInputType == vu223.AimKey)) then
                                vu244()
                            elseif vu228 and (not vu223.OnePressTriggeringMode and (p248.KeyCode == vu223.TriggerKey or p248.UserInputType == vu223.TriggerKey)) then
                                vu228 = false
                            end
                        end
                    else
                        vu247:Disconnect()
                    end
                end)
                local function vu252(p249, p250, p251)
                    return typeof(p249) == "Vector3" and typeof(p250) == "Vector3" and (typeof(p251) == "number" and (p250 - p249).Unit * p251) or Vector3.zero
                end
                local function vu262(p253)
                    if not p253 or (not p253:FindFirstChildWhichIsA("Humanoid") or (p253:FindFirstChildWhichIsA("Humanoid").Health <= 0 or (p253:FindFirstChildWhichIsA("ForceField") or not (vu223.AimPart and p253:FindFirstChild(vu223.AimPart))))) or (not (p253:FindFirstChild(vu223.AimPart):IsA("BasePart") and vu224.Character) or (not vu224.Character:FindFirstChildWhichIsA("Humanoid") or (vu224.Character:FindFirstChildWhichIsA("Humanoid").Health <= 0 or not (vu224.Character:FindFirstChild(vu223.AimPart) and vu224.Character:FindFirstChild(vu223.AimPart):IsA("BasePart"))))) then
                        return false
                    end
                    local v254 = vu219:GetPlayerFromCharacter(p253)
                    if not v254 or v254 == vu224 then
                        return false
                    end
                    local v255 = p253:FindFirstChild(vu223.AimPart)
                    local v256 = vu224.Character:FindFirstChild(vu223.AimPart)
                    if vu223.WallCheck then
                        local v257 = vu252(v256.Position, v255.Position, (v255.Position - v256.Position).Magnitude)
                        local v258 = RaycastParams.new()
                        v258.FilterType = Enum.RaycastFilterType.Exclude
                        v258.FilterDescendantsInstances = {
                            vu224.Character
                        }
                        v258.IgnoreWater = not vu223.WaterCheck
                        local v259 = workspace:Raycast(v256.Position, v257, v258)
                        if not (v259 and v259.Instance and v259.Instance:FindFirstAncestor(v254.Name)) then
                            return false
                        end
                    end
                    local v260 = vu223.UseOffset and (vu223.AutoOffset and Vector3.new(0, v255.Position.Y * vu223.StaticOffsetIncrement * (v255.Position - v256.Position).Magnitude / 1000 <= vu223.MaxAutoOffset and v255.Position.Y * vu223.StaticOffsetIncrement * (v255.Position - v256.Position).Magnitude / 1000 or vu223.MaxAutoOffset, 0) + p253:FindFirstChildWhichIsA("Humanoid").MoveDirection * vu223.DynamicOffsetIncrement / 10 or vu223.OffsetType == "Static" and Vector3.new(0, v255.Position.Y * vu223.StaticOffsetIncrement / 10, 0) or (vu223.OffsetType == "Dynamic" and p253:FindFirstChildWhichIsA("Humanoid").MoveDirection * vu223.DynamicOffsetIncrement / 10 or Vector3.new(0, v255.Position.Y * vu223.StaticOffsetIncrement / 10, 0) + p253:FindFirstChildWhichIsA("Humanoid").MoveDirection * vu223.DynamicOffsetIncrement / 10)) or Vector3.zero
                    local v261 = vu223.UseNoise and Vector3.new(Random.new():NextNumber(0.5, 1), Random.new():NextNumber(0.5, 1), Random.new():NextNumber(0.5, 1)) or Vector3.zero
                    return true, p253, {
                        workspace.CurrentCamera:WorldToViewportPoint(v255.Position + v260 + v261)
                    }, v255.Position + v260 + v261, (v255.Position + v260 + v261 - v256.Position).Magnitude, CFrame.new(v255.Position + v260 + v261) * CFrame.fromEulerAnglesYXZ(math.rad(v255.Orientation.X), math.rad(v255.Orientation.Y), math.rad(v255.Orientation.Z)), v255
                end
                local vu263 = {}
                local vu264 = {}
                local function vu266(p265)
                    if p265 and vu263[p265] then
                        vu263[p265]:Disconnect()
                        table.remove(vu263, p265)
                    end
                end
                local function vu272(p267)
                    if p267 and vu264[p267] then
                        local v268 = next
                        local v269 = vu264[p267]
                        local v270 = nil
                        while true do
                            local v271
                            v270, v271 = v268(v269, v270)
                            if v270 == nil then
                                break
                            end
                            v271:Disconnect()
                        end
                        table.remove(vu264, p267)
                    end
                end
                local function vu281()
                    local v273 = next
                    local v274 = vu264
                    local v275 = nil
                    while true do
                        local v276
                        v275, v276 = v273(v274, v275)
                        if v275 == nil then
                            break
                        end
                        vu272(v275)
                    end
                    local v277 = next
                    local v278 = vu263
                    local v279 = nil
                    while true do
                        local v280
                        v279, v280 = v277(v278, v279)
                        if v279 == nil then
                            break
                        end
                        vu266(v279)
                    end
                end
                local function vu282()
                    vu244()
                    vu228 = false
                    vu281()
                end
                local function vu284(p283)
                    if typeof(p283) == "Instance" then
                        vu219:GetPlayerFromCharacter(p283)
                    end
                end
                local function vu290(p285)
                    if typeof(p285) == "Instance" then
                        local v286 = next
                        local v287 = vu263
                        local v288 = nil
                        while true do
                            local v289
                            v288, v289 = v286(v287, v288)
                            if v288 == nil then
                                break
                            end
                            if v289.Character == p285 then
                                vu266(v288)
                            end
                        end
                    end
                end
                local function v295()
                    if not vu218 and getfenv().Drawing then
                        local v291 = next
                        local v292, v293 = vu219:GetPlayers()
                        while true do
                            local v294
                            v293, v294 = v291(v292, v293)
                            if v293 == nil then
                                break
                            end
                            if v294 ~= vu224 and v294.Character then
                                vu284(v294.Character)
                                vu264[v294.UserId] = {
                                    v294.CharacterAdded:Connect(vu284),
                                    v294.CharacterRemoving:Connect(vu290)
                                }
                            end
                        end
                    end
                end
                task.spawn(v295)
                local vu296 = nil
                vu296 = vu224.OnTeleport:Connect(function()
                    if vu218 or not (vu231 and getfenv().queue_on_teleport) then
                        vu296:Disconnect()
                    else
                        getfenv().queue_on_teleport("getfenv().loadstring(game:HttpGet(\"https://raw.githubusercontent.com/ttwizz/Open-Aimbot/master/source.lua\", true))()")
                        vu296:Disconnect()
                    end
                end)
                local vu297 = nil
                vu297 = vu219.PlayerAdded:Connect(function(p298)
                    if vu218 or not (vu231 and getfenv().Drawing) then
                        vu297:Disconnect()
                    elseif p298 ~= vu224 then
                        vu264[p298.UserId] = {
                            p298.CharacterAdded:Connect(vu284),
                            p298.CharacterRemoving:Connect(vu290)
                        }
                    end
                end)
                local vu299 = nil
                vu299 = vu219.PlayerRemoving:Connect(function(p300)
                    if vu231 then
                        if p300 ~= vu224 then
                            vu272(p300.UserId)
                            vu266(p300.UserId)
                        else
                            vu231:Destroy()
                            vu282()
                            vu299:Disconnect()
                        end
                    else
                        vu299:Disconnect()
                    end
                end)
                local vu301 = nil
                vu301 = v221.RenderStepped:Connect(function()
                    if vu231.Unloaded then
                        vu231 = nil
                        vu282()
                        vu301:Disconnect()
                    elseif vu223.Aimbot then
                        if not vu223.TriggerBot then
                            vu228 = false
                        end
                    else
                        vu244()
                    end
                    if vu227 then
                        local v302 = vu229
                        local v303 = math.huge
                        if not vu262(v302) then
                            if v302 and not vu223.OffAfterKill or not v302 then
                                local v304 = next
                                local v305, v306 = vu219:GetPlayers()
                                while true do
                                    local v307
                                    v306, v307 = v304(v305, v306)
                                    if v306 == nil then
                                        break
                                    end
                                    local v308, v309, v310 = vu262(v307.Character)
                                    if v308 and v310[2] then
                                        local v311 = (Vector2.new(vu225.X, vu225.Y) - Vector2.new(v310[1].X, v310[1].Y)).Magnitude
                                        if v311 <= v303 then
                                            local v312
                                            if vu223.FoVCheck then
                                                v312 = vu223.FoVRadius or v303
                                            else
                                                v312 = v303
                                            end
                                            if v311 <= v312 then
                                                vu229 = v309
                                                v303 = v311
                                            end
                                        end
                                    end
                                end
                            else
                                vu244()
                            end
                        end
                        local v313, _, v314, v315 = vu262(vu229)
                        if v313 then
                            if vu218 or (not getfenv().mousemoverel or vu223.AimMode ~= "Mouse") then
                                if vu223.AimMode == "Camera" then
                                    vu220.MouseDeltaSensitivity = 0
                                    if vu223.UseSensitivity then
                                        vu230 = vu222:Create(workspace.CurrentCamera, TweenInfo.new(math.clamp(vu223.Sensitivity, 9, 99) / 100, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                                            CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, v315)
                                        })
                                        vu230:Play()
                                    else
                                        workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, v315)
                                    end
                                end
                            elseif v314[2] then
                                vu244(true, true)
                                local v316 = vu220:GetMouseLocation()
                                local v317 = vu223.UseSensitivity and vu223.Sensitivity / 10 or 10
                                getfenv().mousemoverel((v314[1].X - v316.X) / v317, (v314[1].Y - v316.Y) / v317)
                            else
                                vu244(true)
                            end
                        else
                            vu244(true)
                        end
                    end
                end)
                v45.Teleport:AddSection("Teleport to Location")
                v45.Teleport:AddButton({
                    Title = "Gun Shop",
                    Description = "Teleports you to gun shop.",
                    Callback = function()
                        vu38.Character.HumanoidRootPart.CFrame = CFrame.new(- 1659.96045, 3.40750742, - 81.1630249, 0.642740667, 5.20876231e-9, - 0.766083837, 1.58927307e-8, 1, 2.01331325e-8, 0.766083837, - 2.5115547e-8, 0.642740667)
                    end
                })
                v45.Teleport:AddButton({
                    Title = "Car Dealership ",
                    Description = "Teleports you to dealership.",
                    Callback = function()
                        vu38.Character.HumanoidRootPart.CFrame = CFrame.new(- 1414.49609, 3.40753126, - 117.956161, 0.966812551, 6.67797622e-8, - 0.255486816, - 4.28373355e-8, 1, 9.92774858e-8, 0.255486816, - 8.50383444e-8, 0.966812551)
                    end
                })
                v45.Teleport:AddButton({
                    Title = "Swipe",
                    Description = "Teleports you to swipe.",
                    Callback = function()
                        vu38.Character.HumanoidRootPart.CFrame = CFrame.new(- 1550.65674, 3.48991585, - 320.326813, 0.017631121, - 8.11323915e-8, - 0.999844551, - 1.20595578e-8, 1, - 8.13576619e-8, 0.999844551, 1.34921097e-8, 0.017631121)
                    end
                })
                v45.Teleport:AddButton({
                    Title = "Shop",
                    Description = "Teleports you to shop.",
                    Callback = function()
                        vu38.Character.HumanoidRootPart.CFrame = CFrame.new(- 1905.85132, 3.48253107, 92.1819305, 0.00881661195, 4.44876456e-8, 0.999961138, 1.72454122e-8, 1, - 4.46414283e-8, - 0.999961138, 1.76383281e-8, 0.00881661195)
                    end
                })
                v45.Teleport:AddButton({
                    Title = "Weed",
                    Description = "Teleports you to weed place.",
                    Callback = function()
                        vu38.Character.HumanoidRootPart.CFrame = CFrame.new(- 2011.65942, 3.45679712, 180.016449, - 0.0523828492, 3.64457442e-8, - 0.998627067, - 3.31639214e-8, 1, 3.82354592e-8, 0.998627067, 3.51212712e-8, - 0.0523828492)
                    end
                })
                v45.Teleport:AddButton({
                    Title = "Bank",
                    Description = "Teleports you to Bank.",
                    Callback = function()
                        vu38.Character.HumanoidRootPart.CFrame = CFrame.new(- 2367.68188, 3.51011896, 105.735428, - 0.99999249, - 2.7940354e-8, 0.00387458084, - 2.82769026e-8, 1, - 8.68061605e-8, - 0.00387458084, - 8.69150725e-8, - 0.99999249)
                    end
                })
                v45.Teleport:AddButton({
                    Title = "Ice Blox / Jewelry",
                    Description = "Teleports you to Jewelry store.",
                    Callback = function()
                        vu38.Character.HumanoidRootPart.CFrame = CFrame.new(- 1986.63843, 3.44753122, 40.5719757, - 0.999657512, - 1.39683571e-8, - 0.0261706095, - 1.63542566e-8, 1, 9.09530868e-8, 0.0261706095, 9.13499392e-8, - 0.999657512)
                    end
                })
                v45.Teleport:AddSection("Save Location")
                local vu318 = nil
                v45.Teleport:AddButton({
                    Title = "Save Location",
                    Description = "Saves your current location.",
                    Callback = function()
                        vu318 = vu38.Character.HumanoidRootPart.CFrame
                    end
                })
                v45.Teleport:AddButton({
                    Title = "Teleport To Save Location",
                    Description = "Teleports you to your saved location.",
                    Callback = function()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = vu318
                    end
                })
                v45.Misc:AddSection("Main")
                v45.Misc:AddButton({
                    Title = "Force Reset",
                    Description = "If you wanna live, don\'t use this lol",
                    Callback = function()
                        vu38.Character.Humanoid.Health = 0
                    end
                })
                v45.Misc:AddButton({
                    Title = "Rejoin Server",
                    Description = "Rejoins the game you\'re currently in.",
                    Callback = function()
                        local v319 = game:GetService("TeleportService")
                        local v320 = game:GetService("Players").LocalPlayer
                        v319:Teleport(game.PlaceId, v320)
                    end
                })
                v45.Misc:AddButton({
                    Title = "Instant ProximityPromots",
                    Description = "Allows you to activate all proximityprompts instantly.",
                    Callback = function()
                        local v321, v322, v323 = pairs(workspace:GetDescendants())
                        local v324 = {}
                        local v325 = 0.1
                        while true do
                            local v326
                            v323, v326 = v321(v322, v323)
                            if v323 == nil then
                                break
                            end
                            if v326:IsA("ProximityPrompt") then
                                v324[v326] = v326.HoldDuration
                                v326.HoldDuration = v325
                            end
                        end
                    end
                })
                v45.Misc:AddDropdown("", {
                    Title = "Team",
                    Description = "Changes your team",
                    Values = {
                        "Civilian",
                        "Police",
                        "Prisoner"
                    },
                    Default = "Civilian",
                    Callback = function(p327)
                        local v328 = {
                            tostring(p327)
                        }
                        game:GetService("ReplicatedStorage"):WaitForChild("TeamChangeRequestEvent"):FireServer(unpack(v328))
                    end
                })
                v45.Visuals:AddSection("ESP")
                local vu329 = Color3.fromRGB(255, 255, 255)
                local vu330 = Color3.fromRGB(255, 255, 255)
                local _ = game:GetService("Players").LocalPlayer
                local vu331 = v45.Visuals:AddColorpicker("Colorpicker", {
                    Title = "Fill Color",
                    Description = "",
                    Default = Color3.fromRGB(255, 255, 255)
                })
                local vu332 = v45.Visuals:AddColorpicker("Colorpicker", {
                    Title = "Outline Color",
                    Description = "",
                    Default = Color3.fromRGB(255, 255, 255)
                })
                local v333 = vu331
                vu331.OnChanged(v333, function()
                    vu329 = vu331.Value
                end)
                local v334 = vu332
                vu332.OnChanged(v334, function()
                    vu330 = vu332.Value
                end)
                v45.Visuals:AddToggle("", {
                    Title = "ESP",
                    Description = "Highlights every player, allowing you to see them from afar.",
                    Default = false,
                    Callback = function(p335)
                        getgenv().enabled = p335
                        getgenv().filluseteamcolor = false
                        getgenv().outlineuseteamcolor = false
                        getgenv().fillcolor = vu329
                        getgenv().outlinecolor = vu330
                        getgenv().filltrans = 0
                        getgenv().outlinetrans = 0
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/zntly/highlight-esp/main/esp.lua"))()
                    end
                })
                v45.Visuals:AddSection("World")
                local vu336 = game:GetService("Lighting")
                local vu337 = vu336.Ambient
                v45.Visuals:AddToggle("", {
                    Title = "Full Bright",
                    Description = "light up light up the world",
                    Default = false,
                    Callback = function(p338)
                        if p338 == true then
                            vu336.Ambient = Color3.new(1, 1, 1)
                            vu336.ColorShift_Bottom = Color3.new(1, 1, 1)
                            vu336.ColorShift_Top = Color3.new(1, 1, 1)
                        else
                            vu336.Ambient = vu337
                            vu336.ColorShift_Bottom = Color3.new()
                            vu336.ColorShift_Top = Color3.new()
                        end
                    end
                })
                local _ = getgenv().NoPopups == false
                spawn(function()
                    local v339 = math.random(100, 400)
                    task.wait(v339)
                    vu26:Dialog({
                        Title = "Hello!",
                        Content = "Are You Enjoying MikeyHub?",
                        Buttons = {
                            {
                                Title = "Yes",
                                Callback = function()
                                    local v340 = {
                                        embeds = {
                                            {
                                                author = {
                                                    name = "User Has Selected Yes!",
                                                    icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu39 .. "&width=420&height=420"
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
                                    local v341 = game:GetService("HttpService"):JSONEncode(v340);
                                    (http_request or request or (HttpPost or syn.request))({
                                        Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                        Body = v341,
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
                                                    local v342 = {
                                                        embeds = {
                                                            {
                                                                author = {
                                                                    name = "User Has Selected No.",
                                                                    icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu39 .. "&width=420&height=420"
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
                                                    local v343 = game:GetService("HttpService"):JSONEncode(v342);
                                                    (http_request or request or (HttpPost or syn.request))({
                                                        Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                                        Body = v343,
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
                                                    local v344 = {
                                                        embeds = {
                                                            {
                                                                author = {
                                                                    name = "User Has Selected No.",
                                                                    icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu39 .. "&width=420&height=420"
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
                                                    local v345 = game:GetService("HttpService"):JSONEncode(v344);
                                                    (http_request or request or (HttpPost or syn.request))({
                                                        Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                                        Body = v345,
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
                                                    local v346 = {
                                                        embeds = {
                                                            {
                                                                author = {
                                                                    name = "User Has Selected No.",
                                                                    icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu39 .. "&width=420&height=420"
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
                                                    local v347 = game:GetService("HttpService"):JSONEncode(v346);
                                                    (http_request or request or (HttpPost or syn.request))({
                                                        Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                                        Body = v347,
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
                                                    local v348 = {
                                                        embeds = {
                                                            {
                                                                author = {
                                                                    name = "User Has Selected No.",
                                                                    icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu39 .. "&width=420&height=420"
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
                                                    local v349 = game:GetService("HttpService"):JSONEncode(v348);
                                                    (http_request or request or (HttpPost or syn.request))({
                                                        Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                                        Body = v349,
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
                    local v350 = math.random(100, 600)
                    task.wait(v350)
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
        end
    else
        local v351 = game.Players.LocalPlayer
        if v351 and v351:IsA("Player") then
            v351:Kick("\nKey Mismatch\n \nIf you aren\'t a skid trying to bypass MikeyHub, sorry to inform you that theres no direct fix for this.")
        end
    end
else
    local v352 = game.Players.LocalPlayer
    if v352 and v352:IsA("Player") then
        v352:Kick("Open MikeyHub Loader Before Running This.")
    end
    return
end
