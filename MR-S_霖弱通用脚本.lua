-- CN
-- 开源by：MR-S
-- http://qins.mc.hi.cn/MR-S
-- 功能效果没测试过,自行测试,如有损坏自行修复！
-- 全源开源，应该没有人闲的没事拿这个圈钱吧？
-- 最后：请标明来源，谢谢！

-- EN
-- Open Source by: MR-S
-- http://qins.mc.hi.cn/MR-S
-- Functionality hasn't been tested; test it yourself and fix any issues if damaged!
-- Fully open-source; hopefully no one would bother monetizing this, right?
-- Lastly: Please credit the source, thank you!

--[[

  ███╗   ███╗██████╗              ███████╗    ████████╗███████╗ █████╗ ███╗   ███╗
  ████╗ ████║██╔══██╗             ██╔════╝    ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║
  ██╔████╔██║██████╔╝  ███████    ███████╗       ██║   █████╗  ███████║██╔████╔██║
  ██║╚██╔╝██║██╔══██╗             ╚════██║       ██║   ██╔══╝  ██╔══██║██║╚██╔╝██║
  ██║ ╚═╝ ██║██║  ██║             ███████║       ██║   ███████╗██║  ██║██║ ╚═╝ ██║
  ╚═╝     ╚═╝╚═╝  ╚═╝             ╚══════╝       ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝

                    by MR-S Team | http://qins.mc.hi.cn/MR-S
]]--




if KingScript ~= 'By King' or (Roblox ~= '\u{8349}\u{62df}\u{5417}' or KingTeam ~= 'King\u{65e0}\u{654c}') then
    setclipboard('\u{9716}\u{6eba}QQ\u{65b0}\u{4e3b}\u{7fa4}\u{ff1a}http://qm.qq.com/cgi-bin/qm/qr?_wv=1027&k=viOjjgj19-TUiZlamhpxb6uvWwVNGoB7&authKey=ACDi9sCtIis%2F4P%2BtirP046uWaJ54%2F149eBnUvaAsMu%2BWZwSFoEQrzZC9UDGFwmp%2F&noverify=0&group_code=744830231')
    game.Players.LocalPlayer:Kick('\u{715e}\u{7b14}\u{4f60}\u{6ca1}\u{8fdb}\u{7fa4}\u{5427}\u{274c}')
else
    setclipboard('\u{9716}\u{6eba}QQ\u{65b0}\u{4e3b}\u{7fa4}\u{ff1a}http://qm.qq.com/cgi-bin/qm/qr?_wv=1027&k=viOjjgj19-TUiZlamhpxb6uvWwVNGoB7&authKey=ACDi9sCtIis%2F4P%2BtirP046uWaJ54%2F149eBnUvaAsMu%2BWZwSFoEQrzZC9UDGFwmp%2F&noverify=0&group_code=744830231')
    wait(0.1)

    local v1 = loadstring(game:HttpGet([[https://raw.githubusercontent.com/Hunryn/VB/refs/heads/main/%E9%80%9A%E7%9F%A5ui%20.lua]]))().Notify

    v1({
        Description = '\u{5df2}\u{5220}\u{9664}\u{5b9e}\u{65f6}\u{663e}\u{793a}\u{56e0}\u{4e3a}\u{61d2}\u{5f97}\u{5f04}',
        Title = '\u{9716}\u{6eba}TG',
        Duration = 5,
    })
    v1({
        Description = '\u{98de}\u{884c}\u{548c}\u{98de}\u{8f66}\u{7ed3}\u{5408}\u{4e00}\u{8d77}\u{4e86} \u{4f18}\u{5316}ESP\u{6d41}\u{7545}',
        Title = '\u{9716}\u{6eba}Script',
        Duration = 5,
    })
    v1({
        Description = '\u{811a}\u{672c}\u{52a0}\u{8f7d}\u{4e2d}\u{2026}\u{2026}',
        Title = '\u{9716}\u{6eba}Roblox',
        Duration = 5,
    })

    local v2, vu3 = pcall(function()
        return loadstring(game:HttpGet([[https://raw.githubusercontent.com/KingScriptAE/No-sirve-nada./main/%E9%9C%96%E6%BA%BA%E8%84%9A%E6%9C%ACUI.lua]]))()
    end)

    if not v2 then
        warn('UI\u{5e93}\u{52a0}\u{8f7d}\u{5931}\u{8d25}')

        return
    end

    local v4 = vu3:new('KING\u{250b}\u{901a}\u{7528}' .. identifyexecutor())
    local v5 = v4:Tab('\u{4f7f}\u{7528}\u{901a}\u{7528}\u{5fc5}\u{770b}', '16060333448'):section('\u{811a}\u{672c}\u{624b}\u{518c}', true)

    v5:Label('\u{8fd9}\u{4e0d}\u{662f}\u{4e3b}\u{811a}\u{672c}')
    v5:Label('\u{53ea}\u{6709}\u{901a}\u{7528}\u{529f}\u{80fd}\u{ff0c}\u{6682}\u{65f6}\u{8fd9}\u{4e48}\u{5c11}')
    v5:Label('\u{540e}\u{7eed}\u{518d}\u{52a0}\u{5427}\u{5404}\u{4f4d}')
    v5:Label('\u{73b0}\u{5728}\u{4e0d}\u{77e5}\u{9053}\u{66f4}\u{65b0}\u{4ec0}\u{4e48}\u{ff0c}\u{6240}\u{4ee5}\u{505c}\u{66f4}\u{4e86}')
    v4:Tab('\u{5f00}\u{542f}\u{4e3b}\u{811a}\u{672c}', '16060333448'):section('\u{4e3b}\u{811a}\u{672c}', true):Button('\u{9716}\u{6eba}\u{811a}\u{672c}', function()
        KingScript = 'By King'
        Roblox = '\u{65b0}\u{98de}\u{6708}\u{4e8c}\u{98de}\u{6625}'
        KingTeam = 'KingQQ\u{65b0}\u{4e3b}\u{7fa4}https://qm.qq.com/q/SU0hmhIvwk'

        loadstring(game:HttpGet([[https://raw.githubusercontent.com/ShenJiaoBen/ShenJiaoBen/refs/heads/main/VIP.lua]]))()
    end)

    local v6 = v4:Tab('\u{57fa}\u{7840}\u{529f}\u{80fd}', '16060333448')
    local v7 = v6:section('FPS\u{5e27}\u{7387}\u{8bbe}\u{7f6e}', true)
    local vu8 = false
    local vu9 = 60
    local vu10 = false
    local vu11 = nil

    local function vu12()
        if vu10 then
            setfpscap(vu9)
        else
            setfpscap(0)
        end
    end
    local function vu15(p13)
        local v14 = tonumber(p13)

        if v14 and (1 <= v14 and v14 <= 1000) then
            return v14
        end

        warn('\u{5e27}\u{7387}\u{5fc5}\u{987b}\u{5728}1\u{5230}1000\u{4e4b}\u{95f4}')

        return 60
    end

    local v16 = game.Players.LocalPlayer.PlayerGui
    local vu17 = Instance.new('ScreenGui')

    vu17.Name = 'FpsGui'
    vu17.Parent = v16

    local vu18 = Instance.new('TextLabel')

    vu18.Name = 'FpsLabel'
    vu18.Size = UDim2.new(0, 100, 0, 20)
    vu18.Position = UDim2.new(0, 20, 0, 20)
    vu18.BackgroundColor3 = Color3.new(0, 0, 0)
    vu18.TextColor3 = Color3.new(1, 1, 1)
    vu18.Font = Enum.Font.SourceSans
    vu18.FontSize = Enum.FontSize.Size14
    vu18.Text = '\u{5e27}\u{6570}: '
    vu18.Parent = vu17

    local vu19 = tick()
    local vu20 = 0

    local function vu22()
        local v21 = tick() - vu19

        vu19 = tick()
        vu20 = math.floor(1 / v21)
        vu18.Text = '\u{5e27}\u{6570}: ' .. vu20
    end

    local vu23 = game:GetService('RunService').RenderStepped:Connect(vu22)

    v7:Toggle('\u{663e}\u{793a}FPS', '\u{663e}\u{793a}FPS', true, function(p24)
        if p24 then
            vu17.Enabled = true
            vu23 = game:GetService('RunService').RenderStepped:Connect(vu22)
        else
            vu17.Enabled = false

            if vu23 then
                vu23:Disconnect()

                vu23 = nil
            end
        end
    end)
    v7:Textbox('\u{8bbe}\u{7f6e}FPS\u{5e27}\u{7387}', 'fpsValue', '\u{8f93}\u{5165}\u{5e27}\u{7387} (1-1000)', function(p25)
        vu9 = vu15(p25)

        vu12()
    end)
    v7:Toggle('\u{5f3a}\u{5236}\u{9501}\u{5b9a}FPS\u{5e27}\u{7387}', '\u{5f3a}\u{5236}\u{9501}\u{5b9a}FPS\u{5e27}\u{7387}', false, function(p26)
        vu10 = p26

        vu12()
    end)
    v7:Button('\u{6062}\u{590d}\u{9ed8}\u{8ba4}\u{5e27}\u{7387}', function()
        vu9 = 60

        vu12()
        vu3:Notify('\u{5df2}\u{6062}\u{590d}\u{9ed8}\u{8ba4}\u{5e27}\u{7387}: 60')
    end)
    v7:Toggle('\u{4fee}\u{6539}FPS\u{5e27}\u{7387}', '\u{4fee}\u{6539}FPS\u{5e27}\u{7387}', false, function(p27)
        vu8 = p27

        if vu8 then
            if vu11 then
                vu11:Disconnect()
            end

            vu11 = game:GetService('RunService').RenderStepped:Connect(function()
                vu12()
            end)
        else
            if vu11 then
                vu11:Disconnect()

                vu11 = nil
            end

            vu12()
        end
    end)

    local v28 = v6:section('\u{76f8}\u{673a}\u{8bbe}\u{7f6e}', true)

    v28:Toggle('\u{5207}\u{677f}\u{6444}\u{50cf}\u{673a}\u{7684}\u{906e}\u{6321}\u{6a21}\u{5f0f}', 'DevCameraOcclusionMode', false, function(p29)
        if p29 then
            game:GetService('Players').LocalPlayer.DevCameraOcclusionMode = 'Invisicam'
        else
            game:GetService('Players').LocalPlayer.DevCameraOcclusionMode = 'Zoom'
        end
    end)
    v28:Dropdown('\u{76f8}\u{673a}\u{4eba}\u{79f0}', 'Camera', {
        '\u{9ed8}\u{8ba4}',
        '\u{7b2c}\u{4e00}\u{4eba}\u{79f0}',
    }, function(p30)
        if p30 == '\u{9ed8}\u{8ba4}' then
            game:GetService('Players').LocalPlayer.CameraMode = 'Classic'
            game.Workspace.CurrentCamera.CameraType = 'Custom'
            game.Workspace.CurrentCamera.FieldOfView = 70
        elseif p30 == '\u{7b2c}\u{4e00}\u{4eba}\u{79f0}' then
            game:GetService('Players').LocalPlayer.CameraMode = 'LockFirstPerson'
            game.Workspace.CurrentCamera.CameraType = 'Custom'
            game.Workspace.CurrentCamera.FieldOfView = 70
        end
    end)

    local vu31 = false
    local vu32 = 0.5
    local vu33 = 10

    v28:Toggle('\u{542f}\u{7528}\u{76f8}\u{673a}\u{6296}\u{52a8}', 'CameraShake', false, function(p34)
        vu31 = p34

        if p34 then
            spawn(function()
                while vu31 do
                    local v35 = Vector3.new(math.random(-vu32, vu32), math.random(-vu32, vu32), math.random(-vu32, vu32))

                    game.Workspace.CurrentCamera.CFrame = game.Workspace.CurrentCamera.CFrame + v35

                    wait(1 / vu33)
                end
            end)
        end
    end)
    v28:Label('\u{8fd9}\u{529f}\u{80fd}\u{4e00}\u{822c}\u{4e0d}\u{7528}\u{5f00}')

    local vu36 = false
    local vu37 = 0.1

    v28:Toggle('\u{542f}\u{7528}\u{76f8}\u{673a}\u{5e73}\u{6ed1}\u{79fb}\u{52a8}', 'CameraSmoothMovement', false, function(p38)
        vu36 = p38

        if p38 then
            spawn(function()
                while vu36 do
                    local v39 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                    local v40 = game.Workspace.CurrentCamera.CFrame.Position
                    local v41 = v40 + (v39 - v40) * vu37

                    game.Workspace.CurrentCamera.CFrame = CFrame.new(v41, v39)

                    wait()
                end
            end)
        end
    end)
    v28:Toggle('\u{542f}\u{7528}\u{76f8}\u{673a}\u{78b0}\u{649e}\u{68c0}\u{6d4b}', 'CameraCollision', false, function(p42)
        if p42 then
            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
            game.Workspace.CurrentCamera.CameraType = 'Scriptable'
        else
            game.Workspace.CurrentCamera.CameraSubject = nil
            game.Workspace.CurrentCamera.CameraType = 'Custom'
        end
    end)
    v28:Label('\u{8fd9}\u{529f}\u{80fd}\u{4e00}\u{822c}\u{4e0d}\u{7528}\u{5f00}')

    local vu43 = 70
    local vu44 = 40

    v28:Toggle('\u{542f}\u{7528}\u{76f8}\u{673a}\u{89c6}\u{91ce}\u{7f29}\u{653e}', 'CameraZoom', false, function(p45)
        if p45 then
            game.Workspace.CurrentCamera.FieldOfView = vu44
        else
            game.Workspace.CurrentCamera.FieldOfView = vu43
        end
    end)

    local vu46 = false

    v28:Toggle('\u{542f}\u{7528}\u{76f8}\u{673a}\u{65cb}\u{8f6c}\u{9501}\u{5b9a}', 'CameraRotationLock', false, function(p47)
        vu46 = p47

        if p47 then
            game.Workspace.CurrentCamera.CameraType = 'Fixed'
        else
            game.Workspace.CurrentCamera.CameraType = 'Custom'
        end
    end)
    v28:Slider('\u{76f8}\u{673a}\u{89c6}\u{91ce}\u{8303}\u{56f4}', 'FOVRange', 30, 200, vu43, function(p48)
        game.Workspace.CurrentCamera.FieldOfView = p48
    end)
    v28:Slider('\u{76f8}\u{673a}\u{7075}\u{654f}\u{5ea6}', 'CameraSensitivity', 0.1, 5, 1, function(p49)
        game:GetService('Players').LocalPlayer.CameraMaxZoomDistance = p49
        game:GetService('Players').LocalPlayer.CameraMinZoomDistance = p49
    end)

    local vu50 = false

    local function vu51()
        while vu50 do
            wait(0.1)

            game:GetService('Players').LocalPlayer.CameraMaxZoomDistance = 1000
        end
        while not vu50 do
            wait(0.1)

            game:GetService('Players').LocalPlayer.CameraMaxZoomDistance = 32
        end
    end

    v28:Toggle('\u{89e3}\u{9501}\u{6700}\u{5927}\u{89c6}\u{91ce}', 'Cam', false, function(p52)
        vu50 = p52

        if vu50 then
            vu51()
        end
    end)

    local v53 = v6:section('\u{6539}\u{5934}\u{5927}\u{5c0f}', true)

    local function vu56(p54, p55)
        if p54 and p54.Character and (p54.Character:FindFirstChild('Head') and p54.Character:FindFirstChild('Humanoid')) then
            p54.Character.Head.Massless = true
            p54.Character.Head.Size = Vector3.new(p55, p55, p55)
        end
    end
    local function vu59(p57, p58)
        if p57 and p57.Character and p57.Character:FindFirstChild('Head') then
            p57.Character.Head.Transparency = p58
        end
    end
    local function vu63(pu60, pu61, pu62)
        pu60.CharacterAdded:Connect(function()
            repeat
                wait()
            until pu60.Character and (pu60.Character:FindFirstChild('Head') and pu60.Character:FindFirstChild('Humanoid'))

            vu56(pu60, pu61)
            vu59(pu60, pu62)
        end)
    end

    v53:Textbox('\u{5934}\u{90e8}\u{5927}\u{5c0f} \u{8f93}\u{5165}\u{5934}\u{90e8}\u{5927}\u{5c0f} (0-1000)', 'headSize', '\u{8f93}\u{5165}\u{5934}\u{90e8}\u{5927}\u{5c0f} (0-1000)', function(p64)
        local vu65 = tonumber(p64)

        if vu65 and (0 <= vu65 and vu65 <= 1000) then
            local v66 = game:GetService('Players')
            local v67 = v66.LocalPlayer
            local v68, v69, v70 = pairs(v66:GetPlayers())

            while true do
                local v71

                v70, v71 = v68(v69, v70)

                if v70 == nil then
                    break
                end
                if v71 ~= v67 then
                    vu56(v71, vu65)
                    vu63(v71, vu65, 0)
                end
            end

            v66.PlayerAdded:Connect(function(p72)
                vu56(p72, vu65)
                vu63(p72, vu65, 0)
            end)
        else
            warn('\u{8bf7}\u{8f93}\u{5165}\u{6709}\u{6548}\u{7684}\u{5934}\u{90e8}\u{5927}\u{5c0f} (0-1000)')
        end
    end)
    v53:Textbox('\u{5934}\u{90e8}\u{900f}\u{660e}\u{5ea6} \u{8f93}\u{5165}\u{5934}\u{90e8}\u{900f}\u{660e}\u{5ea6} (0-1)', 'headTransparency', '\u{8f93}\u{5165}\u{5934}\u{90e8}\u{900f}\u{660e}\u{5ea6} (0-1)', function(p73)
        local v74 = tonumber(p73)

        if v74 and (0 <= v74 and v74 <= 1) then
            local v75 = game:GetService('Players')
            local v76, v77, v78 = pairs(v75:GetPlayers())

            while true do
                local v79

                v78, v79 = v76(v77, v78)

                if v78 == nil then
                    break
                end

                vu59(v79, v74)
            end
        else
            warn('\u{8bf7}\u{8f93}\u{5165}\u{6709}\u{6548}\u{7684}\u{900f}\u{660e}\u{5ea6} (0-1)')
        end
    end)

    local v80 = v6:section('\u{6742}\u{9879}\u{8bbe}\u{7f6e}', true)

    local function vu83(p81)
        local v82 = game:GetService('Lighting')

        if p81 then
            v82.Ambient = Color3.new(1, 1, 1)
            v82.Brightness = 3
            v82.ClockTime = 14
            v82.FogEnd = 100000
            v82.GlobalShadows = false
        else
            v82.Ambient = Color3.new(0.5, 0.5, 0.5)
            v82.Brightness = 1
            v82.ClockTime = v82.ClockTime
            v82.FogEnd = v82.FogEnd
            v82.GlobalShadows = true
        end
    end

    v80:Toggle('\u{65b0}\u{591c}\u{89c6}', 'toggleNightVision', false, function(p84)
        vu83(p84)
    end)
    v80:Toggle('\u{7a7f}\u{5899}', 'text', false, function(p85)
        if p85 then
            Noclip = true
            Stepped = game.RunService.Stepped:Connect(function()
                if Noclip ~= true then
                    Stepped:Disconnect()
                else
                    local v86, v87, v88 = pairs(game.Workspace:GetChildren())

                    while true do
                        local v89

                        v88, v89 = v86(v87, v88)

                        if v88 == nil then
                            break
                        end
                        if v89.Name == game.Players.LocalPlayer.Name then
                            local v90, v91, v92 = pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren())

                            while true do
                                local v93

                                v92, v93 = v90(v91, v92)

                                if v92 == nil then
                                    break
                                end
                                if v93:IsA('BasePart') then
                                    v93.CanCollide = false
                                end
                            end
                        end
                    end
                end
            end)
        else
            Noclip = false
        end
    end)
    v80:Slider('\u{4eba}\u{7269}\u{8e0f}\u{7a7a}\u{9ad8}\u{5ea6}-\u{522b}\u{8c03}\u{592a}\u{5feb}', 'HipHeight Slider', 1, 1000, 1, function(p94)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = p94
    end)
    v80:Textbox('\u{91cd}\u{529b}\u{8bbe}\u{7f6e}!', 'Gravity', '\u{8f93}\u{5165}', function(pu95)
        spawn(function()
            while task.wait() do
                game.Workspace.Gravity = pu95
            end
        end)
    end)

    local v96 = v4:Tab('\u{52a8}\u{6001}\u{6a21}\u{7cca}\u{529f}\u{80fd}', '16060333448'):section('\u{52a8}\u{6001}\u{6a21}\u{7cca}\u{8bbe}\u{7f6e}', true)
    local vu97 = false
    local vu98 = nil
    local vu99 = 15
    local vu100 = 5
    local vu101 = 0.15
    local vu102 = 0.05
    local vu103 = 1

    Color3.new(0, 0, 0)

    local vu104 = Vector2.new(1, 0)
    local vu105 = {
        0,
        0,
        1,
        1,
    }
    local vu106 = Vector3.zero

    tick()

    local v107 = {
        'MotionBlur',
        'RadialBlur',
        'DirectionalBlur',
    }
    local vu108 = v107[1]
    local vu109 = {
        {
            name = '\u{9ed8}\u{8ba4}',
            amount = 15,
            amplifier = 5,
            smoothness = 0.15,
            threshold = 0.05,
        },
        {
            name = '\u{5f3a}\u{70c8}',
            amount = 25,
            amplifier = 10,
            smoothness = 0.05,
            threshold = 0.02,
        },
        {
            name = '\u{67d4}\u{548c}',
            amount = 8,
            amplifier = 3,
            smoothness = 0.2,
            threshold = 0.1,
        },
    }

    local function vu111(p110)
        if vu98 then
            vu98:Destroy()
        end

        vu98 = Instance.new('BlurEffect', p110)
        vu98.Name = 'EnhancedMotionBlur'
        vu98.Size = 0
    end
    local function vu116(p112, _)
        if vu98 and vu97 then
            local v113 = p112.CFrame.LookVector
            local v114 = (v113 - vu106).Magnitude

            if vu102 >= v114 then
                vu98.Size = vu98.Size * (1 - vu101)
            else
                local v115 = math.abs(v114) * vu99 * vu100

                vu98.Size = vu98.Size + (v115 - vu98.Size) * vu101
            end

            vu106 = v113
        end
    end
    local function vu118(p117)
        vu108 = p117

        if vu98 then
            vu98:Destroy()
            vu111(workspace.CurrentCamera)
        end
    end
    local function vu120(p119)
        vu99 = p119.amount
        vu100 = p119.amplifier
        vu101 = p119.smoothness
        vu102 = p119.threshold
    end

    v96:Label('\u{987a}\u{5e8f}:\u{8fd0}\u{52a8}\u{6a21}\u{7cca}-\u{5f84}\u{5411}\u{6a21}\u{7cca}-\u{65b9}\u{5411}\u{6a21}\u{7cca}')
    v96:Dropdown('\u{6a21}\u{7cca}\u{7c7b}\u{578b}', 'blurTypes', v107, function(p121)
        vu118(p121)
    end)
    v96:Label('\u{4e00}\u{822c}\u{9ed8}\u{8ba4}\u{5c31}\u{884c}\u{4e86}')

    local v122, v123, v124 = ipairs(vu109)
    local vu125 = vu111
    local vu126 = vu97
    local vu127 = vu99
    local vu128 = vu98
    local vu129 = vu102
    local vu130 = vu101
    local v131 = {}

    while true do
        local v132

        v124, v132 = v122(v123, v124)

        if v124 == nil then
            break
        end

        table.insert(v131, v132.name)
    end

    v96:Dropdown('\u{6a21}\u{7cca}\u{6548}\u{679c}\u{9884}\u{8bbe}', 'presetNames', v131, function(p133)
        local v134, v135, v136 = ipairs(vu109)

        while true do
            local v137

            v136, v137 = v134(v135, v136)

            if v136 == nil then
                break
            end
            if v137.name == p133 then
                vu120(v137)

                break
            end
        end
    end)
    v96:Label('\u{5f00}\u{542f}\u{8fd9}\u{4e2a}\u{52a8}\u{6001}\u{6a21}\u{7cca}\u{624d}\u{6709}\u{6548}\u{679c}')
    v96:Toggle('\u{52a8}\u{6001}\u{6a21}\u{7cca}', '\u{52a8}\u{6001}\u{6a21}\u{7cca}', false, function(p138)
        vu126 = p138

        if vu126 then
            vu125(workspace.CurrentCamera)
        elseif vu128 then
            vu128:Destroy()

            vu128 = nil
        end
    end)
    v96:Slider('\u{6a21}\u{7cca}\u{5f3a}\u{5ea6}', 1, 1, 50, vu127, function(p139)
        vu127 = p139
    end)
    v96:Slider('\u{6a21}\u{7cca}\u{5e73}\u{6ed1}\u{5ea6}', 0.1, 0.01, 1, vu130, function(p140)
        vu130 = p140
    end)
    v96:Slider('\u{6a21}\u{7cca}\u{9608}\u{503c}', 0.1, 0.01, 1, vu129, function(p141)
        vu129 = p141
    end)
    v96:Slider('\u{6a21}\u{7cca}\u{6301}\u{7eed}\u{65f6}\u{95f4}', 0.5, 0.1, 5, vu103, function(p142)
        vu103 = p142
    end)
    v96:Slider('\u{6a21}\u{7cca}\u{65b9}\u{5411} X', -1, 0, 1, vu104.X, function(p143)
        vu104 = Vector2.new(p143, vu104.Y)
    end)
    v96:Slider('\u{6a21}\u{7cca}\u{65b9}\u{5411} Y', -1, 0, 1, vu104.Y, function(p144)
        vu104 = Vector2.new(vu104.X, p144)
    end)
    v96:Slider('\u{6a21}\u{7cca}\u{533a}\u{57df} X1', 0.5, 0, 1, vu105[1], function(p145)
        vu105[1] = p145
    end)
    v96:Slider('\u{6a21}\u{7cca}\u{533a}\u{57df} Y1', 0.5, 0, 1, vu105[2], function(p146)
        vu105[2] = p146
    end)
    v96:Slider('\u{6a21}\u{7cca}\u{533a}\u{57df} X2', 0.5, 0, 1, vu105[3], function(p147)
        vu105[3] = p147
    end)
    v96:Slider('\u{6a21}\u{7cca}\u{533a}\u{57df} Y2', 0.5, 0, 1, vu105[4], function(p148)
        vu105[4] = p148
    end)
    workspace:GetPropertyChangedSignal('CurrentCamera'):Connect(function()
        local v149 = workspace.CurrentCamera

        if vu128 and vu128.Parent then
            vu128.Parent = v149
        else
            vu125(v149)
        end
    end)
    game:GetService('RunService').Heartbeat:Connect(function(p150)
        local v151 = workspace.CurrentCamera

        if vu126 and v151 then
            vu116(v151, p150)
        end
    end)

    local vu152 = {
        Config = {
            FOV = {
                BaseSize = 50,
                MinSize = 20,
                MaxSize = 100,
                Color = Color3.fromRGB(255, 255, 255),
                Thickness = 2,
                Transparency = 0.5,
                Distance = 200,
                Show = false,
                ShowTargetLine = false,
                DynamicAim = false,
                DynamicAimRatio = 1,
            },
            Aim = {
                BaseSmoothness = 0.5,
                BaseSpeed = 10,
                TargetPart = 'Head',
                TeamCheck = false,
                WallCheck = false,
                AliveCheck = false,
                Prejudging = false,
                PrejudgingDistance = 50,
                StrongLock = false,
                Enabled = false,
                AimMode = 'Distance',
            },
            Visuals = {ShowPart = false},
        },
    }
    local v153 = {
        RunService = game:GetService('RunService'),
        UserInputService = game:GetService('UserInputService'),
        Players = game:GetService('Players'),
        Camera = game.Workspace.CurrentCamera,
    }

    vu152.Services = v153
    vu152.Drawings = {
        FOVCircle = nil,
        TargetLine = nil,
        PartDrawing = nil,
    }
    vu152.PlayerData = {}

    local vu154 = {
        ['\u{7ea2}\u{8272}'] = Color3.fromRGB(255, 0, 0),
        ['\u{84dd}\u{8272}'] = Color3.fromRGB(0, 0, 255),
        ['\u{9ec4}\u{8272}'] = Color3.fromRGB(255, 255, 0),
        ['\u{7eff}\u{8272}'] = Color3.fromRGB(0, 255, 0),
        ['\u{9752}\u{8272}'] = Color3.fromRGB(0, 255, 255),
        ['\u{6a59}\u{8272}'] = Color3.fromRGB(255, 165, 0),
        ['\u{7d2b}\u{8272}'] = Color3.fromRGB(128, 0, 128),
        ['\u{767d}\u{8272}'] = Color3.fromRGB(255, 255, 255),
        ['\u{9ed1}\u{8272}'] = Color3.fromRGB(0, 0, 0),
    }

    local function vu156(p155)
        if p155 and p155.Character then
            return p155.Character
        else
            return nil
        end
    end
    local function vu160(p157, p158)
        local v159 = vu156(p157)

        if v159 then
            return v159:FindFirstChild(p158)
        else
            return nil
        end
    end
    local function vu164(p161)
        local v162 = vu156(p161)

        if v162 then
            local v163 = v162:FindFirstChild('Humanoid')

            if v163 and v163.Health > 0 then
                return true
            end
        end

        return false
    end
    local function vu166(p165)
        return not vu152.Config.Aim.TeamCheck and true or p165.Team ~= vu152.Services.Players.LocalPlayer.Team
    end
    local function vu174(p167, p168)
        if vu152.Config.Aim.WallCheck then
            local v169 = vu156(vu152.Services.Players.LocalPlayer)

            if v169 then
                local v170 = vu160(p167, p168)

                if v170 then
                    local v171 = Ray.new(vu152.Services.Camera.CFrame.Position, (v170.Position - vu152.Services.Camera.CFrame.Position).unit * vu152.Config.FOV.Distance)
                    local v172, v173 = workspace:FindPartOnRayWithIgnoreList(v171, {v169})

                    if v172 then
                        return v172:IsDescendantOf(p167.Character) and true or (v170.Position - vu152.Services.Camera.CFrame.Position).Magnitude <= (v173 - vu152.Services.Camera.CFrame.Position).Magnitude
                    else
                        return false
                    end
                else
                    return false
                end
            else
                return false
            end
        else
            return true
        end
    end
    local function v175()
        if vu152.Drawings.FOVCircle then
            vu152.Drawings.FOVCircle:Remove()
        end

        vu152.Drawings.FOVCircle = Drawing.new('Circle')
        vu152.Drawings.FOVCircle.Visible = vu152.Config.FOV.Show
        vu152.Drawings.FOVCircle.Thickness = vu152.Config.FOV.Thickness
        vu152.Drawings.FOVCircle.Color = vu152.Config.FOV.Color
        vu152.Drawings.FOVCircle.Filled = false
        vu152.Drawings.FOVCircle.Radius = vu152.Config.FOV.BaseSize
        vu152.Drawings.FOVCircle.Position = vu152.Services.Camera.ViewportSize / 2
        vu152.Drawings.FOVCircle.Transparency = vu152.Config.FOV.Transparency
    end
    local function vu178(p176)
        if vu152.Drawings.FOVCircle then
            local v177 = vu152.Config.FOV.BaseSize

            if p176 and vu152.Config.FOV.DynamicAim then
                v177 = math.clamp(vu152.Config.FOV.BaseSize * (1 - p176 / vu152.Config.FOV.Distance), vu152.Config.FOV.MinSize, vu152.Config.FOV.MaxSize)
            end

            vu152.Drawings.FOVCircle.Radius = v177
            vu152.Drawings.FOVCircle.Visible = vu152.Config.FOV.Show
            vu152.Drawings.FOVCircle.Thickness = vu152.Config.FOV.Thickness
            vu152.Drawings.FOVCircle.Color = vu152.Config.FOV.Color
            vu152.Drawings.FOVCircle.Transparency = vu152.Config.FOV.Transparency
        end
    end
    local function vu193()
        local v179 = math.huge
        local v180 = vu152.Services.Players.LocalPlayer
        local v181 = vu152.Services.Camera
        local v182, v183, v184 = pairs(vu152.Services.Players:GetPlayers())
        local v185 = nil

        while true do
            local v186

            v184, v186 = v182(v183, v184)

            if v184 == nil then
                break
            end
            if v186 ~= v180 and (not vu152.Config.Aim.AliveCheck or vu164(v186)) then
                local v187 = vu160(v186, vu152.Config.Aim.TargetPart)

                if v187 and (vu166(v186) and vu174(v186, vu152.Config.Aim.TargetPart)) then
                    local v188, v189 = v181:WorldToViewportPoint(v187.Position)

                    if v189 then
                        local v190 = (Vector2.new(v188.X, v188.Y) - v181.ViewportSize / 2).Magnitude

                        if vu152.Config.Aim.AimMode ~= 'Distance' then
                            if vu152.Config.Aim.AimMode ~= 'Crosshair' then
                                if vu152.Config.Aim.AimMode == 'Smart' then
                                    local v191 = v190 * 0.7 + (Vector2.new(v188.X, v188.Y) - v181.ViewportSize / 2).Magnitude * 0.3

                                    if v191 < v179 then
                                        if v191 <= vu152.Config.FOV.BaseSize then
                                            v185 = v186
                                            v179 = v191
                                        end
                                    end
                                end
                            else
                                local v192 = (Vector2.new(v188.X, v188.Y) - v181.ViewportSize / 2).Magnitude

                                if v192 < v179 then
                                    if v192 <= vu152.Config.FOV.BaseSize then
                                        v185 = v186
                                        v179 = v192
                                    end
                                end
                            end
                        elseif v190 < v179 then
                            if v190 <= vu152.Config.FOV.BaseSize then
                                v185 = v186
                                v179 = v190
                            end
                        end
                    end
                end
            end
        end

        return v185, v179
    end
    local function vu202(p194, p195)
        if p194 then
            local v196 = vu160(p194, vu152.Config.Aim.TargetPart)

            if v196 then
                local v197 = v196.Position
                local v198 = v196.Velocity
                local v199 = (v197 - vu152.Services.Camera.CFrame.Position).unit

                if vu152.Config.Aim.Prejudging then
                    local _ = v197 + v198 * (vu152.Config.Aim.PrejudgingDistance / 100 * (v198.Magnitude / 50))
                end

                local v200 = CFrame.new(vu152.Services.Camera.CFrame.Position, vu152.Services.Camera.CFrame.Position + v199)

                if vu152.Config.Aim.StrongLock then
                    vu152.Services.Camera.CFrame = v200
                else
                    local v201 = vu152.Config.Aim.BaseSmoothness
                    local _ = vu152.Config.Aim.BaseSpeed

                    if p195 and vu152.Config.FOV.DynamicAim then
                        v201 = math.clamp(vu152.Config.Aim.BaseSmoothness * (p195 / vu152.Config.FOV.Distance), 0.1, 1)

                        math.clamp(vu152.Config.Aim.BaseSpeed * (p195 / vu152.Config.FOV.Distance), 5, 20)
                    end

                    vu152.Services.Camera.CFrame = vu152.Services.Camera.CFrame:Lerp(v200, v201)
                end
            end
        else
            return
        end
    end
    local function vu208(p203)
        if vu152.Config.FOV.ShowTargetLine then
            local v204 = vu160(p203, vu152.Config.Aim.TargetPart)

            if v204 then
                if vu152.Config.Aim.WallCheck and not vu174(p203, vu152.Config.Aim.TargetPart) then
                    if vu152.Drawings.TargetLine then
                        vu152.Drawings.TargetLine.Visible = false
                    end
                else
                    local v205, v206 = vu152.Services.Camera:WorldToViewportPoint(v204.Position)

                    if v206 then
                        if not vu152.Drawings.TargetLine then
                            vu152.Drawings.TargetLine = Drawing.new('Line')
                        end

                        local v207 = vu152.Drawings.TargetLine

                        v207.Visible = true
                        v207.Thickness = 2
                        v207.Color = vu152.Config.FOV.Color
                        v207.Transparency = vu152.Config.FOV.Transparency
                        v207.From = vu152.Services.Camera.ViewportSize / 2
                        v207.To = Vector2.new(v205.X, v205.Y)
                    elseif vu152.Drawings.TargetLine then
                        vu152.Drawings.TargetLine.Visible = false
                    end
                end
            else
                return
            end
        else
            return
        end
    end
    local function vu214(p209)
        if vu152.Config.Visuals.ShowPart then
            local v210 = vu156(p209)

            if v210 then
                if vu152.Config.Aim.WallCheck and not vu174(p209, vu152.Config.Aim.TargetPart) then
                    if vu152.Drawings.PartDrawing then
                        vu152.Drawings.PartDrawing.Visible = false
                    end
                else
                    local v211 = v210:FindFirstChild(vu152.Config.Aim.TargetPart)
                    local v212 = v211 and vu152.Services.Camera:WorldToViewportPoint(v211.Position)

                    if v212 then
                        if not vu152.Drawings.PartDrawing then
                            vu152.Drawings.PartDrawing = Drawing.new('Circle')
                        end

                        local v213 = vu152.Drawings.PartDrawing

                        v213.Visible = true
                        v213.Thickness = 2
                        v213.Color = vu152.Config.FOV.Color
                        v213.Filled = false
                        v213.Radius = 10
                        v213.Position = Vector2.new(v212.X, v212.Y)
                    end
                end
            else
                return
            end
        else
            return
        end
    end

    vu152.Services.RunService.RenderStepped:Connect(function()
        local v215, v216 = vu193()

        vu178(v216)

        if vu152.Config.Aim.Enabled then
            if v215 and (not vu152.Config.FOV.DynamicAim or v216 <= vu152.Config.FOV.BaseSize) then
                vu202(v215, v216)
                vu208(v215)
                vu214(v215)
            else
                if vu152.Drawings.TargetLine then
                    vu152.Drawings.TargetLine.Visible = false
                end
                if vu152.Drawings.PartDrawing then
                    vu152.Drawings.PartDrawing.Visible = false
                end
            end
        end
    end)
    v175()

    local v217 = v4:Tab('\u{9ad8}\u{7ea7}\u{81ea}\u{7784}\u{529f}\u{80fd}', '16060333448'):section('\u{9ad8}\u{7ea7}\u{8bbe}\u{7f6e}', true)

    v217:Toggle('\u{663e}\u{793a}FOV\u{5708}', 'open/close', vu152.Config.FOV.Show, function(p218)
        vu152.Config.FOV.Show = p218

        vu178()
    end)
    v217:Toggle('\u{542f}\u{52a8}/\u{7981}\u{7528}\u{81ea}\u{7784}', 'open/close', vu152.Config.Aim.Enabled, function(p219)
        vu152.Config.Aim.Enabled = p219
    end)
    v217:Toggle('\u{5f3a}\u{9501}\u{81ea}\u{7784}', 'Strong Lock Aim', vu152.Config.Aim.StrongLock, function(p220)
        vu152.Config.Aim.StrongLock = p220
    end)
    v217:Toggle('\u{52a8}\u{6001}FOV\u{5708}\u{81ea}\u{7784}', 'Dynamic FOV Aim', vu152.Config.FOV.DynamicAim, function(p221)
        vu152.Config.FOV.DynamicAim = p221
    end)
    v217:Slider('\u{52a8}\u{6001}FOV\u{81ea}\u{7784}\u{6bd4}\u{4f8b}', 'Dynamic FOV Aim Ratio', vu152.Config.FOV.DynamicAimRatio * 100, 0, 200, false, function(p222)
        vu152.Config.FOV.DynamicAimRatio = p222 / 100
    end)
    v217:Toggle('\u{663e}\u{793a}\u{76ee}\u{6807}\u{8f85}\u{52a9}\u{7ebf}', 'Show Target Line', vu152.Config.FOV.ShowTargetLine, function(p223)
        vu152.Config.FOV.ShowTargetLine = p223
    end)
    v217:Dropdown('\u{4f18}\u{9009}\u{7784}\u{51c6}\u{6a21}\u{5f0f}', 'Dropdown', {
        'Distance',
        'Crosshair',
        'Smart',
    }, function(p224)
        vu152.Config.Aim.AimMode = p224
    end)
    v217:Dropdown('FOV\u{989c}\u{8272}', 'Dropdown', {
        '\u{7ea2}\u{8272}',
        '\u{84dd}\u{8272}',
        '\u{9ec4}\u{8272}',
        '\u{7eff}\u{8272}',
        '\u{9752}\u{8272}',
        '\u{6a59}\u{8272}',
        '\u{7d2b}\u{8272}',
        '\u{767d}\u{8272}',
        '\u{9ed1}\u{8272}',
    }, function(p225)
        vu152.Config.FOV.Color = vu154[p225]

        vu178()
    end)
    v217:Dropdown('\u{9009}\u{62e9}\u{90e8}\u{4f4d}', 'Dropdown', {
        'Head',
        'HumanoidRootPart',
        'Torso',
        'Left Arm',
        'Right Arm',
        'Left Leg',
        'Right Leg',
    }, function(p226)
        vu152.Config.Aim.TargetPart = p226
    end)
    v217:Toggle('\u{663e}\u{793a}\u{9009}\u{62e9}\u{90e8}\u{4f4d}\u{5708}\u{5708}\u{8ddf}\u{8e2a}', 'Show Part', vu152.Config.Visuals.ShowPart, function(p227)
        vu152.Config.Visuals.ShowPart = p227
    end)
    v217:Slider('FOV\u{539a}\u{5ea6}', 'thickness', vu152.Config.FOV.Thickness, 0, 10, false, function(p228)
        vu152.Config.FOV.Thickness = p228

        vu178()
    end)
    v217:Slider('FOV\u{57fa}\u{7840}\u{5927}\u{5c0f}', 'BaseSize', vu152.Config.FOV.BaseSize, 10, 200, false, function(p229)
        vu152.Config.FOV.BaseSize = p229

        vu178()
    end)
    v217:Slider('FOV\u{6700}\u{5c0f}\u{5927}\u{5c0f}', 'MinSize', vu152.Config.FOV.MinSize, 10, 100, false, function(p230)
        vu152.Config.FOV.MinSize = p230

        vu178()
    end)
    v217:Slider('FOV\u{6700}\u{5927}\u{5927}\u{5c0f}', 'MaxSize', vu152.Config.FOV.MaxSize, 50, 300, false, function(p231)
        vu152.Config.FOV.MaxSize = p231

        vu178()
    end)
    v217:Slider('FOV\u{900f}\u{660e}\u{5ea6}', 'Transparency', vu152.Config.FOV.Transparency * 10, 0, 10, false, function(p232)
        vu152.Config.FOV.Transparency = p232 / 10

        vu178()
    end)
    v217:Slider('FOV\u{8ddd}\u{79bb}', 'distance', vu152.Config.FOV.Distance, 10, 500, false, function(p233)
        vu152.Config.FOV.Distance = p233
    end)
    v217:Toggle('\u{961f}\u{4f0d}\u{68c0}\u{6d4b}', 'Enable/Disable Team Check', vu152.Config.Aim.TeamCheck, function(p234)
        vu152.Config.Aim.TeamCheck = p234
    end)
    v217:Toggle('\u{6d3b}\u{4f53}\u{68c0}\u{6d4b}', 'Alive Check', vu152.Config.Aim.AliveCheck, function(p235)
        vu152.Config.Aim.AliveCheck = p235
    end)
    v217:Toggle('\u{5899}\u{58c1}\u{68c0}\u{6d4b}', 'Enable/Disable Wall Check', vu152.Config.Aim.WallCheck, function(p236)
        vu152.Config.Aim.WallCheck = p236
    end)
    v217:Toggle('\u{9884}\u{5224}\u{81ea}\u{7784}', 'prejudging self-sighting', vu152.Config.Aim.Prejudging, function(p237)
        vu152.Config.Aim.Prejudging = p237
    end)
    v217:Slider('\u{9884}\u{5224}\u{8ddd}\u{79bb}', 'distance', vu152.Config.Aim.PrejudgingDistance, 10, 500, false, function(p238)
        vu152.Config.Aim.PrejudgingDistance = p238
    end)
    v217:Slider('\u{81ea}\u{7784}\u{5e73}\u{6ed1}\u{5ea6}', 'Smoothness', vu152.Config.Aim.BaseSmoothness * 10, 1, 10, false, function(p239)
        vu152.Config.Aim.BaseSmoothness = p239 / 10
    end)
    v217:Slider('\u{81ea}\u{7784}\u{901f}\u{5ea6}', 'Aim Speed', vu152.Config.Aim.BaseSpeed, 1, 20, false, function(p240)
        vu152.Config.Aim.BaseSpeed = p240
    end)

    local v241 = v4:Tab('Esp\u{7ed8}\u{5236}', '16060333448'):section('\u{9716}\u{6eba}', true)

    getgenv().ESPEnabled = false
    getgenv().ShowBox = false
    getgenv().ShowHealth = false
    getgenv().ShowName = false
    getgenv().ShowDistance = false
    getgenv().ShowTracer = false
    getgenv().TeamCheck = false
    getgenv().ShowSkeleton = false
    getgenv().ShowRadar = false
    getgenv().ShowPlayerCount = false
    getgenv().TracerColor = Color3.new(1, 0, 0)
    getgenv().SkeletonColor = Color3.new(0.2, 0.8, 1)
    getgenv().BoxColor = Color3.new(1, 1, 1)
    getgenv().HealthBarColor = Color3.new(0, 1, 0)
    getgenv().HealthTextColor = Color3.new(1, 1, 1)
    getgenv().NameColor = Color3.new(1, 1, 1)
    getgenv().DistanceColor = Color3.new(1, 1, 0)

    local vu242 = game:GetService('Players')
    local vu243 = game:GetService('RunService')
    local vu244 = workspace.CurrentCamera
    local vu245 = vu242.LocalPlayer

    local function vu249()
        local v246 = math.random()
        local v247 = math.random()
        local v248 = math.random()

        return Color3.new(v246, v247, v248)
    end
    local function vu254(p250)
        local v251 = math.sin(p250 * 2) * 0.5 + 0.5
        local v252 = math.sin(p250 * 3) * 0.5 + 0.5
        local v253 = math.sin(p250 * 4) * 0.5 + 0.5

        return Color3.new(v251, v252, v253)
    end

    local vu255 = Drawing.new('Text')

    vu255.Visible = false
    vu255.Color = Color3.new(1, 1, 1)
    vu255.Size = 20
    vu255.Font = Drawing.Fonts.Monospace
    vu255.Outline = true
    vu255.Position = Vector2.new(vu244.ViewportSize.X / 2, 10)

    local function v258()
        vu255.Text = '\u{73a9}\u{5bb6}\u{6570}\u{91cf}: ' .. #vu242:GetPlayers()

        local v256 = vu255
        local v257 = getgenv().ESPEnabled

        if v257 then
            v257 = getgenv().ShowPlayerCount
        end

        v256.Visible = v257
        vu255.Color = vu254((tick()))
    end

    local vu259 = {}

    local function vu343(pu260)
        local vu261 = Drawing.new('Square')

        vu261.Visible = false
        vu261.Color = getgenv().BoxColor
        vu261.Thickness = 1
        vu261.Filled = false

        local vu262 = Drawing.new('Square')

        vu262.Visible = false
        vu262.Color = getgenv().HealthBarColor
        vu262.Thickness = 1
        vu262.Filled = true

        local vu263 = Drawing.new('Square')

        vu263.Visible = false
        vu263.Color = Color3.new(0, 0, 0)
        vu263.Transparency = 0.5
        vu263.Thickness = 1
        vu263.Filled = true

        local vu264 = Drawing.new('Square')

        vu264.Visible = false
        vu264.Color = Color3.new(1, 1, 1)
        vu264.Thickness = 1
        vu264.Filled = false

        local vu265 = Drawing.new('Text')

        vu265.Visible = false
        vu265.Color = getgenv().HealthTextColor
        vu265.Size = 14
        vu265.Font = Drawing.Fonts.Monospace
        vu265.Outline = true

        local vu266 = Drawing.new('Text')

        vu266.Visible = false
        vu266.Color = getgenv().NameColor
        vu266.Size = 16
        vu266.Font = Drawing.Fonts.Monospace
        vu266.Outline = true

        local vu267 = Drawing.new('Text')

        vu267.Visible = false
        vu267.Color = getgenv().DistanceColor
        vu267.Size = 14
        vu267.Font = Drawing.Fonts.Monospace
        vu267.Outline = true

        local vu268 = Drawing.new('Line')

        vu268.Visible = false
        vu268.Color = getgenv().TracerColor
        vu268.Thickness = 1

        local vu269 = {}
        local vu270 = {}

        (function()
            for v271 = 1, 6 do
                vu269[v271] = Drawing.new('Line')
                vu269[v271].Visible = false
                vu269[v271].Color = getgenv().SkeletonColor
                vu269[v271].Thickness = 2
            end

            vu270.Head = Drawing.new('Circle')
            vu270.Head.Visible = false
            vu270.Head.Color = Color3.new(1, 0.5, 0)
            vu270.Head.Thickness = 2
            vu270.Head.Filled = true
            vu270.Head.Radius = 4
        end)()

        local vu272 = 100
        local vu273 = 0
        local vu274 = 100

        vu259[pu260] = {
            box = vu261,
            healthBar = vu262,
            healthBarBackground = vu263,
            healthBarBorder = vu264,
            healthText = vu265,
            nameText = vu266,
            distanceText = vu267,
            tracer = vu268,
            skeletonLines = vu269,
            skeletonPoints = vu270,
        }

        vu243.RenderStepped:Connect(function()
            if getgenv().ESPEnabled and pu260.Character and (pu260.Character:FindFirstChild('HumanoidRootPart') and (pu260.Character:FindFirstChild('Humanoid') and pu260 ~= vu245)) then
                if getgenv().TeamCheck and pu260.Team == vu245.Team then
                    vu261.Visible = false
                    vu262.Visible = false
                    vu263.Visible = false
                    vu264.Visible = false
                    vu265.Visible = false
                    vu266.Visible = false
                    vu267.Visible = false
                    vu268.Visible = false

                    local v275, v276, v277 = pairs(vu269)

                    while true do
                        local v278

                        v277, v278 = v275(v276, v277)

                        if v277 == nil then
                            break
                        end

                        v278.Visible = false
                    end

                    local v279, v280, v281 = pairs(vu270)

                    while true do
                        local v282

                        v281, v282 = v279(v280, v281)

                        if v281 == nil then
                            break
                        end

                        v282.Visible = false
                    end
                else
                    local v283 = pu260.Character
                    local v284 = v283:FindFirstChild('HumanoidRootPart')
                    local v285 = v283:FindFirstChild('Humanoid')

                    if v284 and (v285 and v285.Health > 0) then
                        local v286, v287 = vu244:WorldToViewportPoint(v284.Position)
                        local v288, _ = vu244:WorldToViewportPoint(v284.Position + Vector3.new(0, 3, 0))
                        local v289, _ = vu244:WorldToViewportPoint(v284.Position - Vector3.new(0, 3, 0))

                        if getgenv().ShowBox and v287 then
                            vu261.Size = Vector2.new(1000 / v286.Z, v288.Y - v289.Y)
                            vu261.Position = Vector2.new(v286.X - vu261.Size.X / 2, v286.Y - vu261.Size.Y / 2)
                            vu261.Visible = true
                        else
                            vu261.Visible = false
                        end
                        if getgenv().ShowHealth and v287 then
                            local _ = v285.Health / v285.MaxHealth
                            local v290 = 50
                            local v291 = 5
                            local v292 = v288.X - v290 / 2
                            local v293 = v288.Y - 20

                            vu263.Size = Vector2.new(v290, v291)
                            vu263.Position = Vector2.new(v292, v293)
                            vu263.Visible = true
                            vu264.Size = Vector2.new(v290, v291)
                            vu264.Position = Vector2.new(v292, v293)
                            vu264.Visible = true
                            vu274 = vu274 + (v285.Health - vu274) * 0.1

                            local v294 = vu274 / v285.MaxHealth

                            vu262.Size = Vector2.new(v290 * v294, v291)
                            vu262.Position = Vector2.new(v292, v293)

                            if v294 >= 0.8 then
                                vu262.Color = Color3.new(0, 1, 0)
                            elseif v294 >= 0.5 then
                                vu262.Color = Color3.new(1, 1, 0)
                            elseif v294 >= 0.2 then
                                vu262.Color = Color3.new(1, 0.5, 0)
                            else
                                vu262.Color = Color3.new(1, 0, 0)
                            end

                            vu262.Visible = true

                            if v285.Health ~= vu272 then
                                vu273 = tick()
                                vu272 = v285.Health
                            end
                            if tick() - vu273 < 0.5 then
                                vu262.Color = Color3.new(1, 0, 0)
                            end

                            vu265.Position = Vector2.new(v292 + v290 + 5, v293 - 5)
                            vu265.Text = math.floor(v285.Health) .. '/' .. math.floor(v285.MaxHealth)
                            vu265.Visible = true
                        else
                            vu262.Visible = false
                            vu263.Visible = false
                            vu264.Visible = false
                            vu265.Visible = false
                        end
                        if getgenv().ShowName and v287 then
                            vu266.Position = Vector2.new(v288.X, v288.Y - 10)
                            vu266.Text = pu260.Name
                            vu266.Visible = true

                            if getgenv().ShowDistance then
                                local v295 = (vu245.Character.HumanoidRootPart.Position - v284.Position).Magnitude

                                vu267.Position = Vector2.new(v288.X, v288.Y + 10)
                                vu267.Text = math.floor(v295) .. ' \u{339d}'
                                vu267.Visible = true
                            else
                                vu267.Visible = false
                            end
                        else
                            vu266.Visible = false
                            vu267.Visible = false
                        end
                        if getgenv().ShowTracer then
                            local v296 = v283:FindFirstChild('Head')

                            if v296 then
                                local v297, v298 = vu244:WorldToViewportPoint(v296.Position)

                                if v298 then
                                    vu268.From = Vector2.new(vu244.ViewportSize.X / 2, 0)
                                    vu268.To = Vector2.new(v297.X, v297.Y)
                                    vu268.Visible = true
                                else
                                    vu268.Visible = false
                                end
                            else
                                vu268.Visible = false
                            end
                        else
                            vu268.Visible = false
                        end
                        if getgenv().ShowSkeleton and v287 then
                            local v299 = v283:FindFirstChild('Head')
                            local v300 = v283:FindFirstChild('Torso')
                            local v301 = v283:FindFirstChild('Left Arm')
                            local v302 = v283:FindFirstChild('Right Arm')
                            local v303 = v283:FindFirstChild('Left Leg')
                            local v304 = v283:FindFirstChild('Right Leg')

                            if v299 and (v300 and (v301 and (v302 and (v303 and v304)))) then
                                local v305 = vu244:WorldToViewportPoint(v299.Position)
                                local v306 = vu244:WorldToViewportPoint(v300.Position)
                                local v307 = vu244:WorldToViewportPoint(v301.Position)
                                local v308 = vu244:WorldToViewportPoint(v302.Position)
                                local v309 = vu244:WorldToViewportPoint(v303.Position)
                                local v310 = vu244:WorldToViewportPoint(v304.Position)

                                vu270.Head.Position = Vector2.new(v305.X, v305.Y)
                                vu270.Head.Visible = true
                                vu269[1].From = Vector2.new(v305.X, v305.Y)
                                vu269[1].To = Vector2.new(v306.X, v306.Y)
                                vu269[1].Visible = true
                                vu269[2].From = Vector2.new(v306.X, v306.Y)
                                vu269[2].To = Vector2.new(v307.X, v307.Y)
                                vu269[2].Visible = true
                                vu269[3].From = Vector2.new(v306.X, v306.Y)
                                vu269[3].To = Vector2.new(v308.X, v308.Y)
                                vu269[3].Visible = true
                                vu269[4].From = Vector2.new(v306.X, v306.Y)
                                vu269[4].To = Vector2.new(v309.X, v309.Y)
                                vu269[4].Visible = true
                                vu269[5].From = Vector2.new(v306.X, v306.Y)
                                vu269[5].To = Vector2.new(v310.X, v310.Y)
                                vu269[5].Visible = true
                                vu269[6].Visible = false
                            else
                                local v311, v312, v313 = pairs(vu269)

                                while true do
                                    local v314

                                    v313, v314 = v311(v312, v313)

                                    if v313 == nil then
                                        break
                                    end

                                    v314.Visible = false
                                end

                                local v315, v316, v317 = pairs(vu270)

                                while true do
                                    local v318

                                    v317, v318 = v315(v316, v317)

                                    if v317 == nil then
                                        break
                                    end

                                    v318.Visible = false
                                end
                            end
                        else
                            local v319, v320, v321 = pairs(vu269)

                            while true do
                                local v322

                                v321, v322 = v319(v320, v321)

                                if v321 == nil then
                                    break
                                end

                                v322.Visible = false
                            end

                            local v323, v324, v325 = pairs(vu270)

                            while true do
                                local v326

                                v325, v326 = v323(v324, v325)

                                if v325 == nil then
                                    break
                                end

                                v326.Visible = false
                            end
                        end
                    else
                        vu261.Visible = false
                        vu262.Visible = false
                        vu263.Visible = false
                        vu264.Visible = false
                        vu265.Visible = false
                        vu266.Visible = false
                        vu267.Visible = false
                        vu268.Visible = false

                        local v327, v328, v329 = pairs(vu269)

                        while true do
                            local v330

                            v329, v330 = v327(v328, v329)

                            if v329 == nil then
                                break
                            end

                            v330.Visible = false
                        end

                        local v331, v332, v333 = pairs(vu270)

                        while true do
                            local v334

                            v333, v334 = v331(v332, v333)

                            if v333 == nil then
                                break
                            end

                            v334.Visible = false
                        end
                    end
                end
            else
                vu261.Visible = false
                vu262.Visible = false
                vu263.Visible = false
                vu264.Visible = false
                vu265.Visible = false
                vu266.Visible = false
                vu267.Visible = false
                vu268.Visible = false

                local v335, v336, v337 = pairs(vu269)

                while true do
                    local v338

                    v337, v338 = v335(v336, v337)

                    if v337 == nil then
                        break
                    end

                    v338.Visible = false
                end

                local v339, v340, v341 = pairs(vu270)

                while true do
                    local v342

                    v341, v342 = v339(v340, v341)

                    if v341 == nil then
                        break
                    end

                    v342.Visible = false
                end

                return
            end
        end)
    end
    local function vu352()
        local v344, v345, v346 = pairs(vu259)

        while true do
            local v347

            v346, v347 = v344(v345, v346)

            if v346 == nil then
                break
            end

            v347.box.Color = getgenv().BoxColor
            v347.healthBar.Color = getgenv().HealthBarColor
            v347.healthText.Color = getgenv().HealthTextColor
            v347.nameText.Color = getgenv().NameColor
            v347.distanceText.Color = getgenv().DistanceColor
            v347.tracer.Color = getgenv().TracerColor

            local v348, v349, v350 = pairs(v347.skeletonLines)

            while true do
                local v351

                v350, v351 = v348(v349, v350)

                if v350 == nil then
                    break
                end

                v351.Color = getgenv().SkeletonColor
            end
        end
    end

    local vu353 = Drawing.new('Circle')

    vu353.Visible = false
    vu353.Color = Color3.new(1, 1, 1)
    vu353.Thickness = 1
    vu353.Filled = false
    vu353.Radius = 100
    vu353.Position = Vector2.new(vu244.ViewportSize.X - 120, 120)

    local vu354 = Drawing.new('Circle')

    vu354.Visible = false
    vu354.Color = Color3.new(1, 1, 1)
    vu354.Thickness = 1
    vu354.Filled = true
    vu354.Radius = 3
    vu354.Position = vu353.Position

    local vu355 = {}

    local function v376()
        if getgenv().ShowRadar then
            vu353.Visible = true
            vu354.Visible = true

            local v356, v357, v358 = pairs(vu355)

            while true do
                local v359

                v358, v359 = v356(v357, v358)

                if v358 == nil then
                    break
                end

                v359.Visible = false
            end

            local v360 = vu242
            local v361, v362, v363 = pairs(v360:GetPlayers())

            while true do
                local v364

                v363, v364 = v361(v362, v363)

                if v363 == nil then
                    break
                end
                if v364.Character and v364.Character:FindFirstChild('HumanoidRootPart') then
                    local v365 = v364.Character.HumanoidRootPart.Position - vu245.Character.HumanoidRootPart.Position
                    local v366 = vu353.Position.X + v365.X / 10
                    local v367 = vu353.Position.Y + v365.Z / 10

                    if (v366 - vu353.Position.X) ^ 2 + (v367 - vu353.Position.Y) ^ 2 <= vu353.Radius ^ 2 then
                        if not vu355[v364] then
                            vu355[v364] = Drawing.new('Circle')
                            vu355[v364].Thickness = 1
                            vu355[v364].Filled = true
                        end
                        if v364 ~= vu245 then
                            vu355[v364].Color = Color3.new(1, 0, 0)
                            vu355[v364].Radius = 4
                        else
                            vu355[v364].Color = Color3.new(0, 1, 0)
                            vu355[v364].Radius = 6
                        end

                        local v368, v369, v370 = pairs(vu355)

                        while true do
                            local v371

                            v370, v371 = v368(v369, v370)

                            if v370 == nil then
                                break
                            end
                            if v370 ~= v364 and (v371.Visible and (Vector2.new(v366, v367) - v371.Position).Magnitude < 10) then
                                v366 = v366 + 10
                                v367 = v367 + 10
                            end
                        end

                        vu355[v364].Position = Vector2.new(v366, v367)
                        vu355[v364].Visible = true
                    elseif vu355[v364] then
                        vu355[v364].Visible = false
                    end
                elseif vu355[v364] then
                    vu355[v364].Visible = false
                end
            end
        else
            vu353.Visible = false
            vu354.Visible = false

            local v372, v373, v374 = pairs(vu355)

            while true do
                local v375

                v374, v375 = v372(v373, v374)

                if v374 == nil then
                    break
                end

                v375.Visible = false
            end
        end
    end

    vu243.RenderStepped:Connect(v376)

    local v377 = vu242
    local v378, v379, v380 = pairs(vu242.GetPlayers(v377))
    local v381 = vu243
    local v382 = vu242
    local vu383 = vu254
    local vu384 = vu245

    while true do
        local v385, v386 = v378(v379, v380)

        if v385 == nil then
            break
        end

        v380 = v385

        if v386 ~= vu384 then
            vu343(v386)
        end
    end

    v382.PlayerAdded:Connect(function(p387)
        if p387 ~= vu384 then
            vu343(p387)
        end
    end)
    v381.RenderStepped:Connect(v258)
    v241:Label('\u{66f4}\u{65b0}\u{65f6}\u{95f4}2025/1/24')
    v241:Label('\u{72ec}\u{5bb6}\u{81ea}\u{5236}ESP')
    v241:Toggle('\u{786e}\u{5b9a}\u{5f00}\u{542f}esp', 'Enabled', false, function(p388)
        getgenv().ESPEnabled = p388
    end)
    v241:Toggle('\u{663e}\u{793a}\u{4eba}\u{6570}', 'Player Count', false, function(p389)
        getgenv().ShowPlayerCount = p389
    end)
    v241:Toggle('\u{8eab}\u{4f53}\u{65b9}\u{6846}', 'Box', false, function(p390)
        getgenv().ShowBox = p390
    end)
    v241:Toggle('\u{8840}\u{91cf}', 'Health', false, function(p391)
        getgenv().ShowHealth = p391
    end)
    v241:Toggle('\u{7528}\u{6237}\u{540d}', 'Name', false, function(p392)
        getgenv().ShowName = p392
    end)
    v241:Toggle('\u{8ddd}\u{79bb}', 'Distance', false, function(p393)
        getgenv().ShowDistance = p393
    end)
    v241:Toggle('\u{5929}\u{7ebf}', 'Tracer', false, function(p394)
        getgenv().ShowTracer = p394
    end)
    v241:Toggle('\u{56e2}\u{961f}\u{5224}\u{65ad}', 'Team check', false, function(p395)
        getgenv().TeamCheck = p395
    end)
    v241:Toggle('\u{9aa8}\u{9abc}\u{7ed8}\u{5236}', 'Skeleton', false, function(p396)
        getgenv().ShowSkeleton = p396
    end)
    v241:Toggle('\u{96f7}\u{8fbe}\u{663e}\u{793a}', 'Radar', false, function(p397)
        getgenv().ShowRadar = p397
    end)

    local vu398 = v4:Tab('\u{81ea}\u{5b9a}\u{4e49}ESP\u{989c}\u{8272}', '16060333448'):section('\u{81ea}\u{5b9a}\u{4e49}', true)
    local vu399 = {
        '\u{7ea2}\u{8272}',
        '\u{7eff}\u{8272}',
        '\u{84dd}\u{8272}',
        '\u{9ec4}\u{8272}',
        '\u{7d2b}\u{8272}',
        '\u{9752}\u{8272}',
        '\u{767d}\u{8272}',
        '\u{9ed1}\u{8272}',
        '\u{5f69}\u{8679}\u{8272}',
        '\u{81ea}\u{5b9a}\u{4e49}',
    }

    local function v404(pu400, pu401)
        vu398:Dropdown(pu400, 'colors', vu399, function(p402)
            if p402 == '\u{81ea}\u{5b9a}\u{4e49}' then
                getgenv()[pu401] = vu249()
            elseif p402 == '\u{5f69}\u{8679}\u{8272}' then
                getgenv()[pu401] = vu383(tick())
            else
                local v403 = {
                    ['\u{7ea2}\u{8272}'] = Color3.new(1, 0, 0),
                    ['\u{7eff}\u{8272}'] = Color3.new(0, 1, 0),
                    ['\u{84dd}\u{8272}'] = Color3.new(0, 0, 1),
                    ['\u{9ec4}\u{8272}'] = Color3.new(1, 1, 0),
                    ['\u{7d2b}\u{8272}'] = Color3.new(0.5, 0, 0.5),
                    ['\u{9752}\u{8272}'] = Color3.new(0, 1, 1),
                    ['\u{767d}\u{8272}'] = Color3.new(1, 1, 1),
                    ['\u{9ed1}\u{8272}'] = Color3.new(0, 0, 0),
                }

                getgenv()[pu401] = v403[p402] or Color3.new(1, 1, 1)
            end

            vu352()
            dropdown:SetText(pu400 .. ' (' .. p402 .. ')')
        end)
    end

    local v405 = vu398

    vu398.Label(v405, '\u{81ea}\u{5b9a}\u{4e49}\u{548c}\u{5f69}\u{8679}\u{8272}\u{9009}\u{9879}\u{5c31}\u{662f}\u{968f}\u{673a}\u{6539}\u{53d8}\u{989c}\u{8272}')

    local v406 = vu398

    vu398.Label(v406, '\u{76ee}\u{524d}\u{662f}bug\u{672a}\u{4fee}\u{590d}')

    local v407 = vu398

    vu398.Label(v407, '\u{70b9}\u{4e00}\u{4e0b}\u{5237}\u{65b0}\u{4e0b}\u{4e00}\u{4e2a}\u{81ea}\u{5b9a}\u{4e49}')
    v404('\u{5929}\u{7ebf}\u{989c}\u{8272}', 'TracerColor')

    local v408 = vu398

    vu398.Label(v408, '\u{70b9}\u{4e00}\u{4e0b}\u{5237}\u{65b0}\u{4e0b}\u{4e00}\u{4e2a}\u{81ea}\u{5b9a}\u{4e49}')
    v404('\u{9aa8}\u{9abc}\u{989c}\u{8272}', 'SkeletonColor')

    local v409 = vu398

    vu398.Label(v409, '\u{70b9}\u{4e00}\u{4e0b}\u{5237}\u{65b0}\u{4e0b}\u{4e00}\u{4e2a}\u{81ea}\u{5b9a}\u{4e49}')
    v404('\u{65b9}\u{6846}\u{989c}\u{8272}', 'BoxColor')

    local v410 = vu398

    vu398.Label(v410, '\u{70b9}\u{4e00}\u{4e0b}\u{5237}\u{65b0}\u{4e0b}\u{4e00}\u{4e2a}\u{81ea}\u{5b9a}\u{4e49}')
    v404('\u{8840}\u{91cf}\u{6761}\u{989c}\u{8272}', 'HealthBarColor')

    local v411 = vu398

    vu398.Label(v411, '\u{70b9}\u{4e00}\u{4e0b}\u{5237}\u{65b0}\u{4e0b}\u{4e00}\u{4e2a}\u{81ea}\u{5b9a}\u{4e49}')
    v404('\u{8840}\u{91cf}\u{6587}\u{5b57}\u{989c}\u{8272}', 'HealthTextColor')

    local v412 = vu398

    vu398.Label(v412, '\u{70b9}\u{4e00}\u{4e0b}\u{5237}\u{65b0}\u{4e0b}\u{4e00}\u{4e2a}\u{81ea}\u{5b9a}\u{4e49}')
    v404('\u{540d}\u{5b57}\u{989c}\u{8272}', 'NameColor')

    local v413 = vu398

    vu398.Label(v413, '\u{8fd9}\u{662f}\u{6700}\u{540e}\u{4e00}\u{4e2a}\u{4e0d}\u{7528}\u{70b9}\u{4e86}')
    v404('\u{8ddd}\u{79bb}\u{989c}\u{8272}', 'DistanceColor')

    local vu414 = {
        playernamedied = '',
        dropdown = {},
        teleportMode = '\u{666e}\u{901a}\u{6a21}\u{5f0f}',
        smoothTeleport = false,
        teleportSpeed = 0.05,
        enableTrail = false,
        enableLightEffect = false,
        enableParticleEffect = false,
        trailParts = {},
        toggleTeleportState = false,
        enablePrediction = false,
    }

    function shuaxinlb(p415)
        vu414.dropdown = {}

        local v416 = game.Players:GetPlayers()
        local v417 = game.Players.LocalPlayer
        local v418, v419, v420 = pairs(v416)

        while true do
            local v421

            v420, v421 = v418(v419, v420)

            if v420 == nil then
                break
            end
            if p415 then
                table.insert(vu414.dropdown, v421.Name)
            elseif v421 ~= v417 then
                table.insert(vu414.dropdown, v421.Name)
            end
        end
    end

    local function vu436(pu422)
        if vu414.enableLightEffect then
            local v423 = Instance.new('Model')

            v423.Name = 'TeleportLightEffect'
            v423.Parent = workspace

            local vu424 = 6
            local vu425 = 4

            for v426 = 1, vu424 do
                local vu427 = v426
                local vu428 = Instance.new('Part')

                vu428.Size = Vector3.new(1.2, 1.2, 1.2)
                vu428.Shape = Enum.PartType.Ball
                vu428.Material = Enum.Material.Neon
                vu428.Color = Color3.fromHSV(vu427 / vu424, 0.7, 1)
                vu428.Transparency = 0.5
                vu428.Anchored = true
                vu428.CanCollide = false
                vu428.Parent = v423

                if vu414.enableParticleEffect then
                    local v429 = Instance.new('ParticleEmitter')

                    v429.Size = NumberSequence.new(0.3, 1)
                    v429.Color = ColorSequence.new(vu428.Color)
                    v429.Lifetime = NumberRange.new(0.5, 0.8)
                    v429.Rate = 25
                    v429.Speed = NumberRange.new(2, 6)
                    v429.Parent = vu428
                end

                coroutine.wrap(function()
                    local v430 = math.rad((vu427 - 1) * (360 / vu424))
                    local v431 = tick()

                    while tick() - v431 < 1.8 do
                        local v432 = tick() - v431
                        local v433 = math.cos(v430 + v432 * 3.5) * vu425
                        local v434 = math.sin(v430 + v432 * 3.5) * vu425

                        vu428.Position = pu422 + Vector3.new(v433, math.sin(v432 * 5) * 2, v434)
                        vu428.CFrame = vu428.CFrame * CFrame.Angles(0, math.rad(v432 * 100), 0)

                        task.wait()
                    end

                    vu428:Destroy()
                end)()
            end

            local v435 = Instance.new('Part')

            v435.Size = Vector3.new(2.5, 2.5, 2.5)
            v435.Shape = Enum.PartType.Ball
            v435.Material = Enum.Material.Neon
            v435.Color = Color3.new(1, 1, 1)
            v435.Transparency = 0.6
            v435.CFrame = CFrame.new(pu422)
            v435.Anchored = true
            v435.Parent = v423

            game:GetService('Debris'):AddItem(v423, 1.8)
        end
    end
    local function vu440(p437)
        if vu414.enableTrail then
            local v438 = Instance.new('Part')

            v438.Shape = Enum.PartType.Ball
            v438.Size = Vector3.new(2, 2, 2)
            v438.Position = p437
            v438.Anchored = true
            v438.CanCollide = false
            v438.Material = Enum.Material.Neon
            v438.Color = Color3.fromRGB(180, 0, 255)
            v438.Transparency = 0.8
            v438.Parent = workspace

            local v439 = Instance.new('ParticleEmitter')

            v439.Size = NumberSequence.new(0.8, 1.5)
            v439.Color = ColorSequence.new(Color3.new(0.8, 0, 1), Color3.new(0.6, 0, 1))
            v439.Lifetime = NumberRange.new(0.8, 1.2)
            v439.Rate = 80
            v439.Speed = NumberRange.new(5, 10)
            v439.Parent = v438

            game:GetService('Debris'):AddItem(v438, 0.8)
        end
    end
    local function vu442()
        local v441 = Instance.new('Sound')

        v441.SoundId = 'rbxassetid://9119658361'
        v441.Volume = 0.5
        v441.Parent = workspace

        v441:Play()
        game:GetService('Debris'):AddItem(v441, 5)
    end
    local function vu454()
        local v443 = game.Players:FindFirstChild(vu414.playernamedied)

        if v443 and v443.Character then
            local v444 = v443.Character:FindFirstChild('HumanoidRootPart')

            if v444 then
                local v445 = game.Players.LocalPlayer.Character

                if v445 and v445.HumanoidRootPart then
                    v445.HumanoidRootPart.Anchored = true

                    vu442()

                    local v446

                    if vu414.enablePrediction then
                        local v447 = v444.Velocity
                        local v448 = v447.Unit
                        local v449 = v447.Magnitude

                        v446 = v444.Position + v448 * v449 * vu414.teleportSpeed
                    else
                        v446 = v444.Position
                    end
                    if not v446 or v446.Y < -500 then
                        v446 = v444.Position
                    end
                    if vu414.smoothTeleport then
                        local v450 = v445.HumanoidRootPart.Position
                        local v451 = tick()

                        while tick() - v451 < vu414.teleportSpeed and vu414.smoothTeleport do
                            if v443.Character and v443.Character.HumanoidRootPart then
                                v444 = v443.Character.HumanoidRootPart

                                if vu414.enablePrediction then
                                    local v452 = v444.Velocity

                                    v446 = v444.Position + v452.Unit * v452.Magnitude * vu414.teleportSpeed
                                else
                                    v446 = v444.Position
                                end
                            end
                            if not v446 or v446.Y < -500 then
                                v446 = v444.Position
                            end

                            local v453 = (tick() - v451) / vu414.teleportSpeed

                            v445.HumanoidRootPart.CFrame = CFrame.new(v450:Lerp(v446, v453))

                            vu440(v445.HumanoidRootPart.Position)
                            vu436(v445.HumanoidRootPart.Position)
                            task.wait()
                        end
                    end

                    v445.HumanoidRootPart.CFrame = CFrame.new(v446)
                    v445.HumanoidRootPart.Anchored = false

                    vu440(v446)
                    vu436(v446)
                end
            else
                return
            end
        else
            return
        end
    end

    local v455 = v4:Tab('\u{4f20}\u{9001}\u{529f}\u{80fd}', '7075580326'):section('\u{6838}\u{5fc3}\u{529f}\u{80fd}', true)

    shuaxinlb(true)

    local vu457 = v455:Dropdown('\u{9009}\u{62e9}\u{76ee}\u{6807}\u{73a9}\u{5bb6}', 'PlayerSelect', vu414.dropdown, function(p456)
        vu414.playernamedied = p456
    end)

    v455:Button('\u{5237}\u{65b0}\u{73a9}\u{5bb6}\u{5217}\u{8868}', function()
        shuaxinlb(true)
        vu457:Refresh(vu414.dropdown)
    end)

    local vu458 = v455:Label('\u{5f53}\u{524d}\u{5750}\u{6807}\u{ff1a}\u{52a0}\u{8f7d}\u{4e2d}...')
    local vu459 = v455:Label('\u{76ee}\u{6807}\u{73a9}\u{5bb6}\u{ff1a}\u{81ea}\u{7531}\u{9009}\u{62e9}')
    local vu460 = v455:Label('\u{5f53}\u{524d}\u{6a21}\u{5f0f}\u{ff1a}\u{666e}\u{901a}\u{6a21}\u{5f0f}\u{53ef}\u{81ea}\u{7531}\u{66f4}\u{6539}')

    v455:Dropdown('\u{4f20}\u{9001}\u{6a21}\u{5f0f}', 'TeleportMode', {
        '\u{666e}\u{901a}\u{6a21}\u{5f0f}',
        '\u{9ad8}\u{7a7a}\u{6a21}\u{5f0f}',
        '\u{9690}\u{8eab}\u{6a21}\u{5f0f}',
        '\u{7a7f}\u{5899}\u{6a21}\u{5f0f}',
        '\u{968f}\u{673a}\u{6a21}\u{5f0f}',
        '\u{8ddf}\u{968f}\u{6a21}\u{5f0f}',
        '\u{53cd}\u{5411}\u{6a21}\u{5f0f}',
    }, function(p461)
        vu414.teleportMode = p461
    end)
    v455:Label('\u{8ba9}\u{4f20}\u{9001}\u{770b}\u{8d77}\u{6765}\u{8212}\u{670d}')
    v455:Toggle('\u{5e73}\u{6ed1}\u{4f20}\u{9001}', 'SmoothTP', false, function(p462)
        vu414.smoothTeleport = p462
    end)
    v455:Slider('\u{4f20}\u{9001}\u{901f}\u{5ea6}', 'TeleportSpeed', 0.01, 2, 0.05, true, function(p463)
        vu414.teleportSpeed = p463
    end)
    v455:Label('\u{88ab}\u{9009}\u{4e2d}\u{7684}\u{73a9}\u{5bb6}\u{4e2d}\u{95f4}\u{51fa}\u{73b0}\u{4e00}\u{4e2a}\u{5706}\u{7403}\u{9644}\u{5e26}\u{62d6}\u{5f71}\u{6548}\u{679c}')
    v455:Toggle('\u{62d6}\u{5f71}\u{6548}\u{679c}', 'TrailEffect', false, function(p464)
        vu414.enableTrail = p464
    end)
    v455:Label('\u{5f00}\u{542f}\u{540e}\u{8eab}\u{65c1}\u{73af}\u{7ed5}\u{4e94}\u{989c}\u{516d}\u{8272}\u{5706}\u{7403}')
    v455:Toggle('\u{5149}\u{6548}\u{7cfb}\u{7edf}', 'LightEffect', true, function(p465)
        vu414.enableLightEffect = p465
    end)
    v455:Label('\u{5149}\u{6548}\u{7cfb}\u{7edf}\u{7684}\u{5706}\u{7403}\u{7c92}\u{5b50}\u{7279}\u{6548}')
    v455:Toggle('\u{7c92}\u{5b50}\u{7279}\u{6548}', 'ParticleEffect', true, function(p466)
        vu414.enableParticleEffect = p466
    end)
    v455:Label('\u{8fd9}\u{4e2a}\u{4f1a}\u{9ed1}\u{5c4f}\u{6682}\u{65f6}\u{6709}bug\u{522b}\u{7528}')
    v455:Toggle('\u{9884}\u{5224}\u{76ee}\u{6807}\u{79fb}\u{52a8}', 'Prediction', false, function(p467)
        vu414.enablePrediction = p467
    end)
    v455:Button('\u{7acb}\u{5373}\u{4f20}\u{9001}', function()
        vu454()
    end)
    v455:Toggle('\u{9501}\u{5b9a}\u{4f20}\u{9001}', 'LockTP', false, function(p468)
        vu414.toggleTeleportState = p468

        while vu414.toggleTeleportState do
            vu454()
            task.wait(0.1)
        end
    end)
    game:GetService('RunService').Heartbeat:Connect(function()
        local v469 = game.Players.LocalPlayer

        if v469.Character and v469.Character.HumanoidRootPart then
            local v470 = v469.Character.HumanoidRootPart.Position

            vu458:Update(string.format('\u{5f53}\u{524d}\u{5750}\u{6807}\u{ff1a}X:%.1f Y:%.1f Z:%.1f', v470.X, v470.Y, v470.Z))
        end
        if vu414.playernamedied == '' then
            vu459:Update('\u{76ee}\u{6807}\u{73a9}\u{5bb6}\u{ff1a}\u{672a}\u{9009}\u{62e9}')
        else
            vu459:Update('\u{76ee}\u{6807}\u{73a9}\u{5bb6}\u{ff1a}' .. vu414.playernamedied)
        end

        vu460:Update('\u{5f53}\u{524d}\u{6a21}\u{5f0f}\u{ff1a}' .. vu414.teleportMode)
    end)

    local v471 = v4:Tab('\u{7529}\u{98de}\u{529f}\u{80fd}', '16060333448'):section('\u{81ea}\u{5236}', true)
    local vu472 = {}
    local vu473 = nil

    local function vu478()
        vu472 = {}

        local v474, v475, v476 = pairs(game:GetService('Players'):GetChildren())

        while true do
            local v477

            v476, v477 = v474(v475, v476)

            if v476 == nil then
                break
            end
            if v477:IsA('Player') then
                table.insert(vu472, v477.Name)
            end
        end
    end

    vu478()
    v471:Label('\u{70b9}\u{4e00}\u{4e0b}\u{5237}\u{65b0}')

    local vu480 = v471:Dropdown('\u{73a9}\u{5bb6}\u{5217}\u{8868}', 'plrlist', vu472, function(p479)
        vu473 = p479
    end)

    v471:Button('\u{5237}\u{65b0}\u{5217}\u{8868}', function()
        vu478()
        vu480:Clear()

        local v481, v482, v483 = pairs(vu472)

        while true do
            local v484

            v483, v484 = v481(v482, v483)

            if v483 == nil then
                break
            end

            vu480:Add(v484)
        end
    end)

    local vu485 = 10000000000
    local vu486 = 5000000000
    local vu487 = 500
    local vu488 = 50
    local vu489 = 2
    local vu490 = 100

    v471:Slider('\u{7529}\u{98de}\u{901f}\u{5ea6}', 'flingSpeed', vu485, 1000000, 1000000000000, function(p491)
        vu485 = p491
    end)
    v471:Slider('\u{65cb}\u{8f6c}\u{901f}\u{5ea6}', 'rotationSpeed', vu486, 1000000, 10000000000, function(p492)
        vu486 = p492
    end)
    v471:Slider('\u{65cb}\u{8f6c}\u{529b}\u{5ea6}', 'rotationForce', vu487, 1, 1000, function(p493)
        vu487 = p493
    end)
    v471:Slider('\u{7529}\u{98de}\u{9ad8}\u{5ea6}', 'flingHeight', vu488, 1, 100, function(p494)
        vu488 = p494
    end)
    v471:Slider('\u{7529}\u{98de}\u{6301}\u{7eed}\u{65f6}\u{95f4}', 'flingDuration', vu489, 1, 10, function(p495)
        vu489 = p495
    end)
    v471:Slider('\u{7529}\u{98de}\u{8ddd}\u{79bb}', 'flingDistance', vu490, 1, 500, function(p496)
        vu490 = p496
    end)
    v471:Label('\u{81ea}\u{5b9a}\u{4e49}\u{7529}\u{98de}\u{6a21}\u{5f0f}')
    v471:Label('\u{70b9}\u{4e00}\u{4e0b}\u{5237}\u{65b0}')

    local vu497 = '\u{666e}\u{901a}\u{7529}\u{98de}'

    v471:Dropdown('\u{7529}\u{98de}\u{6a21}\u{5f0f}', 'flingModes', {
        '\u{666e}\u{901a}\u{7529}\u{98de}',
        '\u{5f3a}\u{529b}\u{7529}\u{98de}',
        '\u{968f}\u{673a}\u{7529}\u{98de}',
        '\u{87ba}\u{65cb}\u{7529}\u{98de}',
        '\u{5f39}\u{5c04}\u{7529}\u{98de}',
        '\u{81ea}\u{5b9a}\u{4e49}\u{7529}\u{98de}',
    }, function(p498)
        vu497 = p498
    end)
    v471:Label('\u{81ea}\u{5b9a}\u{4e49}\u{7529}\u{98de}\u{65b9}\u{5411}')
    v471:Label('\u{70b9}\u{4e00}\u{4e0b}\u{5237}\u{65b0}')

    local vu499 = '\u{5411}\u{4e0a}'

    v471:Dropdown('\u{7529}\u{98de}\u{65b9}\u{5411}', 'flingDirections', {
        '\u{5411}\u{4e0a}',
        '\u{5411}\u{4e0b}',
        '\u{5411}\u{5de6}',
        '\u{5411}\u{53f3}',
        '\u{968f}\u{673a}\u{65b9}\u{5411}',
    }, function(p500)
        vu499 = p500
    end)
    v471:Label('\u{4e0d}\u{8981}\u{548c}\u{7529}\u{98de}\u{4e00}\u{8d77}\u{7528}')

    local vu501 = false

    v471:Toggle('\u{9632}\u{7529}\u{98de}', 'antiFling', false, function(p502)
        vu501 = p502

        if vu501 then
            spawn(function()
                while vu501 do
                    local v503 = game.Players.LocalPlayer.Character
                    local v504 = v503 and v503:FindFirstChild('HumanoidRootPart')

                    if v504 then
                        v504.Velocity = Vector3.new(0, 0, 0)
                        v504.RotVelocity = Vector3.new(0, 0, 0)
                        v504.CFrame = CFrame.new(v504.Position)
                    end

                    wait(0.05)
                end
            end)
        end
    end)

    local function vu509()
        local v505 = vu485
        local v506 = vu486
        local v507 = vu487

        if vu497 ~= '\u{5f3a}\u{529b}\u{7529}\u{98de}' then
            if vu497 ~= '\u{968f}\u{673a}\u{7529}\u{98de}' then
                if vu497 ~= '\u{87ba}\u{65cb}\u{7529}\u{98de}' then
                    if vu497 ~= '\u{5f39}\u{5c04}\u{7529}\u{98de}' then
                        if vu497 == '\u{81ea}\u{5b9a}\u{4e49}\u{7529}\u{98de}' then
                            v505 = vu485 * 1
                            v506 = vu486 * 1
                            v507 = vu487 * 1
                        end
                    else
                        v505 = vu485 * 3
                        v506 = vu486 * 0.5
                        v507 = vu487 * 0.5
                    end
                else
                    v505 = vu485 * 1.5
                    v506 = vu486 * 1.5
                    v507 = vu487 * 1.5
                end
            else
                v505 = vu485 * math.random(1, 3)
                v506 = vu486 * math.random(1, 3)
                v507 = vu487 * math.random(1, 3)
            end
        else
            v505 = vu485 * 2
            v506 = vu486 * 2
            v507 = vu487 * 2
        end

        local v508 = Vector3.new(0, 1, 0)

        if vu499 ~= '\u{5411}\u{4e0b}' then
            if vu499 ~= '\u{5411}\u{5de6}' then
                if vu499 ~= '\u{5411}\u{53f3}' then
                    if vu499 == '\u{968f}\u{673a}\u{65b9}\u{5411}' then
                        v508 = Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
                    end
                else
                    v508 = Vector3.new(1, 0, 0)
                end
            else
                v508 = Vector3.new(-1, 0, 0)
            end
        else
            v508 = Vector3.new(0, -1, 0)
        end

        return v505, v506, v507, v508 * vu488 * vu490
    end
    local function vu538(pu510)
        local vu511 = game.Players.LocalPlayer.Character
        local vu512

        if vu511 then
            vu512 = vu511:FindFirstChildOfClass('Humanoid')
        else
            vu512 = vu511
        end

        local vu513

        if vu512 then
            vu513 = vu512.RootPart
        else
            vu513 = vu512
        end

        local vu514 = pu510.Character
        local vu515

        if vu514 then
            vu515 = vu514:FindFirstChildOfClass('Humanoid')
        else
            vu515 = vu514
        end

        local v516

        if vu515 then
            v516 = vu515.RootPart
        else
            v516 = vu515
        end
        if vu511 and (vu512 and (vu513 and (vu514 and (vu515 and v516)))) then
            if vu513.Velocity.Magnitude < 50 then
                getgenv().OldPos = vu513.CFrame
            end

            local vu517, vu518, vu519, vu520 = vu509()
            local v521 = Instance.new('Part')

            v521.Size = Vector3.new(1, 1, 1)
            v521.Position = vu513.Position
            v521.Anchored = true
            v521.CanCollide = false
            v521.Transparency = 0.5
            v521.BrickColor = BrickColor.new('Bright red')
            v521.Parent = workspace

            local v522 = Instance.new('Sound')

            v522.SoundId = 'rbxassetid://123456789'
            v522.Parent = vu513

            v522:Play()

            local function vu526(p523, p524, p525)
                vu513.CFrame = CFrame.new(p523.Position) * p524 * p525

                vu511:SetPrimaryPartCFrame(CFrame.new(p523.Position) * p524 * p525)

                vu513.Velocity = vu520 * vu517
                vu513.RotVelocity = Vector3.new(vu518, vu518, vu518)
            end
            local function v531(p527)
                local v528 = vu489
                local v529 = tick()
                local v530 = 0

                while vu513 and vu515 do
                    v530 = v530 + vu519

                    vu526(p527, CFrame.new(0, 1.5, 0), CFrame.Angles(math.rad(v530), 0, 0))
                    task.wait()

                    if p527.Velocity.Magnitude > 500 or (p527.Parent ~= pu510.Character or (pu510.Parent ~= game.Players or (not pu510.Character == vu514 or (vu515.Sit or (vu512.Health <= 0 or tick() > v529 + v528))))) then
                        break
                    end
                end
            end

            workspace.FallenPartsDestroyHeight = 0 / 0

            local v532 = Instance.new('BodyVelocity')

            v532.Name = 'EpixVel'
            v532.Parent = vu513
            v532.Velocity = vu520 * vu517
            v532.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)

            vu512:SetStateEnabled(Enum.HumanoidStateType.Seated, false)

            if v516 then
                v531(v516)
            end

            v532:Destroy()
            vu512:SetStateEnabled(Enum.HumanoidStateType.Seated, true)

            workspace.CurrentCamera.CameraSubject = vu512

            repeat
                vu513.CFrame = getgenv().OldPos * CFrame.new(0, 0.5, 0)

                local v533 = vu511

                vu511.SetPrimaryPartCFrame(v533, getgenv().OldPos * CFrame.new(0, 0.5, 0))

                local v534 = vu512

                vu512.ChangeState(v534, 'GettingUp')

                local v535 = vu511

                table.foreach(vu511.GetChildren(v535), function(_, p536)
                    if p536:IsA('BasePart') then
                        local v537 = Vector3.new()

                        p536.RotVelocity = Vector3.new()
                        p536.Velocity = v537
                    end
                end)
                task.wait()
            until (vu513.Position - getgenv().OldPos.p).Magnitude < 25

            workspace.FallenPartsDestroyHeight = getgenv().FPDH

            v521:Destroy()
            v522:Destroy()
        else
            warn('\u{7529}\u{98de}\u{5931}\u{8d25}\u{ff1a}\u{76ee}\u{6807}\u{73a9}\u{5bb6}\u{6216}\u{672c}\u{5730}\u{73a9}\u{5bb6}\u{89d2}\u{8272}\u{65e0}\u{6548}')
        end
    end

    v471:Button('\u{7529}\u{98de}\u{4e00}\u{6b21}', function()
        if vu473 ~= nil then
            local v539 = game.Players:FindFirstChild(vu473)

            if v539 then
                vu538(v539)
            else
                warn('\u{672a}\u{627e}\u{5230}\u{76ee}\u{6807}\u{73a9}\u{5bb6}\u{ff1a}' .. vu473)
            end
        else
            warn('\u{8bf7}\u{5148}\u{9009}\u{62e9}\u{4e00}\u{4e2a}\u{73a9}\u{5bb6}')
        end
    end)
    v471:Button('\u{7529}\u{98de}\u{6240}\u{6709}', function()
        local v540 = game:GetService('Players')
        local v541 = v540.LocalPlayer
        local v542 = next
        local v543, v544 = v540:GetPlayers()

        while true do
            local v545

            v544, v545 = v542(v543, v544)

            if v544 == nil then
                break
            end
            if v545 ~= v541 then
                vu538(v545)
            end
        end
    end)

    local vu546 = false

    v471:Toggle('\u{5faa}\u{73af}\u{7529}\u{98de}', 'autofling', false, function(p547)
        vu546 = p547

        spawn(function()
            while vu546 do
                if vu473 == nil then
                    warn('\u{8bf7}\u{5148}\u{9009}\u{62e9}\u{4e00}\u{4e2a}\u{73a9}\u{5bb6}')

                    break
                end

                local v548 = game.Players:FindFirstChild(vu473)

                if not v548 then
                    warn('\u{672a}\u{627e}\u{5230}\u{76ee}\u{6807}\u{73a9}\u{5bb6}\u{ff1a}' .. vu473)

                    break
                end

                vu538(v548)
                wait(0.05)
            end
        end)
    end)

    local v549 = v4:Tab('\u{5438}\u{4eba}\u{529f}\u{80fd}', '17015137366'):section('\u{5438}\u{4eba}', true)
    local v550, v551, v552 = pairs(game.Players:GetPlayers())
    local vu553 = {
        'All',
        '\u{53ea}\u{5438}\u{654c}\u{4eba}',
        '\u{53ea}\u{5438}\u{961f}\u{53cb}',
    }
    local vu554 = 'All'
    local vu555 = false

    while true do
        local v556, v557 = v550(v551, v552)

        if v556 == nil then
            break
        end

        v552 = v556

        if v557 ~= game.Players.LocalPlayer then
            table.insert(vu553, v557.Name)
        end
    end

    local vu558 = 1
    local vu559 = true
    local vu560 = 'Continuous'

    v549:Label('\u{7b2c}\u{4e00}\u{4e2a}All\u{662f}\u{5438}\u{6240}\u{6709}\u{4eba}')
    v549:Label('\u{5176}\u{4ed6}\u{9009}\u{9879}\u{662f}\u{9009}\u{62e9}\u{76ee}\u{6807}\u{5355}\u{72ec}\u{5438}')
    v549:Label("'\u{53ea}\u{5438}\u{654c}\u{4eba}'\u{548c}'\u{53ea}\u{5438}\u{961f}\u{53cb}'\u{662f}\u{7279}\u{6b8a}\u{9009}\u{9879}")

    local vu562 = v549:Dropdown('\u{9009}\u{62e9}\u{76ee}\u{6807}', 'Dropdown', vu553, function(p561)
        vu554 = p561
    end)

    v549:Toggle('\u{5f00}\u{542f}\u{5438}\u{4eba}\u{529f}\u{80fd}', 'Tool', false, function(p563)
        vu555 = p563
    end)
    v549:Slider('\u{5438}\u{4eba}\u{901f}\u{5ea6}', 'Speed', 1, 1000000000, 1, function(p564)
        vu558 = p564
    end)
    v549:Toggle('\u{542f}\u{7528}\u{5438}\u{4eba}\u{6548}\u{679c}', 'Effect', true, function(p565)
        vu559 = p565
    end)
    v549:Label('\u{987a}\u{5e8f}:\u{6301}\u{7eed}\u{5438}-\u{5438}\u{4e00}\u{6b21}')
    v549:Dropdown('\u{5438}\u{4eba}\u{6a21}\u{5f0f}', 'Mode', {
        'Continuous',
        'Instant',
    }, function(p566)
        vu560 = p566
    end)

    local function vu568(p567)
        return not (game.Players.LocalPlayer.Team and p567.Team) and true or game.Players.LocalPlayer.Team ~= p567.Team
    end
    local function vu570(p569)
        if game.Players.LocalPlayer.Team and p569.Team then
            return game.Players.LocalPlayer.Team == p569.Team
        else
            return false
        end
    end
    local function vu583()
        local v571, v572, v573 = pairs(game.Players:GetPlayers())

        while true do
            local v574

            v573, v574 = v571(v572, v573)

            if v573 == nil then
                break
            end
            if vu555 then
                local v575

                if vu554 ~= 'All' then
                    if vu554 ~= '\u{53ea}\u{5438}\u{654c}\u{4eba}' then
                        if vu554 ~= '\u{53ea}\u{5438}\u{961f}\u{53cb}' then
                            v575 = v574.Name == vu554
                        else
                            v575 = vu570(v574)
                        end
                    else
                        v575 = vu568(v574)
                    end
                else
                    v575 = true
                end
                if v574 ~= game.Players.LocalPlayer and v575 then
                    local v576 = v574.Character

                    if v576 and v576:FindFirstChild('HumanoidRootPart') then
                        v574.Backpack:ClearAllChildren()

                        local v577, v578, v579 = pairs(v576:GetChildren())

                        while true do
                            local v580

                            v579, v580 = v577(v578, v579)

                            if v579 == nil then
                                break
                            end
                            if v580:IsA('Tool') then
                                v580:Destroy()
                            end
                        end

                        local v581 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * 5

                        if vu560 ~= 'Continuous' then
                            if vu560 == 'Instant' then
                                v576.HumanoidRootPart.CFrame = CFrame.new(v581)
                            end
                        else
                            v576.HumanoidRootPart.CFrame = CFrame.new(v581)
                        end
                        if vu559 then
                            local v582 = Instance.new('Part')

                            v582.Size = Vector3.new(1, 1, 1)
                            v582.Position = v576.HumanoidRootPart.Position
                            v582.Anchored = true
                            v582.CanCollide = false
                            v582.Transparency = 0.5
                            v582.BrickColor = BrickColor.new('Bright red')
                            v582.Parent = workspace

                            game:GetService('Debris'):AddItem(v582, 1)
                        end
                    end
                end
            end
        end
    end

    game:GetService('RunService').RenderStepped:Connect(function()
        vu583()
    end)
    game.Players.PlayerAdded:Connect(function(p584)
        table.insert(vu553, p584.Name)
        vu562:Refresh(vu553)
    end)

    local v585 = v4:Tab('\u{98de}\u{884c}\u{529f}\u{80fd}', '16060333448'):section('\u{98de}\u{884c}\u{548c}\u{98de}\u{8f66}\u{7684}\u{7ed3}\u{5408}', true)

    game:GetService('CoreGui')

    local v586 = game:GetService('Players')
    local vu587 = game:GetService('RunService')
    local vu588 = v586.LocalPlayer
    local vu589 = 50
    local vu590 = false
    local vu591 = nil
    local vu592 = nil
    local vu593 = nil

    local function vu597(_)
        local v594 = tick()
        local v595 = 1
        local v596 = 10

        while tick() - v594 < v595 do
            vu591.Velocity = Vector3.new(0, v596, 0)

            vu587.RenderStepped:Wait()
        end
    end
    local function vu605()
        if not vu590 then
            vu590 = true

            local vu598 = vu588.Character or vu588.CharacterAdded:Wait()

            vu598.Humanoid.PlatformStand = true

            if vu591 then
                vu591:Destroy()
            end
            if vu592 then
                vu592:Destroy()
            end

            vu591 = Instance.new('BodyVelocity')
            vu591.MaxForce = Vector3.new(100000, 100000, 100000)
            vu591.Velocity = Vector3.new(0, 0, 0)
            vu591.Parent = vu598.HumanoidRootPart
            vu592 = Instance.new('BodyGyro')
            vu592.MaxTorque = Vector3.new(100000, 100000, 100000)
            vu592.CFrame = vu598.HumanoidRootPart.CFrame
            vu592.Parent = vu598.HumanoidRootPart

            vu597(vu598)

            if vu593 then
                vu593:Disconnect()
            end

            vu593 = vu587.RenderStepped:Connect(function()
                if vu590 then
                    local v599 = vu598.Humanoid.MoveDirection * vu589
                    local v600 = workspace.CurrentCamera.CFrame.LookVector

                    if v599.Magnitude <= 0 then
                        v599 = Vector3.new(0, 0, 0)
                    elseif v600.Y <= 0.2 then
                        if v600.Y < -0.2 then
                            v599 = v599 + Vector3.new(0, v600.Y * vu589, 0)
                        end
                    else
                        v599 = v599 + Vector3.new(0, v600.Y * vu589, 0)
                    end

                    vu591.Velocity = v599

                    local v601 = v599.Magnitude / vu589
                    local v602 = workspace.CurrentCamera.CFrame:VectorToObjectSpace(v599).Z >= 0 and 1 or -1
                    local v603 = CFrame.Angles(math.rad(30) * v601 * v602, 0, 0)
                    local v604 = CFrame.new(vu598.HumanoidRootPart.Position, vu598.HumanoidRootPart.Position + v600) * v603

                    vu592.CFrame = vu592.CFrame:Lerp(v604, 0.2)
                end
            end)
        end
    end
    local function vu606()
        if vu590 then
            vu590 = false
            (vu588.Character or vu588.CharacterAdded:Wait()).Humanoid.PlatformStand = false

            if vu591 then
                vu591:Destroy()
            end
            if vu592 then
                vu592:Destroy()
            end
            if vu593 then
                vu593:Disconnect()
            end
        end
    end

    vu588.CharacterAdded:Connect(function(p607)
        if vu590 then
            p607.Humanoid.PlatformStand = true

            vu605()
        end
    end)
    v585:Label('\u{53ef}\u{4ee5}\u{98de}\u{884c}\u{4e5f}\u{53ef}\u{4ee5}\u{98de}\u{8f66}')
    v585:Textbox('\u{98de}\u{884c}\u{901f}\u{5ea6}', 'flySpeed', 'king\u{8f93}\u{5165}', function(p608)
        vu589 = tonumber(p608) or vu589
    end)
    v585:Toggle('\u{98de}\u{884c}', 'Flying', false, function(p609)
        if p609 then
            vu605()
        else
            vu606()
        end
    end)

    local v610 = v4:Tab('\u{8303}\u{56f4}\u{529f}\u{80fd}', '16060333448'):section('\u{8303}\u{56f4}', true)

    v610:Label('\u{81ea}\u{52a8}\u{8bc6}\u{522b}\u{4efb}\u{4f55}\u{90e8}\u{4f4d}\u{786e}\u{4fdd}\u{53ef}\u{4ee5}\u{5728}\u{5927}\u{90e8}\u{5206}\u{670d}\u{52a1}\u{5668}\u{4f7f}\u{7528}')

    getgenv().HitboxSize = 15
    getgenv().HitboxTransparency = 0.9
    getgenv().HitboxStatus = false
    getgenv().TeamCheck = false
    getgenv().EnemyColor = BrickColor.new('Really red')
    getgenv().AllyColor = BrickColor.new('Bright blue')

    local vu611 = {
        'Head',
        'Torso',
        'LeftArm',
        'RightArm',
        'LeftLeg',
        'RightLeg',
    }

    local function vu627()
        local v612 = next
        local v613, v614 = game:GetService('Players'):GetPlayers()

        while true do
            local v615

            v614, v615 = v612(v613, v614)

            if v614 == nil then
                break
            end
            if v615.Name ~= game:GetService('Players').LocalPlayer.Name then
                if HitboxStatus then
                    local v616 = (not TeamCheck and true or game:GetService('Players').LocalPlayer.Team ~= v615.Team) and EnemyColor or AllyColor
                    local v617, v618, v619 = ipairs(vu611)

                    while true do
                        local v620

                        v619, v620 = v617(v618, v619)

                        if v619 == nil then
                            break
                        end

                        local v621 = v615.Character

                        if v621 then
                            v621 = v615.Character:FindFirstChild(v620)
                        end
                        if v621 then
                            v621.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
                            v621.Transparency = HitboxTransparency
                            v621.BrickColor = v616
                            v621.Material = 'Neon'
                            v621.CanCollide = false
                        end
                    end
                else
                    local v622, v623, v624 = ipairs(vu611)

                    while true do
                        local v625

                        v624, v625 = v622(v623, v624)

                        if v624 == nil then
                            break
                        end

                        local v626 = v615.Character

                        if v626 then
                            v626 = v615.Character:FindFirstChild(v625)
                        end
                        if v626 then
                            v626.Size = Vector3.new(2, 2, 1)
                            v626.Transparency = 1
                            v626.BrickColor = BrickColor.new('Medium stone grey')
                            v626.Material = 'Plastic'
                            v626.CanCollide = false
                        end
                    end
                end
            end
        end
    end

    v610:Toggle('\u{9ad8}\u{7ea7}\u{8303}\u{56f4}\u{6a21}\u{578b}', 'HitboxStatus', false, function(p628)
        getgenv().HitboxStatus = p628

        while HitboxStatus do
            vu627()
            wait(0.1)
        end

        vu627()
    end)
    v610:Textbox('\u{6a21}\u{578b}\u{8303}\u{56f4}\u{5927}\u{5c0f}', 'HitboxSize', 'king\u{8f93}\u{5165}', function(p629)
        getgenv().HitboxSize = tonumber(p629)

        if HitboxStatus then
            vu627()
        end
    end)
    v610:Toggle('\u{533a}\u{5206}\u{961f}\u{4f0d}\u{5f00}\u{542f}', 'TeamCheck', false, function(p630)
        getgenv().TeamCheck = p630

        if p630 then
            getgenv().EnemyColor = BrickColor.new('Really red')
            getgenv().AllyColor = BrickColor.new('Bright blue')
        else
            getgenv().EnemyColor = BrickColor.new('Really red')
            getgenv().AllyColor = BrickColor.new('Really red')
        end
        if HitboxStatus then
            vu627()
        end
    end)
    v610:Textbox('\u{6a21}\u{578b}\u{8303}\u{56f4}\u{900f}\u{660e}\u{5ea6}\u{ff08}\u{8c03}0\u{66f4}\u{597d}\u{533a}\u{5206}\u{961f}\u{4f0d}\u{ff09}', 'HitboxTransparency', 'king\u{8f93}\u{5165}', function(p631)
        getgenv().HitboxTransparency = tonumber(p631)

        if HitboxStatus then
            vu627()
        end
    end)

    local v632 = v4:Tab('\u{52a0}\u{901f}\u{529f}\u{80fd}', '16060333448')
    local v633 = v632:section('\u{81ea}\u{5236}', true)
    local vu634 = {}

    vu634.__index = vu634

    function vu634.new()
        local v635 = setmetatable({}, vu634)

        v635.TPSpeed = 3
        v635.TPWalk = false
        v635.MaxSpeed = 10
        v635.SmoothSpeed = false
        v635.SpeedMode = 'Fixed'
        v635.PulseInterval = 1
        v635.RandomRange = {1, 5}
        v635.WaveAmplitude = 2
        v635.SpiralRadius = 5
        v635.FlashFrequency = 2
        v635.Config = {}
        v635.ParticleEffects = {}
        v635.TrailEffects = {}

        return v635
    end
    function vu634.SetSpeed(p636, p637)
        local v638 = tonumber(p637)

        if v638 and 0 < v638 then
            p636.TPSpeed = math.min(v638, p636.MaxSpeed)
        else
            warn('\u{8bf7}\u{8f93}\u{5165}\u{6709}\u{6548}\u{7684}\u{901f}\u{5ea6}\u{503c}')
        end
    end
    function vu634.ToggleWalk(p639, p640)
        p639.TPWalk = p640

        if p640 then
            p639:StartWalk()
        else
            p639:StopWalk()
        end
    end
    function vu634.StartWalk(p641)
        local v642 = game:GetService('RunService').Heartbeat
        local v643 = game:GetService('Players').LocalPlayer.Character
        local v644

        if v643 then
            v644 = v643:FindFirstChildWhichIsA('Humanoid')
        else
            v644 = v643
        end
        if v643 and v644 then
            p641:CreateParticleEffects()
            p641:CreateTrailEffects()

            while p641.TPWalk and (v642:Wait() and (v643 and (v644 and v644.Parent))) do
                if v644.MoveDirection.Magnitude > 0 then
                    local v645 = p641:GetCurrentSpeed()
                    local v646 = p641:GetMovementOffset()

                    v643:TranslateBy((v644.MoveDirection + v646) * v645)
                end
            end
        else
            warn('\u{89d2}\u{8272}\u{6216}Humanoid\u{672a}\u{627e}\u{5230}')
        end
    end
    function vu634.StopWalk(p647)
        warn('\u{5b9a}\u{5236}\u{901f}\u{5ea6}\u{5df2}\u{5173}\u{95ed}')
        p647:ClearParticleEffects()
        p647:ClearTrailEffects()
    end
    function vu634.GetCurrentSpeed(p648)
        if p648.SpeedMode ~= 'Fixed' then
            if p648.SpeedMode ~= 'Random' then
                if p648.SpeedMode ~= 'Pulse' then
                    if p648.SpeedMode ~= 'Wave' then
                        if p648.SpeedMode ~= 'Spiral' then
                            if p648.SpeedMode ~= 'Flash' then
                                return p648.TPSpeed
                            else
                                return p648.TPSpeed * (1 + math.sin(tick() * p648.FlashFrequency))
                            end
                        else
                            return p648.TPSpeed
                        end
                    else
                        return p648.TPSpeed * (1 + math.sin(tick() * p648.PulseInterval) * p648.WaveAmplitude)
                    end
                else
                    return p648.TPSpeed * math.sin(tick() * p648.PulseInterval)
                end
            else
                return math.random(p648.RandomRange[1], p648.RandomRange[2])
            end
        else
            return p648.TPSpeed
        end
    end
    function vu634.GetMovementOffset(p649)
        if p649.SpeedMode ~= 'Wave' then
            if p649.SpeedMode ~= 'Spiral' then
                if p649.SpeedMode ~= 'Flash' then
                    return Vector3.new(0, 0, 0)
                else
                    return Vector3.new(0, 0, 0)
                end
            else
                local v650 = tick() * p649.PulseInterval

                return Vector3.new(math.cos(v650) * p649.SpiralRadius, 0, math.sin(v650) * p649.SpiralRadius)
            end
        else
            return Vector3.new(0, math.sin(tick() * p649.PulseInterval) * p649.WaveAmplitude, 0)
        end
    end
    function vu634.CreateParticleEffects(p651)
        local v652 = game:GetService('Players').LocalPlayer.Character

        if v652 then
            p651:ClearParticleEffects()

            if p651.SpeedMode ~= 'Fixed' then
                if p651.SpeedMode ~= 'Random' then
                    if p651.SpeedMode ~= 'Pulse' then
                        if p651.SpeedMode ~= 'Wave' then
                            if p651.SpeedMode ~= 'Spiral' then
                                if p651.SpeedMode == 'Flash' then
                                    p651.ParticleEffects = p651:CreateFlashParticles(v652)
                                end
                            else
                                p651.ParticleEffects = p651:CreateSpiralParticles(v652)
                            end
                        else
                            p651.ParticleEffects = p651:CreateWaveParticles(v652)
                        end
                    else
                        p651.ParticleEffects = p651:CreatePulseParticles(v652)
                    end
                else
                    p651.ParticleEffects = p651:CreateRandomParticles(v652)
                end
            else
                p651.ParticleEffects = p651:CreateFixedParticles(v652)
            end
        end
    end
    function vu634.ClearParticleEffects(p653)
        local v654, v655, v656 = pairs(p653.ParticleEffects)

        while true do
            local v657

            v656, v657 = v654(v655, v656)

            if v656 == nil then
                break
            end

            v657:Destroy()
        end

        p653.ParticleEffects = {}
    end
    function vu634.CreateTrailEffects(p658)
        local v659 = game:GetService('Players').LocalPlayer.Character

        if v659 then
            p658:ClearTrailEffects()

            if p658.SpeedMode ~= 'Fixed' then
                if p658.SpeedMode ~= 'Random' then
                    if p658.SpeedMode ~= 'Pulse' then
                        if p658.SpeedMode ~= 'Wave' then
                            if p658.SpeedMode ~= 'Spiral' then
                                if p658.SpeedMode == 'Flash' then
                                    p658.TrailEffects = p658:CreateFlashTrails(v659)
                                end
                            else
                                p658.TrailEffects = p658:CreateSpiralTrails(v659)
                            end
                        else
                            p658.TrailEffects = p658:CreateWaveTrails(v659)
                        end
                    else
                        p658.TrailEffects = p658:CreatePulseTrails(v659)
                    end
                else
                    p658.TrailEffects = p658:CreateRandomTrails(v659)
                end
            else
                p658.TrailEffects = p658:CreateFixedTrails(v659)
            end
        end
    end
    function vu634.ClearTrailEffects(p660)
        local v661, v662, v663 = pairs(p660.TrailEffects)

        while true do
            local v664

            v663, v664 = v661(v662, v663)

            if v663 == nil then
                break
            end

            v664:Destroy()
        end

        p660.TrailEffects = {}
    end
    function vu634.CreateFixedParticles(_, p665)
        local v666 = {}
        local v667 = Instance.new('Part')

        v667.Size = Vector3.new(1, 1, 1)
        v667.Transparency = 1
        v667.Anchored = true
        v667.CanCollide = false
        v667.Parent = p665

        local v668 = Instance.new('ParticleEmitter', v667)

        v668.Color = ColorSequence.new(Color3.new(0, 1, 0))
        v668.Size = NumberSequence.new(0.5)
        v668.Lifetime = NumberRange.new(1)
        v668.Rate = 50
        v668.Speed = NumberRange.new(5)
        v668.VelocitySpread = 360
        v668.LightEmission = 1
        v668.Texture = 'rbxassetid://242664342'

        table.insert(v666, v667)

        return v666
    end
    function vu634.CreateFixedTrails(_, p669)
        local v670 = {}
        local v671 = Instance.new('Trail', p669.HumanoidRootPart)

        v671.Color = ColorSequence.new(Color3.new(0, 1, 0))
        v671.Lifetime = 0.5
        v671.Transparency = NumberSequence.new(0.5)
        v671.WidthScale = NumberSequence.new(1)
        v671.LightEmission = 1

        table.insert(v670, v671)

        return v670
    end
    function vu634.CreateRandomParticles(_, p672)
        local v673 = {}
        local v674 = Instance.new('Part')

        v674.Size = Vector3.new(1, 1, 1)
        v674.Transparency = 1
        v674.Anchored = true
        v674.CanCollide = false
        v674.Parent = p672

        local v675 = Instance.new('ParticleEmitter', v674)

        v675.Color = ColorSequence.new(Color3.new(1, 0, 0))
        v675.Size = NumberSequence.new(0.5)
        v675.Lifetime = NumberRange.new(1)
        v675.Rate = 50
        v675.Speed = NumberRange.new(5, 10)
        v675.VelocitySpread = 360
        v675.LightEmission = 1
        v675.Texture = 'rbxassetid://242664342'

        table.insert(v673, v674)

        return v673
    end
    function vu634.CreateRandomTrails(_, p676)
        local v677 = {}
        local v678 = Instance.new('Trail', p676.HumanoidRootPart)

        v678.Color = ColorSequence.new(Color3.new(1, 0, 0))
        v678.Lifetime = 0.5
        v678.Transparency = NumberSequence.new(0.5)
        v678.WidthScale = NumberSequence.new(1)
        v678.LightEmission = 1

        table.insert(v677, v678)

        return v677
    end
    function vu634.CreatePulseParticles(_, p679)
        local v680 = {}
        local v681 = Instance.new('Part')

        v681.Size = Vector3.new(1, 1, 1)
        v681.Transparency = 1
        v681.Anchored = true
        v681.CanCollide = false
        v681.Parent = p679

        local v682 = Instance.new('ParticleEmitter', v681)

        v682.Color = ColorSequence.new(Color3.new(0, 0, 1))
        v682.Size = NumberSequence.new(0.5)
        v682.Lifetime = NumberRange.new(1)
        v682.Rate = 50
        v682.Speed = NumberRange.new(5)
        v682.VelocitySpread = 360
        v682.LightEmission = 1
        v682.Texture = 'rbxassetid://242664342'
        v682.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0),
            NumberSequenceKeypoint.new(1, 1),
        })

        table.insert(v680, v681)

        return v680
    end
    function vu634.CreatePulseTrails(_, p683)
        local v684 = {}
        local v685 = Instance.new('Trail', p683.HumanoidRootPart)

        v685.Color = ColorSequence.new(Color3.new(0, 0, 1))
        v685.Lifetime = 0.5
        v685.Transparency = NumberSequence.new(0.5)
        v685.WidthScale = NumberSequence.new(1)
        v685.LightEmission = 1

        table.insert(v684, v685)

        return v684
    end
    function vu634.CreateWaveParticles(_, p686)
        local v687 = {}
        local v688 = Instance.new('Part')

        v688.Size = Vector3.new(1, 1, 1)
        v688.Transparency = 1
        v688.Anchored = true
        v688.CanCollide = false
        v688.Parent = p686

        local v689 = Instance.new('ParticleEmitter', v688)

        v689.Color = ColorSequence.new(Color3.new(1, 1, 0))
        v689.Size = NumberSequence.new(0.5)
        v689.Lifetime = NumberRange.new(1)
        v689.Rate = 50
        v689.Speed = NumberRange.new(5)
        v689.VelocitySpread = 360
        v689.LightEmission = 1
        v689.Texture = 'rbxassetid://242664342'
        v689.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0),
            NumberSequenceKeypoint.new(1, 1),
        })

        table.insert(v687, v688)

        return v687
    end
    function vu634.CreateWaveTrails(_, p690)
        local v691 = {}
        local v692 = Instance.new('Trail', p690.HumanoidRootPart)

        v692.Color = ColorSequence.new(Color3.new(1, 1, 0))
        v692.Lifetime = 0.5
        v692.Transparency = NumberSequence.new(0.5)
        v692.WidthScale = NumberSequence.new(1)
        v692.LightEmission = 1

        table.insert(v691, v692)

        return v691
    end
    function vu634.CreateSpiralParticles(_, p693)
        local v694 = {}
        local v695 = Instance.new('Part')

        v695.Size = Vector3.new(1, 1, 1)
        v695.Transparency = 1
        v695.Anchored = true
        v695.CanCollide = false
        v695.Parent = p693

        local v696 = Instance.new('ParticleEmitter', v695)

        v696.Color = ColorSequence.new(Color3.new(1, 0, 1))
        v696.Size = NumberSequence.new(0.5)
        v696.Lifetime = NumberRange.new(1)
        v696.Rate = 50
        v696.Speed = NumberRange.new(5)
        v696.VelocitySpread = 360
        v696.LightEmission = 1
        v696.Texture = 'rbxassetid://242664342'
        v696.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0),
            NumberSequenceKeypoint.new(1, 1),
        })

        table.insert(v694, v695)

        return v694
    end
    function vu634.CreateSpiralTrails(_, p697)
        local v698 = {}
        local v699 = Instance.new('Trail', p697.HumanoidRootPart)

        v699.Color = ColorSequence.new(Color3.new(1, 0, 1))
        v699.Lifetime = 0.5
        v699.Transparency = NumberSequence.new(0.5)
        v699.WidthScale = NumberSequence.new(1)
        v699.LightEmission = 1

        table.insert(v698, v699)

        return v698
    end
    function vu634.CreateFlashParticles(_, p700)
        local v701 = {}
        local v702 = Instance.new('Part')

        v702.Size = Vector3.new(1, 1, 1)
        v702.Transparency = 1
        v702.Anchored = true
        v702.CanCollide = false
        v702.Parent = p700

        local v703 = Instance.new('ParticleEmitter', v702)

        v703.Color = ColorSequence.new(Color3.new(1, 1, 1))
        v703.Size = NumberSequence.new(0.5)
        v703.Lifetime = NumberRange.new(1)
        v703.Rate = 50
        v703.Speed = NumberRange.new(5)
        v703.VelocitySpread = 360
        v703.LightEmission = 1
        v703.Texture = 'rbxassetid://242664342'
        v703.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0),
            NumberSequenceKeypoint.new(1, 1),
        })

        table.insert(v701, v702)

        return v701
    end
    function vu634.CreateFlashTrails(_, p704)
        local v705 = {}
        local v706 = Instance.new('Trail', p704.HumanoidRootPart)

        v706.Color = ColorSequence.new(Color3.new(1, 1, 1))
        v706.Lifetime = 0.5
        v706.Transparency = NumberSequence.new(0.5)
        v706.WidthScale = NumberSequence.new(1)
        v706.LightEmission = 1

        table.insert(v705, v706)

        return v705
    end
    function vu634.SaveConfig(p707)
        p707.Config = {
            TPSpeed = p707.TPSpeed,
            MaxSpeed = p707.MaxSpeed,
            SpeedMode = p707.SpeedMode,
            PulseInterval = p707.PulseInterval,
            RandomRange = p707.RandomRange,
            WaveAmplitude = p707.WaveAmplitude,
            SpiralRadius = p707.SpiralRadius,
            FlashFrequency = p707.FlashFrequency,
        }

        warn('\u{914d}\u{7f6e}\u{5df2}\u{4fdd}\u{5b58}')
    end
    function vu634.LoadConfig(p708)
        if next(p708.Config) then
            p708.TPSpeed = p708.Config.TPSpeed
            p708.MaxSpeed = p708.Config.MaxSpeed
            p708.SpeedMode = p708.Config.SpeedMode
            p708.PulseInterval = p708.Config.PulseInterval
            p708.RandomRange = p708.Config.RandomRange
            p708.WaveAmplitude = p708.Config.WaveAmplitude
            p708.SpiralRadius = p708.Config.SpiralRadius
            p708.FlashFrequency = p708.Config.FlashFrequency

            warn('\u{914d}\u{7f6e}\u{5df2}\u{52a0}\u{8f7d}')
        else
            warn('\u{6ca1}\u{6709}\u{627e}\u{5230}\u{4fdd}\u{5b58}\u{7684}\u{914d}\u{7f6e}')
        end
    end

    local vu709 = vu634.new()

    v633:Label('\u{63d0}\u{793a}\u{ff1a}\u{4fdd}\u{5b58}\u{914d}\u{7f6e}\u{540e}\u{ff0c}\u{4e0b}\u{6b21}\u{53ef}\u{76f4}\u{63a5}\u{52a0}\u{8f7d}')
    v633:Button('\u{4fdd}\u{5b58}\u{914d}\u{7f6e}', function()
        vu709:SaveConfig()
    end)
    v633:Button('\u{52a0}\u{8f7d}\u{914d}\u{7f6e}', function()
        vu709:LoadConfig()
    end)
    v633:Textbox('\u{5b9a}\u{5236}\u{901f}\u{5ea6}', 'TPSpeed', 'King\u{8f93}\u{5165}', function(p710)
        vu709:SetSpeed(p710)
    end)
    v633:Toggle('\u{5f00}\u{542f}\u{5b9a}\u{5236}\u{901f}\u{5ea6}', 'TPWalk', false, function(p711)
        vu709:ToggleWalk(p711)
    end)
    v633:Slider('\u{901f}\u{5ea6}\u{9650}\u{5236}', 'speedController.MaxSpeed', 1, 25, 1, false, function(p712)
        vu709.MaxSpeed = p712

        vu709:SetSpeed(vu709.TPSpeed)
    end)
    v633:Label('\u{63d0}\u{793a}\u{ff1a}\u{901f}\u{5ea6}\u{6a21}\u{5f0f}\u{987a}\u{5e8f}:\u{56fa}\u{5b9a}-\u{968f}\u{673a}-\u{8109}\u{51b2}-\u{6ce2}\u{6d6a}-\u{87ba}\u{65cb}-\u{95ea}\u{70c1}')
    v633:Dropdown('\u{901f}\u{5ea6}\u{6a21}\u{5f0f}', '\u{901f}\u{5ea6}\u{6a21}\u{5f0f}', {
        'Fixed',
        'Random',
        'Pulse',
        'Wave',
        'Spiral',
        'Flash',
    }, function(p713)
        vu709.SpeedMode = p713
    end)
    v633:Textbox('\u{968f}\u{673a}\u{901f}\u{5ea6}\u{6700}\u{5c0f}\u{503c}', 'RandomMin', '1', function(p714)
        vu709.RandomRange[1] = tonumber(p714) or 1
    end)
    v633:Textbox('\u{968f}\u{673a}\u{901f}\u{5ea6}\u{6700}\u{5927}\u{503c}', 'RandomMax', '5', function(p715)
        vu709.RandomRange[2] = tonumber(p715) or 5
    end)
    v633:Label('\u{8109}\u{51b2}\u{6a21}\u{5f0f}\u{95f4}\u{9694}\u{8bbe}\u{7f6e}')
    v633:Textbox('\u{8109}\u{51b2}\u{95f4}\u{9694}', 'PulseInterval', '1', function(p716)
        vu709.PulseInterval = tonumber(p716) or 1
    end)
    v633:Label('\u{6ce2}\u{6d6a}\u{6a21}\u{5f0f}\u{632f}\u{5e45}\u{8bbe}\u{7f6e}')
    v633:Textbox('\u{6ce2}\u{6d6a}\u{632f}\u{5e45}', 'WaveAmplitude', '2', function(p717)
        vu709.WaveAmplitude = tonumber(p717) or 2
    end)
    v633:Label('\u{87ba}\u{65cb}\u{6a21}\u{5f0f}\u{534a}\u{5f84}\u{8bbe}\u{7f6e}')
    v633:Textbox('\u{87ba}\u{65cb}\u{534a}\u{5f84}', 'SpiralRadius', '5', function(p718)
        vu709.SpiralRadius = tonumber(p718) or 5
    end)
    v633:Label('\u{95ea}\u{70c1}\u{6a21}\u{5f0f}\u{9891}\u{7387}\u{8bbe}\u{7f6e}')
    v633:Textbox('\u{95ea}\u{70c1}\u{9891}\u{7387}', 'FlashFrequency', '2', function(p719)
        vu709.FlashFrequency = tonumber(p719) or 2
    end)
    game:GetService('UserInputService').InputBegan:Connect(function(p720, p721)
        if not p721 then
            if p720.KeyCode == Enum.KeyCode.F then
                vu709:ToggleWalk(not vu709.TPWalk)
            end
        end
    end)

    local v722 = v632:section('\u{66f4}\u{65b0}\u{65f6}\u{95f4}2024/12/01', true)
    local vu723 = false
    local _ = game:GetService('RunService').Heartbeat
    local vu724 = 1
    local vu725 = nil
    local vu726 = game:GetService('RunService')
    local vu727 = game:GetService('Lighting')

    v722:Button('\u{70b9}\u{51fb}\u{5373}\u{53ef}\u{65f6}\u{95f4}\u{5faa}\u{73af}\u{4e2d}\u{5348}', function()
        if vu725 then
            vu725:Disconnect()
        end

        local function v728()
            vu727.Brightness = 2
            vu727.ClockTime = 14
            vu727.FogEnd = 100000
            vu727.GlobalShadows = false
            vu727.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
        end

        vu725 = vu726.RenderStepped:Connect(v728)
    end)
    v722:Label('\u{8f93}\u{5165}\u{7684}\u{6570}\u{5b57}\u{8d8a}\u{5927}\u{6548}\u{679c}\u{8d8a}\u{660e}\u{663e}')
    v722:Textbox('\u{4eba}\u{7269}\u{6f02}\u{79fb}\u{7248}\u{52a0}\u{901f}', '\u{72ec}\u{5bb6}', '\u{8f93}\u{5165}\u{6570}\u{5b57}', function(p729)
        if tonumber(p729) then
            vu724 = tonumber(p729)
            vu723 = true

            local v730 = game:GetService('Players').LocalPlayer
            local vu731 = v730.Character or v730.CharacterAdded:Wait()
            local vu732

            if vu731 then
                vu732 = vu731:FindFirstChildWhichIsA('Humanoid')
            else
                vu732 = vu731
            end
            if vu732 then
                vu726:UnbindFromRenderStep('TPWalk')
                vu726:BindToRenderStep('TPWalk', Enum.RenderPriority.Character.Value, function(p733)
                    if vu723 and (vu731 and (vu732 and (vu732.Parent and vu732.MoveDirection.Magnitude > 0))) then
                        vu731:TranslateBy(vu732.MoveDirection * vu724 * p733 * 10)
                    end
                end)
            end
        end
    end)
    v722:Button('\u{70b9}\u{51fb}\u{5373}\u{53ef}\u{6f02}\u{79fb}\u{52a0}\u{901f}\u{5173}\u{95ed}', function()
        vu723 = false

        vu726:UnbindFromRenderStep('TPWalk')
    end)
    v722:Label('2024\u{5e74}\u{56fd}\u{5e86}\u{66f4}\u{65b0}\u{7684}')
    game:GetService('StarterGui')
    game:GetService('Players')

    getgenv().Walkspeed = game:GetService('Players').LocalPlayer.Character.Humanoid.WalkSpeed

    v722:Textbox('\u{666e}\u{901a}\u{901f}\u{5ea6}', 'Walkspeed', 'king\u{8f93}\u{5165}', function(pu734)
        getgenv().Walkspeed = pu734

        pcall(function()
            game:GetService('Players').LocalPlayer.Character.Humanoid.WalkSpeed = pu734
        end)
    end)
    v722:Toggle('\u{5f00}\u{542f}\u{9632}\u{52a0}\u{901f}\u{91cd}\u{7f6e}', 'WalkSpeed', false, function(p735)
        getgenv().loopW = p735

        game:GetService('RunService').Heartbeat:Connect(function()
            if loopW == true then
                pcall(function()
                    game:GetService('Players').LocalPlayer.Character.Humanoid.WalkSpeed = Walkspeed
                end)
            end
        end)
    end)

    local v736 = v4:Tab('\u{8df3}\u{8dc3}\u{529f}\u{80fd}', '16060333448'):section('\u{8df3}\u{8dc3}', true)

    getgenv().Jumppower = game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower
    getgenv().JumpMode = 'Normal'

    v736:Textbox('\u{91cd}\u{529b}\u{8c03}\u{8282}', 'Gravity', '\u{8f93}\u{5165}\u{91cd}\u{529b}\u{503c}\u{ff08}\u{9ed8}\u{8ba4}196.2\u{ff09}', function(p737)
        local v738 = tonumber(p737)

        if v738 then
            game.Players.LocalPlayer.Character.Humanoid.Gravity = v738
        end
    end)
    v736:Textbox('\u{8df3}\u{8dc3}\u{51b7}\u{5374}\u{65f6}\u{95f4}', 'JumpCooldown', '\u{8f93}\u{5165}\u{51b7}\u{5374}\u{65f6}\u{95f4}\u{ff08}\u{79d2}\u{ff09}', function(p739)
        local v740 = tonumber(p739)

        if v740 then
            getgenv().JumpCooldown = v740
        end
    end)
    v736:Toggle('\u{5f00}\u{542f}\u{9632}\u{91cd}\u{7f6e}\u{8df3}\u{8dc3}', 'loopJ', false, function(p741)
        getgenv().loopJ = p741

        game:GetService('RunService').Heartbeat:Connect(function()
            if loopJ == true then
                pcall(function()
                    game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower = Jumppower
                end)
            end
        end)
    end)
    v736:Toggle('\u{65e0}\u{9650}\u{8df3}1', 'Jump', false, function(p742)
        getgenv().Jump = p742

        game.UserInputService.JumpRequest:Connect(function()
            if Jump then
                game.Players.LocalPlayer.Character.Humanoid:ChangeState('Jumping')
            end
        end)
    end)

    local vu743 = nil
    local vu744 = nil
    local vu745 = nil

    local function vu748(p746)
        local v747 = p746.Character

        if v747 then
            return v747:FindFirstChildWhichIsA('Humanoid', true)
        else
            return nil
        end
    end
    local function vu750()
        local v749 = vu748(game:GetService('Players').LocalPlayer)

        if v749 and v749:GetState() ~= Enum.HumanoidStateType.Jumping then
            v749:ChangeState(Enum.HumanoidStateType.Jumping)

            if v749.UseJumpPower then
                v749.JumpPower = 50
            else
                v749.JumpHeight = 7.5
            end

            v749.Sit = false
            v749.PlatformStand = false
        end
    end
    local function vu752(_, p751)
        if p751 == Enum.HumanoidStateType.Landed then
            task.wait(0.08)
            vu750()
        end
    end
    local function vu755()
        local vu753 = game:GetService('Players').LocalPlayer
        local vu754 = vu748(vu753)

        if vu754 then
            vu745 = vu754.StateChanged:Connect(vu752)

            if vu754.UseJumpPower then
                vu754.JumpPower = 50
            else
                vu754.JumpHeight = 7.5
            end
        end

        vu753.CharacterAdded:Connect(function()
            if vu745 then
                vu745:Disconnect()
            end

            vu754 = vu748(vu753)

            if vu754 then
                vu745 = vu754.StateChanged:Connect(vu752)
            end
        end)
    end

    v736:Label('\u{5f00}\u{542f}\u{540e}\u{53ef}\u{8eab}\u{6cd5}')
    v736:Toggle('\u{65e0}\u{9650}\u{8df3}2', 'Jump', false, function(p756)
        getgenv().Jump = p756

        if vu743 then
            vu743:Disconnect()

            vu743 = nil
        end
        if vu744 then
            vu744:Disconnect()

            vu744 = nil
        end
        if vu745 then
            vu745:Disconnect()

            vu745 = nil
        end
        if p756 then
            vu743 = game:GetService('UserInputService').JumpRequest:Connect(function()
                vu750()
            end)
            vu744 = game:GetService('RunService').Heartbeat:Connect(function()
                local v757 = vu748(game.Players.LocalPlayer)

                if v757 and v757.FloorMaterial ~= Enum.Material.Air then
                    vu750()
                end
            end)

            vu755()
            vu750()

            if game:GetService('Workspace').Gravity ~= 0 then
                game:GetService('Workspace').Gravity = 196.2
            end
        end
    end)
    v736:Label('\u{8df3}\u{8dc3}\u{6a21}\u{5f0f}\u{987a}\u{5e8f} : \u{666e}\u{901a}\u{8df3}-\u{8d85}\u{7ea7}\u{8df3}-\u{6162}\u{901f}\u{8df3}-\u{5feb}\u{901f}\u{8df3}-\u{77ac}\u{79fb}\u{8df3}-\u{53cd}\u{5411}\u{8df3}-\u{5411}\u{4e0a}\u{77ac}\u{79fb}\u{8df3}-\u{7f13}\u{6162}\u{4e0b}\u{843d}\u{8df3}')
    v736:Dropdown('\u{9009}\u{62e9}\u{8df3}\u{8dc3}\u{6a21}\u{5f0f}', 'JumpModeDropdown', {
        'Normal',
        'SuperJump',
        'SlowJump',
        'FastJump',
        'TeleportJump',
        'ReverseJump',
        'TeleportUpJump',
        'SlowFallJump',
    }, function(p758)
        getgenv().JumpMode = p758

        if p758 == 'Normal' then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
            game.Players.LocalPlayer.Character.Humanoid.Gravity = 196.2
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        elseif p758 == 'SuperJump' then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 500
            game.Players.LocalPlayer.Character.Humanoid.Gravity = 196.2
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        elseif p758 == 'SlowJump' then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
            game.Players.LocalPlayer.Character.Humanoid.Gravity = 196.2
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 8
        elseif p758 == 'FastJump' then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
            game.Players.LocalPlayer.Character.Humanoid.Gravity = 196.2
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
        elseif p758 == 'TeleportJump' then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
            game.Players.LocalPlayer.Character.Humanoid.Gravity = 196.2
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        elseif p758 == 'ReverseJump' then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
            game.Players.LocalPlayer.Character.Humanoid.Gravity = 196.2
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16

            game:GetService('RunService').Heartbeat:Connect(function()
                if game.Players.LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Jumping then
                    local v759 = game.Players.LocalPlayer.Character.HumanoidRootPart

                    v759.Velocity = Vector3.new(-v759.Velocity.X, v759.Velocity.Y, -v759.Velocity.Z)
                end
            end)
        elseif p758 == 'TeleportUpJump' then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
            game.Players.LocalPlayer.Character.Humanoid.Gravity = 196.2
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16

            game:GetService('RunService').Heartbeat:Connect(function()
                if game.Players.LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Jumping then
                    local v760 = game.Players.LocalPlayer.Character.HumanoidRootPart

                    v760.CFrame = v760.CFrame + Vector3.new(0, getgenv().TeleportDistance or 10, 0)
                end
            end)
        elseif p758 == 'SlowFallJump' then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
            game.Players.LocalPlayer.Character.Humanoid.Gravity = 50
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end
    end)
    v736:Label('\u{662f}\u{914d}\u{5408}\u{8df3}\u{8dc3}\u{6a21}\u{5f0f}\u{91cc}\u{9762}\u{7684}\u{77ac}\u{79fb}\u{8df3}\u{7528}\u{7684}')
    v736:Textbox('\u{77ac}\u{79fb}\u{8ddd}\u{79bb}\u{8c03}\u{8282}', 'TeleportDistance', '\u{8f93}\u{5165}\u{77ac}\u{79fb}\u{8ddd}\u{79bb}\u{ff08}\u{9ed8}\u{8ba4}10\u{ff09}', function(p761)
        local v762 = tonumber(p761)

        if v762 then
            getgenv().TeleportDistance = v762
        end
    end)
    v736:Toggle('\u{81ea}\u{52a8}\u{8df3}\u{8dc3}', 'AutoJump', false, function(p763)
        getgenv().AutoJump = p763

        game:GetService('RunService').Heartbeat:Connect(function()
            if AutoJump then
                pcall(function()
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState('Jumping')
                end)
            end
        end)
    end)
    v736:Toggle('\u{9632}\u{5760}\u{843d}', 'AntiFall', false, function(p764)
        getgenv().AntiFall = p764

        game:GetService('RunService').Heartbeat:Connect(function()
            if AntiFall then
                local v765 = game.Players.LocalPlayer.Character
                local v766 = v765.Humanoid
                local v767 = v765.HumanoidRootPart

                if v766:GetState() == Enum.HumanoidStateType.Freefall then
                    v767.Velocity = Vector3.new(v767.Velocity.X, 0, v767.Velocity.Z)
                end
            end
        end)
    end)
    v736:Label('\u{662f}\u{9650}\u{5236}\u{73a9}\u{5bb6}\u{4e0d}\u{8c03}\u{7684}\u{975e}\u{5e38}\u{5927}\u{7684}\u{ff0c}\u{4e00}\u{822c}\u{4e0d}\u{7528}\u{5f00}')
    v736:Textbox('\u{6700}\u{5927}\u{8df3}\u{8dc3}\u{9ad8}\u{5ea6}', 'MaxJumpHeight', '\u{8f93}\u{5165}\u{6700}\u{5927}\u{8df3}\u{8dc3}\u{9ad8}\u{5ea6}\u{ff08}\u{9ed8}\u{8ba4}50\u{ff09}', function(p768)
        local v769 = tonumber(p768)

        if v769 then
            getgenv().MaxJumpHeight = v769
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = v769
        end
    end)
    v736:Textbox('\u{8df3}\u{8dc3}\u{901f}\u{5ea6}\u{8c03}\u{8282}', 'JumpSpeed', '\u{8f93}\u{5165}\u{8df3}\u{8dc3}\u{901f}\u{5ea6}\u{ff08}\u{9ed8}\u{8ba4}16\u{ff09}', function(p770)
        local v771 = tonumber(p770)

        if v771 then
            getgenv().JumpSpeed = v771
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v771
        end
    end)
    v736:Label('\u{8df3}\u{8dc3}\u{5ef6}\u{8fdf}\u{ff1a}\u{5141}\u{8bb8}\u{73a9}\u{5bb6}\u{8bbe}\u{7f6e}\u{8df3}\u{8dc3}\u{7684}\u{5ef6}\u{8fdf}\u{65f6}\u{95f4}')
    v736:Textbox('\u{8df3}\u{8dc3}\u{5ef6}\u{8fdf}', 'JumpDelay', '\u{8f93}\u{5165}\u{8df3}\u{8dc3}\u{5ef6}\u{8fdf}\u{ff08}\u{79d2}\u{ff09}', function(p772)
        local v773 = tonumber(p772)

        if v773 then
            getgenv().JumpDelay = v773
        end
    end)
    v736:Label('\u{53ef}\u{4ee5}\u{914d}\u{5408}\u{6700}\u{5927}\u{8df3}\u{8dc3}\u{9ad8}\u{5ea6}\u{ff0c}\u{8fd9}\u{4e2a}\u{65e0}\u{8bba}\u{4ec0}\u{4e48}\u{6570}\u{5b57}\u{90fd}\u{53ef}\u{4ee5}\u{8f93}\u{5165}')
    v736:Textbox('\u{8df3}\u{8dc3}\u{9ad8}\u{5ea6}\u{8c03}\u{503c}', 'Jumppower', 'king\u{8f93}\u{5165}', function(pu774)
        getgenv().Jumppower = pu774

        pcall(function()
            game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower = pu774
        end)
    end)
    v736:Label('\u{65e0}\u{9650}\u{8df3}\u{8dc3}\u{9ad8}\u{5ea6}\u{ff1a}\u{5f00}\u{542f}\u{540e}\u{ff0c}\u{73a9}\u{5bb6}\u{7684}\u{8df3}\u{8dc3}\u{9ad8}\u{5ea6}\u{5c06}\u{4e0d}\u{53d7}\u{9650}\u{5236}\u{ff0c}\u{4e00}\u{822c}\u{4e0d}\u{7528}\u{5f00}')
    v736:Toggle('\u{65e0}\u{9650}\u{8df3}\u{8dc3}\u{9ad8}\u{5ea6}', 'InfiniteJumpHeight', false, function(p775)
        getgenv().InfiniteJumpHeight = p775

        game:GetService('RunService').Heartbeat:Connect(function()
            if InfiniteJumpHeight then
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = math.huge
            else
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = getgenv().MaxJumpHeight or 50
            end
        end)
    end)
    v736:Label('\u{81ea}\u{52a8}\u{8f6c}\u{5411}\u{8df3}\u{8dc3}\u{ff1a}\u{5f00}\u{542f}\u{540e}\u{ff0c}\u{73a9}\u{5bb6}\u{6bcf}\u{6b21}\u{8df3}\u{8dc3}\u{65f6}\u{4f1a}\u{81ea}\u{52a8}\u{8f6c}\u{5411}90\u{5ea6}')
    v736:Toggle('\u{81ea}\u{52a8}\u{8f6c}\u{5411}\u{8df3}\u{8dc3}', 'AutoTurnJump', false, function(p776)
        getgenv().AutoTurnJump = p776

        game:GetService('RunService').Heartbeat:Connect(function()
            if AutoTurnJump then
                local v777 = game.Players.LocalPlayer.Character
                local v778 = v777.HumanoidRootPart

                if v777.Humanoid:GetState() == Enum.HumanoidStateType.Jumping then
                    v778.CFrame = v778.CFrame * CFrame.Angles(0, math.rad(90), 0)
                end
            end
        end)
    end)
    v736:Label('\u{8df3}\u{8dc3}\u{97f3}\u{6548}\u{ff1a}\u{5f00}\u{542f}\u{540e}\u{ff0c}\u{73a9}\u{5bb6}\u{6bcf}\u{6b21}\u{8df3}\u{8dc3}\u{65f6}\u{4f1a}\u{64ad}\u{653e}\u{6307}\u{5b9a}\u{7684}\u{97f3}\u{6548}')
    v736:Toggle('\u{8df3}\u{8dc3}\u{97f3}\u{6548}', 'JumpSound', false, function(p779)
        getgenv().JumpSound = p779

        if JumpSound then
            local vu780 = Instance.new('Sound')

            vu780.SoundId = 'rbxassetid://123456789'
            vu780.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart

            game:GetService('UserInputService').JumpRequest:Connect(function()
                vu780:Play()
            end)
        end
    end)
    game:GetService('RunService').Heartbeat:Connect(function()
        if JumpMode == 'TeleportJump' then
            local v781 = game.Players.LocalPlayer.Character
            local v782 = v781.Humanoid
            local v783 = v781.HumanoidRootPart

            if v782:GetState() == Enum.HumanoidStateType.Jumping then
                local v784 = v783.CFrame.LookVector

                v783.CFrame = v783.CFrame + v784 * (getgenv().TeleportDistance or 10)
            end
        end
    end)
    wait(1)
end
