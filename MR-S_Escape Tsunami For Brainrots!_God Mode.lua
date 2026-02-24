--[[

  ███╗   ███╗██████╗              ███████╗    ████████╗███████╗ █████╗ ███╗   ███╗
  ████╗ ████║██╔══██╗             ██╔════╝    ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║
  ██╔████╔██║██████╔╝  ███████    ███████╗       ██║   █████╗  ███████║██╔████╔██║
  ██║╚██╔╝██║██╔══██╗             ╚════██║       ██║   ██╔══╝  ██╔══██║██║╚██╔╝██║
  ██║ ╚═╝ ██║██║  ██║             ███████║       ██║   ███████╗██║  ██║██║ ╚═╝ ██║
  ╚═╝     ╚═╝╚═╝  ╚═╝             ╚══════╝       ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝

                    by MR-S Team | www.mr-s.us.ci
]]--

-- Escape Tsunami For Brainrots! → God Mode
-- 🚫Any money scamming is strictly prohibited!
-- ⚠️All open-source projects of the MR-S team use the AGPL3.0 open-source license. Please comply with the license terms!



if game.CoreGui:FindFirstChild("ETFB_GodGui") then
	game.CoreGui.ETFB_GodGui:Destroy()
end
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local camera = workspace.CurrentCamera
local player = Players.LocalPlayer


local function showNotification(title, message)
	StarterGui:SetCore("SendNotification", {
		Title = title;
		Text = message;
		Duration = 4;
	})
end


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


local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ETFB_GodGui"
ScreenGui.IgnoreGuiInset = false
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = CoreGui


local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 240, 0, 120)
MainFrame.Position = UDim2.new(0.5, -120, 0.65, -60)
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
Title.Text = "OpenSource @MR-S丨www.mr-s.us.ci"
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


local Content = Instance.new("Frame")
Content.BackgroundTransparency = 1
Content.Size = UDim2.new(1, -24, 0, 60)
Content.Position = UDim2.new(0, 12, 0, 46)
Content.ZIndex = 2
Content.Parent = MainFrame


local function createToggle(text, y)
	local frame = Instance.new("Frame")
	frame.Size = UDim2.new(1, 0, 0, 40)
	frame.Position = UDim2.new(0, 0, 0, y)
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


local GodBtn,  GodCircle,  GodFrame  = createToggle("GOD MODE",   0)
local godEnabled  = false


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


local StatusLabel = Instance.new("TextLabel")
StatusLabel.Size = UDim2.new(1, -16, 0, 24)
StatusLabel.Position = UDim2.new(0, 8, 1, -28)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = "God Mode: OFF"
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.TextSize = 10
StatusLabel.TextColor3 = Color3.fromRGB(120, 120, 140)
StatusLabel.TextWrapped = true
StatusLabel.TextXAlignment = Enum.TextXAlignment.Left
StatusLabel.ZIndex = 3
StatusLabel.Parent = MainFrame


GodBtn.MouseButton1Click:Connect(function()
	godEnabled = not godEnabled
	toggle(GodBtn, GodCircle, godEnabled, Color3.fromRGB(200, 50, 50))
	if godEnabled then
		enableGodmode()
		showNotification("GOD MODE ON", "www.mr-s.us.ci")
		StatusLabel.Text = "God Mode: ON"
		StatusLabel.TextColor3 = Color3.fromRGB(200, 80, 80)
	else
		cleanupGodmode()
		showNotification("GOD MODE OFF", "www.mr-s.us.ci")
		StatusLabel.Text = "God Mode: OFF"
		StatusLabel.TextColor3 = Color3.fromRGB(120, 120, 140)
	end
end)


local dragging = false
local dragInput = nil
local dragStart = nil
local startPos = nil

TitleBar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = MainFrame.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then dragging = false end
		end)
	end
end)

TitleBar.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		local delta = input.Position - dragStart
		MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)


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


local circleDragging = false
local circleInput = nil
local circleStart = nil
local circlePos = nil

CircleToggle.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		circleDragging = true
		circleStart = input.Position
		circlePos = CircleToggle.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then circleDragging = false end
		end)
	end
end)

CircleToggle.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		circleInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if circleDragging and input == circleInput then
		local delta = input.Position - circleStart
		CircleToggle.Position = UDim2.new(circlePos.X.Scale, circlePos.X.Offset + delta.X, circlePos.Y.Scale, circlePos.Y.Offset + delta.Y)
	end
end)


ScreenGui.Destroying:Connect(function()
	cleanupGodmode()
end)

CircleToggle.Visible = true
