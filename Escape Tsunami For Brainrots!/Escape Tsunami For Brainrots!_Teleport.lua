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
-- Due to the open-source nature, you'll have to handle any issues that arise from now on on your own!
-- 🚫Any money scamming is strictly prohibited!
-- ⚠️All open-source projects of the MR-S team use the AGPL3.0 open-source license. Please comply with the license terms!
-- Finally: Please credit the source, thanks!


local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local root = character:WaitForChild("HumanoidRootPart")

local Speed = 500 
local zoneCF = CFrame.new(1627.62402, 37.375, 0)
local zoneSize = Vector3.new(25.515625, 70.75, 260)

local Points = {
    [0] = CFrame.new(122.78, 50, -37.03), 
    [1] = CFrame.new(122.780387, 4.190007, -37.039085),
    [2] = CFrame.new(340.465179, 3.229981, -132.698471),
    [3] = CFrame.new(476.623688, 3.229976, -136.101074),
    [4] = CFrame.new(661.128113, 3.229976, -137.49559),
    [5] = CFrame.new(943.427246, 3.229976, -136.574295),
    [6] = CFrame.new(1315.06775, 3.229976, -137.78447),
    [7] = CFrame.new(1886.96948, 3.229976, -137.550522),
    [8] = CFrame.new(2450.84497, 3.229977, -134.240295),
    [9] = CFrame.new(2597.69531, -2.820006, -93.964530)
}

_G.AutoMoveActive = false
_G.SafeMoveActive = false
local noclipConn = nil
local touchLoopActive = false

local function getActionStatus(targetPos)
    local myPos = root.Position
    for _, v in pairs(Workspace:GetDescendants()) do 
        if v:IsA("BasePart") and v.Name:lower():find("wave") then
            local wPos = v.Position
            local rel = zoneCF:PointToObjectSpace(wPos)
            if math.abs(rel.X) <= zoneSize.X/2 and math.abs(rel.Z) <= zoneSize.Z/2 then
                return "STOP"
            end
            if (wPos - targetPos).Magnitude <= 65 or (wPos - myPos).Magnitude <= 55 then
                return "FORCE_TP"
            end
        end
    end
    return "TWEEN"
end

local function startTouchEffect(state)
    touchLoopActive = state
    if state then
        task.spawn(function()
            while touchLoopActive do
                if root then
                    local parts = Workspace:GetPartBoundsInRadius(root.Position, 10)
                    for _, part in ipairs(parts) do
                        part.CanTouch = false
                    end
                end
                task.wait(0.1)
            end
        end)
    end
end

local function setEnv(active)
    if active then
        pcall(function()
            local walls = Workspace:FindFirstChild("DefaultMap_SharedInstances")
            if walls then
                for _, v in pairs(walls.VIPWalls:GetChildren()) do
                    if v:IsA("BasePart") then
                        v.Size = Vector3.new(0.001, 0.001, 0.001)
                    end
                end
            end
        end)
        startTouchEffect(true)
        noclipConn = RunService.Stepped:Connect(function()
            if character then
                for _, p in pairs(character:GetDescendants()) do
                    if p:IsA("BasePart") then
                        p.CanCollide = false
                    end
                end
                local hum = character:FindFirstChildOfClass("Humanoid")
                if hum then
                    hum.PlatformStand = true
                end
            end
        end)
    else
        if noclipConn then
            noclipConn:Disconnect()
            noclipConn = nil
        end
        startTouchEffect(false)
        local hum = character:FindFirstChildOfClass("Humanoid")
        if hum then
            hum.PlatformStand = false
        end
    end
end

local function executeMove(targetCF, mode)
    while (_G.AutoMoveActive and mode == "AUTO") or (_G.SafeMoveActive and mode == "SAFE") do
        local targetPos = targetCF.Position
        local curPos = root.Position
        local status = getActionStatus(targetPos)
        local dist = (curPos - targetPos).Magnitude

        root.AssemblyLinearVelocity = Vector3.zero
        root.AssemblyAngularVelocity = Vector3.zero

        if status == "STOP" then
            task.wait(0.05)
        elseif status == "FORCE_TP" or dist <= 25 then
            root.CFrame = targetCF
            break
        else
            local dt = task.wait()
            local dir = Vector3.new(
                targetPos.X - curPos.X,
                0,
                targetPos.Z - curPos.Z
            )

            if dir.Magnitude > 0 then
                local newPos = curPos + dir.Unit * (Speed * dt)
                root.CFrame = CFrame.new(
                    Vector3.new(newPos.X, curPos.Y, newPos.Z),
                    targetPos
                )
            end

            if dist <= 3 then
                root.CFrame = targetCF
                break
            end
        end
    end
end

local sg = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
local f = Instance.new("Frame", sg)
f.Size = UDim2.new(0, 220, 0, 160)
f.Position = UDim2.new(0.5, -110, 0.1, 0)
f.BackgroundColor3 = Color3.fromRGB(15, 15, 15)

local b1 = Instance.new("TextButton", f)
b1.Size = UDim2.new(1, 0, 0, 50)
b1.Text = "GO (1-9): OFF"
b1.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
b1.TextColor3 = Color3.new(1, 1, 1)

local b2 = Instance.new("TextButton", f)
b2.Size = UDim2.new(1, 0, 0, 50)
b2.Position = UDim2.new(0, 0, 0, 55)
b2.Text = "SAFE (9-0): OFF"
b2.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
b2.TextColor3 = Color3.new(1, 1, 1)

local function updateUI()
    b1.Text = _G.AutoMoveActive and "GO: ON" or "GO (1-9): OFF"
    b1.BackgroundColor3 = _G.AutoMoveActive and Color3.fromRGB(0, 150, 0) or Color3.fromRGB(150, 0, 0)
    b2.Text = _G.SafeMoveActive and "SAFE: ON" or "SAFE (9-0): OFF"
    b2.BackgroundColor3 = _G.SafeMoveActive and Color3.fromRGB(0, 150, 0) or Color3.fromRGB(150, 0, 0)
end

b1.MouseButton1Click:Connect(function()
    if _G.SafeMoveActive then
        _G.SafeMoveActive = false
    end
    _G.AutoMoveActive = not _G.AutoMoveActive
    updateUI()

    if _G.AutoMoveActive then
        setEnv(true)
        for i = 1, 9 do
            if not _G.AutoMoveActive then break end
            executeMove(Points[i], "AUTO")
        end
        setEnv(false)
        if _G.AutoMoveActive then
            root.Anchored = true
            task.wait(1)
            root.Anchored = false
        end
        _G.AutoMoveActive = false
        updateUI()
    end
end)

b2.MouseButton1Click:Connect(function()
    if _G.AutoMoveActive then
        _G.AutoMoveActive = false
    end
    _G.SafeMoveActive = not _G.SafeMoveActive
    updateUI()

    if _G.SafeMoveActive then
        setEnv(true)
        for i = 9, 0, -1 do
            if not _G.SafeMoveActive then break end
            executeMove(Points[i], "SAFE")
        end
        setEnv(false)
        if _G.SafeMoveActive then
            root.Anchored = true
            task.wait(1)
            root.Anchored = false
        end
        _G.SafeMoveActive = false
        updateUI()
    end
end)

player.CharacterAdded:Connect(function(nc)
    character = nc
    root = nc:WaitForChild("HumanoidRootPart")
end)
