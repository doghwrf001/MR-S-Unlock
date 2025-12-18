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
        local vu32 = vu7.UserId
        local function v34()
            local v33 = vu29:GetPlatform()
            return v33 ~= Enum.Platform.Android and (v33 ~= Enum.Platform.IOS and "PC" or "IPhone") or "Android"
        end
        local function vu36(p35)
            game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(p35)
        end
        vu7.PlayerScripts:FindFirstChild("Anti Exploit")
        if game:GetService("ReplicatedStorage").funs:FindFirstChild("checkstats") then
            game:GetService("ReplicatedStorage").funs:WaitForChild("checkstats"):Destroy()
            print("[ MikeyHub ]: Blocked WalkSpeed Anti Cheat Successfully..")
        else
            print("[ MikeyHub ]: Couldn\'t Delete `checkstats`")
        end
        local vu37 = vu7.states
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Pixeluted/adoniscries/main/Source.lua", true))()
        if v16() ~= false then
            local v38 = {
                embeds = {
                    {
                        author = {
                            name = "Blacklisted User Has Executed! - MikeyHub",
                            icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu32 .. "&width=420&height=420"
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
                                value = v34(),
                                inline = true
                            },
                            {
                                name = "PandaAuth HWID :",
                                value = v28(),
                                inline = true
                            }
                        }
                    }
                }
            }
            local v39 = game:GetService("HttpService"):JSONEncode(v38);
            (http_request or request or (HttpPost or syn.request))({
                Url = "https://discord.com/api/webhooks/1274850660550049844/xyyZynAaVyeELiM0blJRu1pJBjwnwMi_P6a9tk_FicTQ_PO85rn_h5z_JX6aRAX_9hxr",
                Body = v39,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                }
            })
            local v40 = vu7
            vu7.Kick(v40, "\nYou\'re Banned From MikeyHub \n \nReason: " .. vu9 .. "\n \nIf You Believe This is A Mistake\nContact Mods Within The Server.\nHWID: " .. vu6)
        elseif getgenv().CollectMikeyHubData.KeySystem ~= true then
            local v41 = {
                CompleteSys = vu20:AddTab({
                    Title = "Main",
                    Icon = ""
                })
            }
            local _ = vu1.Options
            v41.CompleteSys:AddSection("Main")
            v41.CompleteSys:AddParagraph({
                Title = "Please Complete Key System!",
                Content = "You must complete the key system in order to use free MikeyHub, don\'t be weird and support me."
            })
            v41.CompleteSys:AddButton({
                Title = "Open MikeyHub Loader",
                Description = "Opens mikeyhub loader/key system.",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxScriptHub/MikeyHub-V2/main/Loader/Main"))()
                    vu1:Destroy()
                end
            })
            vu20:SelectTab(1)
        else
            local v42 = {
                Main = vu20:AddTab({
                    Title = "| Player",
                    Icon = "user"
                }),
                Autofarm = vu20:AddTab({
                    Title = "| AutoFarm",
                    Icon = "home"
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
            v42.Main:AddSection("Blatant")
            v42.Main:AddButton({
                Title = "Anti Burn",
                Description = "Allows you to run around the map scot free as a demon, do not get heavy attacked though.",
                Callback = function()
                    if vu8() ~= true then
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You Must Own Premiun In Order To Use This.",
                            SubContent = "Join Our Discord To Buy MikeyHub.",
                            Duration = 5
                        })
                    elseif game:GetService("Workspace"):WaitForChild(vu7.Name) then
                        if game:GetService("Workspace"):WaitForChild(vu7.Name):FindFirstChild("carry") then
                            local v43 = game:GetService("Workspace"):WaitForChild(vu7.Name):FindFirstChild("carry")
                            local v44 = vu7.states:FindFirstChild("carryingnoob")
                            v43:Destroy()
                            v44:Destroy()
                        else
                            vu1:Notify({
                                Title = "Error.",
                                Content = "You Must Be Carrying Something In Order To Use This.",
                                SubContent = "",
                                Duration = 5
                            })
                        end
                    end
                end
            })
            local vu45 = nil
            local v46 = game:GetService("RunService")
            v46.Stepped:connect(function()
                if vu45 then
                    pcall(function()
                        game:GetService("ReplicatedStorage").DashWithNoDelay:InvokeServer("Dash")
                    end)
                end
            end)
            v42.Main:AddToggle("SeeEveryoneHealth", {
                Title = "Semi Invisible",
                Description = "Spams dash effect making you less visible.",
                Default = false,
                Callback = function(p47)
                    vu45 = p47
                end
            })
            v42.Main:AddSlider("", {
                Title = "WalkSpeed",
                Description = "Changes your walkspeed",
                Default = 16,
                Min = 1,
                Max = 199,
                Rounding = 1,
                Callback = function(p48)
                    local v49 = vu7.Character:WaitForChild("Humanoid")
                    if workspace[vu7.Name]:FindFirstChild("\4\211\182i3\239\191\189\200\179\239\191\189   T[\239\191\189bNO\"\239\191\189\239\191\189u\4*\239\191\189\239\191\189l?\239\191\189\1*\239\191\189\239\191\189\239\191\189iK\239\191\189+\239\191\189o\239\191\189)\239\191\189         \239\191\189\239\191\189\239\191\189\239\191\189!\239\191\189\239\191\189") then
                        workspace[vu7.Name]:FindFirstChild("\4\211\182i3\239\191\189\200\179\239\191\189   T[\239\191\189bNO\"\239\191\189\239\191\189u\4*\239\191\189\239\191\189l?\239\191\189\1*\239\191\189\239\191\189\239\191\189iK\239\191\189+\239\191\189o\239\191\189)\239\191\189         \239\191\189\239\191\189\239\191\189\239\191\189!\239\191\189\239\191\189")
                        local v50 = workspace[vu7.Name]["\4\211\182i3\239\191\189\200\179\239\191\189   T[\239\191\189bNO\"\239\191\189\239\191\189u\4*\239\191\189\239\191\189l?\239\191\189\1*\239\191\189\239\191\189\239\191\189iK\239\191\189+\239\191\189o\239\191\189)\239\191\189         \239\191\189\239\191\189\239\191\189\239\191\189!\239\191\189\239\191\189"]
                        local v51 = getsenv(v50).checkstate
                        hookfunction(v51, function()
                            return nil
                        end)
                    end
                    v49.WalkSpeed = p48
                end
            })
            v42.Main:AddSlider("", {
                Title = "JumpPower",
                Description = "Changes your jumppower",
                Default = 50,
                Min = 1,
                Max = 189,
                Rounding = 1,
                Callback = function(p52)
                    if workspace[vu7.Name]:FindFirstChild("\4\211\182i3\239\191\189\200\179\239\191\189   T[\239\191\189bNO\"\239\191\189\239\191\189u\4*\239\191\189\239\191\189l?\239\191\189\1*\239\191\189\239\191\189\239\191\189iK\239\191\189+\239\191\189o\239\191\189)\239\191\189         \239\191\189\239\191\189\239\191\189\239\191\189!\239\191\189\239\191\189") then
                        workspace[vu7.Name]:FindFirstChild("\4\211\182i3\239\191\189\200\179\239\191\189   T[\239\191\189bNO\"\239\191\189\239\191\189u\4*\239\191\189\239\191\189l?\239\191\189\1*\239\191\189\239\191\189\239\191\189iK\239\191\189+\239\191\189o\239\191\189)\239\191\189         \239\191\189\239\191\189\239\191\189\239\191\189!\239\191\189\239\191\189")
                        local v53 = workspace[vu7.Name]["\4\211\182i3\239\191\189\200\179\239\191\189   T[\239\191\189bNO\"\239\191\189\239\191\189u\4*\239\191\189\239\191\189l?\239\191\189\1*\239\191\189\239\191\189\239\191\189iK\239\191\189+\239\191\189o\239\191\189)\239\191\189         \239\191\189\239\191\189\239\191\189\239\191\189!\239\191\189\239\191\189"]
                        local v54 = getsenv(v53).checkstate
                        hookfunction(v54, function()
                            return nil
                        end)
                    end
                    workspace[vu7.Name]:FindFirstChildOfClass("Humanoid").JumpPower = p52
                end
            })
            v42.Main:AddSection("Legit")
            v42.Main:AddButton({
                Title = "Anti Fall Damage",
                Description = "fall damage begone",
                Callback = function()
                    local vu55 = nil
                    local _ = hookmetamethod(game, "__namecall", function(p56, ...)
                        local v57 = getnamecallmethod()
                        if checkcaller() or (p56.Name ~= "remote" or (v57 ~= "FireServer" or ({
                            ...
                        })[1] ~= "FallDamage")) then
                            return vu55(p56, ...)
                        end
                        print("[ MikeyHub ]: Blocked Fall Damage Successfully..")
                        return wait(9000000000)
                    end)
                end
            })
            v42.Main:AddToggle("", {
                Title = "Infinite Wall Jumps",
                Description = "Gives you infinite wall jumps. (may be laggy)",
                Default = false,
                Callback = function(p58)
                    local v59 = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Deni210/Hydroxide-Wave-Fix/revision/ohaux.lua"))()
                    local v60 = game:GetService("Players").LocalPlayer.PlayerGui.WallJumps
                    local v61 = 4
                    local v62 = v59.searchClosure(v60, "WallJump", v61, {
                        [1] = "Ray",
                        [2] = "new",
                        [4] = "Torso",
                        [5] = "Position",
                        [6] = 2,
                        [7] = "CFrame"
                    })
                    if v62 == "?" then
                        return error("Couldn\'t find the function :c")
                    end
                    if debug.getupvalue(v62, v61) ~= 0 then
                        debug.setupvalue(v62, v61, 0)
                    end
                    while p58 do
                        task.wait(1)
                        if debug.getupvalue(v62, v61) ~= 0 then
                            debug.setupvalue(v62, v61, 0)
                        end
                    end
                end
            })
            local vu63 = nil
            v46.Stepped:connect(function()
                if vu63 then
                    pcall(function()
                        local v64, v65, v66 = ipairs(game.Players:GetPlayers())
                        local function v69(p67)
                            local v68 = p67:FindFirstChild("Humanoid")
                            if v68 then
                                v68.HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOn
                            end
                        end
                        while true do
                            local v70
                            v66, v70 = v64(v65, v66)
                            if v66 == nil then
                                break
                            end
                            v69(v70.Character)
                        end
                        local v71 = workspace:FindFirstChild("npc")
                        local v72 = v71 and v71:FindFirstChild("npcs")
                        if v72 then
                            local v73, v74, v75 = ipairs(v72:GetChildren())
                            while true do
                                local v76
                                v75, v76 = v73(v74, v75)
                                if v75 == nil then
                                    break
                                end
                                if v76:IsA("Model") then
                                    v69(v76)
                                end
                            end
                        end
                    end)
                else
                    local _ = vu63 ~= false
                end
            end)
            v42.Main:AddToggle("SeeEveryoneHealth", {
                Title = "See Everyone Health",
                Description = "Allows you to see everyone health (basically see through world).",
                Default = false,
                Callback = function(p77)
                    if vu8() ~= true then
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You Must Own Premiun In Order To Use This.",
                            SubContent = "Join Our Discord To Buy MikeyHub.",
                            Duration = 5
                        })
                    else
                        vu63 = p77
                    end
                end
            })
            local vu78 = nil
            v42.Main:AddToggle("SeeEveryoneHealth", {
                Title = "Auto Breathe",
                Description = "Basically infinite breath, auto breathes for you.",
                Default = false,
                Callback = function(p79)
                    if vu8() ~= true then
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You Must Own Premiun In Order To Use This.",
                            SubContent = "Join Our Discord To Buy MikeyHub.",
                            Duration = 5
                        })
                    else
                        vu78 = p79
                        local function v80()
                            if vu78 == true then
                                game:GetService("ReplicatedStorage").events.remote:FireServer(unpack({
                                    "manacharges"
                                }))
                                task.wait(1.3)
                                game:GetService("ReplicatedStorage").events.remote:FireServer(unpack({
                                    "manacharged"
                                }))
                                task.wait(0.1)
                            end
                        end
                        while vu78 do
                            v80()
                            task.wait(0.1)
                        end
                    end
                end
            })
            v42.Main:AddSection("Auto Ability")
            local v81 = {}
            if vu7.Backpack then
                local v82, v83, v84 = pairs(vu7.Backpack:GetChildren())
                while true do
                    local v85, v86 = v82(v83, v84)
                    if v85 == nil then
                        break
                    end
                    v84 = v85
                    if v86.Name ~= "Katana" and not (v86.Name:lower():find("gourd") or (v86.Name:lower():find("ramen") or (v86.Name:lower():find("meat") or v86.Name:lower():find("onigiri")))) then
                        table.insert(v81, v86.Name)
                    end
                end
            end
            local vu87 = nil
            local vu88 = nil
            local vu89 = nil
            local v90 = v42.Main:AddDropdown("Abilitychose", {
                Title = "Ability",
                Description = "If you don\'t see the ability you want on here, re-execute the script.",
                Values = v81,
                Multi = false,
                Default = ""
            })
            local v91 = v42.Main:AddDropdown("AbilityMethod", {
                Title = "Auto Ability Method",
                Description = "Spam = spamming ability, When Damage = doing ability when damaged. (example: auto crimison blade when you get damaged).",
                Values = {
                    "Spam",
                    "When Damaged"
                },
                Multi = false,
                Default = "Spam"
            })
            v90:OnChanged(function(p92)
                vu87 = p92
            end)
            v91:OnChanged(function(p93)
                vu89 = p93
            end)
            v42.Main:AddToggle("", {
                Title = "Auto Ability",
                Description = "",
                Default = false,
                Callback = function(p94)
                    vu88 = p94
                    local function v96()
                        if vu88 == true then
                            if vu7.Backpack:FindFirstChild(vu87) then
                                local v95 = {
                                    vu87
                                }
                                game:GetService("ReplicatedStorage").events.remote:FireServer(unpack(v95))
                                task.wait(5)
                            elseif not vu7.Backpack:FindFirstChild(vu87) then
                                return
                            end
                        end
                    end
                    local function vu98()
                        if vu88 == true then
                            if vu7.Backpack:FindFirstChild(vu87) then
                                local v97 = {
                                    vu87
                                }
                                game:GetService("ReplicatedStorage").events.remote:FireServer(unpack(v97))
                                task.wait(5)
                            elseif not vu7.Backpack:FindFirstChild(vu87) then
                                return
                            end
                        end
                    end
                    local function v99()
                        if vu88 == true then
                            vu7.Character:WaitForChild("Humanoid").HealthChanged:Connect(function()
                                vu98()
                                task.wait(5)
                            end)
                        end
                    end
                    while vu88 do
                        if vu89 ~= "Spam" then
                            if vu89 == "When Damaged" then
                                v99()
                            end
                        else
                            v96()
                        end
                        task.wait(0.1)
                    end
                end
            })
            v42.Autofarm:AddSection("Auto Farm")
            local vu100 = 6
            local vu101 = 750
            local v102 = {}
            if game:GetService("Workspace").npc.npcs then
                local v103, v104, v105 = pairs(game:GetService("Workspace").npc.npcs:GetChildren())
                while true do
                    local v106
                    v105, v106 = v103(v104, v105)
                    if v105 == nil then
                        break
                    end
                    table.insert(v102, v106.Name)
                end
            end
            local vu107 = nil
            v42.Autofarm:AddDropdown("mobselect", {
                Title = "Mob",
                Description = "",
                Values = {
                    "Akuma",
                    "Akuma Hunter",
                    "Strong Akuma",
                    "Strong Akuma Hunter",
                    "Snow Akuma"
                },
                Multi = false,
                Default = ""
            }):OnChanged(function(p108)
                vu107 = p108
            end)
            local vu110 = v42.Autofarm:AddSlider("Distance", {
                Title = "Distance",
                Description = "",
                Default = 6,
                Min = 1,
                Max = 10,
                Rounding = 0.1,
                Callback = function(p109)
                    vu100 = p109
                end
            })
            local vu111 = "Above"
            v42.Autofarm:AddDropdown("offselec", {
                Title = "Offset",
                Description = "",
                Values = {
                    "Above",
                    "Behind"
                },
                Multi = false,
                Default = "Above"
            }):OnChanged(function(p112)
                vu111 = p112
                if p112 == "Above" then
                    vu110:SetValue(8)
                    vu100 = 8
                end
            end)
            v42.Autofarm:AddSlider("Tween Speed", {
                Title = "Tween Speed",
                Description = "500 = Safe, 1000 = Risky.",
                Default = 750,
                Min = 1,
                Max = 1000,
                Rounding = 0.1,
                Callback = function(p113)
                    vu101 = p113
                end
            })
            local vu114 = nil
            local vu115 = true
            local vu116 = false
            local vu117 = nil
            local function vu146(p118, p119)
                if vu116 ~= true or not vu37:FindFirstChild("Unspawned") then
                    local v120 = game.Players.LocalPlayer
                    local v121 = v120.Character
                    if p119 == true then
                        local v122, v123, v124 = pairs(workspace:GetChildren())
                        while true do
                            local v125
                            v124, v125 = v122(v123, v124)
                            if v124 == nil then
                                break
                            end
                            if v125.Name == v120.Name then
                                local v126, v127, v128 = pairs(workspace[v120.Name]:GetChildren())
                                while true do
                                    local v129
                                    v128, v129 = v126(v127, v128)
                                    if v128 == nil then
                                        break
                                    end
                                    if v129:IsA("BasePart") then
                                        v129.CanCollide = false
                                    end
                                end
                            end
                        end
                    end
                    local v130 = game:GetService("TweenService")
                    game:GetService("RunService")
                    if v121 then
                        v121 = v121:FindFirstChild("HumanoidRootPart")
                    end
                    if v121 then
                        local v131 = v121.Position
                        local v132 = math.huge
                        local v133 = game:GetService("Workspace").npc.npcs:GetChildren()
                        local v134 = nil
                        for v135 = 1, # v133 do
                            local v136 = v133[v135]
                            local v137 = v136:FindFirstChild("HumanoidRootPart")
                            if v137 then
                                if v136.Name == p118 then
                                    local v138 = (v131 - v137.Position).Magnitude
                                    if v138 < v132 then
                                        v134 = v136
                                        v132 = v138
                                    end
                                end
                            end
                        end
                        if v134 then
                            local v139 = v134:FindFirstChild("HumanoidRootPart") and v134.HumanoidRootPart.Position
                            if v139 then
                                if vu111 ~= "Behind" then
                                    local v140 = vu100
                                    local v141 = v139 + Vector3.new(0, v140, 0)
                                    local v142 = v130:Create(v121, TweenInfo.new(math.round((v139 - workspace.CurrentCamera.CFrame.p).Magnitude) / vu101, Enum.EasingStyle.Linear), {
                                        CFrame = CFrame.new(v141, v139)
                                    })
                                    v142:Play()
                                    v142.Completed:Wait()
                                else
                                    local v143 = vu100
                                    local v144 = v139 + v134.HumanoidRootPart.CFrame.LookVector * - v143
                                    local v145 = v130:Create(v121, TweenInfo.new(math.round((v139 - workspace.CurrentCamera.CFrame.p).Magnitude) / vu101, Enum.EasingStyle.Linear), {
                                        CFrame = CFrame.new(v144, v139)
                                    })
                                    v145:Play()
                                    v145.Completed:Wait()
                                end
                                if v134:FindFirstChildOfClass("Humanoid") then
                                    if v134.Health == 0 then
                                        if v134.Health < 5 then
                                            v134:Destroy()
                                        end
                                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool") and (vu115 == true and v134) then
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
                                        if vu114 == true then
                                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "R", false, game)
                                        end
                                        if not v120.states:FindFirstChild("exeing") then
                                            game:GetService("ReplicatedStorage").events.remote:FireServer(unpack({
                                                "Execute"
                                            }))
                                        end
                                    elseif vu115 == true and v134 then
                                        game:GetService("ReplicatedStorage").events.remote:FireServer(unpack({
                                            "NormalAttack"
                                        }))
                                        if vu114 == true then
                                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "R", false, game)
                                        end
                                        if v134:FindFirstChild("Humanoid").Health == 0 then
                                            print("Asleep")
                                        end
                                        if not v120.states:FindFirstChild("exeing") then
                                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "B", false, game)
                                        end
                                    end
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
                else
                    return
                end
            end
            v42.Autofarm:AddToggle("", {
                Title = "Auto Heavy",
                Description = "",
                Default = false,
                Callback = function(p147)
                    vu114 = p147
                end
            })
            v42.Autofarm:AddToggle("", {
                Title = "Auto Attack",
                Description = "",
                Default = true,
                Callback = function(p148)
                    vu115 = p148
                end
            })
            v42.Autofarm:AddToggle("", {
                Title = "Death Check",
                Description = "",
                Default = false,
                Callback = function(p149)
                    vu116 = p149
                end
            })
            v42.Autofarm:AddToggle("", {
                Title = "AutoFarm",
                Description = "If its slow/choppy, re-adjust the tweenspeed.",
                Default = false,
                Callback = function(p150)
                    vu117 = p150
                    while task.wait() and vu117 do
                        vu146(vu107, vu117)
                    end
                end
            })
            v42.Autofarm:AddSection("Auto Boss")
            local vu151 = nil
            v42.Autofarm:AddDropdown("bossselect", {
                Title = "Boss",
                Description = "",
                Values = {
                    "currently",
                    "disabled"
                },
                Multi = false,
                Default = ""
            }):OnChanged(function(p152)
                vu151 = p152
            end)
            v42.Autofarm:AddToggle("", {
                Title = "AutoBoss",
                Description = "currently disabled",
                Default = false,
                Callback = function(_)
                    if vu8() ~= true then
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You Must Own Premiun In Order To Use This.",
                            SubContent = "Join Our Discord To Buy MikeyHub.",
                            Duration = 5
                        })
                    end
                end
            })
            v42.Autofarm:AddSection("Auto Gourd")
            local vu153 = "Small Gourd"
            local vu154 = nil
            v42.Autofarm:AddDropdown("mobselect", {
                Title = "Gourd",
                Description = "",
                Values = {
                    "Small Gourd",
                    "Medium Gourd",
                    "Big Gourd",
                    "Massive Gourd"
                },
                Multi = false,
                Default = "Small Gourd"
            }):OnChanged(function(p155)
                vu153 = p155
            end)
            v42.Autofarm:AddToggle("", {
                Title = "Auto Gourd",
                Description = "",
                Default = false,
                Callback = function(p156)
                    vu154 = p156
                    local function v157()
                        if not vu7.Character:FindFirstChild(vu153) then
                            if vu7.Backpack:FindFirstChild(vu153) then
                                vu36(vu7.Backpack[vu153])
                            end
                        end
                    end
                    local function v159()
                        if vu7.NoSaveValue.Air.Value ~= 100 then
                            game:GetService("ReplicatedStorage").events.remote:FireServer(unpack({
                                "manacharges"
                            }))
                            task.wait(1.3)
                            game:GetService("ReplicatedStorage").events.remote:FireServer(unpack({
                                "manacharged"
                            }))
                            task.wait(0.1)
                        else
                            local v158 = {
                                vu153
                            }
                            game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("remote"):FireServer(unpack(v158))
                        end
                    end
                    while vu154 do
                        v159()
                        v157()
                        task.wait(0.1)
                    end
                end
            })
            v42.Combat:AddSection("Auto Parry")
            local vu160 = 60
            v42.Combat:AddSlider("parrydis", {
                Title = "AutoParry Distance",
                Description = "",
                Default = 60,
                Min = 1,
                Max = 100,
                Rounding = 5,
                Callback = function(p161)
                    vu160 = p161
                end
            })
            v42.Combat:AddToggle("", {
                Title = "Auto Parry",
                Description = "Auto blocks heavy attacks. [currently disabled]",
                Default = false,
                Callback = function(_)
                    if vu8() ~= true then
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You Must Own Premiun In Order To Use This.",
                            SubContent = "Join Our Discord To Buy MikeyHub.",
                            Duration = 5
                        })
                    end
                end
            })
            v42.Combat:AddSection("Anti Parry")
            local vu162 = nil
            local vu163 = 70
            v42.Combat:AddSlider("", {
                Title = "Distance",
                Description = "",
                Default = 70,
                Min = 1,
                Max = 200,
                Rounding = 0.1,
                Callback = function(p164)
                    vu163 = tonumber(p164)
                end
            })
            v42.Combat:AddToggle("", {
                Title = "Anti Parry V1",
                Description = "Will cancel out your heavy attack when trys to parry you (disabled)",
                Default = false,
                Callback = function(p165)
                    vu162 = p165
                end
            })
            v42.Combat:AddSection("Other")
            local vu166 = nil
            v42.Combat:AddToggle("", {
                Title = "No Stun",
                Description = "Allows you to walk out of combos.",
                Default = false,
                Callback = function(p167)
                    if vu8() ~= true then
                        vu1:Notify({
                            Title = "Error.",
                            Content = "You Must Own Premiun In Order To Use This.",
                            SubContent = "Join Our Discord To Buy MikeyHub.",
                            Duration = 5
                        })
                    else
                        vu166 = p167
                        while vu166 do
                            if not vu7.Character:FindFirstChildOfClass("Humanoid") then
                                return
                            end
                            if vu7.Character.Humanoid.WalkSpeed == 8 then
                                vu7.Character.Humanoid.WalkSpeed = 16
                            end
                            task.wait(0.1)
                        end
                    end
                end
            })
            v42.Teleport:AddSection("Teleport To Player (RISKY)")
            local vu168 = "None"
            local v169 = {}
            local v170 = game:GetService("Players")
            if v170 then
                local v171, v172, v173 = pairs(v170:GetPlayers())
                while true do
                    local v174
                    v173, v174 = v171(v172, v173)
                    if v173 == nil then
                        break
                    end
                    if v174 ~= vu7 then
                        table.insert(v169, v174.Name)
                    end
                end
            end
            local v175 = v42.Teleport:AddDropdown("", {
                Title = "Target Player",
                Description = "Choose the player you wanna teleport to.",
                Values = v169,
                Multi = false,
                Default = 1
            })
            local v176 = v175
            v175.OnChanged(v176, function(p177)
                vu168 = p177
            end)
            v42.Teleport:AddButton({
                Title = "Teleport To",
                Description = "Teleports to targetted player (might be slow depending on distance)",
                Callback = function()
                    local vu178 = game:GetService("Players"):FindFirstChild(vu168)
                    if vu178 then
                        local v179 = vu178.Character
                        if v179 and v179:FindFirstChild("HumanoidRootPart") then
                            local _ = (vu7.Character.HumanoidRootPart.Position - v179.HumanoidRootPart.Position).magnitude
                            local v180 = TweenInfo.new(3.5, Enum.EasingStyle.Linear)
                            local v181 = {
                                CFrame = v179.HumanoidRootPart.CFrame
                            }
                            local vu182 = game:GetService("TweenService"):Create(vu7.Character.HumanoidRootPart, v180, v181)
                            local v183 = vu182
                            vu182.Play(v183)
                            vu182.Completed:Connect(function()
                                if vu7.Character.HumanoidRootPart.CFrame ~= vu178.HumanoidRootPart.CFrame then
                                    vu182:Play()
                                end
                            end)
                        else
                            vu1:Notify({
                                Title = "Error.",
                                Content = "Player found but not in-game (they\'re in menu).",
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
            v42.Teleport:AddSection("Teleport To Location (RISKY)")
            v42.Teleport:AddButton({
                Title = "Teleport To Yokai ",
                Description = "Teleports you to yokai.",
                Callback = function()
                    local v184 = game:GetService("TweenService")
                    local v185 = game.Players.LocalPlayer
                    local v186 = game:GetService("ReplicatedStorage").Areas.Yokai
                    local v187 = TweenInfo.new(3.5, Enum.EasingStyle.Linear)
                    local v188 = {
                        CFrame = v186.CFrame
                    }
                    v184:Create(v185.Character.HumanoidRootPart, v187, v188):Play()
                end
            })
            v42.Teleport:AddButton({
                Title = "Teleport To Demon Cave",
                Description = "Teleports you to demon cave.",
                Callback = function()
                    local v189 = game:GetService("TweenService")
                    local v190 = game.Players.LocalPlayer
                    local v191 = game:GetService("ReplicatedStorage").Areas["Demon Cave"]
                    local v192 = TweenInfo.new(3.5, Enum.EasingStyle.Linear)
                    local v193 = {
                        CFrame = v191.CFrame
                    }
                    v189:Create(v190.Character.HumanoidRootPart, v192, v193):Play()
                end
            })
            v42.Teleport:AddButton({
                Title = "Teleport To Scorching Desert",
                Description = "Teleports you to scorching desert.",
                Callback = function()
                    local v194 = game:GetService("TweenService")
                    local v195 = game.Players.LocalPlayer
                    local v196 = game:GetService("ReplicatedStorage").Areas["Scorching Desert"]
                    local v197 = TweenInfo.new(3.5, Enum.EasingStyle.Linear)
                    local v198 = {
                        CFrame = v196.CFrame
                    }
                    v194:Create(v195.Character.HumanoidRootPart, v197, v198):Play()
                end
            })
            v42.Visuals:AddSection("ESP")
            local vu199 = Color3.fromRGB(255, 255, 255)
            local vu200 = Color3.fromRGB(255, 255, 255)
            local _ = game:GetService("Players").LocalPlayer
            local vu201 = v42.Visuals:AddColorpicker("Colorpicker", {
                Title = "Fill Color",
                Description = "",
                Default = Color3.fromRGB(255, 255, 255)
            })
            local vu202 = v42.Visuals:AddColorpicker("Colorpicker", {
                Title = "Outline Color",
                Description = "",
                Default = Color3.fromRGB(255, 255, 255)
            })
            local v203 = vu201
            vu201.OnChanged(v203, function()
                vu199 = vu201.Value
            end)
            local v204 = vu202
            vu202.OnChanged(v204, function()
                vu200 = vu202.Value
            end)
            v42.Visuals:AddToggle("", {
                Title = "ESP",
                Description = "Highlights every player, allowing you to see them from afar.",
                Default = false,
                Callback = function(p205)
                    getgenv().enabled = p205
                    getgenv().filluseteamcolor = false
                    getgenv().outlineuseteamcolor = false
                    getgenv().fillcolor = vu199
                    getgenv().outlinecolor = vu200
                    getgenv().filltrans = 0
                    getgenv().outlinetrans = 0
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/zntly/highlight-esp/main/esp.lua"))()
                end
            })
            v42.Visuals:AddSection("World")
            local vu206 = game:GetService("Lighting")
            local vu207 = vu206.Ambient
            v42.Visuals:AddToggle("", {
                Title = "Full Bright",
                Description = "light up light up the world",
                Default = false,
                Callback = function(p208)
                    if p208 == true then
                        vu206.Ambient = Color3.new(1, 1, 1)
                        vu206.ColorShift_Bottom = Color3.new(1, 1, 1)
                        vu206.ColorShift_Top = Color3.new(1, 1, 1)
                    else
                        vu206.Ambient = vu207
                        vu206.ColorShift_Bottom = Color3.new()
                        vu206.ColorShift_Top = Color3.new()
                    end
                end
            })
            v42.Misc:AddSection("Main")
            v42.Misc:AddButton({
                Title = "Force Reset",
                Description = "If you wanna live, don\'t use this lol",
                Callback = function()
                    vu7.Character.Humanoid.Health = 0
                end
            })
            v42.Misc:AddButton({
                Title = "Play Flip Animation",
                Description = "backflip challenge",
                Callback = function()
                    game:GetService("ReplicatedStorage").DashWithNoDelay:InvokeServer(unpack({
                        "Dash",
                        "flip"
                    }))
                end
            })
            v42.Misc:AddSection("Client Sided")
            v42.Misc:AddButton({
                Title = "Infinte Yen",
                Description = "THIS IS CLIENT SIDED, meaning you yen won\'t actually be this (to see effects buy one of anything.)",
                Callback = function()
                    local v209 = getrawmetatable(game)
                    make_writeable(v209)
                    local vu210 = v209.__index
                    function v209.__index(p211, p212)
                        return tostring(p211) == "Cash" and tostring(p212) == "Value" and 9999999 or vu210(p211, p212)
                    end
                end
            })
            local _ = getgenv().NoPopups == false
            spawn(function()
                local v213 = math.random(300, 600)
                task.wait(v213)
                vu20:Dialog({
                    Title = "Hello!",
                    Content = "Are You Enjoying MikeyHub?",
                    Buttons = {
                        {
                            Title = "Yes",
                            Callback = function()
                                local v214 = {
                                    embeds = {
                                        {
                                            author = {
                                                name = "User Has Selected Yes!",
                                                icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu32 .. "&width=420&height=420"
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
                                local v215 = game:GetService("HttpService"):JSONEncode(v214);
                                (http_request or request or (HttpPost or syn.request))({
                                    Url = "https://discord.com/api/webhooks/1270537407263150152/J2CeU61pacElkzcffrM6_Hd2ZDfmsuPBOgyzlvCD5v5QWDP__lik6yIh00zhsYniqxJ5",
                                    Body = v215,
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
                                                local v216 = {
                                                    embeds = {
                                                        {
                                                            author = {
                                                                name = "User Has Selected No.",
                                                                icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu32 .. "&width=420&height=420"
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
                                                local v217 = game:GetService("HttpService"):JSONEncode(v216);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1274852458123886592/0LwQKT_5bJvoga9nXrp1D8aakkqgDgTdwBa71satL6c-0kQWNJcYPq4FOlyPzmiRy7GL",
                                                    Body = v217,
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
                                                local v218 = {
                                                    embeds = {
                                                        {
                                                            author = {
                                                                name = "User Has Selected No.",
                                                                icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu32 .. "&width=420&height=420"
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
                                                local v219 = game:GetService("HttpService"):JSONEncode(v218);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1274852458123886592/0LwQKT_5bJvoga9nXrp1D8aakkqgDgTdwBa71satL6c-0kQWNJcYPq4FOlyPzmiRy7GL",
                                                    Body = v219,
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
                                                local v220 = {
                                                    embeds = {
                                                        {
                                                            author = {
                                                                name = "User Has Selected No.",
                                                                icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu32 .. "&width=420&height=420"
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
                                                local v221 = game:GetService("HttpService"):JSONEncode(v220);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1274852458123886592/0LwQKT_5bJvoga9nXrp1D8aakkqgDgTdwBa71satL6c-0kQWNJcYPq4FOlyPzmiRy7GL",
                                                    Body = v221,
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
                                                local v222 = {
                                                    embeds = {
                                                        {
                                                            author = {
                                                                name = "User Has Selected No.",
                                                                icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu32 .. "&width=420&height=420"
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
                                                local v223 = game:GetService("HttpService"):JSONEncode(v222);
                                                (http_request or request or (HttpPost or syn.request))({
                                                    Url = "https://discord.com/api/webhooks/1274852458123886592/0LwQKT_5bJvoga9nXrp1D8aakkqgDgTdwBa71satL6c-0kQWNJcYPq4FOlyPzmiRy7GL",
                                                    Body = v223,
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
                local v224 = math.random(100, 600)
                task.wait(v224)
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
        local v225 = game.Players.LocalPlayer
        if v225 and v225:IsA("Player") then
            v225:Kick("\nKey Mismatch\n \nIf you aren\'t a skid trying to bypass MikeyHub, sorry to inform you that theres no direct fix for this.")
        end
    end
else
    local v226 = game.Players.LocalPlayer
    if v226 and v226:IsA("Player") then
        v226:Kick("Open MikeyHub Loader Before Running This.")
    end
    return
end
