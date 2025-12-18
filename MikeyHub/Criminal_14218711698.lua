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
        local function vu37(p36)
            game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(p36)
        end
        local function vu39(p38)
            vu32.Character.HumanoidRootPart.CFrame = p38.CFrame
        end
        if v16() ~= false then
            local v40 = {}
            local v41 = {}
            local v42 = {
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
            __set_list(v41, 1, {
                v42
            })
            v40.embeds = v41
            local v43 = game:GetService("HttpService"):JSONEncode(v40);
            (http_request or request or (HttpPost or syn.request))({
                Url = "https://discord.com/api/webhooks/1274850660550049844/xyyZynAaVyeELiM0blJRu1pJBjwnwMi_P6a9tk_FicTQ_PO85rn_h5z_JX6aRAX_9hxr",
                Body = v43,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                }
            })
            local v44 = vu32
            vu32.Kick(v44, "\nYou\'re Banned From MikeyHub \n \nReason: " .. vu9 .. "\n \nIf You Believe This is A Mistake\nContact Mods Within The Server.\nHWID: " .. vu6)
        elseif getgenv().CollectMikeyHubData.KeySystem ~= true then
            local v45 = {
                CompleteSys = vu20:AddTab({
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
            vu20:SelectTab(1)
        else
            local v46 = {
                Player = vu20:AddTab({
                    Title = "| Player",
                    Icon = "user"
                }),
                AutoFarm = vu20:AddTab({
                    Title = "| AutoFarm",
                    Icon = "home"
                }),
                GunMods = vu20:AddTab({
                    Title = "| Modifications",
                    Icon = "crosshair"
                }),
                Combat = vu20:AddTab({
                    Title = "| Combat",
                    Icon = "swords"
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
            local v47 = game:GetService("CoreGui"):WaitForChild("ExperienceChat"):WaitForChild("bubbleChat")
            local v48, v49, v50 = pairs(v47:GetChildren())
            local vu51 = nil
            while true do
                local v52, v53 = v48(v49, v50)
                if v52 == nil then
                    break
                end
                v50 = v52
                local v54 = v53.Name:match("^BubbleChat_(.+)")
                if v54 then
                    vu51 = v54
                end
            end
            print(tostring(vu51))
            if vu51 == nil then
                vu32:Kick("Failed to get playerID, rejoin and wait until youre spawned into the game")
            end
            v46.Player:AddSection("Main")
            v46.Player:AddSlider("", {
                Title = "WalkSpeed",
                Description = "vroom vroom",
                Default = 16,
                Min = 1,
                Max = 300,
                Rounding = 0.1,
                Callback = function(p55)
                    vu32.Character.Humanoid.WalkSpeed = p55
                end
            })
            v46.Player:AddSlider("", {
                Title = "JumpPower",
                Description = "soar for greatness",
                Default = 7,
                Min = 1,
                Max = 300,
                Rounding = 0.1,
                Callback = function(p56)
                    vu32.Character.Humanoid.JumpHeight = p56
                end
            })
            local vu57 = game:GetService("UserInputService")
            local vu58 = nil
            infJumpDebounce = false
            v46.Player:AddToggle("", {
                Title = "Infinite Jump",
                Description = "jump jump jump",
                Default = false,
                Callback = function(p59)
                    if p59 == true then
                        vu58 = vu57.JumpRequest:Connect(function()
                            if not infJumpDebounce then
                                infJumpDebounce = true
                                vu32.Character:FindFirstChildWhichIsA("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
                                wait()
                                infJumpDebounce = false
                            end
                        end)
                    else
                        if vu58 then
                            vu58:Disconnect()
                        end
                        infJumpDebounce = false
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
                        if v64.Name == vu32.Name then
                            local v65, v66, v67 = pairs(workspace[vu32.Name]:GetChildren())
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
            v46.Player:AddToggle("", {
                Title = "No Clip",
                Description = "boo bitch im a ghost",
                Default = false,
                Callback = function(p70)
                    vu60 = p70
                    vu69(p70)
                end
            })
            v46.AutoFarm:AddSection("Auto Collect")
            local vu71 = nil
            v46.AutoFarm:AddToggle("", {
                Title = "Auto Collect",
                Description = "",
                Default = false,
                Callback = function(p72)
                    vu71 = p72
                    local function v73()
                        if game:GetService("Players").LocalPlayer.PlayerGui.Data.UnCollectedCash.Value ~= 0 then
                            game:GetService("ReplicatedStorage"):WaitForChild("KnitFolder"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TycoonService"):WaitForChild("RF"):WaitForChild("CollectCash"):InvokeServer()
                        end
                    end
                    while vu71 do
                        v73()
                        task.wait(0.1)
                    end
                end
            })
            v46.AutoFarm:AddSection("Auto Rob")
            local vu74 = nil
            v46.AutoFarm:AddDropdown("", {
                Title = "Store",
                Description = "The place you want to rob",
                Values = {
                    "Supermarket",
                    "GasStation",
                    "GasStationSuburb",
                    "Bank"
                },
                Multi = false,
                Default = 1
            }):OnChanged(function(p75)
                vu74 = p75
            end)
            v46.AutoFarm:AddButton({
                Title = "Auto Rob",
                Description = "Auto robs the store you selected",
                Callback = function()
                    (function()
                        if vu74 ~= "Supermarket" then
                            if vu74 ~= "GasStation" then
                                if vu74 ~= "GasStationSuburb" then
                                    if vu74 == "Bank" then
                                        local v76 = game:GetService("ReplicatedStorage").BankRobberyData.Value
                                        if string.match(v76, "\"Status\":\"(.-)\"") ~= "Open" then
                                            vu1:Notify({
                                                Title = "Error.",
                                                Content = "Bank must be open and not in a robbery already in order to rob it",
                                                SubContent = "",
                                                Duration = 5
                                            })
                                        else
                                            local v77 = game.Players.LocalPlayer
                                            local vu78 = (v77.Character or v77.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart");
                                            (function()
                                                if not vu32.Character:FindFirstChildOfClass("Tool") then
                                                    if vu32.Backpack:FindFirstChildOfClass("Tool") then
                                                        vu37(vu32.Backpack:FindFirstChildOfClass("Tool"))
                                                    end
                                                end
                                            end)()
                                            local function vu81(p79)
                                                local v80 = p79:FindFirstChildOfClass("ProximityPrompt")
                                                if v80 then
                                                    fireproximityprompt(v80)
                                                end
                                            end;
                                            (function()
                                                local v82 = workspace.Map.Bank.CashStacks:GetChildren()
                                                local v83, v84, v85 = pairs(v82)
                                                while true do
                                                    local v86
                                                    v85, v86 = v83(v84, v85)
                                                    if v85 == nil then
                                                        break
                                                    end
                                                    vu78.CFrame = v86.CFrame
                                                    vu81(v86)
                                                    wait(2)
                                                end
                                            end)()
                                            vu39(workspace.Tycoons[tostring(vu51)].DropOff.GradientCylinder)
                                        end
                                    end
                                else
                                    local v87 = game:GetService("ReplicatedStorage").GasStationSuburbRobberyData.Value
                                    if string.match(v87, "\"Status\":\"(.-)\"") ~= "Open" then
                                        vu1:Notify({
                                            Title = "Error.",
                                            Content = "GasStationSuburb must be open and not in a robbery already in order to rob it",
                                            SubContent = "",
                                            Duration = 5
                                        })
                                    else
                                        local v88 = game.Players.LocalPlayer
                                        local vu89 = (v88.Character or v88.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart");
                                        (function()
                                            if not vu32.Character:FindFirstChildOfClass("Tool") then
                                                if vu32.Backpack:FindFirstChildOfClass("Tool") then
                                                    vu37(vu32.Backpack:FindFirstChildOfClass("Tool"))
                                                end
                                            end
                                        end)()
                                        local v90 = {
                                            workspace.Map.GasStationSuburb.Tills.Till1,
                                            workspace.Map.GasStationSuburb.Tills.Till2
                                        }
                                        local function vu98(p91)
                                            local v92 = p91.CashRegister:GetChildren()
                                            local v93, v94, v95 = pairs(v92)
                                            while true do
                                                local v96
                                                v95, v96 = v93(v94, v95)
                                                if v95 == nil then
                                                    break
                                                end
                                                local v97 = v96:FindFirstChildOfClass("ProximityPrompt")
                                                if v97 then
                                                    fireproximityprompt(v97)
                                                end
                                            end
                                        end
                                        local function v100(p99)
                                            vu89.CFrame = p99.AIPos.CFrame
                                            vu98(p99)
                                            wait(2)
                                        end
                                        local v101, v102, v103 = pairs(v90)
                                        while true do
                                            local v104
                                            v103, v104 = v101(v102, v103)
                                            if v103 == nil then
                                                break
                                            end
                                            v100(v104)
                                        end
                                        vu39(workspace.Tycoons[vu51].SpawnLocation)
                                    end
                                end
                            else
                                local v105 = game:GetService("ReplicatedStorage").GasStationRobberyData.Value
                                if string.match(v105, "\"Status\":\"(.-)\"") ~= "Open" then
                                    vu1:Notify({
                                        Title = "Error.",
                                        Content = "Gas Station must be open and not in a robbery already in order to rob it",
                                        SubContent = "",
                                        Duration = 5
                                    })
                                else
                                    local v106 = game.Players.LocalPlayer
                                    local vu107 = (v106.Character or v106.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart");
                                    (function()
                                        if not vu32.Character:FindFirstChildOfClass("Tool") then
                                            if vu32.Backpack:FindFirstChildOfClass("Tool") then
                                                vu37(vu32.Backpack:FindFirstChildOfClass("Tool"))
                                            end
                                        end
                                    end)()
                                    local v108 = {
                                        workspace.Map.GasStation.Tills.Till1,
                                        workspace.Map.GasStation.Tills.Till2
                                    }
                                    local function vu116(p109)
                                        local v110 = p109.CashRegister:GetChildren()
                                        local v111, v112, v113 = pairs(v110)
                                        while true do
                                            local v114
                                            v113, v114 = v111(v112, v113)
                                            if v113 == nil then
                                                break
                                            end
                                            local v115 = v114:FindFirstChildOfClass("ProximityPrompt")
                                            if v115 then
                                                fireproximityprompt(v115)
                                            end
                                        end
                                    end
                                    local function v118(p117)
                                        vu107.CFrame = p117.AIPos.CFrame
                                        vu116(p117)
                                        wait(2)
                                    end
                                    local v119, v120, v121 = pairs(v108)
                                    while true do
                                        local v122
                                        v121, v122 = v119(v120, v121)
                                        if v121 == nil then
                                            break
                                        end
                                        v118(v122)
                                    end
                                    vu39(workspace.Tycoons[vu51].SpawnLocation)
                                end
                            end
                        else
                            local v123 = game:GetService("ReplicatedStorage"):WaitForChild("SupermarketRobberyData").Value
                            if string.match(v123, "\"Status\":\"(.-)\"") ~= "Open" then
                                vu1:Notify({
                                    Title = "Error.",
                                    Content = "Supermarket must be open and not in a robbery already in order to rob it",
                                    SubContent = "",
                                    Duration = 5
                                })
                            else
                                local v124 = game.Players.LocalPlayer
                                local vu125 = (v124.Character or v124.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart");
                                (function()
                                    if not vu32.Character:FindFirstChildOfClass("Tool") then
                                        if vu32.Backpack:FindFirstChildOfClass("Tool") then
                                            vu37(vu32.Backpack:FindFirstChildOfClass("Tool"))
                                        end
                                    end
                                end)()
                                local v126 = {
                                    workspace.Map.Supermarket.Tills.Till1,
                                    workspace.Map.Supermarket.Tills.Till2,
                                    workspace.Map.Supermarket.Tills.Till3,
                                    workspace.Map.Supermarket.Tills.Till4,
                                    workspace.Map.Supermarket.Tills.Till5
                                }
                                local function vu134(p127)
                                    local v128 = p127.CashRegister:GetChildren()
                                    local v129, v130, v131 = pairs(v128)
                                    while true do
                                        local v132
                                        v131, v132 = v129(v130, v131)
                                        if v131 == nil then
                                            break
                                        end
                                        local v133 = v132:FindFirstChildOfClass("ProximityPrompt")
                                        if v133 then
                                            fireproximityprompt(v133)
                                        end
                                    end
                                end
                                local function v136(p135)
                                    vu125.CFrame = p135.AIPos.CFrame
                                    vu134(p135)
                                    wait(2)
                                end
                                local v137, v138, v139 = pairs(v126)
                                while true do
                                    local v140
                                    v139, v140 = v137(v138, v139)
                                    if v139 == nil then
                                        break
                                    end
                                    v136(v140)
                                end
                                vu39(workspace.Tycoons[vu51].SpawnLocation)
                            end
                        end
                    end)()
                end
            })
            v46.GunMods:AddSection("Gun")
            v46.GunMods:AddButton({
                Title = "Infinite Ammo",
                Description = "Gives you infinite ammo.",
                Callback = function()
                    if vu8() ~= true then
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You Must Own Premium In Order To Use This.",
                            SubContent = "Join Our Discord To Buy MikeyHub.",
                            Duration = 5
                        })
                    else
                        local v141 = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Deni210/Hydroxide-Wave-Fix/revision/ohaux.lua"))()
                        local v142 = game:GetService("ReplicatedStorage").Components.FirearmClient
                        local v143 = 2
                        local v144 = v141.searchClosure(v142, "Unnamed function", v143, {
                            [1] = "pairs",
                            [3] = "game",
                            [5] = "Workspace",
                            [6] = "AIs",
                            [7] = "GetChildren",
                            [8] = "HumanoidRootPart"
                        })
                        local v145 = 9999999999
                        if v144 == "?" then
                            return vu1:Notify({
                                Title = "Error.",
                                Content = "Failed to edit gun stats.",
                                SubContent = "Maybe try equipping your gun?",
                                Duration = 5
                            })
                        end
                        debug.getupvalue(v144, v143).Ammo = v145
                    end
                end
            })
            v46.GunMods:AddButton({
                Title = "Fast FireRate",
                Description = "Makes your gun shoots faster.",
                Callback = function()
                    if vu8() ~= true then
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You Must Own Premium In Order To Use This.",
                            SubContent = "Join Our Discord To Buy MikeyHub.",
                            Duration = 5
                        })
                    else
                        local v146 = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Deni210/Hydroxide-Wave-Fix/revision/ohaux.lua"))()
                        local v147 = game:GetService("ReplicatedStorage").Components.FirearmClient.CalculateBulletHit
                        local v148 = 6
                        local v149 = v146.searchClosure(v147, "GetBulletHit", v148, {
                            [1] = "game",
                            [3] = "CollectionService",
                            [4] = "GetService",
                            [5] = "RaycastParams",
                            [6] = "new",
                            [8] = "Enum"
                        })
                        local v150 = 0
                        if v149 == "?" then
                            return vu1:Notify({
                                Title = "Error.",
                                Content = "Failed to edit gun stats.",
                                SubContent = "Firerate script barely works, it will work sometime so try using this later",
                                Duration = 5
                            })
                        end
                        debug.getupvalue(v149, v148).FireRate = v150
                    end
                end
            })
            v46.GunMods:AddSection("Vehicle")
            v46.GunMods:AddButton({
                Title = "Infinite Max Speed",
                Description = "Makes your car go really really fast.",
                Callback = function()
                    if vu8() ~= true then
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You Must Own Premium In Order To Use This.",
                            SubContent = "Join Our Discord To Buy MikeyHub.",
                            Duration = 5
                        })
                    else
                        local v151 = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Deni210/Hydroxide-Wave-Fix/revision/ohaux.lua"))()
                        local v152 = workspace.Vehicles:FindFirstChild(tostring(vu51))
                        if v152 and v152:FindFirstChild("Scripts") and v152.Scripts:FindFirstChild("Chassis") then
                            local v153 = workspace.Vehicles[tostring(vu51)].Scripts.Chassis
                            local v154 = 2
                            local v155 = v151.searchClosure(v153, "UpdateSteering", v154, {
                                "GetDriverSeat",
                                "MaxSpeed",
                                "MaxSteer",
                                "Velocity",
                                1,
                                "math"
                            })
                            local v156 = math.huge
                            if v155 == "?" then
                                return vu1:Notify({
                                    Title = "Error.",
                                    Content = "Failed to edit vehicle stats.",
                                    SubContent = "Maybe try driving your vehicle?",
                                    Duration = 5
                                })
                            end
                            debug.getupvalue(v155, v154).MaxSpeed = v156
                        else
                            vu1:Notify({
                                Title = "Error.",
                                Content = "Failed to edit vehicle stats.",
                                SubContent = "You don\'t own a vehicle probs",
                                Duration = 5
                            })
                        end
                    end
                end
            })
            v46.GunMods:AddButton({
                Title = "Infinite Reverse Speed",
                Description = "Makes your car go backwards really fast.",
                Callback = function()
                    if vu8() ~= true then
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You Must Own Premium In Order To Use This.",
                            SubContent = "Join Our Discord To Buy MikeyHub.",
                            Duration = 5
                        })
                    else
                        local v157 = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Deni210/Hydroxide-Wave-Fix/revision/ohaux.lua"))()
                        local v158 = workspace.Vehicles:FindFirstChild(tostring(vu51))
                        if v158 and v158:FindFirstChild("Scripts") and v158.Scripts:FindFirstChild("Chassis") then
                            local v159 = workspace.Vehicles[tostring(vu51)].Scripts.Chassis
                            local v160 = 1
                            local v161 = v157.searchClosure(v159, "Unnamed function", v160, {
                                "GetAttribute",
                                "MaxSpeed",
                                "ReverseSpeed",
                                0.6263,
                                "Gravity",
                                196.2
                            })
                            local v162 = math.huge
                            if v161 == "?" then
                                return vu1:Notify({
                                    Title = "Error.",
                                    Content = "Failed to edit vehicle stats.",
                                    SubContent = "Maybe try driving your vehicle?",
                                    Duration = 5
                                })
                            end
                            debug.getupvalue(v161, v160).ReverseSpeed = v162
                        else
                            vu1:Notify({
                                Title = "Error.",
                                Content = "Failed to edit vehicle stats.",
                                SubContent = "You don\'t own a vehicle probs",
                                Duration = 5
                            })
                        end
                    end
                end
            })
            v46.GunMods:AddSection("Fists")
            v46.GunMods:AddButton({
                Title = "No Punch Cooldown",
                Description = "Removes your punching cooldown.",
                Callback = function()
                    local v163 = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Deni210/Hydroxide-Wave-Fix/revision/ohaux.lua"))()
                    local v164 = game:GetService("ReplicatedStorage").Components.FirearmClient.AnimateBullet
                    local v165 = 3
                    local v166 = v163.searchClosure(v164, "Unnamed function", v165, {
                        [1] = "Character",
                        [2] = "HumanoidRootPart",
                        [3] = "Client",
                        [4] = "pairs",
                        [6] = "table",
                        [7] = "unpack"
                    })
                    local v167 = 0
                    if v166 == "?" then
                        return vu1:Notify({
                            Title = "Error.",
                            Content = "Failed to edit fists stats.",
                            SubContent = "Maybe try rejoining?",
                            Duration = 5
                        })
                    end
                    debug.getupvalue(v166, v165).PunchCooldown = v167
                end
            })
            v46.Combat:AddSection("Hitboxes")
            local vu168 = 15
            local vu169 = 1
            local vu170 = nil
            local vu171 = true
            v46.Combat:AddSlider("", {
                Title = "Hitbox Size",
                Description = "",
                Default = 5,
                Min = 1,
                Max = 50,
                Rounding = 0.1,
                Callback = function(p172)
                    vu168 = p172
                end
            })
            v46.Combat:AddToggle("", {
                Title = "Hitbox Visualizer",
                Description = "",
                Default = true,
                Callback = function(p173)
                    vu171 = p173
                end
            })
            v46.Combat:AddToggle("", {
                Title = "Hitbox Expander",
                Description = "Reach but for guns?",
                Default = false,
                Callback = function(p174)
                    vu170 = p174
                    while vu170 do
                        local v175 = next
                        local v176, v177 = game:GetService("Players"):GetPlayers()
                        while true do
                            local vu178
                            v177, vu178 = v175(v176, v177)
                            if v177 == nil then
                                break
                            end
                            if vu178.Name ~= game:GetService("Players").LocalPlayer.Name then
                                pcall(function()
                                    vu178.Character.HumanoidRootPart.Size = Vector3.new(vu168, vu168, vu168)
                                    vu178.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
                                    if vu171 ~= true then
                                        vu178.Character.HumanoidRootPart.Transparency = vu169
                                    else
                                        vu178.Character.HumanoidRootPart.Transparency = 0.5
                                    end
                                    vu178.Character.HumanoidRootPart.Material = "Neon"
                                    vu178.Character.HumanoidRootPart.CanCollide = false
                                end)
                            end
                        end
                        task.wait(1)
                    end
                end
            })
            v46.Teleport:AddSection("Teleport to Player")
            local vu179 = "None"
            local v180 = {}
            local v181 = game:GetService("Players")
            if v181 then
                local v182, v183, v184 = pairs(v181:GetPlayers())
                while true do
                    local v185
                    v184, v185 = v182(v183, v184)
                    if v184 == nil then
                        break
                    end
                    if v185 ~= vu32 then
                        table.insert(v180, v185.Name)
                    end
                end
            end
            local vu186 = v46.Teleport:AddDropdown("", {
                Title = "Target Player",
                Description = "Choose the player you wanna troll.",
                Values = v180,
                Multi = false,
                Default = 1
            })
            local v187 = vu186
            vu186.OnChanged(v187, function(p188)
                vu179 = p188
            end)
            local function v190(p189)
                vu186:SetValue(tostring(p189.Name))
            end
            v181.PlayerAdded:Connect(v190)
            v46.Teleport:AddButton({
                Title = "Teleport",
                Description = "Teleports you to targetted player.",
                Callback = function()
                    local v191 = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local v192 = game:GetService("Players"):FindFirstChild(vu179)
                    if v192 then
                        if v192.Character and v192.Character:FindFirstChild("HumanoidRootPart") then
                            local _ = v191.CFrame
                            v191.CFrame = v192.Character.HumanoidRootPart.CFrame
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
            v46.Teleport:AddSection("Teleport to Location")
            v46.Teleport:AddButton({
                Title = "Tycoon",
                Description = "Teleports you to your tycoon.",
                Callback = function()
                    vu39(workspace.Tycoons[vu51].SpawnLocation)
                end
            })
            v46.Teleport:AddButton({
                Title = "Capture Flag",
                Description = "Teleports you to Capture Flag.",
                Callback = function()
                    vu39(workspace.CaptureFlag.Rope)
                end
            })
            v46.Teleport:AddButton({
                Title = "Supermarket",
                Description = "Teleports you to supermarket.",
                Callback = function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 4411.66553, 27.991415, - 1593.00903, 0.962124467, - 1.30368063e-8, - 0.272610456, 2.20533298e-8, 1, 3.00107459e-8, 0.272610456, - 3.48860425e-8, 0.962124467)
                end
            })
            v46.Teleport:AddButton({
                Title = "Gas Station",
                Description = "Teleports you to GasStation.",
                Callback = function()
                    vu39(workspace.Map.GasStation.Door.Door1:GetChildren()[5])
                end
            })
            v46.Teleport:AddButton({
                Title = "Dock",
                Description = "Teleports you to Dock.",
                Callback = function()
                    vu39(workspace.Map.Dock.OutsidePos)
                end
            })
            v46.Teleport:AddButton({
                Title = "Jewelry Store",
                Description = "Teleports you to JewelryStore.",
                Callback = function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 4456.63037, 29.1866741, - 847.351196, 0.992550075, - 7.33524086e-9, - 0.121837221, 1.3555705e-8, 1, 5.0226646e-8, 0.121837221, - 5.15040526e-8, 0.992550075)
                end
            })
            v46.Teleport:AddButton({
                Title = "Bank",
                Description = "Teleports you to Bank.",
                Callback = function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 3819.9624, 0.850627899, - 1035.30078, - 0.0585031249, 6.63496138e-8, - 0.998287201, 9.02259067e-9, 1, 6.59346924e-8, 0.998287201, - 5.14975174e-9, - 0.0585031249)
                end
            })
            v46.Teleport:AddButton({
                Title = "Laboratory",
                Description = "Teleports you to Laboratory.",
                Callback = function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 4833.2373, 28.0291061, - 2357.57031, 0.837837517, 6.01173653e-8, 0.545919657, - 2.22056382e-8, 1, - 7.60416796e-8, - 0.545919657, 5.15880743e-8, 0.837837517)
                end
            })
            v46.Teleport:AddButton({
                Title = "Military Base",
                Description = "Teleports you to MilitaryBase.",
                Callback = function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 4738.81396, 189.448364, - 2910.43701, 0.995008707, 9.93886395e-9, 0.0997879878, - 2.16943619e-9, 1, - 7.79678615e-8, - 0.0997879878, 7.73622162e-8, 0.995008707)
                end
            })
            v46.Teleport:AddSection("Save Location")
            local vu193 = nil
            v46.Teleport:AddButton({
                Title = "Save Location",
                Description = "Saves your current location.",
                Callback = function()
                    vu193 = vu32.Character.HumanoidRootPart.CFrame
                end
            })
            v46.Teleport:AddButton({
                Title = "Teleport To Save Location",
                Description = "Teleports you to your saved location.",
                Callback = function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = vu193
                end
            })
            v46.Visuals:AddSection("ESP")
            local vu194 = Color3.fromRGB(255, 255, 255)
            local vu195 = Color3.fromRGB(255, 255, 255)
            local _ = game:GetService("Players").LocalPlayer
            local vu196 = v46.Visuals:AddColorpicker("Colorpicker", {
                Title = "Fill Color",
                Description = "",
                Default = Color3.fromRGB(255, 255, 255)
            })
            local vu197 = v46.Visuals:AddColorpicker("Colorpicker", {
                Title = "Outline Color",
                Description = "",
                Default = Color3.fromRGB(255, 255, 255)
            })
            local v198 = vu196
            vu196.OnChanged(v198, function()
                vu194 = vu196.Value
            end)
            local v199 = vu197
            vu197.OnChanged(v199, function()
                vu195 = vu197.Value
            end)
            v46.Visuals:AddToggle("", {
                Title = "ESP",
                Description = "Highlights every player, allowing you to see them from afar.",
                Default = false,
                Callback = function(p200)
                    getgenv().enabled = p200
                    getgenv().filluseteamcolor = false
                    getgenv().outlineuseteamcolor = false
                    getgenv().fillcolor = vu194
                    getgenv().outlinecolor = vu195
                    getgenv().filltrans = 0
                    getgenv().outlinetrans = 0
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/zntly/highlight-esp/main/esp.lua"))()
                end
            })
            v46.Visuals:AddSection("World")
            local vu201 = game:GetService("Lighting")
            local vu202 = vu201.Ambient
            v46.Visuals:AddToggle("", {
                Title = "Full Bright",
                Description = "light up light up the world",
                Default = false,
                Callback = function(p203)
                    if p203 == true then
                        vu201.Ambient = Color3.new(1, 1, 1)
                        vu201.ColorShift_Bottom = Color3.new(1, 1, 1)
                        vu201.ColorShift_Top = Color3.new(1, 1, 1)
                    else
                        vu201.Ambient = vu202
                        vu201.ColorShift_Bottom = Color3.new()
                        vu201.ColorShift_Top = Color3.new()
                    end
                end
            })
            v46.Misc:AddSection("Main")
            v46.Misc:AddButton({
                Title = "Force Reset",
                Description = "If you wanna live, don\'t use this lol",
                Callback = function()
                    vu32.Character.Humanoid.Health = 0
                end
            })
            local _ = getgenv().NoPopups == false
            spawn(function()
                local v204 = math.random(300, 600)
                task.wait(v204)
                vu20:Dialog({
                    Title = "Hello!",
                    Content = "Are You Enjoying MikeyHub?",
                    Buttons = {
                        {
                            Title = "Yes",
                            Callback = function()
                                local v205 = {
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
                                local v206 = game:GetService("HttpService"):JSONEncode(v205);
                                (http_request or request or (HttpPost or syn.request))({
                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                    Body = v206,
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
                                                local v207 = {
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
                                                local v208 = game:GetService("HttpService"):JSONEncode(v207);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1274852458123886592/0LwQKT_5bJvoga9nXrp1D8aakkqgDgTdwBa71satL6c-0kQWNJcYPq4FOlyPzmiRy7GL",
                                                    Body = v208,
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
                                                local v209 = {
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
                                                local v210 = game:GetService("HttpService"):JSONEncode(v209);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1274852458123886592/0LwQKT_5bJvoga9nXrp1D8aakkqgDgTdwBa71satL6c-0kQWNJcYPq4FOlyPzmiRy7GL",
                                                    Body = v210,
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
                                                local v211 = {
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
                                                local v212 = game:GetService("HttpService"):JSONEncode(v211);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1274852458123886592/0LwQKT_5bJvoga9nXrp1D8aakkqgDgTdwBa71satL6c-0kQWNJcYPq4FOlyPzmiRy7GL",
                                                    Body = v212,
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
                                                local v213 = {
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
                                                local v214 = game:GetService("HttpService"):JSONEncode(v213);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1274852458123886592/0LwQKT_5bJvoga9nXrp1D8aakkqgDgTdwBa71satL6c-0kQWNJcYPq4FOlyPzmiRy7GL",
                                                    Body = v214,
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
                local v215 = math.random(100, 600)
                task.wait(v215)
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
        local v216 = game.Players.LocalPlayer
        if v216 and v216:IsA("Player") then
            v216:Kick("\nKey Mismatch\n \nIf you aren\'t a skid trying to bypass MikeyHub, sorry to inform you that theres no direct fix for this.")
        end
    end
else
    local v217 = game.Players.LocalPlayer
    if v217 and v217:IsA("Player") then
        v217:Kick("Open MikeyHub Loader Before Running This.")
    end
    return
end
