-- CN
-- 开源作者￼：MR
-- http://qins.mc.hi.cn/MR-S
-- 不知名脚本,闲的没事破的玩￼￼￼￼￼
-- 功能效果没测试过,自行测试,如有损坏￼自行修复￼！
-- 全源开源￼，应该￼没有人闲的没事拿这个圈钱吧￼？
-- 最后：请标明来源￼，谢谢￼！


-- EN
-- Open Source Author: MR
-- http://qins.mc.hi.cn/MR-S
-- Unknown script, cracked for fun during free time
-- Functionality hasn't been tested; test it yourself and fix any issues if damaged!
-- Fully open-source; hopefully no one would bother monetizing this, right?
-- Lastly: Please credit the source, thank you!

repeat
    task.wait(0.1)
until game:IsLoaded()
getgenv().beeconloaded = true
pcall(function()
    loadstring(game:HttpGet("https://pastefy.app/hnekDQDE/raw", true))()
    loadstring(game:HttpGet("https://pastefy.app/1lve7ZVH/raw", true))()
    game:GetService("Players").LocalPlayer.PlayerGui.PopUpsContainer.TopCanvas.Visible = false
end)
local v1 = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local v2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local v3 = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local v4 = v1:CreateWindow({
    Title = "Dead Rails | Beecon Hub",
    SubTitle = "by MR-S团队:MR破解",
    TabWidth = 160,
    Size = UDim2.fromOffset(520, 320),
    Acrylic = false,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})
local v5 = {
    Main = v4:AddTab({
        Title = "Main",
        Icon = "home"
    }),
    Combat = v4:AddTab({
        Title = "Combat",
        Icon = "swords"
    }),
    ESP = v4:AddTab({
        Title = "ESP",
        Icon = "lightbulb"
    }),
    Tracking = v4:AddTab({
        Title = "Tracking",
        Icon = "activity"
    }),
    Misc = v4:AddTab({
        Title = "Misc",
        Icon = "file-text"
    }),
    Credit = v4:AddTab({
        Title = "Credit",
        Icon = "scroll"
    }),
    Settings = v4:AddTab({
        Title = "Gui Settings",
        Icon = "settings"
    })
}
local vu6 = v1.Options
v1:Notify({
    Title = "Hello",
    Content = "Enjoy My Script",
    SubContent = "Don\'t Forget To Subscribe :D",
    Duration = 10
})
v5.Credit:AddParagraph({
    Title = "Click Button To Copy Link",
    Content = ""
})
v5.Credit:AddButton({
    Title = "Buy Lifetime Key",
    Description = "buy to support me :D",
    Callback = function()
        pcall(function()
            setclipboard("https://discordapp.com/users/1076816952028299275")
        end)
    end
})
v5.Credit:AddButton({
    Title = "Youtube Channel",
    Description = "check it now many good scripts :)",
    Callback = function()
        pcall(function()
            setclipboard("https://www.youtube.com/@BaconBossScripts")
        end)
    end
})
v5.Credit:AddButton({
    Title = "Discord",
    Description = "stay turn for more update and report bug \239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189",
    Callback = function()
        pcall(function()
            setclipboard("https://discord.gg/xUvY22gZp4")
        end)
    end
})
local v7 = game:GetService("Players")
local v8 = game.Workspace.CurrentCamera
local vu9 = v7.LocalPlayer;
(vu9.Character or vu9.CharacterAdded:Wait()):WaitForChild("Humanoid")
local vu10 = true
v8.CameraType = Enum.CameraType.Custom
vu9.CameraMode = Enum.CameraMode.LockFirstPerson
local function vu11()
    if vu10 then
        vu9.CameraMode = Enum.CameraMode.Classic
        vu10 = false
    else
        vu9.CameraMode = Enum.CameraMode.LockFirstPerson
        vu10 = true
    end
end
v5.Misc:AddButton({
    Title = "Unlock View",
    Description = "",
    Callback = function()
        vu11()
    end
})
v5.Misc:AddButton({
    Title = "Sever Hop",
    Description = "",
    Callback = function()
        local vu12 = game.PlaceId
        local vu13 = {}
        local vu14 = ""
        function TPReturner()
            local v15
            if vu14 ~= "" then
                v15 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. vu12 .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. vu14))
            else
                v15 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. vu12 .. "/servers/Public?sortOrder=Asc&limit=100"))
            end
            if v15.nextPageCursor and (v15.nextPageCursor ~= "null" and v15.nextPageCursor ~= nil) then
                vu14 = v15.nextPageCursor
            end
            local v16, v17, v18 = ipairs(v15.data)
            while true do
                local v19
                v18, v19 = v16(v17, v18)
                if v18 == nil then
                    return
                end
                local vu20 = tostring(v19.id)
                if tonumber(v19.maxPlayers) > tonumber(v19.playing) then
                    local v21, v22, v23 = ipairs(vu13)
                    local v24 = true
                    while true do
                        local v25
                        v23, v25 = v21(v22, v23)
                        if v23 == nil then
                            break
                        end
                        if vu20 == tostring(v25) then
                            v24 = false
                            break
                        end
                    end
                    if v24 then
                        table.insert(vu13, vu20)
                        wait()
                        pcall(function()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(vu12, vu20, game.Players.LocalPlayer)
                        end)
                        wait(4)
                    end
                end
            end
        end
        function Teleport()
            while wait() do
                pcall(function()
                    TPReturner()
                end)
            end
        end
        Teleport()
    end
})
local v27 = cloneref or function(p26)
    return p26
end
v27(game:GetService("CoreGui"))
v27(game:GetService("Players"))
local vu28 = v27(game:GetService("Lighting"))
local vu29 = v27(game:GetService("RunService"))
local vu30 = nil
local function vu31()
    pcall(function()
        vu28.Brightness = 2
        vu28.ClockTime = 14
        vu28.FogEnd = 100000
        vu28.GlobalShadows = false
        vu28.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
    end)
end
v5.Misc:AddToggle("fb", {
    Title = "Full Bright",
    Default = false
}):OnChanged(function()
    _G.fb = vu6.fb.Value
    if _G.fb then
        if vu30 then
            vu30:Disconnect()
        end
        vu31()
        vu30 = vu29.RenderStepped:Connect(vu31)
    elseif vu30 then
        vu30:Disconnect()
        vu30 = nil
    end
end)
vu6.fb:SetValue(false)
v5.Misc:AddToggle("ActiveSpeed", {
    Title = "Boost Small Speed",
    Default = false
}):OnChanged(function()
    _G.ActiveSpeed = vu6.ActiveSpeed.Value
    if _G.ActiveSpeed then
        while _G.ActiveSpeed do
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 18
            wait(0.1)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end
    end
end)
vu6.ActiveSpeed:SetValue(false)
v5.Misc:AddButton({
    Title = "Inf Jump",
    Description = "don\'t spawn too much jump",
    Callback = function()
        local vu32 = nil
        local vu33 = false;
        (function()
            if vu32 then
                vu32:Disconnect()
            end
            vu33 = false
            vu32 = game:GetService("UserInputService").JumpRequest:Connect(function()
                if not vu33 then
                    vu33 = true
                    local v34 = game.Players.LocalPlayer.Character
                    local v35 = v34 and v34:FindFirstChildOfClass("Humanoid")
                    if v35 then
                        v35:ChangeState(Enum.HumanoidStateType.Jumping)
                        wait()
                        vu33 = false
                    end
                end
            end)
        end)()
    end
})
_G.deadBody = false
_G.items = false
_G.enemy = false
_G.allPlayers = false
_G.bond = false
_G.train = false
_G.building = false
_G.ore = false
local vu36 = game:GetService("Players")
local vu37 = vu36.LocalPlayer
local vu38 = game.Players.LocalPlayer
local vu39 = vu38.Character or vu38.CharacterAdded:Wait()
local _ = 16
local v40 = game:GetService("Players")
local _ = game:GetService("TweenService")
local _ = v40.LocalPlayer
local vu41 = vu39.HumanoidRootPart
local v42 = Instance.new("ScreenGui")
v42.Parent = game:GetService("CoreGui")
local v43 = Instance.new("TextButton")
v43.Name = "LeftShift"
v43.Size = UDim2.new(0, 80, 0, 40)
v43.Position = UDim2.new(0, 100, 0, 100)
v43.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
v43.Text = "LeftShift (mobile)"
v43.TextColor3 = Color3.fromRGB(255, 255, 255)
v43.Parent = v42
local v44 = Instance.new("UICorner")
v44.CornerRadius = UDim.new(0, 7)
v44.Parent = v43
local vu45 = game:GetService("VirtualInputManager")
v43.MouseButton1Down:Connect(function()
    vu45:SendKeyEvent(true, Enum.KeyCode.LeftShift, false, game)
end)
v43.MouseButton1Up:Connect(function()
    vu45:SendKeyEvent(false, Enum.KeyCode.LeftShift, false, game)
end)
v43.Draggable = true
local vu46 = nil
local function vu55(p47)
    local v48 = math.huge
    local v49, v50, v51 = ipairs(p47:GetDescendants())
    local v52 = nil
    while true do
        local v53
        v51, v53 = v49(v50, v51)
        if v51 == nil then
            break
        end
        if v53.Name == "HumanoidRootPart" and v53.Parent:GetAttribute("DangerScore") then
            local v54 = (v53.Position - vu41.Position).magnitude
            if v54 < v48 then
                v52 = v53
                v48 = v54
            end
        end
    end
    return v52
end
local function vu61()
    local v56 = vu39
    local v57, v58, v59 = ipairs(v56:GetChildren())
    while true do
        local v60
        v59, v60 = v57(v58, v59)
        if v59 == nil then
            break
        end
        if v60:IsA("Tool") then
            return v60
        end
    end
    return nil
end
local function vu62()
    vu46 = vu55(workspace:FindFirstChild("NightEnemies")) or (vu55(workspace:FindFirstChild("RandomBuildings")) or vu55(workspace.Baseplates) or (vu55(workspace.Towns) or vu55(workspace.TownBuildings)))
end
task.spawn(function()
    while task.wait(0.1) do
        vu62()
    end
end)
local vu63 = {
    red = Color3.fromRGB(255, 0, 0),
    yellow = Color3.fromRGB(255, 255, 0),
    green = Color3.fromRGB(0, 255, 0),
    white = Color3.fromRGB(255, 255, 255),
    blue = Color3.fromRGB(0, 0, 255),
    pink = Color3.fromRGB(255, 218, 185),
    brown = Color3.fromRGB(111, 78, 55),
    grey = Color3.fromRGB(50, 50, 50),
    lightBlue = Color3.fromRGB(173, 216, 230)
}
local function vu65(p64)
    if p64:IsA("Model") and p64.PrimaryPart then
        return p64.PrimaryPart.Position
    elseif p64:IsA("BasePart") then
        return p64.Position
    else
        return nil
    end
end
local function vu68(p66)
    local v67 = p66:FindFirstChild("ESPNameTag")
    if v67 then
        v67:Destroy()
    end
end
local function vu78(pu69, pu70, pu71)
    if pu69:FindFirstChild("ESPNameTag") then
        pu69.ESPNameTag:Destroy()
    end
    if pu69:FindFirstChild("ESPHighlight") then
        pu69.ESPHighlight:Destroy()
    end
    local vu72 = Instance.new("BillboardGui")
    vu72.Name = "ESPNameTag"
    vu72.Size = UDim2.new(15, 0, 4, 0)
    vu72.Adornee = pu69
    vu72.AlwaysOnTop = true
    vu72.StudsOffset = Vector3.new(0, 3, 0)
    vu72.MaxDistance = math.huge
    local vu73 = Instance.new("TextLabel")
    vu73.Size = UDim2.new(1, 0, 1, 0)
    vu73.BackgroundTransparency = 1
    vu73.TextSize = 20
    vu73.Font = Enum.Font.GothamBold
    vu73.RichText = true
    vu73.Parent = vu72
    vu72.Parent = pu69
    local v74 = Instance.new("Highlight")
    v74.Name = "ESPHighlight"
    v74.FillColor = pu70
    v74.OutlineColor = pu71
    v74.Parent = pu69
    task.spawn(function()
        while vu72.Parent do
            local v75 = vu37.Character
            local v76 = v75 and (v75:FindFirstChild("HumanoidRootPart") and vu65(pu69))
            if v76 then
                local v77 = (v75.HumanoidRootPart.Position - v76).magnitude
                vu73.Text = string.format("<font color=\'rgb(%d,%d,%d)\'>%s</font> | <font color=\'rgb(%d,%d,%d)\'>%.1f m</font>", pu70.r * 255, pu70.g * 255, pu70.b * 255, pu69.Name, pu71.r * 255, pu71.g * 255, pu71.b * 255, v77)
            end
            task.wait(0.1)
        end
    end)
end
local function vu130()
    pcall(function()
        local v79, v80, v81 = pairs(workspace.NightEnemies:GetChildren())
        while true do
            local v82
            v81, v82 = v79(v80, v81)
            if v81 == nil then
                break
            end
            if (v82:IsA("BasePart") or v82:IsA("Model")) and v82.Humanoid.Health > 0 then
                if _G.enemy then
                    vu78(v82, vu63.red, vu63.green)
                else
                    vu68(v82)
                end
            end
        end
        local v83, v84, v85 = pairs(workspace.Baseplates:GetDescendants())
        while true do
            local v86
            v85, v86 = v83(v84, v85)
            if v85 == nil then
                break
            end
            if v86.Name == "HumanoidRootPart" then
                if _G.enemy and v86.Parent:GetAttribute("DangerScore") then
                    vu78(v86.Parent, vu63.red, vu63.green)
                elseif _G.items and not v86.Parent:GetAttribute("DangerScore") then
                    vu78(v86.Parent, vu63.yellow, vu63.green)
                else
                    vu68(v86)
                end
            end
        end
        local v87, v88, v89 = pairs(workspace.RandomBuildings:GetDescendants())
        while true do
            local v90
            v89, v90 = v87(v88, v89)
            if v89 == nil then
                break
            end
            if v90.Name == "HumanoidRootPart" then
                if _G.enemy then
                    vu78(v90.Parent, vu63.red, vu63.green)
                else
                    vu68(v90)
                end
            end
        end
        local v91, v92, v93 = pairs(workspace.TownBuildings:GetDescendants())
        while true do
            local v94
            v93, v94 = v91(v92, v93)
            if v93 == nil then
                break
            end
            if v94.Name == "HumanoidRootPart" then
                if _G.enemy then
                    vu78(v94.Parent, vu63.red, vu63.green)
                else
                    vu68(v94)
                end
            end
        end
        local v95, v96, v97 = pairs(workspace.Towns:GetDescendants())
        while true do
            local v98
            v97, v98 = v95(v96, v97)
            if v97 == nil then
                break
            end
            if v98.Name == "HumanoidRootPart" then
                if _G.enemy then
                    vu78(v98.Parent, vu63.red, vu63.green)
                else
                    vu68(v98)
                end
            end
        end
        local v99, v100, v101 = ipairs(workspace.RuntimeItems:GetChildren())
        while true do
            local v102
            v101, v102 = v99(v100, v101)
            if v101 == nil then
                break
            end
            if v102:IsA("Model") then
                local v103 = v102:FindFirstChild("HumanoidRootPart")
                local v104 = v102:FindFirstChild("Humanoid")
                if v103 and (_G.deadBody and (v104 and (v104.Health <= 0 and v102.Name ~= "Bond"))) then
                    vu78(v102, vu63.white, vu63.green)
                elseif _G.items and (not v103 and v102.Name ~= "Bond") then
                    vu78(v102, vu63.yellow, vu63.green)
                elseif _G.bond and v102.Name == "Bond" then
                    vu78(v102, vu63.pink, vu63.green)
                else
                    vu68(v102)
                end
            end
        end
        local v105, v106, v107 = pairs(workspace:GetChildren())
        while true do
            local v108
            v107, v108 = v105(v106, v107)
            if v107 == nil then
                break
            end
            if v108.Name == "Train" then
                if _G.train then
                    vu78(v108, vu63.brown, vu63.green)
                else
                    vu68(v108)
                end
            end
        end
        local v109, v110, v111 = pairs(workspace.RandomBuildings:GetChildren())
        while true do
            local v112
            v111, v112 = v109(v110, v111)
            if v111 == nil then
                break
            end
            if _G.building then
                vu78(v112, vu63.grey, vu63.green)
            else
                vu68(v112)
            end
        end
        local v113, v114, v115 = pairs(workspace.Towns:GetChildren())
        while true do
            local v116
            v115, v116 = v113(v114, v115)
            if v115 == nil then
                break
            end
            if _G.building then
                vu78(v116, vu63.grey, vu63.green)
            else
                vu68(v116)
            end
        end
        local v117, v118, v119 = pairs(workspace.TownBuildings:GetChildren())
        while true do
            local v120
            v119, v120 = v117(v118, v119)
            if v119 == nil then
                break
            end
            if _G.building then
                vu78(v120, vu63.grey, vu63.green)
            else
                vu68(v120)
            end
        end
        local v121, v122, v123 = pairs(workspace.Ore:GetChildren())
        while true do
            local v124
            v123, v124 = v121(v122, v123)
            if v123 == nil then
                break
            end
            if _G.ore then
                vu78(v124, vu63.lightBlue, vu63.green)
            else
                vu68(v124)
            end
        end
        local v125 = vu36
        local v126, v127, v128 = pairs(v125:GetPlayers())
        while true do
            local v129
            v128, v129 = v126(v127, v128)
            if v128 == nil then
                break
            end
            if v129 == vu37 or not (v129.Character and _G.allPlayers) then
                if v129.Character then
                    vu68(v129.Character)
                end
            else
                vu78(v129.Character, vu63.blue, vu63.green)
            end
        end
    end)
end
_G.AimbotEnabled = false
local vu131 = game:GetService("UserInputService")
local v132 = game:GetService("Players")
local vu133 = game:GetService("RunService")
local v134 = game:GetService("Workspace")
local _ = v132.LocalPlayer
local vu135 = v134.CurrentCamera
local vu136 = "Head"
local vu137 = 150
local vu138 = false
local function vu139()
    return vu131:GetMouseLocation()
end
local function vu151(p140)
    local v141 = vu137
    local v142 = vu139()
    local v143, v144, v145 = ipairs(p140:GetDescendants())
    local v146 = nil
    while true do
        local v147
        v145, v147 = v143(v144, v145)
        if v145 == nil then
            break
        end
        if v147.Name == vu136 then
            local v148, v149 = vu135:WorldToViewportPoint(v147.Position)
            if v149 then
                local v150 = (Vector2.new(v148.X, v148.Y) - v142).magnitude
                if v150 < v141 then
                    v146 = v147.Parent
                    v141 = v150
                end
            end
        end
    end
    return v146
end
local function vu154(p152)
    if p152 and p152:FindFirstChild(vu136) then
        local v153 = p152[vu136].Position
        vu135.CFrame = CFrame.lookAt(vu135.CFrame.Position, v153)
    end
end
vu131.InputBegan:Connect(function(p155)
    if p155.KeyCode == Enum.KeyCode.LeftShift then
        vu138 = true
    end
end)
vu131.InputEnded:Connect(function(p156)
    if p156.KeyCode == Enum.KeyCode.LeftShift then
        vu138 = false
    end
end)
local vu157 = Drawing.new("Circle")
vu157.Color = Color3.fromRGB(255, 0, 130)
vu157.Thickness = 1
vu157.NumSides = 64
vu157.Radius = vu137
vu157.Filled = false
vu157.Visible = true
vu157.Transparency = 1
vu133.RenderStepped:Connect(function()
    if _G.AimbotEnabled then
        vu157.Position = vu139()
        vu157.Radius = vu137
        vu157.Visible = true
        if vu138 then
            vu154(vu151(workspace:FindFirstChild("NightEnemies")) or vu151(workspace.Baseplates) or (vu151(workspace:FindFirstChild("RandomBuildings")) or (vu151(workspace.Towns) or vu151(workspace.TownBuildings))))
        end
    else
        vu157.Visible = false
    end
end)
v5.Main:AddToggle("moneyBag", {
    Title = "Auto Collect Money Bag (Be Near)",
    Default = false
}):OnChanged(function()
    _G.moneyBag = vu6.moneyBag.Value
    if _G.moneyBag then
        while _G.moneyBag do
            pcall(function()
                local v158, v159, v160 = ipairs(workspace.RuntimeItems:GetChildren())
                while true do
                    local v161
                    v160, v161 = v158(v159, v160)
                    if v160 == nil then
                        break
                    end
                    if v161:FindFirstChild("MoneyBag") then
                        fireproximityprompt(v161.MoneyBag.CollectPrompt)
                    end
                end
            end)
            wait()
        end
    end
end)
vu6.moneyBag:SetValue(false)
v5.Main:AddToggle("win", {
    Title = "Auto Collect Bond (Be Near)",
    Default = false
}):OnChanged(function()
    _G.win = vu6.win.Value
    if _G.win then
        while _G.win do
            pcall(function()
                local v162, v163, v164 = pairs(workspace.RuntimeItems:GetChildren())
                while true do
                    local v165
                    v164, v165 = v162(v163, v164)
                    if v164 == nil then
                        break
                    end
                    if v165.Name == "Bond" then
                        game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("RemotePromise"):WaitForChild("Remotes"):WaitForChild("C_ActivateObject"):FireServer(unpack({
                            v165
                        }))
                    end
                end
            end)
            wait()
        end
    end
end)
vu6.win:SetValue(false)
v5.Main:AddToggle("Bandage", {
    Title = "Auto Collect Consumable Items (Be Near)",
    Default = false
}):OnChanged(function()
    _G.Bandage = vu6.Bandage.Value
    if _G.Bandage then
        while _G.Bandage do
            pcall(function()
                local v166, v167, v168 = pairs(workspace.RuntimeItems:GetChildren())
                while true do
                    local v169
                    v168, v169 = v166(v167, v168)
                    if v168 == nil then
                        break
                    end
                    if v169:FindFirstChild("ObjectInfo") and v169.ObjectInfo.TextLabel.Text == "Consumable" then
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Tool"):WaitForChild("PickUpTool"):FireServer(unpack({
                            v169
                        }))
                    end
                end
            end)
            wait()
        end
    end
end)
vu6.Bandage:SetValue(false)
v5.Main:AddToggle("fuel", {
    Title = "Auto Store Fuelable Items (Equip Sack)",
    Default = false
}):OnChanged(function()
    _G.fuel = vu6.fuel.Value
    if _G.fuel then
        while _G.fuel do
            pcall(function()
                local v170, v171, v172 = pairs(workspace.RuntimeItems:GetChildren())
                while true do
                    local v173
                    v172, v173 = v170(v171, v172)
                    if v172 == nil then
                        break
                    end
                    if v173:GetAttribute("Fuel") then
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("StoreItem"):FireServer(unpack({
                            v173
                        }))
                    end
                end
            end)
            wait()
        end
    end
end)
vu6.fuel:SetValue(false)
v5.Main:AddToggle("values", {
    Title = "Auto Store Valuable Items (Equip Sack)",
    Default = false
}):OnChanged(function()
    _G.values = vu6.values.Value
    if _G.values then
        while _G.values do
            pcall(function()
                local v174, v175, v176 = pairs(workspace.RuntimeItems:GetChildren())
                while true do
                    local v177
                    v176, v177 = v174(v175, v176)
                    if v176 == nil then
                        break
                    end
                    if v177:GetAttribute("Value") and (not v177:FindFirstChild("ObjectInfo") or v177.ObjectInfo.TextLabel.Text ~= "Gun") then
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("StoreItem"):FireServer(unpack({
                            v177
                        }))
                    end
                end
            end)
            wait()
        end
    end
end)
vu6.values:SetValue(false)
v5.Main:AddToggle("gun", {
    Title = "Auto Collect Gun & Ammo (Be Near)",
    Default = false
}):OnChanged(function()
    _G.gun = vu6.gun.Value
    if _G.gun then
        while _G.gun do
            pcall(function()
                local v178, v179, v180 = pairs(workspace.RuntimeItems:GetChildren())
                while true do
                    local v181
                    v180, v181 = v178(v179, v180)
                    if v180 == nil then
                        break
                    end
                    if v181:FindFirstChild("ObjectInfo") and v181.ObjectInfo.TextLabel.Text == "Ammo" or v181:FindFirstChild("ObjectInfo") and v181.ObjectInfo.TextLabel.Text == "Gun" then
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Tool"):WaitForChild("PickUpTool"):FireServer(unpack({
                            v181
                        }))
                        game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("RemotePromise"):WaitForChild("Remotes"):WaitForChild("C_ActivateObject"):FireServer(unpack({
                            v181
                        }))
                    end
                end
            end)
            wait()
        end
    end
end)
vu6.gun:SetValue(false)
v5.Main:AddToggle("amor", {
    Title = "Auto Equip Armor (Be Near)",
    Default = false
}):OnChanged(function()
    _G.amor = vu6.amor.Value
    if _G.amor then
        while _G.amor do
            pcall(function()
                local v182, v183, v184 = pairs(workspace.RuntimeItems:GetChildren())
                while true do
                    local v185
                    v184, v185 = v182(v183, v184)
                    if v184 == nil then
                        break
                    end
                    if v185:FindFirstChild("ObjectInfo") and v185.ObjectInfo:FindFirstChild("Armor") then
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Object"):WaitForChild("EquipObject"):FireServer(unpack({
                            v185
                        }))
                    end
                end
            end)
            wait()
        end
    end
end)
vu6.amor:SetValue(false)
v5.Main:AddSection("Player")
v5.Main:AddButton({
    Title = "Remove E Holding Cooldown",
    Description = "",
    Callback = function()
        local v186, v187, v188 = pairs(workspace:GetDescendants())
        while true do
            local v189
            v188, v189 = v186(v187, v188)
            if v188 == nil then
                break
            end
            if v189:IsA("ProximityPrompt") then
                v189.HoldDuration = 0
            end
        end
    end
})
local v190 = v5.Main:AddToggle("noclip", {
    Title = "Noclip",
    Default = false
})
local vu191 = v132.LocalPlayer
local vu192 = nil
v190:OnChanged(function()
    _G.noclip = vu6.noclip.Value
    if _G.noclip then
        if not vu192 then
            vu192 = vu133.Stepped:Connect(function()
                local v193 = vu191.Character
                if v193 then
                    local v194, v195, v196 = pairs(v193:GetChildren())
                    while true do
                        local v197
                        v196, v197 = v194(v195, v196)
                        if v196 == nil then
                            break
                        end
                        if v197:IsA("BasePart") then
                            v197.CanCollide = false
                        end
                    end
                end
            end)
        end
    else
        if vu192 then
            vu192:Disconnect()
            vu192 = nil
        end
        local v198 = vu191.Character
        if v198 then
            local v199, v200, v201 = pairs(v198:GetChildren())
            while true do
                local v202
                v201, v202 = v199(v200, v201)
                if v201 == nil then
                    break
                end
                if v202:IsA("BasePart") then
                    v202.CanCollide = true
                end
            end
        end
    end
end)
vu6.noclip:SetValue(false)
local vu203 = 0
v5.Main:AddSlider("Slider2", {
    Title = "Player Health To Use Bandage",
    Description = "Automatically use bandage when player health is below require",
    Default = 50,
    Min = 1,
    Max = 100,
    Rounding = 1,
    Callback = function(p204)
        vu203 = tonumber(p204)
    end
})
v5.Main:AddToggle("healthling", {
    Title = "Auto Use Bandage",
    Default = false
}):OnChanged(function()
    _G.healthling = vu6.healthling.Value
    if _G.healthling then
        while _G.healthling do
            pcall(function()
                if vu38.Character.Humanoid.Health <= vu203 then
                    local v205 = vu38.Character
                    local v206 = vu38:FindFirstChild("Backpack")
                    local v207
                    if v205 then
                        v207 = v205:FindFirstChildOfClass("Tool")
                    else
                        v207 = v205
                    end
                    local v208
                    if v206 then
                        v208 = v206:FindFirstChild("Bandage")
                    else
                        v208 = v206
                    end
                    if v208 then
                        v208.Parent = v205
                        v208:Activate()
                        wait(0.1)
                        local v209 = v205:FindFirstChild("Bandage")
                        if v209 and v209:FindFirstChild("Use") then
                            v209.Use:FireServer(v209)
                        end
                        if v207 and v206:FindFirstChild(v207.Name) then
                            wait(0.1)
                            local v210 = v206:FindFirstChild(v207.Name)
                            v210.Parent = v205
                            v210:Activate()
                        end
                    end
                end
            end)
            wait()
        end
    end
end)
vu6.healthling:SetValue(false)
local vu211 = game.Workspace.CurrentCamera
local v212 = game.Players.LocalPlayer
local vu213 = v212.Character or v212.CharacterAdded:Wait()
local v214 = vu213
vu213.FindFirstChildOfClass(v214, "Humanoid")
local vu215 = game:GetService("RunService")
local v216 = v5.Combat:AddToggle("rward", {
    Title = "Lock Camera View On Enemy (Equip Gun)",
    Default = false
})
local vu217 = nil
v216:OnChanged(function()
    _G.rward = vu6.rward.Value
    if _G.rward then
        pcall(function()
            vu211.CameraType = Enum.CameraType.Scriptable
            if vu217 then
                vu217:Disconnect()
            end
            vu217 = vu215.RenderStepped:Connect(function()
                local v218 = vu61()
                if _G.rward and (vu46 and (vu213 and (v218 and v218:FindFirstChild("ServerWeaponState")))) then
                    if vu46.Parent and vu46.Parent:FindFirstChild("Head") then
                        local v219 = vu46.Parent.Head.Position
                        local v220 = v219 + Vector3.new(0, 2, - 3)
                        vu211.CFrame = CFrame.new(v220, v219)
                        vu211.Focus = vu46.Parent.Head.CFrame
                    end
                else
                    vu211.CameraType = Enum.CameraType.Custom
                end
            end)
        end)
    else
        if vu217 then
            vu217:Disconnect()
            vu217 = nil
        end
        vu211.CameraType = Enum.CameraType.Custom
    end
end)
vu6.rward:SetValue(false)
v5.Combat:AddToggle("lw", {
    Title = "Attack Aura (Equip Weapon)",
    Default = false
}):OnChanged(function()
    _G.lw = vu6.lw.Value
    if _G.lw then
        while _G.lw do
            pcall(function()
                local v221 = vu61()
                if vu46 and (v221 and v221:FindFirstChild("SwingEvent")) then
                    v221.SwingEvent:FireServer(vu46.Position)
                end
            end)
            wait()
        end
    end
end)
vu6.lw:SetValue(false)
v5.Combat:AddToggle("MyToggle", {
    Title = "Aimbot (Hold LeftShift)",
    Default = false
}):OnChanged(function()
    _G.AimbotEnabled = vu6.MyToggle.Value
end)
vu6.MyToggle:SetValue(false)
v5.Combat:AddSlider("Slider", {
    Title = "Aim Radius",
    Description = "Adjust aim radius",
    Default = 150,
    Min = 50,
    Max = 500,
    Rounding = 1,
    Callback = function(p222)
        vu137 = tonumber(p222)
        if vu157 then
            vu157:Remove()
        end
        vu157 = Drawing.new("Circle")
        vu157.Color = Color3.fromRGB(255, 0, 130)
        vu157.Thickness = 1
        vu157.NumSides = 64
        vu157.Radius = vu137
        vu157.Filled = false
        vu157.Visible = true
        vu157.Transparency = 1
    end
})
v5.ESP:AddToggle("deadBody", {
    Title = "ESP DeadBody (White Color)",
    Default = false
}):OnChanged(function()
    _G.deadBody = vu6.deadBody.Value
    vu130()
end)
vu6.deadBody:SetValue(false)
v5.ESP:AddToggle("items", {
    Title = "ESP Items (Yellow Color)",
    Default = false
}):OnChanged(function()
    _G.items = vu6.items.Value
    vu130()
end)
vu6.items:SetValue(false)
v5.ESP:AddToggle("enemy", {
    Title = "ESP Enemy (Red Color)",
    Default = false
}):OnChanged(function()
    _G.enemy = vu6.enemy.Value
    vu130()
end)
vu6.enemy:SetValue(false)
v5.ESP:AddToggle("bond", {
    Title = "ESP Bond (Pink Color)",
    Default = false
}):OnChanged(function()
    _G.bond = vu6.bond.Value
    vu130()
end)
vu6.bond:SetValue(false)
v5.ESP:AddToggle("building", {
    Title = "ESP Building (Grey Color)",
    Default = false
}):OnChanged(function()
    _G.building = vu6.building.Value
    vu130()
end)
vu6.building:SetValue(false)
v5.ESP:AddToggle("ore", {
    Title = "ESP Ore (Light Blue Color)",
    Default = false
}):OnChanged(function()
    _G.ore = vu6.ore.Value
    vu130()
end)
vu6.ore:SetValue(false)
v5.ESP:AddToggle("train", {
    Title = "ESP Train (Brown Color)",
    Default = false
}):OnChanged(function()
    _G.train = vu6.train.Value
    vu130()
end)
vu6.train:SetValue(false)
v5.ESP:AddToggle("allPlayers", {
    Title = "ESP Players (Blue Color)",
    Default = false
}):OnChanged(function()
    _G.allPlayers = vu6.allPlayers.Value
    vu130()
end)
vu6.allPlayers:SetValue(false)
workspace.NightEnemies.ChildAdded:Connect(function(_)
    task.wait(0.2)
    vu130()
end)
workspace.RuntimeItems.ChildAdded:Connect(function(_)
    task.wait(0.2)
    vu130()
end)
workspace.Baseplates.ChildAdded:Connect(function(_)
    task.wait(0.2)
    vu130()
end)
workspace.RandomBuildings.ChildAdded:Connect(function(_)
    task.wait(0.2)
    vu130()
end)
workspace.Ore.ChildAdded:Connect(function(_)
    task.wait(0.2)
    vu130()
end)
vu36.PlayerAdded:Connect(function()
    task.wait(0.2)
    vu130()
end)
function checkBond()
    local v223, v224, v225 = pairs(workspace.RuntimeItems:GetChildren())
    local v226 = 0
    while true do
        local v227
        v225, v227 = v223(v224, v225)
        if v225 == nil then
            break
        end
        if v227.Name == "Bond" then
            v226 = v226 + 1
        end
    end
    return v226
end
local vu228 = v5.Tracking:AddParagraph({
    Title = "Bond Spawned",
    Content = ""
})
local vu229 = v5.Tracking:AddParagraph({
    Title = "Fuel",
    Content = ""
})
local vu230 = v5.Tracking:AddParagraph({
    Title = "Train Speed",
    Content = ""
})
local vu231 = v5.Tracking:AddParagraph({
    Title = "Time",
    Content = ""
})
local vu232 = v5.Tracking:AddParagraph({
    Title = "Distance",
    Content = ""
})
vu133.Heartbeat:Connect(function()
    pcall(function()
        local v233 = checkBond()
        vu229:SetDesc(workspace.Train.Fuel.Value)
        vu231:SetDesc(workspace.Train.TrainControls.TimeDial.SurfaceGui.TextLabel.Text)
        vu232:SetDesc(workspace.Train.TrainControls.DistanceDial.SurfaceGui.TextLabel.Text)
        vu230:SetDesc(game:GetService("CoreGui").RobloxGui.VehicleHudFrame.SpeedText.Text)
        vu228:SetDesc(v233)
    end)
end)
v2:SetLibrary(v1)
v3:SetLibrary(v1)
v2:IgnoreThemeSettings()
v2:SetIgnoreIndexes({})
v3:SetFolder("FluentScriptHub")
v2:SetFolder("FluentScriptHub/specific-game")
v3:BuildInterfaceSection(v5.Settings)
v2:BuildConfigSection(v5.Settings)
v4:SelectTab(1)
v1:Notify({
    Title = "Beecon Hub",
    Content = "The script has been loaded.",
    Duration = 8
})
v2:LoadAutoloadConfig()
