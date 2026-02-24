--[[

  ███╗   ███╗██████╗              ███████╗    ████████╗███████╗ █████╗ ███╗   ███╗
  ████╗ ████║██╔══██╗             ██╔════╝    ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║
  ██╔████╔██║██████╔╝  ███████    ███████╗       ██║   █████╗  ███████║██╔████╔██║
  ██║╚██╔╝██║██╔══██╗             ╚════██║       ██║   ██╔══╝  ██╔══██║██║╚██╔╝██║
  ██║ ╚═╝ ██║██║  ██║             ███████║       ██║   ███████╗██║  ██║██║ ╚═╝ ██║
  ╚═╝     ╚═╝╚═╝  ╚═╝             ╚══════╝       ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝

                    by MR-S Team | www.mr-s.us.ci
]]--

-- Open-source By：MR
-- 🚫Any money scamming is strictly prohibited!
-- ⚠️All open-source projects of the MR-S team use the AGPL3.0 open-source license. Please comply with the license terms!
-- Finally: Please credit the source, thanks!


local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local PPS = game:GetService("ProximityPromptService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local camera = workspace.CurrentCamera
local player = Players.LocalPlayer
local UIS = UserInputService

-- Notification function
local function showNotification(title, message)
	StarterGui:SetCore("SendNotification", {
		Title = title;
		Text = message;
		Duration = 4;
	})
end

-- ==============================================
-- LuckyESP Lucky Block ESP (Auto-enabled)
-- ==============================================
local function initLuckyESP()
    local folder = workspace:FindFirstChild("ActiveLuckyBlocks") or workspace:WaitForChild("ActiveLuckyBlocks", 5)
    if not folder then return end
    local function getMainPart(obj)
        if obj:IsA("BasePart") then return obj end
        return obj:FindFirstChildWhichIsA("BasePart")
    end
    local function getLastWord(name)
        return name:match("_(%w+)$") or "unknown"
    end
    local function addESP(obj)
        if obj:FindFirstChild("LuckyESP") then return end
        local part = getMainPart(obj)
        if not part then return end
        local rarity = getLastWord(obj.Name)
        local bb = Instance.new("BillboardGui")
        bb.Name = "LuckyESP"
        bb.Size = UDim2.new(0, 70, 0, 18)
        bb.StudsOffset = Vector3.new(0, 3, 0)
        bb.AlwaysOnTop = true
        bb.MaxDistance = math.huge
        bb.Parent = part
        local txt = Instance.new("TextLabel")
        txt.Size = UDim2.new(1,0,1,0)
        txt.BackgroundTransparency = 1
        txt.TextScaled = true
        txt.Font = Enum.Font.GothamBold
        txt.TextStrokeTransparency = 0
        txt.TextColor3 = Color3.new(1,1,1)
        txt.Text = rarity
        txt.Parent = bb
    end
    local function removeESP(obj)
        local part = getMainPart(obj)
        if part and part:FindFirstChild("LuckyESP") then
            part.LuckyESP:Destroy()
        end
    end
    for _,v in ipairs(folder:GetChildren()) do task.spawn(addESP, v) end
    folder.ChildAdded:Connect(function(v) task.wait(0.2); addESP(v) end)
    folder.ChildRemoved:Connect(removeESP)
    showNotification("ESP Loaded", "Lucky Block ESP active")
end
task.spawn(initLuckyESP)

-- ==============================================
-- Gap Teleport Core Function
-- ==============================================
local gapsData = {
    ["Gap 1"] = { pos = Vector3.new(197, -3, -0), duration = 2,  offsetY = -2 },
    ["Gap 2"] = { pos = Vector3.new(284, -3, -0), duration = 5,  offsetY = -5 },
    ["Gap 3"] = { pos = Vector3.new(397, -3, -0), duration = 5,  offsetY = -8 },
    ["Gap 4"] = { pos = Vector3.new(547, -3, -0), duration = 5,  offsetY = -11 },
    ["Gap 5"] = { pos = Vector3.new(755, -3, -0), duration = 5,  offsetY = -14 },
    ["Gap 6"] = { pos = Vector3.new(1075, -3, -0), duration = 10, offsetY = -17 },
    ["Gap 7"] = { pos = Vector3.new(1545, -3, -0), duration = 10, offsetY = -17 },
    ["Gap 8"] = { pos = Vector3.new(2263, -3, -0), duration = 10, offsetY = -17 },
    ["Gap 9"] = { pos = Vector3.new(2959, -3, -0), duration = 10, offsetY = -17 },
    ["Gap 10"] = { pos = Vector3.new(3329, -3, -0), duration = 10, offsetY = -17 },
    ["Gap 11"] = { pos = Vector3.new(3682, -3, -0), duration = 10, offsetY = -17 },
    ["Gap 12"] = { pos = Vector3.new(4023, -3, -0), duration = 10, offsetY = -20 }
}

local function teleportTween(gapName)
    local data = gapsData[gapName]
    if not data then showNotification("Teleport Failed", "Gap does not exist"); return end
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart", 3)
    if not hrp then showNotification("Teleport Failed", "HumanoidRootPart not found"); return end
    local startPos = hrp.Position + Vector3.new(0, data.offsetY or 0, 0)
    hrp.CFrame = CFrame.new(startPos)
    local finalPos = data.pos
    local tweenInfo = TweenInfo.new(data.duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    TweenService:Create(hrp, tweenInfo, {CFrame = CFrame.new(finalPos)}):Play()
    showNotification("Teleporting", gapName)
end

-- ==============================================
-- Original Feature: GOD MODE
-- ==============================================
local isGodmode = false
local ghostClone, gmConnection, noclipConn, deathConn = nil, nil, nil, nil
local lastPromptUpdate = 0
local function cleanupGodmode()
	isGodmode = false
	if gmConnection then gmConnection:Disconnect() gmConnection = nil end
	if noclipConn then noclipConn:Disconnect() noclipConn = nil end
	if deathConn then deathConn:Disconnect() deathConn = nil end
	local char = player.Character
	if char then
		local root = char:FindFirstChild("HumanoidRootPart")
		if root and ghostClone and ghostClone:FindFirstChild("HumanoidRootPart") then
			root.CFrame = ghostClone.HumanoidRootPart.CFrame
		end
		if char:FindFirstChild("Humanoid") then
			char.Humanoid.PlatformStand = false
			camera.CameraSubject = char.Humanoid
		end
	end
	if ghostClone then ghostClone:Destroy() ghostClone = nil end
end
local function enableGodmode()
	local char = player.Character
	if not char or not char:FindFirstChild("HumanoidRootPart") then return end
	cleanupGodmode()
	isGodmode = true
	char.Archivable = true
	ghostClone = char:Clone()
	ghostClone.Name = "GhostDecoy"
	ghostClone.Parent = workspace
	char.Archivable = false
	for _, v in pairs(ghostClone:GetDescendants()) do
		if v:IsA("BasePart") then
			v.Transparency = (v.Name:lower():find("root") or v.Name:lower():find("collision")) and 0.5 or 0
			v.CanCollide = true
		elseif v:IsA("Decal") or v:IsA("Texture") then
			v.Transparency = 0
		end
	end
	if char:FindFirstChild("Animate") then char.Animate:Clone().Parent = ghostClone end
	char.Humanoid.PlatformStand = true
	camera.CameraSubject = ghostClone.Humanoid
	noclipConn = RunService.Stepped:Connect(function()
		if char then
			for _, v in pairs(char:GetDescendants()) do
				if v:IsA("BasePart") then v.CanCollide = false end
			end
		end
	end)
	gmConnection = RunService.Heartbeat:Connect(function()
		if ghostClone and char and char:FindFirstChild("HumanoidRootPart") then
			local moveDir = char.Humanoid.MoveDirection
			ghostClone.Humanoid:Move(moveDir, false)
			ghostClone.Humanoid.Jump = char.Humanoid.Jump
			if moveDir.Magnitude > 0 then
				local targetRot = CFrame.lookAt(ghostClone.HumanoidRootPart.Position, ghostClone.HumanoidRootPart.Position + moveDir)
				ghostClone.HumanoidRootPart.CFrame = ghostClone.HumanoidRootPart.CFrame:Lerp(targetRot, 0.25)
			end
			if tick() - lastPromptUpdate > 0.5 then
				for _, p in pairs(workspace:GetDescendants()) do
					if p:IsA("ProximityPrompt") then
						p.MaxActivationDistance = 25
						p.RequiresLineOfSight = false
					end
				end
				lastPromptUpdate = tick()
			end
			char.HumanoidRootPart.CFrame = ghostClone.HumanoidRootPart.CFrame * CFrame.new(0, -15, 0)
			char.HumanoidRootPart.Velocity = Vector3.zero
		else
			cleanupGodmode()
		end
	end)
	deathConn = char.Humanoid.Died:Connect(cleanupGodmode)
end
player.CharacterAdded:Connect(function()
	if isGodmode then task.wait(0.5) enableGodmode() end
end)

-- ==============================================
-- Original Feature: FAST TAKE
-- ==============================================
local instantTakeConn = nil
local function enableInstantTake()
	if instantTakeConn then return end
	instantTakeConn = PPS.PromptButtonHoldBegan:Connect(function(prompt)
		pcall(function() fireproximityprompt(prompt) end)
	end)
end
local function disableInstantTake()
	if instantTakeConn then
		instantTakeConn:Disconnect()
		instantTakeConn = nil
	end
end

-- ==============================================
-- Original Feature: VIP BYPASS
-- ==============================================
local vipEnabled = false
local vipConnection = nil
local vipBackup = {}
local function getVIP()
	local map = workspace:FindFirstChild("DefaultMap_SharedInstances", true)
	if not map then return end
	return map:FindFirstChild("VIPWalls")
end
local function backupVIP(vip)
	vipBackup = {}
	for _, v in ipairs(vip:GetChildren()) do
		table.insert(vipBackup, v:Clone())
	end
end
local function restoreVIP(vip)
	vip:ClearAllChildren()
	for _, v in ipairs(vipBackup) do
		v:Clone().Parent = vip
	end
end
local function enableVIP()
	local vip = getVIP()
	if not vip then return end
	if #vipBackup == 0 then backupVIP(vip) end
	vipConnection = RunService.Heartbeat:Connect(function()
		for _, v in ipairs(vip:GetDescendants()) do
			if v:IsA("BasePart") then v.CanCollide = false end
			if v:IsA("GuiObject") or v:IsA("Decal") or v:IsA("Texture") or v.Name:lower():match("vip") then
				pcall(function() v:Destroy() end)
			end
		end
	end)
end
local function disableVIP()
	if vipConnection then vipConnection:Disconnect() vipConnection = nil end
	local vip = getVIP()
	if vip and #vipBackup > 0 then restoreVIP(vip) end
end

-- ==============================================
-- Core Feature Variables
-- ==============================================
local _G = getfenv(0)
_G.InfiniteJump = false
_G.InfiniteZoom = false
local originalZoom = {player.CameraMaxZoomDistance, player.CameraMinZoomDistance}
_G.AutoCollect = false
_G.AutoRebirth = false
_G.AutoSellTool = false
_G.AutoUpgradeSpeed1 = false
_G.AutoUpgradeSpeed10 = false
local SellDelay = 1
local SlotList = {}
for i = 1, 20 do table.insert(SlotList, tostring(i)) end

-- Infinite Jump
UIS.JumpRequest:Connect(function()
    if _G.InfiniteJump then
        local h = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
        if h and h.Health > 0 then h:ChangeState(Enum.HumanoidStateType.Jumping) end
    end
end)

-- Infinite Zoom
local function toggleInfiniteZoom(state)
    _G.InfiniteZoom = state
    if state then
        player.CameraMaxZoomDistance = math.huge
        player.CameraMinZoomDistance = 0.5
    else
        player.CameraMaxZoomDistance = originalZoom[1] or 128
        player.CameraMinZoomDistance = originalZoom[2] or 0.5
    end
end

-- Get Player Base Name
local function GetMyBaseName()
    local basesFolder = workspace:FindFirstChild("Bases")
    local character = player.Character
    local root = character and character:FindFirstChild("HumanoidRootPart")
    if not root or not basesFolder then return nil end
    local closestBase, shortestDistance = nil, math.huge
    for _, base in pairs(basesFolder:GetChildren()) do
        if base:IsA("Model") and base.PrimaryPart then
            local distance = (base.PrimaryPart.Position - root.Position).Magnitude
            if distance < shortestDistance then
                shortestDistance = distance
                closestBase = base
            end
        end
    end
    return closestBase and closestBase.Name or nil
end

-- ==============================================
-- Ultimate Fix: Auto Collect Cash (Physical Simulation, Guaranteed to Work)
-- Principle: Simulate player pressing 'E' to collect, same as manual operation
-- ==============================================
task.spawn(function()
    while task.wait(0.1) do
        if not _G.AutoCollect then continue end
        
        local function isCollectible(obj)
            if obj:IsA("ProximityPrompt") and obj.ActionText == "Collect" then
                return true
            end
            if obj:IsA("BasePart") and (obj.Name:find("Coin") or obj.Name:find("Money") or obj.Name:find("Cash")) then
                return true
            end
            return false
        end

        for _, obj in ipairs(workspace:GetDescendants()) do
            if not _G.AutoCollect then break end
            
            if obj:IsA("ProximityPrompt") and isCollectible(obj) then
                pcall(function()
                    fireproximityprompt(obj, 0)
                end)
            end

            if obj:IsA("BasePart") and isCollectible(obj) then
                local char = player.Character
                local hrp = char and char:FindFirstChild("HumanoidRootPart")
                if hrp then
                    local distance = (hrp.Position - obj.Position).Magnitude
                    if distance < 20 then
                        pcall(function()
                            hrp.CFrame = CFrame.new(obj.Position + Vector3.new(0, 2, 0))
                        end)
                    end
                end
            end
        end
    end
end)

-- ==============================================
-- Other Core Features
-- ==============================================
-- Auto Rebirth
task.spawn(function()
    local RebirthRemote = ReplicatedStorage:FindFirstChild("RemoteFunctions") and ReplicatedStorage.RemoteFunctions:FindFirstChild("Rebirth")
    if not RebirthRemote then return end
    while task.wait(1) do
        if _G.AutoRebirth then pcall(function() RebirthRemote:InvokeServer() end) end
    end
end)

-- Auto Sell Tools
task.spawn(function()
    local SellToolRemote = ReplicatedStorage:FindFirstChild("RemoteFunctions") and ReplicatedStorage.RemoteFunctions:FindFirstChild("SellTool")
    if not SellToolRemote then return end
    while true do
        if _G.AutoSellTool then
            pcall(function() SellToolRemote:InvokeServer() end)
            task.wait(SellDelay)
        else
            task.wait(0.5)
        end
    end
end)

-- Auto Upgrade Speed
task.spawn(function()
    local UpgradeSpeedRemote = ReplicatedStorage:FindFirstChild("RemoteFunctions") and ReplicatedStorage.RemoteFunctions:FindFirstChild("UpgradeSpeed")
    if not UpgradeSpeedRemote then return end
    while task.wait(0.1) do
        if _G.AutoUpgradeSpeed1 then pcall(function() UpgradeSpeedRemote:InvokeServer(1) end) end
        if _G.AutoUpgradeSpeed10 then pcall(function() UpgradeSpeedRemote:InvokeServer(10) end) end
    end
end)

-- One-Time Upgrades / Sell All
local function oneTimeUpgradeSpeed(num)
    local UpgradeSpeedRemote = ReplicatedStorage:FindFirstChild("RemoteFunctions") and ReplicatedStorage.RemoteFunctions:FindFirstChild("UpgradeSpeed")
    if UpgradeSpeedRemote then pcall(function() UpgradeSpeedRemote:InvokeServer(num) end) end
end
local function oneTimeUpgradeCarry()
    local UpgradeCarryRemote = ReplicatedStorage:FindFirstChild("RemoteFunctions") and ReplicatedStorage.RemoteFunctions:FindFirstChild("UpgradeCarry")
    if UpgradeCarryRemote then pcall(function() UpgradeCarryRemote:InvokeServer() end) end
end
local function sellAllInventory()
    local SellAllRemote = ReplicatedStorage:FindFirstChild("RemoteFunctions") and ReplicatedStorage.RemoteFunctions:FindFirstChild("SellAll")
    if SellAllRemote then pcall(function() SellAllRemote:InvokeServer() end) end
end

-- ==============================================
-- UI Interface (Fixed Layout Issues)
-- ==============================================
if game.CoreGui:FindFirstChild("ETFB_GodGui") then
	game.CoreGui.ETFB_GodGui:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ETFB_GodGui"
ScreenGui.IgnoreGuiInset = false
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = CoreGui

-- Main Window
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 280, 0, 320)
MainFrame.Position = UDim2.new(0.5, -140, 0.75, -160)
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
MainFrame.BorderSizePixel = 0
MainFrame.ZIndex = 1
MainFrame.Visible = true
MainFrame.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 12)
MainCorner.Parent = MainFrame

local MainStroke = Instance.new("UIStroke")
MainStroke.Thickness = 1.5
MainStroke.Color = Color3.fromRGB(80, 80, 100)
MainStroke.Parent = MainFrame

-- Title Bar
local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.new(1, 0, 0, 38)
TitleBar.BackgroundColor3 = Color3.fromRGB(25, 25, 32)
TitleBar.BorderSizePixel = 0
TitleBar.Active = true
TitleBar.ZIndex = 2
TitleBar.Parent = MainFrame

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 12)
TitleCorner.Parent = TitleBar

local AccentBar = Instance.new("Frame")
AccentBar.Size = UDim2.new(1, 0, 0, 2)
AccentBar.Position = UDim2.new(0, 0, 1, -2)
AccentBar.BackgroundColor3 = Color3.fromRGB(200, 40, 40)
AccentBar.BorderSizePixel = 0
AccentBar.ZIndex = 3
AccentBar.Parent = TitleBar

local Title = Instance.new("TextLabel")
Title.Text = "by MR-S.team | www.mr-s.us.ci"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 12
Title.TextColor3 = Color3.fromRGB(230, 230, 240)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, -40, 1, 0)
Title.Position = UDim2.new(0, 12, 0, 0)
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.ZIndex = 3
Title.Parent = TitleBar

local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 24, 0, 24)
CloseButton.Position = UDim2.new(1, -30, 0.5, -12)
CloseButton.Text = "×"
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 16
CloseButton.TextColor3 = Color3.fromRGB(200, 200, 210)
CloseButton.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
CloseButton.BorderSizePixel = 0
CloseButton.ZIndex = 3
CloseButton.Parent = TitleBar

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 6)
CloseCorner.Parent = CloseButton

local guiVisible = true
CloseButton.MouseButton1Click:Connect(function()
	MainFrame.Visible = false
	guiVisible = false
end)

-- Scroll Container
local ScrollFrame = Instance.new("ScrollingFrame")
ScrollFrame.Size = UDim2.new(1, -24, 0, 250)
ScrollFrame.Position = UDim2.new(0, 12, 0, 46)
ScrollFrame.BackgroundTransparency = 1
ScrollFrame.ScrollBarThickness = 4
ScrollFrame.ScrollBarImageTransparency = 0.5
ScrollFrame.ScrollBarImageColor3 = Color3.fromRGB(80, 80, 100)
ScrollFrame.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right
ScrollFrame.ZIndex = 2
ScrollFrame.Parent = MainFrame

-- Content Container
local Content = Instance.new("Frame")
Content.BackgroundTransparency = 1
Content.Size = UDim2.new(1, 0, 1, 0)
Content.Parent = ScrollFrame

-- Layout Manager
local UIGridLayout = Instance.new("UIGridLayout")
UIGridLayout.CellSize = UDim2.new(1, 0, 0, 40)
UIGridLayout.CellPadding = UDim2.new(0, 0, 0, 8)
UIGridLayout.FillDirection = Enum.FillDirection.Vertical
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.Parent = Content

-- Toggle Creation Factory
local function createToggle(text)
	local frame = Instance.new("Frame")
	frame.Size = UDim2.new(1, 0, 0, 40)
	frame.BackgroundColor3 = Color3.fromRGB(28, 28, 36)
	frame.BorderSizePixel = 0
	frame.ZIndex = 3
	frame.Parent = Content

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 8)
	corner.Parent = frame

	local stroke = Instance.new("UIStroke")
	stroke.Thickness = 1
	stroke.Color = Color3.fromRGB(60, 60, 75)
	stroke.Transparency = 0.5
	stroke.Parent = frame

	local label = Instance.new("TextLabel")
	label.Text = text
	label.Font = Enum.Font.GothamBold
	label.TextSize = 12
	label.TextColor3 = Color3.fromRGB(210, 210, 225)
	label.BackgroundTransparency = 1
	label.Size = UDim2.new(1, -80, 1, 0)
	label.Position = UDim2.new(0, 12, 0, 0)
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.ZIndex = 4
	label.Parent = frame

	local button = Instance.new("TextButton")
	button.Size = UDim2.new(0, 48, 0, 24)
	button.Position = UDim2.new(1, -56, 0.5, -12)
	button.BackgroundColor3 = Color3.fromRGB(55, 55, 70)
	button.BorderSizePixel = 0
	button.Text = ""
	button.ZIndex = 4
	button.Parent = frame

	local bc = Instance.new("UICorner")
	bc.CornerRadius = UDim.new(1, 0)
	bc.Parent = button

	local circle = Instance.new("Frame")
	circle.Size = UDim2.new(0, 18, 0, 18)
	circle.Position = UDim2.new(0, 3, 0.5, -9)
	circle.BackgroundColor3 = Color3.fromRGB(200, 200, 215)
	circle.BorderSizePixel = 0
	circle.ZIndex = 6
	circle.Parent = button

	local cc = Instance.new("UICorner")
	cc.CornerRadius = UDim.new(1, 0)
	cc.Parent = circle

	local circleShadow = Instance.new("UIStroke")
	circleShadow.Thickness = 1
	circleShadow.Color = Color3.fromRGB(80, 80, 100)
	circleShadow.Transparency = 0.5
	circleShadow.Parent = circle

	return button, circle, frame
end

-- Gap Teleport Creation Function
local function createGapDropdown()
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, 0, 0, 40)
    frame.BackgroundColor3 = Color3.fromRGB(28, 28, 36)
    frame.BorderSizePixel = 0
    frame.ZIndex = 3
    frame.Parent = Content

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = frame

    local stroke = Instance.new("UIStroke")
    stroke.Thickness = 1
    stroke.Color = Color3.fromRGB(60, 60, 75)
    stroke.Transparency = 0.5
    stroke.Parent = frame

    local label = Instance.new("TextLabel")
    label.Text = "Gap Teleport: Gap 1"
    label.Font = Enum.Font.GothamBold
    label.TextSize = 12
    label.TextColor3 = Color3.fromRGB(210, 210, 225)
    label.BackgroundTransparency = 1
    label.Size = UDim2.new(1, -80, 1, 0)
    label.Position = UDim2.new(0, 12, 0, 0)
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.ZIndex = 4
    label.Parent = frame

    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 48, 0, 24)
    button.Position = UDim2.new(1, -56, 0.5, -12)
    button.BackgroundColor3 = Color3.fromRGB(55, 55, 70)
    button.BorderSizePixel = 0
    button.Text = ""
    button.ZIndex = 4
    button.Parent = frame

    local bc = Instance.new("UICorner")
    bc.CornerRadius = UDim.new(1, 0)
    bc.Parent = button

    local circle = Instance.new("Frame")
    circle.Size = UDim2.new(0, 18, 0, 18)
    circle.Position = UDim2.new(0, 3, 0.5, -9)
    circle.BackgroundColor3 = Color3.fromRGB(200, 200, 215)
    circle.BorderSizePixel = 0
    circle.ZIndex = 6
    circle.Parent = button

    local cc = Instance.new("UICorner")
    cc.CornerRadius = UDim.new(1, 0)
    cc.Parent = circle

    local circleShadow = Instance.new("UIStroke")
    circleShadow.Thickness = 1
    circleShadow.Color = Color3.fromRGB(80, 80, 100)
    circleShadow.Transparency = 0.5
    circleShadow.Parent = circle

    local gapList = {"Gap 1","Gap 2","Gap 3","Gap 4","Gap 5","Gap 6","Gap 7","Gap 8","Gap 9","Gap 10","Gap 11","Gap 12"}
    local currentGap = gapList[1]
    local isTeleporting = false

    local function findInTable(tbl, val)
        for i, v in ipairs(tbl) do
            if v == val then return i end
        end
        return 1
    end

    label.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            local currentIndex = findInTable(gapList, currentGap)
            currentIndex = currentIndex % #gapList + 1
            currentGap = gapList[currentIndex]
            label.Text = "Gap Teleport: " .. currentGap
        end
    end)

    button.MouseButton1Click:Connect(function()
        if not isTeleporting then
            isTeleporting = true
            TweenService:Create(circle, TweenInfo.new(0.2), {Position = UDim2.new(1, -21, 0.5, -9)}):Play()
            button.BackgroundColor3 = Color3.fromRGB(255, 204, 0)
            teleportTween(currentGap)
            task.wait(1)
            isTeleporting = false
            TweenService:Create(circle, TweenInfo.new(0.2), {Position = UDim2.new(0, 3, 0.5, -9)}):Play()
            button.BackgroundColor3 = Color3.fromRGB(55, 55, 70)
        end
    end)

    return frame
end

-- Button Creation Factory
local function createButton(text, callback)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, 0, 0, 36)
    frame.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
    frame.BorderSizePixel = 0
    frame.ZIndex = 3
    frame.Parent = Content

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = frame

    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, 0, 1, 0)
    btn.BackgroundTransparency = 1
    btn.Text = text
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 12
    btn.TextColor3 = Color3.fromRGB(220, 220, 230)
    btn.ZIndex = 4
    btn.Parent = frame

    btn.MouseButton1Click:Connect(callback)

    btn.MouseButton1Down:Connect(function() btn.TextColor3 = Color3.fromRGB(200, 40, 40) end)
    btn.MouseButton1Up:Connect(function() btn.TextColor3 = Color3.fromRGB(220, 220, 230) end)
    btn.MouseLeave:Connect(function() btn.TextColor3 = Color3.fromRGB(220, 220, 230) end)

    return btn, frame
end

-- ==============================================
-- Create All Controls
-- ==============================================
local GodBtn,  GodCircle,  GodFrame  = createToggle("GOD MODE")
local TakeBtn, TakeCircle, TakeFrame = createToggle("FAST TAKE")
local VipBtn,  VipCircle,  VipFrame  = createToggle("VIP BYPASS")
local JumpBtn, JumpCircle, JumpFrame = createToggle("INFINITE JUMP")
local ZoomBtn, ZoomCircle, ZoomFrame = createToggle("INFINITE ZOOM")
local CollectBtn, CollectCircle, CollectFrame = createToggle("AUTO COLLECT CASH")
local RebirthBtn, RebirthCircle, RebirthFrame = createToggle("AUTO REBIRTH")
local SellBtn, SellCircle, SellFrame = createToggle("AUTO SELL TOOLS")
local Speed1Btn, Speed1Circle, Speed1Frame = createToggle("AUTO SPEED +1")
local Speed10Btn, Speed10Circle, Speed10Frame = createToggle("AUTO SPEED +10")
local GapFrame = createGapDropdown()
local SellAllBtn = createButton("SELL ALL INVENTORY", function() sellAllInventory(); showNotification("Success", "All items sold") end)
local Speed1OneBtn = createButton("SPEED +1 (ONCE)", function() oneTimeUpgradeSpeed(1); showNotification("Success", "Speed +1") end)
local Speed10OneBtn = createButton("SPEED +10 (ONCE)", function() oneTimeUpgradeSpeed(10); showNotification("Success", "Speed +10") end)
local CarryOneBtn = createButton("CARRY UPGRADE (ONCE)", function() oneTimeUpgradeCarry(); showNotification("Success", "Carry capacity upgraded") end)

-- Auto-adjust Canvas Size
local function updateCanvasSize()
    local contentSize = UIGridLayout.AbsoluteContentSize
    ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, contentSize.Y + 20)
end
UIGridLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateCanvasSize)
task.wait(0.1)
updateCanvasSize()

-- Toggle State Function
local godEnabled  = false
local takeEnabled = false
local function toggle(btn, circle, state, color)
	local onColor = color or Color3.fromRGB(80, 200, 80)
	if state then
		TweenService:Create(circle, TweenInfo.new(0.2), {Position = UDim2.new(1, -21, 0.5, -9)}):Play()
		btn.BackgroundColor3 = onColor
	else
		TweenService:Create(circle, TweenInfo.new(0.2), {Position = UDim2.new(0, 3, 0.5, -9)}):Play()
		btn.BackgroundColor3 = Color3.fromRGB(55, 55, 70)
	end
end

-- Status Label
local StatusLabel = Instance.new("TextLabel")
StatusLabel.Size = UDim2.new(1, -16, 0, 24)
StatusLabel.Position = UDim2.new(0, 8, 1, -28)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = "All systems off | ESP active"
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.TextSize = 10
StatusLabel.TextColor3 = Color3.fromRGB(120, 120, 140)
StatusLabel.TextWrapped = true
StatusLabel.TextXAlignment = Enum.TextXAlignment.Left
StatusLabel.ZIndex = 3
StatusLabel.Parent = MainFrame

-- ==============================================
-- Toggle Click Events
-- ==============================================
GodBtn.MouseButton1Click:Connect(function()
	godEnabled = not godEnabled
	toggle(GodBtn, GodCircle, godEnabled, Color3.fromRGB(200, 50, 50))
	if godEnabled then
		enableGodmode()
		enableInstantTake()
		takeEnabled = true
		toggle(TakeBtn, TakeCircle, true, Color3.fromRGB(200, 50, 50))
		showNotification("GOD MODE ON", "Invincibility + Fast Take enabled")
		StatusLabel.Text = "God Mode + Fast Take: ON | ESP active"
		StatusLabel.TextColor3 = Color3.fromRGB(200, 80, 80)
	else
		cleanupGodmode()
		disableInstantTake()
		takeEnabled = false
		toggle(TakeBtn, TakeCircle, false)
		StatusLabel.Text = "God Mode: OFF | ESP active"
		StatusLabel.TextColor3 = Color3.fromRGB(120, 120, 140)
	end
end)

TakeBtn.MouseButton1Click:Connect(function()
	takeEnabled = not takeEnabled
	toggle(TakeBtn, TakeCircle, takeEnabled, Color3.fromRGB(200, 50, 50))
	if takeEnabled then
		enableInstantTake()
		StatusLabel.Text = "Fast Take: ON | ESP active"
		StatusLabel.TextColor3 = Color3.fromRGB(200, 80, 80)
	else
		disableInstantTake()
		StatusLabel.Text = "Fast Take: OFF | ESP active"
		StatusLabel.TextColor3 = Color3.fromRGB(120, 120, 140)
	end
end)

VipBtn.MouseButton1Click:Connect(function()
	vipEnabled = not vipEnabled
	toggle(VipBtn, VipCircle, vipEnabled, Color3.fromRGB(200, 50, 50))
	if vipEnabled then
		enableVIP()
		showNotification("VIP BYPASS ON", "VIP walls bypassed")
		StatusLabel.Text = "VIP Bypass: ON | ESP active"
		StatusLabel.TextColor3 = Color3.fromRGB(200, 80, 80)
	else
		disableVIP()
		StatusLabel.Text = "VIP Bypass: OFF | ESP active"
		StatusLabel.TextColor3 = Color3.fromRGB(120, 120, 140)
	end
end)

JumpBtn.MouseButton1Click:Connect(function()
    _G.InfiniteJump = not _G.InfiniteJump
    toggle(JumpBtn, JumpCircle, _G.InfiniteJump, Color3.fromRGB(50, 180, 200))
    StatusLabel.Text = _G.InfiniteJump and "Infinite Jump: ON | ESP active" or "Infinite Jump: OFF | ESP active"
    StatusLabel.TextColor3 = _G.InfiniteJump and Color3.fromRGB(50, 180, 200) or Color3.fromRGB(120, 120, 140)
    showNotification(_G.InfiniteJump and "Infinite Jump enabled" or "Infinite Jump disabled", "")
end)

ZoomBtn.MouseButton1Click:Connect(function()
    _G.InfiniteZoom = not _G.InfiniteZoom
    toggle(ZoomBtn, ZoomCircle, _G.InfiniteZoom, Color3.fromRGB(50, 180, 200))
    toggleInfiniteZoom(_G.InfiniteZoom)
    StatusLabel.Text = _G.InfiniteZoom and "Infinite Zoom: ON | ESP active" or "Infinite Zoom: OFF | ESP active"
    StatusLabel.TextColor3 = _G.InfiniteZoom and Color3.fromRGB(50, 180, 200) or Color3.fromRGB(120, 120, 140)
    showNotification(_G.InfiniteZoom and "Infinite Zoom enabled" or "Infinite Zoom disabled", "")
end)

CollectBtn.MouseButton1Click:Connect(function()
    _G.AutoCollect = not _G.AutoCollect
    toggle(CollectBtn, CollectCircle, _G.AutoCollect, Color3.fromRGB(180, 180, 50))
    StatusLabel.Text = _G.AutoCollect and "Auto Collect Cash: ON | ESP active" or "Auto Collect Cash: OFF | ESP active"
    StatusLabel.TextColor3 = _G.AutoCollect and Color3.fromRGB(180, 180, 50) or Color3.fromRGB(120, 120, 140)
    showNotification(_G.AutoCollect and "Auto Collect Cash enabled" or "Auto Collect Cash disabled", "")
end)

RebirthBtn.MouseButton1Click:Connect(function()
    _G.AutoRebirth = not _G.AutoRebirth
    toggle(RebirthBtn, RebirthCircle, _G.AutoRebirth, Color3.fromRGB(180, 180, 50))
    StatusLabel.Text = _G.AutoRebirth and "Auto Rebirth: ON | ESP active" or "Auto Rebirth: OFF | ESP active"
    StatusLabel.TextColor3 = _G.AutoRebirth and Color3.fromRGB(180, 180, 50) or Color3.fromRGB(120, 120, 140)
    showNotification(_G.AutoRebirth and "Auto Rebirth enabled" or "Auto Rebirth disabled", "")
end)

SellBtn.MouseButton1Click:Connect(function()
    _G.AutoSellTool = not _G.AutoSellTool
    toggle(SellBtn, SellCircle, _G.AutoSellTool, Color3.fromRGB(180, 180, 50))
    StatusLabel.Text = _G.AutoSellTool and "Auto Sell Tools: ON | ESP active" or "Auto Sell Tools: OFF | ESP active"
    StatusLabel.TextColor3 = _G.AutoSellTool and Color3.fromRGB(180, 180, 50) or Color3.fromRGB(120, 120, 140)
    showNotification(_G.AutoSellTool and "Auto Sell Tools enabled" or "Auto Sell Tools disabled", "Delay: "..SellDelay.."s")
end)

Speed1Btn.MouseButton1Click:Connect(function()
    _G.AutoUpgradeSpeed1 = not _G.AutoUpgradeSpeed1
    toggle(Speed1Btn, Speed1Circle, _G.AutoUpgradeSpeed1, Color3.fromRGB(150, 80, 200))
    StatusLabel.Text = _G.AutoUpgradeSpeed1 and "Auto Speed +1: ON | ESP active" or "Auto Speed +1: OFF | ESP active"
    StatusLabel.TextColor3 = _G.AutoUpgradeSpeed1 and Color3.fromRGB(150, 80, 200) or Color3.fromRGB(120, 120, 140)
    showNotification(_G.AutoUpgradeSpeed1 and "Auto Speed +1 enabled" or "Auto Speed +1 disabled", "")
end)

Speed10Btn.MouseButton1Click:Connect(function()
    _G.AutoUpgradeSpeed10 = not _G.AutoUpgradeSpeed10
    toggle(Speed10Btn, Speed10Circle, _G.AutoUpgradeSpeed10, Color3.fromRGB(150, 80, 200))
    StatusLabel.Text = _G.AutoUpgradeSpeed10 and "Auto Speed +10: ON | ESP active" or "Auto Speed +10: OFF | ESP active"
    StatusLabel.TextColor3 = _G.AutoUpgradeSpeed10 and Color3.fromRGB(150, 80, 200) or Color3.fromRGB(120, 120, 140)
    showNotification(_G.AutoUpgradeSpeed10 and "Auto Speed +10 enabled" or "Auto Speed +10 disabled", "")
end)

-- ==============================================
-- Window Dragging Logic
-- ==============================================
local dragging = false
local dragStart = nil
local startPos = nil

TitleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)

-- Floating Button
local CircleToggle = Instance.new("TextButton")
CircleToggle.Size = UDim2.new(0, 50, 0, 50)
CircleToggle.Position = UDim2.new(0, 80, 0.5, -25)
CircleToggle.AnchorPoint = Vector2.new(0, 0)
CircleToggle.BackgroundColor3 = Color3.fromRGB(55, 55, 70)
CircleToggle.BorderSizePixel = 0
CircleToggle.Text = ""
CircleToggle.ZIndex = 100
CircleToggle.Parent = ScreenGui
local CircleCorner = Instance.new("UICorner")
CircleCorner.CornerRadius = UDim.new(1, 0)
CircleCorner.Parent = CircleToggle
CircleToggle.MouseButton1Click:Connect(function()
	guiVisible = not guiVisible
	MainFrame.Visible = guiVisible
end)

-- Floating Button Dragging
local circleDragging = false
local circleStart = nil
local circlePos = nil

CircleToggle.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        circleDragging = true
        circleStart = input.Position
        circlePos = CircleToggle.Position
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if circleDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - circleStart
        CircleToggle.Position = UDim2.new(circlePos.X.Scale, circlePos.X.Offset + delta.X, circlePos.Y.Scale, circlePos.Y.Offset + delta.Y)
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        circleDragging = false
    end
end)

-- ==============================================
-- Cleanup on Destroy
-- ==============================================
ScreenGui.Destroying:Connect(function()
	cleanupGodmode()
	disableInstantTake()
	disableVIP()
	_G.InfiniteJump = false
	_G.InfiniteZoom = false
	toggleInfiniteZoom(false)
	_G.AutoCollect = false
	_G.AutoRebirth = false
	_G.AutoSellTool = false
	_G.AutoUpgradeSpeed1 = false
	_G.AutoUpgradeSpeed10 = false
end)
CircleToggle.Visible = true
