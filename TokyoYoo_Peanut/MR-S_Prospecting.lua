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
local function u903()
    if not pcall(function()
        local v15 = readfile(u3)

        if v15 and v15 ~= '' then
            u10(string.gsub(v15, '%s+', ''))
        end

        local u16 = loadstring(Game:HttpGet('https://raw.githubusercontent.com/TokyoYoo/gga2/refs/heads/main/gg.lua', true))()
        local v17 = loadstring(game:HttpGet('https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua'))()
        local v18 = loadstring(game:HttpGet('https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua'))()
        local _Players = game:GetService('Players')

        game:GetService('UserInputService')
        game:GetService('RunService')

        local _HttpService2 = game:GetService('HttpService')
        local _BackpackTwo = game:GetService('Players').LocalPlayer.BackpackTwo
        local _LocalPlayer2 = _Players.LocalPlayer

        _G.AutoFarmSettings = _G.AutoFarmSettings or {}
        _G.EnabledCollecting = false
        _G.EnabledShake = false
        _G.EnabledEventFarm = false
        _G.AutoFarmState = nil
        _G.ConfigurationTable = {}
        _G.TotemState = _G.TotemState or {
            isPlacingTotems = false,
            lastEventCheck = 0,
            currentActiveEvents = {},
        }
        _G.EnabledGeodeFarm = false
        _G.MerchantState = _G.MerchantState or {
            purchasedItems = {},
            lastMerchantCheck = 0,
            merchantSessionId = nil,
        }
        _G.ChristmasState = _G.ChristmasState or {
            isActive = false,
            isAddingItems = false,
            isClaiming = false,
            itemsAdded = 0,
            currentPhase = 'Idle',
            isFarmingChristmas = false,
        }

        local u23 = 'PeanutZ9/AutoFarm'
        local u24 = u23 .. '/' .. 'AutoFarm_' .. _LocalPlayer2.Name .. '.json'
        local v25, v26, v27 = pairs(workspace.Map.Waypoints:GetChildren())
        local v28 = {}

        while true do
            local v29

            v27, v29 = v25(v26, v27)

            if v27 == nil then
                break
            end

            table.insert(v28, v29.Name)
        end

        local u30 = {
            AutoFarm = {
                AutoFarm = false,
                AutoEquipPan = false,
            },
            AutoSell = {
                Amount = 500,
                AutoSell = false,
                SellAllGamepass = false,
                AutoChangePan = false,
                SelectPanSell = nil,
            },
            AutoBuyRelic = {
                AutoBuyRelic = false,
                SelectedRelics = {},
                EnableMoneyPurchase = false,
                EnableShardPurchase = false,
            },
            Positions = {
                PanningPos = nil,
                ShakingPos = nil,
                SellPos1 = nil,
                SellPos2 = nil,
                SellPos3 = nil,
                SellPos4 = nil,
            },
            AutoInfernal = {
                AutoInfernal = false,
                InfernalPanningPos = {
                    703,
                    -97,
                    -2320,
                },
                InfernalShakingPos = {
                    705,
                    -99,
                    -2315,
                },
            },
            AutoVoid = {
                AutoVoid = false,
                VoidPanningPos = {
                    -3522,
                    -69,
                    8524,
                },
                VoidShakingPos = {
                    -3518,
                    -73,
                    8530,
                },
                VoidSellPos = {
                    -260,
                    25,
                    74,
                },
                VoidWaypoint = v28[1] or 'Fortune River',
            },
            Favorites = {
                Rarity = {
                    'Epic',
                    'Legendary',
                    'Mythic',
                    'Exotic',
                },
                RarityModifications = {},
                RarityMinWeight = 0,
                LockRarity = false,
                LockRarityModifications = false,
                LockRarityWeight = false,
                LockRarityModificationWeight = false,
                ItemNames = {},
                NameModifications = {},
                NameMinWeight = 0,
                LockItemNames = false,
                LockNameModifications = false,
                LockNameWeight = false,
                LockNameModificationWeight = false,
                Unlocklist = {},
                UnlockRarity = {},
                UnlockModifications = {},
                UnlockMaxWeight = 0,
            },
            Enchants = {
                EnchantsSelcted = {},
                AutoEnchants = false,
                ItemToEnchants = nil,
            },
            Webhook = {
                Url = '',
                Rarity_Webhook = {
                    'Epic',
                    'Legendary',
                    'Mythic',
                    'Exotic',
                },
                SendNotify_Rarity = false,
                Ping = false,
                AutoBuyWebhookNotify = false,
            },
            WalkSpeed = {
                Enabled = false,
                Speed = 22,
            },
            AutoTotem = {
                AutoTotem = false,
                TotemTypes = {
                    'Luck Totem',
                },
                EventTypes = {
                    'Meteor Shower',
                },
                TotemPosition = nil,
            },
            AutoGeode = {AutoGeode = false},
            Christmas = {
                AutoChristmas = false,
                MovementMethod = 'Walk',
                RarityFilter = {},
                MinWeight = 0,
                PanningPos = nil,
                ShakingPos = nil,
            },
        }

        function LoadSettings()
            if readfile and (isfile and isfile(u24)) then
                local v31 = _HttpService2:JSONDecode(readfile(u24))
                local v32, v33, v34 = pairs(u30)

                while true do
                    local v35

                    v34, v35 = v32(v33, v34)

                    if v34 == nil then
                        break
                    end
                    if v31[v34] ~= nil then
                        if type(v35) == 'table' then
                            local v36, v37, v38 = pairs(v35)
                            local v39 = v34

                            while true do
                                local v40

                                v38, v40 = v36(v37, v38)

                                if v38 == nil then
                                    break
                                end
                                if v31[v34][v38] == nil then
                                    v31[v34][v38] = v40
                                end
                            end

                            v34 = v39
                        end
                    else
                        v31[v34] = v35
                    end
                end

                _G.AutoFarmSettings = v31
            else
                _G.AutoFarmSettings = u30
            end
        end
        function SaveSettings()
            if writefile and makefolder then
                if not isfolder('PeanutZ9') then
                    makefolder('PeanutZ9')
                end
                if not isfolder(u23) then
                    makefolder(u23)
                end

                local v41 = _HttpService2:JSONEncode(_G.AutoFarmSettings)

                writefile(u24, v41)
            end
        end

        LoadSettings()

        local u42 = u16:CreateWindow({
            Title = 'Peanut X',
            SubTitle = 'v 4.0.0',
            TabWidth = 160,
            Size = UDim2.fromOffset(480, 360),
            Acrylic = true,
            Theme = 'Cloud',
            MinimizeKey = Enum.KeyCode.End,
        })
        local v43 = {
            Credit = u42:AddTab({
                Title = 'Logs',
                Icon = 'info',
            }),
            AutoFarm = u42:AddTab({
                Title = 'Auto Farm',
                Icon = 'home',
            }),
            AutoSell = u42:AddTab({
                Title = 'Auto Sell',
                Icon = 'shopping-cart',
            }),
            Christmas = u42:AddTab({
                Title = 'Christmas Event',
                Icon = 'gift',
            }),
            AutoInfernal = u42:AddTab({
                Title = 'Auto Farm Infernal Heart',
                Icon = 'flame',
            }),
            AutoVoid = u42:AddTab({
                Title = 'Auto Farm The Void',
                Icon = 'star',
            }),
            AutoTotem = u42:AddTab({
                Title = 'Auto Totem',
                Icon = 'home',
            }),
            Teleport = u42:AddTab({
                Title = 'Teleport',
                Icon = 'map',
            }),
            Item = u42:AddTab({
                Title = 'Favorites',
                Icon = 'info',
            }),
            Shop = u42:AddTab({
                Title = 'Shop',
                Icon = 'shopping-cart',
            }),
            Questz = u42:AddTab({
                Title = 'Quest',
                Icon = 'star',
            }),
            Webhook = u42:AddTab({
                Title = 'Webhook',
                Icon = 'send',
            }),
            Settings = u42:AddTab({
                Title = 'Settings',
                Icon = 'settings',
            }),
        }
        local _Options = u16.Options

        function GetCharacter()
            local v45 = _LocalPlayer2.Character or _LocalPlayer2.CharacterAdded:Wait()

            return v45, v45:WaitForChild('HumanoidRootPart', 5)
        end
        function WalkToWaypoint(p46, p47, _)
            if typeof(p46) == 'table' and #p46 > 0 then
                local v48

                if typeof(p46[1]) ~= 'number' then
                    v48 = table.concat(p46, ' ')
                else
                    v48 = p46[1] .. ', ' .. p46[2] .. ', ' .. p46[3]
                end

                local v49, v50, v51 = string.match(v48, '([%d%-%.]+), ([%d%-%.]+), ([%d%-%.]+)')

                if v49 and (v50 and v51) then
                    local v52 = Vector3.new(tonumber(v49), tonumber(v50), tonumber(v51))
                    local _Character = game.Players.LocalPlayer.Character
                    local _Humanoid = _Character:WaitForChild('Humanoid')
                    local _HumanoidRootPart = _Character:WaitForChild('HumanoidRootPart')
                    local u56 = true
                    local _Position = _HumanoidRootPart.Position
                    local u58 = 0
                    local u59 = 0

                    (function()
                        task.spawn(function()
                            while u56 and (_Options.AutoFarm.Value or _G.AutoFarmState.selling) do
                                wait(3)

                                local _Position2 = _HumanoidRootPart.Position

                                if (_Position2 - _Position).Magnitude >= 2 or tick() - u58 <= 5 then
                                    u59 = 0
                                else
                                    u59 = u59 + 1

                                    if u59 >= 2 then
                                        _Humanoid.Jump = true
                                        u58 = tick()
                                        u59 = 0
                                    end
                                end

                                _Position = _Position2
                            end
                        end)
                    end)()

                    local v61 = _Humanoid

                    _Humanoid.MoveTo(v61, v52)

                    local u62 = nil

                    u62 = _Humanoid.MoveToFinished:Connect(function(p63)
                        u56 = false

                        u62:Disconnect()

                        if p47 then
                            p47(p63)
                        end
                    end)

                    task.spawn(function()
                        wait(15)

                        if u56 then
                            u56 = false

                            if u62 then
                                u62:Disconnect()
                            end
                            if p47 then
                                p47(false)
                            end
                        end
                    end)
                end
            end
        end
        function MoveToPosition(p64, p65, p66, p67)
            if p66 or (not _Options.MoveMethod or _Options.MoveMethod.Value ~= 'Teleport') then
                WalkToWaypoint(p64, p65, p67)
            else
                local _, v68 = GetCharacter()

                if v68 and p64 then
                    local v69, v70, v71

                    if typeof(p64[1]) ~= 'number' then
                        local v72 = table.concat(p64, ' ')
                        local v73, v74, v75 = string.match(v72, '([%d%-%.]+), ([%d%-%.]+), ([%d%-%.]+)')

                        v69 = tonumber(v73)
                        v70 = tonumber(v74)
                        v71 = tonumber(v75)
                    else
                        v69 = p64[1]
                        v70 = p64[2]
                        v71 = p64[3]
                    end
                    if v69 and (v70 and v71) then
                        v68.CFrame = CFrame.new(v69, v70, v71)

                        if p65 then
                            p65(true)
                        end

                        return
                    end
                end
                if p65 then
                    p65(false)
                end
            end
        end
        function GetCurrentEquippedPan()
            local v76 = workspace.Characters:FindFirstChild(_LocalPlayer2.Name)
            local v77 = v76 and v76:FindFirstChildWhichIsA('Tool')

            if v77 and v77.Name:lower():find('pan') then
                return v77.Name
            else
                return nil
            end
        end
        function CheckEventActive()
            local v80, v80 = pcall(function()
                local _Text = workspace.Map.EventStuff.InfernalHeartTimer.BillboardGui.TextLabel.Text

                if _Text then
                    if _Text == '' then
                        _Text = false
                    else
                        _Text = _Text:find('m') or _Text:find('s')
                    end
                end

                return _Text
            end)
            local v82, v82 = pcall(function()
                return workspace.Map.EventStuff:FindFirstChild('VoidPortal') ~= nil
            end)
            local v83 = {}

            v83.infernal = v80
            v83.void = v82

            return v83
        end
        function FastTravelTo(p84)
            local v85 = {
                workspace:WaitForChild('Map'):WaitForChild('Waypoints'):WaitForChild('Fortune River'),
                workspace:WaitForChild('Map'):WaitForChild('Waypoints'):WaitForChild(p84),
            }

            game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('Misc'):WaitForChild('FastTravel'):FireServer(unpack(v85))
        end
        function TeleportToVoid()
            local _VoidPortal = workspace.Map.EventStuff:FindFirstChild('VoidPortal')

            if not _VoidPortal then
                u16:Notify({
                    Title = 'Void Portal Not Found',
                    Content = 'VoidPortal not available',
                    Duration = 2,
                })

                return false
            end

            local _Part = _VoidPortal:FindFirstChild('Part')
            local _, v88 = GetCharacter()

            if not v88 then
                return false
            end
            if pcall(function()
                return workspace.Deposits['The Void'].Part ~= nil
            end) then
                return true
            end
            if not (_Part and _Part:FindFirstChild('TouchInterest')) then
                v88.CFrame = CFrame.new(-359.5, 10.239999771118164, -135.5)

                task.wait(1)

                return true
            end

            v88.CFrame = _Part.CFrame

            task.wait(0.2)
            firetouchinterest(v88, _Part, 0)
            task.wait(0.2)
            firetouchinterest(v88, _Part, 1)
            task.wait(1)

            return pcall(function()
                return workspace.Deposits['The Void'].Part ~= nil
            end)
        end
        function IsPlayerInVoid()
            local v90, v90 = pcall(function()
                return workspace.Deposits['The Void'].Part ~= nil
            end)

            return v90
        end
        function HandleVoidEventTransition()
            local v91 = CheckEventActive()
            local v92 = _G.AutoFarmState.lastVoidStatus == true and v91.void == false

            _G.AutoFarmState.lastVoidStatus = v91.void

            if v92 and _G.AutoFarmState.wasInVoidEvent then
                print('The Void Ended')

                _G.EnabledCollecting = false
                _G.EnabledShake = false
                _G.EnabledEventFarm = false

                task.wait(3)

                local v93 = 0
                local v94 = 5

                while IsPlayerInVoid() and v93 < v94 do
                    task.wait(1)

                    v93 = v93 + 1
                end

                if IsPlayerInVoid() then
                    print('Still stuck in void')
                else
                    task.wait(1)
                    FastTravelTo(_Options.VoidWaypoint.Value or _G.AutoFarmSettings.AutoVoid.VoidWaypoint)
                    task.wait(3)

                    _G.AutoFarmState.wasInVoidEvent = false

                    print('Returned to Waypoint')
                end
            end
        end
        function ExitVoid()
            local _TheVoid = workspace.Map.EventStuff:FindFirstChild('The Void')

            if _TheVoid and _TheVoid:FindFirstChild('Model') and (_TheVoid.Model:FindFirstChild('ExitPortal') and _TheVoid.Model.ExitPortal:FindFirstChild('TouchInterest')) then
                local _, v96 = GetCharacter()

                if v96 then
                    v96.CFrame = _TheVoid.Model.ExitPortal.CFrame

                    task.wait(0.3)
                    firetouchinterest(v96, _TheVoid.Model.ExitPortal, 0)
                    task.wait(0.3)
                    firetouchinterest(v96, _TheVoid.Model.ExitPortal, 1)
                end
            end
        end
        function SendMessageEMBED(p97, p98)
            local _HttpService3 = game:GetService('HttpService')
            local v100 = {
                content = p98.content or '',
            }
            local v101 = {}
            local v102 = {
                title = p98.title or '',
                description = p98.description or '',
                color = p98.color or 0,
                thumbnail = {
                    url = p98.thumbnail and (p98.thumbnail.url or '') or '',
                },
                image = {
                    url = p98.image and (p98.image.url or '') or '',
                },
                fields = p98.fields or {},
                footer = {
                    text = p98.footer and p98.footer.text or '',
                },
            }

            __set_list(v101, 1, {v102})

            v100.embeds = v101

            local v103 = {
                Url = p97,
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json',
                },
                Body = _HttpService3:JSONEncode(v100),
            }

            request(v103)
        end
        function FindTotemInBackpack(p104)
            local _BackpackTwo2 = _LocalPlayer2.BackpackTwo
            local v106, v107, v108 = pairs(_BackpackTwo2:GetChildren())

            while true do
                local v109

                v108, v109 = v106(v107, v108)

                if v108 == nil then
                    break
                end
                if v109:IsA('Tool') and v109.Name == p104 then
                    return v109
                end
            end

            return nil
        end
        function GetAvailableTotems(p110)
            local _BackpackTwo3 = _LocalPlayer2.BackpackTwo
            local v112, v113, v114 = pairs(p110)
            local v115 = {}
            local v116 = {}

            while true do
                local v117

                v114, v117 = v112(v113, v114)

                if v114 == nil then
                    break
                end

                v115[v117] = true
            end

            local v118, v119, v120 = pairs(_BackpackTwo3:GetChildren())

            while true do
                local v121

                v120, v121 = v118(v119, v120)

                if v120 == nil then
                    break
                end
                if v121:IsA('Tool') and v115[v121.Name] then
                    table.insert(v116, v121)
                end
            end

            return v116
        end
        function UnequipCurrentTool()
            local _Character2 = _LocalPlayer2.Character

            if _Character2 then
                return not _Character2:FindFirstChildOfClass('Tool') and true or pcall(function()
                    game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CustomBackpack'):WaitForChild('UnequipRemote'):FireServer()
                end)
            else
                return false
            end
        end
        function EquipTotemByRemote(p123)
            if p123 then
                return pcall(function()
                    local v124 = {p123}

                    game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CustomBackpack'):WaitForChild('EquipRemote'):FireServer(unpack(v124))
                end)
            else
                return false
            end
        end
        function GetEquippedTotem()
            local v125 = workspace.Characters:FindFirstChild(_LocalPlayer2.Name)

            if not v125 then
                return nil
            end

            local v126, v127, v128 = pairs(v125:GetChildren())

            while true do
                local v129

                v128, v129 = v126(v127, v128)

                if v128 == nil then
                    break
                end
                if v129:IsA('Tool') and (v129.Name:find('Totem') or v129.Name:find('totem')) then
                    return v129
                end
            end

            return nil
        end
        function PlaceCurrentTotem()
            local u130 = GetEquippedTotem()

            if u130 then
                if pcall(function()
                    u130:Activate()
                end) then
                    task.wait(0.5)

                    local v131 = GetEquippedTotem()

                    if v131 and v131.Name == u130.Name then
                        return false, 'Totem placement failed'
                    else
                        return true, 'Totem placed successfully'
                    end
                else
                    return false, 'Failed to activate totem'
                end
            else
                return false, 'No totem equipped'
            end
        end
        function ExecuteTotemPlacement()
            if _G.AutoFarmSettings.AutoTotem.TotemPosition then
                _G.TotemState.isPlacingTotems = true
                _G.EnabledCollecting = false
                _G.EnabledShake = false

                local v132 = _G.AutoFarmSettings.AutoTotem.TotemTypes or {}
                local u133 = GetAvailableTotems(v132)

                if #u133 ~= 0 then
                    MoveToPosition(_G.AutoFarmSettings.AutoTotem.TotemPosition, function(p134)
                        if p134 then
                            task.wait(0.5)

                            local _AutoEquipPan = _Options.AutoEquipPan

                            if _AutoEquipPan then
                                _AutoEquipPan = _Options.AutoEquipPan.Value
                            end
                            if _AutoEquipPan then
                                _Options.AutoEquipPan:SetValue(false)
                            end

                            local v136, v137, v138 = ipairs(u133)
                            local v139 = {}
                            local v140 = {}

                            while true do
                                local v141

                                v138, v141 = v136(v137, v138)

                                if v138 == nil then
                                    break
                                end

                                UnequipCurrentTool()
                                task.wait(0.3)

                                if EquipTotemByRemote(v141) then
                                    task.wait(0.5)

                                    local v142 = GetEquippedTotem()

                                    if v142 and v142.Name == v141.Name then
                                        local v143, v144 = PlaceCurrentTotem()

                                        if v143 then
                                            table.insert(v140, v141.Name)
                                            u16:Notify({
                                                Title = 'Totem Placed',
                                                Content = v141.Name .. ' placed successfully',
                                                Duration = 2,
                                            })
                                        else
                                            table.insert(v139, v141.Name)
                                            print('Failed to place ' .. v141.Name .. ': ' .. v144)
                                        end
                                    else
                                        table.insert(v139, v141.Name)
                                        print('Failed to equip ' .. v141.Name .. ' properly')
                                    end
                                else
                                    table.insert(v139, v141.Name)
                                    print('Failed to equip ' .. v141.Name)
                                end
                                if v138 < #u133 then
                                    task.wait(1.5)
                                end
                            end

                            _G.TotemState.isPlacingTotems = false

                            if _AutoEquipPan then
                                task.wait(1)
                                _Options.AutoEquipPan:SetValue(true)
                            end
                            if #v140 > 0 then
                                u16:Notify({
                                    Title = 'Totems Placed Successfully',
                                    Content = 'Placed: ' .. table.concat(v140, ', '),
                                    Duration = 5,
                                })
                            end
                            if #v139 > 0 then
                                u16:Notify({
                                    Title = 'Some Totems Failed',
                                    Content = 'Failed: ' .. table.concat(v139, ', '),
                                    Duration = 5,
                                })
                            end

                            task.wait(2)
                        else
                            u16:Notify({
                                Title = 'Movement Failed',
                                Content = 'Could not reach totem position',
                                Duration = 3,
                            })

                            _G.TotemState.isPlacingTotems = false
                        end
                    end)
                else
                    u16:Notify({
                        Title = 'No Totems Found',
                        Content = 'No required totems found in backpack',
                        Duration = 3,
                    })

                    _G.TotemState.isPlacingTotems = false
                end
            else
                u16:Notify({
                    Title = 'No Position Set',
                    Content = 'Please set totem position first',
                    Duration = 3,
                })

                return
            end
        end
        function CheckTotemEvents()
            local u145 = false
            local u146 = false

            pcall(function()
                u145 = game:GetService('Players').LocalPlayer.PlayerGui.MainUI.Boosts['Meteor Shower'] and true or false
            end)
            pcall(function()
                local _Part2 = workspace.Map.EventStuff.RiverRapidParticles:FindFirstChild('Part')

                if _Part2 and _Part2:FindFirstChild('Particle') then
                    u146 = _Part2.Particle.Enabled
                end
            end)

            return {
                meteor = u145,
                riverRapid = u146,
            }
        end
        function ShouldStopFarmingForTotem()
            if _G.EnabledEventFarm then
                return false
            end
            if not (_Options.AutoTotem and _Options.AutoTotem.Value) then
                return false
            end
            if _G.AutoFarmState.selling or _G.TotemState.isPlacingTotems then
                return false
            end
            if not _G.AutoFarmSettings.AutoTotem.TotemPosition then
                return false
            end

            local v148 = _G.AutoFarmSettings.AutoTotem.TotemTypes or {}

            if #v148 == 0 then
                return false
            end

            local v149 = CheckTotemEvents()
            local v150 = _G.AutoFarmSettings.AutoTotem.EventTypes or {}

            if #GetAvailableTotems(v148) == 0 then
                return false
            end

            local v151, v152, v153 = pairs(v150)

            while true do
                local v154

                v153, v154 = v151(v152, v153)

                if v153 == nil then
                    break
                end
                if v154 == 'Meteor Shower' and v149.meteor then
                    if not _G.TotemState.currentActiveEvents.meteor then
                        _G.TotemState.currentActiveEvents.meteor = true

                        return true
                    end
                elseif v154 == 'River Rapid' and (v149.riverRapid and not _G.TotemState.currentActiveEvents.riverRapid) then
                    _G.TotemState.currentActiveEvents.riverRapid = true

                    return true
                end
            end

            if not v149.meteor then
                _G.TotemState.currentActiveEvents.meteor = nil
            end
            if not v149.riverRapid then
                _G.TotemState.currentActiveEvents.riverRapid = nil
            end

            return false
        end
        function HandleTotemLogicInMainLoop()
            if not ShouldStopFarmingForTotem() then
                return false
            end

            ExecuteTotemPlacement()

            return true
        end
        function GetPlayerMoney()
            local v155, v156 = pcall(function()
                return game:GetService('Players').LocalPlayer.leaderstats.Money.Value
            end)

            return v155 and v156 and v156 or 0
        end
        function GetPlayerShards()
            local v157, v158 = pcall(function()
                return game:GetService('Players').LocalPlayer.PlayerGui.MainUI.BottomRight.ShardDisplay.TextLabel.Text
            end)

            if not (v157 and v158) then
                return 0
            end

            local v159 = v158:gsub(',', '')

            return tonumber(v159) or 0
        end
        function GetRelicShopItem(p160)
            local u161 = nil
            local u162 = 0
            local u163 = 0

            pcall(function()
                local v164 = workspace.Purchasable:FindFirstChild(p160)
                local v165 = v164 and v164:FindFirstChild('ShopItem')

                if v165 then
                    u161 = v165
                    u162 = v165:GetAttribute('Price') or 0
                    u163 = v165:GetAttribute('ShardPrice') or 0
                end
            end)

            return u161, u162, u163
        end
        function CanAffordRelic(p166, p167)
            local v168 = GetPlayerMoney()
            local v169 = GetPlayerShards()
            local _EnableMoneyPurchase = _G.AutoFarmSettings.AutoBuyRelic.EnableMoneyPurchase
            local _EnableShardPurchase = _G.AutoFarmSettings.AutoBuyRelic.EnableShardPurchase

            if _EnableMoneyPurchase or _EnableShardPurchase then
                if 0 < p166 and (p167 == 0 or p167 == nil) then
                    if _EnableMoneyPurchase then
                        _EnableMoneyPurchase = p166 <= v168
                    end

                    return _EnableMoneyPurchase
                elseif (p166 == 0 or p166 == nil) and p167 > 0 then
                    if _EnableShardPurchase then
                        _EnableShardPurchase = p167 <= v169
                    end

                    return _EnableShardPurchase
                elseif 0 < p166 and 0 < p167 then
                    return _EnableMoneyPurchase and p166 <= v168 and true or (_EnableShardPurchase and p167 <= v169 and true or false)
                else
                    return false
                end
            else
                return false
            end
        end
        function CheckMerchantSession()
            local v172 = tick()

            if v172 - _G.MerchantState.lastMerchantCheck < 30 then
                return false
            end

            _G.MerchantState.lastMerchantCheck = v172

            local u173 = 0
            local u174 = {}

            pcall(function()
                local v175, v176, v177 = pairs(workspace.Purchasable:GetChildren())

                while true do
                    local v178

                    v177, v178 = v175(v176, v177)

                    if v177 == nil then
                        break
                    end
                    if v178:FindFirstChild('ShopItem') then
                        u173 = u173 + 1

                        table.insert(u174, v178.Name)
                    end
                end
            end)

            local v179 = table.concat(u174, ',')

            if _G.MerchantState.merchantSessionId ~= v179 then
                _G.MerchantState.merchantSessionId = v179
                _G.MerchantState.purchasedItems = {}

                if u173 > 0 then
                    u16:Notify({
                        Title = 'New Merchant Session',
                        Content = 'Merchant refreshed with ' .. u173 .. ' items',
                        Duration = 3,
                    })

                    return true
                end
            end

            return false
        end
        function WasAlreadyPurchased(p180)
            return _G.MerchantState.purchasedItems[p180] == true
        end
        function MarkAsPurchased(p181)
            _G.MerchantState.purchasedItems[p181] = true
        end
        function BuyRelic(p182, p183, p184, p185)
            if WasAlreadyPurchased(p183) then
                return false, 'Already purchased this session'
            end

            local v186, v187 = pcall(function()
                game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('Shop'):WaitForChild('BuyItem'):InvokeServer(p182)
            end)

            if not v186 then
                u16:Notify({
                    Title = 'Auto Buy Failed',
                    Content = 'Failed to purchase: ' .. p183 .. ' (' .. tostring(v187) .. ')',
                    Duration = 5,
                })

                return false, tostring(v187)
            end

            MarkAsPurchased(p183)

            local v188

            if p184 > 0 then
                v188 = '$' .. p184
            else
                v188 = p185 <= 0 and 'Free' or p185 .. ' Shards'
            end

            u16:Notify({
                Title = 'Auto Buy Success',
                Content = 'Purchased: ' .. p183 .. ' for ' .. v188,
                Duration = 5,
            })

            if _Options.AutoBuyWebhookNotify and (_Options.AutoBuyWebhookNotify.Value and (_G.AutoFarmSettings.Webhook.Url and _G.AutoFarmSettings.Webhook.Url ~= '')) then
                local v189 = {
                    title = 'Auto Buy Merchants',
                    description = '**Item**: ' .. p183 .. '\n**Price**: ' .. v188 .. '\n**Money Left**: $' .. GetPlayerMoney() .. '\n**Shards Left**: ' .. GetPlayerShards(),
                    color = 65280,
                    footer = {
                        text = 'Auto Buy System - ' .. os.date('%H:%M:%S'),
                    },
                }

                SendMessageEMBED(_G.AutoFarmSettings.Webhook.Url, v189)
            end

            return true
        end
        function LockItemIfMatchesRarity(p190)
            if p190:IsA('Tool') then
                local _Rarity = p190:GetAttribute('Rarity')
                local _Locked = p190:GetAttribute('Locked')
                local _ItemData = p190:FindFirstChild('ItemData')

                if _Options.LockRarityToggle.Value and _Rarity then
                    local v194, v195, v196 = ipairs(_G.AutoFarmSettings.Favorites.Rarity)
                    local v197 = {}

                    while true do
                        local v198

                        v196, v198 = v194(v195, v196)

                        if v196 == nil then
                            break
                        end

                        v197[v198] = true
                    end

                    if v197[_Rarity] and (_Locked == nil or _Locked == false) then
                        game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('Inventory'):WaitForChild('ToggleLock'):FireServer(p190)

                        return
                    end
                end
                if _Options.LockRarityModificationsToggle.Value and (_Rarity and _ItemData) then
                    local v199, v200, v201 = ipairs(_G.AutoFarmSettings.Favorites.Rarity)
                    local v202 = {}

                    while true do
                        local v203

                        v201, v203 = v199(v200, v201)

                        if v201 == nil then
                            break
                        end

                        v202[v203] = true
                    end

                    local _Modifier = _ItemData:GetAttribute('Modifier')

                    if _Modifier then
                        local v205, v206, v207 = ipairs(_G.AutoFarmSettings.Favorites.RarityModifications)
                        local v208 = {}

                        while true do
                            local v209

                            v207, v209 = v205(v206, v207)

                            if v207 == nil then
                                break
                            end

                            v208[v209] = true
                        end

                        if v202[_Rarity] and (v208[_Modifier] and (_Locked == nil or _Locked == false)) then
                            game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('Inventory'):WaitForChild('ToggleLock'):FireServer(p190)

                            return
                        end
                    end
                end
                if _Options.LockRarityWeightToggle.Value and (_Rarity and _ItemData) then
                    local v210, v211, v212 = ipairs(_G.AutoFarmSettings.Favorites.Rarity)
                    local v213 = {}

                    while true do
                        local v214

                        v212, v214 = v210(v211, v212)

                        if v212 == nil then
                            break
                        end

                        v213[v214] = true
                    end

                    local _Weight = _ItemData:GetAttribute('Weight')
                    local v216 = _G.AutoFarmSettings.Favorites.RarityMinWeight or 0

                    if v213[_Rarity] and (_Weight and (v216 <= _Weight and (_Locked == nil or _Locked == false))) then
                        game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('Inventory'):WaitForChild('ToggleLock'):FireServer(p190)

                        return
                    end
                end
                if _Options.LockRarityModificationWeightToggle and (_Options.LockRarityModificationWeightToggle.Value and (_Rarity and _ItemData)) then
                    local v217, v218, v219 = ipairs(_G.AutoFarmSettings.Favorites.Rarity)
                    local v220 = {}

                    while true do
                        local v221

                        v219, v221 = v217(v218, v219)

                        if v219 == nil then
                            break
                        end

                        v220[v221] = true
                    end

                    local _Modifier2 = _ItemData:GetAttribute('Modifier')
                    local _Weight2 = _ItemData:GetAttribute('Weight')
                    local v224 = _G.AutoFarmSettings.Favorites.RarityMinWeight or 0

                    if _Modifier2 then
                        local v225, v226, v227 = ipairs(_G.AutoFarmSettings.Favorites.RarityModifications)
                        local v228 = {}

                        while true do
                            local v229

                            v227, v229 = v225(v226, v227)

                            if v227 == nil then
                                break
                            end

                            v228[v229] = true
                        end

                        if v220[_Rarity] and (v228[_Modifier2] and (_Weight2 and (v224 <= _Weight2 and (_Locked == nil or _Locked == false)))) then
                            game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('Inventory'):WaitForChild('ToggleLock'):FireServer(p190)

                            return
                        end
                    end
                end
            end
        end
        function LockItemIfMatchesName(p230)
            if p230:IsA('Tool') then
                local _Locked2 = p230:GetAttribute('Locked')
                local _ItemData2 = p230:FindFirstChild('ItemData')

                if _Options.LockItemNamesToggle.Value then
                    local v233, v234, v235 = ipairs(_G.AutoFarmSettings.Favorites.ItemNames)
                    local v236 = {}

                    while true do
                        local v237

                        v235, v237 = v233(v234, v235)

                        if v235 == nil then
                            break
                        end

                        v236[v237] = true
                    end

                    if v236[p230.Name] and (_Locked2 == nil or _Locked2 == false) then
                        game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('Inventory'):WaitForChild('ToggleLock'):FireServer(p230)

                        return
                    end
                end
                if _Options.LockNameModificationsToggle.Value and _ItemData2 then
                    local v238, v239, v240 = ipairs(_G.AutoFarmSettings.Favorites.ItemNames)
                    local v241 = {}

                    while true do
                        local v242

                        v240, v242 = v238(v239, v240)

                        if v240 == nil then
                            break
                        end

                        v241[v242] = true
                    end

                    local _Modifier3 = _ItemData2:GetAttribute('Modifier')

                    if _Modifier3 then
                        local v244, v245, v246 = ipairs(_G.AutoFarmSettings.Favorites.NameModifications)
                        local v247 = {}

                        while true do
                            local v248

                            v246, v248 = v244(v245, v246)

                            if v246 == nil then
                                break
                            end

                            v247[v248] = true
                        end

                        if v241[p230.Name] and (v247[_Modifier3] and (_Locked2 == nil or _Locked2 == false)) then
                            game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('Inventory'):WaitForChild('ToggleLock'):FireServer(p230)

                            return
                        end
                    end
                end
                if _Options.LockNameWeightToggle.Value and _ItemData2 then
                    local v249, v250, v251 = ipairs(_G.AutoFarmSettings.Favorites.ItemNames)
                    local v252 = {}

                    while true do
                        local v253

                        v251, v253 = v249(v250, v251)

                        if v251 == nil then
                            break
                        end

                        v252[v253] = true
                    end

                    local _Weight3 = _ItemData2:GetAttribute('Weight')
                    local v255 = _G.AutoFarmSettings.Favorites.NameMinWeight or 0

                    if v252[p230.Name] and (_Weight3 and (v255 <= _Weight3 and (_Locked2 == nil or _Locked2 == false))) then
                        game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('Inventory'):WaitForChild('ToggleLock'):FireServer(p230)

                        return
                    end
                end
                if _Options.LockNameModificationWeightToggle and (_Options.LockNameModificationWeightToggle.Value and _ItemData2) then
                    local v256, v257, v258 = ipairs(_G.AutoFarmSettings.Favorites.ItemNames)
                    local v259 = {}

                    while true do
                        local v260

                        v258, v260 = v256(v257, v258)

                        if v258 == nil then
                            break
                        end

                        v259[v260] = true
                    end

                    local _Modifier4 = _ItemData2:GetAttribute('Modifier')
                    local _Weight4 = _ItemData2:GetAttribute('Weight')
                    local v263 = _G.AutoFarmSettings.Favorites.NameMinWeight or 0

                    if _Modifier4 then
                        local v264, v265, v266 = ipairs(_G.AutoFarmSettings.Favorites.NameModifications)
                        local v267 = {}

                        while true do
                            local v268

                            v266, v268 = v264(v265, v266)

                            if v266 == nil then
                                break
                            end

                            v267[v268] = true
                        end

                        if v259[p230.Name] and (v267[_Modifier4] and (_Weight4 and (v263 <= _Weight4 and (_Locked2 == nil or _Locked2 == false)))) then
                            game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('Inventory'):WaitForChild('ToggleLock'):FireServer(p230)

                            return
                        end
                    end
                end
            end
        end
        function GetChristmasStatus()
            local v271, v272, v273, v274 = pcall(function()
                local _Text2 = workspace.Map.NorthPole['Christmas Delivery'].Display.Progress.Text
                local _Progressd10 = _Text2:match('Progress: (%d+)/10')

                if _Progressd10 then
                    return 'Adding', tonumber(_Progressd10), 10
                elseif _Text2:find('Delivering') then
                    return 'Delivering', nil, nil
                elseif _Text2 == 'Ready!' then
                    return 'Ready', nil, nil
                else
                    return 'Unknown', nil, nil
                end
            end)

            if v271 then
                return v272, v273, v274
            else
                return 'Error', nil, nil
            end
        end
        function FindChristmasItems()
            local _BackpackTwo4 = _LocalPlayer2.BackpackTwo
            local v276, v277, v278 = pairs(_G.AutoFarmSettings.Christmas.RarityFilter or {})
            local v279 = {}
            local v280 = false
            local v281 = {}

            while true do
                local v282

                v278, v282 = v276(v277, v278)

                if v278 == nil then
                    break
                end

                v279[v282] = true
                v280 = true
            end

            local v283 = _G.AutoFarmSettings.Christmas.MinWeight or 0
            local v284, v285, v286 = pairs(_BackpackTwo4:GetChildren())

            while true do
                local v287

                v286, v287 = v284(v285, v286)

                if v286 == nil then
                    break
                end
                if v287:IsA('Tool') then
                    local _ItemData3 = v287:FindFirstChild('ItemData')

                    if v280 then
                        local _Rarity2 = v287:GetAttribute('Rarity')
                        local v290 = _ItemData3 and _ItemData3:GetAttribute('Weight') or 0

                        if _Rarity2 then
                            _Rarity2 = v279[_Rarity2]
                        end
                        if _Rarity2 and v283 <= v290 then
                            table.insert(v281, v287)
                        end
                    else
                        table.insert(v281, v287)
                    end
                end
            end

            return v281
        end
        function MoveToChristmasPosition(p291, p292)
            if _Options.ChristmasMovementMethod.Value ~= 'Teleport' then
                WalkToWaypoint(p291, p292, false)
            else
                local _, v293 = GetCharacter()

                if v293 and p291 then
                    local v294, v295, v296

                    if typeof(p291[1]) ~= 'number' then
                        local v297 = table.concat(p291, ' ')
                        local v298, v299, v300 = string.match(v297, '([%d%-%.]+), ([%d%-%.]+), ([%d%-%.]+)')

                        v294 = tonumber(v298)
                        v295 = tonumber(v299)
                        v296 = tonumber(v300)
                    else
                        v294 = p291[1]
                        v295 = p291[2]
                        v296 = p291[3]
                    end
                    if v294 and (v295 and v296) then
                        v293.CFrame = CFrame.new(v294, v295, v296)

                        task.wait(0.3)

                        if p292 then
                            p292(true)
                        end

                        return
                    end
                end
                if p292 then
                    p292(false)
                end
            end
        end
        function AddItemToChristmas(p301)
            return pcall(function()
                local _Character3 = _LocalPlayer2.Character
                local _Prompt = workspace.Map.NorthPole['Christmas Delivery'].Prompt
                local _EquipRemote = game:GetService('ReplicatedStorage').Remotes.CustomBackpack.EquipRemote

                p301.Parent = _Character3

                task.wait(0.2)

                local v305 = {p301}

                _EquipRemote:FireServer(unpack(v305))
                task.wait(0.5)
                fireproximityprompt(_Prompt)
                task.wait(0.8)
            end)
        end
        function ClaimChristmas()
            local v306 = pcall(function()
                game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('TemporaryEvents'):WaitForChild('ClaimCauldron'):InvokeServer()
            end)

            if v306 then
                u16:Notify({
                    Title = 'Christmas Claimed',
                    Content = 'Successfully claimed Christmas rewards!',
                    Duration = 3,
                })
            else
                u16:Notify({
                    Title = 'Claim Failed',
                    Content = 'Failed to claim Christmas delivery',
                    Duration = 3,
                })
            end

            return v306
        end
        function ExecuteAutoChristmas()
            if _Options.AutoChristmas and _Options.AutoChristmas.Value then
                if not (_G.AutoFarmState.selling or _G.TotemState.isPlacingTotems) then
                    local v307, v308, _ = GetChristmasStatus()

                    _G.ChristmasState.currentPhase = v307

                    if v307 == 'Adding' then
                        local v309 = FindChristmasItems()
                        local v310 = 10 - (v308 or 0)

                        if #v309 > 0 and (0 < v310 and not _G.ChristmasState.isAddingItems) then
                            _G.ChristmasState.isAddingItems = true

                            local _EnabledCollecting = _G.EnabledCollecting
                            local _EnabledShake = _G.EnabledShake

                            _G.EnabledCollecting = false
                            _G.EnabledShake = false

                            local _ChristmasAutoEquipPan = _Options.ChristmasAutoEquipPan

                            if _ChristmasAutoEquipPan then
                                _ChristmasAutoEquipPan = _Options.ChristmasAutoEquipPan.Value
                            end
                            if _ChristmasAutoEquipPan then
                                _Options.ChristmasAutoEquipPan:SetValue(false)
                            end

                            task.wait(0.5)

                            local v314 = math.min(#v309, v310)
                            local v315 = 0

                            for v316 = 1, v314 do
                                local v317 = v309[v316]

                                if v317 then
                                    if v317.Parent then
                                        if AddItemToChristmas(v317) then
                                            v315 = v315 + 1

                                            print('Added ' .. v317.Name .. ' (' .. v315 .. '/' .. v314 .. ')')
                                        end

                                        task.wait(0.3)
                                    end
                                end
                            end

                            task.wait(1)

                            if _ChristmasAutoEquipPan then
                                _Options.ChristmasAutoEquipPan:SetValue(true)
                            end

                            _G.EnabledCollecting = _EnabledCollecting
                            _G.EnabledShake = _EnabledShake
                            _G.ChristmasState.isAddingItems = false
                        end
                    elseif v307 ~= 'Delivering' and (v307 == 'Ready' and not _G.ChristmasState.isClaiming) then
                        _G.ChristmasState.isClaiming = true

                        local _EnabledCollecting2 = _G.EnabledCollecting
                        local _EnabledShake2 = _G.EnabledShake

                        _G.EnabledCollecting = false
                        _G.EnabledShake = false

                        task.wait(1)
                        ClaimChristmas()
                        task.wait(7)

                        _G.ChristmasState.isClaiming = false
                        _G.ChristmasState.itemsAdded = 0

                        task.wait(1)

                        _G.EnabledCollecting = _EnabledCollecting2
                        _G.EnabledShake = _EnabledShake2
                    end
                end
            else
                return
            end
        end
        function ExecuteChristmasFarming()
            if _Options.AutoChristmas and _Options.AutoChristmas.Value then
                if _G.AutoFarmSettings.Christmas.PanningPos and _G.AutoFarmSettings.Christmas.ShakingPos then
                    if not (_G.AutoFarmState.selling or (_G.TotemState.isPlacingTotems or (_G.ChristmasState.isAddingItems or _G.ChristmasState.isClaiming))) then
                        local _Character4 = _LocalPlayer2.Character

                        if _Character4 then
                            local _Tool = _Character4:FindFirstChildWhichIsA('Tool')

                            if not (_Tool and (_Tool.Name:lower():find('pan') or _Tool.Name:lower():find('world'))) then
                                _G.EnabledCollecting = false
                                _G.EnabledShake = false

                                return
                            end
                            if _Tool then
                                local _Fill = _Tool:GetAttribute('Fill')
                                local _Capacity = _LocalPlayer2.Stats:GetAttribute('Capacity')
                                local _Panning = _Character4:GetAttribute('Panning')
                                local _PanningPos = _G.AutoFarmSettings.Christmas.PanningPos
                                local _ShakingPos = _G.AutoFarmSettings.Christmas.ShakingPos

                                ExecuteChristmasAutoSell()

                                if _Capacity <= _Fill and not _Panning then
                                    _G.EnabledCollecting = false
                                    _G.EnabledShake = false

                                    MoveToChristmasPosition(_ShakingPos, function(p327)
                                        if p327 and _Tool and _Tool:FindFirstChild('Scripts') then
                                            _Tool.Scripts.Pan:InvokeServer()
                                        end
                                    end)
                                elseif _Panning or _Fill >= _Capacity then
                                    _G.EnabledCollecting = false

                                    MoveToChristmasPosition(_ShakingPos, function(p328)
                                        if p328 then
                                            _G.EnabledShake = true

                                            task.spawn(function()
                                                while _G.EnabledShake and (_Options.AutoChristmas.Value and not _G.TotemState.isPlacingTotems) do
                                                    pcall(function()
                                                        local _Tool2 = _LocalPlayer2.Character:FindFirstChildOfClass('Tool')

                                                        if _Tool2 and _Tool2:FindFirstChild('Scripts') then
                                                            _Tool2.Scripts.Shake:FireServer()
                                                        end
                                                    end)
                                                    task.wait(0.05)
                                                end
                                            end)
                                        end
                                    end)
                                else
                                    _G.EnabledShake = false

                                    MoveToChristmasPosition(_PanningPos, function(p330)
                                        if p330 then
                                            _G.EnabledCollecting = true

                                            if _Tool and _Tool:FindFirstChild('Scripts') then
                                                _Tool.Scripts.Collect:InvokeServer(1)
                                            end
                                        end
                                    end)
                                end
                            end
                        end
                    end
                else
                    return
                end
            else
                return
            end
        end
        function ExecuteChristmasAutoSell()
            if not _Options.AutoSell.Value then
                return
            end

            local _InventorySize = _LocalPlayer2:GetAttribute('InventorySize')
            local v332 = _LocalPlayer2:WaitForChild('BackpackTwo'):GetChildren()
            local v333 = _LocalPlayer2.Character and _LocalPlayer2.Character:FindFirstChildOfClass('Tool')

            if v333 then
                table.insert(v332, v333)
            end

            local v334, v335, v336 = ipairs(v332)
            local v337 = 0

            while true do
                local v338, v339 = v334(v335, v336)

                if v338 == nil then
                    break
                end

                v336 = v338

                local _ItemType = v339:GetAttribute('ItemType')

                if _ItemType == 'Equipment' or _ItemType == 'Valuable' then
                    v337 = v337 + 1
                end
            end

            if tonumber(_Options.SellAmount.Value or _G.AutoFarmSettings.AutoSell.Amount) <= v337 or _InventorySize <= v337 then
                _G.AutoFarmState.selling = true
                _G.EnabledCollecting = false
                _G.EnabledShake = false

                if _Options.AutoChangePan.Value and _Options.SelectPanSell.Value then
                    local _Value = _Options.SelectPanSell.Value
                    local v342, v343, v344 = pairs(_LocalPlayer2.BackpackTwo:GetChildren())

                    while true do
                        local v345

                        v344, v345 = v342(v343, v344)

                        if v344 == nil then
                            break
                        end
                        if v345:IsA('Tool') and v345.Name == _Value then
                            _LocalPlayer2.Character.Humanoid:EquipTool(v345)
                            task.wait(0.5)

                            break
                        end
                    end
                end
                if _Options.SellAllGamepass.Value then
                    pcall(function()
                        game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('Shop'):WaitForChild('SellAll'):InvokeServer()
                    end)
                    task.wait(1)

                    _G.AutoFarmState.selling = false
                else
                    local v346 = {
                        _G.AutoFarmSettings.Positions.SellPos1,
                        _G.AutoFarmSettings.Positions.SellPos2,
                        _G.AutoFarmSettings.Positions.SellPos3,
                        _G.AutoFarmSettings.Positions.SellPos4,
                    }
                    local v347, v348, v349 = ipairs(v346)
                    local u350 = {}

                    while true do
                        local v351

                        v349, v351 = v347(v348, v349)

                        if v349 == nil then
                            break
                        end
                        if v351 then
                            table.insert(u350, v351)
                        end
                    end

                    if #u350 <= 0 then
                        _G.AutoFarmState.selling = false
                    else
                        local u352 = 1

                        local function u356()
                            local v353 = u350[u352]

                            if v353 then
                                MoveToChristmasPosition(v353, function(p354)
                                    if p354 then
                                        if u352 ~= #u350 then
                                            u352 = u352 + 1

                                            task.wait(0.5)
                                            u356()
                                        else
                                            pcall(function()
                                                game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('Shop'):WaitForChild('SellAll'):InvokeServer()
                                            end)
                                            task.wait(1)

                                            local _PanningPos2 = _G.AutoFarmSettings.Christmas.PanningPos

                                            if _PanningPos2 then
                                                MoveToChristmasPosition(_PanningPos2, function()
                                                    _G.AutoFarmState.selling = false
                                                end)
                                            else
                                                _G.AutoFarmState.selling = false
                                            end
                                        end
                                    else
                                        _G.AutoFarmState.selling = false
                                    end
                                end)
                            end
                        end

                        u356()
                    end
                end
            end
        end

        v43.Christmas:AddParagraph({
            Title = 'Auto Christmas Delivery',
            Content = 'Auto Farm Christmas Event',
        })

        local u357 = v43.Christmas:AddParagraph({
            Title = 'Christmas Status',
            Content = 'Idle - Waiting to start...',
        })

        v43.Christmas:AddToggle('AutoChristmas', {
            Title = 'Auto Christmas Delivery',
            Default = _G.AutoFarmSettings.Christmas.AutoChristmas,
        }):OnChanged(function(p358)
            _G.AutoFarmSettings.Christmas.AutoChristmas = p358
            _G.ChristmasState.isActive = p358

            SaveSettings()

            if p358 then
                task.spawn(function()
                    while _Options.AutoChristmas.Value do
                        pcall(function()
                            ExecuteAutoChristmas()
                        end)
                        task.wait(5)
                    end
                end)
                task.spawn(function()
                    while _Options.AutoChristmas.Value do
                        pcall(function()
                            ExecuteChristmasFarming()
                        end)
                        task.wait(0.5)
                    end
                end)
            else
                _G.EnabledCollecting = false
                _G.EnabledShake = false
            end
        end)

        local _ChristmasAutoEquipPan2 = v43.Christmas:AddToggle('ChristmasAutoEquipPan', {
            Title = 'Auto Equip Pan (Christmas)',
            Default = false,
        })

        _G.ChristmasAutoEquipEnabled = false

        _ChristmasAutoEquipPan2:OnChanged(function(p360)
            _G.ChristmasAutoEquipEnabled = p360

            if p360 and not _G.ChristmasAutoEquipLoopRunning then
                _G.ChristmasAutoEquipLoopRunning = true

                task.spawn(function()
                    while true do
                        repeat
                            task.wait(0.5)
                        until _G.ChristmasAutoEquipEnabled and (_Options.AutoChristmas and (_Options.AutoChristmas.Value and not (_G.ChristmasState.isAddingItems or (_G.ChristmasState.isClaiming or _G.AutoFarmState.selling))))

                        pcall(function()
                            local _Character5 = _LocalPlayer2.Character

                            if not _Character5 then
                                return
                            end

                            local _Tool3 = _Character5:FindFirstChildOfClass('Tool')

                            if _Tool3 and (_Tool3.Name:lower():find('pan') or _Tool3.Name:lower():find('world')) then
                                return
                            end

                            local v363, v364, v365 = pairs(_LocalPlayer2.BackpackTwo:GetChildren())
                            local v366 = nil

                            while true do
                                local v367

                                v365, v367 = v363(v364, v365)

                                if v365 == nil then
                                    v367 = v366

                                    break
                                end
                                if v367:IsA('Tool') and (v367.Name:lower():find('pan') or v367.Name:lower():find('world')) then
                                    break
                                end
                            end

                            if v367 then
                                if _Tool3 then
                                    game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CustomBackpack'):WaitForChild('UnequipRemote'):FireServer()
                                    task.wait(0.3)
                                    game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CustomBackpack'):WaitForChild('EquipRemote'):FireServer(unpack({v367}))
                                else
                                    game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CustomBackpack'):WaitForChild('EquipRemote'):FireServer(unpack({v367}))
                                end
                            end
                        end)
                    end
                end)
            end
        end)
        v43.Christmas:AddDropdown('ChristmasRarity', {
            Title = 'Rarity Filter (Optional)',
            [u16] = {
                'Common',
                'Uncommon',
                'Rare',
                'Epic',
                'Legendary',
                'Mythic',
                'Exotic',
            },
            Multi = true,
            Default = _G.AutoFarmSettings.Christmas.RarityFilter,
        }):OnChanged(function(p368)
            local v369, v370, v371 = pairs(p368)
            local v372 = {}

            while true do
                local v373

                v371, v373 = v369(v370, v371)

                if v371 == nil then
                    break
                end
                if v373 then
                    table.insert(v372, v371)
                end
            end

            _G.AutoFarmSettings.Christmas.RarityFilter = v372

            SaveSettings()
        end)
        v43.Christmas:AddInput('ChristmasMinWeight', {
            Title = 'Minimum Weight (Optional)',
            Default = tostring(_G.AutoFarmSettings.Christmas.MinWeight),
            Placeholder = 'Enter minimum weight (0 = all)',
            Numeric = true,
            Callback = function(p374)
                _G.AutoFarmSettings.Christmas.MinWeight = tonumber(p374) or 0

                SaveSettings()
            end,
        })
        v43.Christmas:AddDropdown('ChristmasMovementMethod', {
            Title = 'Movement Method',
            [u16] = {
                'Walk',
                'Teleport',
            },
            Multi = false,
            Default = _G.AutoFarmSettings.Christmas.MovementMethod,
        }):OnChanged(function(p375)
            _G.AutoFarmSettings.Christmas.MovementMethod = p375

            SaveSettings()
        end)
        v43.Christmas:AddParagraph({
            Title = 'Farm Positions',
            Content = 'Set positions for Christmas farming',
        })
        v43.Christmas:AddButton({
            Title = 'Set Panning Position',
            Description = 'Set your current position for panning',
            Callback = function()
                local _, v376 = GetCharacter()

                if v376 then
                    local _Position3 = v376.Position

                    _G.AutoFarmSettings.Christmas.PanningPos = {
                        math.round(_Position3.X),
                        math.round(_Position3.Y),
                        math.round(_Position3.Z),
                    }

                    SaveSettings()
                    u16:Notify({
                        Title = 'Position Saved',
                        Content = 'Christmas panning position saved!',
                        Duration = 3,
                    })
                end
            end,
        })
        v43.Christmas:AddButton({
            Title = 'Set Shaking Position',
            Description = 'Set your current position for shaking',
            Callback = function()
                local _, v378 = GetCharacter()

                if v378 then
                    local _Position4 = v378.Position

                    _G.AutoFarmSettings.Christmas.ShakingPos = {
                        math.round(_Position4.X),
                        math.round(_Position4.Y),
                        math.round(_Position4.Z),
                    }

                    SaveSettings()
                    u16:Notify({
                        Title = 'Position Saved',
                        Content = 'Christmas shaking position saved!',
                        Duration = 3,
                    })
                end
            end,
        })

        local function u384(p380)
            local v381 = (p380 or ''):gsub('<.-?>', ''):gsub('[%(%)]', '')
            local v382 = v381:match('^%s*(.-)%s*$') or v381
            local v383 = v382:match('(%d+%s*[smhd]+%s*%d*%s*[smhd]*)') or v382:match('(%d+%s*[a-zA-Z]+)')

            if v383 and v383 ~= '' then
                return v383:match('^%s*(.-)%s*$') or v383
            else
                return v382
            end
        end

        task.spawn(function()
            while task.wait(0.9) do
                pcall(function()
                    local v385, v386, _ = GetChristmasStatus()
                    local v387 = FindChristmasItems()
                    local u388 = 'Unknown'

                    pcall(function()
                        u388 = workspace.Map.NorthPole['Christmas Delivery'].Display.Quality.Text or 'Unknown'
                    end)

                    local v389

                    if v385 == 'Adding' then
                        v389 = (('Adding Items: ' .. (v386 or 0) .. '/10\n') .. u388 .. '\n') .. 'Valid Items: ' .. #v387
                    elseif v385 == 'Delivering' then
                        local u390 = 'calculating...'

                        pcall(function()
                            u390 = u384(workspace.Map.NorthPole['Christmas Delivery'].Display.Progress.Text or 'calculating...')
                        end)

                        v389 = (('Delivering ' .. u390 .. '\n') .. u388 .. '\n') .. 'Valid Items: ' .. #v387
                    elseif v385 == 'Ready' then
                        v389 = ('Ready to Claim!\n' .. u388 .. '\n') .. 'Claim your rewards now'
                    else
                        v389 = ('Unknown Status\n' .. u388 .. '\n') .. 'Valid Items: ' .. #v387
                    end

                    local v391 = v389 .. '\nMovement: ' .. (_Options.ChristmasMovementMethod and _Options.ChristmasMovementMethod.Value or 'Walk')
                    local v392

                    if _G.ChristmasState.isAddingItems then
                        v392 = v391 .. '\n\nStatus: Adding Items...'
                    elseif _G.ChristmasState.isClaiming then
                        v392 = v391 .. '\n\nStatus: Claiming...'
                    elseif _G.AutoFarmState.selling then
                        v392 = v391 .. '\n\nStatus: Selling...'
                    elseif _Options.AutoChristmas and _Options.AutoChristmas.Value then
                        v392 = v391 .. '\n\nStatus: Farming'
                    else
                        v392 = v391 .. '\n\nStatus: OFF'
                    end

                    local v393

                    if _Options.AutoChristmas and _Options.AutoChristmas.Value then
                        v393 = v392 .. '\nAuto Christmas: ACTIVE'
                    else
                        v393 = v392 .. '\nAuto Christmas: INACTIVE'
                    end

                    u357:SetDesc(v393)
                end)
            end
        end)

        local _AutoFarm = v43.AutoFarm:AddToggle('AutoFarm', {
            Title = 'Auto Farm',
            Default = _G.AutoFarmSettings.AutoFarm.AutoFarm,
        })

        v43.AutoFarm:AddToggle('AutoEquipPan', {
            Title = 'Auto Equip',
        }):OnChanged(function(p395)
            if p395 then
                task.spawn(function()
                    while _Options.AutoEquipPan.Value do
                        task.wait(0.5)

                        if _Options.AutoFarm.Value and not (_G.TotemState.isPlacingTotems or _G.AutoFarmState.selling) then
                            local v396, v397, v398 = pairs(game.Players.LocalPlayer.BackpackTwo:GetChildren())

                            while true do
                                local v399

                                v398, v399 = v396(v397, v398)

                                if v398 == nil then
                                    break
                                end
                                if v399.Name:lower():find('pan') or v399.Name:lower():find('world') then
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v399)
                                end
                            end
                        end
                    end
                end)
            end
        end)
        v43.AutoFarm:AddToggle('InstantPerfectDig', {
            Title = 'Instant Perfect Dig',
            Description = 'requires Non-Euclidean Enchant.',
            Default = false,
        }):OnChanged(function(p400)
            if p400 then
                task.spawn(function()
                    while _Options.InstantPerfectDig.Value do
                        pcall(function()
                            game:GetService('ReplicatedStorage'):WaitForChild('Modules'):WaitForChild('Inventory'):WaitForChild('ShovelEnchantManager'):WaitForChild('Combo'):WaitForChild('Remotes'):WaitForChild('SetCombo'):FireServer()
                        end)
                        task.wait(0.1)
                    end
                end)
            end
        end)
        v43.AutoFarm:AddToggle('AutoGeode', {
            Title = 'Auto instant Collect Geode (ur own risk)',
            Default = _G.AutoFarmSettings.AutoGeode.AutoGeode,
        }):OnChanged(function(p401)
            _G.AutoFarmSettings.AutoGeode.AutoGeode = p401
            _G.EnabledGeodeFarm = p401

            SaveSettings()

            local u402 = 0

            if p401 then
                task.spawn(function()
                    while _G.EnabledGeodeFarm do
                        pcall(function()
                            local _Character6 = _LocalPlayer2.Character

                            if _Character6 then
                                local _HumanoidRootPart2 = _Character6:FindFirstChild('HumanoidRootPart')

                                if _HumanoidRootPart2 then
                                    local v405, v406, v407 = pairs(workspace.Geode:GetDescendants())

                                    while true do
                                        local v408

                                        v407, v408 = v405(v406, v407)

                                        if v407 == nil then
                                            break
                                        end
                                        if v408.Name == 'TouchInterest' then
                                            local _Parent = v408.Parent

                                            firetouchinterest(_HumanoidRootPart2, _Parent, 0)
                                            firetouchinterest(_HumanoidRootPart2, _Parent, 1)

                                            u402 = u402 + 1

                                            print('Collect Geode:', u402)
                                            task.wait(0.1)
                                        end
                                    end
                                end
                            else
                                return
                            end
                        end)
                        task.wait(5)
                    end
                end)
            end
        end)

        local _LocalPlayer3 = game.Players.LocalPlayer
        local u411 = 16
        local _WalkSpeedToggle = v43.AutoFarm:AddToggle('WalkSpeedToggle', {
            Title = 'Enable Custom WalkSpeed',
            Default = false,
            Callback = function(p412)
                if p412 then
                    if _LocalPlayer3.Character and _LocalPlayer3.Character:FindFirstChild('Humanoid') then
                        _LocalPlayer3.Character.Humanoid.WalkSpeed = _G.AutoFarmSettings.WalkSpeed.Speed or u411
                    end
                elseif _LocalPlayer3.Character and _LocalPlayer3.Character:FindFirstChild('Humanoid') then
                    _LocalPlayer3.Character.Humanoid.WalkSpeed = u411
                end
            end,
        })

        v43.AutoFarm:AddInput('WalkSpeedInput', {
            Title = 'Walk Speed',
            Default = tostring(_G.AutoFarmSettings.WalkSpeed.Speed),
            Placeholder = 'Enter speed (max 22)',
            Numeric = true,
            Callback = function(p414)
                local v415 = tonumber(p414)

                if v415 and 22 < v415 then
                    u16:Notify({
                        Title = 'Speed Limited',
                        Content = 'Maximum walk speed is 22!',
                        Duration = 3,
                    })

                    v415 = 22
                end

                _G.AutoFarmSettings.WalkSpeed.Speed = v415 or u411

                SaveSettings()

                if _WalkSpeedToggle.Value and _LocalPlayer3.Character and _LocalPlayer3.Character:FindFirstChild('Humanoid') then
                    _LocalPlayer3.Character.Humanoid.WalkSpeed = _G.AutoFarmSettings.WalkSpeed.Speed
                end
            end,
        })
        v43.AutoFarm:AddParagraph({
            Title = 'Farm Positions',
            Content = 'Set positions for panning and shaking locations.',
        })
        v43.AutoFarm:AddButton({
            Title = 'Set Panning Position',
            Description = 'Set your current position for panning',
            Callback = function()
                local _, v416 = GetCharacter()

                if v416 then
                    local _Position5 = v416.Position

                    _G.AutoFarmSettings.Positions.PanningPos = {
                        math.round(_Position5.X),
                        math.round(_Position5.Y),
                        math.round(_Position5.Z),
                    }

                    SaveSettings()
                    u16:Notify({
                        Title = 'Position Saved',
                        Content = 'Panning position saved!',
                        Duration = 3,
                    })
                end
            end,
        })
        v43.AutoFarm:AddButton({
            Title = 'Set Shaking Position',
            Description = 'Set your current position for shaking',
            Callback = function()
                local _, v418 = GetCharacter()

                if v418 then
                    local _Position6 = v418.Position

                    _G.AutoFarmSettings.Positions.ShakingPos = {
                        math.round(_Position6.X),
                        math.round(_Position6.Y),
                        math.round(_Position6.Z),
                    }

                    SaveSettings()
                    u16:Notify({
                        Title = 'Position Saved',
                        Content = 'Shaking position saved!',
                        Duration = 3,
                    })
                end
            end,
        })
        v43.AutoSell:AddInput('SellAmount', {
            Title = 'Sell Amount',
            Default = tostring(_G.AutoFarmSettings.AutoSell.Amount),
            Placeholder = 'Enter amount to trigger selling',
            Numeric = true,
            Callback = function(p420)
                _G.AutoFarmSettings.AutoSell.Amount = tonumber(p420) or 20

                SaveSettings()
            end,
        })
        v43.AutoSell:AddToggle('AutoSell', {
            Title = 'Auto Sell',
            Default = _G.AutoFarmSettings.AutoSell.AutoSell,
        }):OnChanged(function(p421)
            _G.AutoFarmSettings.AutoSell.AutoSell = p421

            SaveSettings()
        end)
        v43.AutoSell:AddToggle('SellAllGamepass', {
            Title = 'Use SellAll Gamepass',
            Description = 'REQUIRES Auto Sell to be ON. Enable this if you have the SellAll gamepass for instant selling',
            Default = _G.AutoFarmSettings.AutoSell.SellAllGamepass,
        }):OnChanged(function(p422)
            _G.AutoFarmSettings.AutoSell.SellAllGamepass = p422

            SaveSettings()
        end)

        local v423, v424, v425 = pairs(game:GetService('ReplicatedStorage').Items.Pans:GetChildren())
        local u426 = _Options
        local v427 = {}

        while true do
            local v428

            v425, v428 = v423(v424, v425)

            if v425 == nil then
                break
            end

            table.insert(v427, v428.Name)
        end

        v43.AutoSell:AddDropdown('SelectPanSell', {
            Title = 'Pan for Selling',
            [u16] = v427,
            Multi = false,
            Default = _G.AutoFarmSettings.AutoSell.SelectPanSell and table.find(v427, _G.AutoFarmSettings.AutoSell.SelectPanSell) or 1,
        }):OnChanged(function(p429)
            _G.AutoFarmSettings.AutoSell.SelectPanSell = p429

            SaveSettings()
        end)
        v43.AutoSell:AddToggle('AutoChangePan', {
            Title = 'Auto Change Pan for Selling',
            Default = _G.AutoFarmSettings.AutoSell.AutoChangePan,
        }):OnChanged(function(p430)
            _G.AutoFarmSettings.AutoSell.AutoChangePan = p430

            SaveSettings()
        end)
        v43.AutoSell:AddParagraph({
            Title = 'Sell Route Positions',
        })

        for v431 = 1, 4 do
            local u432 = v431

            v43.AutoSell:AddButton({
                Title = 'Set Sell Position ' .. u432,
                Description = 'Set position ' .. u432 .. ' for selling route',
                Callback = function()
                    local _, v433 = GetCharacter()

                    if v433 then
                        local _Position7 = v433.Position

                        _G.AutoFarmSettings.Positions['SellPos' .. u432] = {
                            math.round(_Position7.X),
                            math.round(_Position7.Y),
                            math.round(_Position7.Z),
                        }

                        SaveSettings()
                        u16:Notify({
                            Title = 'Position Saved',
                            Content = 'Sell position ' .. u432 .. ' saved!',
                            Duration = 3,
                        })
                    end
                end,
            })
        end

        v43.AutoSell:AddButton({
            Title = 'Clear All Sell Positions',
            Description = 'Clear all saved sell positions',
            Callback = function()
                for v435 = 1, 4 do
                    _G.AutoFarmSettings.Positions['SellPos' .. v435] = nil
                end

                SaveSettings()
                u16:Notify({
                    Title = 'Positions Cleared',
                    Content = 'All sell positions have been cleared!',
                    Duration = 3,
                })
            end,
        })
        v43.AutoInfernal:AddToggle('AutoInfernal', {
            Title = 'Auto Farm Infernal Heart',
            Default = _G.AutoFarmSettings.AutoInfernal.AutoInfernal,
        }):OnChanged(function(p436)
            _G.AutoFarmSettings.AutoInfernal.AutoInfernal = p436

            SaveSettings()
        end)
        v43.AutoInfernal:AddButton({
            Title = 'Set Infernal Heart Panning Position',
            Description = 'You can just use the default settings; no need to set it manually.',
            Callback = function()
                local _, v437 = GetCharacter()

                if v437 then
                    local _Position8 = v437.Position

                    _G.AutoFarmSettings.AutoInfernal.InfernalPanningPos = {
                        math.round(_Position8.X),
                        math.round(_Position8.Y),
                        math.round(_Position8.Z),
                    }

                    SaveSettings()
                    u16:Notify({
                        Title = 'Position Saved',
                        Content = 'Infernal Heart panning position saved!',
                        Duration = 3,
                    })
                end
            end,
        })
        v43.AutoInfernal:AddButton({
            Title = 'Set Infernal Heart Shaking Position',
            Description = 'You can just use the default settings; no need to set it manually.',
            Callback = function()
                local _, v439 = GetCharacter()

                if v439 then
                    local _Position9 = v439.Position

                    _G.AutoFarmSettings.AutoInfernal.InfernalShakingPos = {
                        math.round(_Position9.X),
                        math.round(_Position9.Y),
                        math.round(_Position9.Z),
                    }

                    SaveSettings()
                    u16:Notify({
                        Title = 'Position Saved',
                        Content = 'Infernal Heart shaking position saved!',
                        Duration = 3,
                    })
                end
            end,
        })
        v43.AutoVoid:AddToggle('AutoVoid', {
            Title = 'Auto The Void',
            Default = _G.AutoFarmSettings.AutoVoid.AutoVoid,
        }):OnChanged(function(p441)
            _G.AutoFarmSettings.AutoVoid.AutoVoid = p441

            SaveSettings()
        end)
        v43.AutoVoid:AddDropdown('VoidWaypoint', {
            Title = 'After Void Event Waypoint',
            [u16] = v28,
            Multi = false,
            Default = table.find(v28, _G.AutoFarmSettings.AutoVoid.VoidWaypoint) or 1,
        }):OnChanged(function(p442)
            _G.AutoFarmSettings.AutoVoid.VoidWaypoint = p442

            SaveSettings()
        end)
        v43.AutoVoid:AddButton({
            Title = 'Set Void Panning Position',
            Description = 'You can use the default settings; no need to set it manually.',
            Callback = function()
                local _, v443 = GetCharacter()

                if v443 then
                    local _Position10 = v443.Position

                    _G.AutoFarmSettings.AutoVoid.VoidPanningPos = {
                        math.round(_Position10.X),
                        math.round(_Position10.Y),
                        math.round(_Position10.Z),
                    }

                    SaveSettings()
                    u16:Notify({
                        Title = 'Position Saved',
                        Content = 'Void panning position saved!',
                        Duration = 3,
                    })
                end
            end,
        })
        v43.AutoVoid:AddButton({
            Title = 'Set Void Shaking Position',
            Description = 'You can use the default settings; no need to set it manually.',
            Callback = function()
                local _, v445 = GetCharacter()

                if v445 then
                    local _Position11 = v445.Position

                    _G.AutoFarmSettings.AutoVoid.VoidShakingPos = {
                        math.round(_Position11.X),
                        math.round(_Position11.Y),
                        math.round(_Position11.Z),
                    }

                    SaveSettings()
                    u16:Notify({
                        Title = 'Position Saved',
                        Content = 'Void shaking position saved!',
                        Duration = 3,
                    })
                end
            end,
        })
        v43.AutoVoid:AddButton({
            Title = 'Set Void Sell Position',
            Description = 'Set position for selling when exiting void. You can use the default settings; no need to set it manually.',
            Callback = function()
                local _, v447 = GetCharacter()

                if v447 then
                    local _Position12 = v447.Position

                    _G.AutoFarmSettings.AutoVoid.VoidSellPos = {
                        math.round(_Position12.X),
                        math.round(_Position12.Y),
                        math.round(_Position12.Z),
                    }

                    SaveSettings()
                    u16:Notify({
                        Title = 'Position Saved',
                        Content = 'Void sell position saved!',
                        Duration = 3,
                    })
                end
            end,
        })
        v43.Item:AddParagraph({
            Title = 'Auto Favorite by Rarity',
            Content = 'Auto Favorite items according to their rarity level.',
        })
        v43.Item:AddDropdown('LockRarity', {
            Title = 'Select Rarity',
            [u16] = {
                'Common',
                'Uncommon',
                'Rare',
                'Epic',
                'Legendary',
                'Mythic',
                'Exotic',
            },
            Multi = true,
            Default = _G.AutoFarmSettings.Favorites.Rarity,
        }):OnChanged(function(p449)
            local v450, v451, v452 = pairs(p449)
            local v453 = {}

            while true do
                local v454

                v452, v454 = v450(v451, v452)

                if v452 == nil then
                    break
                end
                if v454 then
                    table.insert(v453, v452)
                end
            end

            _G.AutoFarmSettings.Favorites.Rarity = v453

            SaveSettings()
        end)
        _LocalPlayer2:WaitForChild('BackpackTwo')

        function LockItemIfMatches(p455)
            if p455:IsA('Tool') then
                local _Rarity3 = p455:GetAttribute('Rarity')
                local _Locked3 = p455:GetAttribute('Locked')
                local v458 = false
                local v459 = false

                if u426.LockRarityToggle.Value and _Rarity3 then
                    local v460, v461, v462 = ipairs(_G.AutoFarmSettings.Favorites.Rarity)
                    local v463 = {}

                    while true do
                        local v464

                        v462, v464 = v460(v461, v462)

                        if v462 == nil then
                            break
                        end

                        v463[v464] = true
                    end

                    if v463[_Rarity3] then
                        v458 = true
                    end
                end
                if u426.LockItemNamesToggle.Value then
                    local v465, v466, v467 = ipairs(_G.AutoFarmSettings.Favorites.ItemNames)
                    local v468 = {}

                    while true do
                        local v469

                        v467, v469 = v465(v466, v467)

                        if v467 == nil then
                            break
                        end

                        v468[v469] = true
                    end

                    if v468[p455.Name] then
                        v459 = true
                    end
                end
                if (v458 or v459) and (_Locked3 == nil or _Locked3 == false) then
                    game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('Inventory'):WaitForChild('ToggleLock'):FireServer(p455)
                end
            end
        end
        function UnlockItems()
            local v470, v471, v472 = ipairs(_G.AutoFarmSettings.Favorites.Unlocklist or {})
            local v473 = {}

            while true do
                local v474

                v472, v474 = v470(v471, v472)

                if v472 == nil then
                    break
                end

                v473[v474] = true
            end

            local v475 = _BackpackTwo
            local v476, v477, v478 = pairs(v475:GetChildren())

            while true do
                local v479

                v478, v479 = v476(v477, v478)

                if v478 == nil then
                    break
                end
                if v479:IsA('Tool') then
                    local _Locked4 = v479:GetAttribute('Locked')

                    if v473[v479.Name] and _Locked4 == true then
                        game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('Inventory'):WaitForChild('ToggleLock'):FireServer(v479)
                    end
                end
            end
        end

        v43.Item:AddToggle('LockRarityToggle', {
            Title = 'Auto Favorite Rarity',
            Default = _G.AutoFarmSettings.Favorites.LockRarity,
        }):OnChanged(function(p481)
            _G.AutoFarmSettings.Favorites.LockRarity = p481

            SaveSettings()

            if p481 then
                task.spawn(function()
                    while u426.LockRarityToggle.Value do
                        task.wait(0.5)

                        local v482 = _BackpackTwo
                        local v483, v484, v485 = pairs(v482:GetChildren())

                        while true do
                            local v486

                            v485, v486 = v483(v484, v485)

                            if v485 == nil then
                                break
                            end

                            LockItemIfMatchesRarity(v486)
                        end
                    end
                end)
            end
        end)
        v43.Item:AddDropdown('RarityModifications', {
            Title = 'Rarity + Modifications',
            [u16] = {
                'Shiny',
                'Pure',
                'Glowing',
                'Scorching',
                'Irradiated',
                'Iridescent',
                'Electrified',
                'Voidtorn',
                'Crystallized',
                'Crystalline',
                'Ghostly',
                'Spooky',
            },
            Multi = true,
            Default = _G.AutoFarmSettings.Favorites.RarityModifications,
        }):OnChanged(function(p487)
            local v488, v489, v490 = pairs(p487)
            local v491 = {}

            while true do
                local v492

                v490, v492 = v488(v489, v490)

                if v490 == nil then
                    break
                end
                if v492 then
                    table.insert(v491, v490)
                end
            end

            _G.AutoFarmSettings.Favorites.RarityModifications = v491

            SaveSettings()
        end)
        v43.Item:AddToggle('LockRarityModificationsToggle', {
            Title = 'Auto Favorite Rarity + Modification',
            Default = _G.AutoFarmSettings.Favorites.LockRarityModifications or false,
        }):OnChanged(function(p493)
            _G.AutoFarmSettings.Favorites.LockRarityModifications = p493

            SaveSettings()

            if p493 then
                task.spawn(function()
                    while u426.LockRarityModificationsToggle.Value do
                        task.wait(0.5)

                        local v494 = _BackpackTwo
                        local v495, v496, v497 = pairs(v494:GetChildren())

                        while true do
                            local v498

                            v497, v498 = v495(v496, v497)

                            if v497 == nil then
                                break
                            end

                            LockItemIfMatchesRarity(v498)
                        end
                    end
                end)
            end
        end)
        v43.Item:AddInput('RarityMinWeight', {
            Title = 'Rarity + Minimum Weight',
            Default = tostring(_G.AutoFarmSettings.Favorites.RarityMinWeight),
            Placeholder = 'Enter minimum weight',
            Numeric = true,
            Callback = function(p499)
                _G.AutoFarmSettings.Favorites.RarityMinWeight = tonumber(p499) or 0

                SaveSettings()
            end,
        })
        v43.Item:AddToggle('LockRarityWeightToggle', {
            Title = 'Auto Favorite Rarity + Weight',
            Default = _G.AutoFarmSettings.Favorites.LockRarityWeight or false,
        }):OnChanged(function(p500)
            _G.AutoFarmSettings.Favorites.LockRarityWeight = p500

            SaveSettings()

            if p500 then
                task.spawn(function()
                    while u426.LockRarityWeightToggle.Value do
                        task.wait(0.5)

                        local v501 = _BackpackTwo
                        local v502, v503, v504 = pairs(v501:GetChildren())

                        while true do
                            local v505

                            v504, v505 = v502(v503, v504)

                            if v504 == nil then
                                break
                            end

                            LockItemIfMatchesRarity(v505)
                        end
                    end
                end)
            end
        end)
        v43.Item:AddToggle('LockRarityModificationWeightToggle', {
            Title = 'Auto Favorite Rarity + Modification + Weight',
            Default = _G.AutoFarmSettings.Favorites.LockRarityModificationWeight or false,
        }):OnChanged(function(p506)
            _G.AutoFarmSettings.Favorites.LockRarityModificationWeight = p506

            SaveSettings()

            if p506 then
                task.spawn(function()
                    while u426.LockRarityModificationWeightToggle.Value do
                        task.wait(0.5)

                        local v507 = _BackpackTwo
                        local v508, v509, v510 = pairs(v507:GetChildren())

                        while true do
                            local v511

                            v510, v511 = v508(v509, v510)

                            if v510 == nil then
                                break
                            end

                            LockItemIfMatchesRarity(v511)
                        end
                    end
                end)
            end
        end)
        v43.Item:AddParagraph({
            Title = 'Auto Favorite by Name',
            Content = 'Lock specific items using their exact name.',
        })

        local v512, v513, v514 = pairs(game:GetService('ReplicatedStorage').Items.Valuables:GetChildren())
        local v515 = {}

        while true do
            local v516

            v514, v516 = v512(v513, v514)

            if v514 == nil then
                break
            end

            table.insert(v515, v516.Name)
        end

        v43.Item:AddDropdown('LockItemNames', {
            Title = 'Select Items',
            [u16] = v515,
            Multi = true,
            Default = _G.AutoFarmSettings.Favorites.ItemNames,
        }):OnChanged(function(p517)
            local v518, v519, v520 = pairs(p517)
            local v521 = {}

            while true do
                local v522

                v520, v522 = v518(v519, v520)

                if v520 == nil then
                    break
                end
                if v522 then
                    table.insert(v521, v520)
                end
            end

            _G.AutoFarmSettings.Favorites.ItemNames = v521

            SaveSettings()
        end)
        v43.Item:AddToggle('LockItemNamesToggle', {
            Title = 'Auto Favorite by Name',
            Default = _G.AutoFarmSettings.Favorites.LockItemNames or false,
        }):OnChanged(function(p523)
            _G.AutoFarmSettings.Favorites.LockItemNames = p523

            SaveSettings()

            if p523 then
                task.spawn(function()
                    while u426.LockItemNamesToggle.Value do
                        task.wait(0.5)

                        local v524 = _BackpackTwo
                        local v525, v526, v527 = pairs(v524:GetChildren())

                        while true do
                            local v528

                            v527, v528 = v525(v526, v527)

                            if v527 == nil then
                                break
                            end

                            LockItemIfMatches(v528)
                        end
                    end
                end)
            end
        end)
        v43.Item:AddDropdown('NameModifications', {
            Title = 'Name + Modifications',
            [u16] = {
                'Shiny',
                'Pure',
                'Glowing',
                'Scorching',
                'Irradiated',
                'Iridescent',
                'Electrified',
                'Voidtorn',
                'Crystallized',
                'Crystalline',
                'Ghostly',
                'Spooky',
            },
            Multi = true,
            Default = _G.AutoFarmSettings.Favorites.NameModifications,
        }):OnChanged(function(p529)
            local v530, v531, v532 = pairs(p529)
            local v533 = {}

            while true do
                local v534

                v532, v534 = v530(v531, v532)

                if v532 == nil then
                    break
                end
                if v534 then
                    table.insert(v533, v532)
                end
            end

            _G.AutoFarmSettings.Favorites.NameModifications = v533

            SaveSettings()
        end)
        v43.Item:AddToggle('LockNameModificationsToggle', {
            Title = 'Auto Favorite Name + Modification',
            Default = _G.AutoFarmSettings.Favorites.LockNameModifications or false,
        }):OnChanged(function(p535)
            _G.AutoFarmSettings.Favorites.LockNameModifications = p535

            SaveSettings()

            if p535 then
                task.spawn(function()
                    while u426.LockNameModificationsToggle.Value do
                        task.wait(0.5)

                        local v536 = _BackpackTwo
                        local v537, v538, v539 = pairs(v536:GetChildren())

                        while true do
                            local v540

                            v539, v540 = v537(v538, v539)

                            if v539 == nil then
                                break
                            end

                            LockItemIfMatchesName(v540)
                        end
                    end
                end)
            end
        end)
        v43.Item:AddInput('NameMinWeight', {
            Title = 'Name + Minimum Weight',
            Default = tostring(_G.AutoFarmSettings.Favorites.NameMinWeight),
            Placeholder = 'Enter minimum weight',
            Numeric = true,
            Callback = function(p541)
                _G.AutoFarmSettings.Favorites.NameMinWeight = tonumber(p541) or 0

                SaveSettings()
            end,
        })
        v43.Item:AddToggle('LockNameWeightToggle', {
            Title = 'Auto Favorite Name + Weight',
            Default = _G.AutoFarmSettings.Favorites.LockNameWeight or false,
        }):OnChanged(function(p542)
            _G.AutoFarmSettings.Favorites.LockNameWeight = p542

            SaveSettings()

            if p542 then
                task.spawn(function()
                    while u426.LockNameWeightToggle.Value do
                        task.wait(0.5)

                        local v543 = _BackpackTwo
                        local v544, v545, v546 = pairs(v543:GetChildren())

                        while true do
                            local v547

                            v546, v547 = v544(v545, v546)

                            if v546 == nil then
                                break
                            end

                            LockItemIfMatchesName(v547)
                        end
                    end
                end)
            end
        end)
        v43.Item:AddToggle('LockNameModificationWeightToggle', {
            Title = 'Auto Favorite Name + Modification + Weight',
            Default = _G.AutoFarmSettings.Favorites.LockNameModificationWeight or false,
        }):OnChanged(function(p548)
            _G.AutoFarmSettings.Favorites.LockNameModificationWeight = p548

            SaveSettings()

            if p548 then
                task.spawn(function()
                    while u426.LockNameModificationWeightToggle.Value do
                        task.wait(0.5)

                        local v549 = _BackpackTwo
                        local v550, v551, v552 = pairs(v549:GetChildren())

                        while true do
                            local v553

                            v552, v553 = v550(v551, v552)

                            if v552 == nil then
                                break
                            end

                            LockItemIfMatchesName(v553)
                        end
                    end
                end)
            end
        end)
        v43.Item:AddParagraph({
            Title = 'Unlock Items',
            Content = 'Choose items to unlock, or unlock all locked ones at once.',
        })
        v43.Item:AddDropdown('UnlockItems', {
            Title = 'Select Items to Unlock',
            [u16] = v515,
            Multi = true,
            Default = _G.AutoFarmSettings.Favorites.Unlocklist,
        }):OnChanged(function(p554)
            local v555, v556, v557 = pairs(p554)
            local v558 = {}

            while true do
                local v559

                v557, v559 = v555(v556, v557)

                if v557 == nil then
                    break
                end
                if v559 then
                    table.insert(v558, v557)
                end
            end

            _G.AutoFarmSettings.Favorites.Unlocklist = v558

            SaveSettings()
        end)
        v43.Item:AddButton({
            Title = 'Unlock Selected',
            Description = 'Unlock items selected above',
            Callback = function()
                UnlockItems()
                u16:Notify({
                    Title = 'Items Unlocked',
                    Content = 'Selected items have been unlocked!',
                    Duration = 3,
                })
            end,
        })
        v43.Item:AddParagraph({
            Title = 'Unlock by Rarity/Modification/Weight',
            Content = 'Unlock items matching specific criteria (separated from Favorite settings)',
        })
        v43.Item:AddDropdown('UnlockRaritySelect', {
            Title = 'Select Rarity to Unlock',
            [u16] = {
                'Common',
                'Uncommon',
                'Rare',
                'Epic',
                'Legendary',
                'Mythic',
                'Exotic',
            },
            Multi = true,
            Default = _G.AutoFarmSettings.Favorites.UnlockRarity,
        }):OnChanged(function(p560)
            local v561, v562, v563 = pairs(p560)
            local v564 = {}

            while true do
                local v565

                v563, v565 = v561(v562, v563)

                if v563 == nil then
                    break
                end
                if v565 then
                    table.insert(v564, v563)
                end
            end

            _G.AutoFarmSettings.Favorites.UnlockRarity = v564

            SaveSettings()
        end)
        v43.Item:AddDropdown('UnlockModificationsSelect', {
            Title = 'Unlock by Modification',
            [u16] = {
                'Shiny',
                'Pure',
                'Glowing',
                'Scorching',
                'Irradiated',
                'Iridescent',
                'Electrified',
                'Voidtorn',
                'Crystallized',
                'Crystalline',
                'Ghostly',
                'Spooky',
            },
            Multi = true,
            Default = _G.AutoFarmSettings.Favorites.UnlockModifications,
        }):OnChanged(function(p566)
            local v567, v568, v569 = pairs(p566)
            local v570 = {}

            while true do
                local v571

                v569, v571 = v567(v568, v569)

                if v569 == nil then
                    break
                end
                if v571 then
                    table.insert(v570, v569)
                end
            end

            _G.AutoFarmSettings.Favorites.UnlockModifications = v570

            SaveSettings()
        end)
        v43.Item:AddInput('UnlockMaxWeight', {
            Title = 'Unlock Below Weight',
            Default = tostring(_G.AutoFarmSettings.Favorites.UnlockMaxWeight),
            Placeholder = 'Enter maximum weight to unlock',
            Numeric = true,
            Callback = function(p572)
                _G.AutoFarmSettings.Favorites.UnlockMaxWeight = tonumber(p572) or 0

                SaveSettings()
            end,
        })
        v43.Item:AddButton({
            Title = 'Unlock by Criteria',
            Description = 'Unlock items matching selected rarity/modification/weight',
            Callback = function()
                local v573, v574, v575 = pairs(_G.AutoFarmSettings.Favorites.UnlockRarity or {})
                local v576 = {}
                local v577 = 0

                while true do
                    local v578

                    v575, v578 = v573(v574, v575)

                    if v575 == nil then
                        break
                    end

                    v576[v578] = true
                end

                local v579, v580, v581 = pairs(_G.AutoFarmSettings.Favorites.UnlockModifications or {})
                local v582 = {}

                while true do
                    local v583

                    v581, v583 = v579(v580, v581)

                    if v581 == nil then
                        break
                    end

                    v582[v583] = true
                end

                local v584 = _G.AutoFarmSettings.Favorites.UnlockMaxWeight or 0
                local v585 = _BackpackTwo
                local v586, v587, v588 = pairs(v585:GetChildren())

                while true do
                    local v589

                    v588, v589 = v586(v587, v588)

                    if v588 == nil then
                        break
                    end
                    if v589:IsA('Tool') and v589:GetAttribute('Locked') == true then
                        local _Rarity4 = v589:GetAttribute('Rarity')
                        local _ItemData4 = v589:FindFirstChild('ItemData')
                        local v592 = #v576 > 0 and (_Rarity4 and v576[_Rarity4]) and true or false

                        if #v582 > 0 and _ItemData4 then
                            local _Modifier5 = _ItemData4:GetAttribute('Modifier')

                            v592 = _Modifier5 and v582[_Modifier5] and true or v592
                        end
                        if 0 < v584 and _ItemData4 then
                            v592 = (_ItemData4:GetAttribute('Weight') or 0) <= v584 and true or v592
                        end
                        if v592 then
                            game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('Inventory'):WaitForChild('ToggleLock'):FireServer(v589)

                            v577 = v577 + 1

                            task.wait(0.05)
                        end
                    end
                end

                u16:Notify({
                    Title = 'Unlock Complete',
                    Content = 'Unlocked ' .. v577 .. ' items',
                    Duration = 3,
                })
            end,
        })
        v43.Item:AddButton({
            Title = 'Unlock All',
            Description = 'Unlock all locked items in inventory',
            Callback = function()
                local v594, v595, v596 = pairs(game.Players.LocalPlayer.BackpackTwo:GetChildren())

                while true do
                    local v597

                    v596, v597 = v594(v595, v596)

                    if v596 == nil then
                        break
                    end
                    if v597:IsA('Tool') and v597:GetAttribute('Locked') == true then
                        game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('Inventory'):WaitForChild('ToggleLock'):FireServer(v597)
                    end
                end

                u16:Notify({
                    Title = 'All Items Unlocked',
                    Content = 'All locked items have been unlocked!',
                    Duration = 3,
                })
            end,
        })

        local u598 = {
            {
                Name = 'Plastic Pan',
                Price = '$500',
                Town = 'StarterTown',
            },
            {
                Name = 'Metal Pan',
                Price = '$12k',
                Town = 'StarterTown',
            },
            {
                Name = 'Silver Pan',
                Price = '$55k',
                Town = 'StarterTown',
            },
            {
                Name = 'Golden Pan',
                Price = '$333k',
                Town = 'RiverTown',
            },
            {
                Name = 'Magnetic Pan',
                Price = '$1M',
                Town = 'RiverTown',
            },
            {
                Name = 'Meteoric Pan',
                Price = '3.5M',
                Town = 'RiverTown',
            },
            {
                Name = 'Diamond Pan',
                Price = '$10M',
                Town = 'RiverTown',
            },
            {
                Name = 'Aurora Pan',
                Price = '$35M',
                Town = 'Cavern',
            },
            {
                Name = 'Worldshaker',
                Price = '$125M',
                Town = 'Cavern',
            },
            {
                Name = 'Dragonflame Pan',
                Price = '$400M',
                Town = 'Volcano',
            },
            {
                Name = 'Fossilized Pan',
                Price = '$1B',
                Town = 'Volcano',
            },
        }
        local v599, v600, v601 = ipairs(u598)
        local v602 = {}
        local u603 = {
            {
                Name = 'Iron Shovel',
                Price = '$3k',
                Town = 'StarterTown',
            },
            {
                Name = 'Steel Shovel',
                Price = '$25k',
                Town = 'StarterTown',
            },
            {
                Name = 'Silver Shovel',
                Price = '$75k',
                Town = 'StarterTown',
            },
            {
                Name = 'Reinforced Shovel',
                Price = '$135k',
                Town = 'StarterTown',
            },
            {
                Name = 'The Excavator',
                Price = '$320k',
                Town = 'RiverTown',
            },
            {
                Name = 'Golden Shovel',
                Price = '$1.333M',
                Town = 'RiverTown',
            },
            {
                Name = 'Meteoric Shovel',
                Price = '$4M',
                Town = 'RiverTown',
            },
            {
                Name = 'Diamond Shovel',
                Price = '$12.5M',
                Town = 'RiverTown',
            },
            {
                Name = 'Divine Shovel',
                Price = '$40M',
                Town = 'Cavern',
            },
            {
                Name = 'Earthbreaker',
                Price = '$125M',
                Town = 'Cavern',
            },
            {
                Name = 'Dragonflame Shovel',
                Price = '$400M',
                Town = 'Volcano',
            },
            {
                Name = 'Fossilized Shovel',
                Price = '$1B',
                Town = 'Volcano',
            },
        }
        local v604 = {}

        while true do
            local v605

            v601, v605 = v599(v600, v601)

            if v601 == nil then
                break
            end

            table.insert(v602, v605.Name)
        end

        local v606, v607, v608 = ipairs(u603)

        while true do
            local v609

            v608, v609 = v606(v607, v608)

            if v608 == nil then
                break
            end

            table.insert(v604, v609.Name)
        end

        local u610 = v43.Shop:AddParagraph({
            Title = 'Pan & Shovel Shop',
        })
        local u611 = nil

        v43.Shop:AddDropdown('SelectPan', {
            Title = 'Select Pan',
            [u16] = v602,
            Multi = false,
        }):OnChanged(function(p612)
            u611 = p612

            local v613, v614, v615 = ipairs(u598)
            local v616 = nil

            while true do
                local v617

                v615, v617 = v613(v614, v615)

                if v615 == nil then
                    v617 = v616

                    break
                end
                if v617.Name == p612 then
                    break
                end
            end

            if v617 then
                u610.Content = 'Name: ' .. v617.Name .. '\nPrice: ' .. v617.Price
            else
                u610.Content = 'Name: N/A\nPrice: N/A'
            end
        end)
        v43.Shop:AddButton({
            Title = 'Buy Pan',
            Description = 'Purchase the selected pan',
            Callback = function()
                if not u611 then
                    u16:Notify({
                        Title = 'Error',
                        Content = 'Please select a pan first!',
                        Duration = 3,
                    })

                    return
                end

                local v618, v619, v620 = ipairs(u598)
                local v621 = nil

                while true do
                    local u622

                    v620, u622 = v618(v619, v620)

                    if v620 == nil then
                        u622 = v621

                        break
                    end
                    if u622.Name == u611 then
                        break
                    end
                end

                local v624, v625 = pcall(function()
                    local _ShopItem = workspace:WaitForChild('Purchasable'):WaitForChild(u622.Town):WaitForChild(u622.Name):WaitForChild('ShopItem')

                    game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('Shop'):WaitForChild('BuyItem'):InvokeServer(_ShopItem)
                end)

                if v624 then
                    u16:Notify({
                        Title = 'Purchase Successful',
                        Content = 'Pan purchased successfully!',
                        Duration = 3,
                    })
                else
                    u16:Notify({
                        Title = 'Purchase Failed',
                        Content = 'Failed to purchase pan: ' .. tostring(v625),
                        Duration = 5,
                    })
                end
            end,
        })

        local u626 = nil

        v43.Shop:AddDropdown('SelectShovel', {
            Title = 'Select Shovel',
            [u16] = v604,
            Multi = false,
        }):OnChanged(function(p627)
            u626 = p627

            local v628, v629, v630 = ipairs(u603)
            local v631 = nil

            while true do
                local v632

                v630, v632 = v628(v629, v630)

                if v630 == nil then
                    v632 = v631

                    break
                end
                if v632.Name == p627 then
                    break
                end
            end

            if v632 then
                u610.Content = 'Name: ' .. v632.Name .. '\nPrice: ' .. v632.Price
            else
                u610.Content = 'Name: N/A\nPrice: N/A'
            end
        end)
        v43.Shop:AddButton({
            Title = 'Buy Shovel',
            Callback = function()
                if not u626 then
                    u16:Notify({
                        Title = 'Error',
                        Content = 'Please select a shovel first!',
                        Duration = 3,
                    })

                    return
                end

                local v633, v634, v635 = ipairs(u603)
                local v636 = nil

                while true do
                    local u637

                    v635, u637 = v633(v634, v635)

                    if v635 == nil then
                        u637 = v636

                        break
                    end
                    if u637.Name == u626 then
                        break
                    end
                end

                local v639, v640 = pcall(function()
                    local _ShopItem2 = workspace:WaitForChild('Purchasable'):WaitForChild(u637.Town):WaitForChild(u637.Name):WaitForChild('ShopItem')

                    game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('Shop'):WaitForChild('BuyItem'):InvokeServer(_ShopItem2)
                end)

                if v639 then
                    u16:Notify({
                        Title = 'Purchase Successful',
                        Content = 'Shovel purchased successfully!',
                        Duration = 3,
                    })
                else
                    u16:Notify({
                        Title = 'Purchase Failed',
                        Content = 'Failed to purchase shovel: ' .. tostring(v640),
                        Duration = 5,
                    })
                end
            end,
        })

        local u641 = {
            {
                Name = 'Basic Luck Potion',
                Price = '$50,000',
                Town = 'RiverTown',
            },
            {
                Name = 'Basic Capacity Potion',
                Price = '$40,000',
                Town = 'RiverTown',
            },
            {
                Name = 'Greater Luck Potion',
                Price = '30 S',
                Town = 'RiverTown',
            },
            {
                Name = 'Greater Capacity Potion',
                Price = '20 S',
                Town = 'RiverTown',
            },
            {
                Name = 'Volcanic Luck Potion',
                Price = '1M',
                Town = 'Volcano',
            },
            {
                Name = 'Volcanic Strength Potion',
                Price = '1M',
                Town = 'Volcano',
            },
            {
                Name = 'Supreme Luck Potion',
                Price = '150 S',
                Town = 'Volcano',
            },
            {
                Name = "Merchant's Potion",
                Price = '200 S',
                Town = 'RiverTown',
            },
        }
        local v642, v643, v644 = ipairs(u641)
        local u645 = u610
        local v646 = {}

        while true do
            local v647

            v644, v647 = v642(v643, v644)

            if v644 == nil then
                break
            end

            table.insert(v646, v647.Name)
        end

        v43.Shop:AddParagraph({
            Title = 'Alchemist Shop',
        })

        local u648 = nil

        v43.Shop:AddDropdown('SelectPotion', {
            Title = 'Select Potion',
            [u16] = v646,
            Multi = false,
        }):OnChanged(function(p649)
            u648 = p649

            local v650, v651, v652 = ipairs(u641)
            local v653 = nil

            while true do
                local v654

                v652, v654 = v650(v651, v652)

                if v652 == nil then
                    v654 = v653

                    break
                end
                if v654.Name == p649 then
                    break
                end
            end

            if v654 then
                u645.Content = 'Name: ' .. v654.Name .. '\nPrice: ' .. v654.Price
            else
                u645.Content = 'Name: N/A\nPrice: N/A'
            end
        end)
        v43.Shop:AddButton({
            Title = 'Buy Potion',
            Description = 'Purchase the selected potion',
            Callback = function()
                if not u648 then
                    u16:Notify({
                        Title = 'Error',
                        Content = 'Please select a potion first!',
                        Duration = 3,
                    })

                    return
                end

                local v655, v656, v657 = ipairs(u641)
                local v658 = nil

                while true do
                    local u659

                    v657, u659 = v655(v656, v657)

                    if v657 == nil then
                        u659 = v658

                        break
                    end
                    if u659.Name == u648 then
                        break
                    end
                end

                local v660, v661 = pcall(function()
                    game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('Shop'):WaitForChild('BuyItem'):InvokeServer(workspace:WaitForChild('Purchasable'):WaitForChild(u659.Town):WaitForChild(u659.Name):WaitForChild('ShopItem'))
                end)

                if v660 then
                    u16:Notify({
                        Title = 'Purchase Successful',
                        Content = 'Potion purchased successfully!',
                        Duration = 3,
                    })
                else
                    u16:Notify({
                        Title = 'Purchase Failed',
                        Content = 'Failed to purchase potion: ' .. tostring(v661),
                        Duration = 5,
                    })
                end
            end,
        })
        v43.Shop:AddParagraph({
            Title = 'Totem',
        })

        local u662 = {
            {
                Name = 'Luck Totem',
                Town = 'RiverTown',
            },
            {
                Name = 'Strength Totem',
                Town = 'RiverTown',
            },
        }
        local v663, v664, v665 = ipairs(u662)
        local v666 = {}

        while true do
            local v667

            v665, v667 = v663(v664, v665)

            if v665 == nil then
                break
            end

            table.insert(v666, v667.Name)
        end

        local u668 = nil

        v43.Shop:AddDropdown('selecttotem', {
            Title = 'Select Totem',
            [u16] = v666,
            Multi = false,
        }):OnChanged(function(p669)
            u668 = p669

            local v670, v671, v672 = ipairs(u662)

            repeat
                local v673

                v672, v673 = v670(v671, v672)
            until v672 == nil or v673.Name == p669
        end)
        v43.Shop:AddButton({
            Title = 'Buy Totem',
            Description = 'Purchase the selected totem',
            Callback = function()
                if not u668 then
                    u16:Notify({
                        Title = 'Error',
                        Content = 'Please select a totem first!',
                        Duration = 3,
                    })

                    return
                end

                local v674, v675, v676 = ipairs(u662)
                local v677 = nil

                while true do
                    local u678

                    v676, u678 = v674(v675, v676)

                    if v676 == nil then
                        u678 = v677

                        break
                    end
                    if u678.Name == u668 then
                        break
                    end
                end

                local v679, v680 = pcall(function()
                    game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('Shop'):WaitForChild('BuyItem'):InvokeServer(workspace:WaitForChild('Purchasable'):WaitForChild(u678.Town):WaitForChild(u678.Name):WaitForChild('ShopItem'))
                end)

                if v679 then
                    u16:Notify({
                        Title = 'Purchase Successful',
                        Content = 'Potion purchased successfully!',
                        Duration = 3,
                    })
                else
                    u16:Notify({
                        Title = 'Purchase Failed',
                        Content = 'Failed to purchase potion: ' .. tostring(v680),
                        Duration = 5,
                    })
                end
            end,
        })

        local u681 = {}

        pcall(function()
            local v682, v683, v684 = ipairs(game:GetService('ReplicatedStorage').Items.Relics:GetChildren())

            while true do
                local v685

                v684, v685 = v682(v683, v684)

                if v684 == nil then
                    break
                end
                if v685:IsA('Tool') then
                    table.insert(u681, v685.Name)
                end
            end
        end)
        table.insert(u681, 'Blitz Potion')
        table.insert(u681, 'Quake Potion')
        table.insert(u681, 'Instability Potion')
        v43.Shop:AddDropdown('SelectRelicToBuy', {
            Title = 'Select to Auto Buy Merchant',
            [u16] = u681,
            Multi = true,
            Default = _G.AutoFarmSettings.AutoBuyRelic.SelectedRelics,
        }):OnChanged(function(p686)
            local v687, v688, v689 = pairs(p686)
            local v690 = {}

            while true do
                local v691

                v689, v691 = v687(v688, v689)

                if v689 == nil then
                    break
                end
                if v691 then
                    table.insert(v690, v689)
                end
            end

            _G.AutoFarmSettings.AutoBuyRelic.SelectedRelics = v690

            SaveSettings()
        end)
        v43.Shop:AddToggle('AutoBuyRelic', {
            Title = 'Auto Buy Merchant',
            Default = _G.AutoFarmSettings.AutoBuyRelic.AutoBuyRelic,
        }):OnChanged(function(p692)
            _G.AutoFarmSettings.AutoBuyRelic.AutoBuyRelic = p692

            SaveSettings()

            if p692 then
                task.spawn(function()
                    while u426.AutoBuyRelic.Value do
                        pcall(function()
                            CheckMerchantSession()

                            local v693 = _G.AutoFarmSettings.AutoBuyRelic.SelectedRelics or {}
                            local v694, v695, v696 = ipairs(v693)

                            while true do
                                local v697

                                v696, v697 = v694(v695, v696)

                                if v696 == nil then
                                    break
                                end
                                if not WasAlreadyPurchased(v697) then
                                    local v698, v699, v700 = GetRelicShopItem(v697)

                                    if v698 and CanAffordRelic(v699, v700) then
                                        local v701, v702 = BuyRelic(v698, v697, v699, v700)

                                        if v701 then
                                            task.wait(2)
                                        else
                                            print('Failed to buy ' .. v697 .. ': ' .. tostring(v702))
                                        end
                                    end
                                end
                            end
                        end)
                        task.wait(10)
                    end
                end)
            end
        end)
        v43.Shop:AddToggle('EnableMoneyPurchase', {
            Title = 'Enable Money Purchase',
            Default = _G.AutoFarmSettings.AutoBuyRelic.EnableMoneyPurchase,
        }):OnChanged(function(p703)
            _G.AutoFarmSettings.AutoBuyRelic.EnableMoneyPurchase = p703

            SaveSettings()
        end)
        v43.Shop:AddToggle('EnableShardPurchase', {
            Title = 'Enable Shard Purchase',
            Default = _G.AutoFarmSettings.AutoBuyRelic.EnableShardPurchase,
        }):OnChanged(function(p704)
            _G.AutoFarmSettings.AutoBuyRelic.EnableShardPurchase = p704

            SaveSettings()
        end)

        local _Quests = game:GetService('ReplicatedStorage'):WaitForChild('Quests')
        local v706, v707, v708 = ipairs(_Quests:GetChildren())
        local u709 = {}

        while true do
            local v710

            v708, v710 = v706(v707, v708)

            if v708 == nil then
                break
            end

            table.insert(u709, v710.Name)
        end

        local u711 = nil
        local u712 = nil

        v43.Questz:AddDropdown('AcceptQuestDropdown', {
            Title = 'Select Quest to Accept',
            [u16] = u709,
            Multi = false,
            Default = 1,
            Callback = function(p713)
                u711 = p713
            end,
        })
        v43.Questz:AddButton({
            Title = 'Accept Selected Quest',
            Description = 'Accepts the quest selected in the dropdown',
            Callback = function()
                if u711 then
                    local v714 = {
                        _Quests:WaitForChild(u711),
                    }

                    game:GetService('ReplicatedStorage').Remotes.Quests.StartQuest:InvokeServer(unpack(v714))
                    u16:Notify({
                        Title = 'Quest Accepted',
                        Content = 'You accepted: ' .. u711,
                        Duration = 3,
                    })
                else
                    u16:Notify({
                        Title = 'Error',
                        Content = 'Please select a quest first!',
                        Duration = 3,
                    })
                end
            end,
        })
        v43.Questz:AddButton({
            Title = 'Accept All Quests',
            Description = 'Accept all quests',
            Callback = function()
                local v715, v716, v717 = ipairs(u709)

                while true do
                    local v718

                    v717, v718 = v715(v716, v717)

                    if v717 == nil then
                        break
                    end

                    local v719 = {
                        _Quests:WaitForChild(v718),
                    }

                    game:GetService('ReplicatedStorage').Remotes.Quests.StartQuest:InvokeServer(unpack(v719))
                end

                u16:Notify({
                    Title = 'Quests Accepted',
                    Content = 'All quests accepted!',
                    Duration = 3,
                })
            end,
        })
        v43.Questz:AddDropdown('CompleteQuestDropdown', {
            Title = 'Select Quest to Complete',
            [u16] = u709,
            Multi = false,
            Default = 1,
            Callback = function(p720)
                u712 = p720
            end,
        })
        v43.Questz:AddButton({
            Title = 'Complete Selected Quest',
            Description = 'Complete the quest selected in the dropdown',
            Callback = function()
                if u712 then
                    local v721 = {u712}

                    game:GetService('ReplicatedStorage').Remotes.Quests.QuestTalked:FireServer(unpack(v721))
                    u16:Notify({
                        Title = 'Quest Completed',
                        Content = 'You completed: ' .. u712,
                        Duration = 3,
                    })
                else
                    u16:Notify({
                        Title = 'Error',
                        Content = 'Please select a quest first!',
                        Duration = 3,
                    })
                end
            end,
        })
        v43.Questz:AddButton({
            Title = 'Complete All Quests',
            Description = 'Complete all quests',
            Callback = function()
                local v722, v723, v724 = ipairs(u709)

                while true do
                    local v725

                    v724, v725 = v722(v723, v724)

                    if v724 == nil then
                        break
                    end

                    game:GetService('ReplicatedStorage').Remotes.Quests.QuestTalked:FireServer(unpack({v725}))
                end

                u16:Notify({
                    Title = 'Quests Completed',
                    Content = 'All quests completed!',
                    Duration = 3,
                })
            end,
        })
        v43.Webhook:AddParagraph({
            Title = 'Webhook Setup',
            Content = 'Configure Discord webhooks to receive valuable drop notifications.',
        })

        local _, _ = identifyexecutor()
        local u726 = {
            title = 'Username : ||' .. _LocalPlayer2.Name .. ' ||',
            description = 'test',
            color = 5763711,
            footer = {
                text = 'PeanutX',
            },
        }
        local _Url = _G.AutoFarmSettings.Webhook.Url

        v43.Webhook:AddInput('WebhookUrl', {
            Title = 'Webhook URL',
            Default = _G.AutoFarmSettings.Webhook.Url,
            Placeholder = 'https://discord.com/api/webhooks/...',
            Callback = function(p728)
                _Url = p728
            end,
        })
        v43.Webhook:AddButton({
            Title = 'Save Webhook',
            Description = 'Save the webhook URL',
            Callback = function()
                _G.AutoFarmSettings.Webhook.Url = _Url

                SaveSettings()
                u16:Notify({
                    Title = 'Webhook Saved',
                    Content = 'Webhook URL saved successfully!',
                    Duration = 3,
                })
            end,
        })
        v43.Webhook:AddButton({
            Title = 'Test Webhook',
            Description = 'Send a test message to verify webhook',
            Callback = function()
                if _G.AutoFarmSettings.Webhook.Url and _G.AutoFarmSettings.Webhook.Url ~= '' then
                    SendMessageEMBED(_G.AutoFarmSettings.Webhook.Url, u726)
                    u16:Notify({
                        Title = 'Test',
                        Content = 'Test',
                        Duration = 3,
                    })
                else
                    u16:Notify({
                        Title = 'Error',
                        Content = 'Please set webhook URL first!',
                        Duration = 3,
                    })
                end
            end,
        })
        v43.Webhook:AddParagraph({
            Title = 'Valuable Notifications',
            Content = 'Receive notifications when valuable items are found.',
        })

        local _LocalPlayer4 = game:GetService('Players').LocalPlayer
        local u730 = {}
        local u731 = nil
        local u732 = 3

        function GetItemWeight(p733)
            local v734

            if p733:GetAttribute('Weight') then
                v734 = p733:GetAttribute('Weight')
            else
                local _ItemData5 = p733:FindFirstChild('ItemData')

                v734 = not _ItemData5 or _ItemData5:GetAttribute('Weight')

                if not v734 then
                    local _Weight5 = _ItemData5:FindFirstChild('Weight')

                    if _Weight5 then
                        v734 = _Weight5.Value
                    end
                end
            end

            return v734 or 0
        end
        function AddToCollection(p737, p738, p739)
            local _s = p737:gsub('%[.-%]%s*', '')
            local v741, v742, v743 = pairs(u730)
            local v744 = p739 or 0
            local v745 = false

            while true do
                local v746

                v743, v746 = v741(v742, v743)

                if v743 == nil then
                    break
                end
                if v746.name == _s then
                    v746.count = v746.count + 1
                    v746.totalWeight = v746.totalWeight + v744
                    v745 = true

                    break
                end
            end

            if not v745 then
                table.insert(u730, {
                    name = _s,
                    rarity = p738,
                    count = 1,
                    weight = v744,
                    totalWeight = v744,
                })
            end
            if u731 then
                task.cancel(u731)
            end

            u731 = task.delay(u732, function()
                SendCollectedItems()
            end)
        end
        function SendCollectedItems()
            if #u730 ~= 0 then
                local v747, v748, v749 = pairs({
                    'Exotic',
                    'Mythic',
                    'Legendary',
                    'Epic',
                    'Rare',
                    'Uncommon',
                    'Common',
                })
                local v750 = '```\n'
                local v751 = 0
                local v752 = 0

                while true do
                    local v753

                    v749, v753 = v747(v748, v749)

                    if v749 == nil then
                        break
                    end

                    local v754, v755, v756 = pairs(u730)
                    local v757 = false

                    while true do
                        local v758

                        v756, v758 = v754(v755, v756)

                        if v756 == nil then
                            break
                        end
                        if v758.rarity == v753 then
                            if not v757 then
                                v750 = v750 .. '\n'
                                v757 = true
                            end

                            local v759 = v758.totalWeight <= 0 and '' or ' (' .. string.format('%.2f', v758.totalWeight) .. 'kg)'

                            v750 = v750 .. v758.name .. ' x' .. v758.count .. ' [' .. v753 .. ']' .. v759 .. '\n'
                            v751 = v751 + v758.count
                            v752 = v752 + v758.totalWeight
                        end
                    end

                    if v757 then
                        v750 = v750 .. '\n'
                    end
                end

                local v760 = v750 .. '```'
                local v761 = u426.WebhookPing and u426.WebhookPing.Value and '@everyone' or ''
                local _ = 0 < v752 and '\n**Total Weight** ``' .. string.format('%.2f', v752) .. 'kg``'
                local v762 = {
                    content = v761,
                    title = 'Prospecting',
                    description = '**Username** ' .. '||' .. _LocalPlayer4.Name .. '||' .. '\n\n' .. v760,
                    color = 5763719,
                    footer = {
                        text = 'Time: ' .. os.date('%H:%M:%S'),
                    },
                }

                SendMessageEMBED(_G.AutoFarmSettings.Webhook.Url, v762)

                u730 = {}
                u731 = nil
            end
        end
        function CheckRarity(p763)
            if u426.SendNotifyRarity and u426.SendNotifyRarity.Value then
                if p763:GetAttribute('Rarity') and p763:GetAttribute('ItemType') then
                    local _Rarity5 = p763:GetAttribute('Rarity')
                    local _ItemType2 = p763:GetAttribute('ItemType')
                    local v766 = p763.Name or 'Unknown Item'
                    local v767 = GetItemWeight(p763)

                    if _ItemType2 == 'Valuable' and table.find(_G.AutoFarmSettings.Webhook.Rarity_Webhook or {}, _Rarity5) then
                        AddToCollection(v766, _Rarity5, v767)
                    end
                end
            else
                return
            end
        end

        v43.Webhook:AddDropdown('WebhookRarity', {
            Title = 'Select Rarity for Notifications',
            [u16] = {
                'Common',
                'Uncommon',
                'Rare',
                'Epic',
                'Legendary',
                'Mythic',
                'Exotic',
            },
            Multi = true,
            Default = _G.AutoFarmSettings.Webhook.Rarity_Webhook,
        }):OnChanged(function(p768)
            local v769, v770, v771 = pairs(p768)
            local v772 = {}

            while true do
                local v773

                v771, v773 = v769(v770, v771)

                if v771 == nil then
                    break
                end
                if v773 then
                    table.insert(v772, v771)
                end
            end

            _G.AutoFarmSettings.Webhook.Rarity_Webhook = v772

            SaveSettings()
        end)
        v43.Webhook:AddToggle('WebhookPing', {
            Title = 'Ping (@everyone)',
            Default = _G.AutoFarmSettings.Webhook.Ping,
        }):OnChanged(function(p774)
            _G.AutoFarmSettings.Webhook.Ping = p774

            SaveSettings()
        end)
        v43.Webhook:AddToggle('SendNotifyRarity', {
            Title = 'Send Notifications',
            Default = _G.AutoFarmSettings.Webhook.SendNotify_Rarity,
        }):OnChanged(function(p775)
            _G.AutoFarmSettings.Webhook.SendNotify_Rarity = p775

            SaveSettings()
        end)
        _LocalPlayer4.BackpackTwo.ChildAdded:Connect(function(p776)
            CheckRarity(p776)
        end)
        v43.Webhook:AddToggle('AutoBuyWebhookNotify', {
            Title = 'Auto Buy Notifications',
            Default = _G.AutoFarmSettings.Webhook.AutoBuyWebhookNotify,
        }):OnChanged(function(p777)
            _G.AutoFarmSettings.Webhook.AutoBuyWebhookNotify = p777

            SaveSettings()
        end)
        v43.Credit:AddButton({
            Title = 'Copy Discord',
            Callback = function()
                if setclipboard then
                    setclipboard('https://discord.gg/GaQ9M68s4p')
                elseif toclipboard then
                    toclipboard('https://discord.gg/GaQ9M68s4p')
                elseif syn and syn.write_clipboard then
                    syn.write_clipboard('https://discord.gg/GaQ9M68s4p')
                else
                    warn('Error!')
                end

                u16:Notify({
                    Title = 'Copy successfully!!',
                    Content = 'Link copied to clipboard!!!',
                    Duration = 3,
                })
            end,
        })
        v43.Teleport:AddDropdown('TeleportWaypoint', {
            Title = 'Select Waypoint',
            [u16] = v28,
            Multi = false,
            Default = 1,
        })
        v43.Teleport:AddButton({
            Title = 'Teleport to Waypoint',
            Description = 'Fast travel to selected waypoint',
            Callback = function()
                local _Value2 = u426.TeleportWaypoint.Value

                if _Value2 then
                    FastTravelTo(_Value2)
                    u16:Notify({
                        Title = 'Teleporting',
                        Content = 'Teleporting to ' .. _Value2 .. '...',
                        Duration = 3,
                    })
                else
                    u16:Notify({
                        Title = 'Error',
                        Content = 'Please select a waypoint first!',
                        Duration = 3,
                    })
                end
            end,
        })

        local _AutoTotem = v43.AutoTotem:AddToggle('AutoTotem', {
            Title = 'Auto Place Totem',
            Default = _G.AutoFarmSettings.AutoTotem.AutoTotem,
        })
        local _TotemTypes = v43.AutoTotem:AddDropdown('TotemTypes', {
            Title = 'Select Totem Types',
            [u16] = {
                'Luck Totem',
                'Strength Totem',
            },
            Multi = true,
            Default = _G.AutoFarmSettings.AutoTotem.TotemTypes,
        })
        local _EventTypes = v43.AutoTotem:AddDropdown('EventTypes', {
            Title = 'Select Event Types',
            [u16] = {
                'Meteor Shower',
                'River Rapid',
            },
            Multi = true,
            Default = _G.AutoFarmSettings.AutoTotem.EventTypes,
        })

        v43.AutoTotem:AddButton({
            Title = 'Set Totem Position',
            Description = 'Set your current position for placing totems',
            Callback = function()
                local _, v782 = GetCharacter()

                if v782 then
                    local _Position13 = v782.Position

                    _G.AutoFarmSettings.AutoTotem.TotemPosition = {
                        math.round(_Position13.X),
                        math.round(_Position13.Y),
                        math.round(_Position13.Z),
                    }

                    SaveSettings()
                    u16:Notify({
                        Title = 'Position Saved',
                        Content = 'Totem position saved!',
                        Duration = 3,
                    })
                end
            end,
        })
        _AutoTotem:OnChanged(function(p784)
            _G.AutoFarmSettings.AutoTotem.AutoTotem = p784

            SaveSettings()
        end)
        _TotemTypes:OnChanged(function(p785)
            local v786, v787, v788 = pairs(p785)
            local v789 = {}

            while true do
                local v790

                v788, v790 = v786(v787, v788)

                if v788 == nil then
                    break
                end
                if v790 then
                    table.insert(v789, v788)
                end
            end

            _G.AutoFarmSettings.AutoTotem.TotemTypes = v789

            SaveSettings()
        end)
        _EventTypes:OnChanged(function(p791)
            local v792, v793, v794 = pairs(p791)
            local v795 = {}

            while true do
                local v796

                v794, v796 = v792(v793, v794)

                if v794 == nil then
                    break
                end
                if v796 then
                    table.insert(v795, v794)
                end
            end

            _G.AutoFarmSettings.AutoTotem.EventTypes = v795

            SaveSettings()
        end)

        local u797 = _LocalPlayer4.Character or _LocalPlayer4.CharacterAdded:Wait()
        local v798 = u797
        local v799 = u797.WaitForChild(v798, 'Humanoid')
        local _Animation = Instance.new('Animation')

        _Animation.AnimationId = game:GetService('ReplicatedStorage').Assets.Animations.Panning.DigHit.AnimationId

        local _Animation2 = Instance.new('Animation')

        _Animation2.AnimationId = game:GetService('ReplicatedStorage').Assets.Animations.Panning.Shake.AnimationId

        local u802 = v799:LoadAnimation(_Animation)

        u802.Looped = true
        u802.Priority = Enum.AnimationPriority.Action

        local u803 = v799:LoadAnimation(_Animation2)

        u803.Looped = true
        u803.Priority = Enum.AnimationPriority.Action

        task.spawn(function()
            while true do
                pcall(function()
                    if _G.EnabledCollecting then
                        if not u802.IsPlaying then
                            u802:Play()

                            local v804, v805, v806 = pairs(_LocalPlayer4.Character:GetChildren())

                            while true do
                                local v807

                                v806, v807 = v804(v805, v806)

                                if v806 == nil then
                                    break
                                end
                                if v807.Name:lower():find('pan') and v807:IsA('Tool') then
                                    v807.Scripts.ToggleShovelActive:FireServer(true)
                                end
                            end
                        end
                    elseif u802.IsPlaying then
                        u802:Stop()

                        local v808, v809, v810 = pairs(_LocalPlayer4.Character:GetChildren())

                        while true do
                            local v811

                            v810, v811 = v808(v809, v810)

                            if v810 == nil then
                                break
                            end
                            if v811.Name:lower():find('pan') and v811:IsA('Tool') then
                                v811.Scripts.ToggleShovelActive:FireServer(false)
                            end
                        end
                    end
                    if _G.EnabledShake then
                        if not u803.IsPlaying then
                            u803:Play()
                        end
                    elseif u803.IsPlaying then
                        u803:Stop()
                    end
                end)
                task.wait(0.3)
            end
        end)

        function ExecuteAutoSell(p812)
            if not u426.AutoSell.Value then
                return
            end

            local _InventorySize2 = _LocalPlayer4:GetAttribute('InventorySize')
            local v814 = _LocalPlayer4:WaitForChild('BackpackTwo'):GetChildren()
            local v815 = _LocalPlayer4.Character and _LocalPlayer4.Character:FindFirstChildOfClass('Tool')

            if v815 then
                table.insert(v814, v815)
            end

            local v816, v817, v818 = ipairs(v814)
            local v819 = 0

            while true do
                local v820, v821 = v816(v817, v818)

                if v820 == nil then
                    break
                end

                v818 = v820

                local _ItemType3 = v821:GetAttribute('ItemType')

                if _ItemType3 == 'Equipment' or _ItemType3 == 'Valuable' then
                    v819 = v819 + 1
                end
            end

            if tonumber(u426.SellAmount.Value or _G.AutoFarmSettings.AutoSell.Amount) <= v819 or _InventorySize2 <= v819 then
                _G.AutoFarmState.selling = true
                _G.EnabledCollecting = false
                _G.EnabledShake = false
                _G.EnabledEventFarm = false

                if u426.AutoChangePan.Value and u426.SelectPanSell.Value then
                    local _Value3 = u426.SelectPanSell.Value
                    local v824, v825, v826 = pairs(_LocalPlayer4.BackpackTwo:GetChildren())

                    while true do
                        local v827

                        v826, v827 = v824(v825, v826)

                        if v826 == nil then
                            break
                        end
                        if v827:IsA('Tool') and v827.Name == _Value3 then
                            _LocalPlayer4.Character.Humanoid:EquipTool(v827)
                            task.wait(0.5)

                            break
                        end
                    end
                end
                if u426.SellAllGamepass.Value then
                    local v828, v829 = pcall(function()
                        game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('Shop'):WaitForChild('SellAll'):InvokeServer()
                    end)

                    if v828 then
                        u16:Notify({
                            Title = 'SellAll Gamepass',
                            Content = 'Sold all items instantly!',
                            Duration = 2,
                        })
                    else
                        u16:Notify({
                            Title = 'SellAll Failed',
                            Content = 'Failed to use SellAll gamepass: ' .. tostring(v829),
                            Duration = 3,
                        })
                    end

                    task.wait(1)

                    _G.AutoFarmState.selling = false
                elseif p812 then
                    ExitVoid()
                    task.wait(2)
                    MoveToPosition(_G.AutoFarmSettings.AutoVoid.VoidSellPos, function(p830)
                        if p830 then
                            pcall(function()
                                game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('Shop'):WaitForChild('SellAll'):InvokeServer()
                            end)

                            _G.AutoFarmState.selling = false

                            TeleportToVoid()
                            task.wait(1)
                        else
                            _G.AutoFarmState.selling = false
                        end
                    end, true, true)
                else
                    local v831 = {
                        _G.AutoFarmSettings.Positions.SellPos1,
                        _G.AutoFarmSettings.Positions.SellPos2,
                        _G.AutoFarmSettings.Positions.SellPos3,
                        _G.AutoFarmSettings.Positions.SellPos4,
                    }
                    local v832, v833, v834 = ipairs(v831)
                    local u835 = {}

                    while true do
                        local v836

                        v834, v836 = v832(v833, v834)

                        if v834 == nil then
                            break
                        end
                        if v836 then
                            table.insert(u835, v836)
                        end
                    end

                    if #u835 <= 0 then
                        _G.AutoFarmState.selling = false
                    else
                        local u837 = 1

                        local function u844()
                            local v838 = u835[u837]

                            if v838 then
                                MoveToPosition(v838, function(p839)
                                    if p839 then
                                        if u837 ~= #u835 then
                                            u837 = u837 + 1

                                            task.wait(0.5)
                                            u844()
                                        else
                                            pcall(function()
                                                game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('Shop'):WaitForChild('SellAll'):InvokeServer()
                                            end)

                                            local u840 = #u835 - 1

                                            local function u843()
                                                if u840 < 1 then
                                                    local _PanningPos3 = _G.AutoFarmSettings.Positions.PanningPos

                                                    if _PanningPos3 then
                                                        MoveToPosition(_PanningPos3, function()
                                                            _G.AutoFarmState.selling = false
                                                        end, true, true)
                                                    else
                                                        _G.AutoFarmState.selling = false
                                                    end
                                                else
                                                    local v842 = u835[u840]

                                                    MoveToPosition(v842, function(_)
                                                        u840 = u840 - 1

                                                        task.wait(0.5)
                                                        u843()
                                                    end, true, true)
                                                end
                                            end

                                            u843()
                                        end
                                    else
                                        _G.AutoFarmState.selling = false
                                    end
                                end, true, true)
                            end
                        end

                        u844()
                    end
                end
            end
        end
        function ShouldStopFarmingForTotem()
            if _G.EnabledEventFarm then
                return false
            end
            if not (u426.AutoTotem and u426.AutoTotem.Value) then
                return false
            end
            if _G.AutoFarmState.selling or _G.TotemState.isPlacingTotems then
                return false
            end
            if not _G.AutoFarmSettings.AutoTotem.TotemPosition then
                return false
            end

            local v845 = _G.AutoFarmSettings.AutoTotem.TotemTypes or {}

            if #v845 == 0 then
                return false
            end

            local v846 = CheckTotemEvents()
            local v847 = _G.AutoFarmSettings.AutoTotem.EventTypes or {}

            if #GetAvailableTotems(v845) == 0 then
                return false
            end

            local v848, v849, v850 = pairs(v847)

            while true do
                local v851

                v850, v851 = v848(v849, v850)

                if v850 == nil then
                    break
                end
                if v851 == 'Meteor Shower' and v846.meteor then
                    if not _G.TotemState.currentActiveEvents.meteor then
                        _G.TotemState.currentActiveEvents.meteor = true

                        return true
                    end
                elseif v851 == 'River Rapid' and (v846.riverRapid and not _G.TotemState.currentActiveEvents.riverRapid) then
                    _G.TotemState.currentActiveEvents.riverRapid = true

                    return true
                end
            end

            if not v846.meteor then
                _G.TotemState.currentActiveEvents.meteor = nil
            end
            if not v846.riverRapid then
                _G.TotemState.currentActiveEvents.riverRapid = nil
            end

            return false
        end

        _AutoFarm:OnChanged(function(p852)
            _G.AutoFarmSettings.AutoFarm.AutoFarm = p852

            SaveSettings()

            if not _G.AutoFarmState then
                local v853 = {
                    selling = false,
                    eventStatus = {
                        infernal = false,
                        void = false,
                    },
                    wasInVoidEvent = false,
                    wasInInfernalEvent = false,
                    lastVoidStatus = false,
                }

                _G.AutoFarmState = v853
            end
            if p852 then
                task.spawn(function()
                    while u426.AutoFarm.Value do
                        pcall(function()
                            local u854 = false

                            pcall(function()
                                if HandleTotemLogicInMainLoop() then
                                    u854 = true
                                end
                            end)

                            if u854 then
                                task.wait(2)
                            else
                                local v855 = CheckEventActive()

                                HandleVoidEventTransition()

                                _G.AutoFarmState.eventStatus = v855

                                local u856 = (not _G.AutoFarmState.selling and (not _G.TotemState.isPlacingTotems and u797) and true or false) and u797:FindFirstChildWhichIsA('Tool')

                                if u856 then
                                    local _Fill2 = u856:GetAttribute('Fill')
                                    local _Capacity2 = _LocalPlayer4.Stats:GetAttribute('Capacity')
                                    local _Panning2 = u797:GetAttribute('Panning')
                                    local v860 = false
                                    local v861 = false
                                    local v862, v863

                                    if v855.void and u426.AutoVoid.Value then
                                        v862 = _G.AutoFarmSettings.AutoVoid.VoidPanningPos
                                        v863 = _G.AutoFarmSettings.AutoVoid.VoidShakingPos
                                        v860 = true
                                        _G.EnabledEventFarm = true

                                        if not IsPlayerInVoid() then
                                            if TeleportToVoid() then
                                                task.wait(2)
                                            else
                                                print('Failed to Enter Void')
                                            end
                                        end
                                    elseif v855.infernal and u426.AutoInfernal.Value then
                                        v862 = _G.AutoFarmSettings.AutoInfernal.InfernalPanningPos
                                        v863 = _G.AutoFarmSettings.AutoInfernal.InfernalShakingPos
                                        _G.EnabledEventFarm = true
                                        v861 = true
                                    else
                                        v862 = _G.AutoFarmSettings.Positions.PanningPos
                                        v863 = _G.AutoFarmSettings.Positions.ShakingPos
                                        _G.EnabledEventFarm = false

                                        if _G.AutoFarmState.wasInVoidEvent then
                                            FastTravelTo(u426.VoidWaypoint.Value or _G.AutoFarmSettings.AutoVoid.VoidWaypoint)
                                            task.wait(3)

                                            _G.AutoFarmState.wasInVoidEvent = false
                                        end
                                        if _G.AutoFarmState.wasInInfernalEvent then
                                            _G.AutoFarmState.wasInInfernalEvent = false
                                        end
                                    end
                                    if v860 then
                                        _G.AutoFarmState.wasInVoidEvent = true
                                    elseif v861 then
                                        _G.AutoFarmState.wasInInfernalEvent = true
                                    end

                                    ExecuteAutoSell(v860)

                                    if not _G.AutoFarmState.selling and (not _G.TotemState.isPlacingTotems and (v862 and v863)) then
                                        if _Capacity2 <= _Fill2 and not _Panning2 then
                                            _G.EnabledCollecting = false
                                            _G.EnabledShake = false

                                            MoveToPosition(v863, function(p864)
                                                if p864 and u856 and u856:FindFirstChild('Scripts') then
                                                    u856.Scripts.Pan:InvokeServer()
                                                end
                                            end)
                                        elseif _Panning2 or _Fill2 >= _Capacity2 then
                                            _G.EnabledCollecting = false

                                            MoveToPosition(v863, function(p865)
                                                if p865 then
                                                    _G.EnabledShake = true

                                                    task.spawn(function()
                                                        while _G.EnabledShake and (u426.AutoFarm.Value and not _G.TotemState.isPlacingTotems) do
                                                            pcall(function()
                                                                local _Tool4 = _LocalPlayer4.Character:FindFirstChildOfClass('Tool')

                                                                if _Tool4 and _Tool4:FindFirstChild('Scripts') then
                                                                    _Tool4.Scripts.Shake:FireServer()
                                                                end
                                                            end)
                                                            task.wait(0.05)
                                                        end
                                                    end)
                                                end
                                            end)
                                        else
                                            _G.EnabledShake = false

                                            MoveToPosition(v862, function(p867)
                                                if p867 then
                                                    _G.EnabledCollecting = true

                                                    if u856 and u856:FindFirstChild('Scripts') then
                                                        u856.Scripts.Collect:InvokeServer(1)
                                                    end
                                                end
                                            end)
                                        end
                                    end
                                end
                            end
                        end)
                        task.wait(0.5)
                    end
                end)
                task.spawn(function()
                    while u426.AutoFarm.Value do
                        task.wait(5)
                        pcall(function()
                            if _G.EnabledCollecting and not u802.IsPlaying then
                                u802:Play()
                            end
                            if _G.EnabledShake and not u803.IsPlaying then
                                u803:Play()
                            end
                        end)
                    end
                end)
            else
                _G.EnabledCollecting = false
                _G.EnabledShake = false
                _G.EnabledEventFarm = false

                if _G.TotemState then
                    _G.TotemState.isPlacingTotems = false
                end
            end
        end)
        _LocalPlayer4.CharacterAdded:Connect(function(p868)
            task.wait(2)

            local _Humanoid2 = p868:WaitForChild('Humanoid')
            local _Animation3 = Instance.new('Animation')

            _Animation3.AnimationId = game:GetService('ReplicatedStorage').Assets.Animations.Panning.DigHit.AnimationId

            local _Animation4 = Instance.new('Animation')

            _Animation4.AnimationId = game:GetService('ReplicatedStorage').Assets.Animations.Panning.Shake.AnimationId
            u802 = _Humanoid2:LoadAnimation(_Animation3)
            u802.Looped = true
            u802.Priority = Enum.AnimationPriority.Action
            u803 = _Humanoid2:LoadAnimation(_Animation4)
            u803.Looped = true
            u803.Priority = Enum.AnimationPriority.Action

            if u426.AutoFarm.Value then
                task.wait(1)
            end
        end)

        local _VirtualUser = game:GetService('VirtualUser')
        local _LocalPlayer5 = game:GetService('Players').LocalPlayer
        local u874 = nil

        v43.Settings:AddToggle('AntiAFK', {
            Title = 'Anti-AFK',
            Default = true,
        }):OnChanged(function(p875)
            if p875 then
                u874 = _LocalPlayer5.Idled:Connect(function()
                    _VirtualUser:CaptureController()
                    _VirtualUser:ClickButton2(Vector2.new())
                end)
            elseif u874 then
                u874:Disconnect()

                u874 = nil
            end
        end)
        v17:SetLibrary(u16)
        v18:SetLibrary(u16)
        v17:IgnoreThemeSettings()
        v17:SetIgnoreIndexes({})
        v18:SetFolder('PeanutZ9')
        v17:SetFolder('PeanutZ9/AutoFarm')
        v18:BuildInterfaceSection(v43.Settings)
        v17:BuildConfigSection(v43.Settings)
        u42:SelectTab(1)
        v17:LoadAutoloadConfig()

        local _Players2 = game:GetService('Players')
        local _UserInputService = game:GetService('UserInputService')
        local _PlayerGui = _Players2.LocalPlayer:WaitForChild('PlayerGui')
        local v879 = _PlayerGui:FindFirstChild('MiniImageButtonGui') or Instance.new('ScreenGui')

        v879.Name = 'MiniImageButtonGui'
        v879.ResetOnSpawn = false
        v879.IgnoreGuiInset = true
        v879.Parent = _PlayerGui

        local u880 = v879:FindFirstChild('MinimizeImageButton') or Instance.new('ImageButton')

        u880.Name = 'MinimizeImageButton'
        u880.Size = UDim2.new(0, 50, 0, 50)
        u880.AnchorPoint = Vector2.new(0.5, 0.5)
        u880.Position = UDim2.new(0.32, 0, 0.28, 0)
        u880.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        u880.BackgroundTransparency = 0
        u880.Image = 'rbxassetid://57357690'
        u880.ScaleType = Enum.ScaleType.Fit
        u880.AutoButtonColor = false
        u880.ZIndex = 10
        u880.Parent = v879

        if not u880:FindFirstChild('UICorner') then
            local _UICorner = Instance.new('UICorner')

            _UICorner.CornerRadius = UDim.new(0, 16)
            _UICorner.Parent = u880
        end

        local u882 = false
        local u883 = nil
        local u884 = nil
        local u885 = false

        local function u891(p886, p887)
            local _ViewportSize = (workspace.CurrentCamera or workspace:WaitForChild('CurrentCamera')).ViewportSize
            local v889 = u880.AbsoluteSize.X / 2
            local v890 = u880.AbsoluteSize.Y / 2

            return math.clamp(p886, v889, _ViewportSize.X - v889), math.clamp(p887, v890, _ViewportSize.Y - v890)
        end
        local function u894(p892, p893)
            u880.Position = UDim2.new(0, p892, 0, p893)
        end

        u880.InputBegan:Connect(function(p895)
            if p895.UserInputType == Enum.UserInputType.MouseButton1 or p895.UserInputType == Enum.UserInputType.Touch then
                u882 = true
                u885 = false
                u883 = p895.Position

                local _AbsolutePosition = u880.AbsolutePosition
                local _AbsoluteSize = u880.AbsoluteSize

                u884 = Vector2.new(_AbsolutePosition.X + _AbsoluteSize.X * u880.AnchorPoint.X, _AbsolutePosition.Y + _AbsoluteSize.Y * u880.AnchorPoint.Y)

                p895.Changed:Connect(function()
                    if p895.UserInputState == Enum.UserInputState.End then
                        u882 = false
                    end
                end)
            end
        end)
        u880.InputChanged:Connect(function(p898)
            if p898.UserInputType == Enum.UserInputType.MouseMovement or p898.UserInputType == Enum.UserInputType.Touch then
                _UserInputService.InputChanged:Connect(function(p899)
                    if u882 and p899 == p898 then
                        local v900 = p899.Position - u883

                        if v900.Magnitude > 5 then
                            u885 = true
                        end

                        local v901, v902 = u891(u884.X + v900.X, u884.Y + v900.Y)

                        u894(v901, v902)
                    end
                end)
            end
        end)
        u880.MouseButton1Click:Connect(function()
            if not u885 then
                if u42.Minimized then
                    u42:Minimize(false)
                else
                    u42:Minimize(true)
                end
            end
        end)
    end) then
        warn('Failed to load main script')
    end
end

if isfile(u3) then
    local v904 = readfile(u3)

    if v904 and v904 ~= '' then
        if u14((string.gsub(v904, '%s+', ''))) then
            print('Saved key is still valid, loading script...')
            u903()

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

local _TextLabel = Instance.new('TextLabel', _Frame)

_TextLabel.Size = UDim2.new(1, 0, 0, 50)
_TextLabel.BackgroundTransparency = 1
_TextLabel.Text = 'Peanut X'
_TextLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
_TextLabel.Font = Enum.Font.GothamBold
_TextLabel.TextScaled = true

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

local _TextLabel2 = Instance.new('TextLabel', _Frame)

_TextLabel2.Size = UDim2.new(0.8, 0, 0, 25)
_TextLabel2.Position = UDim2.new(0.1, 0, 0.8, 0)
_TextLabel2.Text = 'Enter new key or get one from the link above'
_TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
_TextLabel2.Font = Enum.Font.Gotham
_TextLabel2.TextScaled = true
_TextLabel2.BackgroundTransparency = 1

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

    _TextLabel2.Text = 'Link copied to clipboard.'
    _TextLabel2.TextColor3 = Color3.fromRGB(0, 255, 0)

    wait(2)

    _TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
    _TextLabel2.Text = 'Enter new key or get one from the link above'
end)
_TextButton2.MouseButton1Click:Connect(function()
    local v912 = _TextBox.Text or ''
    local u913 = string.gsub(v912, '%s+', '')

    if u913 == '' then
        _TextLabel2.Text = 'Please enter your key.'
        _TextLabel2.TextColor3 = Color3.fromRGB(255, 0, 0)
    else
        _TextLabel2.Text = 'Checking key...'
        _TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 0)

        if u14(u913) then
            _TextLabel2.Text = 'Key Valid! Loading Script...'
            _TextLabel2.TextColor3 = Color3.fromRGB(0, 255, 0)

            pcall(function()
                writefile(u3, u913)
            end)
            wait(1)
            u903()
            _ScreenGui:Destroy()
        else
            _TextLabel2.Text = 'Invalid key. Try again.'
            _TextLabel2.TextColor3 = Color3.fromRGB(255, 0, 0)
        end
    end
end)
_TextBox.FocusLost:Connect(function(p914)
    if p914 then
        _TextButton2.MouseButton1Click:Fire()
    end
end)
