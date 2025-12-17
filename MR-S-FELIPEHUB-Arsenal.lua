-- CN
-- 开源作者：MR
-- http://qins.mc.hi.cn/MR-S
-- 不知名脚本,闲的没事破的玩
-- 功能效果没测试过,自行测试,如有损坏自行修复！
-- 全源开源，应该没有人闲的没事拿这个圈钱吧？
-- 最后：请标明来源，谢谢！


-- EN
-- Open Source Author: MR
-- http://qins.mc.hi.cn/MR-S
-- Unknown script, cracked for fun during free time
-- Functionality hasn't been tested; test it yourself and fix any issues if damaged!
-- Fully open-source; hopefully no one would bother monetizing this, right?
-- Lastly: Please credit the source, thank you!



local vu1 = cloneref(game:GetService("Players"))
local vu2 = cloneref(game:GetService("RunService"))
local vu3 = cloneref(game:GetService("ReplicatedStorage")).Weapons
local vu4 = cloneref(game:GetService("VirtualInputManager"))
local v5, v6, v7 = pairs(vu3:GetChildren())
local vu8 = {}
while true do
    local v9
    v7, v9 = v5(v6, v7)
    if v7 == nil then
        break
    end
    vu8[v9] = {}
    local v10, v11, v12 = pairs(v9:GetChildren())
    while true do
        local v13, v14 = v10(v11, v12)
        if v13 == nil then
            break
        end
        v12 = v13
        if string.find(v14.ClassName, "Value") then
            vu8[v9][v14.Name] = v14.Value
        end
    end
end
local v15 = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
local vu16 = loadstring(game:HttpGet(v15 .. "Library.lua"))()
vu16.ForceCheckbox = true
local v17 = loadstring(game:HttpGet(v15 .. "addons/ThemeManager.lua"))()
local v18 = loadstring(game:HttpGet(v15 .. "addons/SaveManager.lua"))()
vu16.ShowToggleFrameInKeybinds = true
local v19 = vu16:CreateWindow({
    Title = "FELIPEHUB-Arsenal",
    Footer = "MR-S团队 MR破解| qins.mc.hi.cn/MR-S",
    NotifySide = "Right",
    ShowCustomCursor = true,
    Resizable = true,
    Icon = "biohazard",
    MobileButtonsSide = "Left",
    ToggleKeybind = Enum.KeyCode.LeftControl,
    Size = UDim2.new(0, 600, 0, 350)
})
local vu20 = vu16.Options
local vu21 = vu16.Toggles
local v22 = {
    Main = v19:AddTab("Gun Mods", "bow-arrow"),
    ESP = v19:AddTab("ESP", "eye"),
    Legit = v19:AddTab("Combat", "hammer"),
    Player = v19:AddTab("Player", "navigation"),
    UI = v19:AddTab("UI", "settings")
}
local function vu23(_)
    return true
end
local v24 = v22.Main:AddLeftGroupbox("Gun Mods", "bow-arrow")
v24:AddToggle("InfiniteAmmo", {
    Text = "Infinite Ammo",
    Tooltip = "Gives you infinite ammo",
    Callback = function(p25)
        if p25 then
            local v26 = vu3
            local v27, v28, v29 = pairs(v26:GetChildren())
            while true do
                local v30
                v29, v30 = v27(v28, v29)
                if v29 == nil then
                    break
                end
                if vu23(v30) then
                    local v31 = Instance.new("Folder", v30)
                    v31.Name = "Infinite"
                    v31:SetAttribute("__nxp_attr", true)
                end
            end
        else
            local v32 = vu3
            local v33, v34, v35 = pairs(v32:GetChildren())
            while true do
                local v36
                v35, v36 = v33(v34, v35)
                if v35 == nil then
                    break
                end
                if v36:FindFirstChild("Infinite") and (v36.Infinite:IsA("Folder") and (v36.Infinite:GetAttribute("__nxp_attr") and vu23(v36))) then
                    v36.Infinite:Destroy()
                end
            end
        end
    end
})
v24:AddToggle("FireRate", {
    Text = "Fast Gun",
    Tooltip = "Makes your gun shoot fast",
    Callback = function(p37)
        _G.FastGun = p37
        if p37 then
            local v38 = vu3
            local v39, v40, v41 = pairs(v38:GetChildren())
            while true do
                local v42
                v41, v42 = v39(v40, v41)
                if v41 == nil then
                    break
                end
                if v42:FindFirstChild("FireRate") and vu23(v42) then
                    v42.FireRate.Value = vu20.FireRateValue.Value
                end
            end
        else
            local v43 = vu3
            local v44, v45, v46 = pairs(v43:GetChildren())
            while true do
                local v47
                v46, v47 = v44(v45, v46)
                if v46 == nil then
                    break
                end
                if v47:FindFirstChild("FireRate") and vu23(v47) then
                    v47.FireRate.Value = vu8[v47].FireRate
                end
            end
        end
    end
})
v24:AddSlider("FireRateValue", {
    Text = "Fire Rate",
    Default = 0.03,
    Min = 0.02,
    Max = 1,
    Rounding = 2
})
vu20.FireRateValue:OnChanged(function()
    local v48 = vu20.FireRateValue.Value
    if _G.FastGun then
        local v49 = vu3
        local v50, v51, v52 = pairs(v49:GetChildren())
        while true do
            local v53
            v52, v53 = v50(v51, v52)
            if v52 == nil then
                break
            end
            if v53:FindFirstChild("FireRate") and vu23(v53) then
                v53.FireRate.Value = v48
            end
        end
    end
end)
v24:AddToggle("FireRate", {
    Text = "No Recoil",
    Tooltip = "Removes your guns recoil",
    Callback = function(p54)
        if p54 then
            local v55 = vu3
            local v56, v57, v58 = pairs(v55:GetChildren())
            while true do
                local v59
                v58, v59 = v56(v57, v58)
                if v58 == nil then
                    break
                end
                if v59:FindFirstChild("RecoilControl") and vu23(v59) then
                    v59.RecoilControl.Value = 0
                end
            end
        else
            local v60 = vu3
            local v61, v62, v63 = pairs(v60:GetChildren())
            while true do
                local v64
                v63, v64 = v61(v62, v63)
                if v63 == nil then
                    break
                end
                if v64:FindFirstChild("RecoilControl") and vu23(v64) then
                    v64.RecoilControl.Value = vu8[v64].RecoilControl
                end
            end
        end
    end
})
v24:AddToggle("FireRate", {
    Text = "Automatic",
    Tooltip = "Makes your gun automatic",
    Callback = function(p65)
        if p65 then
            local v66 = vu3
            local v67, v68, v69 = pairs(v66:GetChildren())
            while true do
                local v70
                v69, v70 = v67(v68, v69)
                if v69 == nil then
                    break
                end
                if v70:FindFirstChild("Auto") then
                    v70.Auto.Value = true
                end
            end
        else
            local v71 = vu3
            local v72, v73, v74 = pairs(v71:GetChildren())
            while true do
                local v75
                v74, v75 = v72(v73, v74)
                if v74 == nil then
                    break
                end
                if v75:FindFirstChild("Auto") then
                    v75.Auto.Value = vu8[v75].Auto
                end
            end
        end
    end
})
v24:AddToggle("FireRate", {
    Text = "No Spread",
    Tooltip = "Removes spread from your gun",
    Callback = function(p76)
        if p76 then
            local v77 = vu3
            local v78, v79, v80 = pairs(v77:GetChildren())
            while true do
                local v81
                v80, v81 = v78(v79, v80)
                if v80 == nil then
                    break
                end
                if v81:FindFirstChild("Spread") then
                    v81.Spread.Value = 0
                end
            end
        else
            local v82 = vu3
            local v83, v84, v85 = pairs(v82:GetChildren())
            while true do
                local v86
                v85, v86 = v83(v84, v85)
                if v85 == nil then
                    break
                end
                if v86:FindFirstChild("Spread") then
                    v86.Spread.Value = vu8[v86].Spread
                end
            end
        end
    end
})
local v87 = v22.ESP:AddLeftGroupbox("Tracers", "eye")
v87:AddToggle("Tracers", {
    Text = "Tracers",
    Tooltip = "Draws line to the enemy"
})
v87:AddToggle("TracersTeamCheck", {
    Text = "Team Check",
    Tooltip = "Only draws line on the enemy"
})
v87:AddDropdown("TracersPosition", {
    Values = {
        "Top",
        "Center",
        "Bottom"
    },
    Default = 1,
    Text = "Tracer Position"
})
local v88 = v22.ESP:AddLeftGroupbox("Boxes", "eye")
v88:AddToggle("Boxes", {
    Text = "Boxes",
    Tooltip = "Draws boxes around the enemy"
})
v88:AddToggle("BoxesTeamCheck", {
    Text = "Team Check",
    Tooltip = "Only draws boxes on the enemy"
})
local v89 = v22.Legit:AddLeftGroupbox("Aimbot", "mouse")
local vu90 = Drawing.new("Circle")
vu90.Thickness = 2
vu90.Radius = 100
vu90.Visible = false
vu90.NumSides = 99
vu90.Color = Color3.fromRGB(255, 0, 0)
v89:AddToggle("Aimbot", {
    Text = "Aimbot",
    Tooltip = "Aims at targets for you without you having to move the mouse"
}):AddKeyPicker("AimbotKey", {
    Default = "MB2",
    SyncToggleState = false,
    Mode = "Hold",
    Text = "Aimbot Key",
    NoUI = false
})
v89:AddSlider("AimbotFOV", {
    Text = "FOV",
    Default = 100,
    Min = 60,
    Max = 700,
    Rounding = 0,
    Callback = function(p91)
        vu90.Radius = p91
    end
})
v89:AddSlider("AimbotSmoothing", {
    Text = "Smoothness",
    Default = 0,
    Min = 0,
    Max = 0.5,
    Rounding = 2,
    Tooltip = "The speed in seconds in which the aimbot will aim at the target"
})
v89:AddDropdown("AimPart", {
    Values = {
        "Head",
        "Torso"
    },
    Default = 1,
    Text = "Aim Part"
})
v89:AddToggle("FOVCircleAimbot", {
    Text = "FOV Circle"
}):AddColorPicker("AimbotCircleColor", {
    Default = Color3.fromRGB(255, 0, 0),
    Title = "Color",
    Callback = function(p92)
        vu90.Color = p92
    end
})
v22.Legit:AddRightGroupbox("Triggerbot", "cat"):AddToggle("Triggerbot", {
    Text = "Triggerbot",
    Tooltip = "Automatically shoots when the crosshair hovers over the enemy"
})
local v93 = v22.Legit:AddRightGroupbox("Kill All", "cat")
v93:AddToggle("KillAll", {
    Text = "Kill All",
    Tooltip = "Kills everyone (just hold down shoot or backstab)",
    Callback = function()
        task.spawn(function()
            while vu21.KillAll.Value and task.wait() do
                local v94 = vu1
                local v95, v96, v97 = pairs(v94:GetPlayers())
                while true do
                    local v98
                    v97, v98 = v95(v96, v97)
                    if v97 == nil then
                        break
                    end
                    local vu99 = false
                    local function v100()
                        vu99 = true
                    end
                    if not vu21.KillAll.Value then
                        print("not enabled")
                        v100()
                    end
                    if v98.TeamColor.Color ~= vu1.LocalPlayer.TeamColor.Color then
                        if v98.Character and (v98.Character:FindFirstChild("HumanoidRootPart") and v98.NRPBS.Health.Value > 0) then
                            if vu1.LocalPlayer.Character and vu1.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                local v101 = tick()
                                while tick() - v101 <= 1 do
                                    if not vu21.KillAll.Value then
                                        v100()
                                    end
                                    if not v98.Status.Alive.Value then
                                        v100()
                                    end
                                    if not vu1.LocalPlayer.Status.Alive.Value then
                                        v100()
                                    end
                                    if v98.Character and (v98.Character:FindFirstChild("HumanoidRootPart") and (v98.Character:FindFirstChild("Head") and v98.NRPBS.Health.Value > 0)) then
                                        if v98.Character.HumanoidRootPart.Position.Y <= - 155 then
                                            print("less tahn 155")
                                            v100()
                                        end
                                        if vu1.LocalPlayer.Character and (vu1.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and vu1.LocalPlayer.NRPBS.Health.Value > 0) then
                                            vu1.LocalPlayer.Character.HumanoidRootPart.CFrame = v98.Character.HumanoidRootPart.CFrame - v98.Character.HumanoidRootPart.CFrame.LookVector * 6
                                            vu1.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.zero
                                            workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, v98.Character.Head.Position)
                                            if vu21.KillAllClick.Value then
                                                vu4:SendMouseButtonEvent(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2, 0, true, nil, 0)
                                                task.wait()
                                                vu4:SendMouseButtonEvent(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2, 0, false, nil, 0)
                                            end
                                        else
                                            print("b")
                                            v100()
                                        end
                                    else
                                        print("a")
                                        v100()
                                    end
                                    task.wait()
                                end
                            else
                                print("no root (lplr)")
                            end
                        else
                            print("no root [1]")
                        end
                    else
                        print("team check")
                    end
                    if vu99 then
                        break
                    end
                end
            end
        end)
    end
}):AddKeyPicker("KillAllKey", {
    Default = "V",
    SyncToggleState = false,
    Mode = "Toggle",
    Text = "Kill All Toggle",
    NoUI = false,
    Callback = function()
        vu21.KillAll:SetValue(not vu21.KillAll.Value)
    end
})
v93:AddToggle("KillAllClick", {
    Text = "Click",
    Tooltip = "Virtualizes a click to shoot/stab"
})
local v102 = v22.Player:AddLeftGroupbox("Speed", "navigation")
v102:AddToggle("Speedhack", {
    Text = "Speed Hack",
    Tooltip = "Makes you fast"
})
v102:AddSlider("SpeedValue", {
    Text = "Speed Value",
    Default = 16,
    Min = 16,
    Max = 200,
    Rounding = 0
})
task.spawn(function()
    local v103 = game:GetService("Players").LocalPlayer
    while true do
        repeat
            task.wait()
        until vu21.Speedhack.Value
        local v104 = v103.Character
        if v104 then
            v104 = v103.Character:FindFirstChild("Humanoid")
        end
        if v104 and v104.MoveDirection ~= Vector3.zero then
            v103.Character:TranslateBy(v104.MoveDirection * vu20.SpeedValue.Value * vu2.RenderStepped:Wait())
        end
    end
end)
local vu105 = nil
local function vu121(p106)
    local v107 = math.huge
    local v108 = workspace.CurrentCamera
    local v109 = vu1.LocalPlayer:GetMouse()
    local v110 = v109.X
    local v111 = v109.Y
    local v112 = vu1
    local v113, v114, v115 = pairs(v112:GetPlayers())
    local v116 = nil
    while true do
        local v117
        v115, v117 = v113(v114, v115)
        if v115 == nil then
            break
        end
        if v117 ~= vu1.LocalPlayer and v117.Character and (v117.Character:FindFirstChild("HumanoidRootPart") and v117.TeamColor ~= vu1.LocalPlayer.TeamColor) then
            local v118, v119 = v108:worldToViewportPoint(v117.Character.HumanoidRootPart.Position)
            if v119 then
                local v120 = (Vector2.new(v110, v111) - Vector2.new(v118.X, v118.Y)).magnitude
                if v120 < v107 then
                    if v120 <= p106 then
                        v116 = v117
                        v107 = v120
                    end
                end
            end
        end
    end
    return v116
end
vu2.RenderStepped:Connect(function()
    local v122 = cloneref(game:GetService("UserInputService"))
    vu90.Position = Vector2.new(v122:GetMouseLocation().X, v122:GetMouseLocation().Y)
    if vu21.Aimbot.Value then
        if vu21.FOVCircleAimbot.Value then
            vu90.Visible = true
        else
            vu90.Visible = false
        end
        if vu20.AimbotKey:GetState() then
            if not vu121(vu20.AimbotFOV.Value) then
                vu105 = nil
            end
            local v123 = vu105 or vu121(vu20.AimbotFOV.Value)
            if v123 then
                local v124 = vu20.AimPart.Value
                local v125 = vu20.AimbotSmoothing.Value
                if v125 == 0 then
                    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, v123.Character[v124 == "Torso" and "HumanoidRootPart" or "Head"].Position)
                else
                    cloneref(game:GetService("TweenService")):Create(workspace.CurrentCamera, TweenInfo.new(v125), {
                        CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, v123.Character[v124 == "Torso" and "HumanoidRootPart" or "Head"].Position)
                    }):Play()
                end
            end
        end
    else
        vu90.Visible = false
        return
    end
end)
task.spawn(function()
    while true do
        repeat
            task.wait()
        until vu21.Triggerbot.Value and not game:GetService("UserInputService"):GetFocusedTextBox()
        local v126 = vu1
        local v127, v128, v129 = pairs(v126:GetPlayers())
        while true do
            local v130
            v129, v130 = v127(v128, v129)
            if v129 == nil or (v130 == vu1.LocalPlayer or not v130.Character) or (not v130.Character:FindFirstChild("HumanoidRootPart") or v130.TeamColor == vu1.LocalPlayer.TeamColor) then
                break
            end
            local v131 = RaycastParams.new()
            v131.FilterDescendantsInstances = {
                vu1.LocalPlayer.Character,
                workspace.CurrentCamera
            }
            local v132 = workspace:Raycast(workspace.CurrentCamera.CFrame.Position, workspace.CurrentCamera.CFrame.LookVector * 10000, v131)
            if v132 and v132.Instance and v132.Instance:IsDescendantOf(v130.Character) then
                vu4:SendMouseButtonEvent(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2, 0, true, nil, 0)
                task.wait()
                vu4:SendMouseButtonEvent(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2, 0, false, nil, 0)
            end
        end
    end
end)
local function v140(pu133)
    local vu134 = Drawing.new("Line")
    vu134.Visible = false
    vu134.Thickness = 2
    vu134.Transparency = 1
    vu2.RenderStepped:Connect(function()
        if vu21.Tracers.Value then
            local v135 = pu133 and pu133.Character
            if v135 then
                v135 = pu133.Character:FindFirstChild("HumanoidRootPart")
            end
            if vu21.TracersTeamCheck.Value and pu133.TeamColor.Color == vu1.LocalPlayer.TeamColor.Color then
                vu134.Visible = false
            elseif v135 then
                vu134.Color = pu133.TeamColor.Color
                local v136, v137 = workspace.CurrentCamera:worldToViewportPoint(v135.Position)
                vu134.Visible = v137
                vu134.To = Vector2.new(v136.X, v136.Y)
                local v138 = nil
                local v139
                if vu20.TracersPosition.Value ~= "Bottom" then
                    if vu20.TracersPosition.Value ~= "Center" then
                        v139 = vu20.TracersPosition.Value == "Top" and 0 or v138
                    else
                        v139 = workspace.CurrentCamera.ViewportSize.Y / 2
                    end
                else
                    v139 = workspace.CurrentCamera.ViewportSize.Y
                end
                vu134.From = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, v139)
            else
                vu134.Visible = false
            end
        else
            vu134.Visible = false
        end
    end)
end
local function v149(pu141)
    local vu142 = Drawing.new("Square")
    local vu143 = Drawing.new("Square")
    vu142.Visible = false
    vu142.Thickness = 3
    vu142.Color = Color3.fromRGB(0, 0, 0)
    vu143.Visible = false
    vu143.Thickness = 1
    vu143.Color = Color3.fromRGB(1, 1, 1)
    vu2.RenderStepped:Connect(function()
        if vu21.Boxes.Value then
            local v144 = pu141 and pu141.Character
            if v144 then
                v144 = pu141.Character:FindFirstChild("HumanoidRootPart")
            end
            if vu21.BoxesTeamCheck.Value and pu141.TeamColor.Color == vu1.LocalPlayer.TeamColor.Color then
                vu142.Visible = false
                vu143.Visible = false
            elseif v144 then
                vu143.Color = pu141.TeamColor.Color
                local vu145, v146 = workspace.CurrentCamera:worldToViewportPoint(v144.Position)
                vu143.Visible = v146
                vu142.Visible = v146
                pcall(function()
                    local v147 = workspace.CurrentCamera:worldToViewportPoint(pu141.Character.Head.Position + Vector3.new(0, 0.5, 0))
                    local v148 = workspace.CurrentCamera:worldToViewportPoint(pu141.Character.Head.Position + Vector3.new(0, - 3, 0))
                    vu142.Size = Vector2.new(1000 / vu145.Z, v147.Y - v148.Y)
                    vu142.Position = Vector2.new(vu145.X - vu142.Size.X / 2, vu145.Y - vu142.Size.Y / 2)
                    vu143.Size = Vector2.new(1000 / vu145.Z, v147.Y - v148.Y)
                    vu143.Position = Vector2.new(vu145.X - vu143.Size.X / 2, vu145.Y - vu143.Size.Y / 2)
                end)
            else
                vu143.Visible = false
                vu142.Visible = false
            end
        else
            vu142.Visible = false
            vu143.Visible = false
        end
    end)
end
local v150, v151, v152 = pairs(vu1:GetPlayers())
local v153 = vu20
while true do
    local v154
    v152, v154 = v150(v151, v152)
    if v152 == nil then
        break
    end
    if v154 ~= vu1.LocalPlayer then
        v140(v154)
        v149(v154)
    end
end
vu1.PlayerAdded:Connect(v140)
vu1.PlayerAdded:Connect(v149)
local v155 = v22.UI:AddLeftGroupbox("Menu", "wrench")
v155:AddToggle("KeybindMenuOpen", {
    Default = vu16.KeybindFrame.Visible,
    Text = "Open Keybind Menu",
    Callback = function(p156)
        vu16.KeybindFrame.Visible = p156
    end
})
v155:AddToggle("ShowCustomCursor", {
    Text = "Custom Cursor",
    Default = true,
    Callback = function(p157)
        vu16.ShowCustomCursor = p157
    end
})
v155:AddDropdown("NotificationSide", {
    Values = {
        "Left",
        "Right"
    },
    Default = "Right",
    Text = "Notification Side",
    Callback = function(p158)
        vu16:SetNotifySide(p158)
    end
})
v155:AddDropdown("DPIDropdown", {
    Values = {
        "50%",
        "75%",
        "100%",
        "125%",
        "150%",
        "175%",
        "200%"
    },
    Default = "100%",
    Text = "DPI Scale",
    Callback = function(p159)
        local v160 = p159:gsub("%%", "")
        vu16:SetDPIScale((tonumber(v160)))
    end
})
v155:AddDivider()
v155:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", {
    Default = "RightShift",
    NoUI = true,
    Text = "Menu keybind"
})
v155:AddButton("Unload", function()
    vu16:Unload()
end)
vu16.ToggleKeybind = v153.MenuKeybind
v17.Library = vu16
v17.Folder = "Aura"
v17:BuildFolderTree()
v17:CreateThemeManager((v22.UI:AddLeftGroupbox("Tracers", "eye")))
v17:ApplyTheme("Cyberpunk")
v18:SetLibrary(vu16)
v18:IgnoreThemeSettings()
v18:SetIgnoreIndexes({
    "MenuKeybind"
})
v18:SetFolder("Aura/arsenal")
v18:SetSubFolder("arsenal")
v18:BuildConfigSection(v22.UI)
v18:LoadAutoloadConfig()