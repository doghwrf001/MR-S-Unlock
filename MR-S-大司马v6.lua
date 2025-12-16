-- CN
--大司马v6全￼源 开源
--破解人：MR
--缝合/改名.....等 请备注/说明来源
--￼看到 \数字,想看清楚写的啥就要￼解码,丢给AI就行￼￼￼￼￼￼￼￼￼


-- EN
-- Da Sima v6 Full Source Open Source
-- Cracker: MR
-- If you modify/rename/stitch, please credit/ mention the source
-- If you see number, decoding is required to read the content clearly-just feed it to Al.


local v1 = Instance.new("ScreenGui", getParent)
local v2 = Instance.new("TextLabel", getParent)
local _ = game.Players.LocalPlayer
v1.Name = "LBLG"
v1.Parent = game.CoreGui
v1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
v1.Enabled = true
v2.Name = "LBL"
v2.Parent = v1
v2.BackgroundColor3 = Color3.new(1, 1, 1)
v2.BackgroundTransparency = 1
v2.BorderColor3 = Color3.new(0, 0, 0)
v2.Position = UDim2.new(0.75, 0, 0.01, 0)
v2.Size = UDim2.new(0, 133, 0, 30)
v2.Font = Enum.Font.GothamSemibold
v2.Text = "TextLabel"
v2.TextColor3 = Color3.new(1, 1, 1)
v2.TextScaled = true
v2.TextSize = 14
v2.TextWrapped = true
v2.Visible = true
local vu3 = v2
local v4 = game:GetService("RunService").Heartbeat
local vu5 = nil
local vu6 = nil
local vu7 = {}
local function v10()
    vu5 = tick()
    for v8 = # vu7, 1, - 1 do
        vu7[v8 + 1] = vu7[v8] >= vu5 - 1 and vu7[v8] or nil
    end
    vu7[1] = vu5
    local v9 = tick() - vu6 >= 1 and # vu7 or # vu7 / (tick() - vu6)
    local _ = v9 - v9 % 1
    vu3.Text = "\229\164\167\229\143\184\233\169\172\230\151\182\233\151\180:" .. os.date("%H") .. "\230\151\182" .. os.date("%M") .. "\229\136\134" .. os.date("%S")
end
vu6 = tick()
v4:Connect(v10)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "\229\164\167\229\143\184\233\169\172\232\132\154\230\156\172\228\184\173\229\191\131V6",
    Text = "\229\144\175\229\138\168\228\184\173",
    Duration = 2
})
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "\230\173\163\229\156\168\229\138\160\232\189\189",
    Text = "\229\144\175\229\138\168\229\174\140\230\175\149",
    Duration = 4
})
local v11 = loadstring(game:HttpGet("https://raw.githubusercontent.com/whenheer/iuop/refs/heads/main/Protected_7843953596944453.lua"))():new("\229\164\167\229\143\184\233\169\172\232\132\154\230\156\172\228\184\173\229\191\131V6")
local v12 = v11:Tab("\227\128\142\228\191\161\230\129\175\227\128\143", "7734068321")
local v13 = v12:section("\227\128\142\228\189\156\232\128\133\228\191\161\230\129\175\227\128\143", false)
v13:Label("\229\164\167\229\143\184\233\169\172\232\132\154\230\156\172\228\184\173\229\191\131V6")
v13:Label("\228\189\156\232\128\133\239\188\154\229\164\167\229\143\184\233\169\172")
v13:Label("qq\228\184\187\231\190\164794818500 \228\186\140\231\190\1641006551752")
v13:Label("\229\184\136\229\130\133\233\157\147\229\157\164\239\188\140\229\176\143\233\185\164")
v13:Label("\228\184\141\232\183\159\230\150\176\231\154\132\229\142\159\229\155\160\230\152\175\230\136\1453.11\229\143\183\232\162\171\233\128\129\229\142\187\230\136\146\231\189\145\231\152\190\229\173\166\230\160\161")
v13:Label("\230\172\162\232\191\142\228\189\191\231\148\168")
v13:Label("\229\164\167\229\143\184\233\169\172\230\176\184\232\191\156\231\136\177\228\189\160\228\187\172\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189")
v12:section("\227\128\142\231\142\169\229\174\182\228\191\161\230\129\175\227\128\143", false):Label("\228\189\160\231\142\176\229\156\168\231\154\132\230\156\141\229\138\161\229\153\168id:" .. game.GameId)
local v14 = v11:Tab("\227\128\142\229\133\172\229\145\138\227\128\143", "7734068321"):section("\227\128\142\229\133\172\229\145\138\227\128\143", true)
v14:Label("\230\132\159\232\176\162\230\148\175\230\140\129\229\164\167\229\143\184\233\169\172\232\132\154\230\156\172\228\184\173\229\191\131\231\154\132\228\186\186")
v14:Label("\229\183\178\228\191\174\229\164\141bug")
local v15 = v11:Tab("\227\128\142\233\128\154\231\148\168\227\128\143", "7734068321"):section("\227\128\142\233\128\154\231\148\168\227\128\143", true)
v15:Button("\231\142\169\229\174\182\229\138\160\229\133\165\230\184\184\230\136\143\230\143\144\231\164\186", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
end)
v15:Button("\232\142\183\229\190\151\231\174\161\231\144\134\229\145\152\230\157\131\233\153\144", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/sZpgTVas"))()
end)
v15:Button("\230\173\187\228\186\161\231\172\148\232\174\176", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0%20(1).txt"))()
end)
v15:Button("\230\177\137\229\140\150\231\169\191\229\162\153", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TtmScripter/OtherScript/main/Noclip"))()
end)
v15:Button("\233\163\158\232\161\140", function()
    loadstring(game:HttpGet("https://pastefy.app/J9x7RnEZ/raw"))()
end)
v15:Button("\233\128\143\232\167\134", function()
    _G.FriendColor = Color3.fromRGB(0, 0, 255)
    local v16, v17, v18 = pairs(game.Players:GetPlayers())
    local function vu20(p19)
        if p19.Character and p19.Character:FindFirstChildOfClass("Humanoid") then
            p19.Character.Humanoid.NameDisplayDistance = 9000000000
            p19.Character.Humanoid.NameOcclusion = "NoOcclusion"
            p19.Character.Humanoid.HealthDisplayDistance = 9000000000
            p19.Character.Humanoid.HealthDisplayType = "AlwaysOn"
            p19.Character.Humanoid.Health = p19.Character.Humanoid.Health
        end
    end
    while true do
        local vu21
        v18, vu21 = v16(v17, v18)
        if v18 == nil then
            break
        end
        vu20(vu21)
        vu21.CharacterAdded:Connect(function()
            task.wait(0.33)
            vu20(vu21)
        end)
    end
    game.Players.PlayerAdded:Connect(function(pu22)
        vu20(pu22)
        pu22.CharacterAdded:Connect(function()
            task.wait(0.33)
            vu20(pu22)
        end)
    end)
    local vu23 = game:GetService("Players"):GetChildren()
    local v24 = game:GetService("RunService")
    local vu25 = Instance.new("Highlight")
    vu25.Name = "Highlight"
    local v26, v27, v28 = pairs(vu23)
    while true do
        local v29
        v28, v29 = v26(v27, v28)
        if v28 == nil then
            break
        end
        repeat
            wait()
        until v29.Character
        if not v29.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local v30 = vu25:Clone()
            v30.Adornee = v29.Character
            v30.Parent = v29.Character:FindFirstChild("HumanoidRootPart")
            v30.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            v30.Name = "Highlight"
        end
    end
    game.Players.PlayerAdded:Connect(function(p31)
        repeat
            wait()
        until p31.Character
        if not p31.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local v32 = vu25:Clone()
            v32.Adornee = p31.Character
            v32.Parent = p31.Character:FindFirstChild("HumanoidRootPart")
            v32.Name = "Highlight"
        end
    end)
    game.Players.PlayerRemoving:Connect(function(p33)
        p33.Character:FindFirstChild("HumanoidRootPart").Highlight:Destroy()
    end)
    v24.Heartbeat:Connect(function()
        local v34, v35, v36 = pairs(vu23)
        while true do
            local v37
            v36, v37 = v34(v35, v36)
            if v36 == nil then
                break
            end
            repeat
                wait()
            until v37.Character
            if not v37.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
                local v38 = vu25:Clone()
                v38.Adornee = v37.Character
                v38.Parent = v37.Character:FindFirstChild("HumanoidRootPart")
                v38.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                v38.Name = "Highlight"
                task.wait()
            end
        end
    end)
end)
v15:Button("\229\164\156\232\167\134", "Toggle", false, function(p39)
    if p39 then
        game.Lighting.Ambient = Color3.new(1, 1, 1)
    else
        game.Lighting.Ambient = Color3.new(0, 0, 0)
    end
end)
v15:Button("\232\135\170\229\138\168\228\186\146\229\138\168", "Auto Interact", false, function(p40)
    if p40 then
        autoInteract = true
        while autoInteract do
            local v41, v42, v43 = pairs(workspace:GetDescendants())
            while true do
                local v44
                v43, v44 = v41(v42, v43)
                if v43 == nil then
                    break
                end
                if v44:IsA("ProximityPrompt") then
                    fireproximityprompt(v44)
                end
            end
            task.wait(0.25)
        end
    else
        autoInteract = false
    end
end)
v15:Button("\230\151\160\233\153\144\232\183\179", "Toggle", false, function(p45)
    Jump = p45
    game.UserInputService.JumpRequest:Connect(function()
        if Jump then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
        end
    end)
end)
v15:Button("\230\173\165\232\161\140\233\128\159\229\186\166", "WalkSpeed", game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 16, 400, false, function(pu46)
    spawn(function()
        while task.wait() do
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = pu46
        end
    end)
end)
v15:Button("\232\183\179\232\183\131\233\171\152\229\186\166", "JumpPower", game.Players.LocalPlayer.Character.Humanoid.JumpPower, 50, 400, false, function(pu47)
    spawn(function()
        while task.wait() do
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = pu47
        end
    end)
end)
v15:Button("\231\148\169\228\186\186", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
end)
v15:Button("\232\174\190\231\189\174\233\135\141\229\138\155", "Sliderflag", 196.2, 196.2, 1000, false, function(p48)
    game.Workspace.Gravity = p48
end)
v15:Button("\230\155\191\232\186\171", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SkrillexMe/SkrillexLoader/main/SkrillexLoadMain"))()
end)
v15:Button("\231\136\172\229\162\153", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)
v15:Button("iw\230\140\135\228\187\164", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)
v15:Button("\230\131\133\228\186\145\229\144\140\230\172\190\232\135\170\231\158\132\229\143\175\232\176\131", function()
    local vu49 = 100
    local vu50 = 10
    local vu51 = 5
    local vu52 = game:GetService("RunService")
    local v53 = game:GetService("UserInputService")
    local vu54 = game:GetService("Players")
    local vu55 = game.Workspace.CurrentCamera
    local vu56 = Drawing.new("Circle")
    vu56.Visible = true
    vu56.Thickness = 2
    vu56.Color = Color3.fromRGB(0, 255, 0)
    vu56.Filled = false
    vu56.Radius = vu49
    vu56.Position = vu55.ViewportSize / 2
    local v57 = vu54.LocalPlayer:WaitForChild("PlayerGui")
    local v58 = Instance.new("ScreenGui")
    v58.Name = "FovAdjustGui"
    v58.Parent = v57
    local vu59 = Instance.new("Frame")
    vu59.Name = "MainFrame"
    vu59.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    vu59.BorderColor3 = Color3.fromRGB(128, 0, 128)
    vu59.BorderSizePixel = 2
    vu59.Position = UDim2.new(0.3, 0, 0.3, 0)
    vu59.Size = UDim2.new(0.4, 0, 0.4, 0)
    vu59.Active = true
    vu59.Draggable = true
    vu59.Parent = v58
    local vu60 = Instance.new("TextButton")
    vu60.Name = "MinimizeButton"
    vu60.Text = "-"
    vu60.TextColor3 = Color3.fromRGB(255, 255, 255)
    vu60.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    vu60.Position = UDim2.new(0.9, 0, 0, 0)
    vu60.Size = UDim2.new(0.1, 0, 0.1, 0)
    vu60.Parent = vu59
    local vu61 = false
    vu60.MouseButton1Click:Connect(function()
        vu61 = not vu61
        if vu61 then
            vu59:TweenSize(UDim2.new(0.1, 0, 0.1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true)
            vu60.Text = "+"
        else
            vu59:TweenSize(UDim2.new(0.4, 0, 0.4, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true)
            vu60.Text = "-"
        end
    end)
    local v62 = Instance.new("TextLabel")
    v62.Name = "FovLabel"
    v62.Text = "\232\135\170\231\158\132\232\140\131\229\155\180"
    v62.TextColor3 = Color3.fromRGB(255, 255, 255)
    v62.BackgroundTransparency = 1
    v62.Position = UDim2.new(0.1, 0, 0.1, 0)
    v62.Size = UDim2.new(0.8, 0, 0.2, 0)
    v62.Parent = vu59
    local vu63 = Instance.new("TextBox")
    vu63.Name = "FovSlider"
    vu63.Text = tostring(vu49)
    vu63.TextColor3 = Color3.fromRGB(255, 255, 255)
    vu63.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    vu63.Position = UDim2.new(0.1, 0, 0.3, 0)
    vu63.Size = UDim2.new(0.8, 0, 0.2, 0)
    vu63.Parent = vu59
    local v64 = Instance.new("TextLabel")
    v64.Name = "SmoothnessLabel"
    v64.Text = "\232\135\170\231\158\132\229\185\179\230\187\145\229\186\166"
    v64.TextColor3 = Color3.fromRGB(255, 255, 255)
    v64.BackgroundTransparency = 1
    v64.Position = UDim2.new(0.1, 0, 0.5, 0)
    v64.Size = UDim2.new(0.8, 0, 0.2, 0)
    v64.Parent = vu59
    local vu65 = Instance.new("TextBox")
    vu65.Name = "SmoothnessSlider"
    vu65.Text = tostring(vu50)
    vu65.TextColor3 = Color3.fromRGB(255, 255, 255)
    vu65.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    vu65.Position = UDim2.new(0.1, 0, 0.7, 0)
    vu65.Size = UDim2.new(0.8, 0, 0.2, 0)
    vu65.Parent = vu59
    local v66 = Instance.new("TextLabel")
    v66.Name = "CrosshairDistanceLabel"
    v66.Text = "\232\135\170\231\158\132\233\162\132\229\136\164\232\183\157\231\166\187"
    v66.TextColor3 = Color3.fromRGB(255, 255, 255)
    v66.BackgroundTransparency = 1
    v66.Position = UDim2.new(0.1, 0, 0.9, 0)
    v66.Size = UDim2.new(0.8, 0, 0.2, 0)
    v66.Parent = vu59
    local vu67 = Instance.new("TextBox")
    vu67.Name = "CrosshairDistanceSlider"
    vu67.Text = tostring(vu51)
    vu67.TextColor3 = Color3.fromRGB(255, 255, 255)
    vu67.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    vu67.Position = UDim2.new(0.1, 0, 1.1, 0)
    vu67.Size = UDim2.new(0.8, 0, 0.2, 0)
    vu67.Parent = vu59
    local vu68 = vu55.CFrame
    local function vu69()
        vu56.Position = vu55.ViewportSize / 2
        vu56.Radius = vu49
    end
    local function v71(p70)
        if p70.KeyCode == Enum.KeyCode.Delete then
            vu52:UnbindFromRenderStep("FOVUpdate")
            vu56:Remove()
        end
    end
    v53.InputBegan:Connect(v71)
    local function vu85(p72)
        local v73 = math.huge
        local v74 = vu55.ViewportSize / 2
        local v75 = vu54
        local v76, v77, v78 = ipairs(v75:GetPlayers())
        local v79 = nil
        while true do
            local v80
            v78, v80 = v76(v77, v78)
            if v78 == nil then
                break
            end
            if v80 ~= vu54.LocalPlayer then
                local v81 = v80.Character
                if v81 then
                    v81 = v80.Character:FindFirstChild(p72)
                end
                if v81 then
                    local v82, v83 = vu55:WorldToViewportPoint(v81.Position)
                    local v84 = (Vector2.new(v82.x, v82.y) - v74).Magnitude
                    if v84 < v73 and v83 then
                        if v84 < vu49 then
                            v79 = v80
                            v73 = v84
                        end
                    end
                end
            end
        end
        return v79
    end
    vu52.RenderStepped:Connect(function()
        vu69()
        local v86 = vu85("Head")
        if v86 and v86.Character:FindFirstChild("Head") then
            local v87 = v86.Character
            local v88 = v87.Head
            local v89
            if v87:FindFirstChild("HumanoidRootPart").Velocity.Magnitude > 0.1 then
                v89 = v88.Position + v88.CFrame.LookVector * vu51
            else
                v89 = v88.Position
            end
            vu68 = CFrame.new(vu55.CFrame.Position, v89)
        else
            vu68 = vu55.CFrame
        end
        vu55.CFrame = vu55.CFrame:Lerp(vu68, 1 / vu50)
    end)
    vu63.FocusLost:Connect(function(p90, _)
        if p90 then
            local v91 = tonumber(vu63.Text)
            if v91 then
                vu49 = v91
            else
                vu63.Text = tostring(vu49)
            end
        end
    end)
    vu65.FocusLost:Connect(function(p92, _)
        if p92 then
            local v93 = tonumber(vu65.Text)
            if v93 then
                vu50 = v93
            else
                vu65.Text = tostring(vu50)
            end
        end
    end)
    vu67.FocusLost:Connect(function(p94, _)
        if p94 then
            local v95 = tonumber(vu67.Text)
            if v95 then
                vu51 = v95
            else
                vu67.Text = tostring(vu51)
            end
        end
    end)
end)
v15:Button("\230\177\137\229\140\150\233\152\191\229\176\148\229\174\153\230\150\175\232\135\170\231\158\132", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/sgbs/main/%E4%B8%81%E4%B8%81%20%E6%B1%89%E5%8C%96%E8%87%AA%E7%9E%84.txt"))()
end)
v15:Button("\229\183\165\229\133\183\230\140\130", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/StandAwekening.lua"))()
end)
v15:Button("\231\148\169\233\163\158", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/hknvh/main/%E7%94%A9%E9%A3%9E.txt"))()
end)
v15:Button("\233\147\129\230\139\179", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt"))()
end)
v15:Button("ESP \230\152\190\231\164\186\229\144\141\229\173\151", "AMG", ENABLED, function(p96)
    if p96 then
        ENABLED = true
        local v97, v98, v99 = ipairs(Players:GetPlayers())
        while true do
            local v100
            v99, v100 = v97(v98, v99)
            if v99 == nil then
                break
            end
            onPlayerAdded(v100)
        end
        Players.PlayerAdded:Connect(onPlayerAdded)
        Players.PlayerRemoving:Connect(onPlayerRemoving)
        local v101 = Players.LocalPlayer
        if v101 and v101.Character then
            local v102, v103, v104 = ipairs(Players:GetPlayers())
            while true do
                local v105
                v104, v105 = v102(v103, v104)
                if v104 == nil then
                    break
                end
                if v105.Character then
                    createNameLabel(v105)
                end
            end
        end
        RunService.Heartbeat:Connect(function()
            if ENABLED then
                local v106, v107, v108 = ipairs(Players:GetPlayers())
                while true do
                    local v109
                    v108, v109 = v106(v107, v108)
                    if v108 == nil then
                        break
                    end
                    if v109.Character then
                        createNameLabel(v109)
                    end
                end
            end
        end)
    else
        ENABLED = false
        local v110, v111, v112 = ipairs(Players:GetPlayers())
        while true do
            local v113
            v112, v113 = v110(v111, v112)
            if v112 == nil then
                break
            end
            onPlayerRemoving(v113)
        end
        RunService:UnbindFromRenderStep("move")
    end
end)
v15:Button("Circle ESP", "ESP", false, function(p114)
    local v115, v116, v117 = pairs(game.Players:GetPlayers())
    while true do
        local v118
        v117, v118 = v115(v116, v117)
        if v117 == nil then
            break
        end
        if v118 ~= game.Players.LocalPlayer then
            if p114 then
                local v119 = Instance.new("Highlight")
                v119.Parent = v118.Character
                v119.Adornee = v118.Character
                local v120 = Instance.new("BillboardGui")
                v120.Parent = v118.Character
                v120.Adornee = v118.Character
                v120.Size = UDim2.new(0, 100, 0, 100)
                v120.StudsOffset = Vector3.new(0, 3, 0)
                v120.AlwaysOnTop = true
                local v121 = Instance.new("TextLabel")
                v121.Parent = v120
                v121.Size = UDim2.new(1, 0, 1, 0)
                v121.BackgroundTransparency = 1
                v121.Text = v118.Name
                v121.TextColor3 = Color3.new(1, 1, 1)
                v121.TextStrokeTransparency = 0.5
                v121.TextScaled = true
                local v122 = Instance.new("ImageLabel")
                v122.Parent = v120
                v122.Size = UDim2.new(0, 50, 0, 50)
                v122.Position = UDim2.new(0.5, 0, 0.5, 0)
                v122.AnchorPoint = Vector2.new(0.5, 0.5)
                v122.BackgroundTransparency = 1
                v122.Image = "rbxassetid://108228172425291"
            else
                if v118.Character:FindFirstChildOfClass("Highlight") then
                    v118.Character:FindFirstChildOfClass("Highlight"):Destroy()
                end
                if v118.Character:FindFirstChildOfClass("BillboardGui") then
                    v118.Character:FindFirstChildOfClass("BillboardGui"):Destroy()
                end
            end
        end
    end
end)
v15:Button("\233\128\143\232\167\1341", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/MA8jhPWT"))()
end)
v15:Button("\233\128\143\232\167\1342", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP"))()
end)
v15:Button("\230\151\160\230\149\140\227\128\142\228\184\141\233\128\130\231\148\168\227\128\143", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/H3RLCWWZ"))()
end)
v15:Button("\233\154\144\232\186\171\239\188\136E\239\188\137", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/nwGEvkez"))()
end)
v15:Button("\231\148\181\232\132\145\233\148\174\231\155\152", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)
v15:Button("\233\163\158\232\189\166", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/G3GnBCyC", true))()
end)
v15:Button("\232\184\143\231\169\186\232\161\140\232\181\176", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float"))()
end)
v15:Button("\233\163\158\232\189\1662", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/vb/main/%E9%A3%9E%E8%BD%A6.lua"))()
end)
v15:Button("\230\151\139\232\189\172", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%97%8B%E8%BD%AC.lua"))()
end)
v15:Button("\231\180\171\232\142\142", function()
    local v123 = game.Players.LocalPlayer.Character
    if v123 and v123:FindFirstChild("Humanoid") then
        v123.Humanoid.Health = 0
    end
end)
v15:Button("\233\163\158\230\170\144\232\181\176\229\163\129", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)
v15:Button("\229\164\156\232\167\134\228\187\170", function()
    _G.OnShop = trueloadstring(game:HttpGet("https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua"))()
end)
v15:Button("\230\173\163\229\184\184\232\140\131\229\155\180", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/jiNwDbCN"))()
end)
v15:Button("\228\184\173\231\173\137\232\140\131\229\155\180", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/x13bwrFb"))()
end)
v15:Button("\233\171\152\231\186\167\232\140\131\229\155\180", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/KKY9EpZU"))()
end)
v15:Button("\229\143\141\230\140\130\230\156\186", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
end)
v15:Button("\230\151\160\233\153\144\232\183\179", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
end)
local v124 = v11:Tab("\227\128\142FE\227\128\143", "7734068321"):section("\227\128\142FE\227\128\143", true)
v124:Button("FE C00lgui", function()
    loadstring(game:GetObjects("rbxassetid://97896659024899")[1].Source)()
end)
v124:Button("FE 1x1x1x1", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/JipYNCht", true))()
end)
v124:Button("FE\229\164\167\233\149\191\232\133\191", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/1BlueCat/7291747e9f093555573e027621f08d6e/raw/23b48f2463942befe19d81aa8a06e3222996242c/FE%2520Da%2520Feets"))()
end)
v124:Button("FE\231\148\168\229\164\180", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/BK4Q0DfU"))()
end)
v124:Button("\229\164\141\228\187\135\232\128\133", function()
    loadstring(game:HttpGet("https://pastefy.ga/iGyVaTvs/raw", true))()
end)
v124:Button("\233\188\160\230\160\135", function()
    loadstring(game:HttpGet("https://pastefy.ga/V75mqzaz/raw", true))()
end)
v124:Button("\229\143\152\230\128\170\231\137\169", function()
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/jfryBKds"))()
end)
v124:Button("\233\166\153\232\149\137\230\158\170", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua"))()
end)
v124:Button("\232\182\133\233\149\191\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\229\183\180", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/ESWSFND7", true))()
end)
v124:Button("\230\147\141\228\186\186", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/AHAJAJAKAK/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A.LUA", true))()
end)
v124:Button("FE\229\138\168\231\148\187\228\184\173\229\191\131", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui", true))()
end)
v124:Button("FE\229\143\152\231\142\169\229\174\182", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/XR4sGcgJ"))()
end)
v124:Button("FE\231\140\171\229\168\152R63", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
end)
v124:Button("FE", function()
    loadstring(game:HttpGet("https://pastefy.ga/a7RTi4un/raw"))()
end)
local v125 = v11:Tab("\227\128\142\229\138\155\233\135\143\228\188\160\229\165\135\227\128\143", "7734068321"):section("\227\128\142\229\138\155\233\135\143\228\188\160\229\165\135\227\128\143", true)
v125:Button("\232\135\170\229\138\168\230\175\148\232\181\155\229\188\128\229\133\179", "AR", false, function(p126)
    while p126 do
        wait()
        wait(2)
        game:GetService("ReplicatedStorage").rEvents.brawlEvent:FireServer("joinBrawl")
    end
end)
v125:Button("\232\135\170\229\138\168\228\184\190\229\147\145\233\147\131", "ATYL", false, function(p127)
    local v128 = Instance.new("Part", workspace)
    v128.Size = Vector3.new(500, 20, 530.1)
    v128.Position = Vector3.new(0, 100000, 133.15)
    v128.CanCollide = true
    v128.Anchored = true
    local _ = game:GetService("RunService").RenderStepped
    while p127 do
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v128.CFrame + Vector3.new(0, 50, 0)
        local v129, v130, v131 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
        while true do
            local v132
            v131, v132 = v129(v130, v131)
            if v131 == nil then
                break
            end
            if v132.ClassName == "Tool" and v132.Name == "Weight" then
                v132.Parent = game.Players.LocalPlayer.Character
            end
        end
        game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
    end
end)
v125:Button("\232\135\170\229\138\168\228\191\175\229\141\167\230\146\145", "ATFWC", false, function(p133)
    local v134 = Instance.new("Part", workspace)
    v134.Size = Vector3.new(500, 20, 530.1)
    v134.Position = Vector3.new(0, 100000, 133.15)
    v134.CanCollide = true
    v134.Anchored = true
    local _ = game:GetService("RunService").RenderStepped
    while p133 do
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v134.CFrame + Vector3.new(0, 50, 0)
        local v135, v136, v137 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
        while true do
            local v138
            v137, v138 = v135(v136, v137)
            if v137 == nil then
                break
            end
            if v138.ClassName == "Tool" and v138.Name == "Pushups" then
                v138.Parent = game.Players.LocalPlayer.Character
            end
        end
        game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
    end
end)
v125:Button("\232\135\170\229\138\168\228\187\176\229\141\167\232\181\183\229\157\144", "ATYWQZ", false, function(p139)
    local v140 = Instance.new("Part", workspace)
    v140.Size = Vector3.new(500, 20, 530.1)
    v140.Position = Vector3.new(0, 100000, 133.15)
    v140.CanCollide = true
    v140.Anchored = true
    local _ = game:GetService("RunService").RenderStepped
    while p139 do
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v140.CFrame + Vector3.new(0, 50, 0)
        local v141, v142, v143 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
        while true do
            local v144
            v143, v144 = v141(v142, v143)
            if v143 == nil then
                break
            end
            if v144.ClassName == "Tool" and v144.Name == "Situps" then
                v144.Parent = game.Players.LocalPlayer.Character
            end
        end
    end
    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
end)
v125:Button("\232\135\170\229\138\168\229\128\146\231\171\139\232\186\171\228\189\147", "ATDL", false, function(p145)
    local v146 = Instance.new("Part", workspace)
    v146.Size = Vector3.new(500, 20, 530.1)
    v146.Position = Vector3.new(0, 100000, 133.15)
    v146.CanCollide = true
    v146.Anchored = true
    local _ = game:GetService("RunService").RenderStepped
    while p145 do
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v146.CFrame + Vector3.new(0, 50, 0)
        local v147, v148, v149 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
        while true do
            local v150
            v149, v150 = v147(v148, v149)
            if v149 == nil then
                break
            end
            if v150.ClassName == "Tool" and v150.Name == "Handstands" then
                v150.Parent = game.Players.LocalPlayer.Character
            end
        end
    end
    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
end)
v125:Button("\232\135\170\229\138\168\233\148\187\231\130\188", "ATAAA", false, function(p151)
    local v152 = Instance.new("Part", workspace)
    v152.Size = Vector3.new(500, 20, 530.1)
    v152.Position = Vector3.new(0, 100000, 133.15)
    v152.CanCollide = true
    v152.Anchored = true
    while p151 do
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v152.CFrame + Vector3.new(0, 50, 0)
        local v153, v154, v155 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
        while true do
            local v156
            v155, v156 = v153(v154, v155)
            if v155 == nil then
                break
            end
            if v156.ClassName == "Tool" and v156.Name == "Handstands" or (v156.Name == "Situps" or (v156.Name == "Pushups" or v156.Name == "Weight")) then
                v156:FindFirstChildOfClass("NumberValue").Value = 0
                repeat
                    wait()
                until game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
                game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v156)
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
            end
        end
    end
end)
v125:Button("\232\135\170\229\138\168\233\135\141\231\148\159", "ATRE", false, function(p157)
    while p157 do
        wait()
        game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
    end
end)
v125:Button("\230\148\182\233\155\134\229\174\157\231\159\179", function()
    jk = {}
    local v158, v159, v160 = pairs(game:GetService("ReplicatedStorage").chestRewards:GetDescendants())
    while true do
        local v161
        v160, v161 = v158(v159, v160)
        if v160 == nil then
            break
        end
        if v161.Name ~= "Light Karma Chest" or v161.Name ~= "Evil Karma Chest" then
            table.insert(jk, v161.Name)
        end
    end
    for v162 = 1, # jk do
        wait(2)
        game:GetService("ReplicatedStorage").rEvents.checkChestRemote:InvokeServer(jk[v162])
    end
end)
v125:Button("\230\178\153\230\187\169\232\183\145\230\173\165\230\156\18610", "PPJ10", false, function(p163)
    getgenv().PPJ10 = p163
    while getgenv().PPJ10 do
        wait()
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(238.671112, 5.40315914, 387.713165, - 0.0160072874, - 2.90710176e-8, - 0.99987185, - 3.3434191e-9, 1, - 2.90212157e-8, 0.99987185, 2.87843993e-9, - 0.0160072874)
        local _ = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
        local v164 = game:GetService("RunService")
        local vu165 = game:GetService("Players").LocalPlayer
        v164:BindToRenderStep("move", Enum.RenderPriority.Character.Value + 1, function()
            local v166 = vu165.Character and vu165.Character:WaitForChild("Humanoid")
            if v166 then
                v166:Move(Vector3.new(10000, 0, - 1), true)
            end
        end)
    end
    if not getgenv().PPJ10 then
        local v167 = game:GetService("RunService")
        local vu168 = game:GetService("Players").LocalPlayer
        v167:UnbindFromRenderStep("move", Enum.RenderPriority.Character.Value + 1, function()
            local v169 = vu168.Character and vu168.Character:FindFirstChild("Humanoid")
            if v169 then
                v169:Move(Vector3.new(10000, 0, - 1), true)
            end
        end)
    end
end)
v125:Button("\229\129\165\232\186\171\230\136\191\232\183\145\230\173\165\230\156\1862000", "PPJ2000", false, function(p170)
    if game.Players.LocalPlayer.Agility.Value >= 2000 then
        getgenv().PPJ2000 = p170
        while getgenv().PPJ2000 do
            wait()
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(- 3005.37866, 14.3221855, - 464.697876, - 0.015773816, - 1.38508964e-8, 0.999875605, - 5.13225586e-8, 1, 1.30429667e-8, - 0.999875605, - 5.11104332e-8, - 0.015773816)
            local _ = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
            local v171 = game:GetService("RunService")
            local vu172 = game:GetService("Players").LocalPlayer
            v171:BindToRenderStep("move", Enum.RenderPriority.Character.Value + 1, function()
                local v173 = vu172.Character and vu172.Character:WaitForChild("Humanoid")
                if v173 then
                    v173:Move(Vector3.new(10000, 0, - 1), true)
                end
            end)
        end
    end
    if not getgenv().PPJ2000 then
        local v174 = game:GetService("RunService")
        local vu175 = game:GetService("Players").LocalPlayer
        v174:UnbindFromRenderStep("move", Enum.RenderPriority.Character.Value + 1, function()
            local v176 = vu175.Character and vu175.Character:FindFirstChild("Humanoid")
            if v176 then
                v176:Move(Vector3.new(10000, 0, - 1), true)
            end
        end)
    end
end)
v125:Button("\231\165\158\232\175\157\229\129\165\232\186\171\230\136\191\232\183\145\230\173\165\230\156\1862000", "SHPPJ2000", false, function(p177)
    if game.Players.LocalPlayer.Agility.Value >= 2000 then
        getgenv().SHPPJ2000 = p177
        while getgenv().SHPPJ2000 do
            wait()
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2571.23706, 15.6896839, 898.650391, 0.999968231, 2.23868635e-9, - 0.00797206629, - 1.73198844e-9, 1, 6.35660768e-8, 0.00797206629, - 6.3550246e-8, 0.999968231)
            local _ = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
            local v178 = game:GetService("RunService")
            local vu179 = game:GetService("Players").LocalPlayer
            v178:BindToRenderStep("move", Enum.RenderPriority.Character.Value + 1, function()
                local v180 = vu179.Character and vu179.Character:WaitForChild("Humanoid")
                if v180 then
                    v180:Move(Vector3.new(10000, 0, - 1), true)
                end
            end)
        end
    end
    if not getgenv().SHPPJ2000 then
        local v181 = game:GetService("RunService")
        local vu182 = game:GetService("Players").LocalPlayer
        v181:UnbindFromRenderStep("move", Enum.RenderPriority.Character.Value + 1, function()
            local v183 = vu182.Character and vu182.Character:FindFirstChild("Humanoid")
            if v183 then
                v183:Move(Vector3.new(10000, 0, - 1), true)
            end
        end)
    end
end)
v125:Button("\230\176\184\230\129\146\229\129\165\232\186\171\230\136\191\232\183\145\230\173\165\230\156\1863500", "YHPPJ3500", false, function(p184)
    if game.Players.LocalPlayer.Agility.Value >= 3500 then
        getgenv().YHPPJ3500 = p184
        while getgenv().YHPPJ3500 do
            wait()
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(- 7077.79102, 29.6702118, - 1457.59961, - 0.0322036594, - 3.31122768e-10, 0.99948132, - 6.44344267e-9, 1, 1.23684493e-10, - 0.99948132, - 6.43611742e-9, - 0.0322036594)
            local _ = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
            local v185 = game:GetService("RunService")
            local vu186 = game:GetService("Players").LocalPlayer
            v185:BindToRenderStep("move", Enum.RenderPriority.Character.Value + 1, function()
                local v187 = vu186.Character and vu186.Character:WaitForChild("Humanoid")
                if v187 then
                    v187:Move(Vector3.new(10000, 0, - 1), true)
                end
            end)
        end
    end
    if not getgenv().YHPPJ3500 then
        local v188 = game:GetService("RunService")
        local vu189 = game:GetService("Players").LocalPlayer
        v188:UnbindFromRenderStep("move", Enum.RenderPriority.Character.Value + 1, function()
            local v190 = vu189.Character and vu189.Character:FindFirstChild("Humanoid")
            if v190 then
                v190:Move(Vector3.new(10000, 0, - 1), true)
            end
        end)
    end
end)
v125:Button("\228\188\160\229\165\135\229\129\165\232\186\171\230\136\191\232\183\145\230\173\165\230\156\1863000", "CQPPJ3000", false, function(p191)
    if game.Players.LocalPlayer.Agility.Value >= 3000 then
        getgenv().CQPPJ3000 = p191
        while getgenv().CQPPJ3000 do
            wait()
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4370.82812, 999.358704, - 3621.42773, - 0.960604727, - 8.41949266e-9, - 0.27791819, - 6.12478646e-9, 1, - 9.12496567e-9, 0.27791819, - 7.06329528e-9, - 0.960604727)
            local _ = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
            local v192 = game:GetService("RunService")
            local vu193 = game:GetService("Players").LocalPlayer
            v192:BindToRenderStep("move", Enum.RenderPriority.Character.Value + 1, function()
                local v194 = vu193.Character and vu193.Character:WaitForChild("Humanoid")
                if v194 then
                    v194:Move(Vector3.new(10000, 0, - 1), true)
                end
            end)
        end
    end
    if not getgenv().CQPPJ3000 then
        local v195 = game:GetService("RunService")
        local vu196 = game:GetService("Players").LocalPlayer
        v195:UnbindFromRenderStep("move", Enum.RenderPriority.Character.Value + 1, function()
            local v197 = vu196.Character and vu196.Character:FindFirstChild("Humanoid")
            if v197 then
                v197:Move(Vector3.new(10000, 0, - 1), true)
            end
        end)
    end
end)
v125:Button("\231\159\179\229\164\1800", "RK0", false, function(p198)
    getgenv().RK0 = p198
    while getgenv().RK0 do
        wait()
        local v199, v200, v201 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
        while true do
            local v202
            v201, v202 = v199(v200, v201)
            if v201 == nil then
                break
            end
            if v202:IsA("Tool") and v202.Name == "Punch" then
                game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v202)
            end
        end
        local v203, v204, v205 = pairs(game.Players.LocalPlayer.Character:GetChildren())
        while true do
            local v206
            v205, v206 = v203(v204, v205)
            if v205 == nil then
                break
            end
            if v206:IsA("Tool") and v206.Name == "Punch" then
                v206:Activate()
            end
        end
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(7.60643005, 4.02632904, 2104.54004, - 0.23040159, - 8.53662385e-8, - 0.973095655, - 4.68743764e-8, 1, - 7.66279342e-8, 0.973095655, 2.79580536e-8, - 0.23040159)
    end
    if not getgenv().RK0 then
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
    end
end)
v125:Button("\231\159\179\229\164\18010", "RK10", false, function(p207)
    if game.Players.LocalPlayer.Durability.Value >= 10 then
        getgenv().RK10 = p207
        while getgenv().RK10 do
            wait()
            local v208, v209, v210 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
            while true do
                local v211
                v210, v211 = v208(v209, v210)
                if v210 == nil then
                    break
                end
                if v211:IsA("Tool") and v211.Name == "Punch" then
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v211)
                end
            end
            local v212, v213, v214 = pairs(game.Players.LocalPlayer.Character:GetChildren())
            while true do
                local v215
                v214, v215 = v212(v213, v214)
                if v214 == nil then
                    break
                end
                if v215:IsA("Tool") and v215.Name == "Punch" then
                    v215:Activate()
                end
            end
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(- 157.680908, 3.72453046, 434.871185, 0.923298299, - 1.81774684e-9, - 0.384083599, 3.45247031e-9, 1, 3.56670582e-9, 0.384083599, - 4.61917082e-9, 0.923298299)
        end
        if not getgenv().RK10 then
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
        end
    end
end)
v125:Button("\231\159\179\229\164\180100", "RK100", false, function(p216)
    if game.Players.LocalPlayer.Durability.Value >= 100 then
        getgenv().RK100 = p216
        while getgenv().RK100 do
            wait()
            local v217, v218, v219 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
            while true do
                local v220
                v219, v220 = v217(v218, v219)
                if v219 == nil then
                    break
                end
                if v220:IsA("Tool") and v220.Name == "Punch" then
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v220)
                end
            end
            local v221, v222, v223 = pairs(game.Players.LocalPlayer.Character:GetChildren())
            while true do
                local v224
                v223, v224 = v221(v222, v223)
                if v223 == nil then
                    break
                end
                if v224:IsA("Tool") and v224.Name == "Punch" then
                    v224:Activate()
                end
            end
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(162.233673, 3.66615629, - 164.686783, - 0.921312928, - 1.80826774e-7, - 0.38882193, - 9.13036544e-8, 1, - 2.48719346e-7, 0.38882193, - 1.93647494e-7, - 0.921312928)
        end
        if not getgenv().RK100 then
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
        end
    end
end)
v125:Button("\231\159\179\229\164\1805000", "RK5000", false, function(p225)
    if game.Players.LocalPlayer.Durability.Value >= 5000 then
        getgenv().RK5000 = p225
        while getgenv().RK5000 do
            wait()
            local v226, v227, v228 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
            while true do
                local v229
                v228, v229 = v226(v227, v228)
                if v228 == nil then
                    break
                end
                if v229:IsA("Tool") and v229.Name == "Punch" then
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v229)
                end
            end
            local v230, v231, v232 = pairs(game.Players.LocalPlayer.Character:GetChildren())
            while true do
                local v233
                v232, v233 = v230(v231, v232)
                if v232 == nil then
                    break
                end
                if v233:IsA("Tool") and v233.Name == "Punch" then
                    v233:Activate()
                end
            end
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(329.831482, 3.66450214, - 618.48407, - 0.806075394, - 8.67358096e-8, 0.591812849, - 1.05715522e-7, 1, 2.57029176e-9, - 0.591812849, - 6.04919563e-8, - 0.806075394)
        end
        if not getgenv().RK5000 then
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
        end
    end
end)
v125:Button("\231\159\179\229\164\180150000", "RK150000", false, function(p234)
    if game.Players.LocalPlayer.Durability.Value >= 150000 then
        getgenv().RK150000 = p234
        while getgenv().RK150000 do
            wait()
            local v235, v236, v237 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
            while true do
                local v238
                v237, v238 = v235(v236, v237)
                if v237 == nil then
                    break
                end
                if v238:IsA("Tool") and v238.Name == "Punch" then
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v238)
                end
            end
            local v239, v240, v241 = pairs(game.Players.LocalPlayer.Character:GetChildren())
            while true do
                local v242
                v241, v242 = v239(v240, v241)
                if v241 == nil then
                    break
                end
                if v242:IsA("Tool") and v242.Name == "Punch" then
                    v242:Activate()
                end
            end
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(- 2566.78076, 3.97019577, - 277.503235, - 0.923934579, - 4.11600105e-8, - 0.382550538, - 3.38838042e-8, 1, - 2.57576183e-8, 0.382550538, - 1.08360858e-8, - 0.923934579)
        end
        if not getgenv().RK150000 then
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
        end
    end
end)
v125:Button("\231\159\179\229\164\180400000", "RK400000", false, function(p243)
    if game.Players.LocalPlayer.Durability.Value >= 400000 then
        getgenv().RK400000 = p243
        while getgenv().RK400000 do
            wait()
            local v244, v245, v246 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
            while true do
                local v247
                v246, v247 = v244(v245, v246)
                if v246 == nil then
                    break
                end
                if v247:IsA("Tool") and v247.Name == "Punch" then
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v247)
                end
            end
            local v248, v249, v250 = pairs(game.Players.LocalPlayer.Character:GetChildren())
            while true do
                local v251
                v250, v251 = v248(v249, v250)
                if v250 == nil then
                    break
                end
                if v251:IsA("Tool") and v251.Name == "Punch" then
                    v251:Activate()
                end
            end
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2155.61743, 3.79830337, 1227.06482, - 0.551303148, - 9.16796949e-9, - 0.834304988, - 5.61318245e-8, 1, 2.61027839e-8, 0.834304988, 6.12216127e-8, - 0.551303148)
        end
        if not getgenv().RK400000 then
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
        end
    end
end)
v125:Button("\231\159\179\229\164\180750000", "RK750000", false, function(p252)
    if game.Players.LocalPlayer.Durability.Value >= 750000 then
        getgenv().RK750000 = p252
        while getgenv().RK750000 do
            wait()
            local v253, v254, v255 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
            while true do
                local v256
                v255, v256 = v253(v254, v255)
                if v255 == nil then
                    break
                end
                if v256:IsA("Tool") and v256.Name == "Punch" then
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v256)
                end
            end
            local v257, v258, v259 = pairs(game.Players.LocalPlayer.Character:GetChildren())
            while true do
                local v260
                v259, v260 = v257(v258, v259)
                if v259 == nil then
                    break
                end
                if v260:IsA("Tool") and v260.Name == "Punch" then
                    v260:Activate()
                end
            end
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(- 7285.6499, 3.66624784, - 1228.27417, 0.857643783, - 1.58175091e-8, - 0.514244199, - 1.22581563e-8, 1, - 5.12025977e-8, 0.514244199, 5.02172774e-8, 0.857643783)
        end
        if not getgenv().RK750000 then
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
        end
    end
end)
v125:Button("\231\159\179\229\164\180100\228\184\135", "RK1M", false, function(p261)
    if game.Players.LocalPlayer.Durability.Value >= 1000000 then
        getgenv().RK1M = p261
        while getgenv().RK1M do
            wait()
            local v262, v263, v264 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
            while true do
                local v265
                v264, v265 = v262(v263, v264)
                if v264 == nil then
                    break
                end
                if v265:IsA("Tool") and v265.Name == "Punch" then
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v265)
                end
            end
            local v266, v267, v268 = pairs(game.Players.LocalPlayer.Character:GetChildren())
            while true do
                local v269
                v268, v269 = v266(v267, v268)
                if v268 == nil then
                    break
                end
                if v269:IsA("Tool") and v269.Name == "Punch" then
                    v269:Activate()
                end
            end
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4160.87109, 987.829102, - 4136.64502, - 0.893115997, 0.0000125481356, 0.44982639, 5.02490684e-6, 1, - 0.0000179187136, - 0.44982639, - 0.0000137431543, - 0.893115997)
        end
        if not getgenv().RK1M then
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
        end
    end
end)
v125:Button("\231\159\179\229\164\180500\228\184\135", "RK5M", false, function(p270)
    if game.Players.LocalPlayer.Durability.Value >= 5000000 then
        getgenv().RK5M = p270
        while getgenv().RK5M do
            wait()
            local v271, v272, v273 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
            while true do
                local v274
                v273, v274 = v271(v272, v273)
                if v273 == nil then
                    break
                end
                if v274:IsA("Tool") and v274.Name == "Punch" then
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v274)
                end
            end
            local v275, v276, v277 = pairs(game.Players.LocalPlayer.Character:GetChildren())
            while true do
                local v278
                v277, v278 = v275(v276, v277)
                if v277 == nil then
                    break
                end
                if v278:IsA("Tool") and v278.Name == "Punch" then
                    v278:Activate()
                end
            end
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(- 8957.54395, 5.53625107, - 6126.90186, - 0.803919137, 6.6065212e-8, 0.594738603, - 8.93136143e-9, 1, - 1.23155459e-7, - 0.594738603, - 1.04318865e-7, - 0.803919137)
        end
        if not getgenv().RK5M then
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
        end
    end
end)
v125:Button("\228\188\160\233\128\129\229\136\176\229\135\186\231\148\159\231\130\185", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7, 3, 108)
end)
v125:Button("\228\188\160\233\128\129\229\136\176\229\174\137\229\133\168\229\178\155", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 39, 10, 1838)
end)
v125:Button("\228\188\160\233\128\129\229\136\176\229\185\184\232\191\144\230\138\189\229\165\150\229\140\186\229\159\159\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 2606, - 2, 5753)
end)
v125:Button("\228\188\160\233\128\129\229\136\176\232\130\140\232\130\137\228\185\139\231\142\139\229\129\165\232\186\171\230\136\191", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 8554, 22, - 5642)
end)
v125:Button("\228\188\160\233\128\129\229\136\176\228\188\160\232\175\180\229\129\165\232\186\171\230\136\191", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4676, 997, - 3915)
end)
v125:Button("\228\188\160\233\128\129\229\136\176\230\176\184\230\129\146\229\129\165\232\186\171\230\136\191", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 6686, 13, - 1284)
end)
v125:Button("\228\188\160\233\128\129\229\136\176\231\165\158\232\175\157\229\129\165\232\186\171\230\136\191", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2177, 13, 1070)
end)
v125:Button("\228\188\160\233\128\129\229\136\176\229\134\176\233\156\156\229\129\165\232\186\171\230\136\191", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 2543, 13, - 410)
end)
v125:Button("\229\138\155\233\135\143\228\188\160\229\165\135\230\148\185\229\138\155\233\135\143", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/jynzl/main/main/Musclas%20Legenos.lua"))()
end)
local v279 = v11:Tab("\227\128\142\229\191\141\232\128\133\228\188\160\229\165\135\227\128\143", "7734068321"):section("\227\128\142\229\191\141\232\128\133\228\188\160\229\165\135\227\128\143", true)
v279:Button("\233\163\158\232\161\140", function()
    loadstring(game:HttpGet("https://pastefy.app/J9x7RnEZ/raw"))()
end)
v279:Button("\228\188\160\233\128\129", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/UzaUDSPK"))()
end)
v279:Button("\229\191\141\232\128\133\228\188\160\229\165\1351", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/zerpqe/script/main/NinjaLegends.lua"))()
end)
v279:Button("\229\191\141\232\128\133\228\188\160\229\165\1352", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatBlueDevil/Bleus/main/Ninja%20Legends/Source.lua"))()
end)
v279:Button("\229\191\141\232\128\133\228\188\160\229\165\1353", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Zyb150933/zyb/main/123"))()
end)
v279:Button("\229\191\141\232\128\133\228\188\160\229\165\1354", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Zyb150933/zyb/main/123"))()
end)
local v280 = v11:Tab("\227\128\142\230\158\129\233\128\159\228\188\160\229\165\135\227\128\143", "7734068321"):section("\227\128\142\230\158\129\233\128\159\228\188\160\229\165\135\227\128\143", true)
v280:Button("\233\163\158\232\161\140", function()
    loadstring(game:HttpGet("https://pastefy.app/J9x7RnEZ/raw"))()
end)
v280:Button("boa", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BoaHacker/ROBLOX/main/cheat", true))()
end)
v280:Button("\230\177\137\229\140\150", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/egMXJcwB", true))()
end)
local v281 = v11:Tab("\227\128\142\230\173\187\228\186\161\231\144\131\227\128\143", "7734068321"):section("\227\128\142\230\173\187\228\186\161\231\144\131\227\128\143", true)
v281:Button("\230\173\187\228\186\161\231\144\1311", function()
    loadstring(game:HttpGet("https://github.com/Hosvile/InfiniX/releases/latest/download/main.lua", true))()
end)
v281:Button("\230\173\187\228\186\161\231\144\1312", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/Ball1/main/Death"))()
end)
local v282 = v11:Tab("\227\128\142Doors  \233\151\168\227\128\143", "7734068321"):section("\227\128\142\233\151\168\227\128\143", true)
v282:Button("\229\136\183\230\150\176\230\151\182\233\128\154\231\159\165", "TZ", false, function(p283)
    _G.IE = p283 and true or false
    LatestRoom.Changed:Connect(function()
        if _G.IE == true then
            local v284 = ChaseStart.Value - LatestRoom.Value
            if 0 < v284 and v284 < 4 then
                Notification:Notify("\232\175\183\230\179\168\230\132\143", "\228\186\139\228\187\182\229\143\175\232\131\189\229\136\183\230\150\176\228\186\142" .. tostring(v284) .. " \230\136\191\233\151\180", "rbxassetid://74123920743171", 3)
            end
        end
    end)
    workspace.ChildAdded:Connect(function(p285)
        if p285.Name ~= "RushMoving" or _G.IE ~= true then
            if p285.Name == "AmbushMoving" and _G.IE == true then
                Notify("\232\175\183\230\179\168\230\132\143", "Ambush \229\183\178\229\136\183\230\150\176", "rbxassetid://74123920743171", 3)
            end
        else
            Notify("\232\175\183\230\179\168\230\132\143", "Rush \229\183\178\229\136\183\230\150\176", "rbxassetid://74123920743171", 3)
        end
    end)
end)
v282:Button("\232\135\170\229\138\168\232\186\178\233\129\191Rush/Ambush", "ADB", false, function(p286)
    _G.Avoid = p286 and true or false
    workspace.ChildAdded:Connect(function(p287)
        if p287.Name ~= "RushMoving" or _G.Avoid ~= true then
            if p287.Name == "AmbushMoving" and _G.Avoid == true then
                Notify("\230\179\168\230\132\143!", "\230\173\163\229\156\168\232\186\178\233\129\191 Ambush.", "rbxassetid://74123920743171", 3)
                local vu288 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                local v289 = game:GetService("RunService").Heartbeat:Connect(function()
                    game.Players.LocalPlayer.Character:MoveTo(vu288 + Vector3.new(0, 20, 0))
                end)
                p287.Destroying:Wait()
                v289:Disconnect()
                game.Players.LocalPlayer.Character:MoveTo(vu288)
            end
        else
            Notify("\232\175\183\230\179\168\230\132\143!", "\230\173\163\229\156\168\232\186\178\233\129\191 Rush.", "rbxassetid://74123920743171", 3)
            local vu290 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            local v291 = game:GetService("RunService").Heartbeat:Connect(function()
                game.Players.LocalPlayer.Character:MoveTo(vu290 + Vector3.new(0, 20, 0))
            end)
            p287.Destroying:Wait()
            v291:Disconnect()
            game.Players.LocalPlayer.Character:MoveTo(vu290)
        end
    end)
end)
v282:Button("\230\151\160 Screech", "NCH", false, function(p292)
    _G.NS = p292 and true or false
    workspace.CurrentCamera.ChildAdded:Connect(function(p293)
        if p293.Name == "Screech" and _G.NS == true then
            p293:Destroy()
        end
    end)
end)
v282:Button("\230\156\128\229\188\186\230\177\137\229\140\150", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/65TwT8ja"))()
end)
v282:Button("\230\156\128\230\150\176", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/BlackKing-obf/main/Doors%20Blackking%20And%20BobHub"))()
end)
v282:Button("DX", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DXuwu/replicator-lol/main/dor.lua"))()
end)
v282:Button("RP\229\143\152\230\128\170", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))()
end)
v282:Button("\229\137\170\229\136\128", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/shears_done.lua"))()
end)
v282:Button("\229\141\129\229\173\151\230\158\182", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/FCSyG6Th"))()
end)
v282:Button("\231\165\158\229\156\163\231\130\184\229\188\185", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/u5B1UjGv"))()
end)
v282:Button("\229\144\184\233\147\129\231\159\179", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/xHxGDp51"))()
end)
v282:Button("\229\136\183\230\128\170\229\143\152\230\128\170", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shuaguai"))()
end)
v282:Button("\229\143\152\232\186\171", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))()
end)
local v294 = v11:Tab("\227\128\142Door2\227\128\143", "7734068321"):section("\227\128\142Door2\227\128\143", true)
v294:Button("DX", function()
    loadstring(game:HttpGet("https://github.com/DocYogurt/Main/raw/main/Scripts/DF2RW.lua"))()
end)
v294:Button("\230\177\137\229\140\150", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoFenHG/DOORS/main/Hydra.txt"))()
end)
v294:Button("\228\184\141\231\159\165\229\144\141", function()
    loadstring(game:HttpGet("https://github.com/DocYogurt/DOORS/raw/main/Loader.lua"))()
end)
v294:Button("\232\132\154\230\156\172", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/zuohongjian/bjb/main/ZS%20III", true))()
end)
local v295 = v11:Tab("\227\128\142\228\191\132\228\186\165\228\191\132\229\183\158\227\128\143", "7734068321"):section("\227\128\142\228\191\132\228\186\165\228\191\132\229\183\158\227\128\143", true)
v295:Button("\229\141\176\233\146\158\230\156\186", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XTScripthub/Ohio/main/MoneyPrinterFinder"))()
end)
v295:Button("\228\188\160\233\128\129\229\138\160\232\135\170\229\138\168\229\183\165\228\189\156", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/ohio/main/Roblox232"))()
end)
v295:Button("\230\157\128\230\136\174\229\133\137\231\142\175", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Xingtaiduan/Script/main/Games/Ohio"))()
end)
v295:Button("\230\173\187\228\186\161\231\172\148\232\174\176", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0%20(1).txt"))()
end)
v295:Button("\228\191\132\228\186\165\228\191\132\229\183\1581\232\139\177", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/0MqfXpvY", true))()
end)
v295:Button("\228\191\132\228\186\165\228\191\132\229\183\158", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
end)
v295:Button("\230\140\135\228\187\164", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/longshulol/long/main/longshu/Ohio"))()
end)
v295:Label("\229\156\168\232\129\138\229\164\169\230\161\134\232\190\147\229\133\165")
v295:Label("\233\128\143\229\188\128\226\128\148\233\128\143\229\133\179")
v295:Label("\232\191\189\232\184\170\229\188\128\226\128\148\232\191\189\232\184\170\229\133\179")
v295:Label("\230\148\182\233\146\177\229\188\128\226\128\148\230\148\182\233\146\177\229\133\179")
v295:Label("\230\148\182\231\137\169\229\188\128\226\128\148\230\148\182\231\137\169\229\133\179")
v295:Label("\230\138\162\229\143\150\230\172\190\230\156\186\229\188\128\226\128\148\230\138\162\229\143\150\230\172\190\230\156\186\229\133\179")
v295:Label("\230\138\162\233\147\182\232\161\140\229\188\128\226\128\148\230\138\162\233\147\182\232\161\140\229\133\179")
v295:Label("\231\169\191\229\162\153\229\188\128\226\128\148\231\169\191\229\162\153\229\133\179")
local v296 = v11:Tab("\227\128\142\231\129\171\231\174\173\229\143\145\229\176\132\230\168\161\230\139\159\229\153\168\227\128\143", "7734068321"):section("\227\128\142\231\129\171\231\174\173\229\143\145\229\176\132\230\168\161\230\139\159\229\153\168\227\128\143", true)
v296:Button("\232\135\170\229\138\168\230\148\182\233\155\134\231\135\131\230\150\153", "ARL", false, function(p297)
    isFuelScoopEnabled = p297
    while true do
        repeat
            wait()
        until isFuelScoopEnabled
        local v298, v299, v300 = pairs(game.Players.LocalPlayer.Character:GetChildren())
        while true do
            local v301
            v300, v301 = v298(v299, v300)
            if v300 == nil then
                break
            end
            if v301:IsA("Tool") and v301.Name == "FuelScoop" then
                v301:Activate()
            end
        end
    end
end)
v296:Button("\231\153\187\228\184\138\231\129\171\231\174\173", function()
    game:GetService("ReplicatedStorage"):WaitForChild("BoardRocket"):FireServer()
end)
v296:Button("\229\176\134\231\142\169\229\174\182\228\187\142\230\137\128\230\156\137\232\128\133\229\186\167\228\189\141\231\167\187\233\153\164", function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemovePlayer"):FireServer()
end)
v296:Button("\229\143\145\229\176\132\229\143\176\229\178\155", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 123.15931701660156, 2.7371432781219482, 3.491959810256958)
end)
v296:Button("\231\153\189\228\186\145\229\178\155", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 76.13252258300781, 170.55825805664062, - 60.4516716003418)
end)
v296:Button("\230\181\174\230\188\130\229\178\155", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 66.51714324951172, 720.4866333007812, - 5.391753196716309)
end)
v296:Button("\229\141\171\230\152\159\229\178\155", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 34.2462043762207, 1429.4990234375, 1.3739361763000488)
end)
v296:Button("\232\156\156\232\156\130\232\191\183\229\174\171\229\178\155", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6.5361199378967285, 3131.249267578125, - 29.759048461914062)
end)
v296:Button("\230\156\136\231\144\131\228\186\186\230\149\145\230\143\180", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 7.212917804718018, 5016.341796875, - 19.815933227539062)
end)
v296:Button("\230\154\151\231\137\169\232\180\168\229\178\155", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(68.43186950683594, 6851.94091796875, 7.890637397766113)
end)
v296:Button("\229\164\170\231\169\186\229\178\169\231\159\179\229\178\155", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(49.92888641357422, 8942.955078125, 8.674375534057617)
end)
v296:Button("\233\155\182\229\143\183\231\129\171\230\152\159\229\178\155", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(54.44503402709961, 11270.0927734375, - 1.273137092590332)
end)
v296:Button("\229\164\170\231\169\186\230\176\180\230\153\182\229\176\143\232\161\140\230\152\159\229\178\155", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 11.579089164733887, 15295.6318359375, - 27.54974365234375)
end)
v296:Button("\230\156\136\231\144\131\230\181\134\230\158\156\229\178\155", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 14.601255416870117, 18410.9609375, 0.9418511986732483)
end)
v296:Button("\233\147\186\232\183\175\231\159\179\229\178\155", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 3.272758960723877, 22539.494140625, 63.283935546875)
end)
v296:Button("\230\181\129\230\152\159\229\178\155", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 45.515689849853516, 27961.560546875, - 7.358333110809326)
end)
v296:Button("\229\141\135\231\186\167\229\178\155", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 2.7595248222351074, 33959.98828125, 53.93095397949219)
end)
v296:Button("\231\129\171\231\174\173\229\143\145\229\176\132\230\168\161\230\139\159\229\153\1681", function()
    loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/9245/%E7%8C%AB%E9%80%9A%E7%94%A8.txt?sign=hrWROZdVfK2mtJcIFa3Tvbl-TojP1C86_Zd3q03qttc%3D%3A0"))()
end)
v296:Button("\231\129\171\231\174\173\229\143\145\229\176\132\230\168\161\230\139\159\229\153\1682", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dizyhvh/rbx_scripts/main/321_blast_off_simulator"))()
end)
local v302 = v11:Tab("\227\128\142\230\132\159\230\159\147\230\128\167\229\190\174\231\172\145\227\128\143", "7734068321"):section("\227\128\142\230\132\159\230\159\147\230\128\167\229\190\174\231\172\145\227\128\143", true)
v302:Button("\230\132\159\230\159\147\230\128\167\229\190\174\231\172\1451", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/WG1BMS72", true))()
end)
v302:Button("\230\132\159\230\159\147\230\128\167\229\190\174\231\172\1452", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/mT10xnt7", true))()
end)
local v303 = v11:Tab("\227\128\142\233\147\178\233\155\170\230\168\161\230\139\159\229\153\168\227\128\143", "7734068321"):section("\227\128\142\233\147\178\233\155\170\230\168\161\230\139\159\229\153\168\227\128\143", true)
v303:Button("\232\135\170\229\138\168\230\148\182\233\155\134\233\155\170", "", false, function(p304)
    toggle = p304
    while toggle do
        wait()
        local v305 = {
            workspace:WaitForChild("HitParts"):WaitForChild("Snow1"),
            "Snow1",
            "MagicWand"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("e8eGb8RgRXFcug8q"):FireServer(unpack(v305))
    end
end)
v303:Button("\232\135\170\229\138\168\229\135\186\229\148\174\233\155\170\239\188\136\232\166\129\228\188\160\233\128\129\229\136\176\230\140\135\229\174\154\229\156\176\230\150\185\239\188\137", "", false, function(p306)
    toggle = p306
    while toggle do
        wait()
        game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("RemoteEvent"):FireServer(unpack({
            "SellSnow",
            "Frosty"
        }))
    end
end)
v303:Button("\228\188\160\233\128\129\229\135\186\229\148\174\233\155\170\231\154\132\229\156\176\230\150\185", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(481.4659423828125, 15.846257209777832, - 66.55204010009766)
end)
v303:Button("\228\188\160\233\128\129\228\185\176\232\189\166\231\154\132\229\156\176\230\150\185", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(90.10160064697266, 16.051794052124023, - 141.703125)
end)
v303:Button("\228\188\160\233\128\129\228\185\176\229\183\165\229\133\183\231\154\132\229\156\176\230\150\185", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(131.7429962158203, 16.39700698852539, - 12.935890197753906)
end)
v303:Button("\228\188\160\233\128\129\228\185\176\232\131\140\229\140\133\231\154\132\229\156\176\230\150\185", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(348.6633605957031, 17.03822898864746, - 16.793842315673828)
end)
v303:Button("\228\188\160\233\128\129\228\185\176\229\129\135\230\151\165\231\164\188\231\137\169\231\154\132\229\156\176\230\150\185", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(154.57424926757812, 16.215335845947266, 147.10423278808594)
end)
v303:Button("\228\188\160\233\128\129\228\185\176\229\174\160\231\137\169\231\154\132\229\156\176\230\150\185", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(138.49563598632812, 17.887277603149414, 278.3686218261719)
end)
v303:Button("\228\188\160\233\128\129\232\182\133\229\164\167\233\147\178\233\155\170\231\154\132\229\156\176\230\150\185", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 391.4309997558594, 15.84949016571045, 150.15187072753906)
end)
v11:Tab("\227\128\142\228\184\128\228\184\170\230\153\174\233\128\154\231\154\132\233\156\178\232\144\165\230\149\133\228\186\139\227\128\143", "7734068321"):section("\227\128\142\228\184\128\228\184\170\230\153\174\233\128\154\231\154\132\233\156\178\232\144\165\230\149\133\228\186\139\227\128\143", true):Button("\233\163\158\232\161\140", function()
    loadstring(game:HttpGet("https://pastefy.app/J9x7RnEZ/raw"))()
end)
v11:Tab("\230\151\160\229\144\141\229\176\132\230\137\139", "7734068321"):section("\227\128\142\230\151\160\229\144\141\229\176\132\230\137\139\227\128\143", true):Button("\230\137\190\231\154\132", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/R1nn1/MainMenu1/main/MainMenuV1.2"))()
end)
local v307 = v11:Tab("\229\142\139\229\138\155", "7734068321"):section("\229\142\139\229\138\155", true)
v307:Button("\233\163\158\232\161\140", function()
    loadstring(game:HttpGet("https://pastefy.app/J9x7RnEZ/raw"))()
end)
v307:Button("\230\151\160\230\149\140 \227\128\142\230\156\137\231\148\168\227\128\143 ", function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Pressure-*-Mode-15992"))()
end)
v307:Button("DX", function()
    loadstring(game:HttpGet("https://github.com/DocYogurt/Main/raw/main/Scripts/Pressure"))()
end)
v307:Button("\232\166\129\229\141\161\229\175\134", function()
    loadstring(game:HttpGet("https://pastefy.app/o6LTiEBy/raw", true))()
end)
v307:Button("\232\182\133\231\186\167\229\165\189\231\148\168  \225\144\133\232\191\153\228\184\170\230\152\175\230\136\145\232\174\164\228\184\186\230\156\128\229\165\189\231\148\168\231\154\132\225\144\138", function()
    loadstring(game:HttpGet("https://github.com/Drop56796/CreepyEyeHub/blob/main/obfuscate.lua?raw=true"))()
end)
v11:Tab("\227\128\142\233\170\168\230\138\152VI\227\128\143", "7734068321"):section("\227\128\142\233\170\168\230\138\152VI\227\128\143", true):Button("\233\170\168\230\138\152VI  1", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/5rEAVmcC"))()
end)
local v308 = v11:Tab("\227\128\142\229\133\182\228\187\150\232\132\154\230\156\172\227\128\143", "7734068321"):section("\227\128\142\229\133\182\228\187\150\232\132\154\230\156\172\227\128\143", true)
v308:Button("\231\154\174\232\132\154\230\156\172 \233\156\128\232\166\129\229\138\160\229\133\165\231\190\164\231\187\132", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/QQ1002100032-Roblox-Pi-script.lua"))()
end)
v308:Button("\231\140\171\228\184\173\229\191\131", function()
    loadstring(game:HttpGet("https://rentry.co/ct293/raw"))()
end)
v308:Button("\233\153\136\232\132\154\230\156\172", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/maowang1/maozhongxing/refs/heads/main/Protected_8825322676454983.txt"))()
end)
v308:Button("\229\137\145\229\174\162v7", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Zer0neK/Hello/refs/heads/main/SG-V7"))()
end)
v308:Button("\229\140\151\230\158\129\232\132\154\230\156\172\227\128\142\228\184\173\229\191\131\227\128\143", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/KwARpDxV", true))()
end)
v308:Button("XK\232\132\154\230\156\172\228\184\173\229\191\131", function()
    loadstring("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/BINjiaobzx6/BINjiao/main/XK.TXT\"))()\n")()
end)
v308:Button("\232\132\154\230\156\172\228\184\173\229\191\1311.5\231\137\136\230\156\172", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/gemxHwA1"))()
end)
v308:Button("\231\142\150\230\129\182\232\132\154\230\156\172", function()
    loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/8508/%E7%8E%96%E6%81%B6%E4%B8%AD%E5%BF%83.lua?sign=wt54yWf_f0LDB3gXXyQu0SFQ0oUDUXZBOaWQShwCFGg%3D%3A0"))()
end)
v308:Button("\232\128\129\229\164\167\232\132\154\230\156\172", function()
    loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/8401/%E8%80%81%E5%A4%A7%E8%84%9A%E6%9C%AC1.0%E7%89%88.txt?sign=XHxQ1ja8djAnEjVEG-eEZFPeZKFHJ0FHeybHpSbtBW4%3D%3A0"))()
end)
v308:Button("\228\185\140\228\186\145\232\132\154\230\156\172", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/dT4ZGge8"))()
end)
v308:Button("\231\154\135\232\132\154\230\156\172", function()
    loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/8577/%E7%9A%87v5.txt?sign=ToDT3Udyh4r3WwDu_yVblRL849qC2GJjjjQ7FTidF_w%3D%3A0"))()
end)
v308:Button("\229\134\176\231\186\162\232\140\182\232\132\154\230\156\172", function()
    loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/8582/Protected_9297682332119129.lua?sign=jP-h1AGooC90C0A0O5eDboOCoaQTZpOzLoWzg_oz1eE%3D%3A0"))()
end)
v308:Button("\233\157\153\230\150\176\232\132\154\230\156\172", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/jxdjbx/ggff/main/%E5%B8%85%E9%94%85%E4%B8%80%E6%9E%9A%E5%B0%8F%E5%8F%AF%E7%88%B1%E5%91%80%E5%8F%91%E8%B4%A7%E5%A5%BD%E7%9A%84%E5%90%83%E4%B8%8D%E5%90%83%E8%AE%B0%E5%BE%97%E8%AE%B0%E5%BE%97%E4%BD%A0%E6%96%B9%E4%BE%BF%E6%89%93%E5%BC%80%E7%94%B5%E8%84%91%E6%96%B9%E4%B8%8D%E6%96%B9%E4%BE%BF%E8%AE%B0%E5%BE%97%E9%83%BD%E8%A7%81%E4%B8%8D%E5%88%B0%E6%96%B9%E4%BE%BF%E7%9A%84%E8%AF%9D%E6%89%8B%E6%9C%BA%E6%96%B9%E4%B8%8D%E6%96%B9%E4%BE%BF%E5%B0%B1"))()
end)
v308:Button("\229\176\143\233\173\148\232\132\154\230\156\172", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaomoNB666/xiaomoNB666/main/%E6%9E%81.lua"))()
end)
v308:Button("\233\178\168\230\150\176ui\232\132\154\230\156\172", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fvvhhh/sturdy-octo-engine/main/Protected_1221338743706560.lua.txt"))()
end)
v308:Button("\233\155\183\232\132\154\230\156\172", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/tPB47inG"))()
end)
local v309 = v11:Tab("\227\128\142\232\156\130\231\190\164\230\168\161\230\139\159\229\153\168\227\128\143", "7734068321"):section("\227\128\142\232\156\130\231\190\164\230\168\161\230\139\159\229\153\168\227\128\143", true)
v309:Button("\228\184\129\230\177\137\229\140\150", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/jjding/main/%E4%B8%81%E4%B8%81%E8%9C%82%E7%BE%A4%E6%A8%A1%E6%8B%9F%E5%99%A8.txt"))()
end)
v309:Button("\230\156\128\229\188\186", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/rhnrn/main/%E8%9C%82%E7%BE%A4%E8%84%9A%E6%9C%ACato%E6%B1%89%E5%8C%96.txt"))()
end)
v309:Button("\232\156\130\231\190\164\230\168\161\230\139\159\229\153\1681", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Historia00012/HISTORIAHUB/main/BSS%20FREE"))()
end)
v309:Button("\232\156\130\231\190\164\230\168\161\230\139\159\229\153\1682", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/max0mind/lua/main/loader.lua"))()
end)
v11:Tab("\227\128\142\229\176\143\229\129\183\230\168\161\230\139\159\229\153\168\227\128\143", "7734068321"):section("\227\128\142\229\176\143\229\129\183\230\168\161\230\139\159\229\153\168\227\128\143", true):Button("\229\176\143\229\129\183\230\168\161\230\139\159\229\153\168", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/adrician/Thief-Simulator---GUI/main/Thief%20sim.lua", true))()
end)
v11:Tab("\227\128\142\229\175\187\229\174\157\230\168\161\230\139\159\229\153\168\227\128\143", "7734068321"):section("\227\128\142\229\175\187\229\174\157\230\168\161\230\139\159\229\153\168\227\128\143", true):Button("\229\175\187\229\174\157\230\168\161\230\139\159\229\153\168", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/gghb/main/%E4%B8%81%E4%B8%81%E5%AF%BB%E5%AE%9D.txt"))()
end)
local v310 = v11:Tab("\227\128\142\230\179\149\229\174\157\230\168\161\230\139\159\229\153\168\227\128\143", "7734068321"):section("\227\128\142\230\179\149\229\174\157\230\168\161\230\139\159\229\153\168\227\128\143", true)
v310:Button("\230\179\149\229\174\157\230\168\161\230\139\159\229\153\168\230\177\137\229\140\150", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/zhanghuihuihuil/Script/main/%E6%B3%95%E5%AE%9D%E6%A8%A1%E6%8B%9F%E5%99%A8%E6%B1%89%E5%8C%96"))()
end)
v310:Button("\230\179\149\229\174\157\230\168\161\230\139\159\229\153\168", function()
    loadstring(game:HttpGet("https://pastefy.app/9bGpv4H3/raw"))()
end)
local v311 = v11:Tab("\227\128\142\228\184\128\232\183\175\229\144\145\232\165\191\227\128\143", "7734068321"):section("\227\128\142\228\184\128\232\183\175\229\144\145\232\165\191\227\128\143", true)
v311:Button("\228\184\128\232\183\175\229\144\145\232\165\1911", function()
    loadstring(game:HttpGet("https://pastefy.app/q08owYGG/raw"))()
end)
v311:Button("\228\184\128\232\183\175\229\144\145\232\165\1912", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Drifter0507/scripts/main/westbound", true))()
end)
local v312 = v11:Tab("\227\128\142\233\164\144\229\142\133\229\164\167\228\186\168\227\128\143", "7734068321"):section("\227\128\142\233\164\144\229\142\133\229\164\167\228\186\168\227\128\143", true)
v312:Button("\233\164\144\229\142\133\229\164\167\228\186\1681", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/toosiwhip/snake-hub/main/restaurant-tycoon-2.lua"))()
end)
v312:Button("\233\164\144\229\142\133\229\164\167\228\186\1682", function()
    loadstring(game:HttpGet("https://pastefy.app/Ppqt0Gib/raw"))()
end)
local v313 = v11:Tab("\227\128\142\230\178\179\229\140\151\229\148\144\229\142\191\227\128\143", "7734068321"):section("\227\128\142\230\178\179\229\140\151\229\148\144\229\142\191\227\128\143", true)
v313:Button("\228\188\160\233\128\129\229\136\176\232\173\166\229\175\159\229\177\128", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 5513.97412109375, 8.656171798706055, 4964.291015625)
end)
v313:Button("\228\188\160\233\128\129\229\136\176\229\135\186\231\148\159\231\130\185", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 3338.31982421875, 10.048742294311523, 3741.84033203125)
end)
v313:Button("\228\188\160\233\128\129\229\136\176\229\140\187\233\153\162", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 5471.482421875, 14.149418830871582, 4259.75341796875)
end)
v313:Button("\228\188\160\233\128\129\229\136\176\230\137\139\230\156\186\229\186\151", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 6789.2041015625, 11.197686195373535, 1762.687255859375)
end)
v313:Button("\228\188\160\233\128\129\229\136\176\231\129\171\233\148\133\229\186\151", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 5912.84765625, 12.217276573181152, 1058.29443359375)
end)
v313:Button("\230\178\179\229\140\151\229\148\144\229\142\1911", function()
    loadstring(game:HttpGet("https://pastefy.app/s20nni0h/raw"))()
end)
v313:Button("\230\178\179\229\140\151\229\148\144\229\142\1912", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Tang%20Country.lua"))()
end)
v313:Label("\233\156\128\232\166\129\229\133\136\230\136\144\228\184\186\233\128\129\232\180\167\229\143\184\230\156\186\239\188\140\230\137\141\232\131\189\232\135\170\229\138\168\229\136\183\233\146\177")
local function vu324()
    while true do
        if not _G.autoFarm then
            return
        end
        local vu314 = game:GetService("Workspace").DeliverySys.Misc["Package Pile"].ClickDetector
        if vu314 then
            local v315, v316 = pcall(function()
                fireclickdetector(vu314)
            end)
            if not v315 then
                warn("Failed to fire ClickDetector: " .. v316)
            end
        else
            warn("ClickDetector not found!")
        end
        task.wait(2.2)
        local v317 = game:GetService("Workspace").DeliverySys.DeliveryPoints:GetChildren()
        local v318, v319, v320 = ipairs(v317)
        local v321 = false
        while true do
            local v322
            v320, v322 = v318(v319, v320)
            if v320 == nil then
                break
            end
            if v322:FindFirstChild("Locate") and v322.Locate.Locate.Enabled then
                local v323 = game:GetService("Players").LocalPlayer.Character
                if v323 then
                    v323 = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                end
                if v323 then
                    v323.CFrame = v322.CFrame
                    v321 = true
                    break
                end
            end
        end
        if not v321 then
            warn("No delivery point found!")
        end
        task.wait(0)
    end
end
v313:Button("\232\135\170\229\138\168\229\136\183\233\146\177", "AL", false, function(p325)
    _G.autoFarm = p325
    if p325 then
        if not (_G.autoFarmThread and _G.autoFarmThread.Running) then
            _G.autoFarmThread = coroutine.create(vu324)
            coroutine.resume(_G.autoFarmThread)
        end
    elseif _G.autoFarmThread and _G.autoFarmThread.Running then
        coroutine.close(_G.autoFarmThread)
    end
end)
v313:Button("\232\135\170\229\138\168\229\136\183\233\146\177", "AM", false, function(_)
    game:GetService("VirtualUser"):CaptureController()
    function teleportTo(p326)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = p326
    end
    _G.autoFarm = false
    vu324 = function()
        while _G.autoFarm do
            fireclickdetector(game:GetService("Workspace").DeliverySys.Misc["Package Pile"].ClickDetector)
            task.wait(2.2)
            local v327, v328, v329 = pairs(game:GetService("Workspace").DeliverySys.DeliveryPoints:GetChildren())
            while true do
                local v330
                v329, v330 = v327(v328, v329)
                if v329 == nil then
                    break
                end
                if v330.Locate.Locate.Enabled then
                    teleportTo(v330.CFrame)
                end
            end
            task.wait(0)
        end
    end
end)
v313:Label("\231\172\172\228\184\128\228\184\170\229\136\183\233\146\177\229\146\140\231\172\172\228\186\140\228\184\170\230\152\175\228\184\141\229\144\140\231\154\132 \228\184\128\228\184\170\228\184\141\232\131\189\231\148\168 \229\143\175\228\187\165\231\148\168\229\143\166\228\184\128\228\184\170")
v11:Tab("\227\128\142\230\168\161\228\187\191\232\128\133\227\128\143", "7734068321"):section("\227\128\142\230\168\161\228\187\191\232\128\133\227\128\143", true):Button("\230\168\161\228\187\191\232\128\1331", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ttjy9808/obfloadstringmainmimic/main/README.md", true))()
end)
local v331 = v11:Tab("\227\128\142\232\135\170\231\132\182\231\129\190\229\174\179\230\168\161\230\139\159\229\153\168\227\128\143", "7734068321"):section("\227\128\142\232\135\170\231\132\182\231\129\190\229\174\179\230\168\161\230\139\159\229\153\168\227\128\143", true)
v331:Button("\233\187\145\230\180\158\232\132\154\230\156\1721", function()
    loadstring(game:HttpGet("https://glot.io/snippets/gwwv877ga3/raw/main.lua"))()
    return "it will load in around 3 - 131 seconds"
end)
v331:Button("\233\187\145\230\180\158\232\132\154\230\156\1722", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/lililiugg/main/jm114514.lua"))()
end)
v331:Label("\233\187\145\230\180\1581,2\233\131\189\232\166\129\229\188\128 \229\133\136\229\188\1281,\229\134\141\229\188\1282")
v331:Button("\233\187\145\230\180\158\232\132\154\230\156\1723", function()
    print("Hello World!")
    local v332 = game:GetService("UserInputService")
    local vu333 = game:GetService("Players").LocalPlayer:GetMouse()
    local v334 = Instance.new("Folder", game:GetService("Workspace"))
    local v335 = Instance.new("Part", v334)
    v335.Anchored = true
    v335.CanCollide = false
    v335.Transparency = 1
    local vu336 = Instance.new("Attachment", v335)
    local vu337 = vu333.Hit + Vector3.new(0, 5, 0)
    local vu338 = 1000
    local function vu347(p339)
        if p339:IsA("Part") and p339.Anchored == false and p339.Parent ~= game:GetService("Players").LocalPlayer.Character then
            vu333.TargetFilter = p339
            local v340 = next
            local v341, v342 = p339:GetChildren()
            while true do
                local v343
                v342, v343 = v340(v341, v342)
                if v342 == nil then
                    break
                end
                if v343:IsA("BodyAngularVelocity") or (v343:IsA("BodyForce") or (v343:IsA("BodyGyro") or (v343:IsA("BodyPosition") or (v343:IsA("BodyThrust") or (v343:IsA("BodyVelocity") or v343:IsA("RocketPropulsion")))))) then
                    v343:Destroy()
                end
            end
            if p339:FindFirstChild("Attachment") then
                p339:FindFirstChild("Attachment"):Destroy()
            end
            p339.CanCollide = false
            local v344 = Instance.new("BodyAngularVelocity", p339)
            v344.AngularVelocity = Vector3.new(0, math.rad(vu338), 0)
            v344.MaxTorque = Vector3.new(10000, 10000, 10000)
            local v345 = Instance.new("AlignPosition", p339)
            local v346 = Instance.new("Attachment", p339)
            v345.MaxForce = 50000
            v345.MaxVelocity = 50
            v345.Responsiveness = 50
            v345.Attachment0 = v346
            v345.Attachment1 = vu336
        end
    end;
    (function()
        local v348 = next
        local v349, v350 = game:GetService("Workspace"):GetDescendants()
        while true do
            local v351
            v350, v351 = v348(v349, v350)
            if v350 == nil then
                break
            end
            if v351:IsA("Part") and v351.Parent ~= game:GetService("Players").LocalPlayer.Character then
                vu347(v351)
            end
        end
    end)()
    game:GetService("Workspace").DescendantAdded:Connect(function(p352)
        if p352:IsA("Part") and p352.Parent ~= game:GetService("Players").LocalPlayer.Character then
            vu347(p352)
        end
    end)
    v332.InputBegan:Connect(function(p353, p354)
        if p353.KeyCode == Enum.KeyCode.E and not p354 then
            vu337 = vu333.Hit + Vector3.new(0, 5, 0)
        end
    end)
    spawn(function()
        while game:GetService("RunService").RenderStepped:Wait() do
            vu336.WorldCFrame = vu337
        end
    end)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SAZXHUB/Control-update/main/README.md", true))()
end)
v331:Button("\233\148\174\231\155\152\232\132\154\230\156\172", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr"))()
end)
v331:Label("\228\189\191\231\148\168\233\187\145\230\180\158\232\132\154\230\156\1723 \229\136\183\229\143\150\231\137\169\229\147\129 \230\137\139\230\140\129\231\137\169\229\147\129 \228\189\191\231\148\168\233\148\174\231\155\152E\233\148\174 \229\144\184\229\143\150\231\137\169\228\189\147")
v331:Button("\233\187\145\230\180\158\232\132\154\230\156\172\228\184\173\229\191\131", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Q1t1VkrL"))()
end)
v331:Button("\232\135\170\229\138\168\229\134\156\229\156\186\232\131\156\229\135\186", "ToggleInfo", false, function(p355)
    _G.autowinfarm = p355
    while wait(0.1) do
        if _G.autowinfarm == true then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 236, 180, 360, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        end
    end
end)
v331:Button("\229\156\176\229\155\190\230\138\149\231\165\168\231\148\168\230\136\183\231\149\140\233\157\162", "Map Voting UI", false, function(p356)
    if p356 == false then
        game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage.Visible = false
    end
    if p356 == true then
        game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage.Visible = true
    end
end)
v331:Button("\229\156\168\230\176\180\228\184\138\232\161\140\232\181\176\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189", "ToggleInfo", false, function(p357)
    if p357 == false then
        game.Workspace.WaterLevel.CanCollide = false
        game.Workspace.WaterLevel.Size = Vector3.new(10, 1, 10)
    end
    if p357 == true then
        game.Workspace.WaterLevel.CanCollide = true
        game.Workspace.WaterLevel.Size = Vector3.new(5000, 1, 5000)
    end
end)
v331:Button("\230\184\184\230\136\143\229\178\155\230\130\172\229\180\150\231\162\176\230\146\158", "Togglelnfo", false, function(p358)
    local v359, v360, v361 = pairs(game.Workspace:GetDescendants())
    while true do
        local v362
        v361, v362 = v359(v360, v361)
        if v361 == nil then
            break
        end
        if v362.Name == "LowerRocks" then
            v362.CanCollide = p358
        end
    end
end)
v331:Button("\231\166\129\231\148\168\229\157\160\232\144\189\230\141\159\229\157\143", function()
    local v363
    if game.Players.LocalPlayer.Character == nil then
        v363 = nil
    else
        v363 = game.Players.LocalPlayer.Character:FindFirstChild("FallDamageScript") or nil
    end
    if v363 then
        v363:Destroy()
    end
end)
v331:Button("\232\135\170\229\138\168\231\166\129\231\148\168\229\157\160\232\144\189\228\188\164\229\174\179", "Toggleelnfo", false, function(p364)
    _G.NoFallDamage = p364
    while wait(0.5) do
        if _G.NoFallDamage == true then
            local v365
            if game.Players.LocalPlayer.Character == nil then
                v365 = nil
            else
                v365 = game.Players.LocalPlayer.Character:FindFirstChild("FallDamageScript") or nil
            end
            if v365 then
                v365:Destroy()
            end
        end
    end
end)
v331:Button("\230\137\147\229\141\176\228\184\139\228\184\128\230\172\161\231\129\190\233\154\190(/console)", function()
    warn(game.Players.LocalPlayer.Character.SurvivalTag.Value)
end)
v331:Button("\231\167\187\233\153\164\231\129\190\233\154\190\231\149\140\233\157\162(\230\154\180\233\163\142\233\155\170\229\146\140\230\178\153\229\176\152\230\154\180)", function()
    game.Players.LocalPlayer.PlayerGui.BlizzardGui:destroy()
    game.Players.LocalPlayer.PlayerGui.SandStormGui:destroy()
end)
v331:Button("\228\188\160\233\128\129\229\136\176\229\156\176\229\155\190", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 115.828506, 65.4863434, 18.8461514, 0.00697017973, 0.0789371505, - 0.996855199, - 3.13589936e-7, 0.996879458, 0.0789390653, 0.999975681, - 0.000549906865, 0.00694845384)
end)
v331:Button("\230\184\184\230\136\143\229\178\155 \228\184\141\229\187\186\232\174\174\231\148\168", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 83.5, 38.5, - 27.5, - 1, 0, 0, 0, 1, 0, 0, 0, - 1)
end)
v331:Button("\228\186\167\229\141\181\229\161\148", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 280, 170, 341, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)
v331:Button("\230\173\165\232\161\140\233\128\159\229\186\166", "SliderInfo", 16, 16, 250, false, function(p366)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = p366
end)
v331:Button("\232\183\179\232\183\131\232\131\189\229\138\155", "SliderInfo", 16, 16, 250, false, function(p367)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = p367
end)
v331:Button("\229\141\149\229\135\187TP\229\183\165\229\133\183", function()
    mouse = game.Players.LocalPlayer:GetMouse()
    tool = Instance.new("Tool")
    tool.RequiresHandle = false
    tool.Name = "Click Teleport"
    tool.Activated:connect(function()
        local v368 = mouse.Hit + Vector3.new(0, 2.5, 0)
        local v369 = CFrame.new(v368.X, v368.Y, v368.Z)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v369
    end)
    tool.Parent = game.Players.LocalPlayer.Backpack
end)
v331:Button("\229\143\141AFK", function()
    wait(0.5)
    local vu370 = game:service("VirtualUser")
    game:service("Players").LocalPlayer.Idled:connect(function()
        vu370:CaptureController()
        vu370:ClickButton2(Vector2.new())
    end)
    print("Antiafk enabled")
end)
v331:Button("\233\163\158\232\161\140", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/jm%E9%A3%9E..lua"))()
end)
v331:Button("\232\135\170\231\132\182\231\129\190\229\174\179\230\168\161\230\139\159\229\153\1681", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/TurkOyuncu99/7c75386107937fa006304efd24543ad4/raw/8d759dfcd95d39949c692735cfdf62baec0bf835/cafwetweg", true))()
end)
v331:Button("\232\135\170\231\132\182\231\129\190\229\174\179\230\168\161\230\139\159\229\153\1682", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringUjHI6RQpz2o8", true))()
end)
v331:Button("\232\135\170\231\132\182\231\129\190\229\174\179\230\168\161\230\139\159\229\153\1683", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/9NLK7/93qjoadnlaknwldk/main/main"))()
end)
local v371 = v11:Tab("\227\128\142\232\191\155\229\135\187\231\154\132\229\131\181\229\176\184\227\128\143", "7734068321"):section("\227\128\142\232\191\155\229\135\187\231\154\132\229\131\181\229\176\184\227\128\143", true)
v371:Button("\232\191\155\229\135\187\231\154\132\229\131\181\229\176\184", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Zombie%20Attack", true))()
end)
v371:Button("\232\135\170\231\158\132", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/1Gp9c57U"))()
end)
local v372 = v11:Tab("\227\128\142\228\188\144\230\156\168\229\164\167\228\186\1682\227\128\143", "7734068321"):section("\227\128\142\228\188\144\230\156\168\229\164\167\228\186\1682\227\128\143", true)
v372:Button("\233\163\158\232\161\140", function()
    loadstring(game:HttpGet("https://pastefy.app/J9x7RnEZ/raw"))()
end)
v372:Button("\228\184\129\229\143\130", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/kdmd/main/%E4%B8%81%E4%B8%81%E4%B8%8E%E5%8F%82%E5%A4%A9%20%E4%BC%90%E6%9C%A8%E5%A4%A7%E4%BA%A8.txt"))()
end)
v372:Button("\230\156\128\229\188\186", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/frencaliber/LuaWareLoader.lw/main/luawareloader.wtf", true))()
end)
v372:Button("\228\188\144\230\156\168\229\164\167\228\186\1682  1", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/Kavo-Ui/main/%E4%BC%90%E6%9C%A8%E5%A4%A7%E4%BA%A82.lua", true))()
end)
v372:Button("\228\188\144\230\156\168\229\164\167\228\186\1682  2", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NOOBARMYSCRIPTER/NOOBARMYSCRIPTER/main/AXE%20LOOP%20SCRIPT", true))()
end)
v372:Button("\228\188\144\230\156\168\229\164\167\228\186\1682  3", function()
    loadstring(game:HttpGet("https://getexploits.com/key-system/", true))("https://da.com/936657404291084298/1006220505583460352/Script.txt")
end)
v372:Button("\228\188\144\230\156\168\229\164\167\228\186\1682  4", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Q7seVBTV"))()
end)
local v373 = v11:Tab("\227\128\142\229\134\133\232\132\143\228\184\142\233\187\145\231\129\171\232\141\175\227\128\143", "7734068321"):section("\227\128\142\229\134\133\232\132\143\228\184\142\233\187\145\231\129\171\232\141\175\227\128\143", true)
v373:Button("\232\140\151\230\156\136\230\184\133\233\163\142 \229\143\175\232\131\189\228\188\154\232\162\171\229\136\160\229\186\147", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sxcsr114514/sxcsr1145141/main/sxcsr134848488.lua", true))()
end)
v373:Button("\231\137\162\229\164\167\232\132\154\230\156\172", function()
    loadstring("loadstring(game:HttpGet((\"https://freenote.biz/raw/muznherhru\"),true))()\n")()
end)
local v374 = v11:Tab("\227\128\142\230\177\189\232\189\166\231\187\143\233\148\128\229\164\167\228\186\168\227\128\143", "7734068321"):section("\227\128\142\230\177\189\232\189\166\231\187\143\233\148\128\229\164\167\228\186\168\227\128\143", true)
v374:Button("\229\136\183\230\152\159\230\152\159", function()
    loadstring(game:HttpGet("https://scriptblox.com/raw/LIMITED!-Car-Dealership-Tycoon-Moon-Team-16181"))()
end)
v374:Button("\230\177\189\232\189\166\231\187\143\233\148\128\229\164\167\228\186\1681", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/IExpIoit/Script/main/Car%20Dealership%20Tycoon.lua"))()
end)
v374:Button("\230\177\189\232\189\166\231\187\143\233\148\128\229\164\167\228\186\1682", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/03sAlt/BlueLockSeason2/main/README.md"))()
end)
v374:Button("\230\177\189\232\189\166\231\187\143\233\148\128\229\164\167\228\186\1683", function()
    loadstring(game:HttpGet("https://pastefy.app/5o594Q0i/raw"))()
end)
local v375 = v11:Tab("\227\128\142\229\133\181\229\183\165\229\142\130\227\128\143", "7734068321"):section("\227\128\142\229\133\181\229\183\165\229\142\130\227\128\143", true)
v375:Button("\229\133\181\229\183\165\229\142\1301", function()
    loadstring(game:HttpGet("https://pastefy.app/2YdrWHxV/raw"))()
end)
v375:Button("\229\133\181\229\183\165\229\142\1302", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Arsenal/MainFile"))()
end)
v375:Button("\229\133\181\229\183\165\229\142\1303", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubArsenal"))()
end)
v375:Button("\229\133\181\229\183\165\229\142\1304", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/Init", true))()
end)
local v376 = v11:Tab("\227\128\142\232\182\133\231\186\167\232\182\179\231\144\131\232\129\148\232\181\155\227\128\143", "7734068321"):section("\227\128\142\232\182\133\231\186\167\232\182\179\231\144\131\232\129\148\232\181\155\227\128\143", true)
v376:Button("\232\182\133\231\186\167\232\182\179\231\144\131\232\129\148\232\181\1551", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xtrey10x/xtrey10x-hub/main/neo"))()
end)
v376:Button("\232\182\133\231\186\167\232\182\179\231\144\131\232\129\148\232\181\1552", function()
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/8fdf7c482d3b3d108ccdb282a7fc35e2.lua"))()
end)
local v377 = v11:Tab("\227\128\142\233\146\147\233\177\188\230\168\161\230\139\159\229\153\168\227\128\143", "7734068321"):section("\227\128\142\233\146\147\233\177\188\230\168\161\230\139\159\229\153\168\227\128\143", true)
v377:Button("\233\146\147\233\177\188\230\168\161\230\139\159\229\153\1681", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/bebedi15/SRM-Scripts/main/Bebedi9960/SRMHub"))()
end)
v377:Button("\230\177\137\229\140\150", function()
    loadstring(game:HttpGet("https://pastefy.app/ptl5LG8c/raw"))()
end)
v377:Button("\233\146\147\233\177\188\230\168\161\230\139\159\229\153\1682", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/reddythedev/Reddy-Hub/main/_Loader"))()
end)
local v378 = v11:Tab("\227\128\142\230\136\152\228\186\137\229\164\167\228\186\168\227\128\143", "7734068321"):section("\227\128\142\230\136\152\228\186\137\229\164\167\228\186\168\227\128\143", true)
v378:Button("\228\184\128\230\158\170\231\167\146\228\186\186", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/6b4XEjQF"))()
end)
v378:Button("\230\136\152\228\186\137\229\164\167\228\186\1681", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Macintosh1983/ChillHubMain/main/ChillHubOilWarfareTycoon.lua"))()
end)
v378:Button("\230\136\152\228\186\137\229\164\167\228\186\1682", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Nivex123456/War-Tycoon/main/Script"))()
end)
v378:Button("\230\136\152\228\186\137\229\164\167\228\186\1683", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MariyaFurmanova/Library/main/WarTycoon", true))()
end)
v378:Button("\230\136\152\228\186\137\229\164\167\228\186\1684", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nici002018/GNHub/master/GNHub.lua", true))()
end)
v378:Button("\230\136\152\228\186\137\229\164\167\228\186\1685", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MariyaFurmanova/Library/main/WarTycoon", true))()
end)
v378:Button("\230\136\152\228\186\137\229\164\167\228\186\1686", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/WarTycoon"))()
end)
v378:Button("\230\136\152\228\186\137\229\164\167\228\186\1687", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/megamoeus/UI-Engine-V2/main/OWTPublic"))()
end)
local v379 = v11:Tab("\227\128\142BF\227\128\143", "7734068321"):section("\227\128\142BF\227\128\143", true)
v379:Button("BF \227\128\142\230\177\137\229\140\150\227\128\143", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/Xiao-Yun-UWU/main/%E6%B5%B7%E8%B4%BC%E7%8E%8Bbf.lua", true))()
end)
v379:Button("\230\156\128\229\188\186", function()
    _G.HohoVersion = "v4"
    loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
end)
v379:Button("\230\156\128\229\188\186", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AkiraNus/UniquehubKak/main/FreeCr.Xenonhub"))()
end)
v379:Button("\229\136\183\230\128\170", function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/UPDATE-16-Blox-Fruits-Nub-V1-Hub-4583"))()
end)
v379:Button("\232\135\170\229\138\168\229\141\135\231\186\167", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua"))()
end)
v379:Button("\232\135\170\229\138\168\231\174\177\229\173\144", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
end)
v379:Button("\230\137\190\231\154\132", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxScriptsExploit/Blox-Fruits/main/Ripper%20M"))()
end)
v379:Button("\232\182\133\229\188\186", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Augustzyzx/UraniumMobile/main/UraniumKak.lua"))()
end)
v379:Button("BF\227\128\142HOHO\232\132\154\230\156\172\227\128\1431", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HohoV2/Free/BloxFruitFreeV3.lua"))()
end)
v379:Button("BF\227\128\142HOHO\232\132\154\230\156\172\227\128\1432", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
end)
v379:Label("\229\141\161\229\175\134\232\135\170\229\183\177\229\142\187DC")
local v380 = v11:Tab("\227\128\142\229\138\168\230\132\159\230\152\159\230\156\159\228\186\148\227\128\143", "7734068321"):section("\227\128\142\229\138\168\230\132\159\230\152\159\230\156\159\228\186\148\227\128\143", true)
v380:Button("\229\138\168\230\132\159\230\152\159\230\156\159\228\186\1481", function()
    loadstring(game:HttpGet("https://scriptblox.com/raw/XMAS-Event-or-Funky-Friday-Auto-Player-Mobile-6721"))()
end)
v380:Button("\229\138\168\230\132\159\230\152\159\230\156\159\228\186\1482", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua", true))()
end)
v380:Button("\229\138\168\230\132\159\230\152\159\230\156\159\228\186\1483", function()
    loadstring(game:HttpGet("https://scriptblox.com/raw/XMAS-Event-or-Funky-Friday-Auto-Player-Mobile-6721"))()
end)
v380:Button("\229\138\168\230\132\159\230\152\159\230\156\159\228\186\1484", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Nadir3709/RandomScript/main/FunkyFridayMobile"))()
end)
v380:Button("\229\138\168\230\132\159\230\152\159\230\156\159\228\186\148\232\135\170\229\138\168PK", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua", true))()
end)
local v381 = v11:Tab("\227\128\142\231\155\145\231\139\177\228\186\186\231\148\159\227\128\143", "7734068321")
local v382 = v381:section("\227\128\142\228\188\160\233\128\129\227\128\143", true)
v382:Button("\232\173\166\229\141\171\229\174\164", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
end)
v382:Button("\231\155\145\231\139\177\229\174\164\229\134\133", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
end)
v382:Button("\231\155\145\231\139\177\229\174\164\229\164\150", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
end)
v382:Button("\231\138\175\231\189\170\229\164\141\230\180\187\231\130\185", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 937.5891723632812, 93.09876251220703, 2063.031982421875)
end)
v382:Button("\228\188\160\233\128\129\233\153\162\229\173\144", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(788.5759887695312, 97.99992370605469, 2455.056640625)
end)
v382:Button("\228\188\160\233\128\129\232\173\166\232\189\166\229\186\147", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(602.7301635742188, 98.20000457763672, 2503.56982421875)
end)
v382:Button("\228\188\160\233\128\129\230\173\187\228\186\186\228\184\139\230\176\180\233\129\147", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(917.4256591796875, 78.69828033447266, 2416.18359375)
end)
v382:Button("\228\188\160\233\128\129\233\163\159\229\160\130", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(921.0059204101562, 99.98993682861328, 2289.23095703125)
end)
local v383 = v381:section("\227\128\142\232\132\154\230\156\172\227\128\143", true)
v383:Button("\230\151\160\230\149\140\230\168\161\229\188\143", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/LdTVujTA"))()
end)
v383:Button("\230\157\128\230\173\187\230\137\128\230\156\137\228\186\186", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/kXjfpFPh"))()
end)
v383:Button("\229\143\152\233\146\162\233\147\129\228\190\160", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/7prijqYH"))()
end)
v383:Button("\229\143\152\230\173\187\231\165\158", function()
    loadstring(game:HttpGet("https://pastebin.com/ewv9bbRp"))()
end)
v383:Button("\229\143\152\232\189\166\230\168\161\229\158\139", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zLe3e4BS"))()
end)
v383:Button("\229\143\152\230\136\144\232\173\166\229\175\159", function()
    workspace.Remote.TeamEvent:FireServer("Bright blue")
end)
v383:Button("\229\143\152\230\136\144\229\155\154\231\138\175", function()
    workspace.Remote.TeamEvent:FireServer("Bright orange")
end)
v383:Button("\230\157\128\230\173\187\229\133\137\231\142\175", "SSGH", false, function(p384)
    States.KillAura = p384
    if state then
        print("Kill Aura On")
        CreateKillPart()
    else
        print("Kill Aura Off")
        if Parts[1] and Parts[1].Name == "KillAura" then
            Parts[1]:Destroy()
            Parts[1] = nil
        end
    end
end)
function CreateKillPart()
    if Parts[1] then
        pcall(function()
            Parts[1]:Destroy()
        end)
        Parts[1] = nil
    end
    local v385 = Instance.new("Part", plr.Character)
    Instance.new("Highlight", v385).FillTransparency = 1
    v385.Anchored = true
    v385.CanCollide = false
    v385.CanTouch = false
    v385.Material = Enum.Material.SmoothPlastic
    v385.Transparency = 0.98
    v385.Material = Enum.Material.SmoothPlastic
    v385.BrickColor = BrickColor.White()
    v385.Size = Vector3.new(20, 2, 20)
    v385.Name = "KillAura"
    Parts[1] = v385
end
task.spawn(function()
    repeat
        task.wait()
    until plr.Character and char and char:FindFirstChildOfClass("Humanoid")
    if States.KillAura then
        CreateKillPart()
    end
end)
game:GetService("RunService").Stepped:Connect(function()
    if States.KillAura then
        local v386, v387, v388 = pairs(game.Players:GetPlayers())
        while true do
            local v389
            v388, v389 = v386(v387, v388)
            if v388 == nil then
                break
            end
            if v389 ~= game.Players.LocalPlayer and ((v389.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude < 14 and v389.Character.Humanoid.Health > 0) then
                local vu390 = {
                    v389
                }
                for _ = 1, 2 do
                    task.spawn(function()
                        game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(vu390))
                    end)
                end
            end
        end
    end
end)
v383:Button("\230\137\139\233\135\140\229\137\145\231\167\146\230\157\128", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/jian"))()
end)
v383:Button("\231\155\145\231\139\177\228\186\186\231\148\1591", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dalloc2/Roblox/main/TigerAdmin.lua"))()
end)
v383:Button("\231\155\145\231\139\177\228\186\186\231\148\1592", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))()
end)
v383:Button("\231\155\145\231\139\177\228\186\186\231\148\159\230\177\137\229\140\150", function()
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/fYMnAEeJ"))()
end)
local v391 = v11:Tab("\227\128\142\230\157\128\230\137\139\228\184\142\232\173\166\233\149\191\227\128\143", "7734068321"):section("\227\128\142\230\157\128\230\137\139\228\184\142\232\173\166\233\149\191\227\128\143", true)
v391:Button("\230\157\128\230\137\139\228\184\142\232\173\166\233\149\1911", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/yadbPQUm", true))()
end)
v391:Button("\230\157\128\230\137\139\228\184\142\232\173\166\233\149\191\231\167\146\230\157\128", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Deni210/murdersvssherrifsduels/main/rubyhub", true))()
end)
local v392 = v11:Tab("\227\128\142\229\183\180\230\142\140\230\168\161\230\139\159\229\153\168\227\128\143", "7734068321"):section("\227\128\142\229\183\180\230\142\140\230\168\161\230\139\159\229\153\168\227\128\143", true)
v392:Button("\230\151\160CD", "Toggle", false, function(p393)
    local v394 = game.Players.LocalPlayer
    local v395 = (v394.Character or v394.CharacterAdded:Wait()):FindFirstChildOfClass("Tool") or v394.Backpack:FindFirstChildOfClass("Tool")
    bazhangmnq = p393
    while bazhangmnq do
        local v396 = v395:FindFirstChildOfClass("LocalScript")
        v396:Clone()
        local v397 = v396:Clone()
        v397:Clone()
        v396:Destroy()
        v397.Parent = v395
        wait(0.1)
    end
end)
v392:Button("\232\142\183\229\143\150\232\174\161\230\149\176\229\153\168\230\137\139\229\165\151", function()
    fireclickdetector(game.Workspace.CounterLever.ClickDetector)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 100, 0)
    wait(0.2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    wait(121)
    local v398, v399, v400 = pairs(workspace.Maze:GetDescendants())
    while true do
        local v401
        v400, v401 = v398(v399, v400)
        if v400 == nil then
            break
        end
        if v401:IsA("ClickDetector") then
            fireclickdetector(v401)
        end
    end
end)
v392:Button("\229\156\176\231\137\162\228\186\174\229\186\166", "Toggle", false, function(p402)
    Light = p402
    if not Light then
        game.Lighting.Ambient = Color3.new(1, 1, 1)
    end
end)
v392:Button("\228\188\160\233\128\129", "Dropdown", {
    "\229\174\137\229\133\168\229\140\186",
    "\231\171\158\230\138\128\229\156\186",
    "\229\159\131\229\143\138\229\178\155",
    "\230\158\156\229\174\158\229\178\155",
    "\231\155\152\229\173\144",
    "\233\148\166\230\160\135\232\181\155",
    "\233\187\152\232\174\164\231\171\158\230\138\128\229\156\186"
}, function(p403)
    if p403 == "\229\174\137\229\133\168\229\140\186" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0, 40, 0)
    elseif p403 == "\231\171\158\230\138\128\229\156\186" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0, - 5, 0)
    elseif p403 == "\229\159\131\229\143\138\229\178\155" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(215, - 15.5, 0.5)
    elseif p403 == "\230\158\156\229\174\158\229\178\155" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.island5.Union.CFrame * CFrame.new(0, 3.25, 0)
    elseif p403 == "\231\155\152\229\173\144" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.Plate.CFrame * CFrame.new(0, 2, 0)
    elseif p403 == "\233\148\166\230\160\135\232\181\155" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Battlearena.Arena.CFrame * CFrame.new(0, 10, 0)
    elseif p403 == "\233\187\152\232\174\164\231\171\158\230\138\128\229\156\186" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(120, 360, - 3)
    end
end)
v392:Button("\229\164\141\229\143\164\230\138\128\232\131\189", "Toggle", false, function(p404)
    RetroSpam = p404
    while RetroSpam do
        game:GetService("ReplicatedStorage").RetroAbility:FireServer(RetroAbility)
        task.wait()
    end
end)
v392:Button("\229\164\141\229\143\164\230\138\128\232\131\189\233\128\137\230\139\169", "Dropdown", {
    "Rocket Launcher",
    "Ban Hammer",
    "Bomb"
}, function(p405)
    RetroAbility = p405
end)
v392:Button("\232\135\170\229\138\168\230\141\161\231\179\150\230\158\156", "Toggle", false, function(p406)
    CandyCornFarm = p406
    while CandyCornFarm do
        local v407, v408, v409 = pairs(workspace.CandyCorns:GetChildren())
        while true do
            local v410
            v409, v410 = v407(v408, v409)
            if v409 == nil then
                break
            end
            if v410:FindFirstChildWhichIsA("TouchTransmitter") then
                v410.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
        task.wait()
    end
end)
v392:Button("\232\142\183\229\143\150\231\130\188\233\135\145\230\156\175\229\184\136\230\157\144\230\150\153", "Toggle", false, function(p411)
    AlchemistIngredients = p411
    if game.Players.LocalPlayer.leaderstats.Glove.Value == "Alchemist" then
        while AlchemistIngredients do
            game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Mushroom")
            game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Glowing Mushroom")
            game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Fire Flower")
            game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Winter Rose")
            game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Dark Root")
            game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Dire Flower")
            game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Autumn Sprout")
            game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Elder Wood")
            game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Hazel Lily")
            game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Wild Vine")
            game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Jade Stone")
            game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Lamp Grass")
            game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Plane Flower")
            game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Blood Rose")
            game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Red Crystal")
            game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Blue Crystal")
            task.wait()
        end
    end
end)
v392:Button("\232\135\170\229\138\168\229\138\160\229\133\165\231\171\158\230\138\128\229\156\186", "Toggle", false, function(p412)
    AutoEnterArena = p412
    while AutoEnterArena do
        if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 0)
            firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 1)
        end
        task.wait()
    end
end)
v392:Button("\232\135\170\229\138\168\229\133\137\230\179\162\231\144\131", "Toggle", false, function(p413)
    if Person == nil then
        Person = game.Players.LocalPlayer.Name
    end
    _G.RojoSpam = p413
    while _G.RojoSpam do
        game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {
            game.Players[Person].Character.HumanoidRootPart.CFrame
        })
        task.wait()
    end
end)
v392:Button("Rojo\230\138\128\232\131\189", function(p414)
    _G.RojoSpam = p414
    game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Charge")
    wait(6)
    game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    })
    task.wait()
end)
v392:Button("\233\159\179\231\172\166\230\138\128\232\131\189", "Toggle", false, function(p415)
    _G.RhythmSpam = p415
    while _G.RhythmSpam do
        game:GetService("ReplicatedStorage").rhythmevent:FireServer("AoeExplosion", 0)
        task.wait()
    end
end)
v392:Button("Null\230\138\128\232\131\189", "Toggle", false, function(p416)
    NullSpam = p416
    while NullSpam do
        game:GetService("ReplicatedStorage").NullAbility:FireServer()
        task.wait()
    end
end)
v392:Button("\232\135\170\229\138\168\230\139\190\229\143\150\233\187\132\233\135\145\230\158\156\229\174\158", "Toggle", false, function(p417)
    SlappleFarm = p417
    while SlappleFarm do
        local v418, v419, v420 = ipairs(workspace.Arena.island5.Slapples:GetDescendants())
        while true do
            local v421
            v420, v421 = v418(v419, v420)
            if v420 == nil then
                break
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and (game.Players.LocalPlayer.Character:FindFirstChild("entered") and (v421.Name == "Glove" and v421:FindFirstChildWhichIsA("TouchTransmitter"))) then
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v421, 0)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v421, 1)
            end
        end
        task.wait()
    end
end)
v392:Button("\232\135\170\229\138\168\230\141\161\233\163\158\232\161\140\229\174\157\231\143\160", "Toggle", false, function(p422)
    Jetfarm = p422
    while Jetfarm do
        local v423, v424, v425 = pairs(game.Workspace:GetChildren())
        while true do
            local v426
            v425, v426 = v423(v424, v425)
            if v425 == nil then
                break
            end
            if v426.Name == "JetOrb" and v426:FindFirstChild("TouchInterest") then
                firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v426, 0)
                firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v426, 1)
            end
        end
        task.wait()
    end
end)
v392:Button("\232\135\170\229\138\168\230\141\161\231\155\184\228\189\141\231\144\131", "Toggle", false, function(p427)
    Phasefarm = p427
    while Phasefarm do
        local v428, v429, v430 = pairs(game.Workspace:GetChildren())
        while true do
            local v431
            v430, v431 = v428(v429, v430)
            if v430 == nil then
                break
            end
            if v431.Name == "PhaseOrb" and v431:FindFirstChild("TouchInterest") then
                firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v431, 0)
                firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v431, 1)
            end
        end
        task.wait()
    end
end)
v392:Button("\232\135\170\229\138\168\229\136\183bob", "Toggle", false, function(p432)
    ReplicaFarm = p432
    while ReplicaFarm do
        local v433, v434, v435 = pairs(workspace:GetChildren())
        while true do
            local v436
            v435, v436 = v433(v434, v435)
            if v435 == nil then
                break
            end
            if v436.Name:match(game.Players.LocalPlayer.Name) and v436:FindFirstChild("HumanoidRootPart") then
                game.ReplicatedStorage.b:FireServer(v436:WaitForChild("HumanoidRootPart"))
            end
        end
        task.wait()
        game:GetService("ReplicatedStorage").Duplicate:FireServer()
        task.wait(7)
    end
end)
v392:Button("\230\151\160\233\153\144\229\143\141\232\189\172", "Toggle", false, function(p437)
    _G.InfReverse = p437
    while _G.InfReverse do
        game:GetService("ReplicatedStorage").ReverseAbility:FireServer()
        wait(6)
    end
end)
v392:Button("\229\189\169\232\153\185\232\167\146\232\137\178(\232\163\133\229\164\135\233\187\132\233\135\145\230\137\139\229\165\151)", "Toggle", false, function(p438)
    _G.Rainbow = p438
    while _G.Rainbow do
        for v439 = 0, 1, 0.025 do
            game:GetService("ReplicatedStorage").Goldify:FireServer(false, BrickColor.new(Color3.fromHSV(v439, 1, 1)))
            task.wait()
        end
    end
end)
v392:Button("\233\152\178\229\135\187\233\163\158", "Toggle", false, function(p440)
    AntiRagdoll = p440
    if AntiRagdoll then
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
            game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Changed:Connect(function()
                if game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true and AntiRagdoll then
                    repeat
                        task.wait()
                        game.Players.LocalPlayer.Character.Torso.Anchored = true
                    until game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
                    game.Players.LocalPlayer.Character.Torso.Anchored = false
                end
            end)
        end)
    end
end)
v392:Button("\229\143\141\232\153\154\231\169\186(\233\148\166\230\160\135\232\181\155\228\185\159\230\156\137\230\149\136\230\158\156)", "Toggle", false, function(p441)
    game.Workspace.dedBarrier.CanCollide = p441
    game.Workspace.TAntiVoid.CanCollide = p441
end)
v392:Button("\233\152\178\230\173\187\228\186\161\229\177\143\233\154\156", "Toggle", false, function(p442)
    if p442 == true then
        local v443, v444, v445 = pairs(game.Workspace.DEATHBARRIER:GetChildren())
        while true do
            local v446
            v445, v446 = v443(v444, v445)
            if v445 == nil then
                break
            end
            if v446.ClassName == "Part" and v446.Name == "BLOCK" then
                v446.CanTouch = false
            end
        end
        workspace.DEATHBARRIER.CanTouch = false
        workspace.DEATHBARRIER2.CanTouch = false
        workspace.dedBarrier.CanTouch = false
        workspace.ArenaBarrier.CanTouch = false
        workspace.AntiDefaultArena.CanTouch = false
    else
        local v447, v448, v449 = pairs(game.Workspace.DEATHBARRIER:GetChildren())
        while true do
            local v450
            v449, v450 = v447(v448, v449)
            if v449 == nil then
                break
            end
            if v450.ClassName == "Part" and v450.Name == "BLOCK" then
                v450.CanTouch = true
            end
        end
        workspace.DEATHBARRIER.CanTouch = true
        workspace.DEATHBARRIER2.CanTouch = true
        workspace.dedBarrier.CanTouch = true
        workspace.ArenaBarrier.CanTouch = true
        workspace.AntiDefaultArena.CanTouch = true
    end
end)
v392:Button("\229\143\141\229\183\180\232\165\191", "Toggle", false, function(p451)
    if p451 == true then
        local v452, v453, v454 = pairs(game.Workspace.Lobby.brazil:GetChildren())
        while true do
            local v455
            v454, v455 = v452(v453, v454)
            if v454 == nil then
                break
            end
            v455.CanTouch = false
        end
    else
        local v456, v457, v458 = pairs(game.Workspace.Lobby.brazil:GetChildren())
        while true do
            local v459
            v458, v459 = v456(v457, v458)
            if v458 == nil then
                break
            end
            v459.CanTouch = true
        end
    end
end)
v392:Button("\229\143\141\230\173\187\228\186\161\230\150\185\229\157\151", "Toggle", false, function(p460)
    if p460 == true then
        workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
    else
        workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true
    end
end)
v392:Button("\229\143\141\228\184\138\229\184\157\230\138\128\232\131\189", "Toggle", false, function(p461)
    AntiTimestop = p461
    while AntiTimestop do
        local v462, v463, v464 = pairs(game.Players.LocalPlayer.Character:GetChildren())
        while true do
            local v465
            v464, v465 = v462(v463, v464)
            if v464 == nil then
                break
            end
            if v465.ClassName == "Part" then
                v465.Anchored = false
            end
        end
        task.wait()
    end
end)
v392:Button("\229\143\141\233\177\191\233\177\188", "Toggle", false, function(p466)
    AntiSquid = p466
    if AntiSquid == false then
        game.Players.LocalPlayer.PlayerGui.SquidInk.Enabled = true
    end
    while AntiSquid do
        if game.Players.LocalPlayer.PlayerGui:FindFirstChild("SquidInk") then
            game.Players.LocalPlayer.PlayerGui.SquidInk.Enabled = false
        end
        task.wait()
    end
end)
v392:Button("\229\143\141\231\165\158\229\156\163\230\157\176\229\133\139", "Toggle", false, function(p467)
    game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Disabled = p467
end)
v392:Button("\229\143\141\228\188\160\233\128\129\229\184\166", "Toggle", false, function(p468)
    game.Players.LocalPlayer.PlayerScripts.ConveyorVictimized.Disabled = p468
end)
v392:Button("\229\143\141\230\157\191\231\160\150", "Toggle", false, function(p469)
    AntiBrick = p469
    while AntiBrick do
        local v470, v471, v472 = pairs(game.Workspace:GetChildren())
        while true do
            local v473
            v472, v473 = v470(v471, v472)
            if v472 == nil then
                break
            end
            if v473.Name == "Union" then
                v473.CanTouch = false
            end
        end
        task.wait()
    end
end)
v392:Button("\229\143\141Null", "Toggle", false, function(p474)
    AntiNull = p474
    while AntiNull do
        local v475, v476, v477 = pairs(game.Workspace:GetChildren())
        while true do
            local v478
            v477, v478 = v475(v476, v477)
            if v477 == nil then
                break
            end
            if v478.Name == "Imp" and v478:FindFirstChild("Body") then
                shared.gloveHits[game.Players.LocalPlayer.leaderstats.Glove.Value]:FireServer(v478.Body, true)
            end
        end
        task.wait()
    end
end)
v392:Button("\232\135\170\229\138\168\229\136\183\229\183\180\230\142\140", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Farm"))()
end)
v392:Button("\229\183\180\230\142\140\230\168\161\230\139\159\229\153\1681", function()
    loadstring(game:HttpGet("https://lkhub.net/s/loader.lua"))()
end)
v392:Button("\229\183\180\230\142\140\230\168\161\230\139\159\229\153\1682", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Battles"))()
end)
v392:Button("\229\183\180\230\142\140\230\168\161\230\139\159\229\153\1683", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dizyhvh/slap_battles_gui/main/0.lua"))()
end)
v11:Tab("\227\128\14251\229\140\186\227\128\143", "7734068321"):section("\227\128\14251\229\140\186\227\128\143", true):Button("51\229\140\186  1", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Saktk-In-Area51/main/Area51", true))()
end)
v11:Tab("\227\128\142\231\159\173\228\191\161\230\168\161\230\139\159\229\153\168\227\128\143", "7734068321"):section("\227\128\142\231\159\173\228\191\161\230\168\161\230\139\159\229\153\168\227\128\143", true):Button("\231\159\173\228\191\161\230\168\161\230\139\159\229\153\1681", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/9hxkxUZ5", true))()
end)
v11:Tab("\227\128\142\229\133\139\233\154\134\229\164\167\228\186\168\227\128\143", "7734068321"):section("\227\128\142\229\133\139\233\154\134\229\164\167\228\186\168\227\128\143", true):Button("\229\133\139\233\154\134\229\164\167\228\186\1681", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HELLLO1073/RobloxStuff/main/CT-Destroyer"))()
end)
local v479 = v11:Tab("\227\128\142\229\136\128\229\136\131\231\144\131\227\128\143", "7734068321"):section("\227\128\142\229\136\128\229\136\131\231\144\131\227\128\143", true)
v479:Button("\233\163\158\232\161\140", function()
    loadstring(game:HttpGet("https://pastefy.app/J9x7RnEZ/raw"))()
end)
v479:Button("\229\136\128\229\136\131\231\144\131\232\135\170\229\138\168\230\160\188\230\140\161", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlade%20Ball%20Parry%20V4.0.0", true))()
end)
v479:Button("\229\136\128\229\136\131\231\144\1311", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Unknownkellymc1/Unknownscripts/main/slap-battles"))()
end)
v479:Button("\229\136\128\229\136\131\231\144\1312", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BladeBall/main/redz9999"))()
end)
v479:Button("\229\136\128\229\136\131\231\144\1313", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Neoncat765/Neon.C-Hub-X/main/UnknownVersion"))()
end)
local v480 = v11:Tab("\227\128\142\230\136\152\230\150\151\229\139\135\229\163\171\227\128\143", "7734068321"):section("\227\128\142\230\136\152\230\150\151\229\139\135\229\163\171\227\128\143", true)
v480:Button("\230\136\152\230\150\151\229\139\135\229\163\1711", function()
    loadstring(game:HttpGet("https://paste.gg/p/anonymous/697fc3cad5f743508318cb7399e89432/files/b5923e52edab4e5c91e46b74563d0ae8/raw"))()
end)
v480:Button("\230\136\152\230\150\151\229\139\135\229\163\1712", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/frkfx/Combat-Warriors/main/Script"))()
end)
local v481 = v11:Tab("\227\128\142\232\131\140\228\184\138\229\143\170\229\155\160\229\137\145\227\128\143", "7734068321"):section("\227\128\142\232\131\140\228\184\138\229\143\170\229\155\160\229\137\145\227\128\143", true)
v481:Button("\232\131\140\228\184\138\229\143\170\229\155\160\229\137\1451", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0SwordWarriors"))()
end)
v481:Button("\232\131\140\228\184\138\229\143\170\229\155\160\229\137\1452", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/blox-hub-roblox/021bad62bbc6a0adc4ba4e625f9ad7df/raw/c89af6e1acf587d09e4ce4bc7510e7100e0c0065/swordWarrior.lua", true))()
end)
local v482 = v11:Tab("\227\128\142\229\189\169\232\153\185\230\156\139\229\143\139\227\128\143", "7734068321"):section("\227\128\142\229\189\169\232\153\185\230\156\139\229\143\139\227\128\143", true)
v482:Button("\229\189\169\232\153\185\230\156\139\229\143\1391", function()
    loadstring(game:HttpGet("https://pastefy.app/XoNv04vR/raw"))()
end)
v482:Button("\229\189\169\232\153\185\230\156\139\229\143\1392", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JNHHGaming/Rainbow-Friends/main/Rainbow%20Friends"))()
end)
v11:Tab("\227\128\142\231\160\180\229\157\143\232\128\133\232\176\156\229\155\1622\227\128\143", "7734068321"):section("\227\128\142\231\160\180\229\157\143\232\128\133\232\176\156\229\155\1622\227\128\143", true):Button("\231\160\180\229\157\143\232\128\133\232\176\156\229\155\1622  1", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ethanoj1/EclipseMM2/master/Script", true))()
end)
local v483 = v11:Tab("\227\128\142EVAde  \229\164\167\233\128\131\232\132\177\227\128\143", "7734068321"):section("\227\128\142EVAde  \229\164\167\233\128\131\232\132\177\227\128\143", true)
v483:Button("\229\164\167\233\128\131\232\132\1771", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/PepesGH1/stuff/main/evadeloader.lua"))()
end)
v483:Button("\229\164\167\233\128\131\232\132\1772", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/%E4%BA%91%E8%84%9A%E6%9C%ACEvade.lua"))()
end)
local v484 = v11:Tab("\227\128\142\229\155\189\231\142\139\233\129\151\228\186\167\227\128\143", "7734068321"):section("\227\128\142\229\155\189\231\142\139\233\129\151\228\186\167\227\128\143", true)
v484:Button("\229\155\189\231\142\139\233\129\151\228\186\1671", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sannin9000/scripts/main/kinglegacy.lua"))()
end)
v484:Button("\229\155\189\231\142\139\233\129\151\228\186\1672", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/master/legacy"))()
end)
v484:Button("\229\155\189\231\142\139\233\129\151\228\186\1673", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/hajibeza/RIPPER-HUB/main/King%20Leagacy"))()
end)
v484:Button("\229\155\189\231\142\139\233\129\151\228\186\1674", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xDepressionx/Free-Script/main/KingLegacy.lua"))()
end)
v484:Button("\229\155\189\231\142\139\233\129\151\228\186\1675", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xOne2/King-Legacy/main/README.md"))()
end)
local v485 = v11:Tab("\227\128\142\233\128\160\232\136\185\229\175\187\229\174\157\227\128\143", "7734068321"):section("\227\128\142\233\128\160\232\136\185\229\175\187\229\174\157\227\128\143", true)
v485:Button("\233\128\160\232\136\185\229\175\187\229\174\1571", function()
    loadstring(game:HttpGet("http://dirtgui.xyz/BuildABoat.lua", true))()
end)
v485:Button("\233\128\160\232\136\185\229\175\187\229\174\1572", function()
    loadstring(game:HttpGet("https://pastefy.app/hvV1c4nO/raw"))()
end)
v485:Button("\229\164\141\229\136\182\229\136\171\228\186\186\231\154\132\232\136\185", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/max2007killer/auto-build-not-limit/main/autobuild.txt"))()
end)
v485:Button("\229\136\183\233\146\177", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/urmomjklol69/GoldFarmBabft/main/GoldFarm.lua", true))()
end)
local v486 = v11:Tab("\227\128\142\233\178\168\229\143\163\230\177\130\231\148\159\227\128\143", "7734068321"):section("\227\128\142\233\178\168\229\143\163\230\177\130\231\148\159\227\128\143", true)
v486:Button("\232\136\185\229\143\170\230\143\144\229\143\150\229\153\168", "FreeBoat", {
    "\230\145\169\230\137\152\232\137\135",
    "\230\145\169\230\137\152\232\137\135",
    "\231\139\172\232\167\146\229\133\189\230\140\186",
    "\230\145\169\230\137\152\232\137\135",
    "\231\186\162\233\169\172\230\158\151\233\177\188",
    "\229\141\149\230\160\128\229\184\134\232\136\185",
    "\230\139\150\232\136\185",
    "\229\176\143\232\136\185\230\145\169\230\137\152\232\137\135",
    "\230\145\169\230\137\152\232\137\135\231\148\156\231\148\156\229\156\136",
    "\233\169\172\230\158\151\233\177\188",
    "\231\174\161\232\136\185",
    "\230\184\148\232\136\185",
    "\231\187\180\228\186\172\232\136\185",
    "\229\176\143\230\160\145\230\158\151\229\184\134\232\136\185",
    "\231\186\162\229\134\160\230\145\169\230\137\152\232\137\135",
    "\229\143\140\228\189\147\232\136\185",
    "\230\136\152\230\150\151\232\136\185",
    "\230\184\184\232\136\185",
    "\233\184\173\230\181\183\229\134\155\233\153\134\230\136\152\233\152\159",
    "\230\180\190\229\175\185\232\136\185",
    "\229\134\155\228\186\139\230\189\156\232\137\135",
    "\229\167\156\233\165\188\232\146\184\230\177\189\232\136\185",
    "\233\155\170\230\169\1352022",
    "\233\155\170\229\156\176\230\145\169\230\137\152",
    "\230\184\184\232\189\174"
}, function(p487)
    game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(p487)
end)
v486:Button("\232\135\170\229\138\168\230\157\128\233\178\168\233\177\188", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Misc%20Scripts/sharkbite2.lua", true))()
end)
v486:Button("\233\178\168\229\143\163\230\177\130\231\148\1591", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/YYVLbzVg", true))()
end)
v486:Button("\233\178\168\229\143\163\230\177\130\231\148\1592", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LOOF-sys/Roblox-Shit/main/SharkBite.lua", true))()
end)
v486:Button("\233\178\168\229\143\163\230\177\130\231\148\1593", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lolboxo/SharkBiteV3/main/SharkBiteV3.1"))()
end)
v486:Button("\233\178\168\229\143\163\230\177\130\231\148\159\229\136\183\232\136\185", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ghostapustaja/legionhub/main/sharkbite2", true))()
end)
local v488 = v11:Tab("\227\128\142\231\160\180\229\157\143\230\168\161\230\139\159\229\153\168\227\128\143", "7734068321"):section("\227\128\142\231\160\180\229\157\143\230\168\161\230\139\159\229\153\168\227\128\143", true)
v488:Button("\231\160\180\229\157\143\230\168\161\230\139\159\229\153\1681", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AquaModz/DestructionSIMModded/main/DestructionSimAqua.lua"))()
end)
v488:Button("\230\151\160\233\153\144\229\176\132\229\135\187", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AquaModz/DestructionSIMModded/main/DestructionSimAqua.lua"))()
end)
local v489 = v11:Tab("\227\128\142\233\169\190\233\169\182\229\184\157\229\155\189\227\128\143", "7734068321"):section("\227\128\142\233\169\190\233\169\182\229\184\157\229\155\189\227\128\143", true)
v489:Button("\233\169\190\233\169\182\229\184\157\229\155\1891", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/zeuise0002/SSSWWW222/main/README.md", true))()
end)
v489:Button("\233\169\190\233\169\182\229\184\157\229\155\1892", function()
    loadstring(game:HttpGet("https://soggyhubv2.vercel.app"))()
end)
v489:Button("\233\169\190\233\169\182\229\184\157\229\155\1893", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/main/drivingempire", true))()
end)
v489:Button("\233\169\190\233\169\182\229\184\157\229\155\189NEO", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cool83birdcarfly02six/Lightux/main/README.md", true))()
end)
v11:Tab("\227\128\142\233\163\158\232\161\140\230\175\148\232\181\155\227\128\143", "7734068321"):section("\227\128\142\233\163\158\232\161\140\230\175\148\232\181\155\227\128\143", true):Button("\233\163\158\232\161\140\230\175\148\232\181\1551", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NightCoded/script/main/fly-race.lua"))()
end)
local v490 = v11:Tab("\227\128\142\232\182\133\231\186\167\229\164\167\229\138\155\229\163\171\230\168\161\230\139\159\229\153\168\227\128\143", "7734068321"):section("\227\128\142\232\182\133\231\186\167\229\164\167\229\138\155\229\163\171\230\168\161\230\139\159\229\153\168\227\128\143", true)
v490:Button("\228\188\160\233\128\129\229\136\176\229\188\128\229\167\139\229\140\186\229\159\159", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(85.86943817138672, 11.751949310302734, - 198.07127380371094)
end)
v490:Button("\228\188\160\233\128\129\229\136\176\229\129\165\232\186\171\229\140\186\229\159\159", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(93.60747528076172, 11.751947402954102, - 10.266206741333008)
end)
v490:Button("\228\188\160\233\128\129\229\136\176\233\163\159\231\137\169\229\140\186\229\159\159", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(78.86384582519531, 11.751947402954102, 228.9690399169922)
end)
v490:Button("\228\188\160\233\128\129\229\136\176\232\161\151\230\156\186\229\140\186\229\159\159", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88.99887084960938, 11.751949310302734, 502.90997314453125)
end)
v490:Button("\228\188\160\233\128\129\229\136\176\229\134\156\229\156\186\229\140\186\229\159\159", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(85.6707763671875, 11.751947402954102, 788.5997314453125)
end)
v490:Button("\228\188\160\233\128\129\229\136\176\229\159\142\229\160\161\229\140\186\229\159\159", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(84.87281036376953, 11.84177017211914, 1139.7509765625)
end)
v490:Button("\228\188\160\233\128\129\229\136\176\232\146\184\230\177\189\230\156\139\229\133\139\229\140\186\229\159\159", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(92.63227081298828, 11.841767311096191, 1692.7890625)
end)
v490:Button("\228\188\160\233\128\129\229\136\176\232\191\170\230\150\175\231\167\145\229\140\186\229\159\159", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(98.69613647460938, 16.015085220336914, 2505.213134765625)
end)
v490:Button("\228\188\160\233\128\129\229\136\176\229\164\170\231\169\186\229\140\186\229\159\159", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88.42948150634766, 11.841769218444824, 3425.941650390625)
end)
v490:Button("\228\188\160\233\128\129\229\136\176\231\179\150\230\158\156\229\140\186\229\159\159", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.55805969238281, 11.841663360595703, 4340.69921875)
end)
v490:Button("\233\128\129\229\136\176\229\174\158\233\170\140\229\174\164\229\140\186\229\159\159", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(78.00920867919922, 11.841663360595703, 5226.60205078125)
end)
v490:Button("\228\188\160\233\128\129\229\136\176\231\131\173\229\184\166\229\140\186\229\159\159", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(80.26090240478516, 12.0902681350708, 6016.16552734375)
end)
v490:Button("\228\188\160\233\128\129\229\136\176\230\129\144\233\190\153\229\140\186\229\159\159", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(38.4753303527832, 25.801530838012695, 6937.779296875)
end)
v490:Button("\228\188\160\233\128\129\229\136\176\229\164\141\229\143\164\229\140\186\229\159\159", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99.81867218017578, 12.89099407196045, 7901.74755859375)
end)
v490:Button("\228\188\160\233\128\129\229\136\176\229\134\172\229\173\163\229\140\186\229\159\159", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.47243881225586, 11.841662406921387, 8983.810546875)
end)
v490:Button("\228\188\160\233\128\129\229\136\176\230\183\177\230\181\183\229\140\186\229\159\159", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(105.36250305175781, 26.44820213317871, 9970.0849609375)
end)
v490:Button("\228\188\160\233\128\129\229\136\176\231\139\130\233\135\142\232\165\191\233\131\168\229\140\186\229\159\159", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(68.69414520263672, 15.108586311340332, 10938.654296875)
end)
v490:Button("\228\188\160\233\128\129\229\136\176\232\177\170\229\141\142\229\133\172\229\175\147\229\140\186\229\159\159", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.75145721435547, 11.313281059265137, 12130.349609375)
end)
v490:Button("\228\188\160\233\128\129\229\136\176\229\174\157\229\137\145\230\136\152\230\150\151\229\140\186\229\159\159", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111.25597381591797, 11.408829689025879, 12945.57421875)
end)
v490:Button("\228\188\160\233\128\129\229\136\176\231\171\165\232\175\157\229\140\186\229\159\159", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(121.14932250976562, 11.313281059265137, 14034.50390625)
end)
v490:Button("\228\188\160\233\128\129\229\136\176\230\161\131\232\138\177\229\140\186\229\159\159", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(108.2142333984375, 11.813281059265137, 15131.861328125)
end)
v490:Button("\228\188\160\233\128\129\229\136\176\229\142\168\230\136\191\229\140\186\229\159\159", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.78338623046875, 21.76291847229004, 16204.9755859375)
end)
v490:Button("\228\188\160\233\128\129\229\136\176\228\184\139\230\176\180\233\129\147\229\140\186\229\159\159", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(47.36086654663086, 12.25178050994873, 17656.04296875)
end)
v490:Button("\232\182\133\231\186\167\229\164\167\229\138\155\229\163\171\230\168\161\230\139\159\229\153\1681", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0strongman", true))()
end)
v490:Button("\232\182\133\231\186\167\229\164\167\229\138\155\229\163\171\230\168\161\230\139\159\229\153\1682", function()
    loadstring(game:HttpGet("https://pastefy.app/aO18ZEB9/raw"))()
end)
v490:Button("\232\182\133\231\186\167\229\164\167\229\138\155\229\163\171\230\168\161\230\139\159\229\153\1683", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/hngamingroblox/scripts/main/strongman%20simulator"))()
end)
v490:Button("\232\182\133\231\186\167\229\164\167\229\138\155\229\163\171\230\168\161\230\139\159\229\153\1684", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0strongman", true))()
end)
v11:Tab("\227\128\142\228\184\190\233\135\141\230\168\161\230\139\159\229\153\168\227\128\143", "7734068321"):section("\227\128\142\228\184\190\233\135\141\230\168\161\230\139\159\229\153\168\227\128\143", true):Button("\228\184\190\233\135\141\230\168\161\230\139\159\229\153\1681", function()
    loadstring(game:HttpGet("https://pastefy.app/KSriAk53/raw"))()
end)
local v491 = v11:Tab("\227\128\142\230\139\179\229\135\187\230\168\161\230\139\159\229\153\168\227\128\143", "7734068321"):section("\227\128\142\230\139\179\229\135\187\230\168\161\230\139\159\229\153\168\227\128\143", true)
v491:Button("\230\139\179\229\135\187\230\168\161\230\139\159\229\153\1681", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Solx69/Shit-Boy-Hub-Main/main/Master.lua"))()
end)
v491:Button("\230\139\179\229\135\187\230\168\161\230\139\159\229\153\1682", function()
    loadstring(game:HttpGet("https://pastefy.app/T4O1SA3q/raw"))()
end)
v11:Tab("\227\128\142\230\136\145\231\154\132\233\164\144\229\142\133\227\128\143", "7734068321"):section("\227\128\142\230\136\145\231\154\132\233\164\144\229\142\133\227\128\143", true):Button("\230\136\145\231\154\132\233\164\144\229\142\1331", function()
    loadstring(game:HttpGet("https://pastefy.app/5R1Ch6kk/raw"))()
end)
local v492 = v11:Tab("\227\128\142\230\151\151\229\184\156\230\136\152\228\186\137\227\128\143", "7734068321"):section("\227\128\142\230\151\151\229\184\156\230\136\152\228\186\137\227\128\143", true)
v492:Button("\230\151\151\229\184\156\230\136\152\228\186\1371", function()
    loadstring(game:HttpGet("https://pastefy.app/otEg6PJV/raw"))()
end)
v492:Button("\230\151\151\229\184\156\230\136\152\228\186\1372", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Infinity2346/Tect-Menu/main/Flag%20Wars.txt"))()
end)
v11:Tab("\227\128\142COOP \229\144\136\228\189\156\231\164\190\227\128\143", "7734068321"):section("\227\128\142COOP \229\144\136\228\189\156\231\164\190\227\128\143", true):Button("\233\163\158\232\161\140", function()
    loadstring(game:HttpGet("https://pastefy.app/J9x7RnEZ/raw"))()
end)
v11:Tab("\227\128\142\229\134\178\231\170\129\228\185\139\230\181\183\227\128\143", "7734068321"):section("\227\128\142\229\134\178\231\170\129\228\185\139\230\181\183\227\128\143", true):Button("\233\163\158\232\161\140", function()
    loadstring(game:HttpGet("https://pastefy.app/J9x7RnEZ/raw"))()
end)
v11:Tab("\227\128\142\230\128\170\229\133\189\229\174\135\229\174\153\227\128\143", "7734068321"):section("\227\128\142\230\128\170\229\133\189\229\174\135\229\174\153\227\128\143", true):Button("\230\128\170\229\133\189\229\174\135\229\174\1531", function()
    loadstring(game:HttpGet("https://pastefy.app/oRWEIEcJ/raw"))()
end)
v11:Tab("\227\128\142\230\129\144\230\128\150\229\165\182\229\165\182\227\128\143", "7734068321"):section("\227\128\142\230\129\144\230\128\150\229\165\182\229\165\182\227\128\143", true):Button("\230\129\144\230\128\150\229\165\182\229\165\1821", function()
    loadstring(game:HttpGet("https://pastefy.app/o688Jvmn/raw"))()
end)
v11:Tab("\227\128\142\229\165\182\233\133\170\233\128\131\228\186\161\227\128\143", "7734068321"):section("\227\128\142\229\165\182\233\133\170\233\128\131\228\186\161\227\128\143", true):Button("\229\165\182\233\133\170\233\128\131\228\186\1611", function()
    loadstring(game:HttpGet("https://pastefy.app/IIpzN8f5/raw"))()
end)
v11:Tab("\227\128\142\230\158\129\233\128\159\229\165\148\233\169\176\227\128\143", "7734068321"):section("\227\128\142\230\158\129\233\128\159\229\165\148\233\169\176\227\128\143", true):Button("\230\158\129\233\128\159\229\165\148\233\169\1761", function()
    loadstring(game:HttpGet("https://pastefy.app/Y7607jwb/raw"))()
end)
v11:Tab("\227\128\142\229\176\132\229\135\187\229\133\137\230\157\159\230\168\161\230\139\159\229\153\168\227\128\143", "7734068321"):section("\227\128\142\229\176\132\229\135\187\229\133\137\230\157\159\230\168\161\230\139\159\229\153\168\227\128\143", true):Button("\229\176\132\229\135\187\229\133\137\230\157\159\230\168\161\230\139\159\229\153\1681", function()
    loadstring(game:HttpGet("https://pastefy.app/51yMuaCc/raw"))()
end)
v11:Tab("\227\128\142\229\144\136\229\185\182\230\187\180\231\174\161\227\128\143", "7734068321"):section("\227\128\142\229\144\136\229\185\182\230\187\180\231\174\161\227\128\143", true):Button("\229\144\136\229\185\182\230\187\180\231\174\1611", function()
    loadstring(game:HttpGet("https://pastefy.app/NpBrBCqM/raw"))()
end)
v11:Tab("\227\128\142\231\139\130\233\135\142\232\165\191\233\131\168\227\128\143", "7734068321"):section("\227\128\142\231\139\130\233\135\142\232\165\191\233\131\168\227\128\143", true):Button("\231\139\130\233\135\142\232\165\191\233\131\168", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KeoneGithub/KeoneGithub/main/WildWestLean", true))()
end)
v11:Tab("\227\128\142\229\137\145\230\150\151\229\163\171\230\168\161\230\139\159\229\153\168\227\128\143", "7734068321"):section("\227\128\142\229\137\145\230\150\151\229\163\171\230\168\161\230\139\159\229\153\168\227\128\143", true):Button("\229\137\145\230\150\151\229\163\171\230\168\161\230\139\159\229\153\168", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/bebedi15/DisticHub/main/Loader.lua"))()
end)
v11:Tab("\227\128\142\229\134\155\228\186\139\229\164\167\228\186\168\227\128\143", "7734068321"):section("\227\128\142\229\134\155\228\186\139\229\164\167\228\186\168\227\128\143", true):Button("\229\134\155\228\186\139\229\164\167\228\186\168", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/thedragonslayer2/Key-System/main/Load.lua"))()
end)
local v493 = v11:Tab("\227\128\142\230\156\128\229\188\186\230\136\152\229\156\186\227\128\143", "7734068321"):section("\227\128\142\230\156\128\229\188\186\230\136\152\229\156\186\227\128\143", true)
v493:Button("\230\156\128\229\188\186\230\136\152\229\156\186", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/SaitamaBattlegrounds.lua"))()
end)
v493:Button("\230\156\128\229\188\186\230\136\152\229\156\1862", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/zeuise0002/SSSWWW222/main/README.md", true))()
end)
v11:Tab("\227\128\142\229\162\168\230\176\180\230\184\184\230\136\143\227\128\143", "7734068321"):section("\227\128\142\229\162\168\230\176\180\230\184\184\230\136\143\227\128\143", true):Button("\229\162\168\230\176\180\230\184\184\230\136\143\230\177\137\229\140\150", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Xingtaiduan/Script/refs/heads/main/Games/\229\162\168\230\176\180\230\184\184\230\136\143.lua"))()
end)
local v494 = v11:Tab("\227\128\142\230\173\187\233\147\129\232\189\168\227\128\143", "7734068321"):section("\227\128\142\230\173\187\233\147\129\232\189\168\227\128\143", true)
v494:Button("\230\173\187\233\147\129\232\189\1681", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/refs/heads/main/TbaoHubDeadRails"))()
end)
v494:Button("\230\173\187\233\147\129\232\189\168\229\136\183\229\141\183", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JsYb666/Item/refs/heads/main/%E5%88%B7%E5%80%BA%E5%88%B8"))()
end)