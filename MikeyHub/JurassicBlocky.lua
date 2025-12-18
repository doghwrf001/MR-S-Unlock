-- CN
-- 开源作者：MR
-- http://qins.mc.hi.cn/MR-S
-- 不知名脚本,闲的没事破的玩
-- 功能效果没测试过,自行测试,如有损坏自行修复！
-- 全源开源，应该没有人闲的没事拿这个圈钱吧？
-- 最后：请标明来源，谢谢！


-- EN
-- Open Source by: MR
-- http://qins.mc.hi.cn/MR-S
-- Unknown script, cracked for fun during free time
-- Functionality hasn't been tested; test it yourself and fix any issues if damaged!
-- Fully open-source; hopefully no one would bother monetizing this, right?
-- Lastly: Please credit the source, thank you!


local vu1 = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

-- MikeyHub-JurassicBlocky[Server ID = 11653088948]
local v4 = game.PlaceId
local v5 = game:GetService("MarketplaceService"):GetProductInfo(v4)
local vu6 = game:GetService("RbxAnalyticsService"):GetClientId()
local vu7 = game:GetService("Players").LocalPlayer


local function vu8()
    return true 
end

local vu9 = ""


local function v16()
    return false 
end

local v17 = "MikeyHub-JurassicBlocky [MR-S Open Source]"

local v19 = (function(p18)
    return p18:gsub("%b[]", ""):gsub("%b{}", ""):gsub("%b()", ""):match("^%s*(.-)%s*$")
end)((tostring(v5.Name)))

local vu20 = vu1:CreateWindow({
    Title = v17,
    SubTitle = "- Open Source Version - " .. v19,
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = getgenv().Blur or true,
    Theme = getgenv().Theme or "Dark",
    MinimizeKey = getgenv().MinimizeKey or Enum.KeyCode.LeftControl
})

local function v24(p21)
    local v22 = 0
    for v23 = 1, # p21 do
        v22 = (v22 + string.byte(p21, v23) * v23) % 4294967296
    end
    return tostring(v22)
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


local v41 = {
    Main = vu20:AddTab({
        Title = "| Dinosaur",
        Icon = "user"
    }),
    Combat = vu20:AddTab({
        Title = "| Combat",
        Icon = "swords"
    }),
    Players = vu20:AddTab({
        Title = "| Players",
        Icon = "users"
    }),
    Autofarm = vu20:AddTab({
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


v41.Main:AddSection("Stat Changers")
local vu42 = false
spawn(function()
    task.wait(2)
    vu42 = true
end)

v41.Main:AddSlider("attackslid", {
    Title = "Attack Damage",
    Description = "Changes your attack damage (must be in menu to change this stat)",
    Default = 100,
    Min = 0,
    Max = 10000,
    Rounding = 0.1,
    Callback = function(pu43)
        if vu42 == true then
            local v45, _ = pcall(function()
                local v44 = {
                    pu43,
                    pu43,
                    pu43
                }
                require(game:GetService("ReplicatedStorage").JB_Database)[game:GetService("Players")[vu32.Name].PlayerGui.JB.Menu.Dinosaur.Value].LcDamage = v44
            end)
            if not v45 then
                vu1:Notify({
                    Title = "Error.",
                    Content = "Failed to change attack damage.",
                    Duration = 5
                })
            end
        end
    end
})

v41.Main:AddSlider("knockbackslid", {
    Title = "Knockback",
    Description = "Changes your knockback (must be in menu to change this stat)",
    Default = 100,
    Min = 0,
    Max = 1000,
    Rounding = 0.1,
    Callback = function(pu46)
        if vu42 == true then
            local v48, _ = pcall(function()
                local v47 = {
                    pu46,
                    pu46,
                    pu46
                }
                require(game:GetService("ReplicatedStorage").JB_Database)[game:GetService("Players")[vu32.Name].PlayerGui.JB.Menu.Dinosaur.Value].LcKnockBack = v47
            end)
            if not v48 then
                vu1:Notify({
                    Title = "Error.",
                    Content = "Failed to change knockback.",
                    Duration = 5
                })
            end
        end
    end
})

v41.Main:AddSlider("stunslid", {
    Title = "Stun",
    Description = "Changes your stun (must be in menu to change this stat)",
    Default = 100,
    Min = 0,
    Max = 1000,
    Rounding = 0.1,
    Callback = function(pu49)
        if vu42 == true then
            local v51, _ = pcall(function()
                local v50 = {
                    pu49,
                    pu49,
                    pu49
                }
                require(game:GetService("ReplicatedStorage").JB_Database)[game:GetService("Players")[vu32.Name].PlayerGui.JB.Menu.Dinosaur.Value].LcStun = v50
            end)
            if not v51 then
                vu1:Notify({
                    Title = "Error.",
                    Content = "Failed to change stun.",
                    Duration = 5
                })
            end
        end
    end
})

v41.Main:AddSlider("atkcoolslid", {
    Title = "Attack Cooldown",
    Description = "Changes your attack cooldown (must be in menu to change this stat)",
    Default = 1,
    Min = 0,
    Max = 10,
    Rounding = 0.1,
    Callback = function(pu52)
        if vu42 == true then
            local v53, _ = pcall(function()
                require(game:GetService("ReplicatedStorage").JB_Database)[game:GetService("Players")[vu32.Name].PlayerGui.JB.Menu.Dinosaur.Value].AttackLCcooldown = pu52
            end)
            if not v53 then
                vu1:Notify({
                    Title = "Error.",
                    Content = "Failed to change attack cooldown.",
                    Duration = 5
                })
            end
        end
    end
})

v41.Main:AddSlider("waitbtwslid", {
    Title = "Wait Between Attacks",
    Description = "Changes the time between attacks (must be in menu to change this stat)",
    Default = 0.1,
    Min = 0,
    Max = 1,
    Rounding = 0.1,
    Callback = function(pu54)
        if vu42 == true then
            local v56, _ = pcall(function()
                local v55 = {
                    pu54,
                    pu54,
                    pu54
                }
                require(game:GetService("ReplicatedStorage").JB_Database)[game:GetService("Players")[vu32.Name].PlayerGui.JB.Menu.Dinosaur.Value].LcWait = v55
            end)
            if not v56 then
                vu1:Notify({
                    Title = "Error.",
                    Content = "Failed to change wait between attacks.",
                    Duration = 5
                })
            end
        end
    end
})

v41.Main:AddSlider("walkspeedslid", {
    Title = "WalkSpeed",
    Description = "Changes your base walkspeed (must be in menu to change this stat)",
    Default = 1,
    Min = 1,
    Max = 100,
    Rounding = 0.1,
    Callback = function(pu57)
        if vu42 == true then
            local v58, _ = pcall(function()
                require(game:GetService("ReplicatedStorage").JB_Database)[game:GetService("Players")[vu32.Name].PlayerGui.JB.Menu.Dinosaur.Value].WalkSpeed = pu57
            end)
            if not v58 then
                vu1:Notify({
                    Title = "Error.",
                    Content = "Failed to change walk speed.",
                    Duration = 5
                })
            end
        end
    end
})

v41.Main:AddSlider("runspeedslid", {
    Title = "Run Speed",
    Description = "Changes your base run speed (must be in menu to change this stat)",
    Default = 0.1,
    Min = 0,
    Max = 1,
    Rounding = 0.1,
    Callback = function(pu59)
        if vu42 == true then
            local v60, _ = pcall(function()
                require(game:GetService("ReplicatedStorage").JB_Database)[game:GetService("Players")[vu32.Name].PlayerGui.JB.Menu.Dinosaur.Value].RunSpeed = pu59
            end)
            if not v60 then
                vu1:Notify({
                    Title = "Error.",
                    Content = "Failed to change run speed.",
                    Duration = 5
                })
            end
        end
    end
})

local v61 = v41.Main:AddDropdown("passive1", {
    Title = "Passive1",
    Description = "Changes your passive (must be in menu to change this stat)",
    Values = {
        "Frenzy",
        "Runner",
        "Stance",
        "Pacifist",
        "Bloodthirsty",
        "Bleeder",
        "Tank",
        "Enraged"
    },
    Multi = false,
    Default = "Frenzy"
})

local v62 = v41.Main:AddDropdown("Dropdown", {
    Title = "Passive2",
    Description = "Changes your passive (must be in menu to change this stat)",
    Values = {
        "Frenzy",
        "Runner",
        "Stance",
        "Pacifist",
        "Bloodthirsty",
        "Bleeder",
        "Tank",
        "Enraged"
    },
    Multi = false,
    Default = "Enraged"
})

v61:OnChanged(function(pu63)
    if vu42 == true then
        local v64, _ = pcall(function()
            require(game:GetService("ReplicatedStorage").JB_Database)[game:GetService("Players")[vu32.Name].PlayerGui.JB.Menu.Dinosaur.Value].Passive1 = tostring(pu63)
        end)
        if not v64 then
            vu1:Notify({
                Title = "Error.",
                Content = "Failed to change passive1.",
                Duration = 5
            })
        end
    end
end)

v62:OnChanged(function(pu65)
    if vu42 == true then
        local v66, _ = pcall(function()
            require(game:GetService("ReplicatedStorage").JB_Database)[game:GetService("Players")[vu32.Name].PlayerGui.JB.Menu.Dinosaur.Value].Passive2 = tostring(pu65)
        end)
        if not v66 then
            vu1:Notify({
                Title = "Error.",
                Content = "Failed to change passive2.",
                Duration = 5
            })
        end
    end
end)

v41.Main:AddButton({
    Title = "Infinite Stamina",
    Description = "Changes your max stamina (must be in menu to change stat)",
    Callback = function()
        if vu42 == true then
            local v67, _ = pcall(function()
                require(game:GetService("ReplicatedStorage").JB_Database)[game:GetService("Players")[vu32.Name].PlayerGui.JB.Menu.Dinosaur.Value].Stamina = 9999999800000000
            end)
            if not v67 then
                vu1:Notify({
                    Title = "Error.",
                    Content = "Failed to set infinite stamina.",
                    Duration = 5
                })
            end
        end
    end
})

v41.Main:AddSection("Health")
local vu68 = false

v41.Main:AddToggle("", {
    Title = "God Mode",
    Description = "Gives you god mode. (sometimes health ui doesn\'t update)",
    Default = false,
    Callback = function(p69)
        vu68 = p69
        while vu68 do
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("SelfDamage"):FireServer(unpack({
                - 999999999
            }))
            task.wait(0.1)
        end
    end
})

v41.Main:AddButton({
    Title = "God Mode V2",
    Description = "Gives you god mode. (Don\'t fight bleeders)",
    Callback = function()
        local v70 = game:GetService("Players")
        local v71 = {
            v70.LocalPlayer.Character.Humanoid,
            - 999999999999999,
            1.5,
            0,
            v70.LocalPlayer.Character.HumanoidRootPart,
            3,
            v70.LocalPlayer.Character.DinosaurName
        }
        game:GetService("ReplicatedStorage").RemoteEvents.Damage:FireServer(unpack(v71))
        task.wait(1)
        game:GetService("Players").LocalPlayer.PlayerGui.JB.SurvivalUI.Frame.Health.Bar2.Size = UDim2.new(1, 1, 1, 1)
    end
})

v41.Main:AddButton({
    Title = "Heal To Max Health",
    Description = "Heals you to max health.",
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("SelfDamage"):FireServer(unpack({
            - 999999999
        }))
    end
})

v41.Main:AddButton({
    Title = "Insta Heal Bleed",
    Description = "Instant heals bleed.",
    Callback = function()
        repeat
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("HealBleed"):FireServer()
            task.wait(0.1)
        until vu32.Character.Bleed.Value <= 0
    end
})

v41.Main:AddButton({
    Title = "Insta Heal Poison",
    Description = "Instant heals poison.",
    Callback = function()
        repeat
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("HealPoison"):FireServer()
            print(vu32.Character.Poison.Value)
            task.wait(0.1)
        until vu32.Character.Poison.Value <= 0
    end
})

v41.Main:AddSection("Other")
v41.Main:AddSlider("", {
    Title = "WalkSpeed",
    Description = "vroom vroom",
    Default = 50,
    Min = 1,
    Max = 300,
    Rounding = 0.1,
    Callback = function(p72)
        vu32.Character.Humanoid.WalkSpeed = p72
    end
})

v41.Main:AddSlider("", {
    Title = "JumpPower",
    Description = "soar for greatness",
    Default = 50,
    Min = 1,
    Max = 300,
    Rounding = 0.1,
    Callback = function(p73)
        vu32.Character.Humanoid.JumpPower = p73
    end
})

local vu74 = game:GetService("UserInputService")
local vu75 = nil
infJumpDebounce = false

v41.Main:AddToggle("", {
    Title = "Infinite Jump",
    Description = "jump jump jump",
    Default = false,
    Callback = function(p76)
        if p76 == true then
            vu75 = vu74.JumpRequest:Connect(function()
                if not infJumpDebounce then
                    infJumpDebounce = true
                    vu32.Character:FindFirstChildWhichIsA("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
                    wait()
                    infJumpDebounce = false
                end
            end)
        else
            if vu75 then
                vu75:Disconnect()
            end
            infJumpDebounce = false
        end
    end
})


v41.Combat:AddSection("Hitbox Expander")
local vu77 = 15
local vu78 = 1
local vu79 = false

v41.Combat:AddSlider("", {
    Title = "Hitbox Size",
    Description = "",
    Default = 70,
    Min = 1,
    Max = 500,
    Rounding = 0.1,
    Callback = function(p80)
        vu77 = p80
    end
})

v41.Combat:AddToggle("", {
    Title = "Hitbox Expander",
    Description = "In short terms, reach.",
    Default = false,
    Callback = function(p81)
        vu79 = p81
        while vu79 do
            local v82 = next
            local v83, v84 = game:GetService("Players"):GetPlayers()
            while true do
                local vu85
                v84, vu85 = v82(v83, v84)
                if v84 == nil then
                    break
                end
                if vu85.Name ~= game:GetService("Players").LocalPlayer.Name then
                    pcall(function()
                        vu85.Character.HumanoidRootPart.Size = Vector3.new(vu77, vu77, vu77)
                        vu85.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
                        vu85.Character.HumanoidRootPart.Transparency = vu78
                        vu85.Character.HumanoidRootPart.Material = "Neon"
                        vu85.Character.HumanoidRootPart.CanCollide = false
                    end)
                end
            end
            task.wait(1)
        end
    end
})

v41.Combat:AddSection("Kill Aura")
local vu86 = false
local vu87 = 50
local vu88 = 45
local vu89 = 0.75
local vu90 = 0

v41.Combat:AddSlider("", {
    Title = "Range",
    Description = "",
    Default = 50,
    Min = 1,
    Max = 500,
    Rounding = 0.1,
    Callback = function(p91)
        vu87 = tonumber(p91) or vu87
    end
})

v41.Combat:AddSlider("", {
    Title = "Knockback",
    Description = "",
    Default = 0,
    Min = 1,
    Max = 10000,
    Rounding = 0.1,
    Callback = function(p92)
        vu90 = tonumber(p92) or vu90
    end
})

v41.Combat:AddSlider("", {
    Title = "Damage",
    Description = "",
    Default = 45,
    Min = 1,
    Max = 10000,
    Rounding = 0.1,
    Callback = function(p93)
        vu88 = tonumber(p93) or vu88
    end
})

v41.Combat:AddToggle("", {
    Title = "Kill Aura",
    Description = "Say goodbye to anyone that gets near you.",
    Default = false,
    Callback = function(p94)
        vu86 = p94
        local function v97(p95)
            local v96 = {
                p95,
                vu88,
                0.5,
                vu90,
                vu32.Character.HumanoidRootPart,
                1,
                vu32.Character.DinosaurName
            }
            game:GetService("ReplicatedStorage").RemoteEvents.Damage:FireServer(unpack(v96))
        end
        while vu86 do
            local v98, v99, v100 = ipairs(game.Players:GetPlayers())
            while true do
                local v101
                v100, v101 = v98(v99, v100)
                if v100 == nil then
                    break
                end
                if v101 ~= vu32 then
                    local v102 = v101.Character
                    if v102 and (v102:FindFirstChild("Humanoid") and (v102.Humanoid.Health > 0 and (v102:FindFirstChild("HumanoidRootPart") and (vu32.Character.HumanoidRootPart.Position - v102.HumanoidRootPart.Position).Magnitude <= vu87))) then
                        v97(v102.Humanoid)
                    end
                end
            end
            task.wait(vu89)
        end
    end
})


v41.Players:AddSection("A Player")
local vu103 = "None"
local v104 = {}
local vu105 = game:GetService("Players")

if vu105 then
    local v106, v107, v108 = pairs(vu105:GetPlayers())
    while true do
        local v109
        v108, v109 = v106(v107, v108)
        if v108 == nil then
            break
        end
        if v109 ~= vu32 then
            table.insert(v104, v109.Name)
        end
    end
end

local vu110 = v41.Players:AddDropdown("", {
    Title = "Target Player",
    Description = "Choose the player you wanna troll.",
    Values = v104,
    Multi = false,
    Default = 1
})

local v111 = vu110
vu110.OnChanged(v111, function(p112)
    vu103 = p112
end)

local function v114(p113)
    vu110:SetValue(tostring(p113.Name))
end

vu105.PlayerAdded:Connect(v114)

v41.Players:AddButton({
    Title = "Kill",
    Description = "Kills targetted player",
    Callback = function()
        local v115 = game:GetService("Players"):FindFirstChild(vu103)
        if v115 then
            local v116 = {
                v115.Character.Humanoid,
                9.99999998999999e23,
                1.5,
                0,
                vu105.LocalPlayer.Character.HumanoidRootPart,
                3,
                vu105.LocalPlayer.Character.DinosaurName
            }
            game:GetService("ReplicatedStorage").RemoteEvents.Damage:FireServer(unpack(v116))
            vu1:Notify({
                Title = "Success.",
                Content = "Successfully Killed Player.",
                SubContent = "",
                Duration = 5
            })
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

v41.Players:AddButton({
    Title = "Give God Mode",
    Description = "Gives god mode to targetted player.",
    Callback = function()
        local v117 = game:GetService("Players"):FindFirstChild(vu103)
        if v117 then
            local v118 = {
                v117.Character.Humanoid,
                - 99999999999,
                1.5,
                0,
                vu105.LocalPlayer.Character.HumanoidRootPart,
                3,
                vu105.LocalPlayer.Character.DinosaurName
            }
            game:GetService("ReplicatedStorage").RemoteEvents.Damage:FireServer(unpack(v118))
            vu1:Notify({
                Title = "Note:",
                Content = "If they bleed, they will instantly lose god mode.",
                SubContent = "",
                Duration = 5
            })
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

v41.Players:AddButton({
    Title = "Teleport",
    Description = "Teleports you to targetted player.",
    Callback = function()
        local v119 = game.Players.LocalPlayer.Character.HumanoidRootPart
        local v120 = game:GetService("Players"):FindFirstChild(vu103)
        if v120 then
            if v120.Character and v120.Character:FindFirstChild("HumanoidRootPart") then
                local _ = v119.CFrame
                v119.CFrame = v120.Character.HumanoidRootPart.CFrame
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

v41.Players:AddButton({
    Title = "Fling",
    Description = "Flings the targetted player.",
    Callback = function()
        local v121 = game:GetService("Players"):FindFirstChild(vu103)
        if v121 then
            local v122 = {
                v121.Character.Humanoid,
                1,
                1.5,
                math.huge,
                vu105.LocalPlayer.Character.HumanoidRootPart,
                3,
                vu105.LocalPlayer.Character.DinosaurName
            }
            game:GetService("ReplicatedStorage").RemoteEvents.Damage:FireServer(unpack(v122))
            vu1:Notify({
                Title = "Success.",
                Content = "Successfully Flinged Player.",
                SubContent = "",
                Duration = 5
            })
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

v41.Players:AddButton({
    Title = "Glitch",
    Description = "Glitches the targetted player.",
    Callback = function()
        local v123 = game:GetService("Players"):FindFirstChild(vu103)
        if v123 then
            local v124 = {
                v123.Character.Humanoid,
                math.huge,
                1.5,
                0,
                vu105.LocalPlayer.Character.HumanoidRootPart,
                3,
                vu105.LocalPlayer.Character.DinosaurName
            }
            game:GetService("ReplicatedStorage").RemoteEvents.Damage:FireServer(unpack(v124))
            vu1:Notify({
                Title = "Success.",
                Content = "Successfully Glitched Player.",
                SubContent = "",
                Duration = 5
            })
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

v41.Players:AddSection("All Players")
v41.Players:AddButton({
    Title = "Kill All",
    Description = "Kills every player in the game.",
    Callback = function()
        local vu125 = game:GetService("Players")
        local function v128(p126)
            local v127 = {
                p126.Character.Humanoid,
                9.99999998999999e23,
                1.5,
                0,
                vu125.LocalPlayer.Character.HumanoidRootPart,
                3,
                vu125.LocalPlayer.Character.DinosaurName
            }
            game:GetService("ReplicatedStorage").RemoteEvents.Damage:FireServer(unpack(v127))
        end
        local v129 = vu125.LocalPlayer
        local v130 = vu125
        local v131, v132, v133 = pairs(vu125.GetPlayers(v130))
        while true do
            local v134
            v133, v134 = v131(v132, v133)
            if v133 == nil then
                break
            end
            if v134 ~= v129 then
                v128(v134)
            end
        end
    end
})

v41.Players:AddButton({
    Title = "Give God Mode All",
    Description = "Gives god mode every player in the game.",
    Callback = function()
        local vu135 = game:GetService("Players")
        local function v138(p136)
            local v137 = {
                p136.Character.Humanoid,
                - 999999999999,
                1.5,
                0,
                vu135.LocalPlayer.Character.HumanoidRootPart,
                3,
                vu135.LocalPlayer.Character.DinosaurName
            }
            game:GetService("ReplicatedStorage").RemoteEvents.Damage:FireServer(unpack(v137))
        end
        local v139 = vu135.LocalPlayer
        local v140 = vu135
        local v141, v142, v143 = pairs(vu135.GetPlayers(v140))
        while true do
            local v144
            v143, v144 = v141(v142, v143)
            if v143 == nil then
                break
            end
            if v144 ~= v139 then
                v138(v144)
            end
        end
    end
})

v41.Players:AddButton({
    Title = "Fling All",
    Description = "Flings every player in the game.",
    Callback = function()
        local vu145 = game:GetService("Players")
        local function v148(p146)
            local v147 = {
                p146.Character.Humanoid,
                1,
                1.5,
                5000,
                vu145.LocalPlayer.Character.HumanoidRootPart,
                3,
                vu145.LocalPlayer.Character.DinosaurName
            }
            game:GetService("ReplicatedStorage").RemoteEvents.Damage:FireServer(unpack(v147))
        end
        local v149 = vu145.LocalPlayer
        local v150 = vu145
        local v151, v152, v153 = pairs(vu145.GetPlayers(v150))
        while true do
            local v154
            v153, v154 = v151(v152, v153)
            if v153 == nil then
                break
            end
            if v154 ~= v149 then
                v148(v154)
            end
        end
    end
})

v41.Players:AddButton({
    Title = "Glitch All",
    Description = "Glitches every player in the game.",
    Callback = function()
        local vu155 = game:GetService("Players")
        local function v158(p156)
            local v157 = {
                p156.Character.Humanoid,
                math.huge,
                1.5,
                0,
                vu155.LocalPlayer.Character.HumanoidRootPart,
                3,
                vu155.LocalPlayer.Character.DinosaurName
            }
            game:GetService("ReplicatedStorage").RemoteEvents.Damage:FireServer(unpack(v157))
        end
        local v159 = vu155.LocalPlayer
        local v160 = vu155
        local v161, v162, v163 = pairs(vu155.GetPlayers(v160))
        while true do
            local v164
            v163, v164 = v161(v162, v163)
            if v163 == nil then
                break
            end
            if v164 ~= v159 then
                v158(v164)
            end
        end
    end
})

v41.Players:AddSection("Other")
v41.Players:AddButton({
    Title = "Teleport To Random Player",
    Description = "Teleports to random player.",
    Callback = function()
        local function vu168(p165)
            local v166 = game:GetService("Players"):GetPlayers()
            if # v166 <= 1 then
                return nil
            end
            local v167 = v166[math.random(1, # v166)]
            local _ = v167 == p165
            return v167
        end
        local v169 = game.Players.LocalPlayer.Character.HumanoidRootPart
        local v170 = vu168(nil)
        if v170 then
            if v170.Character and v170.Character:FindFirstChild("HumanoidRootPart") then
                local _ = v169.CFrame
                v169.CFrame = v170.Character.HumanoidRootPart.CFrame
            else
                vu1:Notify({
                    Title = "Error.",
                    Content = "Random player isn\'t ingame, (execute code again)",
                    SubContent = "",
                    Duration = 5
                })
            end
        else
            vu1:Notify({
                Title = "Error.",
                Content = "No Players Found.",
                SubContent = "",
                Duration = 5
            })
        end
    end
})

v41.Players:AddButton({
    Title = "Kill Nearest Player",
    Description = "Kills the nearest player.",
    Callback = function()
        local vu171 = game:GetService("Players")
        local vu172 = vu171.LocalPlayer
        local v181 = (function()
            local v173 = math.huge
            local v174 = vu171
            local v175, v176, v177 = pairs(v174:GetPlayers())
            local v178 = nil
            while true do
                local v179
                v177, v179 = v175(v176, v177)
                if v177 == nil then
                    break
                end
                if v179 ~= vu172 then
                    local v180 = v179.Character and (v179.Character:FindFirstChild("HumanoidRootPart") and (v179.Character.HumanoidRootPart.Position - vu172.Character.HumanoidRootPart.Position).Magnitude) or math.huge
                    if v180 < v173 then
                        v178 = v179
                        v173 = v180
                    end
                end
            end
            return v178
        end)()
        if v181 then
            local v182 = {
                v181.Character.Humanoid,
                999999999,
                1.5,
                0,
                vu172.Character.HumanoidRootPart,
                3,
                vu172.Character.DinosaurName
            }
            game:GetService("ReplicatedStorage").RemoteEvents.Damage:FireServer(unpack(v182))
        else
            vu1:Notify({
                Title = "Error.",
                Content = "No Players Found.",
                SubContent = "",
                Duration = 5
            })
        end
    end
})


v41.Autofarm:AddSection("Goat AutoFarm")
local vu183 = nil
local vu184 = nil

v41.Autofarm:AddToggle("", {
    Title = "No Notifications",
    Description = "Turns off the notifications for goat autofarm.",
    Default = false,
    Callback = function(p185)
        vu183 = p185
    end
})

v41.Autofarm:AddToggle("", {
    Title = "Goat AutoFarm",
    Description = "Auto kills any goats.",
    Default = false,
    Callback = function(p186)
        vu184 = p186
        local v187 = game:GetService("Workspace")
        local _ = game:GetService("Players").LocalPlayer
        while vu184 do
            local v188, v189, v190 = pairs(v187:GetChildren())
            local v191 = false
            while true do
                local v192
                v190, v192 = v188(v189, v190)
                if v190 == nil then
                    break
                end
                if v192.Name == "Goat" then
                    local v193 = v192:FindFirstChild("Humanoid")
                    if v193 then
                        local v194, v195, v196 = pairs(v192:GetChildren())
                        while true do
                            local v197
                            v196, v197 = v194(v195, v196)
                            if v196 == nil then
                                break
                            end
                            if v197.Name == "Tail" then
                                task.wait(1)
                                local v198 = {
                                    v193,
                                    9999999,
                                    0.5,
                                    0,
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
                                    1,
                                    game:GetService("Players").LocalPlayer.Character.DinosaurName
                                }
                                game:GetService("ReplicatedStorage").RemoteEvents.Damage:FireServer(unpack(v198))
                                if vu183 ~= false then
                                    v191 = true
                                else
                                    vu1:Notify({
                                        Title = "Success!",
                                        Content = "Found Goat, Trying To Kill Now.",
                                        SubContent = "",
                                        Duration = 3
                                    })
                                    v191 = true
                                end
                            end
                        end
                    end
                end
            end
            if not v191 and vu183 == false then
                vu1:Notify({
                    Title = "Goat AutoFarm : ",
                    Content = "Goat Not Found, Waiting Until It Respawns.",
                    SubContent = "",
                    Duration = 5
                })
                task.wait(2)
            end
            task.wait(0.5)
        end
    end
})

v41.Autofarm:AddSection("Amber AutoFarm")
local vu199 = nil
local vu200 = nil

v41.Autofarm:AddToggle("", {
    Title = "No Notifications",
    Description = "Turns off the notifications for amber autofarm.",
    Default = false,
    Callback = function(p201)
        vu199 = p201
    end
})

v41.Autofarm:AddToggle("", {
    Title = "Amber AutoFarm",
    Description = "Auto collects any amber",
    Default = false,
    Callback = function(p202)
        vu200 = p202
        local v203 = game:GetService("Workspace")
        local v204 = game:GetService("Players").LocalPlayer
        while vu200 do
            local v205, v206, v207 = pairs(v203:GetChildren())
            local v208 = false
            while true do
                local v209
                v207, v209 = v205(v206, v207)
                if v207 == nil then
                    break
                end
                local v210 = v209:FindFirstChild("Prompt")
                if v210 then
                    v204.Character.HumanoidRootPart.CFrame = v210.CFrame
                    fireproximityprompt(v210.ProximityPrompt)
                    v208 = true
                end
            end
            if not v208 and vu199 == false then
                vu1:Notify({
                    Title = "Amber AutoFarm : ",
                    Content = "Amber Not Found, Waiting Until It Respawns.",
                    SubContent = "",
                    Duration = 5
                })
                task.wait(2)
            end
            task.wait(0.5)
        end
    end
})


v41.Visuals:AddSection("ESP")
local vu211 = Color3.fromRGB(255, 255, 255)
local vu212 = Color3.fromRGB(255, 255, 255)
local _ = game:GetService("Players").LocalPlayer

local vu213 = v41.Visuals:AddColorpicker("Colorpicker", {
    Title = "Fill Color",
    Description = "",
    Default = Color3.fromRGB(255, 255, 255)
})

local vu214 = v41.Visuals:AddColorpicker("Colorpicker", {
    Title = "Outline Color",
    Description = "",
    Default = Color3.fromRGB(255, 255, 255)
})

local v215 = vu213
vu213.OnChanged(v215, function()
    vu211 = vu213.Value
end)

local v216 = vu214
vu214.OnChanged(v216, function()
    vu212 = vu214.Value
end)

v41.Visuals:AddToggle("", {
    Title = "ESP",
    Description = "Highlights every player, allowing you to see them from afar.",
    Default = false,
    Callback = function(p217)
        getgenv().enabled = p217
        getgenv().filluseteamcolor = false
        getgenv().outlineuseteamcolor = false
        getgenv().fillcolor = vu211
        getgenv().outlinecolor = vu212
        getgenv().filltrans = 0
        getgenv().outlinetrans = 0
        loadstring(game:HttpGet("https://raw.githubusercontent.com/zntly/highlight-esp/main/esp.lua"))()
    end
})

v41.Visuals:AddSection("World")
local vu218 = game:GetService("Lighting")
local vu219 = vu218.Ambient

v41.Visuals:AddToggle("", {
    Title = "Full Bright",
    Description = "light up light up the world",
    Default = false,
    Callback = function(p220)
        if p220 == true then
            vu218.Ambient = Color3.new(1, 1, 1)
            vu218.ColorShift_Bottom = Color3.new(1, 1, 1)
            vu218.ColorShift_Top = Color3.new(1, 1, 1)
        else
            vu218.Ambient = vu219
            vu218.ColorShift_Bottom = Color3.new()
            vu218.ColorShift_Top = Color3.new()
        end
    end
})


v41.Misc:AddSection("Main")
v41.Misc:AddButton({
    Title = "Force Reset",
    Description = "Kills you, if you wanna live, don\'t click this lol.",
    Callback = function()
        vu32.Character.Humanoid.Health = 0
    end
})

local vu221 = nil
local vu222 = "Call1"

v41.Misc:AddDropdown("sound", {
    Title = "Sound",
    Description = "The sound you wanna spam.",
    Values = {
        "Call1",
        "Call2",
        "Call3",
        "Attack1",
        "Attack2",
        "Attack3"
    },
    Multi = false,
    Default = "Call1"
}):OnChanged(function(p223)
    vu222 = p223
end)

v41.Misc:AddToggle("", {
    Title = "Spam Calls (Server-Sided)",
    Description = "Other people can hear these calls, very annoying.",
    Default = false,
    Callback = function(p224)
        vu221 = p224
        while vu221 do
            local v225 = {
                vu222
            }
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("SoundPlay"):FireServer(unpack(v225))
            task.wait(0.5)
        end
    end
})

vu20:SelectTab(1)
