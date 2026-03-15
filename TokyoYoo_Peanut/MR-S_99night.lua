-- ts file was generated at discord.gg/25ms

local u1 = 'https://getkey1-production.up.railway.app/check?key='
local u2 = 'https://getkey1-production.up.railway.app/'
local u3 = 'Mango_key.txt'

local function u10(p4)
    spawn(function()
        pcall(function()
            local _LocalPlayer = game:GetService('Players').LocalPlayer
            local _HttpService = game:GetService('HttpService')
            local _MarketplaceService = game:GetService('MarketplaceService')
            local u8 = 'Unknown'

            pcall(function()
                u8 = _MarketplaceService:GetProductInfo(game.PlaceId).Name
            end)

            local v9 = ((((u1 .. p4) .. '&player=' .. _HttpService:UrlEncode(_LocalPlayer.Name)) .. '&userid=' .. _LocalPlayer.UserId) .. '&game=' .. _HttpService:UrlEncode(u8)) .. '&gameid=' .. game.PlaceId

            game:HttpGet(v9)
        end)
    end)
end
local function u14(p11)
    if not p11 or p11 == '' then
        return false
    end

    local v12, v13 = pcall(function()
        return game:HttpGet(u1 .. p11)
    end)

    if v12 then
        v12 = v13 == 'Whitelisted'
    end

    return v12
end
local function u489()
    if not pcall(function()
        local v15 = readfile(u3)

        if v15 and v15 ~= '' then
            u10(string.gsub(v15, '%s+', ''))
        end

        repeat
            task.wait()
        until game:IsLoaded()

        game:GetService('Players').LocalPlayer.PlayerGui.Interface.FishingCatchFrame.TimingBar.SuccessArea:GetPropertyChangedSignal('Size'):Connect(function()
            game:GetService('Players').LocalPlayer.PlayerGui.Interface.FishingCatchFrame.TimingBar.SuccessArea.Position = UDim2.new(0.5, 0, 0, 0)
            game:GetService('Players').LocalPlayer.PlayerGui.Interface.FishingCatchFrame.TimingBar.SuccessArea.Size = UDim2.new(1, 0, 1, 0)
        end)

        local u16 = loadstring(game:HttpGet('https://raw.githubusercontent.com/TokyoYoo/gga2/refs/heads/main/gg.lua'))()
        local v17 = loadstring(game:HttpGet('https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua'))()
        local v18 = loadstring(game:HttpGet('https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua'))()
        local _Players = game:GetService('Players')
        local _ReplicatedStorage = game:GetService('ReplicatedStorage')
        local _Workspace = game:GetService('Workspace')
        local _LocalPlayer2 = _Players.LocalPlayer
        local _Lighting = game:GetService('Lighting')
        local _RunService = game:GetService('RunService')
        local _UserInputService = game:GetService('UserInputService')

        _Lighting.ClockTime = 14
        _Lighting.GlobalShadows = false

        local v26 = u16
        local u27 = u16.CreateWindow(v26, {
            Title = 'Peanut X',
            SubTitle = '99 Nights in the Forest',
            TabWidth = 160,
            Size = UDim2.fromOffset(480, 360),
            Acrylic = true,
            Theme = 'Dark',
            MinimizeKey = Enum.KeyCode.V,
        })
        local v28 = {
            Player = u27:AddTab({
                Title = 'Player',
                Icon = 'user',
            }),
            Combat = u27:AddTab({
                Title = 'Combat',
                Icon = 'sword',
            }),
            Auto = u27:AddTab({
                Title = 'Auto Farm',
                Icon = 'repeat',
            }),
            Main = u27:AddTab({
                Title = 'Main',
                Icon = 'home',
            }),
            Bring = u27:AddTab({
                Title = 'Bring Items',
                Icon = 'package',
            }),
            Teleport = u27:AddTab({
                Title = 'Teleport',
                Icon = 'map-pin',
            }),
            ESP = u27:AddTab({
                Title = 'ESP',
                Icon = 'eye',
            }),
            Anti = u27:AddTab({
                Title = 'Anti Monster',
                Icon = 'shield',
            }),
            Visual = u27:AddTab({
                Title = 'Visual',
                Icon = 'monitor',
            }),
            Settings = u27:AddTab({
                Title = 'Settings',
                Icon = 'settings',
            }),
        }
        local _Options = u16.Options
        local u30 = false
        local u31 = false
        local u32 = 50
        local u33 = 0
        local u34 = false
        local u35 = {
            ['Old Axe'] = '3_7367831688',
            ['Good Axe'] = '112_7367831688',
            ['Strong Axe'] = '116_7367831688',
            Chainsaw = '647_8992824875',
            ['Infernal Sword'] = '2_4340578793',
            Spear = '196_8999010016',
        }
        local u36 = false
        local u37 = 'Apple'
        local u38 = 75
        local u39 = {
            'Bandage',
            'Bolt',
            'Broken Fan',
            'Broken Microwave',
            'Cake',
            'Carrot',
            'Chair',
            'Coal',
            'Coin Stack',
            'Cooked Morsel',
            'Cooked Steak',
            'Fuel Canister',
            'Iron Body',
            'Leather Armor',
            'Log',
            'MadKit',
            'Metal Chair',
            'MedKit',
            'Old Car Engine',
            'Old Flashlight',
            'Old Radio',
            'Revolver',
            'Revolver Ammo',
            'Rifle',
            'Rifle Ammo',
            'Morsel',
            'Sheet Metal',
            'Steak',
            'Tyre',
            'Washing Machine',
            'Cultist Gem',
            'Gem of the Forest Fragment',
        }
        local u40 = {
            'Bunny',
            'Wolf',
            'Alpha Wolf',
            'Bear',
            'Cultist',
            'Crossbow Cultist',
            'Alien',
            'Alien Elite',
        }
        local u41 = {}
        local u42 = {}
        local u43 = false
        local u44 = false
        local u45 = {}
        local u46 = {}
        local u47 = {}
        local u48 = {}
        local u49 = {}
        local u50 = {}
        local u51 = false
        local u52 = nil
        local u53 = false
        local u54 = false
        local u55 = false
        local u56 = false
        local u57 = false
        local u58 = false
        local u59 = false
        local u60 = false
        local u61 = false
        local u62 = false
        local u63 = Vector3.new(0, 19, 0)
        local u64 = nil
        local u65 = false
        local u66 = Vector3.new(21, 20, -5)
        local u67 = nil
        local u68 = false
        local u69 = {}
        local u70 = false
        local u71 = false
        local u72 = 1
        local u73 = false
        local u74 = nil
        local u75 = nil
        local u76 = nil
        local u77 = nil
        local u78 = nil
        local u79 = nil
        local u80 = 16
        local u81 = false
        local u82 = false
        local u83 = {
            Sky = nil,
            Bloom = nil,
            CampfireEffect = nil,
        }
        local u84 = nil
        local u85 = {
            Brightness = nil,
            Ambient = nil,
            OutdoorAmbient = nil,
            ShadowSoftness = nil,
            GlobalShadows = nil,
            Technology = nil,
        }
        local u86 = false
        local _FogStart = _Lighting.FogStart
        local _FogEnd = _Lighting.FogEnd
        local v89 = _Lighting
        local v90 = _Lighting.FindFirstChild(v89, 'VibrantEffect')
        local v91 = _Lighting
        local u92 = _Lighting.FindFirstChild(v91, 'VibrantEffect')
        local u93 = nil
        local u94 = nil
        local u95 = nil
        local u96 = 80
        local u97 = 5
        local u98 = 60
        local u99 = 4
        local u100 = false
        local u101 = nil
        local u102 = {}

        local function u109(p103)
            local v104, v105, v106 = pairs(u35)

            while true do
                local v107

                v106, v107 = v104(v105, v106)

                if v106 == nil then
                    break
                end
                if not p103 or (v106 == 'Old Axe' or (v106 == 'Good Axe' or (v106 == 'Strong Axe' or v106 == 'Chainsaw'))) then
                    local _Inventory = _LocalPlayer2:FindFirstChild('Inventory')

                    if _Inventory then
                        _Inventory = _LocalPlayer2.Inventory:FindFirstChild(v106)
                    end
                    if _Inventory then
                        return _Inventory, v107
                    end
                end
            end

            return nil, nil
        end
        local function u111(p110)
            if p110 then
                _ReplicatedStorage:WaitForChild('RemoteEvents').EquipItemHandle:FireServer('FireAllClients', p110)
            end
        end
        local function u113(p112)
            if p112 then
                _ReplicatedStorage:WaitForChild('RemoteEvents').UnequipItemHandle:FireServer('FireAllClients', p112)
            end
        end

        function wiki(p114)
            local v115, v116, v117 = ipairs(_Workspace.Items:GetChildren())
            local v118 = 0

            while true do
                local v119

                v117, v119 = v115(v116, v117)

                if v117 == nil then
                    break
                end
                if v119.Name == p114 then
                    v118 = v118 + 1
                end
            end

            return v118
        end
        function ghn()
            return math.floor(_LocalPlayer2.PlayerGui.Interface.StatBars.HungerBar.Bar.Size.X.Scale * 100)
        end
        function feed(p120)
            local v121, v122, v123 = ipairs(_Workspace.Items:GetChildren())

            while true do
                local v124

                v123, v124 = v121(v122, v123)

                if v123 == nil then
                    break
                end
                if v124.Name == p120 then
                    _ReplicatedStorage.RemoteEvents.RequestConsumeItem:InvokeServer(v124)

                    break
                end
            end
        end

        local function u128(p125, p126)
            if p125 and (p125:IsDescendantOf(workspace) and (p125:IsA('BasePart') or p125:IsA('Model'))) then
                local u127

                if p125:IsA('Model') then
                    u127 = p125.PrimaryPart or p125:FindFirstChildWhichIsA('BasePart') or (p125:FindFirstChild('Handle') or p125)
                else
                    u127 = p125
                end
                if u127 and u127:IsA('BasePart') then
                    if p125:IsA('Model') and not p125.PrimaryPart then
                        pcall(function()
                            p125.PrimaryPart = u127
                        end)
                    end

                    pcall(function()
                        _ReplicatedStorage:WaitForChild('RemoteEvents').RequestStartDraggingItem:FireServer(p125)

                        if p125:IsA('Model') then
                            p125:SetPrimaryPartCFrame(CFrame.new(p126))
                        else
                            u127.CFrame = CFrame.new(p126)
                        end

                        _ReplicatedStorage:WaitForChild('RemoteEvents').StopDraggingItem:FireServer(p125)
                    end)
                end
            else
                return
            end
        end
        local function u138(p129, p130, p131)
            local _HumanoidRootPart = _Players.LocalPlayer.Character.HumanoidRootPart
            local u133 = tick()

            spawn(function()
                while tick() - u133 < p131 do
                    local v134 = (tick() - u133) / p131
                    local v135 = v134 < 0.5 and 2 * v134 * v134 or 1 - math.pow(-2 * v134 + 2, 2) / 2
                    local v136 = p129.Position:lerp(p130.Position, v135)
                    local v137 = p130.Position - v136

                    if v137.Magnitude <= 0 then
                        _HumanoidRootPart.CFrame = CFrame.new(v136)
                    else
                        _HumanoidRootPart.CFrame = CFrame.lookAt(v136, v136 + v137.Unit)
                    end

                    wait()
                end

                _HumanoidRootPart.CFrame = p130
            end)
            wait(p131)
        end
        local function u147(p139, p140, p141)
            if p139 and p139.Parent then
                local _Position = p139.Position
                local u143 = tick()

                spawn(function()
                    while tick() - u143 < p141 and (p139 and p139.Parent) do
                        local v144 = (tick() - u143) / p141
                        local v145 = 1 - math.pow(1 - v144, 3)
                        local u146 = Vector3.new(_Position.X + (p140.X - _Position.X) * v145, _Position.Y + (p140.Y - _Position.Y) * v145, _Position.Z + (p140.Z - _Position.Z) * v145)

                        pcall(function()
                            p139.CFrame = CFrame.new(u146)
                            p139.Velocity = Vector3.new(0, 0, 0)
                            p139.AngularVelocity = Vector3.new(0, 0, 0)
                        end)
                        wait()
                    end

                    pcall(function()
                        p139.CFrame = CFrame.new(p140)
                        p139.Velocity = Vector3.new(0, 0, 0)
                        p139.AngularVelocity = Vector3.new(0, 0, 0)
                    end)
                end)
                wait(p141)
            end
        end
        local function u170(p148, p149)
            if u51 then
                return
            else
                u51 = true

                local _LocalPlayer3 = _Players.LocalPlayer

                if _LocalPlayer3.Character and _LocalPlayer3.Character:FindFirstChild('HumanoidRootPart') then
                    local _HumanoidRootPart2 = _LocalPlayer3.Character.HumanoidRootPart

                    u52 = _HumanoidRootPart2.CFrame

                    local v152, v153, v154 = ipairs(p148)

                    while true do
                        local v155

                        v154, v155 = v152(v153, v154)

                        if v154 == nil or p149 and not p149() then
                            break
                        end

                        local v156, v157, v158 = ipairs(workspace:GetDescendants())
                        local v159 = {}

                        while true do
                            local v160

                            v158, v160 = v156(v157, v158)

                            if v158 == nil then
                                break
                            end
                            if v160.Name == v155 and (v160:IsA('BasePart') or v160:IsA('Model')) then
                                local v161 = not v160:IsA('Model') or v160.PrimaryPart or (v160:FindFirstChildWhichIsA('BasePart') or v160)

                                if v161 and v161.Parent ~= _LocalPlayer3.Character then
                                    table.insert(v159, {
                                        item = v160,
                                        part = v161,
                                    })
                                end
                            end
                        end

                        local v162, v163, v164 = ipairs(v159)

                        while true do
                            local v165

                            v164, v165 = v162(v163, v164)

                            if v164 == nil or p149 and not p149() then
                                break
                            end

                            local _ = v165.item
                            local _part = v165.part

                            if _part and _part.Parent then
                                local v167 = _part.CFrame + Vector3.new(0, 5, 0)

                                u138(_HumanoidRootPart2.CFrame, v167, 1.2)
                                u147(_part, _HumanoidRootPart2.Position + Vector3.new(0, -1, 0), 0.8)

                                local u168 = true

                                spawn(function()
                                    while u168 do
                                        if p149 and not p149() then
                                            u168 = false

                                            break
                                        end
                                        if _part and (_part.Parent and (_HumanoidRootPart2 and _HumanoidRootPart2.Parent)) then
                                            pcall(function()
                                                local v169 = Vector3.new(math.sin(tick() * 2) * 0.5, -1 + math.cos(tick() * 3) * 0.2, math.cos(tick() * 2) * 0.5)

                                                _part.CFrame = CFrame.new(_HumanoidRootPart2.Position + v169)
                                                _part.Velocity = Vector3.new(0, 0, 0)
                                                _part.AngularVelocity = Vector3.new(0, 0, 0)
                                            end)
                                        end

                                        wait(0.03)
                                    end
                                end)
                                u138(_HumanoidRootPart2.CFrame, u52, 1)

                                u168 = false

                                wait(0.1)
                                pcall(function()
                                    u147(_part, u52.Position + Vector3.new(math.random(-4, 4), 2, math.random(-4, 4)), 0.5)
                                end)
                            end

                            wait(0.5)
                        end
                    end

                    if u52 then
                        _HumanoidRootPart2.CFrame = u52
                    end

                    u51 = false
                else
                    u51 = false
                end
            end
        end

        function createESPText(p171, p172, p173)
            if not p171:FindFirstChild('ESPTexto') then
                local _BillboardGui = Instance.new('BillboardGui')

                _BillboardGui.Name = 'ESPTexto'
                _BillboardGui.Adornee = p171
                _BillboardGui.Size = UDim2.new(0, 100, 0, 20)
                _BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
                _BillboardGui.AlwaysOnTop = true
                _BillboardGui.MaxDistance = 300

                local _TextLabel = Instance.new('TextLabel')

                _TextLabel.Parent = _BillboardGui
                _TextLabel.Size = UDim2.new(1, 0, 1, 0)
                _TextLabel.BackgroundTransparency = 1
                _TextLabel.Text = p172
                _TextLabel.TextColor3 = p173 or Color3.fromRGB(255, 255, 0)
                _TextLabel.TextStrokeTransparency = 0.2
                _TextLabel.TextScaled = true
                _TextLabel.Font = Enum.Font.GothamBold
                _BillboardGui.Parent = p171
            end
        end

        local function u185(p176, p177)
            local v178, v179

            if p177 == 'item' then
                v178 = workspace:FindFirstChild('Items')
                v179 = Color3.fromRGB(0, 255, 0)
            else
                if p177 ~= 'mob' then
                    return
                end

                v178 = workspace:FindFirstChild('Characters')
                v179 = Color3.fromRGB(255, 255, 0)
            end
            if v178 then
                local v180, v181, v182 = ipairs(v178:GetChildren())

                while true do
                    local v183

                    v182, v183 = v180(v181, v182)

                    if v182 == nil then
                        break
                    end
                    if v183.Name == p176 then
                        local v184 = v183:IsA('BasePart') and v183 and v183 or v183:FindFirstChildWhichIsA('BasePart')

                        if v184 then
                            createESPText(v184, v183.Name, v179)
                        end
                    end
                end
            end
        end
        local function u198(p186, p187)
            local v188

            if p187 == 'item' then
                v188 = workspace:FindFirstChild('Items')
            else
                if p187 ~= 'mob' then
                    return
                end

                v188 = workspace:FindFirstChild('Characters')
            end
            if v188 then
                local v189, v190, v191 = ipairs(v188:GetChildren())

                while true do
                    local v192

                    v191, v192 = v189(v190, v191)

                    if v191 == nil then
                        break
                    end
                    if v192.Name == p186 then
                        local v193 = v192:IsA('BasePart') and v192 and v192 or v192:FindFirstChildWhichIsA('BasePart')

                        if v193 then
                            local v194, v195, v196 = ipairs(v193:GetChildren())

                            while true do
                                local v197

                                v196, v197 = v194(v195, v196)

                                if v196 == nil then
                                    break
                                end
                                if v197:IsA('BillboardGui') and v197.Name == 'ESPTexto' then
                                    v197:Destroy()
                                end
                            end
                        end
                    end
                end
            end
        end

        function tp1()
            (_Players.LocalPlayer.Character or _Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(0.43132782, 15.77634621, -1.88620758, -0.270917892, 0.102997094, 0.957076371, 0.639657021, 0.762253821, 0.0990355015, -0.719334781, 0.639031112, -0.272391081)
        end

        local function u202()
            local v199 = workspace:FindFirstChild('Map') and workspace.Map:FindFirstChild('Landmarks') and (workspace.Map.Landmarks:FindFirstChild('Stronghold') and workspace.Map.Landmarks.Stronghold:FindFirstChild('Functional') and (workspace.Map.Landmarks.Stronghold.Functional:FindFirstChild('EntryDoors') and workspace.Map.Landmarks.Stronghold.Functional.EntryDoors:FindFirstChild('DoorRight')))

            if v199 then
                v199 = workspace.Map.Landmarks.Stronghold.Functional.EntryDoors.DoorRight:FindFirstChild('Model')
            end
            if v199 then
                local v200 = v199:GetChildren()[5]

                if v200 and v200:IsA('BasePart') then
                    local _Character = _Players.LocalPlayer.Character

                    if _Character then
                        _Character = _Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
                    end
                    if _Character then
                        _Character.CFrame = v200.CFrame + Vector3.new(0, 5, 0)
                    end
                end
            end
        end
        local function u211()
            while u30 do
                local _HumanoidRootPart3 = (_LocalPlayer2.Character or _LocalPlayer2.CharacterAdded:Wait()):FindFirstChild('HumanoidRootPart')

                if _HumanoidRootPart3 then
                    local u204, u205 = u109(false)

                    if u204 and u205 then
                        u111(u204)

                        local v206, v207, v208 = ipairs(_Workspace.Characters:GetChildren())

                        while true do
                            local u209

                            v208, u209 = v206(v207, v208)

                            if v208 == nil then
                                break
                            end
                            if u209:IsA('Model') then
                                local _BasePart = u209:FindFirstChildWhichIsA('BasePart')

                                if _BasePart and (_BasePart.Position - _HumanoidRootPart3.Position).Magnitude <= u32 then
                                    pcall(function()
                                        _ReplicatedStorage:WaitForChild('RemoteEvents').ToolDamageObject:InvokeServer(u209, u204, u205, CFrame.new(_BasePart.Position))
                                    end)
                                end
                            end
                        end

                        task.wait(0.1)
                    else
                        task.wait(1)
                    end
                else
                    task.wait(0.5)
                end
            end
        end
        local function u231()
            while u31 do
                local _HumanoidRootPart4 = (_LocalPlayer2.Character or _LocalPlayer2.CharacterAdded:Wait()):FindFirstChild('HumanoidRootPart')

                if _HumanoidRootPart4 then
                    local u213, v214 = u109(true)

                    if u213 and v214 then
                        u111(u213)

                        u33 = u33 + 1

                        local v215 = {}
                        local _Map = _Workspace:FindFirstChild('Map')

                        if _Map then
                            if _Map:FindFirstChild('Foliage') then
                                local v217, v218, v219 = ipairs(_Map.Foliage:GetChildren())

                                while true do
                                    local v220

                                    v219, v220 = v217(v218, v219)

                                    if v219 == nil then
                                        break
                                    end
                                    if v220:IsA('Model') and (v220.Name == 'Small Tree' or v220.Name == 'Snowy Small Tree') then
                                        table.insert(v215, v220)
                                    end
                                end
                            end
                            if _Map:FindFirstChild('Landmarks') then
                                local v221, v222, v223 = ipairs(_Map.Landmarks:GetChildren())

                                while true do
                                    local v224

                                    v223, v224 = v221(v222, v223)

                                    if v223 == nil then
                                        break
                                    end
                                    if v224:IsA('Model') and v224.Name == 'Small Tree' then
                                        table.insert(v215, v224)
                                    end
                                end
                            end
                        end

                        local v225, v226, v227 = ipairs(v215)

                        while true do
                            local u228

                            v227, u228 = v225(v226, v227)

                            if v227 == nil then
                                break
                            end

                            local _Trunk = u228:FindFirstChild('Trunk')

                            if _Trunk and (_Trunk:IsA('BasePart') and (_Trunk.Position - _HumanoidRootPart4.Position).Magnitude <= u32) then
                                local u230 = false

                                task.spawn(function()
                                    while u31 and (u228 and (u228.Parent and not u230)) do
                                        u230 = true
                                        u33 = u33 + 1

                                        pcall(function()
                                            _ReplicatedStorage:WaitForChild('RemoteEvents').ToolDamageObject:InvokeServer(u228, u213, tostring(u33) .. '_7367831688', CFrame.new(-2.962610244751, 4.5547881126404, -75.950843811035, 0.89621275663376, -1.3894891459643e-8, 0.44362446665764, -7.994568895775e-10, 1, 3.2936359417589998e-8, -0.44362446665764, -2.9872644802253e-8, 0.89621275663376))
                                        end)
                                        task.wait(0.5)
                                    end
                                end)
                            end
                        end

                        task.wait(0.1)
                    else
                        task.wait(1)
                    end
                else
                    task.wait(0.5)
                end
            end
        end
        local function u233()
            while u34 do
                local v232 = {
                    Instance.new('Model'),
                    Vector3.new(-41.2053, 1.0633, 29.2236),
                }

                _ReplicatedStorage:WaitForChild('RemoteEvents'):WaitForChild('RequestPlantItem'):InvokeServer(unpack(v232))
                task.wait(1)
            end
        end
        local function u245()
            repeat
                task.wait()
            until _Players.LocalPlayer and _Players.LocalPlayer.Character and (_Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart') and _Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'))
            repeat
                task.wait()
            until _UserInputService

            if u74 or u75 then
                u74:Disconnect()
                u75:Disconnect()
            end

            local _HumanoidRootPart5 = _Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
            local u235 = {
                F = 0,
                B = 0,
                L = 0,
                R = 0,
                Q = 0,
                E = 0,
            }
            local u236 = {
                F = 0,
                B = 0,
                L = 0,
                R = 0,
                Q = 0,
                E = 0,
            }
            local u237 = u72

            local function v240()
                u73 = true

                local _BodyGyro = Instance.new('BodyGyro')
                local _BodyVelocity = Instance.new('BodyVelocity')

                _BodyGyro.P = 90000
                _BodyGyro.Parent = _HumanoidRootPart5
                _BodyVelocity.Parent = _HumanoidRootPart5
                _BodyGyro.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
                _BodyGyro.CFrame = _HumanoidRootPart5.CFrame
                _BodyVelocity.Velocity = Vector3.new(0, 0, 0)
                _BodyVelocity.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)

                task.spawn(function()
                    while u73 do
                        task.wait()

                        if not u71 and _Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                            _Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
                        end
                        if u235.L + u235.R ~= 0 or (u235.F + u235.B ~= 0 or u235.Q + u235.E ~= 0) then
                            u237 = u72
                        elseif u235.L + u235.R == 0 and (u235.F + u235.B == 0 and (u235.Q + u235.E == 0 and u237 ~= 0)) then
                            u237 = 0
                        end
                        if u235.L + u235.R ~= 0 or (u235.F + u235.B ~= 0 or u235.Q + u235.E ~= 0) then
                            _BodyVelocity.Velocity = (workspace.CurrentCamera.CoordinateFrame.lookVector * (u235.F + u235.B) + (workspace.CurrentCamera.CoordinateFrame * CFrame.new(u235.L + u235.R, (u235.F + u235.B + u235.Q + u235.E) * 0.2, 0).p - workspace.CurrentCamera.CoordinateFrame.p)) * u237
                            u236 = {
                                F = u235.F,
                                B = u235.B,
                                L = u235.L,
                                R = u235.R,
                            }
                        elseif u235.L + u235.R ~= 0 or (u235.F + u235.B ~= 0 or (u235.Q + u235.E ~= 0 or u237 == 0)) then
                            _BodyVelocity.Velocity = Vector3.new(0, 0, 0)
                        else
                            _BodyVelocity.Velocity = (workspace.CurrentCamera.CoordinateFrame.lookVector * (u236.F + u236.B) + (workspace.CurrentCamera.CoordinateFrame * CFrame.new(u236.L + u236.R, (u236.F + u236.B + u235.Q + u235.E) * 0.2, 0).p - workspace.CurrentCamera.CoordinateFrame.p)) * u237
                        end

                        _BodyGyro.CFrame = workspace.CurrentCamera.CoordinateFrame
                    end

                    u235 = {
                        F = 0,
                        B = 0,
                        L = 0,
                        R = 0,
                        Q = 0,
                        E = 0,
                    }
                    u236 = {
                        F = 0,
                        B = 0,
                        L = 0,
                        R = 0,
                        Q = 0,
                        E = 0,
                    }
                    u237 = 0

                    _BodyGyro:Destroy()
                    _BodyVelocity:Destroy()

                    if _Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                        _Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
                    end
                end)
            end

            u74 = _UserInputService.InputBegan:Connect(function(p241)
                if p241.UserInputType == Enum.UserInputType.Keyboard then
                    local _Name = p241.KeyCode.Name

                    if _Name == 'W' then
                        u235.F = u72
                    elseif _Name == 'S' then
                        u235.B = -u72
                    elseif _Name == 'A' then
                        u235.L = -u72
                    elseif _Name == 'D' then
                        u235.R = u72
                    elseif _Name == 'E' then
                        u235.Q = u72 * 2
                    elseif _Name == 'Q' then
                        u235.E = -u72 * 2
                    end

                    pcall(function()
                        workspace.CurrentCamera.CameraType = Enum.CameraType.Track
                    end)
                end
            end)
            u75 = _UserInputService.InputEnded:Connect(function(p243)
                if p243.UserInputType == Enum.UserInputType.Keyboard then
                    local _Name2 = p243.KeyCode.Name

                    if _Name2 == 'W' then
                        u235.F = 0
                    elseif _Name2 == 'S' then
                        u235.B = 0
                    elseif _Name2 == 'A' then
                        u235.L = 0
                    elseif _Name2 == 'D' then
                        u235.R = 0
                    elseif _Name2 == 'E' then
                        u235.Q = 0
                    elseif _Name2 == 'Q' then
                        u235.E = 0
                    end
                end
            end)

            v240()
        end
        local function u246()
            u73 = false

            if u74 then
                u74:Disconnect()
            end
            if u75 then
                u75:Disconnect()
            end
            if u76 then
                u76:Disconnect()
            end
            if u77 then
                u77:Disconnect()
            end
            if _Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                _Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
            end

            pcall(function()
                workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
            end)
        end
        local function u248()
            pcall(function()
                u73 = false

                local _HumanoidRootPart6 = _Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')

                if _HumanoidRootPart6:FindFirstChild('BodyVelocity') then
                    _HumanoidRootPart6:FindFirstChild('BodyVelocity'):Destroy()
                end
                if _HumanoidRootPart6:FindFirstChild('BodyGyro') then
                    _HumanoidRootPart6:FindFirstChild('BodyGyro'):Destroy()
                end
                if _Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid') then
                    _Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid').PlatformStand = false
                end
                if u76 then
                    u76:Disconnect()
                end
                if u77 then
                    u77:Disconnect()
                end
            end)
        end
        local function u264()
            u248()

            u73 = true

            local _HumanoidRootPart7 = _Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
            local _CurrentCamera = workspace.CurrentCamera
            local u251 = Vector3.new()
            local u252 = Vector3.new(0, 0, 0)
            local u253 = Vector3.new(9000000000, 9000000000, 9000000000)
            local u254 = require(_Players.LocalPlayer.PlayerScripts:WaitForChild('PlayerModule'):WaitForChild('ControlModule'))
            local _BodyVelocity2 = Instance.new('BodyVelocity')

            _BodyVelocity2.Name = 'BodyVelocity'
            _BodyVelocity2.Parent = _HumanoidRootPart7
            _BodyVelocity2.MaxForce = u252
            _BodyVelocity2.Velocity = u252

            local _BodyGyro2 = Instance.new('BodyGyro')

            _BodyGyro2.Name = 'BodyGyro'
            _BodyGyro2.Parent = _HumanoidRootPart7
            _BodyGyro2.MaxTorque = u253
            _BodyGyro2.P = 1000
            _BodyGyro2.D = 50
            u76 = _Players.LocalPlayer.CharacterAdded:Connect(function()
                local _HumanoidRootPart8 = _Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
                local _BodyVelocity3 = Instance.new('BodyVelocity')

                _BodyVelocity3.Name = 'BodyVelocity'
                _BodyVelocity3.Parent = _HumanoidRootPart8
                _BodyVelocity3.MaxForce = u252
                _BodyVelocity3.Velocity = u252

                local _BodyGyro3 = Instance.new('BodyGyro')

                _BodyGyro3.Name = 'BodyGyro'
                _BodyGyro3.Parent = _HumanoidRootPart8
                _BodyGyro3.MaxTorque = u253
                _BodyGyro3.P = 1000
                _BodyGyro3.D = 50
            end)
            u77 = _RunService.RenderStepped:Connect(function()
                _HumanoidRootPart7 = _Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
                _CurrentCamera = workspace.CurrentCamera

                if _Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid') and _HumanoidRootPart7 and (_HumanoidRootPart7:FindFirstChild('BodyVelocity') and _HumanoidRootPart7:FindFirstChild('BodyGyro')) then
                    local _Humanoid = _Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid')
                    local _BodyVelocity4 = _HumanoidRootPart7:FindFirstChild('BodyVelocity')
                    local _BodyGyro4 = _HumanoidRootPart7:FindFirstChild('BodyGyro')

                    _BodyVelocity4.MaxForce = u253
                    _BodyGyro4.MaxTorque = u253
                    _Humanoid.PlatformStand = true
                    _BodyGyro4.CFrame = _CurrentCamera.CoordinateFrame
                    _BodyVelocity4.Velocity = u251

                    local v263 = u254:GetMoveVector()

                    if v263.X > 0 then
                        _BodyVelocity4.Velocity = _BodyVelocity4.Velocity + _CurrentCamera.CFrame.RightVector * (v263.X * (u72 * 50))
                    end
                    if v263.X < 0 then
                        _BodyVelocity4.Velocity = _BodyVelocity4.Velocity + _CurrentCamera.CFrame.RightVector * (v263.X * (u72 * 50))
                    end
                    if v263.Z > 0 then
                        _BodyVelocity4.Velocity = _BodyVelocity4.Velocity - _CurrentCamera.CFrame.LookVector * (v263.Z * (u72 * 50))
                    end
                    if v263.Z < 0 then
                        _BodyVelocity4.Velocity = _BodyVelocity4.Velocity - _CurrentCamera.CFrame.LookVector * (v263.Z * (u72 * 50))
                    end
                end
            end)
        end

        v28.Combat:AddParagraph({
            Title = 'Combat Features',
        })
        v28.Combat:AddToggle('KillAura', {
            Title = 'Kill Aura',
            Default = false,
        }):OnChanged(function()
            u30 = _Options.KillAura.Value

            if u30 then
                task.spawn(u211)
            else
                local v265, _ = u109(false)

                u113(v265)
            end
        end)

        local _AutoPlant = v28.Combat:AddToggle('AutoPlant', {
            Title = 'Auto Plant',
            Default = false,
        })

        v28.Combat:AddToggle('ChopAura', {
            Title = 'Chop Aura',
            Default = false,
        }):OnChanged(function()
            u31 = _Options.ChopAura.Value

            if u31 then
                task.spawn(u231)
            else
                local v267, _ = u109(true)

                u113(v267)
            end
        end)
        _AutoPlant:OnChanged(function()
            u34 = _Options.AutoPlant.Value

            if u34 then
                task.spawn(u233)
            end
        end)
        v28.Combat:AddSlider('AuraRadius', {
            Title = 'Aura Radius',
            Min = 20,
            Max = 800,
            Default = 50,
            Rounding = 0,
        }):OnChanged(function(p268)
            u32 = p268
        end)
        v28.Main:AddParagraph({
            Title = 'Auto Feed System',
        })
        v28.Main:AddDropdown('FoodSelect', {
            Title = 'Select Food',
            Values = {
                'Apple',
                'Berry',
                'Carrot',
                'Cake',
                'Chili',
                'Cooked Ribs',
                'Cooked Mackerel',
                'Cooked Salmon',
                'Cooked Morsel',
                'Cooked Steak',
            },
            Multi = false,
            Default = 1,
        }):OnChanged(function(p269)
            u37 = p269
        end)
        v28.Main:AddInput('HungerThreshold', {
            Title = 'Hunger Threshold',
            Default = '75',
            Placeholder = 'Enter threshold (0-100)',
            Numeric = true,
        }):OnChanged(function()
            local v270 = tonumber(_Options.HungerThreshold.Value)

            if v270 then
                u38 = math.clamp(v270, 0, 100)
            end
        end)
        v28.Main:AddToggle('AutoFeed', {
            Title = 'Auto Feed',
            Default = false,
        }):OnChanged(function()
            u36 = _Options.AutoFeed.Value

            if u36 then
                task.spawn(function()
                    while u36 do
                        task.wait(0.075)

                        if wiki(u37) == 0 then
                            u36 = false

                            _Options.AutoFeed:SetValue(false)
                            u16:Notify({
                                Title = 'Auto Feed Paused',
                                Content = 'The food is gone',
                                Duration = 3,
                            })

                            break
                        end
                        if ghn() <= u38 then
                            feed(u37)
                        end
                    end
                end)
            end
        end)
        v28.Main:AddParagraph({
            Title = 'Misc Features',
            Content = 'Additional helpful features',
        })
        v28.Main:AddToggle('InstantInteract', {
            Title = 'Instant Interact',
            Default = false,
        }):OnChanged(function()
            u100 = _Options.InstantInteract.Value

            if u100 then
                u102 = {}
                u101 = task.spawn(function()
                    while u100 do
                        local v271, v272, v273 = ipairs(workspace:GetDescendants())

                        while true do
                            local v274

                            v273, v274 = v271(v272, v273)

                            if v273 == nil then
                                break
                            end
                            if v274:IsA('ProximityPrompt') then
                                if u102[v274] == nil then
                                    u102[v274] = v274.HoldDuration
                                end

                                v274.HoldDuration = 0
                            end
                        end

                        task.wait(5)
                    end
                end)
            else
                if u101 then
                    u100 = false
                end

                local v275, v276, v277 = pairs(u102)

                while true do
                    local v278

                    v277, v278 = v275(v276, v277)

                    if v277 == nil then
                        break
                    end
                    if v277 and v277:IsA('ProximityPrompt') then
                        v277.HoldDuration = v278
                    end
                end

                u102 = {}
            end
        end)
        v28.Auto:AddParagraph({
            Title = 'Auto Upgrade Campfire',
            Content = 'Auto add fuel to campfire',
        })
        v28.Auto:AddDropdown('CampfireItem', {
            Title = 'Select Fuel Item',
            Values = {
                'Log',
                'Coal',
                'Chair',
                'Fuel Canister',
                'Oil Barrel',
                'Biofuel',
            },
            Multi = false,
            AllowNone = true,
        }):OnChanged(function(p279)
            u64 = p279
        end)
        v28.Auto:AddToggle('AutoUpgradeCampfire', {
            Title = 'Auto Upgrade Campfire',
            Default = false,
        }):OnChanged(function()
            u65 = _Options.AutoUpgradeCampfire.Value

            if u65 then
                task.spawn(function()
                    while u65 do
                        if u64 then
                            local v280, v281, v282 = ipairs(workspace:WaitForChild('Items'):GetChildren())

                            while true do
                                local v283

                                v282, v283 = v280(v281, v282)

                                if v282 == nil then
                                    break
                                end
                                if v283.Name == u64 then
                                    u128(v283, u63)
                                end
                            end
                        end

                        task.wait(2)
                    end
                end)
            end
        end)
        v28.Auto:AddParagraph({
            Title = 'Auto Scrap Items',
            Content = 'Auto scrap junk items',
        })
        v28.Auto:AddDropdown('ScrapItem', {
            Title = 'Select Scrap Item',
            Values = {
                'Log',
                'Chair',
                'Tyre',
                'Bolt',
                'Broken Fan',
                'Broken Microwave',
                'Sheet Metal',
                'Old Radio',
                'Washing Machine',
                'Old Car Engine',
            },
            Multi = false,
            AllowNone = true,
        }):OnChanged(function(p284)
            u67 = p284
        end)
        v28.Auto:AddToggle('AutoScrap', {
            Title = 'Auto Scrap Items',
            Default = false,
        }):OnChanged(function()
            u68 = _Options.AutoScrap.Value

            if u68 then
                task.spawn(function()
                    while u68 do
                        if u67 then
                            local v285, v286, v287 = ipairs(workspace:WaitForChild('Items'):GetChildren())

                            while true do
                                local v288

                                v287, v288 = v285(v286, v287)

                                if v287 == nil then
                                    break
                                end
                                if v288.Name == u67 then
                                    u128(v288, u66)
                                end
                            end
                        end

                        task.wait(2)
                    end
                end)
            end
        end)
        v28.Auto:AddParagraph({
            Title = 'Auto Cook Food',
            Content = 'Auto cook raw food on campfire',
        })
        v28.Auto:AddDropdown('CookItems', {
            Title = 'Select Food to Cook',
            Values = {
                'Morsel',
                'Steak',
                'Ribs',
                'Salmon',
                'Mackerel',
            },
            Multi = true,
            Default = {},
            AllowNone = true,
        }):OnChanged(function(p289)
            u69 = {}

            local v290, v291, v292 = pairs(p289)

            while true do
                local v293

                v292, v293 = v290(v291, v292)

                if v292 == nil then
                    break
                end
                if v293 then
                    u69[v292] = true
                end
            end
        end)
        v28.Auto:AddToggle('AutoCook', {
            Title = 'Auto Cook Food',
            Default = false,
        }):OnChanged(function()
            u70 = _Options.AutoCook.Value
        end)
        coroutine.wrap(function()
            while true do
                if u70 then
                    local v294, v295, v296 = pairs(u69)

                    while true do
                        local v297

                        v296, v297 = v294(v295, v296)

                        if v296 == nil then
                            break
                        end
                        if v297 then
                            local v298, v299, v300 = ipairs(_Workspace:WaitForChild('Items'):GetChildren())
                            local v301 = v296

                            while true do
                                local v302

                                v300, v302 = v298(v299, v300)

                                if v300 == nil then
                                    break
                                end
                                if v302.Name == v301 then
                                    u128(v302, u63)
                                end
                            end
                        end
                    end
                end

                task.wait(0.5)
            end
        end)()
        v28.Bring:AddParagraph({
            Title = 'Item Bring System',
            Content = 'Bring items to your location',
        })
        v28.Bring:AddDropdown('JunkItems', {
            Title = 'Select Junk Items',
            Values = {
                'Tyre',
                'Bolt',
                'Broken Fan',
                'Broken Microwave',
                'Sheet Metal',
                'Old Radio',
                'Washing Machine',
                'Old Car Engine',
            },
            Multi = true,
            Default = {},
            AllowNone = true,
        }):OnChanged(function(p303)
            u46 = {}

            local v304, v305, v306 = pairs(p303)

            while true do
                local v307

                v306, v307 = v304(v305, v306)

                if v306 == nil then
                    break
                end
                if v307 then
                    table.insert(u46, v306)
                end
            end
        end)
        v28.Bring:AddToggle('BringJunk', {
            Title = 'Bring Junk Items',
            Default = false,
        }):OnChanged(function()
            u53 = _Options.BringJunk.Value

            if u53 then
                if #u46 <= 0 then
                    u53 = false
                else
                    u58 = true

                    spawn(function()
                        while u58 and u53 do
                            local v308

                            if #u46 <= 0 or not u53 then
                                v308 = 0
                            else
                                u170(u46, function()
                                    return u53
                                end)

                                v308 = 0
                            end

                            while v308 < 3 and (u53 and u58) do
                                wait(0.1)

                                v308 = v308 + 0.1
                            end
                        end

                        u58 = false
                    end)
                end
            else
                u58 = false
            end
        end)
        v28.Bring:AddDropdown('FuelItems', {
            Title = 'Select Fuel Items',
            Values = {
                'Log',
                'Chair',
                'Coal',
                'Fuel Canister',
                'Oil Barrel',
            },
            Multi = true,
            Default = {},
            AllowNone = true,
        }):OnChanged(function(p309)
            u47 = {}

            local v310, v311, v312 = pairs(p309)

            while true do
                local v313

                v312, v313 = v310(v311, v312)

                if v312 == nil then
                    break
                end
                if v313 then
                    table.insert(u47, v312)
                end
            end
        end)
        v28.Bring:AddToggle('BringFuel', {
            Title = 'Bring Fuel Items',
            Default = false,
        }):OnChanged(function()
            u54 = _Options.BringFuel.Value

            if u54 then
                if #u47 <= 0 then
                    u54 = false
                else
                    u59 = true

                    spawn(function()
                        while u59 and u54 do
                            local v314

                            if #u47 <= 0 or not u54 then
                                v314 = 0
                            else
                                u170(u47, function()
                                    return u54
                                end)

                                v314 = 0
                            end

                            while v314 < 3 and (u54 and u59) do
                                wait(0.1)

                                v314 = v314 + 0.1
                            end
                        end

                        u59 = false
                    end)
                end
            else
                u59 = false
            end
        end)
        v28.Bring:AddDropdown('FoodBringItems', {
            Title = 'Select Food Items',
            Values = {
                'Cake',
                'Cooked Steak',
                'Cooked Morsel',
                'Ribs',
                'Salmon',
                'Cooked Salmon',
                'Cooked Ribs',
                'Mackerel',
                'Cooked Mackerel',
                'Steak',
                'Morsel',
                'Berry',
                'Carrot',
            },
            Multi = true,
            Default = {},
            AllowNone = true,
        }):OnChanged(function(p315)
            u48 = {}

            local v316, v317, v318 = pairs(p315)

            while true do
                local v319

                v318, v319 = v316(v317, v318)

                if v318 == nil then
                    break
                end
                if v319 then
                    table.insert(u48, v318)
                end
            end
        end)
        v28.Bring:AddToggle('BringFoodItems', {
            Title = 'Bring Food Items',
            Default = false,
        }):OnChanged(function()
            u55 = _Options.BringFoodItems.Value

            if u55 then
                if #u48 <= 0 then
                    u55 = false
                else
                    u60 = true

                    spawn(function()
                        while u60 and u55 do
                            local v320

                            if #u48 <= 0 or not u55 then
                                v320 = 0
                            else
                                u170(u48, function()
                                    return u55
                                end)

                                v320 = 0
                            end

                            while v320 < 3 and (u55 and u60) do
                                wait(0.1)

                                v320 = v320 + 0.1
                            end
                        end

                        u60 = false
                    end)
                end
            else
                u60 = false
            end
        end)
        v28.Bring:AddDropdown('MedicalItems', {
            Title = 'Select Medical Items',
            Values = {
                'Bandage',
                'MedKit',
            },
            Multi = true,
            Default = {},
            AllowNone = true,
        }):OnChanged(function(p321)
            u49 = {}

            local v322, v323, v324 = pairs(p321)

            while true do
                local v325

                v324, v325 = v322(v323, v324)

                if v324 == nil then
                    break
                end
                if v325 then
                    table.insert(u49, v324)
                end
            end
        end)
        v28.Bring:AddToggle('BringMedical', {
            Title = 'Bring Medical Items',
            Default = false,
        }):OnChanged(function()
            u56 = _Options.BringMedical.Value

            if u56 then
                if #u49 <= 0 then
                    u56 = false
                else
                    u61 = true

                    spawn(function()
                        while u61 and u56 do
                            local v326

                            if #u49 <= 0 or not u56 then
                                v326 = 0
                            else
                                u170(u49, function()
                                    return u56
                                end)

                                v326 = 0
                            end

                            while v326 < 3 and (u56 and u61) do
                                wait(0.1)

                                v326 = v326 + 0.1
                            end
                        end

                        u61 = false
                    end)
                end
            else
                u61 = false
            end
        end)
        v28.Bring:AddDropdown('EquipmentItems', {
            Title = 'Select Equipment Items',
            Values = {
                'Revolver',
                'Rifle',
                'Leather Body',
                'Iron Body',
                'Revolver Ammo',
                'Rifle Ammo',
                'Giant Sack',
                'Good Sack',
                'Strong Axe',
                'Good Axe',
            },
            Multi = true,
            Default = {},
            AllowNone = true,
        }):OnChanged(function(p327)
            u50 = {}

            local v328, v329, v330 = pairs(p327)

            while true do
                local v331

                v330, v331 = v328(v329, v330)

                if v330 == nil then
                    break
                end
                if v331 then
                    table.insert(u50, v330)
                end
            end
        end)
        v28.Bring:AddToggle('BringEquipment', {
            Title = 'Bring Equipment Items',
            Default = false,
        }):OnChanged(function()
            u57 = _Options.BringEquipment.Value

            if u57 then
                if #u50 <= 0 then
                    u57 = false
                else
                    u62 = true

                    spawn(function()
                        while u62 and u57 do
                            local v332

                            if #u50 <= 0 or not u57 then
                                v332 = 0
                            else
                                u170(u50, function()
                                    return u57
                                end)

                                v332 = 0
                            end

                            while v332 < 3 and (u57 and u62) do
                                wait(0.1)

                                v332 = v332 + 0.1
                            end
                        end

                        u62 = false
                    end)
                end
            else
                u62 = false
            end
        end)
        v28.Player:AddParagraph({
            Title = 'Movement Controls',
            Content = 'Fly and speed controls',
        })
        v28.Player:AddSlider('FlySpeed', {
            Title = 'Fly Speed',
            Min = 1,
            Max = 20,
            Default = 1,
            Rounding = 0,
        }):OnChanged(function(p333)
            u72 = p333
        end)
        v28.Player:AddToggle('Fly', {
            Title = 'Enable Fly',
            Default = false,
        }):OnChanged(function()
            u71 = _Options.Fly.Value

            if u71 then
                if _UserInputService.TouchEnabled then
                    u264()
                else
                    u245()
                end
            else
                u246()
                u248()
            end
        end)
        v28.Player:AddSlider('WalkSpeed', {
            Title = 'Walk Speed',
            Min = 16,
            Max = 200,
            Default = 16,
            Rounding = 0,
        }):OnChanged(function(p334)
            u80 = p334
        end)
        v28.Player:AddToggle('Speed', {
            Title = 'Enable Speed',
            Default = false,
        }):OnChanged(function()
            local _Value = _Options.Speed.Value
            local _Character2 = _Players.LocalPlayer.Character

            if _Character2 then
                _Character2 = _Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
            end
            if _Character2 then
                _Character2.WalkSpeed = _Value and u80 or 16
            end
        end)
        v28.Player:AddParagraph({
            Title = 'Power Features',
            Content = 'No Clip and Infinite Jump',
        })
        v28.Player:AddToggle('Noclip', {
            Title = 'No Clip',
            Default = false,
        }):OnChanged(function()
            if _Options.Noclip.Value then
                u78 = _RunService.Stepped:Connect(function()
                    local _Character3 = _Players.LocalPlayer.Character

                    if _Character3 then
                        local v338, v339, v340 = ipairs(_Character3:GetDescendants())

                        while true do
                            local v341

                            v340, v341 = v338(v339, v340)

                            if v340 == nil then
                                break
                            end
                            if v341:IsA('BasePart') then
                                v341.CanCollide = false
                            end
                        end
                    end
                end)
            elseif u78 then
                u78:Disconnect()

                u78 = nil
            end
        end)
        v28.Player:AddToggle('InfJump', {
            Title = 'Infinite Jump',
            Default = false,
        }):OnChanged(function()
            if _Options.InfJump.Value then
                u79 = _UserInputService.JumpRequest:Connect(function()
                    local _Character4 = _Players.LocalPlayer.Character

                    if _Character4 then
                        _Character4 = _Character4:FindFirstChildOfClass('Humanoid')
                    end
                    if _Character4 then
                        _Character4:ChangeState(Enum.HumanoidStateType.Jumping)
                    end
                end)
            elseif u79 then
                u79:Disconnect()

                u79 = nil
            end
        end)
        v28.Teleport:AddParagraph({
            Title = 'Map Scanner',
            Content = 'Scan the map for trees',
        })
        v28.Teleport:AddToggle('ScanMap', {
            Title = 'Scan Map',
            Default = false,
        }):OnChanged(function()
            u81 = _Options.ScanMap.Value

            if u81 then
                u82 = true

                task.spawn(function()
                    local _LocalPlayer4 = _Players.LocalPlayer
                    local _HumanoidRootPart9 = (_LocalPlayer4.Character or _LocalPlayer4.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart', 3)

                    if _HumanoidRootPart9 then
                        local _Map2 = workspace:FindFirstChild('Map')

                        if _Map2 then
                            local v346 = _Map2:FindFirstChild('Foliage') or _Map2:FindFirstChild('Landmarks')

                            if v346 then
                                while u81 do
                                    local v347, v348, v349 = ipairs(v346:GetChildren())
                                    local v350 = {}

                                    while true do
                                        local v351

                                        v349, v351 = v347(v348, v349)

                                        if v349 == nil then
                                            break
                                        end
                                        if v351.Name == 'Small Tree' and v351:IsA('Model') then
                                            local v352 = v351:FindFirstChild('Trunk') or v351.PrimaryPart

                                            if v352 then
                                                table.insert(v350, v352)
                                            end
                                        end
                                    end

                                    local v353, v354, v355 = ipairs(v350)

                                    while true do
                                        local v356

                                        v355, v356 = v353(v354, v355)

                                        if v355 == nil or not u81 then
                                            break
                                        end
                                        if v356 and v356.Parent then
                                            local _CFrame = v356.CFrame
                                            local _RightVector = _CFrame.RightVector
                                            local v359 = _CFrame.Position + _RightVector * 69 + Vector3.new(0, 15, 69)

                                            _HumanoidRootPart9.CFrame = CFrame.new(v359)

                                            local _Part = Instance.new('Part')

                                            _Part.Size = Vector3.new(10, 1, 10)
                                            _Part.Anchored = true
                                            _Part.CanCollide = true
                                            _Part.Transparency = 1
                                            _Part.BrickColor = BrickColor.new('Bright yellow')
                                            _Part.CFrame = CFrame.new(v359 - Vector3.new(0, 3, 0))
                                            _Part.Parent = workspace

                                            game.Debris:AddItem(_Part, 1)
                                            task.wait(0.01)
                                        end
                                    end

                                    task.wait(0.25)
                                end
                            end
                        else
                            return
                        end
                    else
                        return
                    end
                end)
            else
                if type(tp1) == 'function' and u82 then
                    tp1()
                end

                u82 = false
            end
        end)
        v28.Teleport:AddParagraph({
            Title = 'Quick Teleports',
        })
        v28.Teleport:AddButton({
            Title = 'Teleport to Campfire',
            Callback = function()
                tp1()
            end,
        })
        v28.Teleport:AddButton({
            Title = 'Teleport to Stronghold',
            Callback = function()
                u202()
            end,
        })
        v28.Teleport:AddButton({
            Title = 'Teleport to Safe Zone',
            Callback = function()
                if not workspace:FindFirstChild('SafeZonePart') then
                    local _Part2 = Instance.new('Part')

                    _Part2.Name = 'SafeZonePart'
                    _Part2.Size = Vector3.new(30, 3, 30)
                    _Part2.Position = Vector3.new(0, 350, 0)
                    _Part2.Anchored = true
                    _Part2.CanCollide = true
                    _Part2.Transparency = 0.8
                    _Part2.Color = Color3.fromRGB(255, 0, 0)
                    _Part2.Parent = workspace
                end

                local _LocalPlayer5 = _Players.LocalPlayer;

                (_LocalPlayer5.Character or _LocalPlayer5.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(0, 360, 0)
            end,
        })
        v28.Teleport:AddButton({
            Title = 'Teleport to Trader',
            Callback = function()
                local v363 = Vector3.new(-37.08, 3.98, -16.33)
                local _LocalPlayer6 = _Players.LocalPlayer;

                (_LocalPlayer6.Character or _LocalPlayer6.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(v363)
            end,
        })
        v28.Teleport:AddButton({
            Title = 'Teleport to Random Tree',
            Callback = function()
                local _LocalPlayer7 = _Players.LocalPlayer
                local _HumanoidRootPart10 = (_LocalPlayer7.Character or _LocalPlayer7.CharacterAdded:Wait()):FindFirstChild('HumanoidRootPart', 3)

                if _HumanoidRootPart10 then
                    local _Map3 = workspace:FindFirstChild('Map')

                    if _Map3 then
                        local v368 = _Map3:FindFirstChild('Foliage') or _Map3:FindFirstChild('Landmarks')

                        if v368 then
                            local v369, v370, v371 = ipairs(v368:GetChildren())
                            local v372 = {}

                            while true do
                                local v373

                                v371, v373 = v369(v370, v371)

                                if v371 == nil then
                                    break
                                end
                                if v373.Name == 'Small Tree' and v373:IsA('Model') then
                                    local v374 = v373:FindFirstChild('Trunk') or v373.PrimaryPart

                                    if v374 then
                                        table.insert(v372, v374)
                                    end
                                end
                            end

                            if #v372 > 0 then
                                local _CFrame2 = v372[math.random(1, #v372)].CFrame
                                local _RightVector2 = _CFrame2.RightVector
                                local v377 = _CFrame2.Position + _RightVector2 * 3

                                _HumanoidRootPart10.CFrame = CFrame.new(v377)
                            end
                        end
                    else
                        return
                    end
                else
                    return
                end
            end,
        })
        v28.ESP:AddParagraph({
            Title = 'Item ESP',
            Content = 'Show ESP for items in the world',
        })
        v28.ESP:AddDropdown('ItemESP', {
            Title = 'Select Items',
            Values = u39,
            Multi = true,
            Default = {},
            AllowNone = true,
        }):OnChanged(function(p378)
            u41 = {}

            local v379, v380, v381 = pairs(p378)

            while true do
                local v382

                v381, v382 = v379(v380, v381)

                if v381 == nil then
                    break
                end
                if v382 then
                    table.insert(u41, v381)
                end
            end

            if u43 then
                local v383, v384, v385 = ipairs(u39)

                while true do
                    local v386

                    v385, v386 = v383(v384, v385)

                    if v385 == nil then
                        break
                    end
                    if table.find(u41, v386) then
                        u185(v386, 'item')
                    else
                        u198(v386, 'item')
                    end
                end
            else
                local v387, v388, v389 = ipairs(u39)

                while true do
                    local v390

                    v389, v390 = v387(v388, v389)

                    if v389 == nil then
                        break
                    end

                    u198(v390, 'item')
                end
            end
        end)
        v28.ESP:AddToggle('EnableItemESP', {
            Title = 'Enable Item ESP',
            Default = false,
        }):OnChanged(function()
            u43 = _Options.EnableItemESP.Value

            local v391, v392, v393 = ipairs(u39)

            while true do
                local v394

                v393, v394 = v391(v392, v393)

                if v393 == nil then
                    break
                end
                if u43 and table.find(u41, v394) then
                    u185(v394, 'item')
                else
                    u198(v394, 'item')
                end
            end

            if u43 then
                local v395 = not u45.Items and workspace:FindFirstChild('Items')

                if v395 then
                    u45.Items = v395.ChildAdded:Connect(function(p396)
                        local v397 = table.find(u41, p396.Name) and (p396:IsA('BasePart') and p396 and p396 or p396:FindFirstChildWhichIsA('BasePart'))

                        if v397 then
                            createESPText(v397, p396.Name, Color3.fromRGB(0, 255, 0))
                        end
                    end)
                end
            elseif u45.Items then
                u45.Items:Disconnect()

                u45.Items = nil
            end
        end)
        v28.ESP:AddParagraph({
            Title = 'Entity ESP',
            Content = 'Show ESP for mobs and entities',
        })
        v28.ESP:AddDropdown('MobESP', {
            Title = 'Select Entities',
            Values = u40,
            Multi = true,
            Default = {},
            AllowNone = true,
        }):OnChanged(function(p398)
            u42 = {}

            local v399, v400, v401 = pairs(p398)

            while true do
                local v402

                v401, v402 = v399(v400, v401)

                if v401 == nil then
                    break
                end
                if v402 then
                    table.insert(u42, v401)
                end
            end

            if u44 then
                local v403, v404, v405 = ipairs(u40)

                while true do
                    local v406

                    v405, v406 = v403(v404, v405)

                    if v405 == nil then
                        break
                    end
                    if table.find(u42, v406) then
                        u185(v406, 'mob')
                    else
                        u198(v406, 'mob')
                    end
                end
            else
                local v407, v408, v409 = ipairs(u40)

                while true do
                    local v410

                    v409, v410 = v407(v408, v409)

                    if v409 == nil then
                        break
                    end

                    u198(v410, 'mob')
                end
            end
        end)
        v28.ESP:AddToggle('EnableMobESP', {
            Title = 'Enable Entity ESP',
            Default = false,
        }):OnChanged(function()
            u44 = _Options.EnableMobESP.Value

            local v411, v412, v413 = ipairs(u40)

            while true do
                local v414

                v413, v414 = v411(v412, v413)

                if v413 == nil then
                    break
                end
                if u44 and table.find(u42, v414) then
                    u185(v414, 'mob')
                else
                    u198(v414, 'mob')
                end
            end

            if u44 then
                local v415 = not u45.Mobs and workspace:FindFirstChild('Characters')

                if v415 then
                    u45.Mobs = v415.ChildAdded:Connect(function(p416)
                        local v417 = table.find(u42, p416.Name) and (p416:IsA('BasePart') and p416 and p416 or p416:FindFirstChildWhichIsA('BasePart'))

                        if v417 then
                            createESPText(v417, p416.Name, Color3.fromRGB(255, 255, 0))
                        end
                    end)
                end
            elseif u45.Mobs then
                u45.Mobs:Disconnect()

                u45.Mobs = nil
            end
        end)
        v28.Anti:AddParagraph({
            Title = 'Monster Defense',
            Content = 'Protect yourself',
        })
        v28.Anti:AddToggle('EscapeOwl', {
            Title = 'Escape From Owl',
            Default = false,
        }):OnChanged(function()
            if _Options.EscapeOwl.Value then
                local _HumanoidRootPart11 = (_LocalPlayer2.Character or _LocalPlayer2.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart')

                u94 = _RunService.RenderStepped:Connect(function()
                    pcall(function()
                        local _Characters = workspace:FindFirstChild('Characters')

                        if _Characters then
                            _Characters = workspace.Characters:FindFirstChild('Owl')
                        end
                        if _Characters and _Characters:FindFirstChild('HumanoidRootPart') then
                            local _Position2 = _HumanoidRootPart11.Position
                            local _Position3 = _Characters.HumanoidRootPart.Position

                            if (_Position2 - _Position3).Magnitude < u96 then
                                local _Unit = (_Position2 - _Position3).Unit

                                _HumanoidRootPart11.CFrame = _HumanoidRootPart11.CFrame + _Unit * u97
                            end
                        end
                    end)
                end)
            elseif u94 then
                u94:Disconnect()

                u94 = nil
            end
        end)
        v28.Anti:AddToggle('AutoStunDeer', {
            Title = 'Auto Stun Deer (Need Flashlight)',
            Default = false,
        }):OnChanged(function()
            if _Options.AutoStunDeer.Value then
                u93 = _RunService.RenderStepped:Connect(function()
                    pcall(function()
                        local _RemoteEvents = _ReplicatedStorage:FindFirstChild('RemoteEvents')

                        if _RemoteEvents then
                            _RemoteEvents = _ReplicatedStorage.RemoteEvents:FindFirstChild('DeerHitByTorch')
                        end

                        local _Characters2 = workspace:FindFirstChild('Characters')

                        if _Characters2 then
                            _Characters2 = workspace.Characters:FindFirstChild('Deer')
                        end
                        if _RemoteEvents and _Characters2 then
                            _RemoteEvents:InvokeServer(_Characters2)
                        end
                    end)
                    task.wait(0.1)
                end)
            elseif u93 then
                u93:Disconnect()

                u93 = nil
            end
        end)
        v28.Anti:AddToggle('EscapeDeer', {
            Title = 'Escape From Deer',
            Default = false,
        }):OnChanged(function()
            if _Options.EscapeDeer.Value then
                local _HumanoidRootPart12 = (_LocalPlayer2.Character or _LocalPlayer2.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart')

                u95 = _RunService.RenderStepped:Connect(function()
                    pcall(function()
                        local _Characters3 = workspace:FindFirstChild('Characters')

                        if _Characters3 then
                            _Characters3 = workspace.Characters:FindFirstChild('Deer')
                        end
                        if _Characters3 and _Characters3:FindFirstChild('HumanoidRootPart') then
                            local _Position4 = _HumanoidRootPart12.Position
                            local _Position5 = _Characters3.HumanoidRootPart.Position

                            if (_Position4 - _Position5).Magnitude < u98 then
                                local _Unit2 = (_Position4 - _Position5).Unit

                                _HumanoidRootPart12.CFrame = _HumanoidRootPart12.CFrame + _Unit2 * u99
                            end
                        end
                    end)
                end)
            elseif u95 then
                u95:Disconnect()

                u95 = nil
            end
        end)

        local function v431()
            local _ColorCorrection = _Lighting:FindFirstChild('ColorCorrection')

            if _ColorCorrection and not u84 then
                u84 = _ColorCorrection.Parent
            end
        end
        local function v432()
            if not u85.Brightness then
                u85.Brightness = _Lighting.Brightness
                u85.Ambient = _Lighting.Ambient
                u85.OutdoorAmbient = _Lighting.OutdoorAmbient
                u85.ShadowSoftness = _Lighting.ShadowSoftness
                u85.GlobalShadows = _Lighting.GlobalShadows
                u85.Technology = _Lighting.Technology
            end
        end

        (function()
            local _Sky = _Lighting:FindFirstChild('Sky')
            local _Bloom = _Lighting:FindFirstChild('Bloom')
            local _CampfireEffect = _Lighting:FindFirstChild('CampfireEffect')

            if _Sky and not u83.Sky then
                u83.Sky = _Sky.Parent
            end
            if _Bloom and not u83.Bloom then
                u83.Bloom = _Bloom.Parent
            end
            if _CampfireEffect and not u83.CampfireEffect then
                u83.CampfireEffect = _CampfireEffect.Parent
            end
        end)()
        v431()
        v432()
        v28.Visual:AddParagraph({
            Title = 'Visual Effects',
        })
        v28.Visual:AddToggle('DisableFog', {
            Title = 'Disable Fog',
            Default = false,
        }):OnChanged(function()
            if _Options.DisableFog.Value then
                local _Sky2 = _Lighting:FindFirstChild('Sky')
                local _Bloom2 = _Lighting:FindFirstChild('Bloom')
                local _CampfireEffect2 = _Lighting:FindFirstChild('CampfireEffect')

                if _Sky2 then
                    _Sky2.Parent = nil
                end
                if _Bloom2 then
                    _Bloom2.Parent = nil
                end
                if _CampfireEffect2 then
                    _CampfireEffect2.Parent = nil
                end
            else
                local _Sky3 = game:FindFirstChild('Sky', true)
                local _Bloom3 = game:FindFirstChild('Bloom', true)
                local _CampfireEffect3 = game:FindFirstChild('CampfireEffect', true)
                local v442 = _Sky3 or _Lighting:FindFirstChild('Sky')
                local v443 = _Bloom3 or _Lighting:FindFirstChild('Bloom')
                local v444 = _CampfireEffect3 or _Lighting:FindFirstChild('CampfireEffect')

                if v442 then
                    v442.Parent = u83.Sky or _Lighting
                end
                if v443 then
                    v443.Parent = u83.Bloom or _Lighting
                end
                if v444 then
                    v444.Parent = u83.CampfireEffect or _Lighting
                end
            end
        end)
        v28.Visual:AddToggle('DisableCampfireEffect', {
            Title = 'Disable Night Campfire Effect',
            Default = false,
        }):OnChanged(function()
            if _Options.DisableCampfireEffect.Value then
                local _ColorCorrection2 = _Lighting:FindFirstChild('ColorCorrection')

                if _ColorCorrection2 then
                    if not u84 then
                        u84 = _ColorCorrection2.Parent
                    end

                    _ColorCorrection2.Parent = nil
                end
            else
                local v446 = _Lighting:FindFirstChild('ColorCorrection') or game:FindFirstChild('ColorCorrection', true)

                if v446 then
                    v446.Parent = _Lighting
                end
            end
        end)
        v28.Visual:AddToggle('FullBright', {
            Title = 'Full Bright',
            Default = false,
        }):OnChanged(function()
            if _Options.FullBright.Value then
                _Lighting.ClockTime = 14
                _Lighting.Brightness = 2.2
                _Lighting.Ambient = Color3.new(1, 1, 1)
                _Lighting.OutdoorAmbient = Color3.new(1, 1, 1)
                _Lighting.ShadowSoftness = 0
                _Lighting.GlobalShadows = false
                _Lighting.Technology = Enum.Technology.Compatibility
            else
                _Lighting.Brightness = u85.Brightness
                _Lighting.Ambient = u85.Ambient
                _Lighting.OutdoorAmbient = u85.OutdoorAmbient
                _Lighting.ShadowSoftness = u85.ShadowSoftness
                _Lighting.GlobalShadows = u85.GlobalShadows
                _Lighting.Technology = u85.Technology
            end
        end)
        v28.Visual:AddToggle('NoFog', {
            Title = 'No Fog',
            Default = false,
        }):OnChanged(function()
            u86 = _Options.NoFog.Value

            if not u86 then
                _Lighting.ClockTime = 14
                _Lighting.GlobalShadows = false
                _Lighting.FogStart = _FogStart
                _Lighting.FogEnd = _FogEnd
            end
        end)
        _RunService.Heartbeat:Connect(function()
            if u86 and (_Lighting.FogStart ~= 100000 or _Lighting.FogEnd ~= 100000) then
                _Lighting.ClockTime = 14
                _Lighting.GlobalShadows = false
                _Lighting.FogStart = 100000
                _Lighting.FogEnd = 100000
            end
        end)

        if not v90 then
            local _ColorCorrectionEffect = Instance.new('ColorCorrectionEffect')

            _ColorCorrectionEffect.Name = 'VibrantEffect'
            _ColorCorrectionEffect.Saturation = 0.5
            _ColorCorrectionEffect.Contrast = 0.2
            _ColorCorrectionEffect.Brightness = 0.1
            _ColorCorrectionEffect.Enabled = false
            _ColorCorrectionEffect.Parent = _Lighting
        end

        v28.Visual:AddToggle('VibrantColors', {
            Title = 'Vibrant Colors',
            Default = false,
        }):OnChanged(function()
            if _Options.VibrantColors.Value then
                _Lighting.ClockTime = 14
                _Lighting.GlobalShadows = false
                _Lighting.Ambient = Color3.fromRGB(180, 180, 180)
                _Lighting.OutdoorAmbient = Color3.fromRGB(170, 170, 170)
                _Lighting.ColorShift_Top = Color3.fromRGB(255, 230, 200)
                _Lighting.ColorShift_Bottom = Color3.fromRGB(200, 240, 255)

                if u92 then
                    u92.Enabled = true
                end
            else
                if u92 then
                    u92.Enabled = false
                end

                _Lighting.ClockTime = 14
                _Lighting.GlobalShadows = false
                _Lighting.Ambient = Color3.new(0, 0, 0)
                _Lighting.OutdoorAmbient = Color3.new(0, 0, 0)
                _Lighting.ColorShift_Top = Color3.new(0, 0, 0)
                _Lighting.ColorShift_Bottom = Color3.new(0, 0, 0)
            end
        end)
        v28.Visual:AddButton({
            Title = 'FPS Boost',
            Callback = function()
                pcall(function()
                    settings().Rendering.QualityLevel = Enum.QualityLevel.Level01

                    local v448 = _Lighting

                    v448.Brightness = 1
                    v448.FogEnd = 1000000
                    v448.GlobalShadows = false
                    v448.EnvironmentDiffuseScale = 0
                    v448.EnvironmentSpecularScale = 0
                    v448.ClockTime = 14
                    v448.OutdoorAmbient = Color3.new(0, 0, 0)

                    local _Terrain = workspace:FindFirstChildOfClass('Terrain')

                    if _Terrain then
                        _Terrain.WaterWaveSize = 0
                        _Terrain.WaterWaveSpeed = 0
                        _Terrain.WaterReflectance = 0
                        _Terrain.WaterTransparency = 1
                    end

                    local v450, v451, v452 = ipairs(v448:GetDescendants())

                    while true do
                        local v453

                        v452, v453 = v450(v451, v452)

                        if v452 == nil then
                            break
                        end
                        if v453:IsA('PostEffect') or (v453:IsA('BloomEffect') or (v453:IsA('ColorCorrectionEffect') or (v453:IsA('SunRaysEffect') or v453:IsA('BlurEffect')))) then
                            v453.Enabled = false
                        end
                    end

                    local v454, v455, v456 = ipairs(game:GetDescendants())

                    while true do
                        local v457

                        v456, v457 = v454(v455, v456)

                        if v456 == nil then
                            break
                        end
                        if v457:IsA('ParticleEmitter') or v457:IsA('Trail') then
                            v457.Enabled = false
                        elseif v457:IsA('Texture') or v457:IsA('Decal') then
                            v457.Transparency = 1
                        end
                    end

                    local v458, v459, v460 = ipairs(workspace:GetDescendants())

                    while true do
                        local v461

                        v460, v461 = v458(v459, v460)

                        if v460 == nil then
                            break
                        end
                        if v461:IsA('BasePart') then
                            v461.CastShadow = false
                        end
                    end
                end)
                u16:Notify({
                    Title = 'FPS Boost',
                    Content = 'Roblox optimization applied',
                    Duration = 3,
                })
            end,
        })
        v17:SetLibrary(u16)
        v18:SetLibrary(u16)
        v17:IgnoreThemeSettings()
        v17:SetIgnoreIndexes({})
        v18:SetFolder('PeanutXHubx')
        v17:SetFolder('PeanutXHubx/99Nights')
        v18:BuildInterfaceSection(v28.Settings)
        v17:BuildConfigSection(v28.Settings)
        u27:SelectTab(1)
        v17:LoadAutoloadConfig()

        local _Players2 = game:GetService('Players')
        local _UserInputService2 = game:GetService('UserInputService')
        local _PlayerGui = _Players2.LocalPlayer:WaitForChild('PlayerGui')
        local v465 = _PlayerGui:FindFirstChild('MiniImageButtonGui') or Instance.new('ScreenGui')

        v465.Name = 'MiniImageButtonGui'
        v465.ResetOnSpawn = false
        v465.IgnoreGuiInset = true
        v465.Parent = _PlayerGui

        local u466 = v465:FindFirstChild('MinimizeImageButton') or Instance.new('ImageButton')

        u466.Name = 'MinimizeImageButton'
        u466.Size = UDim2.new(0, 50, 0, 50)
        u466.AnchorPoint = Vector2.new(0.5, 0.5)
        u466.Position = UDim2.new(0.32, 0, 0.28, 0)
        u466.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        u466.BackgroundTransparency = 0
        u466.Image = 'rbxassetid://57357690'
        u466.ScaleType = Enum.ScaleType.Fit
        u466.AutoButtonColor = false
        u466.ZIndex = 10
        u466.Parent = v465

        if not u466:FindFirstChild('UICorner') then
            local _UICorner = Instance.new('UICorner')

            _UICorner.CornerRadius = UDim.new(0, 16)
            _UICorner.Parent = u466
        end

        local u468 = false
        local u469 = nil
        local u470 = nil
        local u471 = false

        local function u477(p472, p473)
            local _ViewportSize = (workspace.CurrentCamera or workspace:WaitForChild('CurrentCamera')).ViewportSize
            local v475 = u466.AbsoluteSize.X / 2
            local v476 = u466.AbsoluteSize.Y / 2

            return math.clamp(p472, v475, _ViewportSize.X - v475), math.clamp(p473, v476, _ViewportSize.Y - v476)
        end
        local function u480(p478, p479)
            u466.Position = UDim2.new(0, p478, 0, p479)
        end

        u466.InputBegan:Connect(function(p481)
            if p481.UserInputType == Enum.UserInputType.MouseButton1 or p481.UserInputType == Enum.UserInputType.Touch then
                u468 = true
                u471 = false
                u469 = p481.Position

                local _AbsolutePosition = u466.AbsolutePosition
                local _AbsoluteSize = u466.AbsoluteSize

                u470 = Vector2.new(_AbsolutePosition.X + _AbsoluteSize.X * u466.AnchorPoint.X, _AbsolutePosition.Y + _AbsoluteSize.Y * u466.AnchorPoint.Y)

                p481.Changed:Connect(function()
                    if p481.UserInputState == Enum.UserInputState.End then
                        u468 = false
                    end
                end)
            end
        end)
        u466.InputChanged:Connect(function(p484)
            if p484.UserInputType == Enum.UserInputType.MouseMovement or p484.UserInputType == Enum.UserInputType.Touch then
                _UserInputService2.InputChanged:Connect(function(p485)
                    if u468 and p485 == p484 then
                        local v486 = p485.Position - u469

                        if v486.Magnitude > 5 then
                            u471 = true
                        end

                        local v487, v488 = u477(u470.X + v486.X, u470.Y + v486.Y)

                        u480(v487, v488)
                    end
                end)
            end
        end)
        u466.MouseButton1Click:Connect(function()
            if not u471 then
                if u27.Minimized then
                    u27:Minimize(false)
                else
                    u27:Minimize(true)
                end
            end
        end)
    end) then
        warn('Failed to load main script')
    end
end

if isfile(u3) then
    local v490 = readfile(u3)

    if v490 and v490 ~= '' then
        if u14((string.gsub(v490, '%s+', ''))) then
            print('Saved key is still valid, loading script...')
            u489()

            return
        end

        pcall(function()
            delfile(u3)
        end)
        print('Saved key expired, showing key input...')
    end
end

local _ScreenGui = Instance.new('ScreenGui', game.CoreGui)

_ScreenGui.Name = 'PeanutSystem'

local _Frame = Instance.new('Frame', _ScreenGui)

_Frame.Size = UDim2.new(0, 400, 0, 250)
_Frame.Position = UDim2.new(0.5, -200, 0.5, -125)
_Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
_Frame.BorderSizePixel = 0
_Frame.BackgroundTransparency = 0.1
Instance.new('UICorner', _Frame).CornerRadius = UDim.new(0, 8)

local _TextLabel2 = Instance.new('TextLabel', _Frame)

_TextLabel2.Size = UDim2.new(1, 0, 0, 50)
_TextLabel2.BackgroundTransparency = 1
_TextLabel2.Text = 'Peanut X'
_TextLabel2.TextColor3 = Color3.fromRGB(0, 255, 255)
_TextLabel2.Font = Enum.Font.GothamBold
_TextLabel2.TextScaled = true

local _TextBox = Instance.new('TextBox', _Frame)

_TextBox.Size = UDim2.new(0.8, 0, 0, 35)
_TextBox.Position = UDim2.new(0.1, 0, 0.35, 0)
_TextBox.PlaceholderText = 'Enter your key...'
_TextBox.Text = ''
_TextBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
_TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
_TextBox.Font = Enum.Font.Gotham
_TextBox.TextSize = 16
Instance.new('UICorner', _TextBox).CornerRadius = UDim.new(0, 6)

local _TextButton = Instance.new('TextButton', _Frame)

_TextButton.Size = UDim2.new(0.4, -5, 0, 30)
_TextButton.Position = UDim2.new(0.1, 0, 0.6, 0)
_TextButton.Text = 'Copy Link'
_TextButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
_TextButton.TextColor3 = Color3.fromRGB(200, 200, 200)
_TextButton.Font = Enum.Font.GothamMedium
_TextButton.TextSize = 14
Instance.new('UICorner', _TextButton).CornerRadius = UDim.new(0, 6)

local _TextButton2 = Instance.new('TextButton', _Frame)

_TextButton2.Size = UDim2.new(0.4, -5, 0, 30)
_TextButton2.Position = UDim2.new(0.5, 5, 0.6, 0)
_TextButton2.Text = 'Check Key'
_TextButton2.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
_TextButton2.TextColor3 = Color3.fromRGB(200, 200, 200)
_TextButton2.Font = Enum.Font.GothamMedium
_TextButton2.TextSize = 14
Instance.new('UICorner', _TextButton2).CornerRadius = UDim.new(0, 6)

local _TextLabel3 = Instance.new('TextLabel', _Frame)

_TextLabel3.Size = UDim2.new(0.8, 0, 0, 25)
_TextLabel3.Position = UDim2.new(0.1, 0, 0.8, 0)
_TextLabel3.Text = 'Enter new key or get one from the link above'
_TextLabel3.TextColor3 = Color3.fromRGB(255, 255, 255)
_TextLabel3.Font = Enum.Font.Gotham
_TextLabel3.TextScaled = true
_TextLabel3.BackgroundTransparency = 1

_TextButton.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(u2)
    elseif toclipboard then
        toclipboard(u2)
    elseif syn and syn.write_clipboard then
        syn.write_clipboard(u2)
    else
        warn('Error')
    end

    _TextLabel3.Text = 'Link copied to clipboard.'
    _TextLabel3.TextColor3 = Color3.fromRGB(0, 255, 0)

    wait(2)

    _TextLabel3.TextColor3 = Color3.fromRGB(255, 255, 255)
    _TextLabel3.Text = 'Enter new key or get one from the link above'
end)
_TextButton2.MouseButton1Click:Connect(function()
    local v498 = _TextBox.Text or ''
    local u499 = string.gsub(v498, '%s+', '')

    if u499 == '' then
        _TextLabel3.Text = 'Please enter your key.'
        _TextLabel3.TextColor3 = Color3.fromRGB(255, 0, 0)
    else
        _TextLabel3.Text = 'Checking key...'
        _TextLabel3.TextColor3 = Color3.fromRGB(255, 255, 0)

        if u14(u499) then
            _TextLabel3.Text = 'Key Valid! Loading Script...'
            _TextLabel3.TextColor3 = Color3.fromRGB(0, 255, 0)

            pcall(function()
                writefile(u3, u499)
            end)
            wait(1)
            u489()
            _ScreenGui:Destroy()
        else
            _TextLabel3.Text = 'Invalid key. Try again.'
            _TextLabel3.TextColor3 = Color3.fromRGB(255, 0, 0)
        end
    end
end)
_TextBox.FocusLost:Connect(function(p500)
    if p500 then
        _TextButton2.MouseButton1Click:Fire()
    end
end)
