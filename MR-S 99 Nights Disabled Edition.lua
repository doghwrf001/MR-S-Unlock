-- CN
-- 开源作者：MR
-- http://qins.mc.hi.cn/MR-S
-- 全源开源，应该没有人闲的没事拿这个圈钱吧？
-- 最后：请标明来源，谢谢！

-- EN
-- Open Source Author: MR
-- http://qins.mc.hi.cn/MR-S
-- Fully open-source; hopefully no one would bother monetizing this, right?
-- Lastly: Please credit the source, thank you!


local HttpService = game:GetService("HttpService")
local Plr = game:GetService("Players")
local LP = Plr.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local ClientModule
local success, result = pcall(function()
    return require(LP:WaitForChild("PlayerScripts"):WaitForChild("Client"))
end)
if success then
    ClientModule = result
end

local EatRemote = ClientModule and ClientModule.Events and ClientModule.Events.RequestConsumeItem
getgenv().WS = LP.Character and LP.Character.Humanoid and LP.Character.Humanoid.WalkSpeed or 16

local redzlib = loadstring(game:HttpGet("https://pastefy.app/25XbAOyt/raw"))()

local Window = redzlib:MakeWindow({
    Title = "MRSupreme",
    SubTitle = "99夜残缺版",
})

local AlienX = {
    ["杀戮光环"] = false,
    ["自动砍树"] = false,
    ["自动进食"] = false,
    ["透视孩子"] = false,
    ["透视宝箱"] = false
}

local BL = {}
local connection = nil

local function AddESP(part, txt1, txt2, enabled)
    local BG = part:FindFirstChild("BillboardGui")
    if not BG then
        local bg = Instance.new("BillboardGui")
        bg.Adornee = part
        bg.Parent = part
        bg.Size = UDim2.new(0, 100, 0, 100)
        bg.StudsOffset = Vector3.new(0, 3, 0)
        bg.AlwaysOnTop = true
        local TL = Instance.new("TextLabel", bg)
        TL.Text = txt1 .. "\n" .. txt2 .. "m"
        TL.Size = UDim2.new(1, 0, 0, 40)
        TL.Position = UDim2.new(0, 0, 0, 0)
        TL.BackgroundTransparency = 1
        TL.TextColor3 = Color3.new(1, 1, 1)
        TL.TextStrokeTransparency = 0.3
        TL.Font = Enum.Font.GothamBold
        TL.TextSize = 14
        local Img = Instance.new("ImageLabel", bg)
        Img.Position = UDim2.new(0, 20, 0, 40)
        Img.Size = UDim2.new(0, 60, 0, 60)
        Img.Image = part.Name:match("Chest") and "rbxassetid://18660563116" or ""
        Img.BackgroundTransparency = 1
    else
        local bg = BG
        bg.TextLabel.Text = txt1 .. "\n" .. txt2 .. "m"
        bg.Enabled = enabled
    end
end

local function Collect(thing)
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("Model") and obj.Name == thing then
            local part = obj.PrimaryPart or obj:FindFirstChildWhichIsA("BasePart")
            if part and LP.Character and LP.Character:FindFirstChild("HumanoidRootPart") then
                part.CFrame = LP.Character.HumanoidRootPart.CFrame * CFrame.new(0, 2, 0)
            end
        end
    end
end

local function tryEatFood(food)
    if not EatRemote then warn("🚫 No EatRemote") return end
    if not ReplicatedStorage:FindFirstChild("TempStorage") then warn("🚫 No TempStorage") return end
    print("➡️ 正在尝试吃下" .. food.Name)
    food.Parent = ReplicatedStorage.TempStorage
    local success, result = pcall(function()
        return EatRemote:InvokeServer(food)
    end)
    if success and result and result.Success then
        print("✅成功吃下 " .. food.Name)
        return
    else
        print("❌️进食失败")
        return
    end
end

local PlayerList = {}
for _, b in pairs(Plr:GetPlayers()) do
    table.insert(PlayerList, b.Name)
end

--- UI Tabs ---
local MainTab = Window:MakeTab({Title = "主要", Icon = "home"})
local CollectTab = Window:MakeTab({Title = "收集", Icon = "archive"})
local ESPTab = Window:MakeTab({Title = "透视", Icon = "eye"})
local TeleportTab = Window:MakeTab({Title = "传送", Icon = "teleporter"})
local PlayerTab = Window:MakeTab({Title = "玩家", Icon = "user"})

MainTab:AddSection("光环功能")

MainTab:AddToggle({
    Name = "杀戮光环",
    Description = "自动攻击附近的敌人",
    Default = false,
    Callback = function(value)
        AlienX["杀戮光环"] = value
    end
})

MainTab:AddToggle({
    Name = "自动砍树",
    Description = "自动砍伐附近的树木",
    Default = false,
    Callback = function(value)
        AlienX["自动砍树"] = value
    end
})

MainTab:AddToggle({
    Name = "自动进食",
    Description = "自动吃掉附近的食物",
    Default = false,
    Callback = function(value)
        AlienX["自动进食"] = value
    end
})

MainTab:AddToggle({
    Name = "瞬间互动",
    Description = "立刻完成互动操作",
    Default = false,
    Callback = function(value)
        if value then
            if not connection then
                connection = game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
                    prompt.HoldDuration = 0
                end)
            end
        else
            if connection then
                connection:Disconnect()
                connection = nil
            end
        end
    end
})

CollectTab:AddSection("收集功能")

CollectTab:AddButton({ Name = "左轮", Description = "传送到你的位置", Callback = function() Collect("Revolver") end })
CollectTab:AddButton({ Name = "步枪", Description = "传送到你的位置", Callback = function() Collect("Rifle") end })
CollectTab:AddButton({ Name = "左轮子弹", Description = "传送到你的位置", Callback = function() Collect("Revolver Ammo") end })
CollectTab:AddButton({ Name = "步枪子弹", Description = "传送到你的位置", Callback = function() Collect("Rifle Ammo") end })
CollectTab:AddButton({ Name = "皮革", Description = "传送到你的位置", Callback = function() Collect("Leather Body") end })
CollectTab:AddButton({ Name = "铁甲", Description = "传送到你的位置", Callback = function() Collect("Iron Body") end })
CollectTab:AddButton({ Name = "荆棘铠甲", Description = "传送到你的位置", Callback = function() Collect("Thorn Body") end })
CollectTab:AddButton({ Name = "螺栓", Description = "传送到你的位置", Callback = function() Collect("Bolt") end })
CollectTab:AddButton({ Name = "金属薄板", Description = "传送到你的位置", Callback = function() Collect("Sheet Metal") end })
CollectTab:AddButton({ Name = "旧收音机", Description = "传送到你的位置", Callback = function() Collect("Old Radio") end })
CollectTab:AddButton({ Name = "损坏的电扇", Description = "传送到你的位置", Callback = function() Collect("Broken Fan") end })
CollectTab:AddButton({ Name = "损坏的微波炉", Description = "传送到你的位置", Callback = function() Collect("Broken Microwave") end })
CollectTab:AddButton({ Name = "木头", Description = "传送到你的位置", Callback = function() Collect("Log") end })
CollectTab:AddButton({ Name = "椅子", Description = "传送到你的位置", Callback = function() Collect("Chair") end })
CollectTab:AddButton({ Name = "燃料罐", Description = "传送到你的位置", Callback = function() Collect("Fuel Canister") end })
CollectTab:AddButton({ Name = "油桶", Description = "传送到你的位置", Callback = function() Collect("Oil Barrel") end })
CollectTab:AddButton({ Name = "生物燃料", Description = "传送到你的位置", Callback = function() Collect("Biofuel") end })
CollectTab:AddButton({ Name = "煤", Description = "传送到你的位置", Callback = function() Collect("Coal") end })
CollectTab:AddButton({ Name = "萝卜", Description = "传送到你的位置", Callback = function() Collect("Carrot") end })
CollectTab:AddButton({ Name = "浆果", Description = "传送到你的位置", Callback = function() Collect("Berry") end })
CollectTab:AddButton({ Name = "生食", Description = "传送到你的位置", Callback = function() Collect("Morsel") end })
CollectTab:AddButton({ Name = "生牛肉", Description = "传送到你的位置", Callback = function() Collect("Steak") end })
CollectTab:AddButton({ Name = "熟食", Description = "传送到你的位置", Callback = function() Collect("Cooked Morsel") end })
CollectTab:AddButton({ Name = "熟牛肉", Description = "传送到你的位置", Callback = function() Collect("Cooked Steak") end })
CollectTab:AddButton({ Name = "急救包", Description = "传送到你的位置", Callback = function() Collect("MedKit") end })
CollectTab:AddButton({ Name = "绷带", Description = "传送到你的位置", Callback = function() Collect("Bandage") end })

ESPTab:AddSection("透视")

ESPTab:AddToggle({
    Name = "走失的孩子",
    Description = "显示走失孩子的透视",
    Default = false,
    Callback = function(value)
        AlienX["透视孩子"] = value
    end
})

ESPTab:AddToggle({
    Name = "宝箱",
    Description = "显示宝箱的透视",
    Default = false,
    Callback = function(value)
        AlienX["透视宝箱"] = value
    end
})

TeleportTab:AddSection("传送功能")

local teleportDropdown = TeleportTab:AddDropdown({
    Name = "传送玩家",
    Description = "选择一名玩家进行传送",
    Options = PlayerList,
    Default = "",
    Callback = function(selected)
        local targetPlayer = Plr:FindFirstChild(selected)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") and LP.Character then
            LP.Character:PivotTo(targetPlayer.Character.HumanoidRootPart.Cframe)
        end
    end
})

PlayerTab:AddSection("玩家设置")

PlayerTab:AddSlider({
    Name = "移动速度",
    Description = "调整你的移动速度",
    MinValue = 0,
    MaxValue = 200,
    Default = LP.Character and LP.Character.Humanoid and LP.Character.Humanoid.WalkSpeed or 16,
    Callback = function(value)
        getgenv().WS = value
    end
})

PlayerTab:AddSlider({
    Name = "悬浮高度",
    Description = "调整你的悬浮高度",
    MinValue = 0,
    MaxValue = 200,
    Default = LP.Character and LP.Character.Humanoid and LP.Character.Humanoid.HipHeight or 0.1,
    Callback = function(value)
        if LP.Character and LP.Character.Humanoid then
            LP.Character.Humanoid.HipHeight = value
        end
    end
})

PlayerTab:AddToggle({
    Name = "玩家发光",
    Description = "让你的玩家发光",
    Default = false,
    Callback = function(value)
        if value then
            if LP.Character and LP.Character:FindFirstChild("Head") then
                local light = Instance.new("PointLight", LP.Character.Head)
                light.Name = "light"
                light.Range = 9999999
                light.Brightness = 15
            end
        else
            if LP.Character and LP.Character:FindFirstChild("Head") and LP.Character.Head:FindFirstChild("light") then
                LP.Character.Head.light:Destroy()
            end
        end
    end
})

Plr.PlayerAdded:Connect(function(a)
    PlayerList = {}
    for _, b in pairs(Plr:GetPlayers()) do
        table.insert(PlayerList, b.Name)
    end
    task.wait(.1)
    teleportDropdown:RefreshOptions(PlayerList)
end)

Plr.PlayerRemoving:Connect(function(a)
    PlayerList = {}
    for _, b in pairs(Plr:GetPlayers()) do
        table.insert(PlayerList, b.Name)
    end
    task.wait(.1)
    teleportDropdown:RefreshOptions(PlayerList)
end)

local last1, last2, last3 = 0, 0, 0
game["Run Service"].Heartbeat:Connect(function()
    local Now = tick()
    if not LP.Character or not LP.Character:FindFirstChild("HumanoidRootPart") then return end
    
    if LP.Character.Humanoid then
        LP.Character.Humanoid.WalkSpeed = getgenv().WS
    end

    for _, b in pairs(workspace.Items:GetChildren()) do
        if b:GetAttribute(tostring(LP.UserId) .. "Opened") then
            table.insert(BL, b)
            if b:FindFirstChild("BillboardGui") then
                b.BillboardGui:Destroy()
            end
        end
        if b.Name:match("Chest") and b:IsA("Model") and not table.find(BL, b) and b:FindFirstChild("Main") then
            AddESP(b, "宝箱", tostring(math.floor((LP.Character.HumanoidRootPart.Position - b.Main.Position).Magnitude)), AlienX["透视宝箱"])
        end
    end

    for _, b in pairs(workspace.Characters:GetChildren()) do
        if b:GetAttribute("Lost") and b:GetAttribute("Lost") == false then
            table.insert(BL, b)
            if b:FindFirstChild("BillboardGui") then
                b.BillboardGui:Destroy()
            end
        end
        if table.find({"Lost Child", "Lost Child1", "Lost Child2", "Lost Child3", "Dino Kid", "kraken kid", "Squid kid", "Koala Kid", "koala Kid", "koala"}, b.Name) and b:FindFirstChild("HumanoidRootPart") and not table.find(BL, b) then
            AddESP(b, "孩子", tostring(math.floor((LP.Character.HumanoidRootPart.Position - b.HumanoidRootPart.Position).Magnitude)), AlienX["透视孩子"])
        end
    end
    
    if LP.Character:FindFirstChild("ToolHandle") then
        local tool = LP.Character.ToolHandle.OriginalItem.Value
        if tool then
            if AlienX["杀戮光环"] and Now - last1 >= 0.7 then
                last1 = Now
                if not ({["Old Axe"] = true, ["Good Axe"] = true, ["Spear"] = true, ["Hatchet"] = true, ["Bone Club"] = true})[tool.Name] then return end
                for _, b in pairs(workspace.Characters:GetChildren()) do
                    if b:IsA("Model") and b:FindFirstChild("HumanoidRootPart") and b:FindFirstChild("HitRegisters") then
                        if (LP.Character.HumanoidRootPart.Position - b.HumanoidRootPart.Position).Magnitude <= 100 then
                            game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ToolDamageObject"):InvokeServer(b, tool, true, LP.Character.HumanoidRootPart.CFrame)
                        end
                    end
                end
            end
            if AlienX["自动砍树"] and Now - last2 >= 0.7 then
                last2 = Now
                if not ({["Old Axe"] = true, ["Stone Axe"] = true, ["Iron Axe"] = true})[tool.Name] then return end
                local function ChopTree(Path)
                    for _, b in pairs(Path:GetChildren()) do
                        task.wait(.1)
                        if b:IsA("Model") and ({["Small Tree"] = true, ["TreeBig1"] = true, ["TreeBig2"] = true, ["TreeBig3"] = true})[b.Name] and b:FindFirstChild("HitRegisters") then
                            local trunk = b:FindFirstChild("Trunk") or b:FindFirstChild("HumanoidRootPart") or b.PrimaryPart
                            if trunk then
                                if (LP.Character.HumanoidRootPart.Position - trunk.Position).Magnitude <= 100 then
                                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ToolDamageObject"):InvokeServer(b, tool, true, LP.Character.HumanoidRootPart.CFrame)
                                end
                            end
                        end
                    end
                end
                ChopTree(workspace.Map.Foliage)
                ChopTree(workspace.Map.Landmarks)
            end
        end
    end
    
    if AlienX["自动进食"] and Now - last3 >= 10 then
        last3 = Now
        local HRP = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
        if HRP then
            local foundFood = false
            for _, obj in pairs(workspace.Items:GetChildren()) do
                if obj:IsA("Model") and ({["Carrot"] = true, ["Berry"] = true, ["Morsel"] = false, ["Cooked Morsel"] = true, ["Steak"] = false, ["Cooked Steak"] = true})[obj.Name] then
                    local mainPart = obj:FindFirstChild("Handle") or obj.PrimaryPart
                    if mainPart and (mainPart.Position - HRP.Position).Magnitude < 25 then
                        foundFood = true
                        tryEatFood(obj)
                        break
                    end
                end
            end
            if not foundFood then
                print("🔍25米范围内无食物")
            end
        else
            print("⏳等待玩家加载")
        end
    end
    task.wait(.1)
end)
