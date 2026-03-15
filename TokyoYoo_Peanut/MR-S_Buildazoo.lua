-- The whitelist (key system) has not been removed. Please resolve it yourself.

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
local function u507()
    if not pcall(function()
        local v15 = readfile(u3)

        if v15 and v15 ~= '' then
            u10(string.gsub(v15, '%s+', ''))
        end

        local u16 = loadstring(game:HttpGet('https://raw.githubusercontent.com/TokyoYoo/gga2/refs/heads/main/gg.lua'))()
        local v17 = loadstring(game:HttpGet('https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua'))()
        local v18 = loadstring(game:HttpGet('https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua'))()
        local _HttpService2 = game:GetService('HttpService')
        local _Players = game:GetService('Players')
        local _ReplicatedStorage = game:GetService('ReplicatedStorage')
        local _RunService = game:GetService('RunService')
        local _TweenService = game:GetService('TweenService')
        local _VirtualUser = game:GetService('VirtualUser')
        local _LocalPlayer2 = _Players.LocalPlayer

        if not getgenv().PeanutX then
            getgenv().PeanutX = {}
        end

        local _PeanutX = getgenv().PeanutX
        local u27 = 'PeanutX1234/BuildAZoo'
        local u28 = u27 .. '/' .. 'Config_' .. _LocalPlayer2.Name .. '.json'
        local u29 = {
            Main = {
                AutoClaimCoins = false,
                CoinMoveMethod = 'Teleport',
                AutoFishing = false,
                FishBait = 'FishingBait3',
                FishingPos = nil,
                AutoPotion = false,
                SelectedPotion = 'Potion_Coin',
            },
            Shop = {
                SelectedFruits = {},
                AutoBuyFruit = false,
                AutoDestroyFruits = false,
                SelectedDestroyFruit = '',
                SelectedItem = 'Pet',
            },
            Eggs = {
                SelectedEggs = {},
                SelectedMutations = {},
                AutoBuyEgg = false,
                SelectedEggs2 = {},
                SelectedMutations2 = {},
                AutoBuyEgg2 = false,
                SelectedSellEggs = {},
                SelectedSellMutations = {},
                AutoSellEgg = false,
                AutoHatch = false,
            },
            Pets = {
                AutoTradePet = false,
                SelectedPet = '',
                SelectedFeedFruits = {},
                AutoFeed = false,
                SelectedPet2 = '',
                SelectedFeedFruits2 = {},
                AutoFeed2 = false,
                SelectedPet3 = '',
                SelectedFeedFruits3 = {},
                AutoFeed3 = false,
            },
            Events = {
                FishSnow = false,
                AutoFishingEvent = false,
                AutoEventTasks = false,
                AutoDinoOnline = false,
            },
            Player = {
                SelectedPlayer = '',
                SelectedPlayerId = nil,
                AutoLike = false,
                GiftMode = 'Egg',
                SelectedGiftFruit = '',
                SelectedGiftEggs = {},
                SelectedGiftMutations = {},
                AutoGift = false,
            },
            Exchange = {
                SelectedExchangeItem = '300K Money',
                AutoExchangeItem = false,
            },
            Redeem = {
                SelectedCode = '',
            },
            Settings = {
                WalkSpeed = 29,
                JumpPower = 9,
                FlySpeed = 50,
                FlyMode = false,
                NoClip = false,
                AntiAFK = false,
                WebhookURL = '',
                EnableWebhook = false,
                AutoRejoin = false,
                AutoRejoinDelay = 900,
            },
        }

        _G.BuildAZooSettings = _G.BuildAZooSettings or {}

        function LoadSettings()
            if readfile and (isfile and isfile(u28)) then
                local v30 = _HttpService2

                _G.BuildAZooSettings = v30:JSONDecode(readfile(u28))
            else
                _G.BuildAZooSettings = u29
            end
        end
        function SaveSettings()
            if writefile and makefolder then
                if not isfolder('PeanutX1234') then
                    makefolder('PeanutX1234')
                end
                if not isfolder(u27) then
                    makefolder(u27)
                end

                local v31 = _HttpService2:JSONEncode(_G.BuildAZooSettings)

                writefile(u28, v31)
            end
        end

        LoadSettings()

        _PeanutX.Players = _Players
        _PeanutX.ReplicatedStorage = _ReplicatedStorage
        _PeanutX.RunService = _RunService
        _PeanutX.LocalPlayer = _LocalPlayer2
        _PeanutX.PetsFolder = _LocalPlayer2:WaitForChild('PlayerGui'):WaitForChild('Data'):WaitForChild('Pets')
        _PeanutX.Remote = _ReplicatedStorage:WaitForChild('Remote'):WaitForChild('CharacterRE')
        _PeanutX.TweenService = _TweenService
        _PeanutX.EggsFolder = _LocalPlayer2:WaitForChild('PlayerGui'):WaitForChild('Data'):WaitForChild('Egg')
        _PeanutX.userId = _LocalPlayer2.UserId
        _PeanutX.TeleportService = game:GetService('TeleportService')
        _PeanutX.FruitsList = {
            'Strawberry',
            'Blueberry',
            'Watermelon',
            'Apple',
            'Orange',
            'Corn',
            'Banana',
            'Grape',
            'Pear',
            'Pineapple',
            'DragonFruit',
            'GoldMango',
            'BloodstoneCycad',
            'ColossalPinecone',
            'VoltGinkgo',
            'CandyCorn',
            'DeepseaPearlFruit',
            'Durian',
            'Pumpkin',
            'FrankenKiwi',
        }
        _PeanutX.EggsIDs = {
            ['Anglerfish Egg'] = 'AnglerfishEgg',
            ['Axe Shark Egg'] = 'BiteForceSharkEgg',
            ['Basic Egg'] = 'BasicEgg',
            ['Bone Dragon Egg'] = 'BoneDragonEgg',
            ['Bowser Egg'] = 'BowserEgg',
            ['Corn Egg'] = 'CornEgg',
            ['Dark Goaty Egg'] = 'DarkGoatyEgg',
            ['Demon Egg'] = 'DemonEgg',
            ['Dino Egg'] = 'DinoEgg',
            ['Epic Egg'] = 'EpicEgg',
            ['General Kong Egg'] = 'GeneralKongEgg',
            ['Godzilla Egg'] = 'GodzillaEgg',
            ['Halloween Egg'] = 'HalloweenEgg',
            ['Halloween Capy Egg'] = 'HalloweenCapyEgg',
            ['Hyper Egg'] = 'HyperEgg',
            ['Legend Egg'] = 'LegendEgg',
            ['Lionfish Egg'] = 'LionfishEgg',
            ['Metro Giraffe Egg'] = 'MetroGiraffeEgg',
            ['Octopus Egg'] = 'OctopusEgg',
            ['Pegasus Egg'] = 'PegasusEgg',
            ['Prismatic Egg'] = 'PrismaticEgg',
            ['Rare Egg'] = 'RareEgg',
            ['Rhino Rock Egg'] = 'RhinoRockEgg',
            ['Saber Cub Egg'] = 'SaberCubEgg',
            ['Sailfish Egg'] = 'SailfishEgg',
            ['Shark Egg'] = 'SharkEgg',
            ['Snowbunny Egg'] = 'SnowbunnyEgg',
            ['Super Rare Egg'] = 'SuperRareEgg',
            ['Ultra Egg'] = 'UltraEgg',
            ['Unicorn Egg'] = 'UnicornEgg',
            ['Unicorn Pro Egg'] = 'UnicornProEgg',
            ['Void Egg'] = 'VoidEgg',
        }
        _PeanutX.EggsList = {
            'Anglerfish Egg',
            'Axe Shark Egg',
            'Basic Egg',
            'Bone Dragon Egg',
            'Bowser Egg',
            'Corn Egg',
            'Dark Goaty Egg',
            'Demon Egg',
            'Dino Egg',
            'Epic Egg',
            'General Kong Egg',
            'Godzilla Egg',
            'Halloween Egg',
            'Halloween Capy Egg',
            'Hyper Egg',
            'Legend Egg',
            'Lionfish Egg',
            'Metro Giraffe Egg',
            'Octopus Egg',
            'Pegasus Egg',
            'Prismatic Egg',
            'Rare Egg',
            'Rhino Rock Egg',
            'Saber Cub Egg',
            'Sailfish Egg',
            'Shark Egg',
            'Snowbunny Egg',
            'Super Rare Egg',
            'Ultra Egg',
            'Unicorn Egg',
            'Unicorn Pro Egg',
            'Void Egg',
        }
        _PeanutX.MutationsList = {
            'None',
            'Golden',
            'Diamond',
            'Electirc',
            'Fire',
            'Dino',
            'Snow',
            'Halloween',
        }

        local v32 = {}
        local v33 = '4XW5RG4CHRY'

        __set_list(v32, 1, {
            'ADQZP3MBW6N',
            'subtoZRGZeRoGhost',
            'Nyaa',
            'druscxlla',
            'DS5523YSQ3C',
            'Bunnsterss',
            '3XKK8Z2WB6G',
            'N7A68Q82H83',
            v33,
            '60KCCU919',
        })

        _PeanutX.RedeemCodes = v32
        _PeanutX.IslandName = ''
        _PeanutX.EggName = 'Unknown'
        _PeanutX.EggMutate = 'None'
        _PeanutX.FlyConnection = nil
        _PeanutX.FlyGyro = nil
        _PeanutX.FlyVel = nil
        _PeanutX.NoClipConnection = nil
        _PeanutX.GiftThread = nil
        _PeanutX.GiftPaused = false
        _PeanutX.SnowLost = false
        _PeanutX.ServerId = ''
        _PeanutX.WasAutoFishing = false
        _PeanutX.WasGifting = false
        _PeanutX.SnowWasLost = false
        _PeanutX.AutoGiftPaused = false
        _PeanutX._ClaimVisited = {}
        _PeanutX.AutoTradePetThread = nil
        _PeanutX.CurrentTradePetUID = nil
        _PeanutX.IsProcessingTrade = false
        _PeanutX.TradeEventConnection = nil
        _PeanutX.AntiAFKConnection = nil
        _PeanutX[v33] = {
            ['300K Money'] = 'GS_Item_1',
            ['Rainbow Potion'] = 'GS_Item_19',
            Pear = 'GS_Item_2',
            ['Bloodstone Cycad'] = 'GS_Item_3',
            Pineapple = 'GS_Item_4',
            ['Dragon Fruit'] = 'GS_Item_5',
            ['Gold Mango'] = 'GS_Item_6',
            ['[Snow] Kaiju Egg'] = 'GS_Item_7',
            ['[Halloween] General Kong Egg'] = 'GS_Item_8',
            ['[Dino] Unicorn Pro Egg'] = 'GS_Item_9',
            ['[Dino] General Kong Egg'] = 'GS_Item_21',
            ['Halloween Home Board'] = 'GS_Item_20',
            ['Deepsea Pearl Fruit'] = 'GS_Item_10',
            ['Colossal Pinecone'] = 'GS_Item_11',
            ['Candy Corn'] = 'GS_Item_12',
            Durian = 'GS_Item_13',
            ['Volt Ginkgo'] = 'GS_Item_14',
            Pumpkin = 'GS_Item_15',
            ['Franken Kiwi'] = 'GS_Item_22',
        }

        local function u40(p34, p35)
            if not p34 then
                return false
            end

            local v36, v37, v38 = ipairs(p34)

            while true do
                local v39

                v38, v39 = v36(v37, v38)

                if v38 == nil then
                    break
                end
                if v39 == p35 then
                    return true
                end
            end

            return false
        end
        local function _(p41)
            if not p41 then
                return '0'
            end

            local v42 = tonumber(p41) or 0

            if v42 >= 1000000000000000 then
                local v43 = v42 / 1000000000000000

                return v43 % 1 == 0 and string.format('%.0fQ', v43) or string.format('%.2fQ', v43)
            end
            if v42 >= 1000000000000 then
                local v44 = v42 / 1000000000000

                return v44 % 1 == 0 and string.format('%.0fT', v44) or string.format('%.2fT', v44)
            end
            if v42 >= 1000000000 then
                local v45 = v42 / 1000000000

                return v45 % 1 == 0 and string.format('%.0fB', v45) or string.format('%.2fB', v45)
            end
            if v42 >= 1000000 then
                local v46 = v42 / 1000000

                return v46 % 1 == 0 and string.format('%.0fM', v46) or string.format('%.2fM', v46)
            end
            if v42 < 1000 then
                return tostring(math.floor(v42))
            end

            local v47 = v42 / 1000

            return v47 % 1 == 0 and string.format('%.0fK', v47) or string.format('%.2fK', v47)
        end
        local function u68()
            local v48, v49, v50 = ipairs(_PeanutX.PetsFolder:GetChildren())
            local v51 = {}

            while true do
                local v52

                v50, v52 = v48(v49, v50)

                if v50 == nil then
                    break
                end

                local v53 = v52:GetAttribute('T') or 'Unknown'
                local v54 = v52:GetAttribute('M') or 'Normal'
                local v55 = v53 .. '_' .. v54

                if not v51[v55] then
                    v51[v55] = {
                        type = v53,
                        mutation = v54,
                        count = 0,
                    }
                end

                v51[v55].count = v51[v55].count + 1
            end

            local v56 = ''

            if next(v51) ~= nil then
                local v57, v58, v59 = pairs(v51)
                local v60 = {}

                while true do
                    local v61

                    v59, v61 = v57(v58, v59)

                    if v59 == nil then
                        break
                    end

                    table.insert(v60, v61)
                end

                table.sort(v60, function(p62, p63)
                    return p62.type < p63.type
                end)

                local v64, v65, v66 = ipairs(v60)

                while true do
                    local v67

                    v66, v67 = v64(v65, v66)

                    if v66 == nil then
                        break
                    end

                    v56 = v56 .. string.format('[%s] %s = %d\n', v67.mutation, v67.type, v67.count)
                end
            else
                v56 = 'No pets found in inventory'
            end

            return v56
        end
        local function u89()
            local v69, v70, v71 = ipairs(_PeanutX.EggsFolder:GetChildren())
            local v72 = {}

            while true do
                local v73

                v71, v73 = v69(v70, v71)

                if v71 == nil then
                    break
                end
                if #v73:GetChildren() == 0 then
                    local v74 = v73:GetAttribute('T') or 'Unknown'
                    local v75 = v73:GetAttribute('M') or 'Normal'
                    local v76 = v74 .. '_' .. v75

                    if not v72[v76] then
                        v72[v76] = {
                            type = v74,
                            mutation = v75,
                            count = 0,
                        }
                    end

                    v72[v76].count = v72[v76].count + 1
                end
            end

            local v77 = ''

            if next(v72) ~= nil then
                local v78, v79, v80 = pairs(v72)
                local v81 = {}

                while true do
                    local v82

                    v80, v82 = v78(v79, v80)

                    if v80 == nil then
                        break
                    end

                    table.insert(v81, v82)
                end

                table.sort(v81, function(p83, p84)
                    return p83.type < p84.type
                end)

                local v85, v86, v87 = ipairs(v81)

                while true do
                    local v88

                    v87, v88 = v85(v86, v87)

                    if v87 == nil then
                        break
                    end

                    v77 = v77 .. string.format('[%s] %s x%d\n', v88.mutation, v88.type, v88.count)
                end
            else
                v77 = 'No eggs in inventory'
            end

            return v77
        end

        function AutoClaimCoins()
            if _G.BuildAZooSettings.Main.AutoClaimCoins then
                local _Pets = workspace:FindFirstChild('Pets')

                if _Pets then
                    local _HumanoidRootPart = (_PeanutX.LocalPlayer.Character or _PeanutX.LocalPlayer.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart')
                    local _UserId = _PeanutX.LocalPlayer.UserId
                    local v93, v94, v95 = ipairs(_Pets:GetChildren())
                    local v96 = {}

                    while true do
                        local v97

                        v95, v97 = v93(v94, v95)

                        if v95 == nil then
                            break
                        end
                        if v97:IsA('BasePart') and (v97:GetAttribute('UserId') == _UserId and not _PeanutX._ClaimVisited[v97]) then
                            local _CFrame = v97.CFrame
                            local v99 = {
                                pet = v97,
                                cf = _CFrame,
                                dist = (_HumanoidRootPart.Position - _CFrame.Position).Magnitude,
                            }

                            table.insert(v96, v99)
                        end
                    end

                    if #v96 ~= 0 then
                        local _Position = _HumanoidRootPart.Position
                        local _LookVector = _HumanoidRootPart.CFrame.LookVector
                        local _RightVector = _HumanoidRootPart.CFrame.RightVector
                        local v103, v104, v105 = ipairs(v96)
                        local v106 = {}
                        local v107 = {}
                        local v108 = {}

                        while true do
                            local v109

                            v105, v109 = v103(v104, v105)

                            if v105 == nil then
                                break
                            end

                            local _Unit = (v109.cf.Position - _Position).Unit
                            local v111 = _LookVector:Dot(_Unit)
                            local v112 = _RightVector:Dot(_Unit)

                            if math.abs(v111) >= 0.5 then
                                table.insert(v106, v109)
                            elseif v112 > 0 then
                                table.insert(v108, v109)
                            else
                                table.insert(v107, v109)
                            end
                        end

                        table.sort(v107, function(p113, p114)
                            return p113.dist < p114.dist
                        end)
                        table.sort(v108, function(p115, p116)
                            return p115.dist < p116.dist
                        end)
                        table.sort(v106, function(p117, p118)
                            return p117.dist < p118.dist
                        end)

                        local v119, v120, v121 = ipairs(v107)
                        local v122 = {}

                        while true do
                            local v123

                            v121, v123 = v119(v120, v121)

                            if v121 == nil then
                                break
                            end

                            table.insert(v122, v123)
                        end

                        local v124, v125, v126 = ipairs(v108)

                        while true do
                            local v127

                            v126, v127 = v124(v125, v126)

                            if v126 == nil then
                                break
                            end

                            table.insert(v122, v127)
                        end

                        local v128, v129, v130 = ipairs(v106)

                        while true do
                            local v131

                            v130, v131 = v128(v129, v130)

                            if v130 == nil then
                                break
                            end

                            table.insert(v122, v131)
                        end

                        local v132 = v122[1]
                        local _Position2 = v132.cf.Position
                        local v134 = CFrame.new(_Position2.X, _HumanoidRootPart.Position.Y, _Position2.Z)

                        if _G.BuildAZooSettings.Main.CoinMoveMethod ~= 'Teleport' then
                            if _G.BuildAZooSettings.Main.CoinMoveMethod == 'Tween' then
                                local v135 = _PeanutX.TweenService:Create(_HumanoidRootPart, TweenInfo.new(0.05, Enum.EasingStyle.Linear), {CFrame = v134})

                                v135:Play()
                                v135.Completed:Wait()
                            end
                        else
                            _HumanoidRootPart.CFrame = v134
                        end

                        _PeanutX._ClaimVisited[v132.pet] = true
                    else
                        _PeanutX._ClaimVisited = {}
                    end
                else
                    return
                end
            else
                return
            end
        end

        local function u139()
            local _Remote = _PeanutX.ReplicatedStorage:FindFirstChild('Remote')

            if _Remote then
                local _CharacterRE = _Remote:FindFirstChild('CharacterRE')
                local _FishingRE = _Remote:FindFirstChild('FishingRE')

                if _CharacterRE and _FishingRE then
                    _CharacterRE:FireServer('Focus', 'FishRob')
                    task.wait(0.5)
                    _FishingRE:FireServer('Start')
                    task.wait(0.5)
                    _FishingRE:FireServer('Throw', {
                        Bait = _G.BuildAZooSettings.Main.FishBait,
                        Pos = _G.BuildAZooSettings.Main.FishingPos.Position,
                    })
                    task.wait(0.5)
                    _FishingRE:FireServer('POUT', {SUC = 1})
                end
            else
                return
            end
        end

        function UsePotion()
            pcall(function()
                _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('ShopRE'):FireServer('UsePotion', _G.BuildAZooSettings.Main.SelectedPotion)
            end)
        end

        local function u147()
            local _Tasks = _LocalPlayer2:WaitForChild('PlayerGui'):WaitForChild('Data'):WaitForChild('DinoEventTaskData'):WaitForChild('Tasks')
            local v141, v142, v143 = ipairs(_Tasks:GetChildren())
            local v144 = {}

            while true do
                local v145

                v143, v145 = v141(v142, v143)

                if v143 == nil then
                    break
                end

                local _Id = v145:GetAttribute('Id')

                if _Id then
                    table.insert(v144, _Id)
                end
            end

            return v144
        end
        local function u153()
            local v148 = u147()
            local v149, v150, v151 = ipairs(v148)

            while true do
                local v152

                v151, v152 = v149(v150, v151)

                if v151 == nil then
                    break
                end

                _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('DinoEventRE'):FireServer(unpack({
                    {
                        event = 'claimreward',
                        id = v152,
                    },
                }))
                task.wait(0.5)
            end
        end
        local function u154()
            _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('DinoEventRE'):FireServer(unpack({
                {
                    event = 'onlinepack',
                },
            }))
        end

        function LogEgg()
            if _G.BuildAZooSettings.Settings.EnableWebhook then
                if _G.BuildAZooSettings.Settings.WebhookURL == '' or string.sub(_G.BuildAZooSettings.Settings.WebhookURL, 1, 4) ~= 'http' then
                    u16:Notify({
                        Title = 'Webhook Error',
                        Content = 'Invalid URL',
                        Duration = 3,
                    })

                    return
                elseif _PeanutX.EggName ~= 'Unknown' then
                    local v155 = _PeanutX.EggMutate == 'Golden' and 16766720 or (_PeanutX.EggMutate == 'Diamond' and 11993087 or (_PeanutX.EggMutate == 'Fire' and 16711680 or (_PeanutX.EggMutate == 'Snow' and 16777215 or (_PeanutX.EggMutate == 'Halloween' and 16744192 or ((_PeanutX.EggMutate == 'Electric' or _PeanutX.EggMutate == 'Electirc') and 16776960 or 3447003)))))
                    local u156 = {
                        embeds = {
                            {
                                title = ' NEW EGG ACQUIRED',
                                description = '**' .. _PeanutX.LocalPlayer.Name .. '** purchased a new egg!',
                                color = v155,
                                fields = {
                                    {
                                        name = ' Egg Type',
                                        value = '**`' .. tostring(_PeanutX.EggName) .. '`**',
                                        inline = true,
                                    },
                                    {
                                        name = ' Mutation',
                                        value = '**`' .. tostring(_PeanutX.EggMutate) .. '`**',
                                        inline = true,
                                    },
                                    {
                                        name = ' Player',
                                        value = '`' .. _PeanutX.LocalPlayer.Name .. '`',
                                        inline = true,
                                    },
                                    {
                                        name = '\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd} User ID',
                                        value = '`' .. tostring(_PeanutX.LocalPlayer.UserId) .. '`',
                                        inline = true,
                                    },
                                    {
                                        name = '\u{fffd}\u{fffd} Time',
                                        value = '`' .. os.date('%Y-%m-%d %H:%M:%S') .. '`',
                                        inline = false,
                                    },
                                },
                                footer = {
                                    text = 'Peanut X \u{2022} Build a Zoo',
                                },
                                timestamp = os.date('!%Y-%m-%dT%H:%M:%SZ'),
                            },
                        },
                        username = 'Peanut X Logger',
                        avatar_url = 'https://i.postimg.cc/05KMwhzz/20250818-104205.jpg',
                    }

                    pcall(function()
                        local v157 = _HttpService2:JSONEncode(u156)
                        local v158 = syn and syn.request or request or (http and http.request or http_request)

                        if v158 then
                            v158({
                                Url = _G.BuildAZooSettings.Settings.WebhookURL,
                                Method = 'POST',
                                Headers = {
                                    ['Content-Type'] = 'application/json',
                                },
                                Body = v157,
                            })
                        end
                    end)
                end
            else
                return
            end
        end
        function BuyFruits()
            local v159, v160, v161 = ipairs(_G.BuildAZooSettings.Shop.SelectedFruits)

            while true do
                local u162

                v161, u162 = v159(v160, v161)

                if v161 == nil then
                    break
                end

                pcall(function()
                    _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('FoodStoreRE'):FireServer(u162)
                end)
            end
        end
        function DestroyFruit()
            if _G.BuildAZooSettings.Shop.SelectedDestroyFruit and _G.BuildAZooSettings.Shop.SelectedDestroyFruit ~= '' then
                local v163 = {
                    'Focus',
                    _G.BuildAZooSettings.Shop.SelectedDestroyFruit,
                }

                _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('CharacterRE'):FireServer(unpack(v163))
                task.wait(0.2)
                _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('DestroyFoodRE'):FireServer(unpack({
                    'Destroy',
                }))
            end
        end

        local function u170()
            local _Art = workspace:FindFirstChild('Art')

            if not _Art then
                return
            end

            local v165, v166, v167 = ipairs(_Art:GetChildren())

            while true do
                local v168

                v167, v168 = v165(v166, v167)

                if v167 == nil then
                    break
                end

                local _OccupyingPlayerId = v168:GetAttribute('OccupyingPlayerId')

                if _OccupyingPlayerId and _OccupyingPlayerId == _PeanutX.LocalPlayer.UserId then
                    _PeanutX.IslandName = v168.Name

                    break
                end
            end
        end
        local function u189(p171, p172)
            if _PeanutX.IslandName == '' then
                return nil
            end

            local _Eggs = _PeanutX.ReplicatedStorage:FindFirstChild('Eggs')

            if not _Eggs then
                return nil
            end

            local v174 = _Eggs:FindFirstChild(_PeanutX.IslandName)

            if not v174 then
                return nil
            end

            local v175, v176, v177 = ipairs(p171)
            local v178 = {}
            local v179 = nil
            local v180 = 'Unknown'
            local v181 = 'None'

            while true do
                local v182

                v177, v182 = v175(v176, v177)

                if v177 == nil then
                    break
                end
                if _PeanutX.EggsIDs[v182] then
                    table.insert(v178, _PeanutX.EggsIDs[v182])
                else
                    table.insert(v178, v182)
                end
            end

            local v183, v184, v185 = ipairs(v174:GetChildren())

            while true do
                local v186

                v185, v186 = v183(v184, v185)

                if v185 == nil then
                    v188 = v181
                    _T = v180

                    break
                end

                local _T = v186:GetAttribute('T')
                local v188 = v186:GetAttribute('M') or 'None'

                if v178 and u40(v178, _T) then
                    if not p172 or #p172 <= 0 then
                        v179 = v186.Name

                        break
                    end
                    if u40(p172, v188) then
                        v179 = v186.Name

                        break
                    end
                    if u40(p172, 'None') and v188 == 'None' then
                        v179 = v186.Name
                        v188 = 'None'

                        break
                    end
                end
            end

            if v179 then
                _PeanutX.EggName = _T
                _PeanutX.EggMutate = v188
            end

            return v179
        end
        local function u193(p190, p191)
            pcall(function()
                if _PeanutX.IslandName == '' then
                    u170()

                    if _PeanutX.IslandName == '' then
                        return
                    end
                end

                local v192 = u189(p190, p191)

                if v192 then
                    LogEgg()
                    _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('CharacterRE'):FireServer(unpack({
                        'BuyEgg',
                        v192,
                    }))
                end
            end)
        end

        function SellItems()
            local _PetRE = _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('PetRE')

            if _G.BuildAZooSettings.Shop.SelectedItem and _G.BuildAZooSettings.Shop.SelectedItem ~= '' then
                pcall(function()
                    if _G.BuildAZooSettings.Shop.SelectedItem ~= 'All' then
                        _PetRE:FireServer('SellAll', 'All', _G.BuildAZooSettings.Shop.SelectedItem)
                    else
                        _PetRE:FireServer('SellAll', 'All', 'All')
                    end
                end)
            end
        end
        function SellEggs()
            local v195, v196, v197 = ipairs(_G.BuildAZooSettings.Eggs.SelectedSellEggs)
            local v198 = {}
            local u199 = 0

            while true do
                local v200

                v197, v200 = v195(v196, v197)

                if v197 == nil then
                    break
                end
                if _PeanutX.EggsIDs[v200] then
                    table.insert(v198, _PeanutX.EggsIDs[v200])
                else
                    table.insert(v198, v200)
                end
            end

            local v201, v202, v203 = ipairs(_PeanutX.EggsFolder:GetChildren())

            while true do
                local u204

                v203, u204 = v201(v202, v203)

                if v203 == nil then
                    if u199 > 0 then
                        u16:Notify({
                            Title = 'Auto Sell Eggs',
                            Content = 'Successfully sold ' .. u199 .. ' eggs!',
                            Duration = 2,
                        })
                    end

                    return u199
                end

                local v205 = u204:GetAttribute('T') or ''
                local v206 = u204:GetAttribute('M') or 'None'
                local v207, v208, v209 = ipairs(v198)
                local v210 = false

                while true do
                    local v211

                    v209, v211 = v207(v208, v209)

                    if v209 == nil then
                        break
                    end
                    if v205 == v211 then
                        v210 = true

                        break
                    end
                end

                local v212, v213, v214 = ipairs(_G.BuildAZooSettings.Eggs.SelectedSellMutations)
                local v215 = false

                while true do
                    local v216

                    v214, v216 = v212(v213, v214)

                    if v214 == nil then
                        break
                    end
                    if v216 == 'None' and v206 == 'None' or v216 ~= 'None' and v206 == v216 then
                        v215 = true

                        break
                    end
                end

                if v210 and v215 then
                    local v218, v219 = pcall(function()
                        local v217 = {
                            'Sell',
                            u204.Name,
                            true,
                        }

                        _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('PetRE'):FireServer(unpack(v217))

                        u199 = u199 + 1
                    end)

                    if not v218 then
                        print('[ERROR] Failed to sell egg:', v219)
                    end
                end
            end
        end

        local function u221(p220)
            return _PeanutX.PetsFolder:FindFirstChild(p220) ~= nil
        end
        local function u231()
            local v222, v223, v224 = ipairs(_PeanutX.PetsFolder:GetChildren())
            local v225 = {}

            while true do
                local v226

                v224, v226 = v222(v223, v224)

                if v224 == nil then
                    break
                end

                local _BPV = v226:GetAttribute('BPV')
                local _BPSK = v226:GetAttribute('BPSK')
                local _T2 = v226:GetAttribute('T')

                if _BPV then
                    local v230 = _BPSK or _T2

                    if v230 then
                        table.insert(v225, v230)
                    end
                end
            end

            return v225
        end
        local function u246()
            local _PlayerBuiltBlocks = workspace:FindFirstChild('PlayerBuiltBlocks')

            if _PlayerBuiltBlocks then
                local _UserId2 = _PeanutX.LocalPlayer.UserId
                local v234, v235, v236 = ipairs(_PlayerBuiltBlocks:GetChildren())
                local v237 = {}

                while true do
                    local v238

                    v236, v238 = v234(v235, v236)

                    if v236 == nil then
                        break
                    end
                    if v238:GetAttribute('UserId') == _UserId2 then
                        local _ExclamationMark = v238:FindFirstChild('ExclamationMark')
                        local _RootPart = v238:FindFirstChild('RootPart')

                        if _ExclamationMark and _RootPart then
                            local _RF = _RootPart:FindFirstChild('RF')

                            if _RF and _RF:IsA('RemoteFunction') then
                                table.insert(v237, _RF)
                            end
                        end
                    end
                end

                local v242, v243, v244 = ipairs(v237)

                while true do
                    local u245

                    v244, u245 = v242(v243, v244)

                    if v244 == nil then
                        break
                    end

                    task.spawn(function()
                        pcall(function()
                            u245:InvokeServer('Hatch')
                        end)
                    end)
                    task.wait(0.05)
                end
            end
        end
        local function u253()
            local _Art2 = workspace:FindFirstChild('Art')

            if not _Art2 then
                return nil
            end

            local v248, v249, v250 = ipairs(_Art2:GetChildren())

            while true do
                local v251

                v250, v251 = v248(v249, v250)

                if v250 == nil then
                    break
                end

                local _OccupyingPlayerId2 = v251:GetAttribute('OccupyingPlayerId')

                if _OccupyingPlayerId2 and _OccupyingPlayerId2 == _PeanutX.LocalPlayer.UserId then
                    return v251
                end
            end

            return nil
        end
        local function u260()
            local v254 = {}
            local _Pets2 = workspace:FindFirstChild('Pets')

            if _Pets2 then
                local v256, v257, v258 = ipairs(_Pets2:GetChildren())

                while true do
                    local v259

                    v258, v259 = v256(v257, v258)

                    if v258 == nil then
                        break
                    end
                    if v259:IsA('BasePart') and v259:GetAttribute('UserId') == _PeanutX.LocalPlayer.UserId then
                        table.insert(v254, v259.Name)
                    end
                end
            end

            return v254
        end
        local function u272(p261)
            local v262, v263, v264 = ipairs(_PeanutX.PetsFolder:GetChildren())
            local v265 = {}

            while true do
                local v266

                v264, v266 = v262(v263, v264)

                if v264 == nil then
                    return v265
                end

                local v267, v268, v269 = ipairs(p261)
                local v270 = false

                while true do
                    local v271

                    v269, v271 = v267(v268, v269)

                    if v269 == nil then
                        break
                    end
                    if v266.Name == v271 then
                        v270 = true

                        break
                    end
                end

                if not v270 then
                    table.insert(v265, v266.Name)
                end
            end
        end
        local function u274()
            local v273 = u272((u260()))

            if #v273 <= 0 then
                return nil
            else
                return v273[math.random(1, #v273)]
            end
        end
        local function u281()
            local v275 = u253()

            if not v275 then
                u16:Notify({
                    Title = 'Auto Trade Error',
                    Content = 'Island not found!',
                    Duration = 3,
                })

                return false
            end

            local _ENV = v275:FindFirstChild('ENV')

            if _ENV then
                _ENV = _ENV:FindFirstChild('TradeZone')
            end
            if not _ENV then
                u16:Notify({
                    Title = 'Auto Trade Error',
                    Content = 'TradeZone not found!',
                    Duration = 3,
                })

                return false
            end

            local _Touch = _ENV:FindFirstChild('Touch')

            if not _Touch then
                u16:Notify({
                    Title = 'Auto Trade Error',
                    Content = 'Touch part not found!',
                    Duration = 3,
                })

                return false
            end

            local _HumanoidRootPart2 = (_PeanutX.LocalPlayer.Character or _PeanutX.LocalPlayer.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart')

            _HumanoidRootPart2.CFrame = _Touch.CFrame + Vector3.new(0, 3, 0)

            local v279 = tick()
            local v280 = 5

            while(_HumanoidRootPart2.Position - _Touch.Position).Magnitude > 10 and tick() - v279 < v280 do
                task.wait(0.1)
            end

            return (_HumanoidRootPart2.Position - _Touch.Position).Magnitude <= 10
        end
        local function u282()
            if _PeanutX.CurrentTradePetUID and _PeanutX.PetsFolder:FindFirstChild(_PeanutX.CurrentTradePetUID) then
                return pcall(function()
                    _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('TradeRE'):FireServer(unpack({
                        {
                            event = 'reqtrade',
                        },
                    }))
                end)
            else
                _PeanutX.CurrentTradePetUID = u274()

                if _PeanutX.CurrentTradePetUID then
                    if pcall(function()
                        _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('DeployRE'):FireServer({
                            event = 'deploy',
                            uid = _PeanutX.CurrentTradePetUID,
                        })
                    end) then
                        task.wait(0.5)

                        if pcall(function()
                            _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('CharacterRE'):FireServer('Focus', _PeanutX.CurrentTradePetUID)
                        end) then
                            task.wait(0.5)

                            return pcall(function()
                                _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('TradeRE'):FireServer(unpack({
                                    {
                                        event = 'reqtrade',
                                    },
                                }))
                            end)
                        else
                            _PeanutX.CurrentTradePetUID = nil

                            return false
                        end
                    else
                        _PeanutX.CurrentTradePetUID = nil

                        return false
                    end
                else
                    u16:Notify({
                        Title = 'Auto Trade',
                        Content = 'No undeployed pets available!',
                        Duration = 3,
                    })

                    return false
                end
            end
        end
        local function u285(p283)
            if _G.BuildAZooSettings.Pets.AutoTradePet and _PeanutX.IsProcessingTrade then
                if p283.event == 'reqtrade' and p283.data then
                    local v284 = p283.data.BargainRate or 0

                    task.wait(1)

                    if v284 < 0.2 then
                        pcall(function()
                            _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('TradeRE'):FireServer(unpack({
                                {
                                    event = 'accept',
                                },
                            }))
                        end)
                        u16:Notify({
                            Title = 'Auto Trade',
                            Content = string.format('Trade Accepted! Rate: %.3f', v284),
                            Duration = 3,
                        })

                        _PeanutX.IsProcessingTrade = true

                        task.wait(2)

                        _PeanutX.IsProcessingTrade = false
                    else
                        pcall(function()
                            _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('TradeRE'):FireServer(unpack({
                                {
                                    event = 'decline',
                                },
                            }))
                        end)
                        u16:Notify({
                            Title = 'Auto Trade',
                            Content = string.format('Trade Declined! Rate: %.3f', v284),
                            Duration = 3,
                        })

                        _PeanutX.IsProcessingTrade = false
                    end
                end
            end
        end
        local function u288()
            if _PeanutX.AutoTradePetThread then
                _G.BuildAZooSettings.Pets.AutoTradePet = false

                task.wait(0.5)
                pcall(task.cancel, _PeanutX.AutoTradePetThread)

                _PeanutX.AutoTradePetThread = nil
            end

            _PeanutX.CurrentTradePetUID = nil
            _PeanutX.IsProcessingTrade = false

            if not _PeanutX.TradeEventConnection then
                _PeanutX.TradeEventConnection = _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('TradeRE').OnClientEvent:Connect(u285)
            end

            _PeanutX.AutoTradePetThread = task.spawn(function()
                while _G.BuildAZooSettings.Pets.AutoTradePet do
                    if _PeanutX.IsProcessingTrade then
                        task.wait(0.5)
                    elseif u281() then
                        task.wait(1)

                        _PeanutX.IsProcessingTrade = true

                        if not u282() then
                            u16:Notify({
                                Title = 'Auto Trade',
                                Content = 'Trading process failed!',
                                Duration = 3,
                            })

                            _PeanutX.IsProcessingTrade = false
                        end

                        local v286 = tick()
                        local v287 = 5

                        while _G.BuildAZooSettings.Pets.AutoTradePet and (tick() - v286 < v287 and not _PeanutX.IsProcessingTrade) do
                            task.wait(0.1)
                        end
                    else
                        u16:Notify({
                            Title = 'Auto Trade',
                            Content = 'Failed to teleport to trade zone!',
                            Duration = 3,
                        })
                        task.wait(5)
                    end
                end
            end)
        end
        local function u289()
            if _PeanutX.AutoTradePetThread then
                task.cancel(_PeanutX.AutoTradePetThread)

                _PeanutX.AutoTradePetThread = nil
            end
            if _PeanutX.TradeEventConnection then
                _PeanutX.TradeEventConnection:Disconnect()

                _PeanutX.TradeEventConnection = nil
            end

            _PeanutX.CurrentTradePetUID = nil
            _PeanutX.IsProcessingTrade = false
        end

        function ExchangeItem()
            local _SelectedExchangeItem = _G.BuildAZooSettings.Exchange.SelectedExchangeItem

            if _SelectedExchangeItem and _PeanutX.ExchangeItems[_SelectedExchangeItem] then
                local v291 = {
                    {
                        event = 'exchange',
                        id = _PeanutX.ExchangeItems[_SelectedExchangeItem],
                    },
                }

                _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('TradeRE'):FireServer(unpack(v291))
            end
        end
        function RedeemCode(p292)
            _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('RedemptionCodeRE'):FireServer(unpack({
                {
                    event = 'usecode',
                    code = p292,
                },
            }))
        end
        function RedeemAllCodes()
            if #_PeanutX.RedeemCodes <= 0 then
                u16:Notify({
                    Title = 'No Codes Available',
                    Content = 'There are no valid redeem codes right now',
                    Duration = 5,
                })
            else
                local v293, v294, v295 = ipairs(_PeanutX.RedeemCodes)

                while true do
                    local v296

                    v295, v296 = v293(v294, v295)

                    if v295 == nil then
                        break
                    end
                    if v296 and v296 ~= '' then
                        RedeemCode(v296)
                        task.wait(1)
                    end
                end

                u16:Notify({
                    Title = 'Redeem All Completed',
                    Content = 'All codes have been redeemed!',
                    Duration = 5,
                })
            end
        end

        local function u302()
            local v297, v298, v299 = ipairs(_PeanutX.Players:GetPlayers())
            local v300 = {}

            while true do
                local v301

                v299, v301 = v297(v298, v299)

                if v299 == nil then
                    break
                end
                if v301 ~= _PeanutX.LocalPlayer then
                    table.insert(v300, v301.Name .. ' (' .. v301.UserId .. ')')
                end
            end

            return v300
        end

        function LikePlot()
            _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('CharacterRE'):FireServer('GiveLike', _G.BuildAZooSettings.Player.SelectedPlayerId)
        end
        function SetSpeed()
            local _Humanoid = (_PeanutX.LocalPlayer.Character or _PeanutX.LocalPlayer.CharacterAdded:Wait()):FindFirstChildOfClass('Humanoid')
            local v304 = _Humanoid and tonumber(_G.BuildAZooSettings.Settings.WalkSpeed)

            if v304 then
                _Humanoid.WalkSpeed = math.clamp(v304, 1, 250)
            end
        end
        function SetJump()
            local _Humanoid2 = (_PeanutX.LocalPlayer.Character or _PeanutX.LocalPlayer.CharacterAdded:Wait()):FindFirstChildOfClass('Humanoid')

            if _Humanoid2 then
                _Humanoid2.UseJumpPower = false

                local v306 = tonumber(_G.BuildAZooSettings.Settings.JumpPower)

                if v306 then
                    _Humanoid2.JumpHeight = math.clamp(v306, 1, 250)
                end
            end
        end

        local function u316()
            local v307 = _PeanutX.LocalPlayer.Character or _PeanutX.LocalPlayer.CharacterAdded:Wait()
            local _HumanoidRootPart3 = v307:WaitForChild('HumanoidRootPart')
            local _Humanoid3 = v307:WaitForChild('Humanoid')

            _Humanoid3.PlatformStand = true
            _PeanutX.FlyGyro = Instance.new('BodyGyro')
            _PeanutX.FlyGyro.P = 90000
            _PeanutX.FlyGyro.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
            _PeanutX.FlyGyro.CFrame = _HumanoidRootPart3.CFrame
            _PeanutX.FlyGyro.Parent = _HumanoidRootPart3
            _PeanutX.FlyVel = Instance.new('BodyVelocity')
            _PeanutX.FlyVel.Velocity = Vector3.new(0, 0, 0)
            _PeanutX.FlyVel.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
            _PeanutX.FlyVel.Parent = _HumanoidRootPart3
            _PeanutX.FlyConnection = _PeanutX.RunService.Heartbeat:Connect(function()
                if _G.BuildAZooSettings.Settings.FlyMode then
                    local _MoveDirection = _Humanoid3.MoveDirection
                    local _CFrame2 = workspace.CurrentCamera.CFrame
                    local _LookVector2 = _CFrame2.LookVector
                    local _RightVector2 = _CFrame2.RightVector
                    local v314 = _MoveDirection:Dot(_RightVector2)
                    local v315 = (_LookVector2 * _MoveDirection:Dot(_LookVector2) + _RightVector2 * v314) * _G.BuildAZooSettings.Settings.FlySpeed

                    _PeanutX.FlyVel.Velocity = v315
                    _PeanutX.FlyGyro.CFrame = CFrame.new(_HumanoidRootPart3.Position, _HumanoidRootPart3.Position + Vector3.new(_LookVector2.X, 0, _LookVector2.Z))
                end
            end)
        end
        local function u326(p317)
            _G.BuildAZooSettings.Settings.NoClip = p317

            if p317 then
                _PeanutX.NoClipConnection = _PeanutX.RunService.Stepped:Connect(function()
                    if _PeanutX.LocalPlayer.Character then
                        local v318, v319, v320 = pairs(_PeanutX.LocalPlayer.Character:GetDescendants())

                        while true do
                            local v321

                            v320, v321 = v318(v319, v320)

                            if v320 == nil then
                                break
                            end
                            if v321:IsA('BasePart') then
                                v321.CanCollide = false
                            end
                        end
                    end
                end)
            else
                if _PeanutX.NoClipConnection then
                    _PeanutX.NoClipConnection:Disconnect()

                    _PeanutX.NoClipConnection = nil
                end
                if _PeanutX.LocalPlayer.Character then
                    local v322, v323, v324 = pairs(_PeanutX.LocalPlayer.Character:GetDescendants())

                    while true do
                        local v325

                        v324, v325 = v322(v323, v324)

                        if v324 == nil then
                            break
                        end
                        if v325:IsA('BasePart') then
                            v325.CanCollide = true
                        end
                    end
                end
            end
        end

        _LocalPlayer2.Idled:Connect(function()
            if _G.BuildAZooSettings.Settings.AntiAFK then
                _VirtualUser:CaptureController()
                _VirtualUser:ClickButton2(Vector2.new())
            end
        end)

        local function _()
            local _httpsgamesrobloxcomv1gamesdserversPublicsortOrderAsclimit100 = string.format('https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Asc&limit=100', game.PlaceId)
            local v328, v329 = pcall(function()
                return game:HttpGet(_httpsgamesrobloxcomv1gamesdserversPublicsortOrderAsclimit100)
            end)

            if v328 and v329 then
                local v330 = _HttpService2:JSONDecode(v329)

                if v330 and v330.data then
                    table.sort(v330.data, function(p331, p332)
                        return p331.playing < p332.playing
                    end)

                    local v333, v334, v335 = ipairs(v330.data)

                    while true do
                        local v336

                        v335, v336 = v333(v334, v335)

                        if v335 == nil then
                            break
                        end
                        if v336.id ~= game.JobId then
                            return v336.id
                        end
                    end
                end
            end

            return nil
        end

        task.spawn(function()
            while task.wait(0.1) do
                if _G.BuildAZooSettings.Main.AutoClaimCoins and not (_G.BuildAZooSettings.Main.AutoFishing or (_G.BuildAZooSettings.Events.FishSnow or (_G.BuildAZooSettings.Events.AutoFishingEvent or (_G.BuildAZooSettings.Player.AutoGift or (_G.BuildAZooSettings.Pets.AutoFeed or (_G.BuildAZooSettings.Pets.AutoFeed2 or _G.BuildAZooSettings.Pets.AutoFeed3)))))) then
                    AutoClaimCoins()
                end
            end
        end)
        task.spawn(function()
            while task.wait(1) do
                local u337 = false

                local function v338()
                    u337 = true
                end

                if _G.BuildAZooSettings.Events.FishSnow then
                    local _FishPoints = workspace:FindFirstChild('FishPoints')

                    if _FishPoints then
                        local v340, v341, v342 = ipairs(_FishPoints:GetChildren())
                        local v343 = nil

                        while true do
                            local v344

                            v342, v344 = v340(v341, v342)

                            if v342 == nil then
                                break
                            end

                            local _FX_Fish_Special = v344:FindFirstChild('FX_Fish_Special')

                            if _FX_Fish_Special then
                                _FX_Fish_Special = _FX_Fish_Special:FindFirstChild('Scope')
                            end
                            if _FX_Fish_Special then
                                v338()

                                v343 = _FX_Fish_Special
                            end
                        end

                        if v343 then
                            if _PeanutX.SnowWasLost then
                                _PeanutX.SnowWasLost = false
                                _PeanutX.WasAutoFishing = _G.BuildAZooSettings.Main.AutoFishing
                                _PeanutX.WasGifting = _G.BuildAZooSettings.Player.AutoGift
                                _PeanutX.AutoGiftPaused = true

                                if _PeanutX.GiftThread then
                                    pcall(task.cancel, _PeanutX.GiftThread)

                                    _PeanutX.GiftThread = nil
                                end

                                _G.BuildAZooSettings.Main.AutoFishing = false
                            end

                            local v346 = v343.Position + Vector3.new(0, 2, 0)
                            local _Character = _PeanutX.LocalPlayer.Character

                            if _Character and _Character:FindFirstChild('HumanoidRootPart') then
                                local _HumanoidRootPart4 = _Character.HumanoidRootPart

                                _HumanoidRootPart4.CFrame = CFrame.new(v346, v346 + v343.CFrame.LookVector)
                                _HumanoidRootPart4.Anchored = true
                            end

                            local _Remote2 = _PeanutX.ReplicatedStorage:FindFirstChild('Remote')

                            if _Remote2 then
                                local _CharacterRE2 = _Remote2:FindFirstChild('CharacterRE')
                                local _FishingRE2 = _Remote2:FindFirstChild('FishingRE')

                                if _CharacterRE2 and _FishingRE2 then
                                    _CharacterRE2:FireServer('Focus', 'FishRob')
                                    task.wait(0.5)
                                    _FishingRE2:FireServer('Start')
                                    task.wait(0.5)
                                    _FishingRE2:FireServer('Throw', {
                                        Bait = _G.BuildAZooSettings.Main.FishBait,
                                        Pos = v346,
                                    })
                                    task.wait(1)
                                    _FishingRE2:FireServer('POUT', {SUC = 1})
                                end
                            end
                        elseif not _PeanutX.SnowWasLost then
                            _PeanutX.SnowWasLost = true

                            local v352 = _PeanutX.LocalPlayer.Character or _PeanutX.LocalPlayer.CharacterAdded:Wait()

                            v352:WaitForChild('HumanoidRootPart').Anchored = false

                            local _Humanoid4 = v352:FindFirstChildOfClass('Humanoid')

                            if _Humanoid4 then
                                _Humanoid4.Health = 0
                            else
                                v352:BreakJoints()
                            end

                            _PeanutX.LocalPlayer.CharacterAdded:Wait():WaitForChild('HumanoidRootPart').Anchored = false

                            if _PeanutX.WasAutoFishing then
                                _G.BuildAZooSettings.Main.AutoFishing = true
                            end
                        end
                    end
                elseif _G.BuildAZooSettings.Main.AutoFishing then
                    local _HumanoidRootPart5 = (_PeanutX.LocalPlayer.Character or _PeanutX.LocalPlayer.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart')

                    if _G.BuildAZooSettings.Main.FishingPos then
                        _HumanoidRootPart5.CFrame = _G.BuildAZooSettings.Main.FishingPos
                        _HumanoidRootPart5.Anchored = true

                        u139()
                    else
                        _HumanoidRootPart5.Anchored = false
                        _G.BuildAZooSettings.Main.AutoFishing = false
                    end
                else
                    local _Character2 = _PeanutX.LocalPlayer.Character

                    if _Character2 and _Character2:FindFirstChild('HumanoidRootPart') then
                        _Character2.HumanoidRootPart.Anchored = false
                    end
                end
                if u337 then
                    break
                end
            end
        end)

        local v356 = u16:CreateWindow({
            Title = 'Peanut X',
            SubTitle = 'Build a Zoo v2.1.0',
            TabWidth = 160,
            Size = UDim2.fromOffset(600, 480),
            Acrylic = true,
            Theme = 'Darker',
            MinimizeKey = Enum.KeyCode.RightControl,
        })
        local v357 = {
            Home = v356:AddTab({
                Title = 'Home',
                Icon = 'home',
            }),
            Main = v356:AddTab({
                Title = 'Farm',
                Icon = 'flame',
            }),
            Shop = v356:AddTab({
                Title = 'Shop',
                Icon = 'shopping-bag',
            }),
            Eggs = v356:AddTab({
                Title = 'Eggs',
                Icon = 'egg',
            }),
            Pets = v356:AddTab({
                Title = 'Pets',
                Icon = 'heart',
            }),
            Events = v356:AddTab({
                Title = 'Events',
                Icon = 'calendar',
            }),
            Player = v356:AddTab({
                Title = 'Player',
                Icon = 'user',
            }),
            Redeem = v356:AddTab({
                Title = 'Redeem',
                Icon = 'gift',
            }),
            Settings = v356:AddTab({
                Title = 'Settings',
                Icon = 'settings',
            }),
        }

        v357.Home:AddParagraph({
            Title = 'Peanut X - Build a Zoo',
            Content = ' Version 2.1.0 - Latest',
        })

        local u358 = v357.Home:AddParagraph({
            Title = 'Pets Info',
            Content = 'Loading...',
        })
        local u359 = v357.Home:AddParagraph({
            Title = 'Eggs Info',
            Content = 'Loading...',
        })

        task.spawn(function()
            while task.wait(2) do
                u358:SetDesc(u68())
                u359:SetDesc(u89())
            end
        end)
        v357.Main:AddDropdown('CoinMethod', {
            Title = 'Claim Method',
            Values = {
                'Teleport',
                'Tween',
            },
            Default = _G.BuildAZooSettings.Main.CoinMoveMethod,
        }):OnChanged(function(p360)
            _G.BuildAZooSettings.Main.CoinMoveMethod = p360

            SaveSettings()
        end)
        v357.Main:AddToggle('AutoClaimCoins', {
            Title = 'Auto Coins',
            Default = _G.BuildAZooSettings.Main.AutoClaimCoins,
        }):OnChanged(function(p361)
            _G.BuildAZooSettings.Main.AutoClaimCoins = p361

            SaveSettings()
        end)
        v357.Main:AddToggle('AutoHatch', {
            Title = 'Auto Hatch Eggs',
            Default = _G.BuildAZooSettings.Eggs.AutoHatch,
        }):OnChanged(function(p362)
            _G.BuildAZooSettings.Eggs.AutoHatch = p362

            SaveSettings()

            if p362 then
                task.spawn(function()
                    while _G.BuildAZooSettings.Eggs.AutoHatch do
                        u246()
                        task.wait(2)
                    end
                end)
            end
        end)
        v357.Main:AddButton({
            Title = 'Save Fishing Position',
            Description = 'Mark current location',
            Callback = function()
                local _HumanoidRootPart6 = (_PeanutX.LocalPlayer.Character or _PeanutX.LocalPlayer.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart')

                _G.BuildAZooSettings.Main.FishingPos = _HumanoidRootPart6.CFrame

                SaveSettings()
                u16:Notify({
                    Title = 'Position Saved',
                    Content = 'Fishing location marked!',
                    Duration = 2,
                })
            end,
        })
        v357.Main:AddDropdown('Bait', {
            Title = 'Fishing Bait',
            Values = {
                'FishingBait1',
                'FishingBait2',
                'FishingBait3',
            },
            Default = _G.BuildAZooSettings.Main.FishBait,
        }):OnChanged(function(p364)
            _G.BuildAZooSettings.Main.FishBait = p364

            SaveSettings()
        end)

        local _AutoFish = v357.Main:AddToggle('AutoFish', {
            Title = 'Auto Fish',
            Description = 'Save position first',
            Default = _G.BuildAZooSettings.Main.AutoFishing,
        })
        local v366 = _AutoFish

        _AutoFish.OnChanged(v366, function(p367)
            _G.BuildAZooSettings.Main.AutoFishing = p367

            SaveSettings()

            if p367 and not _G.BuildAZooSettings.Main.FishingPos then
                u16:Notify({
                    Title = 'Position Required',
                    Content = 'Save fishing position first!',
                    Duration = 3,
                })
                _AutoFish:SetValue(false)
            end
        end)
        v357.Main:AddDropdown('Potion', {
            Title = 'Potion Type',
            Values = {
                'Potion_Luck',
                'Potion_Coin',
                'Potion_Hatch',
                'Potion_3in1',
            },
            Default = _G.BuildAZooSettings.Main.SelectedPotion,
        }):OnChanged(function(p368)
            _G.BuildAZooSettings.Main.SelectedPotion = p368

            SaveSettings()
        end)
        v357.Main:AddToggle('AutoPotion', {
            Title = 'Auto Use Potion',
            Description = 'Every 5 minutes',
            Default = _G.BuildAZooSettings.Main.AutoPotion,
        }):OnChanged(function(p369)
            _G.BuildAZooSettings.Main.AutoPotion = p369

            SaveSettings()

            if p369 then
                task.spawn(function()
                    while _G.BuildAZooSettings.Main.AutoPotion do
                        UsePotion()
                        task.wait(300)
                    end
                end)
            end
        end)
        v357.Shop:AddDropdown('Fruits', {
            Title = 'Select Fruits',
            Values = _PeanutX.FruitsList,
            Multi = true,
            Default = _G.BuildAZooSettings.Shop.SelectedFruits,
        }):OnChanged(function(p370)
            _G.BuildAZooSettings.Shop.SelectedFruits = {}

            local v371, v372, v373 = pairs(p370)

            while true do
                local v374

                v373, v374 = v371(v372, v373)

                if v373 == nil then
                    break
                end
                if v374 then
                    table.insert(_G.BuildAZooSettings.Shop.SelectedFruits, v373)
                end
            end

            SaveSettings()
        end)
        v357.Shop:AddToggle('AutoFruit', {
            Title = 'Auto Buy Fruits',
            Default = _G.BuildAZooSettings.Shop.AutoBuyFruit,
        }):OnChanged(function(p375)
            _G.BuildAZooSettings.Shop.AutoBuyFruit = p375

            SaveSettings()

            if p375 then
                task.spawn(function()
                    while _G.BuildAZooSettings.Shop.AutoBuyFruit do
                        BuyFruits()
                        task.wait(60)
                    end
                end)
            end
        end)
        v357.Shop:AddDropdown('DestroyFruit', {
            Title = 'Destroy Fruit',
            Values = _PeanutX.FruitsList,
            Default = _G.BuildAZooSettings.Shop.SelectedDestroyFruit,
        }):OnChanged(function(p376)
            _G.BuildAZooSettings.Shop.SelectedDestroyFruit = p376

            SaveSettings()
        end)
        v357.Shop:AddToggle('AutoDestroyFruit', {
            Title = 'Auto Destroy Fruit',
            Default = _G.BuildAZooSettings.Shop.AutoDestroyFruits,
        }):OnChanged(function(p377)
            _G.BuildAZooSettings.Shop.AutoDestroyFruits = p377

            SaveSettings()

            if p377 then
                task.spawn(function()
                    while _G.BuildAZooSettings.Shop.AutoDestroyFruits and _G.BuildAZooSettings.Shop.SelectedDestroyFruit ~= '' do
                        DestroyFruit()
                        task.wait(0.4)
                    end
                end)
            end
        end)
        v357.Shop:AddDropdown('Items', {
            Title = 'Item Type',
            Values = {
                'All',
                'Pet',
                'Egg',
            },
            Default = _G.BuildAZooSettings.Shop.SelectedItem,
        }):OnChanged(function(p378)
            _G.BuildAZooSettings.Shop.SelectedItem = p378

            SaveSettings()
        end)
        v357.Shop:AddButton({
            Title = 'Sell Items',
            Description = 'Sell selected type',
            Callback = function()
                SellItems()
                u16:Notify({
                    Title = 'Items Sold',
                    Content = _G.BuildAZooSettings.Shop.SelectedItem .. ' sold successfully',
                    Duration = 2,
                })
            end,
        })
        v357.Eggs:AddParagraph({
            Title = 'Egg Set 1',
            Content = 'Primary egg buying',
        })
        v357.Eggs:AddDropdown('EggTypes', {
            Title = 'Eggs Set 1',
            Values = _PeanutX.EggsList,
            Multi = true,
            Default = _G.BuildAZooSettings.Eggs.SelectedEggs,
        }):OnChanged(function(p379)
            _G.BuildAZooSettings.Eggs.SelectedEggs = {}

            local v380, v381, v382 = pairs(p379)

            while true do
                local v383

                v382, v383 = v380(v381, v382)

                if v382 == nil then
                    break
                end
                if v383 then
                    table.insert(_G.BuildAZooSettings.Eggs.SelectedEggs, v382)
                end
            end

            SaveSettings()
        end)
        v357.Eggs:AddDropdown('Mutations', {
            Title = 'Mutations Set 1',
            Description = 'Uncheck None for mutations only',
            Values = _PeanutX.MutationsList,
            Multi = true,
            Default = _G.BuildAZooSettings.Eggs.SelectedMutations,
        }):OnChanged(function(p384)
            _G.BuildAZooSettings.Eggs.SelectedMutations = {}

            local v385, v386, v387 = pairs(p384)

            while true do
                local v388

                v387, v388 = v385(v386, v387)

                if v387 == nil then
                    break
                end
                if v388 then
                    table.insert(_G.BuildAZooSettings.Eggs.SelectedMutations, v387)
                end
            end

            SaveSettings()
        end)
        v357.Eggs:AddToggle('AutoBuyEgg', {
            Title = 'Auto Buy Eggs Set 1',
            Default = _G.BuildAZooSettings.Eggs.AutoBuyEgg,
        }):OnChanged(function(p389)
            _G.BuildAZooSettings.Eggs.AutoBuyEgg = p389

            SaveSettings()

            if p389 then
                u170()
                task.spawn(function()
                    while _G.BuildAZooSettings.Eggs.AutoBuyEgg do
                        u193(_G.BuildAZooSettings.Eggs.SelectedEggs, _G.BuildAZooSettings.Eggs.SelectedMutations)
                        task.wait(1)
                    end
                end)
            end
        end)
        v357.Eggs:AddParagraph({
            Title = 'Egg Set 2',
            Content = 'Secondary egg buying',
        })
        v357.Eggs:AddDropdown('EggTypes2', {
            Title = 'Eggs Set 2',
            Values = _PeanutX.EggsList,
            Multi = true,
            Default = _G.BuildAZooSettings.Eggs.SelectedEggs2,
        }):OnChanged(function(p390)
            _G.BuildAZooSettings.Eggs.SelectedEggs2 = {}

            local v391, v392, v393 = pairs(p390)

            while true do
                local v394

                v393, v394 = v391(v392, v393)

                if v393 == nil then
                    break
                end
                if v394 then
                    table.insert(_G.BuildAZooSettings.Eggs.SelectedEggs2, v393)
                end
            end

            SaveSettings()
        end)
        v357.Eggs:AddDropdown('Mutations2', {
            Title = 'Mutations Set 2',
            Values = _PeanutX.MutationsList,
            Multi = true,
            Default = _G.BuildAZooSettings.Eggs.SelectedMutations2,
        }):OnChanged(function(p395)
            _G.BuildAZooSettings.Eggs.SelectedMutations2 = {}

            local v396, v397, v398 = pairs(p395)

            while true do
                local v399

                v398, v399 = v396(v397, v398)

                if v398 == nil then
                    break
                end
                if v399 then
                    table.insert(_G.BuildAZooSettings.Eggs.SelectedMutations2, v398)
                end
            end

            SaveSettings()
        end)
        v357.Eggs:AddToggle('AutoBuyEgg2', {
            Title = 'Auto Buy Eggs Set 2',
            Default = _G.BuildAZooSettings.Eggs.AutoBuyEgg2,
        }):OnChanged(function(p400)
            _G.BuildAZooSettings.Eggs.AutoBuyEgg2 = p400

            SaveSettings()

            if p400 then
                u170()
                task.spawn(function()
                    while _G.BuildAZooSettings.Eggs.AutoBuyEgg2 do
                        u193(_G.BuildAZooSettings.Eggs.SelectedEggs2, _G.BuildAZooSettings.Eggs.SelectedMutations2)
                        task.wait(1)
                    end
                end)
            end
        end)
        v357.Eggs:AddDropdown('SellEggTypes', {
            Title = 'Eggs to Sell',
            Values = _PeanutX.EggsList,
            Multi = true,
            Default = _G.BuildAZooSettings.Eggs.SelectedSellEggs,
        }):OnChanged(function(p401)
            _G.BuildAZooSettings.Eggs.SelectedSellEggs = {}

            local v402, v403, v404 = pairs(p401)

            while true do
                local v405

                v404, v405 = v402(v403, v404)

                if v404 == nil then
                    break
                end
                if v405 then
                    table.insert(_G.BuildAZooSettings.Eggs.SelectedSellEggs, v404)
                end
            end

            SaveSettings()
        end)
        v357.Eggs:AddDropdown('SellMutations', {
            Title = 'Mutations to Sell',
            Values = _PeanutX.MutationsList,
            Multi = true,
            Default = _G.BuildAZooSettings.Eggs.SelectedSellMutations,
        }):OnChanged(function(p406)
            _G.BuildAZooSettings.Eggs.SelectedSellMutations = {}

            local v407, v408, v409 = pairs(p406)

            while true do
                local v410

                v409, v410 = v407(v408, v409)

                if v409 == nil then
                    break
                end
                if v410 then
                    table.insert(_G.BuildAZooSettings.Eggs.SelectedSellMutations, v409)
                end
            end

            SaveSettings()
        end)
        v357.Eggs:AddButton({
            Title = 'Sell Filtered Eggs',
            Description = 'Sell by filter',
            Callback = function()
                SellEggs()
            end,
        })
        v357.Eggs:AddToggle('AutoSellEgg', {
            Title = 'Auto Sell Eggs',
            Default = _G.BuildAZooSettings.Eggs.AutoSellEgg,
        }):OnChanged(function(p411)
            _G.BuildAZooSettings.Eggs.AutoSellEgg = p411

            SaveSettings()

            if p411 then
                task.spawn(function()
                    while _G.BuildAZooSettings.Eggs.AutoSellEgg do
                        SellEggs()
                        task.wait(2)
                    end
                end)
            end
        end)
        v357.Pets:AddToggle('AutoTradePet', {
            Title = 'Auto Trade Pet',
            Description = 'Automatically trades when more expensive!',
            Default = _G.BuildAZooSettings.Pets.AutoTradePet,
        }):OnChanged(function(p412)
            _G.BuildAZooSettings.Pets.AutoTradePet = p412

            SaveSettings()

            if p412 then
                u288()
                u16:Notify({
                    Title = 'Auto Trade',
                    Content = 'Auto Trade Pet activated!',
                    Duration = 3,
                })
            else
                u289()
                u16:Notify({
                    Title = 'Auto Trade',
                    Content = 'Auto Trade Pet deactivated!',
                    Duration = 3,
                })
            end
        end)
        v357.Pets:AddButton({
            Title = 'Refresh Big Pet List',
            Description = 'Reload pet dropdown',
            Callback = function()
                if BigPetDropdown then
                    BigPetDropdown:SetValues(u231())
                end
                if BigPetDropdown2 then
                    BigPetDropdown2:SetValues(u231())
                end
                if BigPetDropdown3 then
                    BigPetDropdown3:SetValues(u231())
                end

                u16:Notify({
                    Title = 'Refreshed',
                    Content = 'Pet list updated',
                    Duration = 2,
                })
            end,
        })
        v357.Pets:AddDropdown('BigPet', {
            Title = 'Big Pet 1',
            Values = u231(),
            Default = _G.BuildAZooSettings.Pets.SelectedPet,
        }):OnChanged(function(p413)
            local v414, v415, v416 = ipairs(_PeanutX.PetsFolder:GetChildren())

            while true do
                local v417

                v416, v417 = v414(v415, v416)

                if v416 == nil then
                    break
                end
                if v417:GetAttribute('BPV') and (v417:GetAttribute('BPSK') or v417:GetAttribute('T')) == p413 then
                    _G.BuildAZooSettings.Pets.SelectedPet = v417.Name

                    SaveSettings()

                    break
                end
            end
        end)
        v357.Pets:AddDropdown('FeedFruits', {
            Title = 'Feed Fruits 1',
            Values = _PeanutX.FruitsList,
            Multi = true,
            Default = _G.BuildAZooSettings.Pets.SelectedFeedFruits,
        }):OnChanged(function(p418)
            _G.BuildAZooSettings.Pets.SelectedFeedFruits = {}

            local v419, v420, v421 = pairs(p418)

            while true do
                local v422

                v421, v422 = v419(v420, v421)

                if v421 == nil then
                    break
                end
                if v422 then
                    table.insert(_G.BuildAZooSettings.Pets.SelectedFeedFruits, v421)
                end
            end

            SaveSettings()
        end)

        local _AutoFeed = v357.Pets:AddToggle('AutoFeed', {
            Title = 'Auto Feed Big Pet 1',
            Default = _G.BuildAZooSettings.Pets.AutoFeed,
        })
        local v424 = _AutoFeed

        _AutoFeed.OnChanged(v424, function(p425)
            _G.BuildAZooSettings.Pets.AutoFeed = p425

            SaveSettings()

            if p425 then
                if #_G.BuildAZooSettings.Pets.SelectedFeedFruits <= 0 or (_G.BuildAZooSettings.Pets.SelectedPet == '' or not u221(_G.BuildAZooSettings.Pets.SelectedPet)) then
                    u16:Notify({
                        Title = 'Feed Error',
                        Content = 'Select pet and fruits first',
                        Duration = 3,
                    })
                    _AutoFeed:SetValue(false)
                else
                    task.spawn(function()
                        while _G.BuildAZooSettings.Pets.AutoFeed do
                            local v426, v427, v428 = ipairs(_G.BuildAZooSettings.Pets.SelectedFeedFruits)

                            while true do
                                local v429

                                v428, v429 = v426(v427, v428)

                                if v428 == nil then
                                    break
                                end

                                _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('DeployRE'):FireServer({
                                    event = 'deploy',
                                    uid = v429,
                                })
                                task.wait(0.5)
                                _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('CharacterRE'):FireServer('Focus', v429)
                                task.wait(0.5)
                                _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('PetRE'):FireServer('Feed', _G.BuildAZooSettings.Pets.SelectedPet)
                                task.wait(1)
                            end

                            task.wait(30)
                        end
                    end)
                end
            end
        end)
        v357.Pets:AddDropdown('BigPet2', {
            Title = 'Big Pet 2',
            Values = u231(),
            Default = _G.BuildAZooSettings.Pets.SelectedPet2,
        }):OnChanged(function(p430)
            local v431, v432, v433 = ipairs(_PeanutX.PetsFolder:GetChildren())

            while true do
                local v434

                v433, v434 = v431(v432, v433)

                if v433 == nil then
                    break
                end
                if v434:GetAttribute('BPV') and (v434:GetAttribute('BPSK') or v434:GetAttribute('T')) == p430 then
                    _G.BuildAZooSettings.Pets.SelectedPet2 = v434.Name

                    SaveSettings()

                    break
                end
            end
        end)
        v357.Pets:AddDropdown('FeedFruits2', {
            Title = 'Feed Fruits 2',
            Values = _PeanutX.FruitsList,
            Multi = true,
            Default = _G.BuildAZooSettings.Pets.SelectedFeedFruits2,
        }):OnChanged(function(p435)
            _G.BuildAZooSettings.Pets.SelectedFeedFruits2 = {}

            local v436, v437, v438 = pairs(p435)

            while true do
                local v439

                v438, v439 = v436(v437, v438)

                if v438 == nil then
                    break
                end
                if v439 then
                    table.insert(_G.BuildAZooSettings.Pets.SelectedFeedFruits2, v438)
                end
            end

            SaveSettings()
        end)

        local _AutoFeed2 = v357.Pets:AddToggle('AutoFeed2', {
            Title = 'Auto Feed Big Pet 2',
            Default = _G.BuildAZooSettings.Pets.AutoFeed2,
        })
        local v441 = _AutoFeed2

        _AutoFeed2.OnChanged(v441, function(p442)
            _G.BuildAZooSettings.Pets.AutoFeed2 = p442

            SaveSettings()

            if p442 then
                if #_G.BuildAZooSettings.Pets.SelectedFeedFruits2 <= 0 or (_G.BuildAZooSettings.Pets.SelectedPet2 == '' or not u221(_G.BuildAZooSettings.Pets.SelectedPet2)) then
                    u16:Notify({
                        Title = 'Feed Error',
                        Content = 'Select pet and fruits first',
                        Duration = 3,
                    })
                    _AutoFeed2:SetValue(false)
                else
                    task.spawn(function()
                        while _G.BuildAZooSettings.Pets.AutoFeed2 do
                            local v443, v444, v445 = ipairs(_G.BuildAZooSettings.Pets.SelectedFeedFruits2)

                            while true do
                                local v446

                                v445, v446 = v443(v444, v445)

                                if v445 == nil then
                                    break
                                end

                                _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('DeployRE'):FireServer({
                                    event = 'deploy',
                                    uid = v446,
                                })
                                task.wait(0.5)
                                _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('CharacterRE'):FireServer('Focus', v446)
                                task.wait(0.5)
                                _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('PetRE'):FireServer('Feed', _G.BuildAZooSettings.Pets.SelectedPet2)
                                task.wait(1)
                            end

                            task.wait(30)
                        end
                    end)
                end
            end
        end)
        v357.Pets:AddDropdown('BigPet3', {
            Title = 'Big Pet 3',
            Values = u231(),
            Default = _G.BuildAZooSettings.Pets.SelectedPet3,
        }):OnChanged(function(p447)
            local v448, v449, v450 = ipairs(_PeanutX.PetsFolder:GetChildren())

            while true do
                local v451

                v450, v451 = v448(v449, v450)

                if v450 == nil then
                    break
                end
                if v451:GetAttribute('BPV') and (v451:GetAttribute('BPSK') or v451:GetAttribute('T')) == p447 then
                    _G.BuildAZooSettings.Pets.SelectedPet3 = v451.Name

                    SaveSettings()

                    break
                end
            end
        end)
        v357.Pets:AddDropdown('FeedFruits3', {
            Title = 'Feed Fruits 3',
            Values = _PeanutX.FruitsList,
            Multi = true,
            Default = _G.BuildAZooSettings.Pets.SelectedFeedFruits3,
        }):OnChanged(function(p452)
            _G.BuildAZooSettings.Pets.SelectedFeedFruits3 = {}

            local v453, v454, v455 = pairs(p452)

            while true do
                local v456

                v455, v456 = v453(v454, v455)

                if v455 == nil then
                    break
                end
                if v456 then
                    table.insert(_G.BuildAZooSettings.Pets.SelectedFeedFruits3, v455)
                end
            end

            SaveSettings()
        end)

        local _AutoFeed3 = v357.Pets:AddToggle('AutoFeed3', {
            Title = 'Auto Feed Big Pet 3',
            Default = _G.BuildAZooSettings.Pets.AutoFeed3,
        })
        local v458 = _AutoFeed3

        _AutoFeed3.OnChanged(v458, function(p459)
            _G.BuildAZooSettings.Pets.AutoFeed3 = p459

            SaveSettings()

            if p459 then
                if #_G.BuildAZooSettings.Pets.SelectedFeedFruits3 <= 0 or (_G.BuildAZooSettings.Pets.SelectedPet3 == '' or not u221(_G.BuildAZooSettings.Pets.SelectedPet3)) then
                    u16:Notify({
                        Title = 'Feed Error',
                        Content = 'Select pet and fruits first',
                        Duration = 3,
                    })
                    _AutoFeed3:SetValue(false)
                else
                    task.spawn(function()
                        while _G.BuildAZooSettings.Pets.AutoFeed3 do
                            local v460, v461, v462 = ipairs(_G.BuildAZooSettings.Pets.SelectedFeedFruits3)

                            while true do
                                local v463

                                v462, v463 = v460(v461, v462)

                                if v462 == nil then
                                    break
                                end

                                _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('DeployRE'):FireServer({
                                    event = 'deploy',
                                    uid = v463,
                                })
                                task.wait(0.5)
                                _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('CharacterRE'):FireServer('Focus', v463)
                                task.wait(0.5)
                                _PeanutX.ReplicatedStorage:WaitForChild('Remote'):WaitForChild('PetRE'):FireServer('Feed', _G.BuildAZooSettings.Pets.SelectedPet3)
                                task.wait(1)
                            end

                            task.wait(30)
                        end
                    end)
                end
            end
        end)
        v357.Events:AddToggle('FishSnow', {
            Title = 'Auto Fish Snow',
            Description = 'Snow event fishing',
            Default = _G.BuildAZooSettings.Events.FishSnow,
        }):OnChanged(function(p464)
            _G.BuildAZooSettings.Events.FishSnow = p464

            SaveSettings()

            local v465 = not p464 and _PeanutX.LocalPlayer.Character

            if v465 then
                local v466, v467, v468 = ipairs(v465:GetDescendants())

                while true do
                    local v469

                    v468, v469 = v466(v467, v468)

                    if v468 == nil then
                        break
                    end
                    if v469:IsA('BasePart') then
                        v469.Anchored = false
                    end
                end

                local _Humanoid5 = v465:FindFirstChildOfClass('Humanoid')

                if _Humanoid5 then
                    _Humanoid5.Health = 0
                else
                    v465:BreakJoints()
                end
            end
        end)
        v357.Events:AddToggle('FishEvent', {
            Title = 'Auto Fish Event',
            Description = 'Special event fishing',
            Default = _G.BuildAZooSettings.Events.AutoFishingEvent,
        }):OnChanged(function(p471)
            _G.BuildAZooSettings.Events.AutoFishingEvent = p471

            SaveSettings()

            if p471 then
                task.spawn(function()
                    local v472 = false
                    local v473 = nil

                    while _G.BuildAZooSettings.Events.AutoFishingEvent do
                        local _FishPoints2 = workspace:FindFirstChild('FishPoints')

                        if _FishPoints2 then
                            local _FishPoint1 = _FishPoints2:FindFirstChild('FishPoint1')

                            if _FishPoint1 then
                                local _FX_Fish_Special_Wait = _FishPoint1:FindFirstChild('FX_Fish_Special_Wait')

                                if _FX_Fish_Special_Wait then
                                    local _Center = _FX_Fish_Special_Wait:FindFirstChild('Center')

                                    if _Center then
                                        local _HumanoidRootPart7 = (_PeanutX.LocalPlayer.Character or _PeanutX.LocalPlayer.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart')

                                        if v472 then
                                            if v473 then
                                                _HumanoidRootPart7.CFrame = v473
                                                _HumanoidRootPart7.Anchored = true
                                            end
                                        else
                                            _HumanoidRootPart7.CFrame = _Center.CFrame

                                            task.wait(3)

                                            v473 = _HumanoidRootPart7.CFrame + Vector3.new(0, 4, 0)
                                            _HumanoidRootPart7.CFrame = v473
                                            _HumanoidRootPart7.Anchored = true
                                            v472 = true
                                        end

                                        local _Remote3 = _PeanutX.ReplicatedStorage:FindFirstChild('Remote')

                                        if _Remote3 then
                                            local _CharacterRE3 = _Remote3:FindFirstChild('CharacterRE')
                                            local _FishingRE3 = _Remote3:FindFirstChild('FishingRE')

                                            if _CharacterRE3 and _FishingRE3 then
                                                _CharacterRE3:FireServer('Focus', 'FishRob')
                                                task.wait(0.5)
                                                _FishingRE3:FireServer('Start')
                                                task.wait(0.5)
                                                _FishingRE3:FireServer('Throw', {
                                                    Bait = _G.BuildAZooSettings.Main.FishBait,
                                                    Pos = _HumanoidRootPart7.Position,
                                                })
                                                task.wait(1)
                                                _FishingRE3:FireServer('POUT', {SUC = 1})
                                            end
                                        end
                                    else
                                        local _Character3 = _PeanutX.LocalPlayer.Character

                                        if _Character3 then
                                            local _HumanoidRootPart8 = _Character3:FindFirstChild('HumanoidRootPart')

                                            if _HumanoidRootPart8 then
                                                _HumanoidRootPart8.Anchored = false
                                            end

                                            _Character3:BreakJoints()

                                            v472 = false
                                            v473 = nil
                                        else
                                            v472 = false
                                            v473 = nil
                                        end
                                    end
                                end
                            end
                        end

                        task.wait(1)
                    end
                end)
            else
                local _Character4 = _PeanutX.LocalPlayer.Character

                if _Character4 then
                    local _HumanoidRootPart9 = _Character4:FindFirstChild('HumanoidRootPart')

                    if _HumanoidRootPart9 then
                        _HumanoidRootPart9.Anchored = false
                    end

                    _Character4:BreakJoints()
                end
            end
        end)
        v357.Events:AddToggle('EventTasks', {
            Title = 'Auto Claim Event Tasks',
            Description = 'Halloween/seasonal tasks',
            Default = _G.BuildAZooSettings.Events.AutoEventTasks,
        }):OnChanged(function(p486)
            _G.BuildAZooSettings.Events.AutoEventTasks = p486

            SaveSettings()

            if p486 then
                task.spawn(function()
                    while _G.BuildAZooSettings.Events.AutoEventTasks do
                        u153()
                        task.wait(15)
                    end
                end)
            end
        end)
        v357.Events:AddToggle('OnlineGift', {
            Title = 'Auto Claim Gift',
            Description = 'Every 30 seconds',
            Default = _G.BuildAZooSettings.Events.AutoDinoOnline,
        }):OnChanged(function(p487)
            _G.BuildAZooSettings.Events.AutoDinoOnline = p487

            SaveSettings()

            if p487 then
                task.spawn(function()
                    while _G.BuildAZooSettings.Events.AutoDinoOnline do
                        u154()
                        task.wait(30)
                    end
                end)
            end
        end)

        local _Player = v357.Player:AddDropdown('Player', {
            Title = 'Select Player',
            Values = u302(),
            Default = _G.BuildAZooSettings.Player.SelectedPlayer,
        })
        local v489 = _Player

        _Player.OnChanged(v489, function(p490)
            local v491, v492 = string.match(p490 or '', '^(.-) %((%d+)%)$')

            if v491 and v492 then
                _G.BuildAZooSettings.Player.SelectedPlayer = v491
                _G.BuildAZooSettings.Player.SelectedPlayerId = tonumber(v492)

                SaveSettings()
            else
                _G.BuildAZooSettings.Player.SelectedPlayer = ''
                _G.BuildAZooSettings.Player.SelectedPlayerId = nil
            end
        end)
        v357.Player:AddButton({
            Title = 'Like Player',
            Description = 'Like selected player',
            Callback = function()
                if _G.BuildAZooSettings.Player.SelectedPlayer and _G.BuildAZooSettings.Player.SelectedPlayerId then
                    LikePlot()
                    u16:Notify({
                        Title = 'Plot Liked',
                        Content = _G.BuildAZooSettings.Player.SelectedPlayer .. "'s liked",
                        Duration = 2,
                    })
                else
                    u16:Notify({
                        Title = 'Error',
                        Content = 'No player selected',
                        Duration = 2,
                    })
                end
            end,
        })
        v357.Player:AddToggle('AutoLike', {
            Title = 'Auto Like',
            Description = 'Every 30s',
            Default = _G.BuildAZooSettings.Player.AutoLike,
        }):OnChanged(function(p493)
            _G.BuildAZooSettings.Player.AutoLike = p493

            SaveSettings()

            if p493 then
                task.spawn(function()
                    while _G.BuildAZooSettings.Player.AutoLike do
                        if _G.BuildAZooSettings.Player.SelectedPlayer and _G.BuildAZooSettings.Player.SelectedPlayerId then
                            LikePlot()
                        end

                        task.wait(30)
                    end
                end)
            end
        end)
        v357.Player:AddParagraph({
            Title = ' Gems Exchange',
            Content = 'Exchange gems for various items',
        })
        v357.Player:AddDropdown('ExchangeItem', {
            Title = 'Select Item',
            Values = {
                '300K Money',
                'Rainbow Potion',
                'Pear',
                'Bloodstone Cycad',
                'Pineapple',
                'Dragon Fruit',
                'Gold Mango',
                '[Snow] Kaiju Egg',
                '[Halloween] General Kong Egg',
                '[Dino] Unicorn Pro Egg',
                '[Dino] General Kong Egg',
                'Halloween Home Board',
                'Deepsea Pearl Fruit',
                'Colossal Pinecone',
                'Candy Corn',
                'Durian',
                'Volt Ginkgo',
                'Pumpkin',
                'Franken Kiwi',
            },
            Default = _G.BuildAZooSettings.Exchange.SelectedExchangeItem,
        }):OnChanged(function(p494)
            _G.BuildAZooSettings.Exchange.SelectedExchangeItem = p494

            SaveSettings()
        end)
        v357.Player:AddToggle('AutoExchange', {
            Title = 'Auto Exchange Item',
            Description = 'Every 5 seconds',
            Default = _G.BuildAZooSettings.Exchange.AutoExchangeItem,
        }):OnChanged(function(p495)
            _G.BuildAZooSettings.Exchange.AutoExchangeItem = p495

            SaveSettings()

            if p495 then
                task.spawn(function()
                    while _G.BuildAZooSettings.Exchange.AutoExchangeItem do
                        ExchangeItem()
                        task.wait(5)
                    end
                end)
            end
        end)
        v357.Redeem:AddButton({
            Title = 'Redeem All Codes',
            Description = 'Redeem all codes at once',
            Callback = function()
                RedeemAllCodes()
            end,
        })
        v357.Settings:AddParagraph({
            Title = '\u{fffd}\u{fffd} Movement Settings',
            Content = 'Character customization',
        })
        v357.Settings:AddInput('Speed', {
            Title = 'Walk Speed',
            Default = tostring(_G.BuildAZooSettings.Settings.WalkSpeed),
            Placeholder = '29',
            Numeric = true,
            Finished = true,
        }):OnChanged(function(p496)
            _G.BuildAZooSettings.Settings.WalkSpeed = tonumber(p496) or 29

            SetSpeed()
            SaveSettings()
        end)
        v357.Settings:AddInput('Jump', {
            Title = 'Jump Power',
            Default = tostring(_G.BuildAZooSettings.Settings.JumpPower),
            Placeholder = '9',
            Numeric = true,
            Finished = true,
        }):OnChanged(function(p497)
            _G.BuildAZooSettings.Settings.JumpPower = tonumber(p497) or 9

            SetJump()
            SaveSettings()
        end)
        v357.Settings:AddSlider('FlySpeed', {
            Title = 'Fly Speed',
            Default = _G.BuildAZooSettings.Settings.FlySpeed,
            Min = 10,
            Max = 300,
            Rounding = 0,
        }):OnChanged(function(p498)
            _G.BuildAZooSettings.Settings.FlySpeed = p498

            SaveSettings()
        end)
        v357.Settings:AddToggle('Fly', {
            Title = 'Fly Mode',
            Description = 'Use WASD to fly',
            Default = _G.BuildAZooSettings.Settings.FlyMode,
        }):OnChanged(function(p499)
            _G.BuildAZooSettings.Settings.FlyMode = p499

            SaveSettings()

            if p499 then
                u316()
            else
                if _PeanutX.FlyConnection then
                    _PeanutX.FlyConnection:Disconnect()

                    _PeanutX.FlyConnection = nil
                end
                if _PeanutX.FlyGyro then
                    _PeanutX.FlyGyro:Destroy()

                    _PeanutX.FlyGyro = nil
                end
                if _PeanutX.FlyVel then
                    _PeanutX.FlyVel:Destroy()

                    _PeanutX.FlyVel = nil
                end

                local _Character5 = _PeanutX.LocalPlayer.Character
                local v501 = _Character5 and _Character5:FindFirstChildOfClass('Humanoid')

                if v501 then
                    v501.PlatformStand = false
                end
            end
        end)
        v357.Settings:AddToggle('NoClip', {
            Title = 'No Clip',
            Description = 'Walk through walls',
            Default = _G.BuildAZooSettings.Settings.NoClip,
        }):OnChanged(function(p502)
            u326(p502)
            SaveSettings()
        end)
        v357.Settings:AddToggle('AntiAFK', {
            Title = 'Anti AFK',
            Description = 'Prevent AFK kick',
            Default = _G.BuildAZooSettings.Settings.AntiAFK,
        }):OnChanged(function(p503)
            _G.BuildAZooSettings.Settings.AntiAFK = p503

            SaveSettings()
        end)
        v357.Settings:AddParagraph({
            Title = ' Webhook Settings',
            Content = 'Discord notifications for eggs',
        })
        v357.Settings:AddInput('Webhook', {
            Title = 'Webhook URL',
            Description = 'Discord webhook for egg logs',
            Default = _G.BuildAZooSettings.Settings.WebhookURL,
            Placeholder = 'https://discord.com/api/webhooks/...',
            Finished = true,
        }):OnChanged(function(p504)
            _G.BuildAZooSettings.Settings.WebhookURL = p504

            SaveSettings()
        end)
        v357.Settings:AddToggle('WebhookLog', {
            Title = 'Enable Webhook',
            Description = 'Log egg purchases',
            Default = _G.BuildAZooSettings.Settings.EnableWebhook,
        }):OnChanged(function(p505)
            _G.BuildAZooSettings.Settings.EnableWebhook = p505

            SaveSettings()
        end)
        v17:SetLibrary(u16)
        v18:SetLibrary(u16)
        v17:IgnoreThemeSettings()
        v17:SetIgnoreIndexes({})
        v18:SetFolder('PeanutX1234')
        v17:SetFolder('PeanutX1234/BuildAZoo')
        v18:BuildInterfaceSection(v357.Settings)
        v17:BuildConfigSection(v357.Settings)
        _PeanutX.Players.PlayerAdded:Connect(function()
            task.wait(1)

            if _Player then
                _Player:SetValues(u302())
            end
        end)
        _PeanutX.Players.PlayerRemoving:Connect(function()
            task.wait(1)

            if _Player then
                _Player:SetValues(u302())
            end
        end)

        local v506 = 'https://raw.githubusercontent.com/TokyoYoo/gga2/refs/heads/main/Trst.lua'

        if syn and syn.queue_on_teleport then
            syn.queue_on_teleport(string.format('\r\n        loadstring(game:HttpGet("%s"))()\r\n    ', v506))
        elseif queue_on_teleport then
            queue_on_teleport(string.format('\r\n        loadstring(game:HttpGet("%s"))()\r\n    ', v506))
        end

        v356:SelectTab(1)
        v17:LoadAutoloadConfig()
    end) then
        warn('Failed to load main script')
    end
end

if isfile(u3) then
    local v508 = readfile(u3)

    if v508 and v508 ~= '' then
        if u14((string.gsub(v508, '%s+', ''))) then
            print('Saved key is still valid, loading script...')
            u507()

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
    local v516 = _TextBox.Text or ''
    local u517 = string.gsub(v516, '%s+', '')

    if u517 == '' then
        _TextLabel2.Text = 'Please enter your key.'
        _TextLabel2.TextColor3 = Color3.fromRGB(255, 0, 0)
    else
        _TextLabel2.Text = 'Checking key...'
        _TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 0)

        if u14(u517) then
            _TextLabel2.Text = 'Key Valid! Loading Script...'
            _TextLabel2.TextColor3 = Color3.fromRGB(0, 255, 0)

            pcall(function()
                writefile(u3, u517)
            end)
            wait(1)
            u507()
            _ScreenGui:Destroy()
        else
            _TextLabel2.Text = 'Invalid key. Try again.'
            _TextLabel2.TextColor3 = Color3.fromRGB(255, 0, 0)
        end
    end
end)
_TextBox.FocusLost:Connect(function(p518)
    if p518 then
        _TextButton2.MouseButton1Click:Fire()
    end
end)
