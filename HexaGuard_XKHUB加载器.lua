-- CN
-- 开源by：@HG7399 [HexaGuard]
-- https://shoplnk.me/HGteam
-- 功能效果没测试过,自行测试,如有损坏自行修复！
-- 全源开源，应该没有人闲的没事拿这个圈钱吧？
-- 最后：请标明来源，谢谢！

-- EN
-- Open Source by: @HG7399 [HexaGuard]
-- https://shoplnk.me/HGteam
-- Functionality hasn't been tested; test it yourself and fix any issues if damaged!
-- Fully open-source; hopefully no one would bother monetizing this, right?
-- Lastly: Please credit the source, thank you!


local Env = getfenv()
local var1 = game:HttpGet("https://raw.githubusercontent.com/DevSloPo/EntityNotify/refs/heads/main/Notify.lua");
local var2 = loadstring(var1);
local Loaded_Var1 = var2();
local TweenService = game:GetService("TweenService");
local Players = game:GetService("Players");
local LocalPlayer = Players.LocalPlayer;
local Color3_FromRGB = Color3.fromRGB;
local Color3_Value = Color3_FromRGB(255, 223, 190);
local Color3_Value_2 = Color3_FromRGB(255, 223, 190);
local Color3_Value_3 = Color3_FromRGB(84, 68, 61);
local var3 = tick();
local var4 = game:HttpGet("https://raw.githubusercontent.com/DevSloPo/Local-player/refs/heads/main/player.luau");
local var5 = loadstring(var4);
local Loaded_Var4 = var5();
local var6 = loadstring("\n\t--[[\n\n\t\t\t\t\t .@%(/*,.......      ...,,*/(#%&@@.\n\t\t\t\t (*   ,/(#%%&&@@@@&%((////(((##%###((/**,,.     ,//(&.\n\t\t\t   /* .%@@@@@@@@%,  .(&@@@&&&&&&@@@@@@&#(*,........*%@@@(.  ,#.\n\t\t\t */ .&@@@@@@@*  (%,   *(&&@@@@@&%(*,.             .,*(#%(*@@&*  *,\n\t\t\t#, /@@@@@@* *&( ,&&/.,/#%&&@@@&(&@@@@@@@@@@@@#*,.....,/&@@@@@@@@( .%\n\t\t   #  #@@@@@*/@% .#%./(,.,/*,//*,.,/(*@@@@@@@@@@@@%@@@@@@@@@#.#@@@@@@&. %\n\t\t  /  &@@@@@@@@(%@# *&&*&@@@@#/&@@@@/%%.,%@@@@@@@%/@@&(,  ,,,...  *%@@@# *\n\t\t#  .&@@@@@@@@@@@,((%@@@@@#.    ,&@@#@@&* .&@@@@@&,.#@@@@/&@@%(@@@&(/,(&, /,\n\t (/   (@&&&%&@@@&/, ,@#(@@@@,        #@@/,&@& /@@@@@,%#%@@@@@(     *@@@@@&,%%. .\n\t/  #/,#@@@&#(//#@@@/ %@@@&@@@(.    ,&@@(.*/*  %@@*   %@@@@@@%       (@@&(*...%&.\n\t ///@@&,  (&@@#,   /@/ ,*&@@@@#&@@%#%((%@&* /@@@@@@&. #@@@#&@@@&%%@@@@@@&,/(*@/#\n\t%%.&@# .&@@@# /@@@@%&@@@&/.   ,/((/*,  ./&@@@@@@@@@@,*&(./%@@#*&@@@(#(....,&#*@/\n\t@%.&& .&@@@&*    /&@@@@@@@@@@@@@@@@&@@#/(%@@@@@@@@@@&,  (@@@@@@@@@@@@/,@@@@@#.&..(2.56kb left.)", "Luraph", nil);
local Success_364, Error_Message_364 = pcall(function(...)
    local var7 = game:HttpGet("https://raw.githubusercontent.com/DevSloPo/EntityNotify/refs/heads/main/Notify.lua");
    local var8 = loadstring("local EntityNotification = {}\nEntityNotification.__index = EntityNotification\n\nlocal TweenService = game:GetService(\"TweenService\")\nlocal Players = game:GetService(\"Players\")\n\nlocal player = Players.LocalPlayer\nlocal playerGui\nlocal screenGui\nlocal activeNotifications = {}\nlocal notificationSpacing = 0.15\nlocal basePosition = 0.08\nlocal borderColor = Color3.fromRGB(255, 223, 190)\nlocal textColor = Color3.fromRGB(255, 223, 190)\nlocal innerColor = Color3.fromRGB(84, 68, 61)\n\nlocal function updateNotificationPositions()\n    for i, notif in ipairs(activeNotifications) do\n        if notif and notif.Parent then\n            local targetPosition = basePosition + ((i - 1) * notificationSpacing)\n            local tween = TweenService:Create(\n                notif,\n                TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),\n                {Position = UDim2.new(0.5, 0, targetPosition, 0)}\n            )\n            tween:Play()\n        end\n    en..(11.18kb left.)");
    local Loaded_Func_2 = var8();
    local TweenService_2 = game:GetService("TweenService");
    local Players_2 = game:GetService("Players");
    local LocalPlayer_2 = Players.LocalPlayer;
    local Color3_Value_4 = Color3_FromRGB(255, 223, 190);
    local Color3_Value_5 = Color3_FromRGB(255, 223, 190);
    local Color3_Value_6 = Color3_FromRGB(84, 68, 61);
    local var9 = game:HttpGet("https://raw.githubusercontent.com/DevSloPo/obsidian_UI/main/Library.lua");
    local var10 = loadstring(var9);
    -- this function was spied, no real content was loaded.
    local _call11 = var10();
    local var12 = game:HttpGet("https://raw.githubusercontent.com/DevSloPo/obsidian_UI/main/addons/ThemeManager.lua");
    local var13 = loadstring(var12);
    -- this function was spied, no real content was loaded.
    local _call14 = var13();
    local var15 = game:HttpGet("https://raw.githubusercontent.com/DevSloPo/obsidian_UI/main/addons/SaveManager.lua");
    local var16 = loadstring(var15);
    -- this function was spied, no real content was loaded.
    local _call17 = var16();
    local Options = _call11.Options;
    local Toggles = _call11.Toggles;
    _call11.ShowToggleFrameInKeybinds = true;
    _call11.ShowCustomCursor = true;
    _call11.NotifySide = "Right";
    local CreateWindow = _call11.CreateWindow;
    local LocalizationService = game:GetService("LocalizationService");
    local RobloxLocaleId = LocalizationService.RobloxLocaleId;
    local var15 = RobloxLocaleId .. "</font>";
    -- "CLRMfGznYmSNPsfsf</font>"
    local var16 = "<font color=\"rgb(255,255,255)\">XK Hub</font>\n<font color=\"rgb(128,128,128)\">XK Hub 国家:" .. var15;
    -- "<font color=\"rgb(255,255,255)\">XK Hub</font>\n<font color=\"rgb(128,128,128)\">XK Hub 国家:CLRMfGznYmSNPsfsf</font>"
    local Players_3 = game.Players;
    local LocalPlayer_3 = Players.LocalPlayer;
    local Name = LocalPlayer.Name;
    local MarketplaceService = game:GetService("MarketplaceService");
    local PlaceId = game.PlaceId;
    local ProductInfo = MarketplaceService:GetProductInfo(PlaceId);
    local Name_2 = ProductInfo.Name;
    local LocalizationService_2 = game:GetService("LocalizationService");
    local RobloxLocaleId_2 = LocalizationService.RobloxLocaleId;
    local var17 = " 丨国家: " .. RobloxLocaleId_2;
    -- " 丨国家: CLRMfGznYmSNPsfsf"
    local var18 = Name_2 .. var17;
    local var19 = " 丨游戏: " .. var18;
    local var20 = Name .. var19;
    local var21 = "欢迎用户: " .. var20;
    local Window = _call11:CreateWindow({
        AutoShow = true,
        ShowCustomCursor = true,
        NotifySide = "Right",
        MenuFadeTime = 0,
        Resizable = true,
        Center = true,
        Footer = var21,
        TabPadding = 8,
        Icon = 118510895903222,
        Title = var16,
    });
    local AddTab = Window.AddTab;
    local _ = Window:AddTab("首页", "house");
    local AddTab_2 = Window.AddTab;
    local __2 = Window:AddTab("主界面", "swords");
    local AddTab_3 = Window.AddTab;
    local __3 = Window:AddTab("界面设置", "settings");
    local AddLeftGroupbox = __2.AddLeftGroupbox;
    local __4 = __2:AddLeftGroupbox("分支", "git-branch");
    local AddRightGroupbox = __2.AddRightGroupbox;
    local __5 = __2:AddRightGroupbox("汉化", "globe");
    local AddRightGroupbox_2 = __2.AddRightGroupbox;
    local __6 = __2:AddRightGroupbox("视觉效果", "eye");
    local AddLeftGroupbox_2 = __2.AddLeftGroupbox;
    local __7 = __2:AddLeftGroupbox("制作工具", "tools");
    local AddRightGroupbox_3 = __2.AddRightGroupbox;
    local __8 = __2:AddRightGroupbox("其他功能", "settings");
    local AddToggle = __8.AddToggle;
    local Instant_Interaction = __8:AddToggle("Instant Interaction", {
        Text = "无限体力",
        Default = false,
        Callback = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            local Success_6471, Error_Message_6471 = pcall(function(...)
                local Not_Ext_1_0 = not ext_1_0;
                -- false
                if ext_1_0 then -- ran, expr id 3, has an else.
                    getgenv().XK_StaminaHackedTables = {};
                    getgenv().XK_StaminaHookedFunctions = {};
                    getgenv().XK_OriginalStaminaValues = {};
                    local var88 = getgc();
                end
                local var89 = getgc();
                local Debug_Info = debug.getinfo(function()

                end, nil);
                local Not_Debug_Info = not Debug_Info;
                -- false
                if Debug_Info then -- ran, expr id 4, has an else.
                    local Name_5 = Debug_Info.name;
                    local Not_Name_5 = not Name_5;
                    -- true
                    if Name_5 then -- didnt run, expr id 5, has an else.
                    else
                        local Debug_Info_2 = debug.getinfo(function()

                        end, nil);
                        local Not_Debug_Info_2 = not Debug_Info_2;
                        -- false
                        if Debug_Info_2 then -- ran, expr id 6, has an else.
                            local Name_6 = Debug_Info_2.name;
                            local Not_Name_6 = not Name_6;
                            -- true
                            if Name_6 then -- didnt run, expr id 7, has an else.
                            else
                                local Debug_Info_3 = debug.getinfo(function()

                                end, nil);
                                local Not_Debug_Info_3 = not Debug_Info_3;
                                -- false
                                if Debug_Info_3 then -- ran, expr id 8, has an else.
                                    local Name_7 = Debug_Info_3.name;
                                    local Not_Name_7 = not Name_7;
                                    -- true
                                    if Name_7 then -- didnt run, expr id 9, has an else.
                                    else
                                        local Debug_Info_4 = debug.getinfo(function()

                                        end, nil);
                                        local Not_Debug_Info_4 = not Debug_Info_4;
                                        -- false
                                        if Debug_Info_4 then -- ran, expr id 10, has an else.
                                            local Name_8 = Debug_Info_4.name;
                                            local Not_Name_8 = not Name_8;
                                            -- true
                                            if Name_8 then -- didnt run, expr id 11, has an else.
                                            else
                                                local Debug_Info_5 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_5 = not Debug_Info_5;
                                                -- false
                                                if Debug_Info_5 then -- ran, expr id 12, has an else.
                                                local Name_9 = Debug_Info_5.name;
                                                local Not_Name_9 = not Name_9;
                                                -- true
                                                if Name_9 then -- didnt run, expr id 13, has an else.
                                                else
                                                local Debug_Info_6 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_6 = not Debug_Info_6;
                                                -- false
                                                if Debug_Info_6 then -- ran, expr id 14, has an else.
                                                local Name_10 = Debug_Info_6.name;
                                                local Not_Name_10 = not Name_10;
                                                -- true
                                                if Name_10 then -- didnt run, expr id 15, has an else.
                                                else
                                                local Debug_Info_7 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_7 = not Debug_Info_7;
                                                -- false
                                                if Debug_Info_7 then -- ran, expr id 16, has an else.
                                                local Name_11 = Debug_Info_7.name;
                                                local Not_Name_11 = not Name_11;
                                                -- true
                                                if Name_11 then -- didnt run, expr id 17, has an else.
                                                else
                                                local Debug_Info_8 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_8 = not Debug_Info_8;
                                                -- false
                                                if Debug_Info_8 then -- ran, expr id 18, has an else.
                                                local Name_12 = Debug_Info_8.name;
                                                local Not_Name_12 = not Name_12;
                                                -- true
                                                if Name_12 then -- didnt run, expr id 19, has an else.
                                                else
                                                local Debug_Info_9 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_9 = not Debug_Info_9;
                                                -- false
                                                if Debug_Info_9 then -- ran, expr id 20, has an else.
                                                local Name_13 = Debug_Info_9.name;
                                                local Not_Name_13 = not Name_13;
                                                -- true
                                                if Name_13 then -- didnt run, expr id 21, has an else.
                                                else
                                                local Debug_Info_10 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_10 = not Debug_Info_10;
                                                -- false
                                                if Debug_Info_10 then -- ran, expr id 22, has an else.
                                                local Name_14 = Debug_Info_10.name;
                                                local Not_Name_14 = not Name_14;
                                                -- true
                                                if Name_14 then -- didnt run, expr id 23, has an else.
                                                else
                                                local Debug_Info_11 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_11 = not Debug_Info_11;
                                                -- false
                                                if Debug_Info_11 then -- ran, expr id 24, has an else.
                                                local Name_15 = Debug_Info_11.name;
                                                local Not_Name_15 = not Name_15;
                                                -- true
                                                if Name_15 then -- didnt run, expr id 25, has an else.
                                                else
                                                local Debug_Info_12 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_12 = not Debug_Info_12;
                                                -- false
                                                if Debug_Info_12 then -- ran, expr id 26, has an else.
                                                local Name_16 = Debug_Info_12.name;
                                                local Not_Name_16 = not Name_16;
                                                -- true
                                                if Name_16 then -- didnt run, expr id 27, has an else.
                                                else
                                                local Debug_Info_13 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_13 = not Debug_Info_13;
                                                -- false
                                                if Debug_Info_13 then -- ran, expr id 28, has an else.
                                                local Name_17 = Debug_Info_13.name;
                                                local Not_Name_17 = not Name_17;
                                                -- true
                                                if Name_17 then -- didnt run, expr id 29, has an else.
                                                else
                                                local Debug_Info_14 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_14 = not Debug_Info_14;
                                                -- false
                                                if Debug_Info_14 then -- ran, expr id 30, has an else.
                                                local Name_18 = Debug_Info_14.name;
                                                local Not_Name_18 = not Name_18;
                                                -- true
                                                if Name_18 then -- didnt run, expr id 31, has an else.
                                                else
                                                local Debug_Info_15 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_15 = not Debug_Info_15;
                                                -- false
                                                if Debug_Info_15 then -- ran, expr id 32, has an else.
                                                local Name_19 = Debug_Info_15.name;
                                                local Not_Name_19 = not Name_19;
                                                -- true
                                                if Name_19 then -- didnt run, expr id 33, has an else.
                                                else
                                                local Debug_Info_16 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_16 = not Debug_Info_16;
                                                -- false
                                                if Debug_Info_16 then -- ran, expr id 34, has an else.
                                                local Name_20 = Debug_Info_16.name;
                                                local Not_Name_20 = not Name_20;
                                                -- true
                                                if Name_20 then -- didnt run, expr id 35, has an else.
                                                else
                                                local Debug_Info_17 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_17 = not Debug_Info_17;
                                                -- false
                                                if Debug_Info_17 then -- ran, expr id 36, has an else.
                                                local Name_21 = Debug_Info_17.name;
                                                local Not_Name_21 = not Name_21;
                                                -- true
                                                if Name_21 then -- didnt run, expr id 37, has an else.
                                                else
                                                local Debug_Info_18 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_18 = not Debug_Info_18;
                                                -- false
                                                if Debug_Info_18 then -- ran, expr id 38, has an else.
                                                local Name_22 = Debug_Info_18.name;
                                                local Not_Name_22 = not Name_22;
                                                -- true
                                                if Name_22 then -- didnt run, expr id 39, has an else.
                                                else
                                                local Debug_Info_19 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_19 = not Debug_Info_19;
                                                -- false
                                                if Debug_Info_19 then -- ran, expr id 40, has an else.
                                                local Name_23 = Debug_Info_19.name;
                                                local Not_Name_23 = not Name_23;
                                                -- true
                                                if Name_23 then -- didnt run, expr id 41, has an else.
                                                else
                                                local Debug_Info_20 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_20 = not Debug_Info_20;
                                                -- false
                                                if Debug_Info_20 then -- ran, expr id 42, has an else.
                                                local Name_24 = Debug_Info_20.name;
                                                local Not_Name_24 = not Name_24;
                                                -- true
                                                if Name_24 then -- didnt run, expr id 43, has an else.
                                                else
                                                local Debug_Info_21 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_21 = not Debug_Info_21;
                                                -- false
                                                if Debug_Info_21 then -- ran, expr id 44, has an else.
                                                local Name_25 = Debug_Info_21.name;
                                                local Not_Name_25 = not Name_25;
                                                -- true
                                                if Name_25 then -- didnt run, expr id 45, has an else.
                                                else
                                                local Debug_Info_22 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_22 = not Debug_Info_22;
                                                -- false
                                                if Debug_Info_22 then -- ran, expr id 46, has an else.
                                                local Name_26 = Debug_Info_22.name;
                                                local Not_Name_26 = not Name_26;
                                                -- true
                                                if Name_26 then -- didnt run, expr id 47, has an else.
                                                else
                                                local Debug_Info_23 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_23 = not Debug_Info_23;
                                                -- false
                                                if Debug_Info_23 then -- ran, expr id 48, has an else.
                                                local Name_27 = Debug_Info_23.name;
                                                local Not_Name_27 = not Name_27;
                                                -- true
                                                if Name_27 then -- didnt run, expr id 49, has an else.
                                                else
                                                local Debug_Info_24 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_24 = not Debug_Info_24;
                                                -- false
                                                if Debug_Info_24 then -- ran, expr id 50, has an else.
                                                local Name_28 = Debug_Info_24.name;
                                                local Not_Name_28 = not Name_28;
                                                -- true
                                                if Name_28 then -- didnt run, expr id 51, has an else.
                                                else
                                                local Debug_Info_25 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_25 = not Debug_Info_25;
                                                -- false
                                                if Debug_Info_25 then -- ran, expr id 52, has an else.
                                                local Name_29 = Debug_Info_25.name;
                                                local Not_Name_29 = not Name_29;
                                                -- true
                                                if Name_29 then -- didnt run, expr id 53, has an else.
                                                else
                                                local Debug_Info_26 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_26 = not Debug_Info_26;
                                                -- false
                                                if Debug_Info_26 then -- ran, expr id 54, has an else.
                                                local Name_30 = Debug_Info_26.name;
                                                local Not_Name_30 = not Name_30;
                                                -- true
                                                if Name_30 then -- didnt run, expr id 55, has an else.
                                                else
                                                local Debug_Info_27 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_27 = not Debug_Info_27;
                                                -- false
                                                if Debug_Info_27 then -- ran, expr id 56, has an else.
                                                local Name_31 = Debug_Info_27.name;
                                                local Not_Name_31 = not Name_31;
                                                -- true
                                                if Name_31 then -- didnt run, expr id 57, has an else.
                                                else
                                                local Debug_Info_28 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_28 = not Debug_Info_28;
                                                -- false
                                                if Debug_Info_28 then -- ran, expr id 58, has an else.
                                                local Name_32 = Debug_Info_28.name;
                                                local Not_Name_32 = not Name_32;
                                                -- true
                                                if Name_32 then -- didnt run, expr id 59, has an else.
                                                else
                                                local Debug_Info_29 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_29 = not Debug_Info_29;
                                                -- false
                                                if Debug_Info_29 then -- ran, expr id 60, has an else.
                                                local Name_33 = Debug_Info_29.name;
                                                local Not_Name_33 = not Name_33;
                                                -- true
                                                if Name_33 then -- didnt run, expr id 61, has an else.
                                                else
                                                local Debug_Info_30 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_30 = not Debug_Info_30;
                                                -- false
                                                if Debug_Info_30 then -- ran, expr id 62, has an else.
                                                local Name_34 = Debug_Info_30.name;
                                                local Not_Name_34 = not Name_34;
                                                -- true
                                                if Name_34 then -- didnt run, expr id 63, has an else.
                                                else
                                                local Debug_Info_31 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_31 = not Debug_Info_31;
                                                -- false
                                                if Debug_Info_31 then -- ran, expr id 64, has an else.
                                                local Name_35 = Debug_Info_31.name;
                                                local Not_Name_35 = not Name_35;
                                                -- true
                                                if Name_35 then -- didnt run, expr id 65, has an else.
                                                else
                                                local Debug_Info_32 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_32 = not Debug_Info_32;
                                                -- false
                                                if Debug_Info_32 then -- ran, expr id 66, has an else.
                                                local Name_36 = Debug_Info_32.name;
                                                local Not_Name_36 = not Name_36;
                                                -- true
                                                if Name_36 then -- didnt run, expr id 67, has an else.
                                                else
                                                local Debug_Info_33 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_33 = not Debug_Info_33;
                                                -- false
                                                if Debug_Info_33 then -- ran, expr id 68, has an else.
                                                local Name_37 = Debug_Info_33.name;
                                                local Not_Name_37 = not Name_37;
                                                -- true
                                                if Name_37 then -- didnt run, expr id 69, has an else.
                                                else
                                                local Debug_Info_34 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_34 = not Debug_Info_34;
                                                -- false
                                                if Debug_Info_34 then -- ran, expr id 70, has an else.
                                                local Name_38 = Debug_Info_34.name;
                                                local Not_Name_38 = not Name_38;
                                                -- true
                                                if Name_38 then -- didnt run, expr id 71, has an else.
                                                else
                                                local Debug_Info_35 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_35 = not Debug_Info_35;
                                                -- false
                                                if Debug_Info_35 then -- ran, expr id 72, has an else.
                                                local Name_39 = Debug_Info_35.name;
                                                local Not_Name_39 = not Name_39;
                                                -- true
                                                if Name_39 then -- didnt run, expr id 73, has an else.
                                                else
                                                local Debug_Info_36 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_36 = not Debug_Info_36;
                                                -- false
                                                if Debug_Info_36 then -- ran, expr id 74, has an else.
                                                local Name_40 = Debug_Info_36.name;
                                                local Not_Name_40 = not Name_40;
                                                -- true
                                                if Name_40 then -- didnt run, expr id 75, has an else.
                                                else
                                                local Debug_Info_37 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_37 = not Debug_Info_37;
                                                -- false
                                                if Debug_Info_37 then -- ran, expr id 76, has an else.
                                                local Name_41 = Debug_Info_37.name;
                                                local Not_Name_41 = not Name_41;
                                                -- true
                                                if Name_41 then -- didnt run, expr id 77, has an else.
                                                else
                                                local Debug_Info_38 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_38 = not Debug_Info_38;
                                                -- false
                                                if Debug_Info_38 then -- ran, expr id 78, has an else.
                                                local Name_42 = Debug_Info_38.name;
                                                local Not_Name_42 = not Name_42;
                                                -- true
                                                if Name_42 then -- didnt run, expr id 79, has an else.
                                                else
                                                local Debug_Info_39 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_39 = not Debug_Info_39;
                                                -- false
                                                if Debug_Info_39 then -- ran, expr id 80, has an else.
                                                local Name_43 = Debug_Info_39.name;
                                                local Not_Name_43 = not Name_43;
                                                -- true
                                                if Name_43 then -- didnt run, expr id 81, has an else.
                                                else
                                                local Debug_Info_40 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_40 = not Debug_Info_40;
                                                -- false
                                                if Debug_Info_40 then -- ran, expr id 82, has an else.
                                                local Name_44 = Debug_Info_40.name;
                                                local Not_Name_44 = not Name_44;
                                                -- true
                                                if Name_44 then -- didnt run, expr id 83, has an else.
                                                else
                                                local Debug_Info_41 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_41 = not Debug_Info_41;
                                                -- false
                                                if Debug_Info_41 then -- ran, expr id 84, has an else.
                                                local Name_45 = Debug_Info_41.name;
                                                local Not_Name_45 = not Name_45;
                                                -- true
                                                if Name_45 then -- didnt run, expr id 85, has an else.
                                                else
                                                local Debug_Info_42 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_42 = not Debug_Info_42;
                                                -- false
                                                if Debug_Info_42 then -- ran, expr id 86, has an else.
                                                local Name_46 = Debug_Info_42.name;
                                                local Not_Name_46 = not Name_46;
                                                -- true
                                                if Name_46 then -- didnt run, expr id 87, has an else.
                                                else
                                                local Debug_Info_43 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_43 = not Debug_Info_43;
                                                -- false
                                                if Debug_Info_43 then -- ran, expr id 88, has an else.
                                                local Name_47 = Debug_Info_43.name;
                                                local Not_Name_47 = not Name_47;
                                                -- true
                                                if Name_47 then -- didnt run, expr id 89, has an else.
                                                else
                                                local Debug_Info_44 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_44 = not Debug_Info_44;
                                                -- false
                                                if Debug_Info_44 then -- ran, expr id 90, has an else.
                                                local Name_48 = Debug_Info_44.name;
                                                local Not_Name_48 = not Name_48;
                                                -- true
                                                if Name_48 then -- didnt run, expr id 91, has an else.
                                                else
                                                local Debug_Info_45 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_45 = not Debug_Info_45;
                                                -- false
                                                if Debug_Info_45 then -- ran, expr id 92, has an else.
                                                local Name_49 = Debug_Info_45.name;
                                                local Not_Name_49 = not Name_49;
                                                -- true
                                                if Name_49 then -- didnt run, expr id 93, has an else.
                                                else
                                                local Debug_Info_46 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_46 = not Debug_Info_46;
                                                -- false
                                                if Debug_Info_46 then -- ran, expr id 94, has an else.
                                                local Name_50 = Debug_Info_46.name;
                                                local Not_Name_50 = not Name_50;
                                                -- true
                                                if Name_50 then -- didnt run, expr id 95, has an else.
                                                else
                                                local Debug_Info_47 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_47 = not Debug_Info_47;
                                                -- false
                                                if Debug_Info_47 then -- ran, expr id 96, has an else.
                                                local Name_51 = Debug_Info_47.name;
                                                local Not_Name_51 = not Name_51;
                                                -- true
                                                if Name_51 then -- didnt run, expr id 97, has an else.
                                                else
                                                local Debug_Info_48 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_48 = not Debug_Info_48;
                                                -- false
                                                if Debug_Info_48 then -- ran, expr id 98, has an else.
                                                local Name_52 = Debug_Info_48.name;
                                                local Not_Name_52 = not Name_52;
                                                -- true
                                                if Name_52 then -- didnt run, expr id 99, has an else.
                                                else
                                                local Debug_Info_49 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_49 = not Debug_Info_49;
                                                -- false
                                                if Debug_Info_49 then -- ran, expr id 100, has an else.
                                                local Name_53 = Debug_Info_49.name;
                                                local Not_Name_53 = not Name_53;
                                                -- true
                                                if Name_53 then -- didnt run, expr id 101, has an else.
                                                else
                                                local Debug_Info_50 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_50 = not Debug_Info_50;
                                                -- false
                                                if Debug_Info_50 then -- ran, expr id 102, has an else.
                                                local Name_54 = Debug_Info_50.name;
                                                local Not_Name_54 = not Name_54;
                                                -- true
                                                if Name_54 then -- didnt run, expr id 103, has an else.
                                                else
                                                local Debug_Info_51 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_51 = not Debug_Info_51;
                                                -- false
                                                if Debug_Info_51 then -- ran, expr id 104, has an else.
                                                local Name_55 = Debug_Info_51.name;
                                                local Not_Name_55 = not Name_55;
                                                -- true
                                                if Name_55 then -- didnt run, expr id 105, has an else.
                                                else
                                                local Debug_Info_52 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_52 = not Debug_Info_52;
                                                -- false
                                                if Debug_Info_52 then -- ran, expr id 106, has an else.
                                                local Name_56 = Debug_Info_52.name;
                                                local Not_Name_56 = not Name_56;
                                                -- true
                                                if Name_56 then -- didnt run, expr id 107, has an else.
                                                else
                                                local Debug_Info_53 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_53 = not Debug_Info_53;
                                                -- false
                                                if Debug_Info_53 then -- ran, expr id 108, has an else.
                                                local Name_57 = Debug_Info_53.name;
                                                local Not_Name_57 = not Name_57;
                                                -- true
                                                if Name_57 then -- didnt run, expr id 109, has an else.
                                                else
                                                local Debug_Info_54 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_54 = not Debug_Info_54;
                                                -- false
                                                if Debug_Info_54 then -- ran, expr id 110, has an else.
                                                local Name_58 = Debug_Info_54.name;
                                                local Not_Name_58 = not Name_58;
                                                -- true
                                                if Name_58 then -- didnt run, expr id 111, has an else.
                                                else
                                                local Debug_Info_55 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_55 = not Debug_Info_55;
                                                -- false
                                                if Debug_Info_55 then -- ran, expr id 112, has an else.
                                                local Name_59 = Debug_Info_55.name;
                                                local Not_Name_59 = not Name_59;
                                                -- true
                                                if Name_59 then -- didnt run, expr id 113, has an else.
                                                else
                                                local Debug_Info_56 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_56 = not Debug_Info_56;
                                                -- false
                                                if Debug_Info_56 then -- ran, expr id 114, has an else.
                                                local Name_60 = Debug_Info_56.name;
                                                local Not_Name_60 = not Name_60;
                                                -- true
                                                if Name_60 then -- didnt run, expr id 115, has an else.
                                                else
                                                local Debug_Info_57 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_57 = not Debug_Info_57;
                                                -- false
                                                if Debug_Info_57 then -- ran, expr id 116, has an else.
                                                local Name_61 = Debug_Info_57.name;
                                                local Not_Name_61 = not Name_61;
                                                -- true
                                                if Name_61 then -- didnt run, expr id 117, has an else.
                                                else
                                                local Debug_Info_58 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_58 = not Debug_Info_58;
                                                -- false
                                                if Debug_Info_58 then -- ran, expr id 118, has an else.
                                                local Name_62 = Debug_Info_58.name;
                                                local Not_Name_62 = not Name_62;
                                                -- true
                                                if Name_62 then -- didnt run, expr id 119, has an else.
                                                else
                                                local Debug_Info_59 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_59 = not Debug_Info_59;
                                                -- false
                                                if Debug_Info_59 then -- ran, expr id 120, has an else.
                                                local Name_63 = Debug_Info_59.name;
                                                local Not_Name_63 = not Name_63;
                                                -- true
                                                if Name_63 then -- didnt run, expr id 121, has an else.
                                                else
                                                local Debug_Info_60 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_60 = not Debug_Info_60;
                                                -- false
                                                if Debug_Info_60 then -- ran, expr id 122, has an else.
                                                local Name_64 = Debug_Info_60.name;
                                                local Not_Name_64 = not Name_64;
                                                -- true
                                                if Name_64 then -- didnt run, expr id 123, has an else.
                                                else
                                                local Debug_Info_61 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_61 = not Debug_Info_61;
                                                -- false
                                                if Debug_Info_61 then -- ran, expr id 124, has an else.
                                                local Name_65 = Debug_Info_61.name;
                                                local Not_Name_65 = not Name_65;
                                                -- true
                                                if Name_65 then -- didnt run, expr id 125, has an else.
                                                else
                                                local Debug_Info_62 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_62 = not Debug_Info_62;
                                                -- false
                                                if Debug_Info_62 then -- ran, expr id 126, has an else.
                                                local Name_66 = Debug_Info_62.name;
                                                local Not_Name_66 = not Name_66;
                                                -- true
                                                if Name_66 then -- didnt run, expr id 127, has an else.
                                                else
                                                local Debug_Info_63 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_63 = not Debug_Info_63;
                                                -- false
                                                if Debug_Info_63 then -- ran, expr id 128, has an else.
                                                local Name_67 = Debug_Info_63.name;
                                                local Not_Name_67 = not Name_67;
                                                -- true
                                                if Name_67 then -- didnt run, expr id 129, has an else.
                                                else
                                                local Debug_Info_64 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_64 = not Debug_Info_64;
                                                -- false
                                                if Debug_Info_64 then -- ran, expr id 130, has an else.
                                                local Name_68 = Debug_Info_64.name;
                                                local Not_Name_68 = not Name_68;
                                                -- true
                                                if Name_68 then -- didnt run, expr id 131, has an else.
                                                else
                                                local Debug_Info_65 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_65 = not Debug_Info_65;
                                                -- false
                                                if Debug_Info_65 then -- ran, expr id 132, has an else.
                                                local Name_69 = Debug_Info_65.name;
                                                local Not_Name_69 = not Name_69;
                                                -- true
                                                if Name_69 then -- didnt run, expr id 133, has an else.
                                                else
                                                local Debug_Info_66 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_66 = not Debug_Info_66;
                                                -- false
                                                if Debug_Info_66 then -- ran, expr id 134, has an else.
                                                local Name_70 = Debug_Info_66.name;
                                                local Not_Name_70 = not Name_70;
                                                -- true
                                                if Name_70 then -- didnt run, expr id 135, has an else.
                                                else
                                                local Debug_Info_67 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_67 = not Debug_Info_67;
                                                -- false
                                                if Debug_Info_67 then -- ran, expr id 136, has an else.
                                                local Name_71 = Debug_Info_67.name;
                                                local Not_Name_71 = not Name_71;
                                                -- true
                                                if Name_71 then -- didnt run, expr id 137, has an else.
                                                else
                                                local Debug_Info_68 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_68 = not Debug_Info_68;
                                                -- false
                                                if Debug_Info_68 then -- ran, expr id 138, has an else.
                                                local Name_72 = Debug_Info_68.name;
                                                local Not_Name_72 = not Name_72;
                                                -- true
                                                if Name_72 then -- didnt run, expr id 139, has an else.
                                                else
                                                local Debug_Info_69 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_69 = not Debug_Info_69;
                                                -- false
                                                if Debug_Info_69 then -- ran, expr id 140, has an else.
                                                local Name_73 = Debug_Info_69.name;
                                                local Not_Name_73 = not Name_73;
                                                -- true
                                                if Name_73 then -- didnt run, expr id 141, has an else.
                                                else
                                                local Debug_Info_70 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_70 = not Debug_Info_70;
                                                -- false
                                                if Debug_Info_70 then -- ran, expr id 142, has an else.
                                                local Name_74 = Debug_Info_70.name;
                                                local Not_Name_74 = not Name_74;
                                                -- true
                                                if Name_74 then -- didnt run, expr id 143, has an else.
                                                else
                                                local Debug_Info_71 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_71 = not Debug_Info_71;
                                                -- false
                                                if Debug_Info_71 then -- ran, expr id 144, has an else.
                                                local Name_75 = Debug_Info_71.name;
                                                local Not_Name_75 = not Name_75;
                                                -- true
                                                if Name_75 then -- didnt run, expr id 145, has an else.
                                                else
                                                local Debug_Info_72 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_72 = not Debug_Info_72;
                                                -- false
                                                if Debug_Info_72 then -- ran, expr id 146, has an else.
                                                local Name_76 = Debug_Info_72.name;
                                                local Not_Name_76 = not Name_76;
                                                -- true
                                                if Name_76 then -- didnt run, expr id 147, has an else.
                                                else
                                                local Debug_Info_73 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_73 = not Debug_Info_73;
                                                -- false
                                                if Debug_Info_73 then -- ran, expr id 148, has an else.
                                                local Name_77 = Debug_Info_73.name;
                                                local Not_Name_77 = not Name_77;
                                                -- true
                                                if Name_77 then -- didnt run, expr id 149, has an else.
                                                else
                                                local Debug_Info_74 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_74 = not Debug_Info_74;
                                                -- false
                                                if Debug_Info_74 then -- ran, expr id 150, has an else.
                                                local Name_78 = Debug_Info_74.name;
                                                local Not_Name_78 = not Name_78;
                                                -- true
                                                if Name_78 then -- didnt run, expr id 151, has an else.
                                                else
                                                local Debug_Info_75 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_75 = not Debug_Info_75;
                                                -- false
                                                if Debug_Info_75 then -- ran, expr id 152, has an else.
                                                local Name_79 = Debug_Info_75.name;
                                                local Not_Name_79 = not Name_79;
                                                -- true
                                                if Name_79 then -- didnt run, expr id 153, has an else.
                                                else
                                                local Debug_Info_76 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_76 = not Debug_Info_76;
                                                -- false
                                                if Debug_Info_76 then -- ran, expr id 154, has an else.
                                                local Name_80 = Debug_Info_76.name;
                                                local Not_Name_80 = not Name_80;
                                                -- true
                                                if Name_80 then -- didnt run, expr id 155, has an else.
                                                else
                                                local Debug_Info_77 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_77 = not Debug_Info_77;
                                                -- false
                                                if Debug_Info_77 then -- ran, expr id 156, has an else.
                                                local Name_81 = Debug_Info_77.name;
                                                local Not_Name_81 = not Name_81;
                                                -- true
                                                if Name_81 then -- didnt run, expr id 157, has an else.
                                                else
                                                local Debug_Info_78 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_78 = not Debug_Info_78;
                                                -- false
                                                if Debug_Info_78 then -- ran, expr id 158, has an else.
                                                local Name_82 = Debug_Info_78.name;
                                                local Not_Name_82 = not Name_82;
                                                -- true
                                                if Name_82 then -- didnt run, expr id 159, has an else.
                                                else
                                                local Debug_Info_79 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_79 = not Debug_Info_79;
                                                -- false
                                                if Debug_Info_79 then -- ran, expr id 160, has an else.
                                                local Name_83 = Debug_Info_79.name;
                                                local Not_Name_83 = not Name_83;
                                                -- true
                                                if Name_83 then -- didnt run, expr id 161, has an else.
                                                else
                                                local Debug_Info_80 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_80 = not Debug_Info_80;
                                                -- false
                                                if Debug_Info_80 then -- ran, expr id 162, has an else.
                                                local Name_84 = Debug_Info_80.name;
                                                local Not_Name_84 = not Name_84;
                                                -- true
                                                if Name_84 then -- didnt run, expr id 163, has an else.
                                                else
                                                local Debug_Info_81 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_81 = not Debug_Info_81;
                                                -- false
                                                if Debug_Info_81 then -- ran, expr id 164, has an else.
                                                local Name_85 = Debug_Info_81.name;
                                                local Not_Name_85 = not Name_85;
                                                -- true
                                                if Name_85 then -- didnt run, expr id 165, has an else.
                                                else
                                                local Debug_Info_82 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_82 = not Debug_Info_82;
                                                -- false
                                                if Debug_Info_82 then -- ran, expr id 166, has an else.
                                                local Name_86 = Debug_Info_82.name;
                                                local Not_Name_86 = not Name_86;
                                                -- true
                                                if Name_86 then -- didnt run, expr id 167, has an else.
                                                else
                                                local Debug_Info_83 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_83 = not Debug_Info_83;
                                                -- false
                                                if Debug_Info_83 then -- ran, expr id 168, has an else.
                                                local Name_87 = Debug_Info_83.name;
                                                local Not_Name_87 = not Name_87;
                                                -- true
                                                if Name_87 then -- didnt run, expr id 169, has an else.
                                                else
                                                local Debug_Info_84 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_84 = not Debug_Info_84;
                                                -- false
                                                if Debug_Info_84 then -- ran, expr id 170, has an else.
                                                local Name_88 = Debug_Info_84.name;
                                                local Not_Name_88 = not Name_88;
                                                -- true
                                                if Name_88 then -- didnt run, expr id 171, has an else.
                                                else
                                                local Debug_Info_85 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_85 = not Debug_Info_85;
                                                -- false
                                                if Debug_Info_85 then -- ran, expr id 172, has an else.
                                                local Name_89 = Debug_Info_85.name;
                                                local Not_Name_89 = not Name_89;
                                                -- true
                                                if Name_89 then -- didnt run, expr id 173, has an else.
                                                else
                                                local Debug_Info_86 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_86 = not Debug_Info_86;
                                                -- false
                                                if Debug_Info_86 then -- ran, expr id 174, has an else.
                                                local Name_90 = Debug_Info_86.name;
                                                local Not_Name_90 = not Name_90;
                                                -- true
                                                if Name_90 then -- didnt run, expr id 175, has an else.
                                                else
                                                local Debug_Info_87 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_87 = not Debug_Info_87;
                                                -- false
                                                if Debug_Info_87 then -- ran, expr id 176, has an else.
                                                local Name_91 = Debug_Info_87.name;
                                                local Not_Name_91 = not Name_91;
                                                -- true
                                                if Name_91 then -- didnt run, expr id 177, has an else.
                                                else
                                                local Debug_Info_88 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_88 = not Debug_Info_88;
                                                -- false
                                                if Debug_Info_88 then -- ran, expr id 178, has an else.
                                                local Name_92 = Debug_Info_88.name;
                                                local Not_Name_92 = not Name_92;
                                                -- true
                                                if Name_92 then -- didnt run, expr id 179, has an else.
                                                else
                                                local Debug_Info_89 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_89 = not Debug_Info_89;
                                                -- false
                                                if Debug_Info_89 then -- ran, expr id 180, has an else.
                                                local Name_93 = Debug_Info_89.name;
                                                local Not_Name_93 = not Name_93;
                                                -- true
                                                if Name_93 then -- didnt run, expr id 181, has an else.
                                                else
                                                local Debug_Info_90 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_90 = not Debug_Info_90;
                                                -- false
                                                if Debug_Info_90 then -- ran, expr id 182, has an else.
                                                local Name_94 = Debug_Info_90.name;
                                                local Not_Name_94 = not Name_94;
                                                -- true
                                                if Name_94 then -- didnt run, expr id 183, has an else.
                                                else
                                                local Debug_Info_91 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_91 = not Debug_Info_91;
                                                -- false
                                                if Debug_Info_91 then -- ran, expr id 184, has an else.
                                                local Name_95 = Debug_Info_91.name;
                                                local Not_Name_95 = not Name_95;
                                                -- true
                                                if Name_95 then -- didnt run, expr id 185, has an else.
                                                else
                                                local Debug_Info_92 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_92 = not Debug_Info_92;
                                                -- false
                                                if Debug_Info_92 then -- ran, expr id 186, has an else.
                                                local Name_96 = Debug_Info_92.name;
                                                local Not_Name_96 = not Name_96;
                                                -- true
                                                if Name_96 then -- didnt run, expr id 187, has an else.
                                                else
                                                local Debug_Info_93 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_93 = not Debug_Info_93;
                                                -- false
                                                if Debug_Info_93 then -- ran, expr id 188, has an else.
                                                local Name_97 = Debug_Info_93.name;
                                                local Not_Name_97 = not Name_97;
                                                -- true
                                                if Name_97 then -- didnt run, expr id 189, has an else.
                                                else
                                                local Debug_Info_94 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_94 = not Debug_Info_94;
                                                -- false
                                                if Debug_Info_94 then -- ran, expr id 190, has an else.
                                                local Name_98 = Debug_Info_94.name;
                                                local Not_Name_98 = not Name_98;
                                                -- true
                                                if Name_98 then -- didnt run, expr id 191, has an else.
                                                else
                                                local Debug_Info_95 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_95 = not Debug_Info_95;
                                                -- false
                                                if Debug_Info_95 then -- ran, expr id 192, has an else.
                                                local Name_99 = Debug_Info_95.name;
                                                local Not_Name_99 = not Name_99;
                                                -- true
                                                if Name_99 then -- didnt run, expr id 193, has an else.
                                                else
                                                local Debug_Info_96 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_96 = not Debug_Info_96;
                                                -- false
                                                if Debug_Info_96 then -- ran, expr id 194, has an else.
                                                local Name_100 = Debug_Info_96.name;
                                                local Not_Name_100 = not Name_100;
                                                -- true
                                                if Name_100 then -- didnt run, expr id 195, has an else.
                                                else
                                                local Debug_Info_97 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_97 = not Debug_Info_97;
                                                -- false
                                                if Debug_Info_97 then -- ran, expr id 196, has an else.
                                                local Name_101 = Debug_Info_97.name;
                                                local Not_Name_101 = not Name_101;
                                                -- true
                                                if Name_101 then -- didnt run, expr id 197, has an else.
                                                else
                                                local Debug_Info_98 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_98 = not Debug_Info_98;
                                                -- false
                                                if Debug_Info_98 then -- ran, expr id 198, has an else.
                                                local Name_102 = Debug_Info_98.name;
                                                local Not_Name_102 = not Name_102;
                                                -- true
                                                if Name_102 then -- didnt run, expr id 199, has an else.
                                                else
                                                local Debug_Info_99 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_99 = not Debug_Info_99;
                                                -- false
                                                if Debug_Info_99 then -- ran, expr id 200, has an else.
                                                local Name_103 = Debug_Info_99.name;
                                                local Not_Name_103 = not Name_103;
                                                -- true
                                                if Name_103 then -- didnt run, expr id 201, has an else.
                                                else
                                                local Debug_Info_100 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_100 = not Debug_Info_100;
                                                -- false
                                                if Debug_Info_100 then -- ran, expr id 202, has an else.
                                                local Name_104 = Debug_Info_100.name;
                                                local Not_Name_104 = not Name_104;
                                                -- true
                                                if Name_104 then -- didnt run, expr id 203, has an else.
                                                else
                                                local Debug_Info_101 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_101 = not Debug_Info_101;
                                                -- false
                                                if Debug_Info_101 then -- ran, expr id 204, has an else.
                                                local Name_105 = Debug_Info_101.name;
                                                local Not_Name_105 = not Name_105;
                                                -- true
                                                if Name_105 then -- didnt run, expr id 205, has an else.
                                                else
                                                local Debug_Info_102 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_102 = not Debug_Info_102;
                                                -- false
                                                if Debug_Info_102 then -- ran, expr id 206, has an else.
                                                local Name_106 = Debug_Info_102.name;
                                                local Not_Name_106 = not Name_106;
                                                -- true
                                                if Name_106 then -- didnt run, expr id 207, has an else.
                                                else
                                                local Debug_Info_103 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_103 = not Debug_Info_103;
                                                -- false
                                                if Debug_Info_103 then -- ran, expr id 208, has an else.
                                                local Name_107 = Debug_Info_103.name;
                                                local Not_Name_107 = not Name_107;
                                                -- true
                                                if Name_107 then -- didnt run, expr id 209, has an else.
                                                else
                                                local Debug_Info_104 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_104 = not Debug_Info_104;
                                                -- false
                                                if Debug_Info_104 then -- ran, expr id 210, has an else.
                                                local Name_108 = Debug_Info_104.name;
                                                local Not_Name_108 = not Name_108;
                                                -- true
                                                if Name_108 then -- didnt run, expr id 211, has an else.
                                                else
                                                local Debug_Info_105 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_105 = not Debug_Info_105;
                                                -- false
                                                if Debug_Info_105 then -- ran, expr id 212, has an else.
                                                local Name_109 = Debug_Info_105.name;
                                                local Not_Name_109 = not Name_109;
                                                -- true
                                                if Name_109 then -- didnt run, expr id 213, has an else.
                                                else
                                                local Debug_Info_106 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_106 = not Debug_Info_106;
                                                -- false
                                                if Debug_Info_106 then -- ran, expr id 214, has an else.
                                                local Name_110 = Debug_Info_106.name;
                                                local Not_Name_110 = not Name_110;
                                                -- true
                                                if Name_110 then -- didnt run, expr id 215, has an else.
                                                else
                                                local Debug_Info_107 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_107 = not Debug_Info_107;
                                                -- false
                                                if Debug_Info_107 then -- ran, expr id 216, has an else.
                                                local Name_111 = Debug_Info_107.name;
                                                local Not_Name_111 = not Name_111;
                                                -- true
                                                if Name_111 then -- didnt run, expr id 217, has an else.
                                                else
                                                local Debug_Info_108 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_108 = not Debug_Info_108;
                                                -- false
                                                if Debug_Info_108 then -- ran, expr id 218, has an else.
                                                local Name_112 = Debug_Info_108.name;
                                                local Not_Name_112 = not Name_112;
                                                -- true
                                                if Name_112 then -- didnt run, expr id 219, has an else.
                                                else
                                                local Debug_Info_109 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_109 = not Debug_Info_109;
                                                -- false
                                                if Debug_Info_109 then -- ran, expr id 220, has an else.
                                                local Name_113 = Debug_Info_109.name;
                                                local Not_Name_113 = not Name_113;
                                                -- true
                                                if Name_113 then -- didnt run, expr id 221, has an else.
                                                else
                                                local Debug_Info_110 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_110 = not Debug_Info_110;
                                                -- false
                                                if Debug_Info_110 then -- ran, expr id 222, has an else.
                                                local Name_114 = Debug_Info_110.name;
                                                local Not_Name_114 = not Name_114;
                                                -- true
                                                if Name_114 then -- didnt run, expr id 223, has an else.
                                                else
                                                local Debug_Info_111 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_111 = not Debug_Info_111;
                                                -- false
                                                if Debug_Info_111 then -- ran, expr id 224, has an else.
                                                local Name_115 = Debug_Info_111.name;
                                                local Not_Name_115 = not Name_115;
                                                -- true
                                                if Name_115 then -- didnt run, expr id 225, has an else.
                                                else
                                                local Debug_Info_112 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_112 = not Debug_Info_112;
                                                -- false
                                                if Debug_Info_112 then -- ran, expr id 226, has an else.
                                                local Name_116 = Debug_Info_112.name;
                                                local Not_Name_116 = not Name_116;
                                                -- true
                                                if Name_116 then -- didnt run, expr id 227, has an else.
                                                else
                                                local Debug_Info_113 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_113 = not Debug_Info_113;
                                                -- false
                                                if Debug_Info_113 then -- ran, expr id 228, has an else.
                                                local Name_117 = Debug_Info_113.name;
                                                local Not_Name_117 = not Name_117;
                                                -- true
                                                if Name_117 then -- didnt run, expr id 229, has an else.
                                                else
                                                local Debug_Info_114 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_114 = not Debug_Info_114;
                                                -- false
                                                if Debug_Info_114 then -- ran, expr id 230, has an else.
                                                local Name_118 = Debug_Info_114.name;
                                                local Not_Name_118 = not Name_118;
                                                -- true
                                                if Name_118 then -- didnt run, expr id 231, has an else.
                                                else
                                                local Debug_Info_115 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_115 = not Debug_Info_115;
                                                -- false
                                                if Debug_Info_115 then -- ran, expr id 232, has an else.
                                                local Name_119 = Debug_Info_115.name;
                                                local Not_Name_119 = not Name_119;
                                                -- true
                                                if Name_119 then -- didnt run, expr id 233, has an else.
                                                else
                                                local Debug_Info_116 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_116 = not Debug_Info_116;
                                                -- false
                                                if Debug_Info_116 then -- ran, expr id 234, has an else.
                                                local Name_120 = Debug_Info_116.name;
                                                local Not_Name_120 = not Name_120;
                                                -- true
                                                if Name_120 then -- didnt run, expr id 235, has an else.
                                                else
                                                local Debug_Info_117 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_117 = not Debug_Info_117;
                                                -- false
                                                if Debug_Info_117 then -- ran, expr id 236, has an else.
                                                local Name_121 = Debug_Info_117.name;
                                                local Not_Name_121 = not Name_121;
                                                -- true
                                                if Name_121 then -- didnt run, expr id 237, has an else.
                                                else
                                                local Debug_Info_118 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_118 = not Debug_Info_118;
                                                -- false
                                                if Debug_Info_118 then -- ran, expr id 238, has an else.
                                                local Name_122 = Debug_Info_118.name;
                                                local Not_Name_122 = not Name_122;
                                                -- true
                                                if Name_122 then -- didnt run, expr id 239, has an else.
                                                else
                                                local Debug_Info_119 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_119 = not Debug_Info_119;
                                                -- false
                                                if Debug_Info_119 then -- ran, expr id 240, has an else.
                                                local Name_123 = Debug_Info_119.name;
                                                local Not_Name_123 = not Name_123;
                                                -- true
                                                if Name_123 then -- didnt run, expr id 241, has an else.
                                                else
                                                local Debug_Info_120 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_120 = not Debug_Info_120;
                                                -- false
                                                if Debug_Info_120 then -- ran, expr id 242, has an else.
                                                local Name_124 = Debug_Info_120.name;
                                                local Not_Name_124 = not Name_124;
                                                -- true
                                                if Name_124 then -- didnt run, expr id 243, has an else.
                                                else
                                                local Debug_Info_121 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_121 = not Debug_Info_121;
                                                -- false
                                                if Debug_Info_121 then -- ran, expr id 244, has an else.
                                                local Name_125 = Debug_Info_121.name;
                                                local Not_Name_125 = not Name_125;
                                                -- true
                                                if Name_125 then -- didnt run, expr id 245, has an else.
                                                else
                                                local Debug_Info_122 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_122 = not Debug_Info_122;
                                                -- false
                                                if Debug_Info_122 then -- ran, expr id 246, has an else.
                                                local Name_126 = Debug_Info_122.name;
                                                local Not_Name_126 = not Name_126;
                                                -- true
                                                if Name_126 then -- didnt run, expr id 247, has an else.
                                                else
                                                local Debug_Info_123 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_123 = not Debug_Info_123;
                                                -- false
                                                if Debug_Info_123 then -- ran, expr id 248, has an else.
                                                local Name_127 = Debug_Info_123.name;
                                                local Not_Name_127 = not Name_127;
                                                -- true
                                                if Name_127 then -- didnt run, expr id 249, has an else.
                                                else
                                                local Debug_Info_124 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_124 = not Debug_Info_124;
                                                -- false
                                                if Debug_Info_124 then -- ran, expr id 250, has an else.
                                                local Name_128 = Debug_Info_124.name;
                                                local Not_Name_128 = not Name_128;
                                                -- true
                                                if Name_128 then -- didnt run, expr id 251, has an else.
                                                else
                                                local Debug_Info_125 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_125 = not Debug_Info_125;
                                                -- false
                                                if Debug_Info_125 then -- ran, expr id 252, has an else.
                                                local Name_129 = Debug_Info_125.name;
                                                local Not_Name_129 = not Name_129;
                                                -- true
                                                if Name_129 then -- didnt run, expr id 253, has an else.
                                                else
                                                local Debug_Info_126 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_126 = not Debug_Info_126;
                                                -- false
                                                if Debug_Info_126 then -- ran, expr id 254, has an else.
                                                local Name_130 = Debug_Info_126.name;
                                                local Not_Name_130 = not Name_130;
                                                -- true
                                                if Name_130 then -- didnt run, expr id 255, has an else.
                                                else
                                                local Debug_Info_127 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_127 = not Debug_Info_127;
                                                -- false
                                                if Debug_Info_127 then -- ran, expr id 256, has an else.
                                                local Name_131 = Debug_Info_127.name;
                                                local Not_Name_131 = not Name_131;
                                                -- true
                                                if Name_131 then -- didnt run, expr id 257, has an else.
                                                else
                                                local Debug_Info_128 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_128 = not Debug_Info_128;
                                                -- false
                                                if Debug_Info_128 then -- ran, expr id 258, has an else.
                                                local Name_132 = Debug_Info_128.name;
                                                local Not_Name_132 = not Name_132;
                                                -- true
                                                if Name_132 then -- didnt run, expr id 259, has an else.
                                                else
                                                local Debug_Info_129 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_129 = not Debug_Info_129;
                                                -- false
                                                if Debug_Info_129 then -- ran, expr id 260, has an else.
                                                local Name_133 = Debug_Info_129.name;
                                                local Not_Name_133 = not Name_133;
                                                -- true
                                                if Name_133 then -- didnt run, expr id 261, has an else.
                                                else
                                                local Debug_Info_130 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_130 = not Debug_Info_130;
                                                -- false
                                                if Debug_Info_130 then -- ran, expr id 262, has an else.
                                                local Name_134 = Debug_Info_130.name;
                                                local Not_Name_134 = not Name_134;
                                                -- true
                                                if Name_134 then -- didnt run, expr id 263, has an else.
                                                else
                                                local Debug_Info_131 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_131 = not Debug_Info_131;
                                                -- false
                                                if Debug_Info_131 then -- ran, expr id 264, has an else.
                                                local Name_135 = Debug_Info_131.name;
                                                local Not_Name_135 = not Name_135;
                                                -- true
                                                if Name_135 then -- didnt run, expr id 265, has an else.
                                                else
                                                local Debug_Info_132 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_132 = not Debug_Info_132;
                                                -- false
                                                if Debug_Info_132 then -- ran, expr id 266, has an else.
                                                local Name_136 = Debug_Info_132.name;
                                                local Not_Name_136 = not Name_136;
                                                -- true
                                                if Name_136 then -- didnt run, expr id 267, has an else.
                                                else
                                                local Debug_Info_133 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_133 = not Debug_Info_133;
                                                -- false
                                                if Debug_Info_133 then -- ran, expr id 268, has an else.
                                                local Name_137 = Debug_Info_133.name;
                                                local Not_Name_137 = not Name_137;
                                                -- true
                                                if Name_137 then -- didnt run, expr id 269, has an else.
                                                else
                                                local Debug_Info_134 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_134 = not Debug_Info_134;
                                                -- false
                                                if Debug_Info_134 then -- ran, expr id 270, has an else.
                                                local Name_138 = Debug_Info_134.name;
                                                local Not_Name_138 = not Name_138;
                                                -- true
                                                if Name_138 then -- didnt run, expr id 271, has an else.
                                                else
                                                local Debug_Info_135 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_135 = not Debug_Info_135;
                                                -- false
                                                if Debug_Info_135 then -- ran, expr id 272, has an else.
                                                local Name_139 = Debug_Info_135.name;
                                                local Not_Name_139 = not Name_139;
                                                -- true
                                                if Name_139 then -- didnt run, expr id 273, has an else.
                                                else
                                                local Debug_Info_136 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_136 = not Debug_Info_136;
                                                -- false
                                                if Debug_Info_136 then -- ran, expr id 274, has an else.
                                                local Name_140 = Debug_Info_136.name;
                                                local Not_Name_140 = not Name_140;
                                                -- true
                                                if Name_140 then -- didnt run, expr id 275, has an else.
                                                else
                                                local Debug_Info_137 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_137 = not Debug_Info_137;
                                                -- false
                                                if Debug_Info_137 then -- ran, expr id 276, has an else.
                                                local Name_141 = Debug_Info_137.name;
                                                local Not_Name_141 = not Name_141;
                                                -- true
                                                if Name_141 then -- didnt run, expr id 277, has an else.
                                                else
                                                local Debug_Info_138 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_138 = not Debug_Info_138;
                                                -- false
                                                if Debug_Info_138 then -- ran, expr id 278, has an else.
                                                local Name_142 = Debug_Info_138.name;
                                                local Not_Name_142 = not Name_142;
                                                -- true
                                                if Name_142 then -- didnt run, expr id 279, has an else.
                                                else
                                                local Debug_Info_139 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_139 = not Debug_Info_139;
                                                -- false
                                                if Debug_Info_139 then -- ran, expr id 280, has an else.
                                                local Name_143 = Debug_Info_139.name;
                                                local Not_Name_143 = not Name_143;
                                                -- true
                                                if Name_143 then -- didnt run, expr id 281, has an else.
                                                else
                                                local Debug_Info_140 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_140 = not Debug_Info_140;
                                                -- false
                                                if Debug_Info_140 then -- ran, expr id 282, has an else.
                                                local Name_144 = Debug_Info_140.name;
                                                local Not_Name_144 = not Name_144;
                                                -- true
                                                if Name_144 then -- didnt run, expr id 283, has an else.
                                                else
                                                local Debug_Info_141 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_141 = not Debug_Info_141;
                                                -- false
                                                if Debug_Info_141 then -- ran, expr id 284, has an else.
                                                local Name_145 = Debug_Info_141.name;
                                                local Not_Name_145 = not Name_145;
                                                -- true
                                                if Name_145 then -- didnt run, expr id 285, has an else.
                                                else
                                                local Debug_Info_142 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_142 = not Debug_Info_142;
                                                -- false
                                                if Debug_Info_142 then -- ran, expr id 286, has an else.
                                                local Name_146 = Debug_Info_142.name;
                                                local Not_Name_146 = not Name_146;
                                                -- true
                                                if Name_146 then -- didnt run, expr id 287, has an else.
                                                else
                                                local Debug_Info_143 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_143 = not Debug_Info_143;
                                                -- false
                                                if Debug_Info_143 then -- ran, expr id 288, has an else.
                                                local Name_147 = Debug_Info_143.name;
                                                local Not_Name_147 = not Name_147;
                                                -- true
                                                if Name_147 then -- didnt run, expr id 289, has an else.
                                                else
                                                local Debug_Info_144 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_144 = not Debug_Info_144;
                                                -- false
                                                if Debug_Info_144 then -- ran, expr id 290, has an else.
                                                local Name_148 = Debug_Info_144.name;
                                                local Not_Name_148 = not Name_148;
                                                -- true
                                                if Name_148 then -- didnt run, expr id 291, has an else.
                                                else
                                                local Debug_Info_145 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_145 = not Debug_Info_145;
                                                -- false
                                                if Debug_Info_145 then -- ran, expr id 292, has an else.
                                                local Name_149 = Debug_Info_145.name;
                                                local Not_Name_149 = not Name_149;
                                                -- true
                                                if Name_149 then -- didnt run, expr id 293, has an else.
                                                else
                                                local Debug_Info_146 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_146 = not Debug_Info_146;
                                                -- false
                                                if Debug_Info_146 then -- ran, expr id 294, has an else.
                                                local Name_150 = Debug_Info_146.name;
                                                local Not_Name_150 = not Name_150;
                                                -- true
                                                if Name_150 then -- didnt run, expr id 295, has an else.
                                                else
                                                local Debug_Info_147 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_147 = not Debug_Info_147;
                                                -- false
                                                if Debug_Info_147 then -- ran, expr id 296, has an else.
                                                local Name_151 = Debug_Info_147.name;
                                                local Not_Name_151 = not Name_151;
                                                -- true
                                                if Name_151 then -- didnt run, expr id 297, has an else.
                                                else
                                                local Debug_Info_148 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_148 = not Debug_Info_148;
                                                -- false
                                                if Debug_Info_148 then -- ran, expr id 298, has an else.
                                                local Name_152 = Debug_Info_148.name;
                                                local Not_Name_152 = not Name_152;
                                                -- true
                                                if Name_152 then -- didnt run, expr id 299, has an else.
                                                else
                                                local Debug_Info_149 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_149 = not Debug_Info_149;
                                                -- false
                                                if Debug_Info_149 then -- ran, expr id 300, has an else.
                                                local Name_153 = Debug_Info_149.name;
                                                local Not_Name_153 = not Name_153;
                                                -- true
                                                if Name_153 then -- didnt run, expr id 301, has an else.
                                                else
                                                local Debug_Info_150 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_150 = not Debug_Info_150;
                                                -- false
                                                if Debug_Info_150 then -- ran, expr id 302, has an else.
                                                local Name_154 = Debug_Info_150.name;
                                                local Not_Name_154 = not Name_154;
                                                -- true
                                                if Name_154 then -- didnt run, expr id 303, has an else.
                                                else
                                                local Debug_Info_151 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_151 = not Debug_Info_151;
                                                -- false
                                                if Debug_Info_151 then -- ran, expr id 304, has an else.
                                                local Name_155 = Debug_Info_151.name;
                                                local Not_Name_155 = not Name_155;
                                                -- true
                                                if Name_155 then -- didnt run, expr id 305, has an else.
                                                else
                                                local Debug_Info_152 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_152 = not Debug_Info_152;
                                                -- false
                                                if Debug_Info_152 then -- ran, expr id 306, has an else.
                                                local Name_156 = Debug_Info_152.name;
                                                local Not_Name_156 = not Name_156;
                                                -- true
                                                if Name_156 then -- didnt run, expr id 307, has an else.
                                                else
                                                local Debug_Info_153 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_153 = not Debug_Info_153;
                                                -- false
                                                if Debug_Info_153 then -- ran, expr id 308, has an else.
                                                local Name_157 = Debug_Info_153.name;
                                                local Not_Name_157 = not Name_157;
                                                -- true
                                                if Name_157 then -- didnt run, expr id 309, has an else.
                                                else
                                                local Debug_Info_154 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_154 = not Debug_Info_154;
                                                -- false
                                                if Debug_Info_154 then -- ran, expr id 310, has an else.
                                                local Name_158 = Debug_Info_154.name;
                                                local Not_Name_158 = not Name_158;
                                                -- true
                                                if Name_158 then -- didnt run, expr id 311, has an else.
                                                else
                                                local Debug_Info_155 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_155 = not Debug_Info_155;
                                                -- false
                                                if Debug_Info_155 then -- ran, expr id 312, has an else.
                                                local Name_159 = Debug_Info_155.name;
                                                local Not_Name_159 = not Name_159;
                                                -- true
                                                if Name_159 then -- didnt run, expr id 313, has an else.
                                                else
                                                local Debug_Info_156 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_156 = not Debug_Info_156;
                                                -- false
                                                if Debug_Info_156 then -- ran, expr id 314, has an else.
                                                local Name_160 = Debug_Info_156.name;
                                                local Not_Name_160 = not Name_160;
                                                -- true
                                                if Name_160 then -- didnt run, expr id 315, has an else.
                                                else
                                                local Debug_Info_157 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_157 = not Debug_Info_157;
                                                -- false
                                                if Debug_Info_157 then -- ran, expr id 316, has an else.
                                                local Name_161 = Debug_Info_157.name;
                                                local Not_Name_161 = not Name_161;
                                                -- true
                                                if Name_161 then -- didnt run, expr id 317, has an else.
                                                else
                                                local Debug_Info_158 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_158 = not Debug_Info_158;
                                                -- false
                                                if Debug_Info_158 then -- ran, expr id 318, has an else.
                                                local Name_162 = Debug_Info_158.name;
                                                local Not_Name_162 = not Name_162;
                                                -- true
                                                if Name_162 then -- didnt run, expr id 319, has an else.
                                                else
                                                local Debug_Info_159 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_159 = not Debug_Info_159;
                                                -- false
                                                if Debug_Info_159 then -- ran, expr id 320, has an else.
                                                local Name_163 = Debug_Info_159.name;
                                                local Not_Name_163 = not Name_163;
                                                -- true
                                                if Name_163 then -- didnt run, expr id 321, has an else.
                                                else
                                                local Debug_Info_160 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_160 = not Debug_Info_160;
                                                -- false
                                                if Debug_Info_160 then -- ran, expr id 322, has an else.
                                                local Name_164 = Debug_Info_160.name;
                                                local Not_Name_164 = not Name_164;
                                                -- true
                                                if Name_164 then -- didnt run, expr id 323, has an else.
                                                else
                                                local Debug_Info_161 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_161 = not Debug_Info_161;
                                                -- false
                                                if Debug_Info_161 then -- ran, expr id 324, has an else.
                                                local Name_165 = Debug_Info_161.name;
                                                local Not_Name_165 = not Name_165;
                                                -- true
                                                if Name_165 then -- didnt run, expr id 325, has an else.
                                                else
                                                local Debug_Info_162 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_162 = not Debug_Info_162;
                                                -- false
                                                if Debug_Info_162 then -- ran, expr id 326, has an else.
                                                local Name_166 = Debug_Info_162.name;
                                                local Not_Name_166 = not Name_166;
                                                -- true
                                                if Name_166 then -- didnt run, expr id 327, has an else.
                                                else
                                                local Debug_Info_163 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_163 = not Debug_Info_163;
                                                -- false
                                                if Debug_Info_163 then -- ran, expr id 328, has an else.
                                                local Name_167 = Debug_Info_163.name;
                                                local Not_Name_167 = not Name_167;
                                                -- true
                                                if Name_167 then -- didnt run, expr id 329, has an else.
                                                else
                                                local Debug_Info_164 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_164 = not Debug_Info_164;
                                                -- false
                                                if Debug_Info_164 then -- ran, expr id 330, has an else.
                                                local Name_168 = Debug_Info_164.name;
                                                local Not_Name_168 = not Name_168;
                                                -- true
                                                if Name_168 then -- didnt run, expr id 331, has an else.
                                                else
                                                local Debug_Info_165 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_165 = not Debug_Info_165;
                                                -- false
                                                if Debug_Info_165 then -- ran, expr id 332, has an else.
                                                local Name_169 = Debug_Info_165.name;
                                                local Not_Name_169 = not Name_169;
                                                -- true
                                                if Name_169 then -- didnt run, expr id 333, has an else.
                                                else
                                                local Debug_Info_166 = debug.getinfo(function()

                                            end, nil);
                                                local Not_Debug_Info_166 = not Debug_Info_166;
                                                -- false
                                                if Debug_Info_166 then -- ran, expr id 334, has an else.
                                                error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:659: too many operations")
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end) -- false, "[KuIJEG]:1: [KuIJEG]:1: too many operations"

        end,
    });
    local AddDivider = __8.AddDivider;
    local AddDivider_2 = __8:AddDivider();
    local AddToggle_2 = __8.AddToggle;
    local NetworkDetector = __8:AddToggle("NetworkDetector", {
        Text = "网络 检测器",
        Default = false,
        Callback = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            local Success_6815, Error_Message_6815 = pcall(function(...)
                local Not_Ext_1_0_2 = not ext_1_0;
                -- false
                if ext_1_0 then -- ran, expr id 335, has an else.
                    local Success_6951, Error_Message_6951 = pcall(function(...)
                        local Not_Ext_1_0_3 = not ext_1_0;
                        -- false
                        if ext_1_0 then -- ran, expr id 336, has an else.
                            local var255 = wait(5);
                            local Success_7072, Error_Message_7072 = pcall(function(...)
                                local Success_7073, Error_Message_7073 = pcall(function(...)
                                    local Stats = game:GetService("Stats");
                                    local Network = Stats.Network;
                                    local ServerStatsItem = Network.ServerStatsItem;
                                    local Data_Ping = ServerStatsItem["Data Ping"];
                                    local GetValue = Data_Ping.GetValue;
                                end) -- true, true, 1, 2
                                local Value = Data_Ping:GetValue();
                            end) -- true, Value
                        end
                        local var257 = (1000 < Value); -- nil
                        if var257 then -- didnt run, expr id 337, has no else.
                        end
                        local var258 = (Value < 10); -- nil
                        local Not_Var258 = not var258;
                        -- true
                        if Not_Var258 then -- ran, expr id 338, has no else.
                            local var259 = (300 < Value); -- nil
                            local Not_Var259 = not var259;
                            -- true
                            if var259 then -- didnt run, expr id 339, has an else.
                            else
                                local Not_Ext_1_0_4 = not ext_1_0;
                                -- false
                                if ext_1_0 then -- ran, expr id 340, has an else.
                                    local var260 = wait(5);
                                    local Success_7248, Error_Message_7248 = pcall(function(...)
                                        local Success_7249, Error_Message_7249 = pcall(function(...)
                                            local Stats_2 = game:GetService("Stats");
                                            local Network_2 = Stats.Network;
                                            local ServerStatsItem_2 = Network_2.ServerStatsItem;
                                            local Data_Ping_2 = ServerStatsItem_2["Data Ping"];
                                            local GetValue_2 = Data_Ping_2.GetValue;
                                        end) -- true, true, 1, 2
                                        local Value_2 = Data_Ping_2:GetValue();
                                    end) -- true, Value_2
                                end
                                local var262 = (1000 < Value_2); -- nil
                                if var262 then -- didnt run, expr id 341, has no else.
                                end
                                local var263 = (Value_2 < 10); -- nil
                                local Not_Var263 = not var263;
                                -- true
                                if Not_Var263 then -- ran, expr id 342, has no else.
                                    local var264 = (300 < Value_2); -- nil
                                    local Not_Var264 = not var264;
                                    -- true
                                    if var264 then -- didnt run, expr id 343, has an else.
                                    else
                                        local Not_Ext_1_0_5 = not ext_1_0;
                                        -- false
                                        if ext_1_0 then -- ran, expr id 344, has an else.
                                            local var265 = wait(5);
                                            local Success_7250, Error_Message_7250 = pcall(function(...)
                                                local Success_7251, Error_Message_7251 = pcall(function(...)
                                                local Stats_3 = game:GetService("Stats");
                                                local Network_3 = Stats.Network;
                                                local ServerStatsItem_3 = Network_3.ServerStatsItem;
                                                local Data_Ping_3 = ServerStatsItem_3["Data Ping"];
                                                local GetValue_3 = Data_Ping_3.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_3 = Data_Ping_3:GetValue();
                                            end) -- true, Value_3
                                        end
                                        local var267 = (1000 < Value_3); -- nil
                                        if var267 then -- didnt run, expr id 345, has no else.
                                        end
                                        local var268 = (Value_3 < 10); -- nil
                                        local Not_Var268 = not var268;
                                        -- true
                                        if Not_Var268 then -- ran, expr id 346, has no else.
                                            local var269 = (300 < Value_3); -- nil
                                            local Not_Var269 = not var269;
                                            -- true
                                            if var269 then -- didnt run, expr id 347, has an else.
                                            else
                                                local Not_Ext_1_0_6 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 348, has an else.
                                                local var270 = wait(5);
                                                local Success_7252, Error_Message_7252 = pcall(function(...)
                                                local Success_7253, Error_Message_7253 = pcall(function(...)
                                                local Stats_4 = game:GetService("Stats");
                                                local Network_4 = Stats.Network;
                                                local ServerStatsItem_4 = Network_4.ServerStatsItem;
                                                local Data_Ping_4 = ServerStatsItem_4["Data Ping"];
                                                local GetValue_4 = Data_Ping_4.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_4 = Data_Ping_4:GetValue();
                                                end) -- true, Value_4
                                                end
                                                local var272 = (1000 < Value_4); -- nil
                                                if var272 then -- didnt run, expr id 349, has no else.
                                                end
                                                local var273 = (Value_4 < 10); -- nil
                                                local Not_Var273 = not var273;
                                                -- true
                                                if Not_Var273 then -- ran, expr id 350, has no else.
                                                local var274 = (300 < Value_4); -- nil
                                                local Not_Var274 = not var274;
                                                -- true
                                                if var274 then -- didnt run, expr id 351, has an else.
                                                else
                                                local Not_Ext_1_0_7 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 352, has an else.
                                                local var275 = wait(5);
                                                local Success_7254, Error_Message_7254 = pcall(function(...)
                                                local Success_7255, Error_Message_7255 = pcall(function(...)
                                                local Stats_5 = game:GetService("Stats");
                                                local Network_5 = Stats.Network;
                                                local ServerStatsItem_5 = Network_5.ServerStatsItem;
                                                local Data_Ping_5 = ServerStatsItem_5["Data Ping"];
                                                local GetValue_5 = Data_Ping_5.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_5 = Data_Ping_5:GetValue();
                                                end) -- true, Value_5
                                                end
                                                local var277 = (1000 < Value_5); -- nil
                                                if var277 then -- didnt run, expr id 353, has no else.
                                                end
                                                local var278 = (Value_5 < 10); -- nil
                                                local Not_Var278 = not var278;
                                                -- true
                                                if Not_Var278 then -- ran, expr id 354, has no else.
                                                local var279 = (300 < Value_5); -- nil
                                                local Not_Var279 = not var279;
                                                -- true
                                                if var279 then -- didnt run, expr id 355, has an else.
                                                else
                                                local Not_Ext_1_0_8 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 356, has an else.
                                                local var280 = wait(5);
                                                local Success_7256, Error_Message_7256 = pcall(function(...)
                                                local Success_7257, Error_Message_7257 = pcall(function(...)
                                                local Stats_6 = game:GetService("Stats");
                                                local Network_6 = Stats.Network;
                                                local ServerStatsItem_6 = Network_6.ServerStatsItem;
                                                local Data_Ping_6 = ServerStatsItem_6["Data Ping"];
                                                local GetValue_6 = Data_Ping_6.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_6 = Data_Ping_6:GetValue();
                                                end) -- true, Value_6
                                                end
                                                local var282 = (1000 < Value_6); -- nil
                                                if var282 then -- didnt run, expr id 357, has no else.
                                                end
                                                local var283 = (Value_6 < 10); -- nil
                                                local Not_Var283 = not var283;
                                                -- true
                                                if Not_Var283 then -- ran, expr id 358, has no else.
                                                local var284 = (300 < Value_6); -- nil
                                                local Not_Var284 = not var284;
                                                -- true
                                                if var284 then -- didnt run, expr id 359, has an else.
                                                else
                                                local Not_Ext_1_0_9 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 360, has an else.
                                                local var285 = wait(5);
                                                local Success_7258, Error_Message_7258 = pcall(function(...)
                                                local Success_7259, Error_Message_7259 = pcall(function(...)
                                                local Stats_7 = game:GetService("Stats");
                                                local Network_7 = Stats.Network;
                                                local ServerStatsItem_7 = Network_7.ServerStatsItem;
                                                local Data_Ping_7 = ServerStatsItem_7["Data Ping"];
                                                local GetValue_7 = Data_Ping_7.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_7 = Data_Ping_7:GetValue();
                                                end) -- true, Value_7
                                                end
                                                local var287 = (1000 < Value_7); -- nil
                                                if var287 then -- didnt run, expr id 361, has no else.
                                                end
                                                local var288 = (Value_7 < 10); -- nil
                                                local Not_Var288 = not var288;
                                                -- true
                                                if Not_Var288 then -- ran, expr id 362, has no else.
                                                local var289 = (300 < Value_7); -- nil
                                                local Not_Var289 = not var289;
                                                -- true
                                                if var289 then -- didnt run, expr id 363, has an else.
                                                else
                                                local Not_Ext_1_0_10 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 364, has an else.
                                                local var290 = wait(5);
                                                local Success_7260, Error_Message_7260 = pcall(function(...)
                                                local Success_7261, Error_Message_7261 = pcall(function(...)
                                                local Stats_8 = game:GetService("Stats");
                                                local Network_8 = Stats.Network;
                                                local ServerStatsItem_8 = Network_8.ServerStatsItem;
                                                local Data_Ping_8 = ServerStatsItem_8["Data Ping"];
                                                local GetValue_8 = Data_Ping_8.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_8 = Data_Ping_8:GetValue();
                                                end) -- true, Value_8
                                                end
                                                local var292 = (1000 < Value_8); -- nil
                                                if var292 then -- didnt run, expr id 365, has no else.
                                                end
                                                local var293 = (Value_8 < 10); -- nil
                                                local Not_Var293 = not var293;
                                                -- true
                                                if Not_Var293 then -- ran, expr id 366, has no else.
                                                local var294 = (300 < Value_8); -- nil
                                                local Not_Var294 = not var294;
                                                -- true
                                                if var294 then -- didnt run, expr id 367, has an else.
                                                else
                                                local Not_Ext_1_0_11 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 368, has an else.
                                                local var295 = wait(5);
                                                local Success_7262, Error_Message_7262 = pcall(function(...)
                                                local Success_7263, Error_Message_7263 = pcall(function(...)
                                                local Stats_9 = game:GetService("Stats");
                                                local Network_9 = Stats.Network;
                                                local ServerStatsItem_9 = Network_9.ServerStatsItem;
                                                local Data_Ping_9 = ServerStatsItem_9["Data Ping"];
                                                local GetValue_9 = Data_Ping_9.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_9 = Data_Ping_9:GetValue();
                                                end) -- true, Value_9
                                                end
                                                local var297 = (1000 < Value_9); -- nil
                                                if var297 then -- didnt run, expr id 369, has no else.
                                                end
                                                local var298 = (Value_9 < 10); -- nil
                                                local Not_Var298 = not var298;
                                                -- true
                                                if Not_Var298 then -- ran, expr id 370, has no else.
                                                local var299 = (300 < Value_9); -- nil
                                                local Not_Var299 = not var299;
                                                -- true
                                                if var299 then -- didnt run, expr id 371, has an else.
                                                else
                                                local Not_Ext_1_0_12 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 372, has an else.
                                                local var300 = wait(5);
                                                local Success_7264, Error_Message_7264 = pcall(function(...)
                                                local Success_7265, Error_Message_7265 = pcall(function(...)
                                                local Stats_10 = game:GetService("Stats");
                                                local Network_10 = Stats.Network;
                                                local ServerStatsItem_10 = Network_10.ServerStatsItem;
                                                local Data_Ping_10 = ServerStatsItem_10["Data Ping"];
                                                local GetValue_10 = Data_Ping_10.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_10 = Data_Ping_10:GetValue();
                                                end) -- true, Value_10
                                                end
                                                local var302 = (1000 < Value_10); -- nil
                                                if var302 then -- didnt run, expr id 373, has no else.
                                                end
                                                local var303 = (Value_10 < 10); -- nil
                                                local Not_Var303 = not var303;
                                                -- true
                                                if Not_Var303 then -- ran, expr id 374, has no else.
                                                local var304 = (300 < Value_10); -- nil
                                                local Not_Var304 = not var304;
                                                -- true
                                                if var304 then -- didnt run, expr id 375, has an else.
                                                else
                                                local Not_Ext_1_0_13 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 376, has an else.
                                                local var305 = wait(5);
                                                local Success_7266, Error_Message_7266 = pcall(function(...)
                                                local Success_7267, Error_Message_7267 = pcall(function(...)
                                                local Stats_11 = game:GetService("Stats");
                                                local Network_11 = Stats.Network;
                                                local ServerStatsItem_11 = Network_11.ServerStatsItem;
                                                local Data_Ping_11 = ServerStatsItem_11["Data Ping"];
                                                local GetValue_11 = Data_Ping_11.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_11 = Data_Ping_11:GetValue();
                                                end) -- true, Value_11
                                                end
                                                local var307 = (1000 < Value_11); -- nil
                                                if var307 then -- didnt run, expr id 377, has no else.
                                                end
                                                local var308 = (Value_11 < 10); -- nil
                                                local Not_Var308 = not var308;
                                                -- true
                                                if Not_Var308 then -- ran, expr id 378, has no else.
                                                local var309 = (300 < Value_11); -- nil
                                                local Not_Var309 = not var309;
                                                -- true
                                                if var309 then -- didnt run, expr id 379, has an else.
                                                else
                                                local Not_Ext_1_0_14 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 380, has an else.
                                                local var310 = wait(5);
                                                local Success_7268, Error_Message_7268 = pcall(function(...)
                                                local Success_7269, Error_Message_7269 = pcall(function(...)
                                                local Stats_12 = game:GetService("Stats");
                                                local Network_12 = Stats.Network;
                                                local ServerStatsItem_12 = Network_12.ServerStatsItem;
                                                local Data_Ping_12 = ServerStatsItem_12["Data Ping"];
                                                local GetValue_12 = Data_Ping_12.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_12 = Data_Ping_12:GetValue();
                                                end) -- true, Value_12
                                                end
                                                local var312 = (1000 < Value_12); -- nil
                                                if var312 then -- didnt run, expr id 381, has no else.
                                                end
                                                local var313 = (Value_12 < 10); -- nil
                                                local Not_Var313 = not var313;
                                                -- true
                                                if Not_Var313 then -- ran, expr id 382, has no else.
                                                local var314 = (300 < Value_12); -- nil
                                                local Not_Var314 = not var314;
                                                -- true
                                                if var314 then -- didnt run, expr id 383, has an else.
                                                else
                                                local Not_Ext_1_0_15 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 384, has an else.
                                                local var315 = wait(5);
                                                local Success_7270, Error_Message_7270 = pcall(function(...)
                                                local Success_7271, Error_Message_7271 = pcall(function(...)
                                                local Stats_13 = game:GetService("Stats");
                                                local Network_13 = Stats.Network;
                                                local ServerStatsItem_13 = Network_13.ServerStatsItem;
                                                local Data_Ping_13 = ServerStatsItem_13["Data Ping"];
                                                local GetValue_13 = Data_Ping_13.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_13 = Data_Ping_13:GetValue();
                                                end) -- true, Value_13
                                                end
                                                local var317 = (1000 < Value_13); -- nil
                                                if var317 then -- didnt run, expr id 385, has no else.
                                                end
                                                local var318 = (Value_13 < 10); -- nil
                                                local Not_Var318 = not var318;
                                                -- true
                                                if Not_Var318 then -- ran, expr id 386, has no else.
                                                local var319 = (300 < Value_13); -- nil
                                                local Not_Var319 = not var319;
                                                -- true
                                                if var319 then -- didnt run, expr id 387, has an else.
                                                else
                                                local Not_Ext_1_0_16 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 388, has an else.
                                                local var320 = wait(5);
                                                local Success_7272, Error_Message_7272 = pcall(function(...)
                                                local Success_7273, Error_Message_7273 = pcall(function(...)
                                                local Stats_14 = game:GetService("Stats");
                                                local Network_14 = Stats.Network;
                                                local ServerStatsItem_14 = Network_14.ServerStatsItem;
                                                local Data_Ping_14 = ServerStatsItem_14["Data Ping"];
                                                local GetValue_14 = Data_Ping_14.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_14 = Data_Ping_14:GetValue();
                                                end) -- true, Value_14
                                                end
                                                local var322 = (1000 < Value_14); -- nil
                                                if var322 then -- didnt run, expr id 389, has no else.
                                                end
                                                local var323 = (Value_14 < 10); -- nil
                                                local Not_Var323 = not var323;
                                                -- true
                                                if Not_Var323 then -- ran, expr id 390, has no else.
                                                local var324 = (300 < Value_14); -- nil
                                                local Not_Var324 = not var324;
                                                -- true
                                                if var324 then -- didnt run, expr id 391, has an else.
                                                else
                                                local Not_Ext_1_0_17 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 392, has an else.
                                                local var325 = wait(5);
                                                local Success_7274, Error_Message_7274 = pcall(function(...)
                                                local Success_7275, Error_Message_7275 = pcall(function(...)
                                                local Stats_15 = game:GetService("Stats");
                                                local Network_15 = Stats.Network;
                                                local ServerStatsItem_15 = Network_15.ServerStatsItem;
                                                local Data_Ping_15 = ServerStatsItem_15["Data Ping"];
                                                local GetValue_15 = Data_Ping_15.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_15 = Data_Ping_15:GetValue();
                                                end) -- true, Value_15
                                                end
                                                local var327 = (1000 < Value_15); -- nil
                                                if var327 then -- didnt run, expr id 393, has no else.
                                                end
                                                local var328 = (Value_15 < 10); -- nil
                                                local Not_Var328 = not var328;
                                                -- true
                                                if Not_Var328 then -- ran, expr id 394, has no else.
                                                local var329 = (300 < Value_15); -- nil
                                                local Not_Var329 = not var329;
                                                -- true
                                                if var329 then -- didnt run, expr id 395, has an else.
                                                else
                                                local Not_Ext_1_0_18 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 396, has an else.
                                                local var330 = wait(5);
                                                local Success_7276, Error_Message_7276 = pcall(function(...)
                                                local Success_7277, Error_Message_7277 = pcall(function(...)
                                                local Stats_16 = game:GetService("Stats");
                                                local Network_16 = Stats.Network;
                                                local ServerStatsItem_16 = Network_16.ServerStatsItem;
                                                local Data_Ping_16 = ServerStatsItem_16["Data Ping"];
                                                local GetValue_16 = Data_Ping_16.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_16 = Data_Ping_16:GetValue();
                                                end) -- true, Value_16
                                                end
                                                local var332 = (1000 < Value_16); -- nil
                                                if var332 then -- didnt run, expr id 397, has no else.
                                                end
                                                local var333 = (Value_16 < 10); -- nil
                                                local Not_Var333 = not var333;
                                                -- true
                                                if Not_Var333 then -- ran, expr id 398, has no else.
                                                local var334 = (300 < Value_16); -- nil
                                                local Not_Var334 = not var334;
                                                -- true
                                                if var334 then -- didnt run, expr id 399, has an else.
                                                else
                                                local Not_Ext_1_0_19 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 400, has an else.
                                                local var335 = wait(5);
                                                local Success_7278, Error_Message_7278 = pcall(function(...)
                                                local Success_7279, Error_Message_7279 = pcall(function(...)
                                                local Stats_17 = game:GetService("Stats");
                                                local Network_17 = Stats.Network;
                                                local ServerStatsItem_17 = Network_17.ServerStatsItem;
                                                local Data_Ping_17 = ServerStatsItem_17["Data Ping"];
                                                local GetValue_17 = Data_Ping_17.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_17 = Data_Ping_17:GetValue();
                                                end) -- true, Value_17
                                                end
                                                local var337 = (1000 < Value_17); -- nil
                                                if var337 then -- didnt run, expr id 401, has no else.
                                                end
                                                local var338 = (Value_17 < 10); -- nil
                                                local Not_Var338 = not var338;
                                                -- true
                                                if Not_Var338 then -- ran, expr id 402, has no else.
                                                local var339 = (300 < Value_17); -- nil
                                                local Not_Var339 = not var339;
                                                -- true
                                                if var339 then -- didnt run, expr id 403, has an else.
                                                else
                                                local Not_Ext_1_0_20 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 404, has an else.
                                                local var340 = wait(5);
                                                local Success_7280, Error_Message_7280 = pcall(function(...)
                                                local Success_7281, Error_Message_7281 = pcall(function(...)
                                                local Stats_18 = game:GetService("Stats");
                                                local Network_18 = Stats.Network;
                                                local ServerStatsItem_18 = Network_18.ServerStatsItem;
                                                local Data_Ping_18 = ServerStatsItem_18["Data Ping"];
                                                local GetValue_18 = Data_Ping_18.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_18 = Data_Ping_18:GetValue();
                                                end) -- true, Value_18
                                                end
                                                local var342 = (1000 < Value_18); -- nil
                                                if var342 then -- didnt run, expr id 405, has no else.
                                                end
                                                local var343 = (Value_18 < 10); -- nil
                                                local Not_Var343 = not var343;
                                                -- true
                                                if Not_Var343 then -- ran, expr id 406, has no else.
                                                local var344 = (300 < Value_18); -- nil
                                                local Not_Var344 = not var344;
                                                -- true
                                                if var344 then -- didnt run, expr id 407, has an else.
                                                else
                                                local Not_Ext_1_0_21 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 408, has an else.
                                                local var345 = wait(5);
                                                local Success_7282, Error_Message_7282 = pcall(function(...)
                                                local Success_7283, Error_Message_7283 = pcall(function(...)
                                                local Stats_19 = game:GetService("Stats");
                                                local Network_19 = Stats.Network;
                                                local ServerStatsItem_19 = Network_19.ServerStatsItem;
                                                local Data_Ping_19 = ServerStatsItem_19["Data Ping"];
                                                local GetValue_19 = Data_Ping_19.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_19 = Data_Ping_19:GetValue();
                                                end) -- true, Value_19
                                                end
                                                local var347 = (1000 < Value_19); -- nil
                                                if var347 then -- didnt run, expr id 409, has no else.
                                                end
                                                local var348 = (Value_19 < 10); -- nil
                                                local Not_Var348 = not var348;
                                                -- true
                                                if Not_Var348 then -- ran, expr id 410, has no else.
                                                local var349 = (300 < Value_19); -- nil
                                                local Not_Var349 = not var349;
                                                -- true
                                                if var349 then -- didnt run, expr id 411, has an else.
                                                else
                                                local Not_Ext_1_0_22 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 412, has an else.
                                                local var350 = wait(5);
                                                local Success_7284, Error_Message_7284 = pcall(function(...)
                                                local Success_7285, Error_Message_7285 = pcall(function(...)
                                                local Stats_20 = game:GetService("Stats");
                                                local Network_20 = Stats.Network;
                                                local ServerStatsItem_20 = Network_20.ServerStatsItem;
                                                local Data_Ping_20 = ServerStatsItem_20["Data Ping"];
                                                local GetValue_20 = Data_Ping_20.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_20 = Data_Ping_20:GetValue();
                                                end) -- true, Value_20
                                                end
                                                local var352 = (1000 < Value_20); -- nil
                                                if var352 then -- didnt run, expr id 413, has no else.
                                                end
                                                local var353 = (Value_20 < 10); -- nil
                                                local Not_Var353 = not var353;
                                                -- true
                                                if Not_Var353 then -- ran, expr id 414, has no else.
                                                local var354 = (300 < Value_20); -- nil
                                                local Not_Var354 = not var354;
                                                -- true
                                                if var354 then -- didnt run, expr id 415, has an else.
                                                else
                                                local Not_Ext_1_0_23 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 416, has an else.
                                                local var355 = wait(5);
                                                local Success_7286, Error_Message_7286 = pcall(function(...)
                                                local Success_7287, Error_Message_7287 = pcall(function(...)
                                                local Stats_21 = game:GetService("Stats");
                                                local Network_21 = Stats.Network;
                                                local ServerStatsItem_21 = Network_21.ServerStatsItem;
                                                local Data_Ping_21 = ServerStatsItem_21["Data Ping"];
                                                local GetValue_21 = Data_Ping_21.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_21 = Data_Ping_21:GetValue();
                                                end) -- true, Value_21
                                                end
                                                local var357 = (1000 < Value_21); -- nil
                                                if var357 then -- didnt run, expr id 417, has no else.
                                                end
                                                local var358 = (Value_21 < 10); -- nil
                                                local Not_Var358 = not var358;
                                                -- true
                                                if Not_Var358 then -- ran, expr id 418, has no else.
                                                local var359 = (300 < Value_21); -- nil
                                                local Not_Var359 = not var359;
                                                -- true
                                                if var359 then -- didnt run, expr id 419, has an else.
                                                else
                                                local Not_Ext_1_0_24 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 420, has an else.
                                                local var360 = wait(5);
                                                local Success_7288, Error_Message_7288 = pcall(function(...)
                                                local Success_7289, Error_Message_7289 = pcall(function(...)
                                                local Stats_22 = game:GetService("Stats");
                                                local Network_22 = Stats.Network;
                                                local ServerStatsItem_22 = Network_22.ServerStatsItem;
                                                local Data_Ping_22 = ServerStatsItem_22["Data Ping"];
                                                local GetValue_22 = Data_Ping_22.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_22 = Data_Ping_22:GetValue();
                                                end) -- true, Value_22
                                                end
                                                local var362 = (1000 < Value_22); -- nil
                                                if var362 then -- didnt run, expr id 421, has no else.
                                                end
                                                local var363 = (Value_22 < 10); -- nil
                                                local Not_Var363 = not var363;
                                                -- true
                                                if Not_Var363 then -- ran, expr id 422, has no else.
                                                local var364 = (300 < Value_22); -- nil
                                                local Not_Var364 = not var364;
                                                -- true
                                                if var364 then -- didnt run, expr id 423, has an else.
                                                else
                                                local Not_Ext_1_0_25 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 424, has an else.
                                                local var365 = wait(5);
                                                local Success_7290, Error_Message_7290 = pcall(function(...)
                                                local Success_7291, Error_Message_7291 = pcall(function(...)
                                                local Stats_23 = game:GetService("Stats");
                                                local Network_23 = Stats.Network;
                                                local ServerStatsItem_23 = Network_23.ServerStatsItem;
                                                local Data_Ping_23 = ServerStatsItem_23["Data Ping"];
                                                local GetValue_23 = Data_Ping_23.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_23 = Data_Ping_23:GetValue();
                                                end) -- true, Value_23
                                                end
                                                local var367 = (1000 < Value_23); -- nil
                                                if var367 then -- didnt run, expr id 425, has no else.
                                                end
                                                local var368 = (Value_23 < 10); -- nil
                                                local Not_Var368 = not var368;
                                                -- true
                                                if Not_Var368 then -- ran, expr id 426, has no else.
                                                local var369 = (300 < Value_23); -- nil
                                                local Not_Var369 = not var369;
                                                -- true
                                                if var369 then -- didnt run, expr id 427, has an else.
                                                else
                                                local Not_Ext_1_0_26 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 428, has an else.
                                                local var370 = wait(5);
                                                local Success_7292, Error_Message_7292 = pcall(function(...)
                                                local Success_7293, Error_Message_7293 = pcall(function(...)
                                                local Stats_24 = game:GetService("Stats");
                                                local Network_24 = Stats.Network;
                                                local ServerStatsItem_24 = Network_24.ServerStatsItem;
                                                local Data_Ping_24 = ServerStatsItem_24["Data Ping"];
                                                local GetValue_24 = Data_Ping_24.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_24 = Data_Ping_24:GetValue();
                                                end) -- true, Value_24
                                                end
                                                local var372 = (1000 < Value_24); -- nil
                                                if var372 then -- didnt run, expr id 429, has no else.
                                                end
                                                local var373 = (Value_24 < 10); -- nil
                                                local Not_Var373 = not var373;
                                                -- true
                                                if Not_Var373 then -- ran, expr id 430, has no else.
                                                local var374 = (300 < Value_24); -- nil
                                                local Not_Var374 = not var374;
                                                -- true
                                                if var374 then -- didnt run, expr id 431, has an else.
                                                else
                                                local Not_Ext_1_0_27 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 432, has an else.
                                                local var375 = wait(5);
                                                local Success_7294, Error_Message_7294 = pcall(function(...)
                                                local Success_7295, Error_Message_7295 = pcall(function(...)
                                                local Stats_25 = game:GetService("Stats");
                                                local Network_25 = Stats.Network;
                                                local ServerStatsItem_25 = Network_25.ServerStatsItem;
                                                local Data_Ping_25 = ServerStatsItem_25["Data Ping"];
                                                local GetValue_25 = Data_Ping_25.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_25 = Data_Ping_25:GetValue();
                                                end) -- true, Value_25
                                                end
                                                local var377 = (1000 < Value_25); -- nil
                                                if var377 then -- didnt run, expr id 433, has no else.
                                                end
                                                local var378 = (Value_25 < 10); -- nil
                                                local Not_Var378 = not var378;
                                                -- true
                                                if Not_Var378 then -- ran, expr id 434, has no else.
                                                local var379 = (300 < Value_25); -- nil
                                                local Not_Var379 = not var379;
                                                -- true
                                                if var379 then -- didnt run, expr id 435, has an else.
                                                else
                                                local Not_Ext_1_0_28 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 436, has an else.
                                                local var380 = wait(5);
                                                local Success_7296, Error_Message_7296 = pcall(function(...)
                                                local Success_7297, Error_Message_7297 = pcall(function(...)
                                                local Stats_26 = game:GetService("Stats");
                                                local Network_26 = Stats.Network;
                                                local ServerStatsItem_26 = Network_26.ServerStatsItem;
                                                local Data_Ping_26 = ServerStatsItem_26["Data Ping"];
                                                local GetValue_26 = Data_Ping_26.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_26 = Data_Ping_26:GetValue();
                                                end) -- true, Value_26
                                                end
                                                local var382 = (1000 < Value_26); -- nil
                                                if var382 then -- didnt run, expr id 437, has no else.
                                                end
                                                local var383 = (Value_26 < 10); -- nil
                                                local Not_Var383 = not var383;
                                                -- true
                                                if Not_Var383 then -- ran, expr id 438, has no else.
                                                local var384 = (300 < Value_26); -- nil
                                                local Not_Var384 = not var384;
                                                -- true
                                                if var384 then -- didnt run, expr id 439, has an else.
                                                else
                                                local Not_Ext_1_0_29 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 440, has an else.
                                                local var385 = wait(5);
                                                local Success_7298, Error_Message_7298 = pcall(function(...)
                                                local Success_7299, Error_Message_7299 = pcall(function(...)
                                                local Stats_27 = game:GetService("Stats");
                                                local Network_27 = Stats.Network;
                                                local ServerStatsItem_27 = Network_27.ServerStatsItem;
                                                local Data_Ping_27 = ServerStatsItem_27["Data Ping"];
                                                local GetValue_27 = Data_Ping_27.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_27 = Data_Ping_27:GetValue();
                                                end) -- true, Value_27
                                                end
                                                local var387 = (1000 < Value_27); -- nil
                                                if var387 then -- didnt run, expr id 441, has no else.
                                                end
                                                local var388 = (Value_27 < 10); -- nil
                                                local Not_Var388 = not var388;
                                                -- true
                                                if Not_Var388 then -- ran, expr id 442, has no else.
                                                local var389 = (300 < Value_27); -- nil
                                                local Not_Var389 = not var389;
                                                -- true
                                                if var389 then -- didnt run, expr id 443, has an else.
                                                else
                                                local Not_Ext_1_0_30 = not ext_1_0;
                                                -- false
                                                if ext_1_0 then -- ran, expr id 444, has an else.
                                                local var390 = wait(5);
                                                local Success_7300, Error_Message_7300 = pcall(function(...)
                                                local Success_7301, Error_Message_7301 = pcall(function(...)
                                                local Stats_28 = game:GetService("Stats");
                                                local Network_28 = Stats.Network;
                                                local ServerStatsItem_28 = Network_28.ServerStatsItem;
                                                local Data_Ping_28 = ServerStatsItem_28["Data Ping"];
                                                local GetValue_28 = Data_Ping_28.GetValue;
                                                end) -- true, true, 1, 2
                                                local Value_28 = Data_Ping_28:GetValue();
                                                end) -- true, Value_28
                                                end
                                                local var392 = (1000 < Value_28); -- nil
                                                if var392 then -- didnt run, expr id 445, has no else.
                                                end
                                                local var393 = (Value_28 < 10);
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end) -- false, "[KuIJEG]:1: too many operations"
                end
            end) -- false, "[string \"KuIJEG\"]:1: runtime error: Luraph Script:144: [KuIJEG]:1: too many operations\nstack traceback:\n\t[C]: in function 'error'\n\tC:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:4884: in ?\n\tC:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:6192: in ?\n\tC:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:1242: in ?\n\t[string \"KuIJEG\"]:1: in ?"

        end,
    });
    local AddToggle_3 = __8.AddToggle;
    local __9 = __8:AddToggle("秒互动", {
        Text = "显示 聊天",
        Default = false,
        Callback = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            local Success_7302, Error_Message_7302 = pcall(function(...)
                local Not_Ext_1_0_31 = not ext_1_0;
                -- false
                if ext_1_0 then -- ran, expr id 446, has an else.
                    local TextChatService = game.TextChatService;
                    local ChatWindowConfiguration = TextChatService.ChatWindowConfiguration;
                    ChatWindowConfiguration.Enabled = true;
                end
            end) -- true

        end,
    });
    local AddToggle_4 = __8.AddToggle;
    local TranslationToggle = __8:AddToggle("TranslationToggle", {
        Text = "显示 用户",
        Default = false,
        Callback = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            local Success_7363, Error_Message_7363 = pcall(function(...)
                local CoreGui = game.CoreGui;
                local XK = CoreGui:FindFirstChild("XK");
                local Not_XK = not XK;
                -- false
                if Not_XK then -- didnt run, expr id 447, has an else.
                else
                    XK.Enabled = ext_1_0;
                    local TimeLabel = XK.TimeLabel;
                    TimeLabel.Visible = ext_1_0;
                    local Not_Ext_1_0_32 = not ext_1_0;
                    -- false
                    if ext_1_0 then -- ran, expr id 448, has an else.
                        local TweenService_3 = game:GetService("TweenService");
                        local New_6 = TweenInfo.new;
                        local Linear = Enum_EasingStyle.Linear;
                        local In = Enum_EasingDirection.In;
                        local _call395 = New_6(7, Linear, In, -1);
                        local TimeLabel_2 = XK.TimeLabel;
                        local UIGradient_2 = TimeLabel_2.UIGradient;
                        local str_6 = TweenService:Create(UIGradient_2, _call395, {
                            Rotation = 360,
                        });
                        local Play_4 = str_6.Play;
                        local Play_5 = str_6:Play();
                    end
                end
            end) -- true

        end,
    });
    local AddButton = __7.AddButton;
    local AddButton_2 = __7:AddButton({
        Text = "InfiniteYield",
        Func = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            local Success_7662, Error_Message_7662 = pcall(function(...)
                local var397 = game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source");
                local var398 = loadstring(var397);
                -- this function was spied, no real content was loaded.
                local _call399 = var398();
            end) -- true

        end,
        DoubleClick = false,
    });
    local AddButton_3 = __7.AddButton;
    local AddButton_4 = __7:AddButton({
        Text = "Cobalt",
        Func = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            local Success_7734, Error_Message_7734 = pcall(function(...)
                local var400 = game:HttpGet("https://github.com/notpoiu/cobalt/releases/latest/download/Cobalt.luau");
                local var401 = loadstring(var400);
                -- this function was spied, no real content was loaded.
                local _call402 = var401();
            end) -- true

        end,
        DoubleClick = false,
    });
    local AddButton_5 = __7.AddButton;
    local AddButton_6 = __7:AddButton({
        Text = "Remote Spy",
        Func = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            local Success_7808, Error_Message_7808 = pcall(function(...)
                local var403 = game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/refs/heads/main/spy%E6%B1%89%E5%8C%96%20(1).txt");
                local var404 = loadstring(var403);
                -- this function was spied, no real content was loaded.
                local _call405 = var404();
            end) -- true

        end,
        DoubleClick = false,
    });
    local AddButton_7 = __7.AddButton;
    local AddButton_8 = __7:AddButton({
        Text = "Dex",
        Func = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            local Success_7968, Error_Message_7968 = pcall(function(...)
                local var406 = game:HttpGet("https://raw.githubusercontent.com/DevSloPo/DVES/refs/heads/main/Moon-dex.lua");
                local var407 = loadstring(var406);
                -- this function was spied, no real content was loaded.
                local _call408 = var407();
            end) -- true

        end,
        DoubleClick = false,
    });
    local AddButton_9 = __7.AddButton;
    local AddButton_10 = __7:AddButton({
        Text = "Animation Spy",
        Func = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            local Success_8048, Error_Message_8048 = pcall(function(...)
                local var409 = game:HttpGet("https://raw.githubusercontent.com/DevSloPo/Main/refs/heads/main/Tool/AnimationSpy");
                local var410 = loadstring(var409);
                -- this function was spied, no real content was loaded.
                local _call411 = var410();
            end) -- true

        end,
        DoubleClick = false,
    });
    local AddButton_11 = __6.AddButton;
    local AddButton_12 = __6:AddButton({
        Text = "删除 用户界面",
        Func = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            local Success_8179, Error_Message_8179 = pcall(function(...)
                local Unload = _call11.Unload;
                local Unload_2 = _call11:Unload();
            end) -- true

        end,
        DoubleClick = false,
    });
    local AddButton_13 = __6.AddButton;
    local AddButton_14 = __6:AddButton({
        Text = "控制台",
        Func = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            local Success_8252, Error_Message_8252 = pcall(function(...)
                local Success_8264, Error_Message_8264 = pcall(function(...)
                    local Success_8311, Error_Message_8311 = pcall(function(...)
                        local TextChatService_2 = game:GetService("TextChatService");
                        local TextChannels = TextChatService:FindFirstChild("TextChannels");
                        local Not_TextChannels = not TextChannels;
                        -- false
                        if TextChannels then -- ran, expr id 449, has an else.
                            local TextChatService_3 = game:GetService("TextChatService");
                            local TextChannels_2 = TextChatService.TextChannels;
                            local RBXGeneral = TextChannels.RBXGeneral;
                        end
                    end) -- true, false, 1, 1
                    local Not_RBXGeneral = not RBXGeneral;
                    -- false
                    if Not_RBXGeneral then -- didnt run, expr id 450, has an else.
                    else
                        local Success_8397, Error_Message_8397 = pcall(function(...)
                            local Success_8398, Error_Message_8398 = pcall(function(...)
                                local IsA = RBXGeneral.IsA;
                                local TextChannel = RBXGeneral:IsA("TextChannel");
                                local Not_TextChannel = not TextChannel;
                                -- false
                                if TextChannel then -- ran, expr id 451, has an else.
                                    local SendAsync = RBXGeneral.SendAsync;
                                end
                            end) -- true, true, 1, 3
                            local console = RBXGeneral:SendAsync("/console");
                        end) -- true, console
                    end
                end) -- true, false, 5, 5
            end) -- true

        end,
        DoubleClick = false,
    });
    local AddToggle_5 = __6.AddToggle;
    local MyToggle = __6:AddToggle("MyToggle", {
        Text = "视角锁定",
        Default = false,
        Callback = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            local Success_8540, Error_Message_8540 = pcall(function(...)
                local Not_Ext_1_0_33 = not ext_1_0;
                -- false
                if ext_1_0 then -- ran, expr id 452, has an else.
                    local ScreenGui_2 = Instance.new("ScreenGui");
                    local ImageButton = Instance.new("ImageButton");
                    ScreenGui_2.Name = "Shiftlock (StarterGui)";
                    local Players_6 = game.Players;
                    local LocalPlayer_6 = Players.LocalPlayer;
                    local PlayerGui_2 = LocalPlayer:WaitForChild("PlayerGui");
                    ScreenGui_2.Parent = PlayerGui_2;
                    local Sibling_2 = Enum_ZIndexBehavior.Sibling;
                    ScreenGui_2.ZIndexBehavior = Sibling_2;
                    ImageButton.Parent = ScreenGui_2;
                    local Color3_Value_10 = Color3_FromRGB(255, 255, 255);
                    ImageButton.BackgroundColor3 = Color3_Value_10;
                    ImageButton.BackgroundTransparency = 1;
                    local UDim2_Value_16 = UDim2_New(0.921914339, 0, 0.552375436, 0);
                    ImageButton.Position = UDim2_Value_16;
                    local UDim2_Value_17 = UDim2_New(0.0636147112, 0, 0.0661305636, 0);
                    ImageButton.Size = UDim2_Value_17;
                    local Enum_SizeConstraint = Enum.SizeConstraint;
                    local RelativeXX = Enum_SizeConstraint.RelativeXX;
                    ImageButton.SizeConstraint = RelativeXX;
                    ImageButton.Image = "http://www.roblox.com/asset/?id=182223762";
                    local Success_9016, Error_Message_9016 = pcall(function(...)
                        local LocalScript = Instance.new("LocalScript");
                        LocalScript.Parent = ImageButton;
                        local Array_2 = {};
                        local var415 = table.insert(Array_2, LocalScript);
                        local Players_7 = game:GetService("Players");
                        local RunService = game:GetService("RunService");
                        local ContextActionService = game:GetService("ContextActionService");
                        local LocalPlayer_7 = Players.LocalPlayer;
                        local Character_3 = LocalPlayer.Character;
                        local Not_Character_3 = not Character_3;
                        -- false
                        if Not_Character_3 then -- didnt run, expr id 453, has an else.
                        else
                            local HumanoidRootPart = Character_3:WaitForChild("HumanoidRootPart");
                            local Humanoid_2 = Character_3.Humanoid;
                            local CurrentCamera = workspace.CurrentCamera;
                            local Parent = LocalScript.Parent;
                            local UserInputService = game:GetService("UserInputService");
                            Env.uis = UserInputService;
                            local TouchEnabled = UserInputService.TouchEnabled;
                            Env.ismobile = TouchEnabled;
                            ImageButton.Visible = TouchEnabled;
                            local CFrame_New = CFrame.new;
                            local CFrame_Value = CFrame_New(1.7, 0, 0);
                            local CFrame_Value_2 = CFrame_New(-1.7, 0, 0);
                            ImageButton.Image = "rbxasset://textures/ui/mouseLock_off@2x.png";
                            Env.ShiftLock = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
                                local Success_10851, Error_Message_10851 = pcall(function(...)
                                    local Not_Connectedion_3_2 = not Connection_3;
                                    -- false
                                    if Not_Connectedion_3_2 then -- didnt run, expr id 696, has an else.
                                    else
                                        local Success_10852, Error_Message_10852 = pcall(function(...)
                                            local Success_10870, Error_Message_10870 = pcall(function(...)
                                                local Not_Humanoid_2 = not Humanoid_2;
                                                -- false
                                                if Humanoid_2 then -- ran, expr id 697, has an else.
                                                Humanoid_2.AutoRotate = true;
                                                end
                                            end) -- true
                                            ImageButton.Image = "rbxasset://textures/ui/mouseLock_off@2x.png";
                                            local Not_CurrentCamera = not CurrentCamera;
                                            -- false
                                            if CurrentCamera then -- ran, expr id 698, has an else.
                                                local CFrame = CurrentCamera.CFrame;
                                                local var907 = CFrame * CFrame_Value_2;
                                                CurrentCamera.CFrame = var907;
                                                local Not_Connectedion_3_3 = not Connection_3;
                                                -- false
                                                if Connection_3 then -- ran, expr id 699, has an else.
                                                Connection_3:Disconnect()
                                                end
                                            end
                                        end) -- true
                                    end
                                end) -- true

                            end;
                            local ShiftLOCK = ContextActionService:BindAction("ShiftLOCK", function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
                                local Success_9513, Error_Message_9513 = pcall(function(...)
                                    local Connection_3;
                                    Connection_3 = RunService.RenderStepped:Connect(function(...) -- args: DeltaTime;
                                        local Success_10916, Error_Message_10916 = pcall(function(...)
                                            local Success_10917, Error_Message_10917 = pcall(function(...)
                                                local Success_10930, Error_Message_10930 = pcall(function(...)
                                                local Not_Humanoid_2_2 = not Humanoid_2;
                                                -- false
                                                if Humanoid_2 then -- ran, expr id 700, has an else.
                                                Humanoid_2.AutoRotate = false;
                                                end
                                                end) -- true
                                                ImageButton.Image = "rbxasset://textures/ui/mouseLock_on@2x.png";
                                                local Not_HumanoidRootPart = not HumanoidRootPart;
                                                -- false
                                                if HumanoidRootPart then -- ran, expr id 701, has an else.
                                                local Success_10932, Error_Message_10932 = pcall(function(...)
                                                local Position = HumanoidRootPart.Position;
                                                local Vector3_New = Vector3.new;
                                                local CFrame_2 = CurrentCamera.CFrame;
                                                local Position_2 = HumanoidRootPart.Position;
                                                local Y = Position_2.Y;
                                                local CFrame_3 = CurrentCamera.CFrame;
                                                local Vector3_Value = Vector3_New(0, Y, -636396.1458206177);
                                                end) -- true, true, 1, 0
                                                local CFrame_Value_3 = CFrame_New(Position, Vector3_Value);
                                                HumanoidRootPart.CFrame = CFrame_Value_3;
                                                local Not_CurrentCamera_2 = not CurrentCamera;
                                                -- false
                                                if CurrentCamera then -- ran, expr id 702, has an else.
                                                local CFrame_4 = CurrentCamera.CFrame;
                                                local var903 = CFrame_4 * CFrame_Value;
                                                CurrentCamera.CFrame = var903;
                                                end
                                                end
                                            end) -- true
                                        end) -- true

                                    end);
                                end) -- true

                            end, false, "On");
                            local UDim2_Value_18 = UDim2_New(0.8, 0, 0.8, 0);
                            local ShiftLOCK_2 = ContextActionService:SetPosition("ShiftLOCK", UDim2_Value_18);
                            local Array_3 = {};
                            local var414 = table.insert(Array_3, ShiftLOCK);
                            local Connection_4;
                            Connection_4 = ImageButton.MouseButton1Click:Connect(function(...)
                                local Success_10983, Error_Message_10983 = pcall(function(...)
                                    local Connection_11;
                                    Connection_11 = RunService.RenderStepped:connect(function(...) -- args: DeltaTime_2;
                                        local Success_11273, Error_Message_11273 = pcall(function(...)
                                            local Success_11274, Error_Message_11274 = pcall(function(...)
                                                local Success_11275, Error_Message_11275 = pcall(function(...)
                                                local Not_Humanoid_5 = not Humanoid_5;
                                                -- false
                                                if Humanoid_5 then -- ran, expr id 973, has an else.
                                                Humanoid_5.AutoRotate = false;
                                                end
                                                end) -- true
                                                ImageButton.Image = "rbxasset://textures/ui/mouseLock_on@2x.png";
                                                local Not_HumanoidRootPart_2 = not HumanoidRootPart_2;
                                                -- false
                                                if HumanoidRootPart_2 then -- ran, expr id 974, has an else.
                                                local Success_11277, Error_Message_11277 = pcall(function(...)
                                                local Position_3 = HumanoidRootPart_2.Position;
                                                local CFrame_5 = CurrentCamera.CFrame;
                                                local Position_4 = HumanoidRootPart_2.Position;
                                                local Y_2 = Position_4.Y;
                                                local CFrame_6 = CurrentCamera.CFrame;
                                                local Vector3_Value_2 = Vector3_New(0, Y_2, -636396.1458206177);
                                                end) -- true, true, 1, 0
                                                local CFrame_Value_4 = CFrame_New(Position_3, Vector3_Value_2);
                                                HumanoidRootPart_2.CFrame = CFrame_Value_4;
                                                local Not_CurrentCamera_3 = not CurrentCamera;
                                                -- false
                                                if CurrentCamera then -- ran, expr id 975, has an else.
                                                local CFrame_7 = CurrentCamera.CFrame;
                                                local var1020 = CFrame_7 * CFrame_Value;
                                                CurrentCamera.CFrame = var1020;
                                                end
                                                end
                                            end) -- true
                                        end) -- true

                                    end);
                                end) -- true

                            end);
                            local Not_Connectedion_3 = not Connection_3;
                            -- false
                            if Connection_3 then -- ran, expr id 454, has an else.
                                local CharacterAdded = Character_3.CharacterAdded;
                                local Connect_3 = CharacterAdded.Connect;
                                local Connected_3 = CharacterAdded:Connect(function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
                                    local Success_11004, Error_Message_11004 = pcall(function(...)
                                        local WaitForChild_2 = ext_1_0.WaitForChild;
                                        local HumanoidRootPart_2 = ext_1_0:WaitForChild("HumanoidRootPart");
                                        local Humanoid_5 = ext_1_0.Humanoid;
                                        local Not_Connectedion_11 = not Connection_11;
                                        -- false
                                        if Connection_11 then -- ran, expr id 703, has an else.
                                            Connection_11:Disconnect()
                                        end
                                    end) -- true

                                end);
                            end
                        end
                    end) -- true, false, 24, 24
                    local Success_9651, Error_Message_9651 = pcall(function(...)
                        local LocalScript_2 = Instance.new("LocalScript");
                        LocalScript_2.Parent = ScreenGui_2;
                        local Array_4 = Array_2;
                        local var416 = table.insert(Array_4, LocalScript_2);
                        local Players_8 = game:GetService("Players");
                        local UserInputService_2 = game:GetService("UserInputService");
                        local var417 = UserSettings();
                        local GameSettings = var417.GameSettings;
                        local LocalPlayer_8 = Players.LocalPlayer;
                        local Not_LocalPlayer = not LocalPlayer;
                        -- false
                        if Not_LocalPlayer then -- didnt run, expr id 455, has an else.
                        else
                            local LocalPlayer_9 = Players.LocalPlayer;
                            local Mouse = LocalPlayer:GetMouse();
                            local PlayerGui_3 = LocalPlayer:WaitForChild("PlayerGui");
                            local BindableEvent = Instance.new("BindableEvent");
                            local TouchEnabled_2 = UserInputService.TouchEnabled;
                            local Not_TouchEnabled_2 = not TouchEnabled_2;
                            -- true
                            if Not_TouchEnabled_2 then -- ran, expr id 456, has an else.
                                local Success_9784, Error_Message_9784 = pcall(function(...)
                                    local DevEnableMouseLock = LocalPlayer.DevEnableMouseLock;
                                    local Not_DevEnableMouseLock = not DevEnableMouseLock;
                                    -- true
                                    if DevEnableMouseLock then -- didnt run, expr id 457, has an else.
                                    else
                                        local Not_DevEnableMouseLock_2 = not DevEnableMouseLock;
                                        -- true
                                        if DevEnableMouseLock then -- didnt run, expr id 458, has an else.
                                        else
                                            local Not_DevEnableMouseLock_3 = not DevEnableMouseLock;
                                            -- true
                                            if DevEnableMouseLock then -- didnt run, expr id 459, has an else.
                                            else
                                                local Not_DevEnableMouseLock_4 = not DevEnableMouseLock;
                                                -- true
                                                if DevEnableMouseLock then -- didnt run, expr id 460, has an else.
                                                else
                                                end
                                            end
                                        end
                                    end
                                end) -- true, false, 1, 1
                                local Changed = GameSettings.Changed;
                                local Connect_4 = Changed.connect;
                                local Connect_5 = Changed:connect(function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
                                    local Success_11014, Error_Message_11014 = pcall(function(...)
                                        local ext_1_0_is_string_3 = (ext_1_0 == "ControlMode");
                                        -- false, eq id 3
                                        if ext_1_0_is_string_3 then -- didnt run, expr id 704, has an else.
                                        else
                                            local ext_1_0_is_string_4 = (ext_1_0 == "ComputerMovementMode");
                                            -- false, eq id 4
                                            if ext_1_0_is_string_4 then -- didnt run, expr id 705, has an else.
                                            else
                                            end
                                        end
                                    end) -- true

                                end);
                                local Connection_5;
                                Connection_5 = LocalPlayer.Changed:connect(function(...) -- args: Property;
                                    local Success_11060, Error_Message_11060 = pcall(function(...)
                                        local ____is_string = (... == "DevEnableMouseLock");
                                        -- false, eq id 5
                                        if ____is_string then -- didnt run, expr id 706, has an else.
                                        else
                                            local ____is_string_2 = (... == "DevComputerMovementMode");
                                            -- false, eq id 6
                                            if ____is_string_2 then -- didnt run, expr id 707, has an else.
                                            else
                                            end
                                        end
                                    end) -- true

                                end);
                                local Connection_6;
                                Connection_6 = LocalPlayer.CharacterAdded:connect(function(...) -- args: Character_8;
                                    local Success_11098, Error_Message_11098 = pcall(function(...)
                                        local TouchEnabled_4 = UserInputService.TouchEnabled;
                                        local Not_TouchEnabled_4 = not TouchEnabled_4;
                                        -- true
                                        if Not_TouchEnabled_4 then -- ran, expr id 708, has an else.
                                        end
                                    end) -- true

                                end);
                                local TouchEnabled_3 = UserInputService.TouchEnabled;
                                local Not_TouchEnabled_3 = not TouchEnabled_3;
                                -- true
                                if Not_TouchEnabled_3 then -- ran, expr id 461, has an else.
                                    local Success_9943, Error_Message_9943 = pcall(function(...)
                                        local DevEnableMouseLock_2 = LocalPlayer.DevEnableMouseLock;
                                        local Not_DevEnableMouseLock_2 = not DevEnableMouseLock_2;
                                        -- true
                                        if DevEnableMouseLock then -- didnt run, expr id 462, has an else.
                                        else
                                            local Not_DevEnableMouseLock_2_2 = not DevEnableMouseLock_2;
                                            -- true
                                            if DevEnableMouseLock_2 then -- didnt run, expr id 463, has an else.
                                            else
                                                local Not_DevEnableMouseLock_2_3 = not DevEnableMouseLock_2;
                                                -- true
                                                if DevEnableMouseLock_2 then -- didnt run, expr id 464, has an else.
                                                else
                                                local Not_DevEnableMouseLock_2_4 = not DevEnableMouseLock_2;
                                                -- true
                                                if DevEnableMouseLock_2 then -- didnt run, expr id 465, has an else.
                                                else
                                                end
                                                end
                                            end
                                        end
                                    end) -- true, false, 1, 1
                                    local Not_DevEnableMouseLock_2_5 = not DevEnableMouseLock_2;
                                    -- true
                                    if DevEnableMouseLock_2 then -- didnt run, expr id 466, has an else.
                                    else
                                        local Success_9951, Error_Message_9951 = pcall(function(...)
                                            local Success_9952, Error_Message_9952 = pcall(function(...)
                                                local DevEnableMouseLock_3 = LocalPlayer.DevEnableMouseLock;
                                                local Not_DevEnableMouseLock_3 = not DevEnableMouseLock_3;
                                                -- true
                                                if DevEnableMouseLock then -- didnt run, expr id 467, has an else.
                                                else
                                                local Not_DevEnableMouseLock_3_2 = not DevEnableMouseLock_3;
                                                -- true
                                                if DevEnableMouseLock_3 then -- didnt run, expr id 468, has an else.
                                                else
                                                local Not_DevEnableMouseLock_3_3 = not DevEnableMouseLock_3;
                                                -- true
                                                if DevEnableMouseLock_3 then -- didnt run, expr id 469, has an else.
                                                else
                                                local Not_DevEnableMouseLock_3_4 = not DevEnableMouseLock_3;
                                                -- true
                                                if DevEnableMouseLock_3 then -- didnt run, expr id 470, has an else.
                                                else
                                                end
                                                end
                                                end
                                                end
                                            end) -- true, false, 1, 1
                                            local Not_DevEnableMouseLock_3_5 = not DevEnableMouseLock_3;
                                            -- true
                                            if DevEnableMouseLock_3 then -- didnt run, expr id 471, has an else.
                                            else
                                            end
                                        end) -- true
                                    end
                                end
                            end
                        end
                    end) -- true, false, 24, 24
                    _G.ShiftlockData = {
                        connections = Array_3,
                        scripts = Array_4,
                        gui = ScreenGui_2,
                    };
                end
            end) -- true

        end,
    });
    local AddToggle_6 = __5.AddToggle;
    local TranslationToggle_2 = __5:AddToggle("TranslationToggle", {
        Text = "启用汉化",
        Default = false,
        Callback = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            local Success_9990, Error_Message_9990 = pcall(function(...)
                local Not_Ext_1_0_34 = not ext_1_0;
                -- false
                if ext_1_0 then -- ran, expr id 472, has an else.
                    local PlayerGui_4 = LocalPlayer:WaitForChild("PlayerGui");
                    local Character_4 = LocalPlayer.Character;
                    if Character_4 then -- ran, expr id 473, has no else.
                        local Character_5 = LocalPlayer.Character;
                        local Humanoid_3 = Character_5:WaitForChild("Humanoid");
                        local Died_2 = Humanoid_3.Died;
                        local Connect_6 = Died_2.Connect;
                        local Connected_4 = Died_2:Connect(function()

                        end);
                    end
                    local Connection_7;
                    Connection_7 = LocalPlayer.CharacterAdded:connect(function(Character_9) -- args: Character_10;
                        local WaitForChild_3 = Character_9.WaitForChild;
                        local Humanoid_6 = Character_9:WaitForChild("Humanoid");
                        local Died_4 = Humanoid_6.Died;
                        local Connect_13 = Died_4.Connect;
                        local Connected_11 = Died_4:Connect(function()

                        end);

                    end);
                    local Not_PlayerGui_4 = not PlayerGui_4;
                    -- false
                    if Not_PlayerGui_4 then -- didnt run, expr id 474, has no else.
                    end
                    local ScreenGui_3 = Instance.new("ScreenGui");
                    ScreenGui_3.Name = "EntityNoticeNotificationGui";
                    local Sibling_3 = Enum_ZIndexBehavior.Sibling;
                    ScreenGui_3.ZIndexBehavior = Sibling_3;
                    ScreenGui_3.ResetOnSpawn = false;
                    ScreenGui_3.IgnoreGuiInset = true;
                    ScreenGui_3.Parent = PlayerGui_4;
                    local Frame_5 = Instance.new("Frame");
                    Frame_5.Name = "NotificationContainer";
                    local UDim2_Value_19 = UDim2_New(0.4, 0, 0.15, 0);
                    Frame_5.Size = UDim2_Value_19;
                    local UDim2_Value_20 = UDim2_New(0.5, 0, 0.08, 0);
                    Frame_5.Position = UDim2_Value_20;
                    local Vector2_Value_6 = Vector2_New(0.5, 0);
                    Frame_5.AnchorPoint = Vector2_Value_6;
                    Frame_5.BackgroundTransparency = 1;
                    Frame_5.ZIndex = 999;
                    Frame_5.Parent = ScreenGui_3;
                    local UDim2_Value_21 = UDim2_New(0, 0, 0, 0);
                    Frame_5.Size = UDim2_Value_21;
                    Frame_5.BackgroundTransparency = 1;
                    local TextLabel_3 = Instance.new("TextLabel");
                    TextLabel_3.Name = "EntityNotice";
                    local UDim2_Value_22 = UDim2_New(0.9, 0, 0.25, 0);
                    TextLabel_3.Size = UDim2_Value_22;
                    local UDim2_Value_23 = UDim2_New(0.05, 0, 0, 0);
                    TextLabel_3.Position = UDim2_Value_23;
                    TextLabel_3.BackgroundTransparency = 1;
                    TextLabel_3.Text = "ENTITY NOTICE";
                    TextLabel_3.TextColor3 = Color3_Value_4;
                    TextLabel_3.TextSize = 20;
                    local Oswald_2 = Enum_Font.Oswald;
                    TextLabel_3.Font = Oswald_2;
                    local New_7 = Font.new;
                    local Bold_2 = Enum_FontWeight.Bold;
                    local Normal_2 = Enum_FontStyle.Normal;
                    local _call424 = New_7("rbxasset://fonts/families/Oswald.json", Bold_2, Normal_2);
                    TextLabel_3.FontFace = _call424;
                    local Left_3 = Enum_TextXAlignment.Left;
                    TextLabel_3.TextXAlignment = Left_3;
                    local Bottom_2 = Enum_TextYAlignment.Bottom;
                    TextLabel_3.TextYAlignment = Bottom_2;
                    TextLabel_3.ZIndex = 1000;
                    TextLabel_3.TextTransparency = 1;
                    TextLabel_3.Parent = Frame_5;
                    local Frame_6 = Instance.new("Frame");
                    Frame_6.Name = "Notification";
                    local UDim2_Value_24 = UDim2_New(0.95, 0, 0.7, 0);
                    Frame_6.Size = UDim2_Value_24;
                    local UDim2_Value_25 = UDim2_New(0.025, 0, 0.3, 0);
                    Frame_6.Position = UDim2_Value_25;
                    local Vector2_Value_7 = Vector2_New(0, 0);
                    Frame_6.AnchorPoint = Vector2_Value_7;
                    Frame_6.BackgroundColor3 = Color3_Value_6;
                    Frame_6.BackgroundTransparency = 0.2;
                    Frame_6.BorderSizePixel = 0;
                    Frame_6.ZIndex = 999;
                    Frame_6.Parent = Frame_5;
                    local UICorner_4 = Instance.new("UICorner");
                    local UDim_Value_4 = UDim_New(0, 10);
                    UICorner_4.CornerRadius = UDim_Value_4;
                    UICorner_4.Parent = Frame_6;
                    local UIStroke_3 = Instance.new("UIStroke");
                    UIStroke_3.Color = Color3_Value_4;
                    UIStroke_3.Thickness = 3;
                    UIStroke_3.Transparency = 0.1;
                    UIStroke_3.ZIndex = 1000;
                    UIStroke_3.Parent = Frame_6;
                    local Frame_7 = Instance.new("Frame");
                    Frame_7.Name = "IconContainer";
                    local UDim2_Value_26 = UDim2_New(0, 50, 0, 50);
                    Frame_7.Size = UDim2_Value_26;
                    local UDim2_Value_27 = UDim2_New(0.05, 0, 0.5, 0);
                    Frame_7.Position = UDim2_Value_27;
                    local Vector2_Value_8 = Vector2_New(0, 0.5);
                    Frame_7.AnchorPoint = Vector2_Value_8;
                    Frame_7.BackgroundColor3 = Color3_Value_6;
                    Frame_7.BackgroundTransparency = 0.3;
                    Frame_7.ZIndex = 1000;
                    Frame_7.Parent = Frame_6;
                    local UICorner_5 = Instance.new("UICorner");
                    local UDim_Value_5 = UDim_New(1, 0);
                    UICorner_5.CornerRadius = UDim_Value_5;
                    UICorner_5.Parent = Frame_7;
                    local UIStroke_4 = Instance.new("UIStroke");
                    UIStroke_4.Color = Color3_Value_4;
                    UIStroke_4.Thickness = 2;
                    UIStroke_4.Transparency = 0.2;
                    UIStroke_4.ZIndex = 1001;
                    UIStroke_4.Parent = Frame_7;
                    local ImageLabel_2 = Instance.new("ImageLabel");
                    ImageLabel_2.Name = "Icon";
                    local UDim2_Value_28 = UDim2_New(1, 0, 1, 0);
                    ImageLabel_2.Size = UDim2_Value_28;
                    local UDim2_Value_29 = UDim2_New(0.5, 0, 0.5, 0);
                    ImageLabel_2.Position = UDim2_Value_29;
                    local Vector2_Value_9 = Vector2_New(0.5, 0.5);
                    ImageLabel_2.AnchorPoint = Vector2_Value_9;
                    ImageLabel_2.BackgroundTransparency = 1;
                    ImageLabel_2.Image = "rbxassetid://97837015726495";
                    local Fit_2 = Enum_ScaleType.Fit;
                    ImageLabel_2.ScaleType = Fit_2;
                    ImageLabel_2.ZIndex = 1002;
                    ImageLabel_2.ImageTransparency = 1;
                    ImageLabel_2.Parent = Frame_7;
                    local UICorner_6 = Instance.new("UICorner");
                    local UDim_Value_6 = UDim_New(1, 0);
                    UICorner_6.CornerRadius = UDim_Value_6;
                    UICorner_6.Parent = ImageLabel_2;
                    local Frame_8 = Instance.new("Frame");
                    Frame_8.Name = "MessageFrame";
                    local UDim2_Value_30 = UDim2_New(0.65, 0, 0.8, 0);
                    Frame_8.Size = UDim2_Value_30;
                    local UDim2_Value_31 = UDim2_New(0.22, 0, 0.5, 0);
                    Frame_8.Position = UDim2_Value_31;
                    local Vector2_Value_10 = Vector2_New(0, 0.5);
                    Frame_8.AnchorPoint = Vector2_Value_10;
                    Frame_8.BackgroundTransparency = 1;
                    Frame_8.ZIndex = 1000;
                    Frame_8.Parent = Frame_6;
                    local TextLabel_4 = Instance.new("TextLabel");
                    TextLabel_4.Name = "Message";
                    local UDim2_Value_32 = UDim2_New(1, 0, 1, 0);
                    TextLabel_4.Size = UDim2_Value_32;
                    TextLabel_4.BackgroundTransparency = 1;
                    TextLabel_4.Text = "正在收集文本...";
                    TextLabel_4.TextColor3 = Color3_Value_5;
                    TextLabel_4.TextSize = 18;
                    TextLabel_4.TextWrapped = true;
                    local RobotoCondensed_2 = Enum_Font.RobotoCondensed;
                    TextLabel_4.Font = RobotoCondensed_2;
                    local Left_4 = Enum_TextXAlignment.Left;
                    TextLabel_4.TextXAlignment = Left_4;
                    local Center_2 = Enum_TextYAlignment.Center;
                    TextLabel_4.TextYAlignment = Center_2;
                    TextLabel_4.ZIndex = 1001;
                    TextLabel_4.TextTransparency = 1;
                    TextLabel_4.Parent = Frame_8;
                    local UIGradient_3 = Instance.new("UIGradient");
                    local Color3_Value_11 = Color3_FromRGB(94, 78, 71);
                    local ColorSequenceKeypoint_Value_4 = ColorSequenceKeypoint_New(0, Color3_Value_11);
                    local Color3_Value_12 = Color3_FromRGB(84, 68, 61);
                    local ColorSequenceKeypoint_Value_5 = ColorSequenceKeypoint_New(0.5, Color3_Value_12);
                    local Color3_Value_13 = Color3_FromRGB(94, 78, 71);
                    local ColorSequenceKeypoint_Value_6 = ColorSequenceKeypoint_New(1, Color3_Value_13);
                    local ColorSequence_Value_2 = ColorSequence_New({
                        ColorSequenceKeypoint_Value_4,
                        ColorSequenceKeypoint_Value_5,
                        ColorSequenceKeypoint_Value_6,
                    });
                    UIGradient_3.Color = ColorSequence_Value_2;
                    local NumberSequenceKeypoint_Value_4 = NumberSequenceKeypoint_New(0, 0.2);
                    local NumberSequenceKeypoint_Value_5 = NumberSequenceKeypoint_New(0.5, 0.25);
                    local NumberSequenceKeypoint_Value_6 = NumberSequenceKeypoint_New(1, 0.2);
                    local NumberSequence_Value_2 = NumberSequence_New({
                        NumberSequenceKeypoint_Value_4,
                        NumberSequenceKeypoint_Value_5,
                        NumberSequenceKeypoint_Value_6,
                    });
                    UIGradient_3.Transparency = NumberSequence_Value_2;
                    UIGradient_3.Rotation = 90;
                    UIGradient_3.Parent = Frame_6;
                    local Success_10065, Error_Message_10065 = pcall(function(...)
                        local Sound_2 = Instance.new("Sound");
                        Sound_2.SoundId = "rbxassetid://99469140131424";
                        Sound_2.Volume = 10;
                        Sound_2.Parent = workspace;
                        local Connection_8;
                        Connection_8 = Sound_2.Ended:Connect(function() -- args: SoundId_2;
                            local Destroy_2 = Sound_2:Destroy();

                        end);
                        local Play_6 = Sound_2:Play();
                    end) -- true
                    local Array_5 = {};
                    local var431 = table.insert(Array_5, 1, Frame_5);
                    local New_8 = TweenInfo.new;
                    local Back_2 = Enum_EasingStyle.Back;
                    local Out_5 = Enum_EasingDirection.Out;
                    local _call434 = New_8(0.4, Back_2, Out_5);
                    local UDim2_Value_33 = UDim2_New(0.4, 0, 0.15, 0);
                    local str_7 = TweenService:Create(Frame_5, _call434, {
                        Size = UDim2_Value_33,
                    });
                    local New_9 = TweenInfo.new;
                    local Quad_4 = Enum_EasingStyle.Quad;
                    local Out_6 = Enum_EasingDirection.Out;
                    local _call437 = New_9(0.5, Quad_4, Out_6, 0, false, 0.3);
                    local str_8 = TweenService:Create(TextLabel_3, _call437, {
                        TextTransparency = 0,
                    });
                    local New_10 = TweenInfo.new;
                    local Quad_5 = Enum_EasingStyle.Quad;
                    local Out_7 = Enum_EasingDirection.Out;
                    local _call440 = New_10(0.5, Quad_5, Out_7, 0, false, 0.4);
                    local str_9 = TweenService:Create(ImageLabel_2, _call440, {
                        ImageTransparency = 0,
                    });
                    local New_11 = TweenInfo.new;
                    local Quad_6 = Enum_EasingStyle.Quad;
                    local Out_8 = Enum_EasingDirection.Out;
                    local _call443 = New_11(0.6, Quad_6, Out_8, 0, false, 0.5);
                    local str_10 = TweenService:Create(TextLabel_4, _call443, {
                        TextTransparency = 0,
                    });
                    local Play_7 = str_7.Play;
                    local Play_8 = str_7:Play();
                    local Completed_2 = str_7.Completed;
                    local Connect_7 = Completed_2.Connect;
                    local Connected_5 = Completed_2:Connect(function()
                        local Play_27 = str_8.Play;
                        local Play_28 = str_8:Play();
                        local Play_29 = str_9.Play;
                        local Play_30 = str_9:Play();
                        local Play_31 = str_10.Play;
                        local Play_32 = str_10:Play();
                        local Completed_7 = str_10.Completed;
                        local Connect_14 = Completed_7.Connect;
                        local Connected_12 = Completed_7:Connect(function()

                        end);

                    end);
                    local Spawned_2 = task.delay(5, function()
                        local Not_Frame_5 = not Frame_5;
                        -- false
                        local Parent_5 = Frame_5.Parent;
                        local Not_Parent_5 = not Parent_5;
                        -- false
                        local var907 = (Not_Frame_5 or Not_Parent_5); -- false
                        if var907 then -- didnt run, expr id 709, has no else.
                        end
                        local New_26 = TweenInfo.new;
                        local Quad_16 = Enum_EasingStyle.Quad;
                        local In_6 = Enum_EasingDirection.In;
                        local _call910 = New_26(0.3, Quad_16, In_6);
                        local str_106 = TweenService:Create(TextLabel_3, _call910, {
                            TextTransparency = 1,
                        });
                        local New_27 = TweenInfo.new;
                        local Quad_17 = Enum_EasingStyle.Quad;
                        local In_7 = Enum_EasingDirection.In;
                        local _call913 = New_27(0.3, Quad_17, In_7);
                        local str_107 = TweenService:Create(ImageLabel_2, _call913, {
                            ImageTransparency = 1,
                        });
                        local New_28 = TweenInfo.new;
                        local Quad_18 = Enum_EasingStyle.Quad;
                        local In_8 = Enum_EasingDirection.In;
                        local _call916 = New_28(0.3, Quad_18, In_8);
                        local str_108 = TweenService:Create(TextLabel_4, _call916, {
                            TextTransparency = 1,
                        });
                        local New_29 = TweenInfo.new;
                        local Back_6 = Enum_EasingStyle.Back;
                        local In_9 = Enum_EasingDirection.In;
                        local _call919 = New_29(0.5, Back_6, In_9, 0, false, 0.3);
                        local UDim2_Value_65 = UDim2_New(0, 0, 0, 0);
                        local str_109 = TweenService:Create(Frame_5, _call919, {
                            Size = UDim2_Value_65,
                        });
                        local Play_33 = str_106.Play;
                        local Play_34 = str_106:Play();
                        local Play_35 = str_107.Play;
                        local Play_36 = str_107:Play();
                        local Play_37 = str_108.Play;
                        local Play_38 = str_108:Play();
                        local Completed_8 = str_108.Completed;
                        local Connect_15 = Completed_8.Connect;
                        local Connected_13 = Completed_8:Connect(function()
                            local Play_68 = str_109.Play;
                            local Play_69 = str_109:Play();
                            local Completed_15 = str_109.Completed;
                            local Connect_22 = Completed_15.Connect;
                            local Connected_20 = Completed_15:Connect(function()
                                local Parent_11 = Frame_5.Parent;
                                local var1048 = (Frame_5 and Parent_11); -- ScreenGui_3
                                if var1048 then -- ran, expr id 978, has no else.
                                    local Destroy_7 = Frame_5:Destroy();
                                end

                            end);

                        end);

                    end);
                    local Spawned_3 = task.spawn(function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
                        local Success_11100, Error_Message_11100 = pcall(function(...)
                            local Success_11113, Error_Message_11113 = pcall(function(...)
                                local Players_9 = game:GetService("Players");
                                local LocalPlayer_10 = Players.LocalPlayer;
                                local PlayerGui_5 = LocalPlayer:WaitForChild("PlayerGui");
                                local GetDescendants = PlayerGui_5.GetDescendants;
                                local Descendants = PlayerGui_5:GetDescendants();
                                for i, v in ipairs(Descendants) do
                                    local IsA_2 = v.IsA;
                                    local TextLabel_9 = v:IsA("TextLabel");
                                    local Not_TextLabel_9 = not TextLabel_9;
                                    -- false
                                    if Not_TextLabel_9 then -- didnt run, expr id 710, has an else.
                                    else
                                        local Text = v.Text;
                                        local Not_Text = not Text;
                                        -- false
                                        if Text then -- ran, expr id 711, has an else.
                                            local Text_is_string = (Text == "");
                                            -- false, eq id 7
                                            if Text_is_string then -- didnt run, expr id 712, has no else.
                                            end
                                            local Len_Text = #Text;
                                            local var924 = (1 < Len_Text); -- nil
                                            local Not_Var924 = not var924;
                                            -- true
                                            if var924 then -- didnt run, expr id 713, has an else.
                                            else
                                            end
                                            local CoreGui_2 = game:GetService("CoreGui");
                                            local Descendants_2 = CoreGui:GetDescendants();
                                            for i_2, v_2 in ipairs(Descendants_2) do
                                                local IsA_3 = v_2.IsA;
                                                local TextLabel_10 = v_2:IsA("TextLabel");
                                                local Not_TextLabel_10 = not TextLabel_10;
                                                -- false
                                                if Not_TextLabel_10 then -- didnt run, expr id 714, has an else.
                                                else
                                                local Text_2 = v_2.Text;
                                                local Not_Text_2 = not Text_2;
                                                -- false
                                                if Text_2 then -- ran, expr id 715, has an else.
                                                local Text_2_is_string = (Text_2 == "");
                                                -- false, eq id 8
                                                if Text_2_is_string then -- didnt run, expr id 716, has no else.
                                                end
                                                local Len_Text_2 = #Text_2;
                                                local var924 = (1 < Len_Text_2); -- nil
                                                local Not_Var924_2 = not var924;
                                                -- true
                                                if var924 then -- didnt run, expr id 717, has an else.
                                                else
                                                end
                                                local Waited_For_210 = task.wait(1);
                                                end
                                                end
                                            end
                                        end
                                    end
                                end
                            end) -- true, false, 5, 5
                            local Not_PlayerGui_4_6 = not PlayerGui_4;
                            -- false
                            if Not_PlayerGui_4_6 then -- didnt run, expr id 718, has no else.
                            end
                            local Not_PlayerGui_4_7 = not PlayerGui_4;
                            -- false
                            if Not_PlayerGui_4_7 then -- didnt run, expr id 719, has no else.
                            end
                            local Not_ScreenGui_3_3 = not ScreenGui_3;
                            -- false
                            local Parent_6 = ScreenGui_3.Parent;
                            local Not_Parent_6 = not Parent_6;
                            -- false
                            local var925 = (Not_ScreenGui_3_3 or Not_Parent_6); -- false
                            if var925 then -- didnt run, expr id 720, has no else.
                            end
                            local Frame_17 = Instance.new("Frame");
                            Frame_17.Name = "NotificationContainer";
                            local UDim2_Value_66 = UDim2_New(0.4, 0, 0.15, 0);
                            Frame_17.Size = UDim2_Value_66;
                            local UDim2_Value_67 = UDim2_New(0.5, 0, 0.08, 0);
                            Frame_17.Position = UDim2_Value_67;
                            local Vector2_Value_21 = Vector2_New(0.5, 0);
                            Frame_17.AnchorPoint = Vector2_Value_21;
                            Frame_17.BackgroundTransparency = 1;
                            Frame_17.ZIndex = 999;
                            Frame_17.Parent = ScreenGui_3;
                            local UDim2_Value_68 = UDim2_New(0, 0, 0, 0);
                            Frame_17.Size = UDim2_Value_68;
                            Frame_17.BackgroundTransparency = 1;
                            local TextLabel_11 = Instance.new("TextLabel");
                            TextLabel_11.Name = "EntityNotice";
                            local UDim2_Value_69 = UDim2_New(0.9, 0, 0.25, 0);
                            TextLabel_11.Size = UDim2_Value_69;
                            local UDim2_Value_70 = UDim2_New(0.05, 0, 0, 0);
                            TextLabel_11.Position = UDim2_Value_70;
                            TextLabel_11.BackgroundTransparency = 1;
                            TextLabel_11.Text = "ENTITY NOTICE";
                            TextLabel_11.TextColor3 = Color3_Value_4;
                            TextLabel_11.TextSize = 20;
                            local Oswald_5 = Enum_Font.Oswald;
                            TextLabel_11.Font = Oswald_5;
                            local New_30 = Font.new;
                            local Bold_5 = Enum_FontWeight.Bold;
                            local Normal_5 = Enum_FontStyle.Normal;
                            local _call929 = New_30("rbxasset://fonts/families/Oswald.json", Bold_5, Normal_5);
                            TextLabel_11.FontFace = _call929;
                            local Left_9 = Enum_TextXAlignment.Left;
                            TextLabel_11.TextXAlignment = Left_9;
                            local Bottom_5 = Enum_TextYAlignment.Bottom;
                            TextLabel_11.TextYAlignment = Bottom_5;
                            TextLabel_11.ZIndex = 1000;
                            TextLabel_11.TextTransparency = 1;
                            TextLabel_11.Parent = Frame_17;
                            local Frame_18 = Instance.new("Frame");
                            Frame_18.Name = "Notification";
                            local UDim2_Value_71 = UDim2_New(0.95, 0, 0.7, 0);
                            Frame_18.Size = UDim2_Value_71;
                            local UDim2_Value_72 = UDim2_New(0.025, 0, 0.3, 0);
                            Frame_18.Position = UDim2_Value_72;
                            local Vector2_Value_22 = Vector2_New(0, 0);
                            Frame_18.AnchorPoint = Vector2_Value_22;
                            Frame_18.BackgroundColor3 = Color3_Value_6;
                            Frame_18.BackgroundTransparency = 0.2;
                            Frame_18.BorderSizePixel = 0;
                            Frame_18.ZIndex = 999;
                            Frame_18.Parent = Frame_17;
                            local UICorner_13 = Instance.new("UICorner");
                            local UDim_Value_13 = UDim_New(0, 10);
                            UICorner_13.CornerRadius = UDim_Value_13;
                            UICorner_13.Parent = Frame_18;
                            local UIStroke_9 = Instance.new("UIStroke");
                            UIStroke_9.Color = Color3_Value_4;
                            UIStroke_9.Thickness = 3;
                            UIStroke_9.Transparency = 0.1;
                            UIStroke_9.ZIndex = 1000;
                            UIStroke_9.Parent = Frame_18;
                            local Frame_19 = Instance.new("Frame");
                            Frame_19.Name = "IconContainer";
                            local UDim2_Value_73 = UDim2_New(0, 50, 0, 50);
                            Frame_19.Size = UDim2_Value_73;
                            local UDim2_Value_74 = UDim2_New(0.05, 0, 0.5, 0);
                            Frame_19.Position = UDim2_Value_74;
                            local Vector2_Value_23 = Vector2_New(0, 0.5);
                            Frame_19.AnchorPoint = Vector2_Value_23;
                            Frame_19.BackgroundColor3 = Color3_Value_6;
                            Frame_19.BackgroundTransparency = 0.3;
                            Frame_19.ZIndex = 1000;
                            Frame_19.Parent = Frame_18;
                            local UICorner_14 = Instance.new("UICorner");
                            local UDim_Value_14 = UDim_New(1, 0);
                            UICorner_14.CornerRadius = UDim_Value_14;
                            UICorner_14.Parent = Frame_19;
                            local UIStroke_10 = Instance.new("UIStroke");
                            UIStroke_10.Color = Color3_Value_4;
                            UIStroke_10.Thickness = 2;
                            UIStroke_10.Transparency = 0.2;
                            UIStroke_10.ZIndex = 1001;
                            UIStroke_10.Parent = Frame_19;
                            local ImageLabel_5 = Instance.new("ImageLabel");
                            ImageLabel_5.Name = "Icon";
                            local UDim2_Value_75 = UDim2_New(1, 0, 1, 0);
                            ImageLabel_5.Size = UDim2_Value_75;
                            local UDim2_Value_76 = UDim2_New(0.5, 0, 0.5, 0);
                            ImageLabel_5.Position = UDim2_Value_76;
                            local Vector2_Value_24 = Vector2_New(0.5, 0.5);
                            ImageLabel_5.AnchorPoint = Vector2_Value_24;
                            ImageLabel_5.BackgroundTransparency = 1;
                            ImageLabel_5.Image = "rbxassetid://97837015726495";
                            local Fit_5 = Enum_ScaleType.Fit;
                            ImageLabel_5.ScaleType = Fit_5;
                            ImageLabel_5.ZIndex = 1002;
                            ImageLabel_5.ImageTransparency = 1;
                            ImageLabel_5.Parent = Frame_19;
                            local UICorner_15 = Instance.new("UICorner");
                            local UDim_Value_15 = UDim_New(1, 0);
                            UICorner_15.CornerRadius = UDim_Value_15;
                            UICorner_15.Parent = ImageLabel_5;
                            local Frame_20 = Instance.new("Frame");
                            Frame_20.Name = "MessageFrame";
                            local UDim2_Value_77 = UDim2_New(0.65, 0, 0.8, 0);
                            Frame_20.Size = UDim2_Value_77;
                            local UDim2_Value_78 = UDim2_New(0.22, 0, 0.5, 0);
                            Frame_20.Position = UDim2_Value_78;
                            local Vector2_Value_25 = Vector2_New(0, 0.5);
                            Frame_20.AnchorPoint = Vector2_Value_25;
                            Frame_20.BackgroundTransparency = 1;
                            Frame_20.ZIndex = 1000;
                            Frame_20.Parent = Frame_18;
                            local TextLabel_12 = Instance.new("TextLabel");
                            TextLabel_12.Name = "Message";
                            local UDim2_Value_79 = UDim2_New(1, 0, 1, 0);
                            TextLabel_12.Size = UDim2_Value_79;
                            TextLabel_12.BackgroundTransparency = 1;
                            TextLabel_12.Text = "首次汉化成功: 0 个文本";
                            TextLabel_12.TextColor3 = Color3_Value_5;
                            TextLabel_12.TextSize = 18;
                            TextLabel_12.TextWrapped = true;
                            local RobotoCondensed_5 = Enum_Font.RobotoCondensed;
                            TextLabel_12.Font = RobotoCondensed_5;
                            local Left_10 = Enum_TextXAlignment.Left;
                            TextLabel_12.TextXAlignment = Left_10;
                            local Center_5 = Enum_TextYAlignment.Center;
                            TextLabel_12.TextYAlignment = Center_5;
                            TextLabel_12.ZIndex = 1001;
                            TextLabel_12.TextTransparency = 1;
                            TextLabel_12.Parent = Frame_20;
                            local UIGradient_6 = Instance.new("UIGradient");
                            local Color3_Value_20 = Color3_FromRGB(94, 78, 71);
                            local ColorSequenceKeypoint_Value_13 = ColorSequenceKeypoint_New(0, Color3_Value_20);
                            local Color3_Value_21 = Color3_FromRGB(84, 68, 61);
                            local ColorSequenceKeypoint_Value_14 = ColorSequenceKeypoint_New(0.5, Color3_Value_21);
                            local Color3_Value_22 = Color3_FromRGB(94, 78, 71);
                            local ColorSequenceKeypoint_Value_15 = ColorSequenceKeypoint_New(1, Color3_Value_22);
                            local ColorSequence_Value_5 = ColorSequence_New({
                                ColorSequenceKeypoint_Value_13,
                                ColorSequenceKeypoint_Value_14,
                                ColorSequenceKeypoint_Value_15,
                            });
                            UIGradient_6.Color = ColorSequence_Value_5;
                            local NumberSequenceKeypoint_Value_13 = NumberSequenceKeypoint_New(0, 0.2);
                            local NumberSequenceKeypoint_Value_14 = NumberSequenceKeypoint_New(0.5, 0.25);
                            local NumberSequenceKeypoint_Value_15 = NumberSequenceKeypoint_New(1, 0.2);
                            local NumberSequence_Value_5 = NumberSequence_New({
                                NumberSequenceKeypoint_Value_13,
                                NumberSequenceKeypoint_Value_14,
                                NumberSequenceKeypoint_Value_15,
                            });
                            UIGradient_6.Transparency = NumberSequence_Value_5;
                            UIGradient_6.Rotation = 90;
                            UIGradient_6.Parent = Frame_18;
                            local Success_11233, Error_Message_11233 = pcall(function(...)
                                local Sound_5 = Instance.new("Sound");
                                Sound_5.SoundId = "rbxassetid://99469140131424";
                                Sound_5.Volume = 10;
                                Sound_5.Parent = workspace;
                                local Connection_12;
                                Connection_12 = Sound_5.Ended:Connect(function() -- args: SoundId_5;
                                    local Destroy_5 = Sound_5:Destroy();

                                end);
                                local Play_39 = Sound_5:Play();
                            end) -- true
                            local Array_8 = {};
                            local var936 = table.insert(Array_8, 1, Frame_17);
                            local New_31 = TweenInfo.new;
                            local Back_7 = Enum_EasingStyle.Back;
                            local Out_17 = Enum_EasingDirection.Out;
                            local _call939 = New_31(0.4, Back_7, Out_17);
                            local UDim2_Value_80 = UDim2_New(0.4, 0, 0.15, 0);
                            local str_110 = TweenService:Create(Frame_17, _call939, {
                                Size = UDim2_Value_80,
                            });
                            local New_32 = TweenInfo.new;
                            local Quad_19 = Enum_EasingStyle.Quad;
                            local Out_18 = Enum_EasingDirection.Out;
                            local _call942 = New_32(0.5, Quad_19, Out_18, 0, false, 0.3);
                            local str_111 = TweenService:Create(TextLabel_11, _call942, {
                                TextTransparency = 0,
                            });
                            local New_33 = TweenInfo.new;
                            local Quad_20 = Enum_EasingStyle.Quad;
                            local Out_19 = Enum_EasingDirection.Out;
                            local _call945 = New_33(0.5, Quad_20, Out_19, 0, false, 0.4);
                            local str_112 = TweenService:Create(ImageLabel_5, _call945, {
                                ImageTransparency = 0,
                            });
                            local New_34 = TweenInfo.new;
                            local Quad_21 = Enum_EasingStyle.Quad;
                            local Out_20 = Enum_EasingDirection.Out;
                            local _call948 = New_34(0.6, Quad_21, Out_20, 0, false, 0.5);
                            local str_113 = TweenService:Create(TextLabel_12, _call948, {
                                TextTransparency = 0,
                            });
                            local Play_40 = str_110.Play;
                            local Play_41 = str_110:Play();
                            local Completed_9 = str_110.Completed;
                            local Connect_16 = Completed_9.Connect;
                            local Connected_14 = Completed_9:Connect(function()
                                local Play_70 = str_111.Play;
                                local Play_71 = str_111:Play();
                                local Play_72 = str_112.Play;
                                local Play_73 = str_112:Play();
                                local Play_74 = str_113.Play;
                                local Play_75 = str_113:Play();
                                local Completed_16 = str_113.Completed;
                                local Connect_23 = Completed_16.Connect;
                                local Connected_21 = Completed_16:Connect(function()

                                end);

                            end);
                            local Spawned_8 = task.delay(5, function()
                                local Not_Frame_17 = not Frame_17;
                                -- false
                                local Parent_9 = Frame_17.Parent;
                                local Not_Parent_9 = not Parent_9;
                                -- false
                                local var1026 = (Not_Frame_17 or Not_Parent_9); -- false
                                if var1026 then -- didnt run, expr id 976, has no else.
                                end
                                local New_43 = TweenInfo.new;
                                local Quad_28 = Enum_EasingStyle.Quad;
                                local In_18 = Enum_EasingDirection.In;
                                local _call1029 = New_43(0.3, Quad_28, In_18);
                                local str_122 = TweenService:Create(TextLabel_11, _call1029, {
                                    TextTransparency = 1,
                                });
                                local New_44 = TweenInfo.new;
                                local Quad_29 = Enum_EasingStyle.Quad;
                                local In_19 = Enum_EasingDirection.In;
                                local _call1032 = New_44(0.3, Quad_29, In_19);
                                local str_123 = TweenService:Create(ImageLabel_5, _call1032, {
                                    ImageTransparency = 1,
                                });
                                local New_45 = TweenInfo.new;
                                local Quad_30 = Enum_EasingStyle.Quad;
                                local In_20 = Enum_EasingDirection.In;
                                local _call1035 = New_45(0.3, Quad_30, In_20);
                                local str_124 = TweenService:Create(TextLabel_12, _call1035, {
                                    TextTransparency = 1,
                                });
                                local New_46 = TweenInfo.new;
                                local Back_10 = Enum_EasingStyle.Back;
                                local In_21 = Enum_EasingDirection.In;
                                local _call1038 = New_46(0.5, Back_10, In_21, 0, false, 0.3);
                                local UDim2_Value_83 = UDim2_New(0, 0, 0, 0);
                                local str_125 = TweenService:Create(Frame_17, _call1038, {
                                    Size = UDim2_Value_83,
                                });
                                local Play_76 = str_122.Play;
                                local Play_77 = str_122:Play();
                                local Play_78 = str_123.Play;
                                local Play_79 = str_123:Play();
                                local Play_80 = str_124.Play;
                                local Play_81 = str_124:Play();
                                local Completed_17 = str_124.Completed;
                                local Connect_24 = Completed_17.Connect;
                                local Connected_22 = Completed_17:Connect(function()
                                    local Play_86 = str_125.Play;
                                    local Play_87 = str_125:Play();
                                    local Completed_20 = str_125.Completed;
                                    local Connect_27 = Completed_20.Connect;
                                    local Connected_25 = Completed_20:Connect(function()
                                        local Parent_14 = Frame_17.Parent;
                                        local var1053 = (Frame_17 and Parent_14); -- ScreenGui_3
                                        if var1053 then -- ran, expr id 981, has no else.
                                            local Destroy_10 = Frame_17:Destroy();
                                        end

                                    end);

                                end);

                            end);
                        end) -- true

                    end);
                    local Spawned_4 = task.spawn(function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
                            local Success_11234, Error_Message_11234 = pcall(function(...)
                                local Not_Ext_1_0_38 = not ext_1_0;
                                -- false
                                if ext_1_0 then -- ran, expr id 721, has an else.
                                    local Success_11235, Error_Message_11235 = pcall(function(...)
                                        local Players_10 = game:GetService("Players");
                                        local LocalPlayer_11 = Players.LocalPlayer;
                                        local PlayerGui_6 = LocalPlayer:WaitForChild("PlayerGui");
                                        local GetDescendants_2 = PlayerGui_6.GetDescendants;
                                        local Descendants_3 = PlayerGui_6:GetDescendants();
                                        for i_3, v_3 in ipairs(Descendants_3) do
                                            local IsA_4 = v_3.IsA;
                                            local TextLabel_13 = v_3:IsA("TextLabel");
                                            local Not_TextLabel_13 = not TextLabel_13;
                                            -- false
                                            if Not_TextLabel_13 then -- didnt run, expr id 722, has an else.
                                            else
                                                local Text_3 = v_3.Text;
                                                local Not_Text_3 = not Text_3;
                                                -- false
                                                if Text_3 then -- ran, expr id 723, has an else.
                                                local Text_3_is_string = (Text_3 == "");
                                                -- false, eq id 9
                                                if Text_3_is_string then -- didnt run, expr id 724, has no else.
                                                end
                                                local Len_Text_3 = #Text_3;
                                                local var951 = (1 < Len_Text_3); -- nil
                                                local Not_Var951 = not var951;
                                                -- true
                                                if var951 then -- didnt run, expr id 725, has an else.
                                                else
                                                end
                                                local CoreGui_3 = game:GetService("CoreGui");
                                                local Descendants_4 = CoreGui:GetDescendants();
                                                for i_4, v_4 in ipairs(Descendants_4) do
                                                local IsA_5 = v_4.IsA;
                                                local TextLabel_14 = v_4:IsA("TextLabel");
                                                local Not_TextLabel_14 = not TextLabel_14;
                                                -- false
                                                if Not_TextLabel_14 then -- didnt run, expr id 726, has an else.
                                                else
                                                local Text_4 = v_4.Text;
                                                local Not_Text_4 = not Text_4;
                                                -- false
                                                if Text_4 then -- ran, expr id 727, has an else.
                                                local Text_4_is_string = (Text_4 == "");
                                                -- false, eq id 10
                                                if Text_4_is_string then -- didnt run, expr id 728, has no else.
                                                end
                                                local Len_Text_4 = #Text_4;
                                                local var951 = (1 < Len_Text_4); -- nil
                                                local Not_Var951_2 = not var951;
                                                -- true
                                                if var951 then -- didnt run, expr id 729, has an else.
                                                else
                                                end
                                                local Waited_For_211 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end
                                    end) -- true, false, 5, 5
                                end
                                local Waited_For_212 = task.wait(ext_1_0);
                                local Not_Ext_1_0_39 = not ext_1_0;
                                -- false
                                if ext_1_0 then -- ran, expr id 730, has an else.
                                    local Success_11245, Error_Message_11245 = pcall(function(...)
                                        local Players_11 = game:GetService("Players");
                                        local LocalPlayer_12 = Players.LocalPlayer;
                                        local PlayerGui_7 = LocalPlayer:WaitForChild("PlayerGui");
                                        local GetDescendants_3 = PlayerGui_7.GetDescendants;
                                        local Descendants_5 = PlayerGui_7:GetDescendants();
                                        for i_5, v_5 in ipairs(Descendants_5) do
                                            local IsA_6 = v_5.IsA;
                                            local TextLabel_15 = v_5:IsA("TextLabel");
                                            local Not_TextLabel_15 = not TextLabel_15;
                                            -- false
                                            if Not_TextLabel_15 then -- didnt run, expr id 731, has an else.
                                            else
                                                local Text_5 = v_5.Text;
                                                local Not_Text_5 = not Text_5;
                                                -- false
                                                if Text_5 then -- ran, expr id 732, has an else.
                                                local Text_5_is_string = (Text_5 == "");
                                                -- false, eq id 11
                                                if Text_5_is_string then -- didnt run, expr id 733, has no else.
                                                end
                                                local Len_Text_5 = #Text_5;
                                                local var952 = (1 < Len_Text_5); -- nil
                                                local Not_Var952 = not var952;
                                                -- true
                                                if var952 then -- didnt run, expr id 734, has an else.
                                                else
                                                end
                                                local CoreGui_4 = game:GetService("CoreGui");
                                                local Descendants_6 = CoreGui:GetDescendants();
                                                for i_6, v_6 in ipairs(Descendants_6) do
                                                local IsA_7 = v_6.IsA;
                                                local TextLabel_16 = v_6:IsA("TextLabel");
                                                local Not_TextLabel_16 = not TextLabel_16;
                                                -- false
                                                if Not_TextLabel_16 then -- didnt run, expr id 735, has an else.
                                                else
                                                local Text_6 = v_6.Text;
                                                local Not_Text_6 = not Text_6;
                                                -- false
                                                if Text_6 then -- ran, expr id 736, has an else.
                                                local Text_6_is_string = (Text_6 == "");
                                                -- false, eq id 12
                                                if Text_6_is_string then -- didnt run, expr id 737, has no else.
                                                end
                                                local Len_Text_6 = #Text_6;
                                                local var952 = (1 < Len_Text_6); -- nil
                                                local Not_Var952_2 = not var952;
                                                -- true
                                                if var952 then -- didnt run, expr id 738, has an else.
                                                else
                                                end
                                                local Waited_For_213 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end
                                    end) -- true, false, 5, 5
                                end
                                local Waited_For_214 = task.wait(ext_1_0);
                                local Not_Ext_1_0_40 = not ext_1_0;
                                -- false
                                if ext_1_0 then -- ran, expr id 739, has an else.
                                    local Success_11246, Error_Message_11246 = pcall(function(...)
                                        local Players_12 = game:GetService("Players");
                                        local LocalPlayer_13 = Players.LocalPlayer;
                                        local PlayerGui_8 = LocalPlayer:WaitForChild("PlayerGui");
                                        local GetDescendants_4 = PlayerGui_8.GetDescendants;
                                        local Descendants_7 = PlayerGui_8:GetDescendants();
                                        for i_7, v_7 in ipairs(Descendants_7) do
                                            local IsA_8 = v_7.IsA;
                                            local TextLabel_17 = v_7:IsA("TextLabel");
                                            local Not_TextLabel_17 = not TextLabel_17;
                                            -- false
                                            if Not_TextLabel_17 then -- didnt run, expr id 740, has an else.
                                            else
                                                local Text_7 = v_7.Text;
                                                local Not_Text_7 = not Text_7;
                                                -- false
                                                if Text_7 then -- ran, expr id 741, has an else.
                                                local Text_7_is_string = (Text_7 == "");
                                                -- false, eq id 13
                                                if Text_7_is_string then -- didnt run, expr id 742, has no else.
                                                end
                                                local Len_Text_7 = #Text_7;
                                                local var953 = (1 < Len_Text_7); -- nil
                                                local Not_Var953 = not var953;
                                                -- true
                                                if var953 then -- didnt run, expr id 743, has an else.
                                                else
                                                end
                                                local CoreGui_5 = game:GetService("CoreGui");
                                                local Descendants_8 = CoreGui:GetDescendants();
                                                for i_8, v_8 in ipairs(Descendants_8) do
                                                local IsA_9 = v_8.IsA;
                                                local TextLabel_18 = v_8:IsA("TextLabel");
                                                local Not_TextLabel_18 = not TextLabel_18;
                                                -- false
                                                if Not_TextLabel_18 then -- didnt run, expr id 744, has an else.
                                                else
                                                local Text_8 = v_8.Text;
                                                local Not_Text_8 = not Text_8;
                                                -- false
                                                if Text_8 then -- ran, expr id 745, has an else.
                                                local Text_8_is_string = (Text_8 == "");
                                                -- false, eq id 14
                                                if Text_8_is_string then -- didnt run, expr id 746, has no else.
                                                end
                                                local Len_Text_8 = #Text_8;
                                                local var953 = (1 < Len_Text_8); -- nil
                                                local Not_Var953_2 = not var953;
                                                -- true
                                                if var953 then -- didnt run, expr id 747, has an else.
                                                else
                                                end
                                                local Waited_For_215 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end
                                    end) -- true, false, 5, 5
                                end
                                local Waited_For_216 = task.wait(ext_1_0);
                                local Not_Ext_1_0_41 = not ext_1_0;
                                -- false
                                if ext_1_0 then -- ran, expr id 748, has an else.
                                    local Success_11247, Error_Message_11247 = pcall(function(...)
                                        local Players_13 = game:GetService("Players");
                                        local LocalPlayer_14 = Players.LocalPlayer;
                                        local PlayerGui_9 = LocalPlayer:WaitForChild("PlayerGui");
                                        local GetDescendants_5 = PlayerGui_9.GetDescendants;
                                        local Descendants_9 = PlayerGui_9:GetDescendants();
                                        for i_9, v_9 in ipairs(Descendants_9) do
                                            local IsA_10 = v_9.IsA;
                                            local TextLabel_19 = v_9:IsA("TextLabel");
                                            local Not_TextLabel_19 = not TextLabel_19;
                                            -- false
                                            if Not_TextLabel_19 then -- didnt run, expr id 749, has an else.
                                            else
                                                local Text_9 = v_9.Text;
                                                local Not_Text_9 = not Text_9;
                                                -- false
                                                if Text_9 then -- ran, expr id 750, has an else.
                                                local Text_9_is_string = (Text_9 == "");
                                                -- false, eq id 15
                                                if Text_9_is_string then -- didnt run, expr id 751, has no else.
                                                end
                                                local Len_Text_9 = #Text_9;
                                                local var954 = (1 < Len_Text_9); -- nil
                                                local Not_Var954 = not var954;
                                                -- true
                                                if var954 then -- didnt run, expr id 752, has an else.
                                                else
                                                end
                                                local CoreGui_6 = game:GetService("CoreGui");
                                                local Descendants_10 = CoreGui:GetDescendants();
                                                for i_10, v_10 in ipairs(Descendants_10) do
                                                local IsA_11 = v_10.IsA;
                                                local TextLabel_20 = v_10:IsA("TextLabel");
                                                local Not_TextLabel_20 = not TextLabel_20;
                                                -- false
                                                if Not_TextLabel_20 then -- didnt run, expr id 753, has an else.
                                                else
                                                local Text_10 = v_10.Text;
                                                local Not_Text_10 = not Text_10;
                                                -- false
                                                if Text_10 then -- ran, expr id 754, has an else.
                                                local Text_10_is_string = (Text_10 == "");
                                                -- false, eq id 16
                                                if Text_10_is_string then -- didnt run, expr id 755, has no else.
                                                end
                                                local Len_Text_10 = #Text_10;
                                                local var954 = (1 < Len_Text_10); -- nil
                                                local Not_Var954_2 = not var954;
                                                -- true
                                                if var954 then -- didnt run, expr id 756, has an else.
                                                else
                                                end
                                                local Waited_For_217 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end
                                    end) -- true, false, 5, 5
                                end
                                local Waited_For_218 = task.wait(ext_1_0);
                                local Not_Ext_1_0_42 = not ext_1_0;
                                -- false
                                if ext_1_0 then -- ran, expr id 757, has an else.
                                    local Success_11248, Error_Message_11248 = pcall(function(...)
                                        local Players_14 = game:GetService("Players");
                                        local LocalPlayer_15 = Players.LocalPlayer;
                                        local PlayerGui_10 = LocalPlayer:WaitForChild("PlayerGui");
                                        local GetDescendants_6 = PlayerGui_10.GetDescendants;
                                        local Descendants_11 = PlayerGui_10:GetDescendants();
                                        for i_11, v_11 in ipairs(Descendants_11) do
                                            local IsA_12 = v_11.IsA;
                                            local TextLabel_21 = v_11:IsA("TextLabel");
                                            local Not_TextLabel_21 = not TextLabel_21;
                                            -- false
                                            if Not_TextLabel_21 then -- didnt run, expr id 758, has an else.
                                            else
                                                local Text_11 = v_11.Text;
                                                local Not_Text_11 = not Text_11;
                                                -- false
                                                if Text_11 then -- ran, expr id 759, has an else.
                                                local Text_11_is_string = (Text_11 == "");
                                                -- false, eq id 17
                                                if Text_11_is_string then -- didnt run, expr id 760, has no else.
                                                end
                                                local Len_Text_11 = #Text_11;
                                                local var955 = (1 < Len_Text_11); -- nil
                                                local Not_Var955 = not var955;
                                                -- true
                                                if var955 then -- didnt run, expr id 761, has an else.
                                                else
                                                end
                                                local CoreGui_7 = game:GetService("CoreGui");
                                                local Descendants_12 = CoreGui:GetDescendants();
                                                for i_12, v_12 in ipairs(Descendants_12) do
                                                local IsA_13 = v_12.IsA;
                                                local TextLabel_22 = v_12:IsA("TextLabel");
                                                local Not_TextLabel_22 = not TextLabel_22;
                                                -- false
                                                if Not_TextLabel_22 then -- didnt run, expr id 762, has an else.
                                                else
                                                local Text_12 = v_12.Text;
                                                local Not_Text_12 = not Text_12;
                                                -- false
                                                if Text_12 then -- ran, expr id 763, has an else.
                                                local Text_12_is_string = (Text_12 == "");
                                                -- false, eq id 18
                                                if Text_12_is_string then -- didnt run, expr id 764, has no else.
                                                end
                                                local Len_Text_12 = #Text_12;
                                                local var955 = (1 < Len_Text_12); -- nil
                                                local Not_Var955_2 = not var955;
                                                -- true
                                                if var955 then -- didnt run, expr id 765, has an else.
                                                else
                                                end
                                                local Waited_For_219 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end
                                    end) -- true, false, 5, 5
                                end
                                local Waited_For_220 = task.wait(ext_1_0);
                                local Not_Ext_1_0_43 = not ext_1_0;
                                -- false
                                if ext_1_0 then -- ran, expr id 766, has an else.
                                    local Success_11249, Error_Message_11249 = pcall(function(...)
                                        local Players_15 = game:GetService("Players");
                                        local LocalPlayer_16 = Players.LocalPlayer;
                                        local PlayerGui_11 = LocalPlayer:WaitForChild("PlayerGui");
                                        local GetDescendants_7 = PlayerGui_11.GetDescendants;
                                        local Descendants_13 = PlayerGui_11:GetDescendants();
                                        for i_13, v_13 in ipairs(Descendants_13) do
                                            local IsA_14 = v_13.IsA;
                                            local TextLabel_23 = v_13:IsA("TextLabel");
                                            local Not_TextLabel_23 = not TextLabel_23;
                                            -- false
                                            if Not_TextLabel_23 then -- didnt run, expr id 767, has an else.
                                            else
                                                local Text_13 = v_13.Text;
                                                local Not_Text_13 = not Text_13;
                                                -- false
                                                if Text_13 then -- ran, expr id 768, has an else.
                                                local Text_13_is_string = (Text_13 == "");
                                                -- false, eq id 19
                                                if Text_13_is_string then -- didnt run, expr id 769, has no else.
                                                end
                                                local Len_Text_13 = #Text_13;
                                                local var956 = (1 < Len_Text_13); -- nil
                                                local Not_Var956 = not var956;
                                                -- true
                                                if var956 then -- didnt run, expr id 770, has an else.
                                                else
                                                end
                                                local CoreGui_8 = game:GetService("CoreGui");
                                                local Descendants_14 = CoreGui:GetDescendants();
                                                for i_14, v_14 in ipairs(Descendants_14) do
                                                local IsA_15 = v_14.IsA;
                                                local TextLabel_24 = v_14:IsA("TextLabel");
                                                local Not_TextLabel_24 = not TextLabel_24;
                                                -- false
                                                if Not_TextLabel_24 then -- didnt run, expr id 771, has an else.
                                                else
                                                local Text_14 = v_14.Text;
                                                local Not_Text_14 = not Text_14;
                                                -- false
                                                if Text_14 then -- ran, expr id 772, has an else.
                                                local Text_14_is_string = (Text_14 == "");
                                                -- false, eq id 20
                                                if Text_14_is_string then -- didnt run, expr id 773, has no else.
                                                end
                                                local Len_Text_14 = #Text_14;
                                                local var956 = (1 < Len_Text_14); -- nil
                                                local Not_Var956_2 = not var956;
                                                -- true
                                                if var956 then -- didnt run, expr id 774, has an else.
                                                else
                                                end
                                                local Waited_For_221 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end
                                    end) -- true, false, 5, 5
                                end
                                local Waited_For_222 = task.wait(ext_1_0);
                                local Not_Ext_1_0_44 = not ext_1_0;
                                -- false
                                if ext_1_0 then -- ran, expr id 775, has an else.
                                    local Success_11250, Error_Message_11250 = pcall(function(...)
                                        local Players_16 = game:GetService("Players");
                                        local LocalPlayer_17 = Players.LocalPlayer;
                                        local PlayerGui_12 = LocalPlayer:WaitForChild("PlayerGui");
                                        local GetDescendants_8 = PlayerGui_12.GetDescendants;
                                        local Descendants_15 = PlayerGui_12:GetDescendants();
                                        for i_15, v_15 in ipairs(Descendants_15) do
                                            local IsA_16 = v_15.IsA;
                                            local TextLabel_25 = v_15:IsA("TextLabel");
                                            local Not_TextLabel_25 = not TextLabel_25;
                                            -- false
                                            if Not_TextLabel_25 then -- didnt run, expr id 776, has an else.
                                            else
                                                local Text_15 = v_15.Text;
                                                local Not_Text_15 = not Text_15;
                                                -- false
                                                if Text_15 then -- ran, expr id 777, has an else.
                                                local Text_15_is_string = (Text_15 == "");
                                                -- false, eq id 21
                                                if Text_15_is_string then -- didnt run, expr id 778, has no else.
                                                end
                                                local Len_Text_15 = #Text_15;
                                                local var957 = (1 < Len_Text_15); -- nil
                                                local Not_Var957 = not var957;
                                                -- true
                                                if var957 then -- didnt run, expr id 779, has an else.
                                                else
                                                end
                                                local CoreGui_9 = game:GetService("CoreGui");
                                                local Descendants_16 = CoreGui:GetDescendants();
                                                for i_16, v_16 in ipairs(Descendants_16) do
                                                local IsA_17 = v_16.IsA;
                                                local TextLabel_26 = v_16:IsA("TextLabel");
                                                local Not_TextLabel_26 = not TextLabel_26;
                                                -- false
                                                if Not_TextLabel_26 then -- didnt run, expr id 780, has an else.
                                                else
                                                local Text_16 = v_16.Text;
                                                local Not_Text_16 = not Text_16;
                                                -- false
                                                if Text_16 then -- ran, expr id 781, has an else.
                                                local Text_16_is_string = (Text_16 == "");
                                                -- false, eq id 22
                                                if Text_16_is_string then -- didnt run, expr id 782, has no else.
                                                end
                                                local Len_Text_16 = #Text_16;
                                                local var957 = (1 < Len_Text_16); -- nil
                                                local Not_Var957_2 = not var957;
                                                -- true
                                                if var957 then -- didnt run, expr id 783, has an else.
                                                else
                                                end
                                                local Waited_For_223 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end
                                    end) -- true, false, 5, 5
                                end
                                local Waited_For_224 = task.wait(ext_1_0);
                                local Not_Ext_1_0_45 = not ext_1_0;
                                -- false
                                if ext_1_0 then -- ran, expr id 784, has an else.
                                    local Success_11251, Error_Message_11251 = pcall(function(...)
                                        local Players_17 = game:GetService("Players");
                                        local LocalPlayer_18 = Players.LocalPlayer;
                                        local PlayerGui_13 = LocalPlayer:WaitForChild("PlayerGui");
                                        local GetDescendants_9 = PlayerGui_13.GetDescendants;
                                        local Descendants_17 = PlayerGui_13:GetDescendants();
                                        for i_17, v_17 in ipairs(Descendants_17) do
                                            local IsA_18 = v_17.IsA;
                                            local TextLabel_27 = v_17:IsA("TextLabel");
                                            local Not_TextLabel_27 = not TextLabel_27;
                                            -- false
                                            if Not_TextLabel_27 then -- didnt run, expr id 785, has an else.
                                            else
                                                local Text_17 = v_17.Text;
                                                local Not_Text_17 = not Text_17;
                                                -- false
                                                if Text_17 then -- ran, expr id 786, has an else.
                                                local Text_17_is_string = (Text_17 == "");
                                                -- false, eq id 23
                                                if Text_17_is_string then -- didnt run, expr id 787, has no else.
                                                end
                                                local Len_Text_17 = #Text_17;
                                                local var958 = (1 < Len_Text_17); -- nil
                                                local Not_Var958 = not var958;
                                                -- true
                                                if var958 then -- didnt run, expr id 788, has an else.
                                                else
                                                end
                                                local CoreGui_10 = game:GetService("CoreGui");
                                                local Descendants_18 = CoreGui:GetDescendants();
                                                for i_18, v_18 in ipairs(Descendants_18) do
                                                local IsA_19 = v_18.IsA;
                                                local TextLabel_28 = v_18:IsA("TextLabel");
                                                local Not_TextLabel_28 = not TextLabel_28;
                                                -- false
                                                if Not_TextLabel_28 then -- didnt run, expr id 789, has an else.
                                                else
                                                local Text_18 = v_18.Text;
                                                local Not_Text_18 = not Text_18;
                                                -- false
                                                if Text_18 then -- ran, expr id 790, has an else.
                                                local Text_18_is_string = (Text_18 == "");
                                                -- false, eq id 24
                                                if Text_18_is_string then -- didnt run, expr id 791, has no else.
                                                end
                                                local Len_Text_18 = #Text_18;
                                                local var958 = (1 < Len_Text_18); -- nil
                                                local Not_Var958_2 = not var958;
                                                -- true
                                                if var958 then -- didnt run, expr id 792, has an else.
                                                else
                                                end
                                                local Waited_For_225 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end
                                    end) -- true, false, 5, 5
                                end
                                local Waited_For_226 = task.wait(ext_1_0);
                                local Not_Ext_1_0_46 = not ext_1_0;
                                -- false
                                if ext_1_0 then -- ran, expr id 793, has an else.
                                    local Success_11252, Error_Message_11252 = pcall(function(...)
                                        local Players_18 = game:GetService("Players");
                                        local LocalPlayer_19 = Players.LocalPlayer;
                                        local PlayerGui_14 = LocalPlayer:WaitForChild("PlayerGui");
                                        local GetDescendants_10 = PlayerGui_14.GetDescendants;
                                        local Descendants_19 = PlayerGui_14:GetDescendants();
                                        for i_19, v_19 in ipairs(Descendants_19) do
                                            local IsA_20 = v_19.IsA;
                                            local TextLabel_29 = v_19:IsA("TextLabel");
                                            local Not_TextLabel_29 = not TextLabel_29;
                                            -- false
                                            if Not_TextLabel_29 then -- didnt run, expr id 794, has an else.
                                            else
                                                local Text_19 = v_19.Text;
                                                local Not_Text_19 = not Text_19;
                                                -- false
                                                if Text_19 then -- ran, expr id 795, has an else.
                                                local Text_19_is_string = (Text_19 == "");
                                                -- false, eq id 25
                                                if Text_19_is_string then -- didnt run, expr id 796, has no else.
                                                end
                                                local Len_Text_19 = #Text_19;
                                                local var959 = (1 < Len_Text_19); -- nil
                                                local Not_Var959 = not var959;
                                                -- true
                                                if var959 then -- didnt run, expr id 797, has an else.
                                                else
                                                end
                                                local CoreGui_11 = game:GetService("CoreGui");
                                                local Descendants_20 = CoreGui:GetDescendants();
                                                for i_20, v_20 in ipairs(Descendants_20) do
                                                local IsA_21 = v_20.IsA;
                                                local TextLabel_30 = v_20:IsA("TextLabel");
                                                local Not_TextLabel_30 = not TextLabel_30;
                                                -- false
                                                if Not_TextLabel_30 then -- didnt run, expr id 798, has an else.
                                                else
                                                local Text_20 = v_20.Text;
                                                local Not_Text_20 = not Text_20;
                                                -- false
                                                if Text_20 then -- ran, expr id 799, has an else.
                                                local Text_20_is_string = (Text_20 == "");
                                                -- false, eq id 26
                                                if Text_20_is_string then -- didnt run, expr id 800, has no else.
                                                end
                                                local Len_Text_20 = #Text_20;
                                                local var959 = (1 < Len_Text_20); -- nil
                                                local Not_Var959_2 = not var959;
                                                -- true
                                                if var959 then -- didnt run, expr id 801, has an else.
                                                else
                                                end
                                                local Waited_For_227 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end
                                    end) -- true, false, 5, 5
                                end
                                local Waited_For_228 = task.wait(ext_1_0);
                                local Not_Ext_1_0_47 = not ext_1_0;
                                -- false
                                if ext_1_0 then -- ran, expr id 802, has an else.
                                    local Success_11253, Error_Message_11253 = pcall(function(...)
                                        local Players_19 = game:GetService("Players");
                                        local LocalPlayer_20 = Players.LocalPlayer;
                                        local PlayerGui_15 = LocalPlayer:WaitForChild("PlayerGui");
                                        local GetDescendants_11 = PlayerGui_15.GetDescendants;
                                        local Descendants_21 = PlayerGui_15:GetDescendants();
                                        for i_21, v_21 in ipairs(Descendants_21) do
                                            local IsA_22 = v_21.IsA;
                                            local TextLabel_31 = v_21:IsA("TextLabel");
                                            local Not_TextLabel_31 = not TextLabel_31;
                                            -- false
                                            if Not_TextLabel_31 then -- didnt run, expr id 803, has an else.
                                            else
                                                local Text_21 = v_21.Text;
                                                local Not_Text_21 = not Text_21;
                                                -- false
                                                if Text_21 then -- ran, expr id 804, has an else.
                                                local Text_21_is_string = (Text_21 == "");
                                                -- false, eq id 27
                                                if Text_21_is_string then -- didnt run, expr id 805, has no else.
                                                end
                                                local Len_Text_21 = #Text_21;
                                                local var960 = (1 < Len_Text_21); -- nil
                                                local Not_Var960 = not var960;
                                                -- true
                                                if var960 then -- didnt run, expr id 806, has an else.
                                                else
                                                end
                                                local CoreGui_12 = game:GetService("CoreGui");
                                                local Descendants_22 = CoreGui:GetDescendants();
                                                for i_22, v_22 in ipairs(Descendants_22) do
                                                local IsA_23 = v_22.IsA;
                                                local TextLabel_32 = v_22:IsA("TextLabel");
                                                local Not_TextLabel_32 = not TextLabel_32;
                                                -- false
                                                if Not_TextLabel_32 then -- didnt run, expr id 807, has an else.
                                                else
                                                local Text_22 = v_22.Text;
                                                local Not_Text_22 = not Text_22;
                                                -- false
                                                if Text_22 then -- ran, expr id 808, has an else.
                                                local Text_22_is_string = (Text_22 == "");
                                                -- false, eq id 28
                                                if Text_22_is_string then -- didnt run, expr id 809, has no else.
                                                end
                                                local Len_Text_22 = #Text_22;
                                                local var960 = (1 < Len_Text_22); -- nil
                                                local Not_Var960_2 = not var960;
                                                -- true
                                                if var960 then -- didnt run, expr id 810, has an else.
                                                else
                                                end
                                                local Waited_For_229 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end
                                    end) -- true, false, 5, 5
                                end
                                local Waited_For_230 = task.wait(ext_1_0);
                                local Not_Ext_1_0_48 = not ext_1_0;
                                -- false
                                if ext_1_0 then -- ran, expr id 811, has an else.
                                    local Success_11254, Error_Message_11254 = pcall(function(...)
                                        local Players_20 = game:GetService("Players");
                                        local LocalPlayer_21 = Players.LocalPlayer;
                                        local PlayerGui_16 = LocalPlayer:WaitForChild("PlayerGui");
                                        local GetDescendants_12 = PlayerGui_16.GetDescendants;
                                        local Descendants_23 = PlayerGui_16:GetDescendants();
                                        for i_23, v_23 in ipairs(Descendants_23) do
                                            local IsA_24 = v_23.IsA;
                                            local TextLabel_33 = v_23:IsA("TextLabel");
                                            local Not_TextLabel_33 = not TextLabel_33;
                                            -- false
                                            if Not_TextLabel_33 then -- didnt run, expr id 812, has an else.
                                            else
                                                local Text_23 = v_23.Text;
                                                local Not_Text_23 = not Text_23;
                                                -- false
                                                if Text_23 then -- ran, expr id 813, has an else.
                                                local Text_23_is_string = (Text_23 == "");
                                                -- false, eq id 29
                                                if Text_23_is_string then -- didnt run, expr id 814, has no else.
                                                end
                                                local Len_Text_23 = #Text_23;
                                                local var961 = (1 < Len_Text_23); -- nil
                                                local Not_Var961 = not var961;
                                                -- true
                                                if var961 then -- didnt run, expr id 815, has an else.
                                                else
                                                end
                                                local CoreGui_13 = game:GetService("CoreGui");
                                                local Descendants_24 = CoreGui:GetDescendants();
                                                for i_24, v_24 in ipairs(Descendants_24) do
                                                local IsA_25 = v_24.IsA;
                                                local TextLabel_34 = v_24:IsA("TextLabel");
                                                local Not_TextLabel_34 = not TextLabel_34;
                                                -- false
                                                if Not_TextLabel_34 then -- didnt run, expr id 816, has an else.
                                                else
                                                local Text_24 = v_24.Text;
                                                local Not_Text_24 = not Text_24;
                                                -- false
                                                if Text_24 then -- ran, expr id 817, has an else.
                                                local Text_24_is_string = (Text_24 == "");
                                                -- false, eq id 30
                                                if Text_24_is_string then -- didnt run, expr id 818, has no else.
                                                end
                                                local Len_Text_24 = #Text_24;
                                                local var961 = (1 < Len_Text_24); -- nil
                                                local Not_Var961_2 = not var961;
                                                -- true
                                                if var961 then -- didnt run, expr id 819, has an else.
                                                else
                                                end
                                                local Waited_For_231 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end
                                    end) -- true, false, 5, 5
                                end
                                local Waited_For_232 = task.wait(ext_1_0);
                                local Not_Ext_1_0_49 = not ext_1_0;
                                -- false
                                if ext_1_0 then -- ran, expr id 820, has an else.
                                    local Success_11255, Error_Message_11255 = pcall(function(...)
                                        local Players_21 = game:GetService("Players");
                                        local LocalPlayer_22 = Players.LocalPlayer;
                                        local PlayerGui_17 = LocalPlayer:WaitForChild("PlayerGui");
                                        local GetDescendants_13 = PlayerGui_17.GetDescendants;
                                        local Descendants_25 = PlayerGui_17:GetDescendants();
                                        for i_25, v_25 in ipairs(Descendants_25) do
                                            local IsA_26 = v_25.IsA;
                                            local TextLabel_35 = v_25:IsA("TextLabel");
                                            local Not_TextLabel_35 = not TextLabel_35;
                                            -- false
                                            if Not_TextLabel_35 then -- didnt run, expr id 821, has an else.
                                            else
                                                local Text_25 = v_25.Text;
                                                local Not_Text_25 = not Text_25;
                                                -- false
                                                if Text_25 then -- ran, expr id 822, has an else.
                                                local Text_25_is_string = (Text_25 == "");
                                                -- false, eq id 31
                                                if Text_25_is_string then -- didnt run, expr id 823, has no else.
                                                end
                                                local Len_Text_25 = #Text_25;
                                                local var962 = (1 < Len_Text_25); -- nil
                                                local Not_Var962 = not var962;
                                                -- true
                                                if var962 then -- didnt run, expr id 824, has an else.
                                                else
                                                end
                                                local CoreGui_14 = game:GetService("CoreGui");
                                                local Descendants_26 = CoreGui:GetDescendants();
                                                for i_26, v_26 in ipairs(Descendants_26) do
                                                local IsA_27 = v_26.IsA;
                                                local TextLabel_36 = v_26:IsA("TextLabel");
                                                local Not_TextLabel_36 = not TextLabel_36;
                                                -- false
                                                if Not_TextLabel_36 then -- didnt run, expr id 825, has an else.
                                                else
                                                local Text_26 = v_26.Text;
                                                local Not_Text_26 = not Text_26;
                                                -- false
                                                if Text_26 then -- ran, expr id 826, has an else.
                                                local Text_26_is_string = (Text_26 == "");
                                                -- false, eq id 32
                                                if Text_26_is_string then -- didnt run, expr id 827, has no else.
                                                end
                                                local Len_Text_26 = #Text_26;
                                                local var962 = (1 < Len_Text_26); -- nil
                                                local Not_Var962_2 = not var962;
                                                -- true
                                                if var962 then -- didnt run, expr id 828, has an else.
                                                else
                                                end
                                                local Waited_For_233 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end
                                    end) -- true, false, 5, 5
                                end
                                local Waited_For_234 = task.wait(ext_1_0);
                                local Not_Ext_1_0_50 = not ext_1_0;
                                -- false
                                if ext_1_0 then -- ran, expr id 829, has an else.
                                    local Success_11256, Error_Message_11256 = pcall(function(...)
                                        local Players_22 = game:GetService("Players");
                                        local LocalPlayer_23 = Players.LocalPlayer;
                                        local PlayerGui_18 = LocalPlayer:WaitForChild("PlayerGui");
                                        local GetDescendants_14 = PlayerGui_18.GetDescendants;
                                        local Descendants_27 = PlayerGui_18:GetDescendants();
                                        for i_27, v_27 in ipairs(Descendants_27) do
                                            local IsA_28 = v_27.IsA;
                                            local TextLabel_37 = v_27:IsA("TextLabel");
                                            local Not_TextLabel_37 = not TextLabel_37;
                                            -- false
                                            if Not_TextLabel_37 then -- didnt run, expr id 830, has an else.
                                            else
                                                local Text_27 = v_27.Text;
                                                local Not_Text_27 = not Text_27;
                                                -- false
                                                if Text_27 then -- ran, expr id 831, has an else.
                                                local Text_27_is_string = (Text_27 == "");
                                                -- false, eq id 33
                                                if Text_27_is_string then -- didnt run, expr id 832, has no else.
                                                end
                                                local Len_Text_27 = #Text_27;
                                                local var963 = (1 < Len_Text_27); -- nil
                                                local Not_Var963 = not var963;
                                                -- true
                                                if var963 then -- didnt run, expr id 833, has an else.
                                                else
                                                end
                                                local CoreGui_15 = game:GetService("CoreGui");
                                                local Descendants_28 = CoreGui:GetDescendants();
                                                for i_28, v_28 in ipairs(Descendants_28) do
                                                local IsA_29 = v_28.IsA;
                                                local TextLabel_38 = v_28:IsA("TextLabel");
                                                local Not_TextLabel_38 = not TextLabel_38;
                                                -- false
                                                if Not_TextLabel_38 then -- didnt run, expr id 834, has an else.
                                                else
                                                local Text_28 = v_28.Text;
                                                local Not_Text_28 = not Text_28;
                                                -- false
                                                if Text_28 then -- ran, expr id 835, has an else.
                                                local Text_28_is_string = (Text_28 == "");
                                                -- false, eq id 34
                                                if Text_28_is_string then -- didnt run, expr id 836, has no else.
                                                end
                                                local Len_Text_28 = #Text_28;
                                                local var963 = (1 < Len_Text_28); -- nil
                                                local Not_Var963_2 = not var963;
                                                -- true
                                                if var963 then -- didnt run, expr id 837, has an else.
                                                else
                                                end
                                                local Waited_For_235 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end
                                    end) -- true, false, 5, 5
                                end
                                local Waited_For_236 = task.wait(ext_1_0);
                                local Not_Ext_1_0_51 = not ext_1_0;
                                -- false
                                if ext_1_0 then -- ran, expr id 838, has an else.
                                    local Success_11257, Error_Message_11257 = pcall(function(...)
                                        local Players_23 = game:GetService("Players");
                                        local LocalPlayer_24 = Players.LocalPlayer;
                                        local PlayerGui_19 = LocalPlayer:WaitForChild("PlayerGui");
                                        local GetDescendants_15 = PlayerGui_19.GetDescendants;
                                        local Descendants_29 = PlayerGui_19:GetDescendants();
                                        for i_29, v_29 in ipairs(Descendants_29) do
                                            local IsA_30 = v_29.IsA;
                                            local TextLabel_39 = v_29:IsA("TextLabel");
                                            local Not_TextLabel_39 = not TextLabel_39;
                                            -- false
                                            if Not_TextLabel_39 then -- didnt run, expr id 839, has an else.
                                            else
                                                local Text_29 = v_29.Text;
                                                local Not_Text_29 = not Text_29;
                                                -- false
                                                if Text_29 then -- ran, expr id 840, has an else.
                                                local Text_29_is_string = (Text_29 == "");
                                                -- false, eq id 35
                                                if Text_29_is_string then -- didnt run, expr id 841, has no else.
                                                end
                                                local Len_Text_29 = #Text_29;
                                                local var964 = (1 < Len_Text_29); -- nil
                                                local Not_Var964 = not var964;
                                                -- true
                                                if var964 then -- didnt run, expr id 842, has an else.
                                                else
                                                end
                                                local CoreGui_16 = game:GetService("CoreGui");
                                                local Descendants_30 = CoreGui:GetDescendants();
                                                for i_30, v_30 in ipairs(Descendants_30) do
                                                local IsA_31 = v_30.IsA;
                                                local TextLabel_40 = v_30:IsA("TextLabel");
                                                local Not_TextLabel_40 = not TextLabel_40;
                                                -- false
                                                if Not_TextLabel_40 then -- didnt run, expr id 843, has an else.
                                                else
                                                local Text_30 = v_30.Text;
                                                local Not_Text_30 = not Text_30;
                                                -- false
                                                if Text_30 then -- ran, expr id 844, has an else.
                                                local Text_30_is_string = (Text_30 == "");
                                                -- false, eq id 36
                                                if Text_30_is_string then -- didnt run, expr id 845, has no else.
                                                end
                                                local Len_Text_30 = #Text_30;
                                                local var964 = (1 < Len_Text_30);
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end
                                    end) -- false, "[KuIJEG]:1: too many operations"
                                end
                            end) -- false, "Luraph Script:695: [KuIJEG]:1: too many operations"

                        end);
                end
            end) -- true

        end,
    });
    local AddSlider = __5.AddSlider;
    local TranslationSpeed = __5:AddSlider("TranslationSpeed", {
        Min = 0.05,
        Default = 0.1,
        Compact = false,
        Max = 2,
        Text = "汉化速度",
        Callback = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            local Success_10095, Error_Message_10095 = pcall(function(...)
                local Not_Ext_1_0_35 = not ext_1_0;
                -- false
                if ext_1_0 then -- ran, expr id 475, has an else.
                    local Success_10096, Error_Message_10096 = pcall(function(...)
                        local Not_Spawned_4 = not Spawned_4;
                        -- false
                        if Spawned_4 then -- ran, expr id 476, has an else.
                            task.cancel(Spawned_4)
                            local Spawned_5 = task.spawn(function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
                                local Success_11258, Error_Message_11258 = pcall(function(...)
                                    local Not_Ext_1_0_52 = not ext_1_0;
                                    -- false
                                    if ext_1_0 then -- ran, expr id 846, has an else.
                                        local Success_11259, Error_Message_11259 = pcall(function(...)
                                            local Players_24 = game:GetService("Players");
                                            local LocalPlayer_25 = Players.LocalPlayer;
                                            local PlayerGui_20 = LocalPlayer:WaitForChild("PlayerGui");
                                            local GetDescendants_16 = PlayerGui_20.GetDescendants;
                                            local Descendants_31 = PlayerGui_20:GetDescendants();
                                            for i_31, v_31 in ipairs(Descendants_31) do
                                                local IsA_32 = v_31.IsA;
                                                local TextLabel_41 = v_31:IsA("TextLabel");
                                                local Not_TextLabel_41 = not TextLabel_41;
                                                -- false
                                                if Not_TextLabel_41 then -- didnt run, expr id 847, has an else.
                                                else
                                                local Text_31 = v_31.Text;
                                                local Not_Text_31 = not Text_31;
                                                -- false
                                                if Text_31 then -- ran, expr id 848, has an else.
                                                local Text_31_is_string = (Text_31 == "");
                                                -- false, eq id 37
                                                if Text_31_is_string then -- didnt run, expr id 849, has no else.
                                                end
                                                local Len_Text_31 = #Text_31;
                                                local var965 = (1 < Len_Text_31); -- nil
                                                local Not_Var965 = not var965;
                                                -- true
                                                if var965 then -- didnt run, expr id 850, has an else.
                                                else
                                                end
                                                local CoreGui_17 = game:GetService("CoreGui");
                                                local Descendants_32 = CoreGui:GetDescendants();
                                                for i_32, v_32 in ipairs(Descendants_32) do
                                                local IsA_33 = v_32.IsA;
                                                local TextLabel_42 = v_32:IsA("TextLabel");
                                                local Not_TextLabel_42 = not TextLabel_42;
                                                -- false
                                                if Not_TextLabel_42 then -- didnt run, expr id 851, has an else.
                                                else
                                                local Text_32 = v_32.Text;
                                                local Not_Text_32 = not Text_32;
                                                -- false
                                                if Text_32 then -- ran, expr id 852, has an else.
                                                local Text_32_is_string = (Text_32 == "");
                                                -- false, eq id 38
                                                if Text_32_is_string then -- didnt run, expr id 853, has no else.
                                                end
                                                local Len_Text_32 = #Text_32;
                                                local var965 = (1 < Len_Text_32); -- nil
                                                local Not_Var965_2 = not var965;
                                                -- true
                                                if var965 then -- didnt run, expr id 854, has an else.
                                                else
                                                end
                                                local Waited_For_237 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end) -- true, false, 5, 5
                                    end
                                    local Waited_For_238 = task.wait(ext_1_0);
                                    local Not_Ext_1_0_53 = not ext_1_0;
                                    -- false
                                    if ext_1_0 then -- ran, expr id 855, has an else.
                                        local Success_11260, Error_Message_11260 = pcall(function(...)
                                            local Players_25 = game:GetService("Players");
                                            local LocalPlayer_26 = Players.LocalPlayer;
                                            local PlayerGui_21 = LocalPlayer:WaitForChild("PlayerGui");
                                            local GetDescendants_17 = PlayerGui_21.GetDescendants;
                                            local Descendants_33 = PlayerGui_21:GetDescendants();
                                            for i_33, v_33 in ipairs(Descendants_33) do
                                                local IsA_34 = v_33.IsA;
                                                local TextLabel_43 = v_33:IsA("TextLabel");
                                                local Not_TextLabel_43 = not TextLabel_43;
                                                -- false
                                                if Not_TextLabel_43 then -- didnt run, expr id 856, has an else.
                                                else
                                                local Text_33 = v_33.Text;
                                                local Not_Text_33 = not Text_33;
                                                -- false
                                                if Text_33 then -- ran, expr id 857, has an else.
                                                local Text_33_is_string = (Text_33 == "");
                                                -- false, eq id 39
                                                if Text_33_is_string then -- didnt run, expr id 858, has no else.
                                                end
                                                local Len_Text_33 = #Text_33;
                                                local var966 = (1 < Len_Text_33); -- nil
                                                local Not_Var966 = not var966;
                                                -- true
                                                if var966 then -- didnt run, expr id 859, has an else.
                                                else
                                                end
                                                local CoreGui_18 = game:GetService("CoreGui");
                                                local Descendants_34 = CoreGui:GetDescendants();
                                                for i_34, v_34 in ipairs(Descendants_34) do
                                                local IsA_35 = v_34.IsA;
                                                local TextLabel_44 = v_34:IsA("TextLabel");
                                                local Not_TextLabel_44 = not TextLabel_44;
                                                -- false
                                                if Not_TextLabel_44 then -- didnt run, expr id 860, has an else.
                                                else
                                                local Text_34 = v_34.Text;
                                                local Not_Text_34 = not Text_34;
                                                -- false
                                                if Text_34 then -- ran, expr id 861, has an else.
                                                local Text_34_is_string = (Text_34 == "");
                                                -- false, eq id 40
                                                if Text_34_is_string then -- didnt run, expr id 862, has no else.
                                                end
                                                local Len_Text_34 = #Text_34;
                                                local var966 = (1 < Len_Text_34); -- nil
                                                local Not_Var966_2 = not var966;
                                                -- true
                                                if var966 then -- didnt run, expr id 863, has an else.
                                                else
                                                end
                                                local Waited_For_239 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end) -- true, false, 5, 5
                                    end
                                    local Waited_For_240 = task.wait(ext_1_0);
                                    local Not_Ext_1_0_54 = not ext_1_0;
                                    -- false
                                    if ext_1_0 then -- ran, expr id 864, has an else.
                                        local Success_11261, Error_Message_11261 = pcall(function(...)
                                            local Players_26 = game:GetService("Players");
                                            local LocalPlayer_27 = Players.LocalPlayer;
                                            local PlayerGui_22 = LocalPlayer:WaitForChild("PlayerGui");
                                            local GetDescendants_18 = PlayerGui_22.GetDescendants;
                                            local Descendants_35 = PlayerGui_22:GetDescendants();
                                            for i_35, v_35 in ipairs(Descendants_35) do
                                                local IsA_36 = v_35.IsA;
                                                local TextLabel_45 = v_35:IsA("TextLabel");
                                                local Not_TextLabel_45 = not TextLabel_45;
                                                -- false
                                                if Not_TextLabel_45 then -- didnt run, expr id 865, has an else.
                                                else
                                                local Text_35 = v_35.Text;
                                                local Not_Text_35 = not Text_35;
                                                -- false
                                                if Text_35 then -- ran, expr id 866, has an else.
                                                local Text_35_is_string = (Text_35 == "");
                                                -- false, eq id 41
                                                if Text_35_is_string then -- didnt run, expr id 867, has no else.
                                                end
                                                local Len_Text_35 = #Text_35;
                                                local var967 = (1 < Len_Text_35); -- nil
                                                local Not_Var967 = not var967;
                                                -- true
                                                if var967 then -- didnt run, expr id 868, has an else.
                                                else
                                                end
                                                local CoreGui_19 = game:GetService("CoreGui");
                                                local Descendants_36 = CoreGui:GetDescendants();
                                                for i_36, v_36 in ipairs(Descendants_36) do
                                                local IsA_37 = v_36.IsA;
                                                local TextLabel_46 = v_36:IsA("TextLabel");
                                                local Not_TextLabel_46 = not TextLabel_46;
                                                -- false
                                                if Not_TextLabel_46 then -- didnt run, expr id 869, has an else.
                                                else
                                                local Text_36 = v_36.Text;
                                                local Not_Text_36 = not Text_36;
                                                -- false
                                                if Text_36 then -- ran, expr id 870, has an else.
                                                local Text_36_is_string = (Text_36 == "");
                                                -- false, eq id 42
                                                if Text_36_is_string then -- didnt run, expr id 871, has no else.
                                                end
                                                local Len_Text_36 = #Text_36;
                                                local var967 = (1 < Len_Text_36); -- nil
                                                local Not_Var967_2 = not var967;
                                                -- true
                                                if var967 then -- didnt run, expr id 872, has an else.
                                                else
                                                end
                                                local Waited_For_241 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end) -- true, false, 5, 5
                                    end
                                    local Waited_For_242 = task.wait(ext_1_0);
                                    local Not_Ext_1_0_55 = not ext_1_0;
                                    -- false
                                    if ext_1_0 then -- ran, expr id 873, has an else.
                                        local Success_11262, Error_Message_11262 = pcall(function(...)
                                            local Players_27 = game:GetService("Players");
                                            local LocalPlayer_28 = Players.LocalPlayer;
                                            local PlayerGui_23 = LocalPlayer:WaitForChild("PlayerGui");
                                            local GetDescendants_19 = PlayerGui_23.GetDescendants;
                                            local Descendants_37 = PlayerGui_23:GetDescendants();
                                            for i_37, v_37 in ipairs(Descendants_37) do
                                                local IsA_38 = v_37.IsA;
                                                local TextLabel_47 = v_37:IsA("TextLabel");
                                                local Not_TextLabel_47 = not TextLabel_47;
                                                -- false
                                                if Not_TextLabel_47 then -- didnt run, expr id 874, has an else.
                                                else
                                                local Text_37 = v_37.Text;
                                                local Not_Text_37 = not Text_37;
                                                -- false
                                                if Text_37 then -- ran, expr id 875, has an else.
                                                local Text_37_is_string = (Text_37 == "");
                                                -- false, eq id 43
                                                if Text_37_is_string then -- didnt run, expr id 876, has no else.
                                                end
                                                local Len_Text_37 = #Text_37;
                                                local var968 = (1 < Len_Text_37); -- nil
                                                local Not_Var968 = not var968;
                                                -- true
                                                if var968 then -- didnt run, expr id 877, has an else.
                                                else
                                                end
                                                local CoreGui_20 = game:GetService("CoreGui");
                                                local Descendants_38 = CoreGui:GetDescendants();
                                                for i_38, v_38 in ipairs(Descendants_38) do
                                                local IsA_39 = v_38.IsA;
                                                local TextLabel_48 = v_38:IsA("TextLabel");
                                                local Not_TextLabel_48 = not TextLabel_48;
                                                -- false
                                                if Not_TextLabel_48 then -- didnt run, expr id 878, has an else.
                                                else
                                                local Text_38 = v_38.Text;
                                                local Not_Text_38 = not Text_38;
                                                -- false
                                                if Text_38 then -- ran, expr id 879, has an else.
                                                local Text_38_is_string = (Text_38 == "");
                                                -- false, eq id 44
                                                if Text_38_is_string then -- didnt run, expr id 880, has no else.
                                                end
                                                local Len_Text_38 = #Text_38;
                                                local var968 = (1 < Len_Text_38); -- nil
                                                local Not_Var968_2 = not var968;
                                                -- true
                                                if var968 then -- didnt run, expr id 881, has an else.
                                                else
                                                end
                                                local Waited_For_243 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end) -- true, false, 5, 5
                                    end
                                    local Waited_For_244 = task.wait(ext_1_0);
                                    local Not_Ext_1_0_56 = not ext_1_0;
                                    -- false
                                    if ext_1_0 then -- ran, expr id 882, has an else.
                                        local Success_11263, Error_Message_11263 = pcall(function(...)
                                            local Players_28 = game:GetService("Players");
                                            local LocalPlayer_29 = Players.LocalPlayer;
                                            local PlayerGui_24 = LocalPlayer:WaitForChild("PlayerGui");
                                            local GetDescendants_20 = PlayerGui_24.GetDescendants;
                                            local Descendants_39 = PlayerGui_24:GetDescendants();
                                            for i_39, v_39 in ipairs(Descendants_39) do
                                                local IsA_40 = v_39.IsA;
                                                local TextLabel_49 = v_39:IsA("TextLabel");
                                                local Not_TextLabel_49 = not TextLabel_49;
                                                -- false
                                                if Not_TextLabel_49 then -- didnt run, expr id 883, has an else.
                                                else
                                                local Text_39 = v_39.Text;
                                                local Not_Text_39 = not Text_39;
                                                -- false
                                                if Text_39 then -- ran, expr id 884, has an else.
                                                local Text_39_is_string = (Text_39 == "");
                                                -- false, eq id 45
                                                if Text_39_is_string then -- didnt run, expr id 885, has no else.
                                                end
                                                local Len_Text_39 = #Text_39;
                                                local var969 = (1 < Len_Text_39); -- nil
                                                local Not_Var969 = not var969;
                                                -- true
                                                if var969 then -- didnt run, expr id 886, has an else.
                                                else
                                                end
                                                local CoreGui_21 = game:GetService("CoreGui");
                                                local Descendants_40 = CoreGui:GetDescendants();
                                                for i_40, v_40 in ipairs(Descendants_40) do
                                                local IsA_41 = v_40.IsA;
                                                local TextLabel_50 = v_40:IsA("TextLabel");
                                                local Not_TextLabel_50 = not TextLabel_50;
                                                -- false
                                                if Not_TextLabel_50 then -- didnt run, expr id 887, has an else.
                                                else
                                                local Text_40 = v_40.Text;
                                                local Not_Text_40 = not Text_40;
                                                -- false
                                                if Text_40 then -- ran, expr id 888, has an else.
                                                local Text_40_is_string = (Text_40 == "");
                                                -- false, eq id 46
                                                if Text_40_is_string then -- didnt run, expr id 889, has no else.
                                                end
                                                local Len_Text_40 = #Text_40;
                                                local var969 = (1 < Len_Text_40); -- nil
                                                local Not_Var969_2 = not var969;
                                                -- true
                                                if var969 then -- didnt run, expr id 890, has an else.
                                                else
                                                end
                                                local Waited_For_245 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end) -- true, false, 5, 5
                                    end
                                    local Waited_For_246 = task.wait(ext_1_0);
                                    local Not_Ext_1_0_57 = not ext_1_0;
                                    -- false
                                    if ext_1_0 then -- ran, expr id 891, has an else.
                                        local Success_11264, Error_Message_11264 = pcall(function(...)
                                            local Players_29 = game:GetService("Players");
                                            local LocalPlayer_30 = Players.LocalPlayer;
                                            local PlayerGui_25 = LocalPlayer:WaitForChild("PlayerGui");
                                            local GetDescendants_21 = PlayerGui_25.GetDescendants;
                                            local Descendants_41 = PlayerGui_25:GetDescendants();
                                            for i_41, v_41 in ipairs(Descendants_41) do
                                                local IsA_42 = v_41.IsA;
                                                local TextLabel_51 = v_41:IsA("TextLabel");
                                                local Not_TextLabel_51 = not TextLabel_51;
                                                -- false
                                                if Not_TextLabel_51 then -- didnt run, expr id 892, has an else.
                                                else
                                                local Text_41 = v_41.Text;
                                                local Not_Text_41 = not Text_41;
                                                -- false
                                                if Text_41 then -- ran, expr id 893, has an else.
                                                local Text_41_is_string = (Text_41 == "");
                                                -- false, eq id 47
                                                if Text_41_is_string then -- didnt run, expr id 894, has no else.
                                                end
                                                local Len_Text_41 = #Text_41;
                                                local var970 = (1 < Len_Text_41); -- nil
                                                local Not_Var970 = not var970;
                                                -- true
                                                if var970 then -- didnt run, expr id 895, has an else.
                                                else
                                                end
                                                local CoreGui_22 = game:GetService("CoreGui");
                                                local Descendants_42 = CoreGui:GetDescendants();
                                                for i_42, v_42 in ipairs(Descendants_42) do
                                                local IsA_43 = v_42.IsA;
                                                local TextLabel_52 = v_42:IsA("TextLabel");
                                                local Not_TextLabel_52 = not TextLabel_52;
                                                -- false
                                                if Not_TextLabel_52 then -- didnt run, expr id 896, has an else.
                                                else
                                                local Text_42 = v_42.Text;
                                                local Not_Text_42 = not Text_42;
                                                -- false
                                                if Text_42 then -- ran, expr id 897, has an else.
                                                local Text_42_is_string = (Text_42 == "");
                                                -- false, eq id 48
                                                if Text_42_is_string then -- didnt run, expr id 898, has no else.
                                                end
                                                local Len_Text_42 = #Text_42;
                                                local var970 = (1 < Len_Text_42); -- nil
                                                local Not_Var970_2 = not var970;
                                                -- true
                                                if var970 then -- didnt run, expr id 899, has an else.
                                                else
                                                end
                                                local Waited_For_247 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end) -- true, false, 5, 5
                                    end
                                    local Waited_For_248 = task.wait(ext_1_0);
                                    local Not_Ext_1_0_58 = not ext_1_0;
                                    -- false
                                    if ext_1_0 then -- ran, expr id 900, has an else.
                                        local Success_11265, Error_Message_11265 = pcall(function(...)
                                            local Players_30 = game:GetService("Players");
                                            local LocalPlayer_31 = Players.LocalPlayer;
                                            local PlayerGui_26 = LocalPlayer:WaitForChild("PlayerGui");
                                            local GetDescendants_22 = PlayerGui_26.GetDescendants;
                                            local Descendants_43 = PlayerGui_26:GetDescendants();
                                            for i_43, v_43 in ipairs(Descendants_43) do
                                                local IsA_44 = v_43.IsA;
                                                local TextLabel_53 = v_43:IsA("TextLabel");
                                                local Not_TextLabel_53 = not TextLabel_53;
                                                -- false
                                                if Not_TextLabel_53 then -- didnt run, expr id 901, has an else.
                                                else
                                                local Text_43 = v_43.Text;
                                                local Not_Text_43 = not Text_43;
                                                -- false
                                                if Text_43 then -- ran, expr id 902, has an else.
                                                local Text_43_is_string = (Text_43 == "");
                                                -- false, eq id 49
                                                if Text_43_is_string then -- didnt run, expr id 903, has no else.
                                                end
                                                local Len_Text_43 = #Text_43;
                                                local var971 = (1 < Len_Text_43); -- nil
                                                local Not_Var971 = not var971;
                                                -- true
                                                if var971 then -- didnt run, expr id 904, has an else.
                                                else
                                                end
                                                local CoreGui_23 = game:GetService("CoreGui");
                                                local Descendants_44 = CoreGui:GetDescendants();
                                                for i_44, v_44 in ipairs(Descendants_44) do
                                                local IsA_45 = v_44.IsA;
                                                local TextLabel_54 = v_44:IsA("TextLabel");
                                                local Not_TextLabel_54 = not TextLabel_54;
                                                -- false
                                                if Not_TextLabel_54 then -- didnt run, expr id 905, has an else.
                                                else
                                                local Text_44 = v_44.Text;
                                                local Not_Text_44 = not Text_44;
                                                -- false
                                                if Text_44 then -- ran, expr id 906, has an else.
                                                local Text_44_is_string = (Text_44 == "");
                                                -- false, eq id 50
                                                if Text_44_is_string then -- didnt run, expr id 907, has no else.
                                                end
                                                local Len_Text_44 = #Text_44;
                                                local var971 = (1 < Len_Text_44); -- nil
                                                local Not_Var971_2 = not var971;
                                                -- true
                                                if var971 then -- didnt run, expr id 908, has an else.
                                                else
                                                end
                                                local Waited_For_249 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end) -- true, false, 5, 5
                                    end
                                    local Waited_For_250 = task.wait(ext_1_0);
                                    local Not_Ext_1_0_59 = not ext_1_0;
                                    -- false
                                    if ext_1_0 then -- ran, expr id 909, has an else.
                                        local Success_11266, Error_Message_11266 = pcall(function(...)
                                            local Players_31 = game:GetService("Players");
                                            local LocalPlayer_32 = Players.LocalPlayer;
                                            local PlayerGui_27 = LocalPlayer:WaitForChild("PlayerGui");
                                            local GetDescendants_23 = PlayerGui_27.GetDescendants;
                                            local Descendants_45 = PlayerGui_27:GetDescendants();
                                            for i_45, v_45 in ipairs(Descendants_45) do
                                                local IsA_46 = v_45.IsA;
                                                local TextLabel_55 = v_45:IsA("TextLabel");
                                                local Not_TextLabel_55 = not TextLabel_55;
                                                -- false
                                                if Not_TextLabel_55 then -- didnt run, expr id 910, has an else.
                                                else
                                                local Text_45 = v_45.Text;
                                                local Not_Text_45 = not Text_45;
                                                -- false
                                                if Text_45 then -- ran, expr id 911, has an else.
                                                local Text_45_is_string = (Text_45 == "");
                                                -- false, eq id 51
                                                if Text_45_is_string then -- didnt run, expr id 912, has no else.
                                                end
                                                local Len_Text_45 = #Text_45;
                                                local var972 = (1 < Len_Text_45); -- nil
                                                local Not_Var972 = not var972;
                                                -- true
                                                if var972 then -- didnt run, expr id 913, has an else.
                                                else
                                                end
                                                local CoreGui_24 = game:GetService("CoreGui");
                                                local Descendants_46 = CoreGui:GetDescendants();
                                                for i_46, v_46 in ipairs(Descendants_46) do
                                                local IsA_47 = v_46.IsA;
                                                local TextLabel_56 = v_46:IsA("TextLabel");
                                                local Not_TextLabel_56 = not TextLabel_56;
                                                -- false
                                                if Not_TextLabel_56 then -- didnt run, expr id 914, has an else.
                                                else
                                                local Text_46 = v_46.Text;
                                                local Not_Text_46 = not Text_46;
                                                -- false
                                                if Text_46 then -- ran, expr id 915, has an else.
                                                local Text_46_is_string = (Text_46 == "");
                                                -- false, eq id 52
                                                if Text_46_is_string then -- didnt run, expr id 916, has no else.
                                                end
                                                local Len_Text_46 = #Text_46;
                                                local var972 = (1 < Len_Text_46); -- nil
                                                local Not_Var972_2 = not var972;
                                                -- true
                                                if var972 then -- didnt run, expr id 917, has an else.
                                                else
                                                end
                                                local Waited_For_251 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end) -- true, false, 5, 5
                                    end
                                    local Waited_For_252 = task.wait(ext_1_0);
                                    local Not_Ext_1_0_60 = not ext_1_0;
                                    -- false
                                    if ext_1_0 then -- ran, expr id 918, has an else.
                                        local Success_11267, Error_Message_11267 = pcall(function(...)
                                            local Players_32 = game:GetService("Players");
                                            local LocalPlayer_33 = Players.LocalPlayer;
                                            local PlayerGui_28 = LocalPlayer:WaitForChild("PlayerGui");
                                            local GetDescendants_24 = PlayerGui_28.GetDescendants;
                                            local Descendants_47 = PlayerGui_28:GetDescendants();
                                            for i_47, v_47 in ipairs(Descendants_47) do
                                                local IsA_48 = v_47.IsA;
                                                local TextLabel_57 = v_47:IsA("TextLabel");
                                                local Not_TextLabel_57 = not TextLabel_57;
                                                -- false
                                                if Not_TextLabel_57 then -- didnt run, expr id 919, has an else.
                                                else
                                                local Text_47 = v_47.Text;
                                                local Not_Text_47 = not Text_47;
                                                -- false
                                                if Text_47 then -- ran, expr id 920, has an else.
                                                local Text_47_is_string = (Text_47 == "");
                                                -- false, eq id 53
                                                if Text_47_is_string then -- didnt run, expr id 921, has no else.
                                                end
                                                local Len_Text_47 = #Text_47;
                                                local var973 = (1 < Len_Text_47); -- nil
                                                local Not_Var973 = not var973;
                                                -- true
                                                if var973 then -- didnt run, expr id 922, has an else.
                                                else
                                                end
                                                local CoreGui_25 = game:GetService("CoreGui");
                                                local Descendants_48 = CoreGui:GetDescendants();
                                                for i_48, v_48 in ipairs(Descendants_48) do
                                                local IsA_49 = v_48.IsA;
                                                local TextLabel_58 = v_48:IsA("TextLabel");
                                                local Not_TextLabel_58 = not TextLabel_58;
                                                -- false
                                                if Not_TextLabel_58 then -- didnt run, expr id 923, has an else.
                                                else
                                                local Text_48 = v_48.Text;
                                                local Not_Text_48 = not Text_48;
                                                -- false
                                                if Text_48 then -- ran, expr id 924, has an else.
                                                local Text_48_is_string = (Text_48 == "");
                                                -- false, eq id 54
                                                if Text_48_is_string then -- didnt run, expr id 925, has no else.
                                                end
                                                local Len_Text_48 = #Text_48;
                                                local var973 = (1 < Len_Text_48); -- nil
                                                local Not_Var973_2 = not var973;
                                                -- true
                                                if var973 then -- didnt run, expr id 926, has an else.
                                                else
                                                end
                                                local Waited_For_253 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end) -- true, false, 5, 5
                                    end
                                    local Waited_For_254 = task.wait(ext_1_0);
                                    local Not_Ext_1_0_61 = not ext_1_0;
                                    -- false
                                    if ext_1_0 then -- ran, expr id 927, has an else.
                                        local Success_11268, Error_Message_11268 = pcall(function(...)
                                            local Players_33 = game:GetService("Players");
                                            local LocalPlayer_34 = Players.LocalPlayer;
                                            local PlayerGui_29 = LocalPlayer:WaitForChild("PlayerGui");
                                            local GetDescendants_25 = PlayerGui_29.GetDescendants;
                                            local Descendants_49 = PlayerGui_29:GetDescendants();
                                            for i_49, v_49 in ipairs(Descendants_49) do
                                                local IsA_50 = v_49.IsA;
                                                local TextLabel_59 = v_49:IsA("TextLabel");
                                                local Not_TextLabel_59 = not TextLabel_59;
                                                -- false
                                                if Not_TextLabel_59 then -- didnt run, expr id 928, has an else.
                                                else
                                                local Text_49 = v_49.Text;
                                                local Not_Text_49 = not Text_49;
                                                -- false
                                                if Text_49 then -- ran, expr id 929, has an else.
                                                local Text_49_is_string = (Text_49 == "");
                                                -- false, eq id 55
                                                if Text_49_is_string then -- didnt run, expr id 930, has no else.
                                                end
                                                local Len_Text_49 = #Text_49;
                                                local var974 = (1 < Len_Text_49); -- nil
                                                local Not_Var974 = not var974;
                                                -- true
                                                if var974 then -- didnt run, expr id 931, has an else.
                                                else
                                                end
                                                local CoreGui_26 = game:GetService("CoreGui");
                                                local Descendants_50 = CoreGui:GetDescendants();
                                                for i_50, v_50 in ipairs(Descendants_50) do
                                                local IsA_51 = v_50.IsA;
                                                local TextLabel_60 = v_50:IsA("TextLabel");
                                                local Not_TextLabel_60 = not TextLabel_60;
                                                -- false
                                                if Not_TextLabel_60 then -- didnt run, expr id 932, has an else.
                                                else
                                                local Text_50 = v_50.Text;
                                                local Not_Text_50 = not Text_50;
                                                -- false
                                                if Text_50 then -- ran, expr id 933, has an else.
                                                local Text_50_is_string = (Text_50 == "");
                                                -- false, eq id 56
                                                if Text_50_is_string then -- didnt run, expr id 934, has no else.
                                                end
                                                local Len_Text_50 = #Text_50;
                                                local var974 = (1 < Len_Text_50); -- nil
                                                local Not_Var974_2 = not var974;
                                                -- true
                                                if var974 then -- didnt run, expr id 935, has an else.
                                                else
                                                end
                                                local Waited_For_255 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end) -- true, false, 5, 5
                                    end
                                    local Waited_For_256 = task.wait(ext_1_0);
                                    local Not_Ext_1_0_62 = not ext_1_0;
                                    -- false
                                    if ext_1_0 then -- ran, expr id 936, has an else.
                                        local Success_11269, Error_Message_11269 = pcall(function(...)
                                            local Players_34 = game:GetService("Players");
                                            local LocalPlayer_35 = Players.LocalPlayer;
                                            local PlayerGui_30 = LocalPlayer:WaitForChild("PlayerGui");
                                            local GetDescendants_26 = PlayerGui_30.GetDescendants;
                                            local Descendants_51 = PlayerGui_30:GetDescendants();
                                            for i_51, v_51 in ipairs(Descendants_51) do
                                                local IsA_52 = v_51.IsA;
                                                local TextLabel_61 = v_51:IsA("TextLabel");
                                                local Not_TextLabel_61 = not TextLabel_61;
                                                -- false
                                                if Not_TextLabel_61 then -- didnt run, expr id 937, has an else.
                                                else
                                                local Text_51 = v_51.Text;
                                                local Not_Text_51 = not Text_51;
                                                -- false
                                                if Text_51 then -- ran, expr id 938, has an else.
                                                local Text_51_is_string = (Text_51 == "");
                                                -- false, eq id 57
                                                if Text_51_is_string then -- didnt run, expr id 939, has no else.
                                                end
                                                local Len_Text_51 = #Text_51;
                                                local var975 = (1 < Len_Text_51); -- nil
                                                local Not_Var975 = not var975;
                                                -- true
                                                if var975 then -- didnt run, expr id 940, has an else.
                                                else
                                                end
                                                local CoreGui_27 = game:GetService("CoreGui");
                                                local Descendants_52 = CoreGui:GetDescendants();
                                                for i_52, v_52 in ipairs(Descendants_52) do
                                                local IsA_53 = v_52.IsA;
                                                local TextLabel_62 = v_52:IsA("TextLabel");
                                                local Not_TextLabel_62 = not TextLabel_62;
                                                -- false
                                                if Not_TextLabel_62 then -- didnt run, expr id 941, has an else.
                                                else
                                                local Text_52 = v_52.Text;
                                                local Not_Text_52 = not Text_52;
                                                -- false
                                                if Text_52 then -- ran, expr id 942, has an else.
                                                local Text_52_is_string = (Text_52 == "");
                                                -- false, eq id 58
                                                if Text_52_is_string then -- didnt run, expr id 943, has no else.
                                                end
                                                local Len_Text_52 = #Text_52;
                                                local var975 = (1 < Len_Text_52); -- nil
                                                local Not_Var975_2 = not var975;
                                                -- true
                                                if var975 then -- didnt run, expr id 944, has an else.
                                                else
                                                end
                                                local Waited_For_257 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end) -- true, false, 5, 5
                                    end
                                    local Waited_For_258 = task.wait(ext_1_0);
                                    local Not_Ext_1_0_63 = not ext_1_0;
                                    -- false
                                    if ext_1_0 then -- ran, expr id 945, has an else.
                                        local Success_11270, Error_Message_11270 = pcall(function(...)
                                            local Players_35 = game:GetService("Players");
                                            local LocalPlayer_36 = Players.LocalPlayer;
                                            local PlayerGui_31 = LocalPlayer:WaitForChild("PlayerGui");
                                            local GetDescendants_27 = PlayerGui_31.GetDescendants;
                                            local Descendants_53 = PlayerGui_31:GetDescendants();
                                            for i_53, v_53 in ipairs(Descendants_53) do
                                                local IsA_54 = v_53.IsA;
                                                local TextLabel_63 = v_53:IsA("TextLabel");
                                                local Not_TextLabel_63 = not TextLabel_63;
                                                -- false
                                                if Not_TextLabel_63 then -- didnt run, expr id 946, has an else.
                                                else
                                                local Text_53 = v_53.Text;
                                                local Not_Text_53 = not Text_53;
                                                -- false
                                                if Text_53 then -- ran, expr id 947, has an else.
                                                local Text_53_is_string = (Text_53 == "");
                                                -- false, eq id 59
                                                if Text_53_is_string then -- didnt run, expr id 948, has no else.
                                                end
                                                local Len_Text_53 = #Text_53;
                                                local var976 = (1 < Len_Text_53); -- nil
                                                local Not_Var976 = not var976;
                                                -- true
                                                if var976 then -- didnt run, expr id 949, has an else.
                                                else
                                                end
                                                local CoreGui_28 = game:GetService("CoreGui");
                                                local Descendants_54 = CoreGui:GetDescendants();
                                                for i_54, v_54 in ipairs(Descendants_54) do
                                                local IsA_55 = v_54.IsA;
                                                local TextLabel_64 = v_54:IsA("TextLabel");
                                                local Not_TextLabel_64 = not TextLabel_64;
                                                -- false
                                                if Not_TextLabel_64 then -- didnt run, expr id 950, has an else.
                                                else
                                                local Text_54 = v_54.Text;
                                                local Not_Text_54 = not Text_54;
                                                -- false
                                                if Text_54 then -- ran, expr id 951, has an else.
                                                local Text_54_is_string = (Text_54 == "");
                                                -- false, eq id 60
                                                if Text_54_is_string then -- didnt run, expr id 952, has no else.
                                                end
                                                local Len_Text_54 = #Text_54;
                                                local var976 = (1 < Len_Text_54); -- nil
                                                local Not_Var976_2 = not var976;
                                                -- true
                                                if var976 then -- didnt run, expr id 953, has an else.
                                                else
                                                end
                                                local Waited_For_259 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end) -- true, false, 5, 5
                                    end
                                    local Waited_For_260 = task.wait(ext_1_0);
                                    local Not_Ext_1_0_64 = not ext_1_0;
                                    -- false
                                    if ext_1_0 then -- ran, expr id 954, has an else.
                                        local Success_11271, Error_Message_11271 = pcall(function(...)
                                            local Players_36 = game:GetService("Players");
                                            local LocalPlayer_37 = Players.LocalPlayer;
                                            local PlayerGui_32 = LocalPlayer:WaitForChild("PlayerGui");
                                            local GetDescendants_28 = PlayerGui_32.GetDescendants;
                                            local Descendants_55 = PlayerGui_32:GetDescendants();
                                            for i_55, v_55 in ipairs(Descendants_55) do
                                                local IsA_56 = v_55.IsA;
                                                local TextLabel_65 = v_55:IsA("TextLabel");
                                                local Not_TextLabel_65 = not TextLabel_65;
                                                -- false
                                                if Not_TextLabel_65 then -- didnt run, expr id 955, has an else.
                                                else
                                                local Text_55 = v_55.Text;
                                                local Not_Text_55 = not Text_55;
                                                -- false
                                                if Text_55 then -- ran, expr id 956, has an else.
                                                local Text_55_is_string = (Text_55 == "");
                                                -- false, eq id 61
                                                if Text_55_is_string then -- didnt run, expr id 957, has no else.
                                                end
                                                local Len_Text_55 = #Text_55;
                                                local var977 = (1 < Len_Text_55); -- nil
                                                local Not_Var977 = not var977;
                                                -- true
                                                if var977 then -- didnt run, expr id 958, has an else.
                                                else
                                                end
                                                local CoreGui_29 = game:GetService("CoreGui");
                                                local Descendants_56 = CoreGui:GetDescendants();
                                                for i_56, v_56 in ipairs(Descendants_56) do
                                                local IsA_57 = v_56.IsA;
                                                local TextLabel_66 = v_56:IsA("TextLabel");
                                                local Not_TextLabel_66 = not TextLabel_66;
                                                -- false
                                                if Not_TextLabel_66 then -- didnt run, expr id 959, has an else.
                                                else
                                                local Text_56 = v_56.Text;
                                                local Not_Text_56 = not Text_56;
                                                -- false
                                                if Text_56 then -- ran, expr id 960, has an else.
                                                local Text_56_is_string = (Text_56 == "");
                                                -- false, eq id 62
                                                if Text_56_is_string then -- didnt run, expr id 961, has no else.
                                                end
                                                local Len_Text_56 = #Text_56;
                                                local var977 = (1 < Len_Text_56); -- nil
                                                local Not_Var977_2 = not var977;
                                                -- true
                                                if var977 then -- didnt run, expr id 962, has an else.
                                                else
                                                end
                                                local Waited_For_261 = task.wait(1);
                                                end
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end) -- true, false, 5, 5
                                    end
                                    local Waited_For_262 = task.wait(ext_1_0);
                                    local Not_Ext_1_0_65 = not ext_1_0;
                                    -- false
                                    if ext_1_0 then -- ran, expr id 963, has an else.
                                        local Success_11272, Error_Message_11272 = pcall(function(...)
                                            local Players_37 = game:GetService("Players");
                                            local LocalPlayer_38 = Players.LocalPlayer;
                                            local PlayerGui_33 = LocalPlayer:WaitForChild("PlayerGui");
                                            local GetDescendants_29 = PlayerGui_33.GetDescendants;
                                            local Descendants_57 = PlayerGui_33:GetDescendants();
                                            for i_57, v_57 in ipairs(Descendants_57) do
                                                local IsA_58 = v_57.IsA;
                                                local TextLabel_67 = v_57:IsA("TextLabel");
                                                local Not_TextLabel_67 = not TextLabel_67;
                                                -- false
                                                if Not_TextLabel_67 then -- didnt run, expr id 964, has an else.
                                                else
                                                local Text_57 = v_57.Text;
                                                local Not_Text_57 = not Text_57;
                                                -- false
                                                if Text_57 then -- ran, expr id 965, has an else.
                                                local Text_57_is_string = (Text_57 == "");
                                                -- false, eq id 63
                                                if Text_57_is_string then -- didnt run, expr id 966, has no else.
                                                end
                                                local Len_Text_57 = #Text_57;
                                                local var978 = (1 < Len_Text_57); -- nil
                                                local Not_Var978 = not var978;
                                                -- true
                                                if var978 then -- didnt run, expr id 967, has an else.
                                                else
                                                end
                                                local CoreGui_30 = game:GetService("CoreGui");
                                                local Descendants_58 = CoreGui:GetDescendants();
                                                for i_58, v_58 in ipairs(Descendants_58) do
                                                local IsA_59 = v_58.IsA;
                                                local TextLabel_68 = v_58:IsA("TextLabel");
                                                local Not_TextLabel_68 = not TextLabel_68;
                                                -- false
                                                if Not_TextLabel_68 then -- didnt run, expr id 968, has an else.
                                                else
                                                local Text_58 = v_58.Text;
                                                local Not_Text_58 = not Text_58;
                                                -- false
                                                if Text_58 then -- ran, expr id 969, has an else.
                                                local Text_58_is_string = (Text_58 == "");
                                                -- false, eq id 64
                                                if Text_58_is_string then -- didnt run, expr id 970, has no else.
                                                end
                                                local Len_Text_58 = #Text_58;
                                                local var978 = (1 < Len_Text_58);
                                                end
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end) -- false, "[KuIJEG]:1: too many operations"
                                    end
                                end) -- false, "Luraph Script:695: [KuIJEG]:1: too many operations"

                            end);
                        end
                    end) -- true
                end
            end) -- true

        end,
        Rounding = 2,
    });
    local AddDropdown = __4.AddDropdown;
    local ScriptSelector = __4:AddDropdown("ScriptSelector", {
        Values = {
            "无",
            "压力",
            "被遗弃",
            "Chain",
            "在森林中生存99夜",
            "最强战场",
            "死亡之死",
            "暴力区",
            "破坏者谜团2",
            "DOORS",
            "死铁轨",
            "Fisch",
            "菜鸟必须死",
            "刀刃球",
            "内脏与黑火药",
            "去钓鱼",
            "闪光",
            "元素力量大亨",
            "亡命速递",
            "命运的毁灭",
            "最强战场",
            "Medved",
            "Criminality",
        },
        Text = "选择",
        Multi = false,
        Callback = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            _G.SelectedScript = ext_1_0;

        end,
        Default = 1,
    });
    local AddButton_15 = __4.AddButton;
    local AddButton_16 = __4:AddButton({
        Text = "执行",
        Func = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            local Success_10160, Error_Message_10160 = pcall(function(...)
                local G_SelectedScript = _G.SelectedScript;
                local Not_Ext_1_0_36 = not ext_1_0;
                -- false
                if ext_1_0 then -- ran, expr id 477, has an else.
                    local G_SelectedScript_2 = _G.SelectedScript;
                    local ext_1_0_is_string = (ext_1_0 == "无");
                    -- false, eq id 1
                    if ext_1_0_is_string then -- didnt run, expr id 478, has no else.
                    end
                    local G_SelectedScript_3 = _G.SelectedScript;
                end
            end) -- true

        end,
        DoubleClick = false,
    });
    local AddButton_17 = __4.AddButton;
    local AddButton_18 = __4:AddButton({
        Text = "复制",
        Func = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            local Success_10208, Error_Message_10208 = pcall(function(...)
                local G_SelectedScript_4 = _G.SelectedScript;
                local Not_Ext_1_0_37 = not ext_1_0;
                -- false
                if ext_1_0 then -- ran, expr id 479, has an else.
                    local G_SelectedScript_5 = _G.SelectedScript;
                    local ext_1_0_is_string_2 = (ext_1_0 == "无");
                    -- false, eq id 2
                    if ext_1_0_is_string_2 then -- didnt run, expr id 480, has no else.
                    end
                    local G_SelectedScript_6 = _G.SelectedScript;
                end
            end) -- true

        end,
        DoubleClick = false,
    });
    local AddDivider_3 = __4.AddDivider;
    local AddDivider_4 = __4:AddDivider();
    local AddButton_19 = __4.AddButton;
    local AddButton_20 = __4:AddButton({
        Text = "通用功能",
        Func = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            local Success_10226, Error_Message_10226 = pcall(function(...)
                local var446 = tick();
                local var447 = game:HttpGet("https://raw.githubusercontent.com/DevSloPo/Main/refs/heads/main/Universal%20_1/Universal");
                local var448 = loadstring(var447);
                -- this function was spied, no real content was loaded.
                local _call449 = var448();
                local var450 = tick();
                local var451 = var450 - var446;
                -- 0.187860
                local Not_PlayerGui_4_2 = not PlayerGui_4;
                -- false
                if Not_PlayerGui_4_2 then -- didnt run, expr id 481, has no else.
                end
                local Not_PlayerGui_4_3 = not PlayerGui_4;
                -- false
                if Not_PlayerGui_4_3 then -- didnt run, expr id 482, has no else.
                end
                local Not_ScreenGui_3 = not ScreenGui_3;
                -- false
                local Parent_2 = ScreenGui_3.Parent;
                local Not_Parent_2 = not Parent_2;
                -- false
                local var452 = (Not_ScreenGui_3 or Not_Parent_2); -- false
                if var452 then -- didnt run, expr id 483, has no else.
                end
                local Frame_9 = Instance.new("Frame");
                Frame_9.Name = "NotificationContainer";
                local UDim2_Value_34 = UDim2_New(0.4, 0, 0.15, 0);
                Frame_9.Size = UDim2_Value_34;
                local UDim2_Value_35 = UDim2_New(0.5, 0, 0.08, 0);
                Frame_9.Position = UDim2_Value_35;
                local Vector2_Value_11 = Vector2_New(0.5, 0);
                Frame_9.AnchorPoint = Vector2_Value_11;
                Frame_9.BackgroundTransparency = 1;
                Frame_9.ZIndex = 999;
                Frame_9.Parent = ScreenGui_3;
                local UDim2_Value_36 = UDim2_New(0, 0, 0, 0);
                Frame_9.Size = UDim2_Value_36;
                Frame_9.BackgroundTransparency = 1;
                local TextLabel_5 = Instance.new("TextLabel");
                TextLabel_5.Name = "EntityNotice";
                local UDim2_Value_37 = UDim2_New(0.9, 0, 0.25, 0);
                TextLabel_5.Size = UDim2_Value_37;
                local UDim2_Value_38 = UDim2_New(0.05, 0, 0, 0);
                TextLabel_5.Position = UDim2_Value_38;
                TextLabel_5.BackgroundTransparency = 1;
                TextLabel_5.Text = "ENTITY NOTICE";
                TextLabel_5.TextColor3 = Color3_Value_4;
                TextLabel_5.TextSize = 20;
                local Oswald_3 = Enum_Font.Oswald;
                TextLabel_5.Font = Oswald_3;
                local New_12 = Font.new;
                local Bold_3 = Enum_FontWeight.Bold;
                local Normal_3 = Enum_FontStyle.Normal;
                local _call456 = New_12("rbxasset://fonts/families/Oswald.json", Bold_3, Normal_3);
                TextLabel_5.FontFace = _call456;
                local Left_5 = Enum_TextXAlignment.Left;
                TextLabel_5.TextXAlignment = Left_5;
                local Bottom_3 = Enum_TextYAlignment.Bottom;
                TextLabel_5.TextYAlignment = Bottom_3;
                TextLabel_5.ZIndex = 1000;
                TextLabel_5.TextTransparency = 1;
                TextLabel_5.Parent = Frame_9;
                local Frame_10 = Instance.new("Frame");
                Frame_10.Name = "Notification";
                local UDim2_Value_39 = UDim2_New(0.95, 0, 0.7, 0);
                Frame_10.Size = UDim2_Value_39;
                local UDim2_Value_40 = UDim2_New(0.025, 0, 0.3, 0);
                Frame_10.Position = UDim2_Value_40;
                local Vector2_Value_12 = Vector2_New(0, 0);
                Frame_10.AnchorPoint = Vector2_Value_12;
                Frame_10.BackgroundColor3 = Color3_Value_6;
                Frame_10.BackgroundTransparency = 0.2;
                Frame_10.BorderSizePixel = 0;
                Frame_10.ZIndex = 999;
                Frame_10.Parent = Frame_9;
                local UICorner_7 = Instance.new("UICorner");
                local UDim_Value_7 = UDim_New(0, 10);
                UICorner_7.CornerRadius = UDim_Value_7;
                UICorner_7.Parent = Frame_10;
                local UIStroke_5 = Instance.new("UIStroke");
                UIStroke_5.Color = Color3_Value_4;
                UIStroke_5.Thickness = 3;
                UIStroke_5.Transparency = 0.1;
                UIStroke_5.ZIndex = 1000;
                UIStroke_5.Parent = Frame_10;
                local Frame_11 = Instance.new("Frame");
                Frame_11.Name = "IconContainer";
                local UDim2_Value_41 = UDim2_New(0, 50, 0, 50);
                Frame_11.Size = UDim2_Value_41;
                local UDim2_Value_42 = UDim2_New(0.05, 0, 0.5, 0);
                Frame_11.Position = UDim2_Value_42;
                local Vector2_Value_13 = Vector2_New(0, 0.5);
                Frame_11.AnchorPoint = Vector2_Value_13;
                Frame_11.BackgroundColor3 = Color3_Value_6;
                Frame_11.BackgroundTransparency = 0.3;
                Frame_11.ZIndex = 1000;
                Frame_11.Parent = Frame_10;
                local UICorner_8 = Instance.new("UICorner");
                local UDim_Value_8 = UDim_New(1, 0);
                UICorner_8.CornerRadius = UDim_Value_8;
                UICorner_8.Parent = Frame_11;
                local UIStroke_6 = Instance.new("UIStroke");
                UIStroke_6.Color = Color3_Value_4;
                UIStroke_6.Thickness = 2;
                UIStroke_6.Transparency = 0.2;
                UIStroke_6.ZIndex = 1001;
                UIStroke_6.Parent = Frame_11;
                local ImageLabel_3 = Instance.new("ImageLabel");
                ImageLabel_3.Name = "Icon";
                local UDim2_Value_43 = UDim2_New(1, 0, 1, 0);
                ImageLabel_3.Size = UDim2_Value_43;
                local UDim2_Value_44 = UDim2_New(0.5, 0, 0.5, 0);
                ImageLabel_3.Position = UDim2_Value_44;
                local Vector2_Value_14 = Vector2_New(0.5, 0.5);
                ImageLabel_3.AnchorPoint = Vector2_Value_14;
                ImageLabel_3.BackgroundTransparency = 1;
                ImageLabel_3.Image = "rbxassetid://97837015726495";
                local Fit_3 = Enum_ScaleType.Fit;
                ImageLabel_3.ScaleType = Fit_3;
                ImageLabel_3.ZIndex = 1002;
                ImageLabel_3.ImageTransparency = 1;
                ImageLabel_3.Parent = Frame_11;
                local UICorner_9 = Instance.new("UICorner");
                local UDim_Value_9 = UDim_New(1, 0);
                UICorner_9.CornerRadius = UDim_Value_9;
                UICorner_9.Parent = ImageLabel_3;
                local Frame_12 = Instance.new("Frame");
                Frame_12.Name = "MessageFrame";
                local UDim2_Value_45 = UDim2_New(0.65, 0, 0.8, 0);
                Frame_12.Size = UDim2_Value_45;
                local UDim2_Value_46 = UDim2_New(0.22, 0, 0.5, 0);
                Frame_12.Position = UDim2_Value_46;
                local Vector2_Value_15 = Vector2_New(0, 0.5);
                Frame_12.AnchorPoint = Vector2_Value_15;
                Frame_12.BackgroundTransparency = 1;
                Frame_12.ZIndex = 1000;
                Frame_12.Parent = Frame_10;
                local TextLabel_6 = Instance.new("TextLabel");
                TextLabel_6.Name = "Message";
                local UDim2_Value_47 = UDim2_New(1, 0, 1, 0);
                TextLabel_6.Size = UDim2_Value_47;
                TextLabel_6.BackgroundTransparency = 1;
                TextLabel_6.Text = "通用脚本加载完成！耗时: 0.19秒";
                TextLabel_6.TextColor3 = Color3_Value_5;
                TextLabel_6.TextSize = 18;
                TextLabel_6.TextWrapped = true;
                local RobotoCondensed_3 = Enum_Font.RobotoCondensed;
                TextLabel_6.Font = RobotoCondensed_3;
                local Left_6 = Enum_TextXAlignment.Left;
                TextLabel_6.TextXAlignment = Left_6;
                local Center_3 = Enum_TextYAlignment.Center;
                TextLabel_6.TextYAlignment = Center_3;
                TextLabel_6.ZIndex = 1001;
                TextLabel_6.TextTransparency = 1;
                TextLabel_6.Parent = Frame_12;
                local UIGradient_4 = Instance.new("UIGradient");
                local Color3_Value_14 = Color3_FromRGB(94, 78, 71);
                local ColorSequenceKeypoint_Value_7 = ColorSequenceKeypoint_New(0, Color3_Value_14);
                local Color3_Value_15 = Color3_FromRGB(84, 68, 61);
                local ColorSequenceKeypoint_Value_8 = ColorSequenceKeypoint_New(0.5, Color3_Value_15);
                local Color3_Value_16 = Color3_FromRGB(94, 78, 71);
                local ColorSequenceKeypoint_Value_9 = ColorSequenceKeypoint_New(1, Color3_Value_16);
                local ColorSequence_Value_3 = ColorSequence_New({
                    ColorSequenceKeypoint_Value_7,
                    ColorSequenceKeypoint_Value_8,
                    ColorSequenceKeypoint_Value_9,
                });
                UIGradient_4.Color = ColorSequence_Value_3;
                local NumberSequenceKeypoint_Value_7 = NumberSequenceKeypoint_New(0, 0.2);
                local NumberSequenceKeypoint_Value_8 = NumberSequenceKeypoint_New(0.5, 0.25);
                local NumberSequenceKeypoint_Value_9 = NumberSequenceKeypoint_New(1, 0.2);
                local NumberSequence_Value_3 = NumberSequence_New({
                    NumberSequenceKeypoint_Value_7,
                    NumberSequenceKeypoint_Value_8,
                    NumberSequenceKeypoint_Value_9,
                });
                UIGradient_4.Transparency = NumberSequence_Value_3;
                UIGradient_4.Rotation = 90;
                UIGradient_4.Parent = Frame_10;
                local Success_10451, Error_Message_10451 = pcall(function(...)
                    local Sound_3 = Instance.new("Sound");
                    Sound_3.SoundId = "rbxassetid://99469140131424";
                    Sound_3.Volume = 10;
                    Sound_3.Parent = workspace;
                    local Connection_9;
                    Connection_9 = Sound_3.Ended:Connect(function() -- args: SoundId_3;
                        local Destroy_3 = Sound_3:Destroy();

                    end);
                    local Play_9 = Sound_3:Play();
                end) -- true
                local Array_6 = Array_5;
                local var463 = table.insert(Array_6, 1, Frame_9);
                local New_13 = TweenInfo.new;
                local Back_3 = Enum_EasingStyle.Back;
                local Out_9 = Enum_EasingDirection.Out;
                local _call466 = New_13(0.4, Back_3, Out_9);
                local UDim2_Value_48 = UDim2_New(0.4, 0, 0.15, 0);
                local str_11 = TweenService:Create(Frame_9, _call466, {
                    Size = UDim2_Value_48,
                });
                local New_14 = TweenInfo.new;
                local Quad_7 = Enum_EasingStyle.Quad;
                local Out_10 = Enum_EasingDirection.Out;
                local _call469 = New_14(0.5, Quad_7, Out_10, 0, false, 0.3);
                local str_12 = TweenService:Create(TextLabel_5, _call469, {
                    TextTransparency = 0,
                });
                local New_15 = TweenInfo.new;
                local Quad_8 = Enum_EasingStyle.Quad;
                local Out_11 = Enum_EasingDirection.Out;
                local _call472 = New_15(0.5, Quad_8, Out_11, 0, false, 0.4);
                local str_13 = TweenService:Create(ImageLabel_3, _call472, {
                    ImageTransparency = 0,
                });
                local New_16 = TweenInfo.new;
                local Quad_9 = Enum_EasingStyle.Quad;
                local Out_12 = Enum_EasingDirection.Out;
                local _call475 = New_16(0.6, Quad_9, Out_12, 0, false, 0.5);
                local str_14 = TweenService:Create(TextLabel_6, _call475, {
                    TextTransparency = 0,
                });
                local Play_10 = str_11.Play;
                local Play_11 = str_11:Play();
                local Completed_3 = str_11.Completed;
                local Connect_8 = Completed_3.Connect;
                local Connected_6 = Completed_3:Connect(function()
                    local Play_42 = str_12.Play;
                    local Play_43 = str_12:Play();
                    local Play_44 = str_13.Play;
                    local Play_45 = str_13:Play();
                    local Play_46 = str_14.Play;
                    local Play_47 = str_14:Play();
                    local Completed_10 = str_14.Completed;
                    local Connect_17 = Completed_10.Connect;
                    local Connected_15 = Completed_10:Connect(function()

                    end);

                end);
                local Spawned_6 = task.delay(5, function()
                    local Not_Frame_9 = not Frame_9;
                    -- false
                    local Parent_7 = Frame_9.Parent;
                    local Not_Parent_7 = not Parent_7;
                    -- false
                    local var983 = (Not_Frame_9 or Not_Parent_7); -- false
                    if var983 then -- didnt run, expr id 971, has no else.
                    end
                    local New_35 = TweenInfo.new;
                    local Quad_22 = Enum_EasingStyle.Quad;
                    local In_10 = Enum_EasingDirection.In;
                    local _call986 = New_35(0.3, Quad_22, In_10);
                    local str_114 = TweenService:Create(TextLabel_5, _call986, {
                        TextTransparency = 1,
                    });
                    local New_36 = TweenInfo.new;
                    local Quad_23 = Enum_EasingStyle.Quad;
                    local In_11 = Enum_EasingDirection.In;
                    local _call989 = New_36(0.3, Quad_23, In_11);
                    local str_115 = TweenService:Create(ImageLabel_3, _call989, {
                        ImageTransparency = 1,
                    });
                    local New_37 = TweenInfo.new;
                    local Quad_24 = Enum_EasingStyle.Quad;
                    local In_12 = Enum_EasingDirection.In;
                    local _call992 = New_37(0.3, Quad_24, In_12);
                    local str_116 = TweenService:Create(TextLabel_6, _call992, {
                        TextTransparency = 1,
                    });
                    local New_38 = TweenInfo.new;
                    local Back_8 = Enum_EasingStyle.Back;
                    local In_13 = Enum_EasingDirection.In;
                    local _call995 = New_38(0.5, Back_8, In_13, 0, false, 0.3);
                    local UDim2_Value_81 = UDim2_New(0, 0, 0, 0);
                    local str_117 = TweenService:Create(Frame_9, _call995, {
                        Size = UDim2_Value_81,
                    });
                    local Play_48 = str_114.Play;
                    local Play_49 = str_114:Play();
                    local Play_50 = str_115.Play;
                    local Play_51 = str_115:Play();
                    local Play_52 = str_116.Play;
                    local Play_53 = str_116:Play();
                    local Completed_11 = str_116.Completed;
                    local Connect_18 = Completed_11.Connect;
                    local Connected_16 = Completed_11:Connect(function()
                        local Play_82 = str_117.Play;
                        local Play_83 = str_117:Play();
                        local Completed_18 = str_117.Completed;
                        local Connect_25 = Completed_18.Connect;
                        local Connected_23 = Completed_18:Connect(function()
                            local Parent_12 = Frame_9.Parent;
                            local var1051 = (Frame_9 and Parent_12); -- ScreenGui_3
                            if var1051 then -- ran, expr id 979, has no else.
                                local Destroy_8 = Frame_9:Destroy();
                            end

                        end);

                    end);

                end);
            end) -- true

        end,
        DoubleClick = false,
    });
    local AddButton_21 = AddButton_20.AddButton;
    local AddButton_22 = AddButton_20:AddButton({
        Risky = true,
        Text = "通用子追",
        Func = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            local Success_10452, Error_Message_10452 = pcall(function(...)
                local var478 = tick();
                local var479 = game:HttpGet("https://raw.githubusercontent.com/DevSloPo/Main/refs/heads/main/Universal%20_1/Bullettracking");
                local var480 = loadstring(var479);
                -- this function was spied, no real content was loaded.
                local _call481 = var480();
                local var482 = tick();
                local var483 = var482 - var478;
                -- 0.085473
                local Not_PlayerGui_4_4 = not PlayerGui_4;
                -- false
                if Not_PlayerGui_4_4 then -- didnt run, expr id 484, has no else.
                end
                local Not_PlayerGui_4_5 = not PlayerGui_4;
                -- false
                if Not_PlayerGui_4_5 then -- didnt run, expr id 485, has no else.
                end
                local Not_ScreenGui_3_2 = not ScreenGui_3;
                -- false
                local Parent_3 = ScreenGui_3.Parent;
                local Not_Parent_3 = not Parent_3;
                -- false
                local var484 = (Not_ScreenGui_3_2 or Not_Parent_3); -- false
                if var484 then -- didnt run, expr id 486, has no else.
                end
                local Frame_13 = Instance.new("Frame");
                Frame_13.Name = "NotificationContainer";
                local UDim2_Value_49 = UDim2_New(0.4, 0, 0.15, 0);
                Frame_13.Size = UDim2_Value_49;
                local UDim2_Value_50 = UDim2_New(0.5, 0, 0.08, 0);
                Frame_13.Position = UDim2_Value_50;
                local Vector2_Value_16 = Vector2_New(0.5, 0);
                Frame_13.AnchorPoint = Vector2_Value_16;
                Frame_13.BackgroundTransparency = 1;
                Frame_13.ZIndex = 999;
                Frame_13.Parent = ScreenGui_3;
                local UDim2_Value_51 = UDim2_New(0, 0, 0, 0);
                Frame_13.Size = UDim2_Value_51;
                Frame_13.BackgroundTransparency = 1;
                local TextLabel_7 = Instance.new("TextLabel");
                TextLabel_7.Name = "EntityNotice";
                local UDim2_Value_52 = UDim2_New(0.9, 0, 0.25, 0);
                TextLabel_7.Size = UDim2_Value_52;
                local UDim2_Value_53 = UDim2_New(0.05, 0, 0, 0);
                TextLabel_7.Position = UDim2_Value_53;
                TextLabel_7.BackgroundTransparency = 1;
                TextLabel_7.Text = "ENTITY NOTICE";
                TextLabel_7.TextColor3 = Color3_Value_4;
                TextLabel_7.TextSize = 20;
                local Oswald_4 = Enum_Font.Oswald;
                TextLabel_7.Font = Oswald_4;
                local New_17 = Font.new;
                local Bold_4 = Enum_FontWeight.Bold;
                local Normal_4 = Enum_FontStyle.Normal;
                local _call488 = New_17("rbxasset://fonts/families/Oswald.json", Bold_4, Normal_4);
                TextLabel_7.FontFace = _call488;
                local Left_7 = Enum_TextXAlignment.Left;
                TextLabel_7.TextXAlignment = Left_7;
                local Bottom_4 = Enum_TextYAlignment.Bottom;
                TextLabel_7.TextYAlignment = Bottom_4;
                TextLabel_7.ZIndex = 1000;
                TextLabel_7.TextTransparency = 1;
                TextLabel_7.Parent = Frame_13;
                local Frame_14 = Instance.new("Frame");
                Frame_14.Name = "Notification";
                local UDim2_Value_54 = UDim2_New(0.95, 0, 0.7, 0);
                Frame_14.Size = UDim2_Value_54;
                local UDim2_Value_55 = UDim2_New(0.025, 0, 0.3, 0);
                Frame_14.Position = UDim2_Value_55;
                local Vector2_Value_17 = Vector2_New(0, 0);
                Frame_14.AnchorPoint = Vector2_Value_17;
                Frame_14.BackgroundColor3 = Color3_Value_6;
                Frame_14.BackgroundTransparency = 0.2;
                Frame_14.BorderSizePixel = 0;
                Frame_14.ZIndex = 999;
                Frame_14.Parent = Frame_13;
                local UICorner_10 = Instance.new("UICorner");
                local UDim_Value_10 = UDim_New(0, 10);
                UICorner_10.CornerRadius = UDim_Value_10;
                UICorner_10.Parent = Frame_14;
                local UIStroke_7 = Instance.new("UIStroke");
                UIStroke_7.Color = Color3_Value_4;
                UIStroke_7.Thickness = 3;
                UIStroke_7.Transparency = 0.1;
                UIStroke_7.ZIndex = 1000;
                UIStroke_7.Parent = Frame_14;
                local Frame_15 = Instance.new("Frame");
                Frame_15.Name = "IconContainer";
                local UDim2_Value_56 = UDim2_New(0, 50, 0, 50);
                Frame_15.Size = UDim2_Value_56;
                local UDim2_Value_57 = UDim2_New(0.05, 0, 0.5, 0);
                Frame_15.Position = UDim2_Value_57;
                local Vector2_Value_18 = Vector2_New(0, 0.5);
                Frame_15.AnchorPoint = Vector2_Value_18;
                Frame_15.BackgroundColor3 = Color3_Value_6;
                Frame_15.BackgroundTransparency = 0.3;
                Frame_15.ZIndex = 1000;
                Frame_15.Parent = Frame_14;
                local UICorner_11 = Instance.new("UICorner");
                local UDim_Value_11 = UDim_New(1, 0);
                UICorner_11.CornerRadius = UDim_Value_11;
                UICorner_11.Parent = Frame_15;
                local UIStroke_8 = Instance.new("UIStroke");
                UIStroke_8.Color = Color3_Value_4;
                UIStroke_8.Thickness = 2;
                UIStroke_8.Transparency = 0.2;
                UIStroke_8.ZIndex = 1001;
                UIStroke_8.Parent = Frame_15;
                local ImageLabel_4 = Instance.new("ImageLabel");
                ImageLabel_4.Name = "Icon";
                local UDim2_Value_58 = UDim2_New(1, 0, 1, 0);
                ImageLabel_4.Size = UDim2_Value_58;
                local UDim2_Value_59 = UDim2_New(0.5, 0, 0.5, 0);
                ImageLabel_4.Position = UDim2_Value_59;
                local Vector2_Value_19 = Vector2_New(0.5, 0.5);
                ImageLabel_4.AnchorPoint = Vector2_Value_19;
                ImageLabel_4.BackgroundTransparency = 1;
                ImageLabel_4.Image = "rbxassetid://97837015726495";
                local Fit_4 = Enum_ScaleType.Fit;
                ImageLabel_4.ScaleType = Fit_4;
                ImageLabel_4.ZIndex = 1002;
                ImageLabel_4.ImageTransparency = 1;
                ImageLabel_4.Parent = Frame_15;
                local UICorner_12 = Instance.new("UICorner");
                local UDim_Value_12 = UDim_New(1, 0);
                UICorner_12.CornerRadius = UDim_Value_12;
                UICorner_12.Parent = ImageLabel_4;
                local Frame_16 = Instance.new("Frame");
                Frame_16.Name = "MessageFrame";
                local UDim2_Value_60 = UDim2_New(0.65, 0, 0.8, 0);
                Frame_16.Size = UDim2_Value_60;
                local UDim2_Value_61 = UDim2_New(0.22, 0, 0.5, 0);
                Frame_16.Position = UDim2_Value_61;
                local Vector2_Value_20 = Vector2_New(0, 0.5);
                Frame_16.AnchorPoint = Vector2_Value_20;
                Frame_16.BackgroundTransparency = 1;
                Frame_16.ZIndex = 1000;
                Frame_16.Parent = Frame_14;
                local TextLabel_8 = Instance.new("TextLabel");
                TextLabel_8.Name = "Message";
                local UDim2_Value_62 = UDim2_New(1, 0, 1, 0);
                TextLabel_8.Size = UDim2_Value_62;
                TextLabel_8.BackgroundTransparency = 1;
                TextLabel_8.Text = "通用脚本加载完成！耗时: 0.09秒";
                TextLabel_8.TextColor3 = Color3_Value_5;
                TextLabel_8.TextSize = 18;
                TextLabel_8.TextWrapped = true;
                local RobotoCondensed_4 = Enum_Font.RobotoCondensed;
                TextLabel_8.Font = RobotoCondensed_4;
                local Left_8 = Enum_TextXAlignment.Left;
                TextLabel_8.TextXAlignment = Left_8;
                local Center_4 = Enum_TextYAlignment.Center;
                TextLabel_8.TextYAlignment = Center_4;
                TextLabel_8.ZIndex = 1001;
                TextLabel_8.TextTransparency = 1;
                TextLabel_8.Parent = Frame_16;
                local UIGradient_5 = Instance.new("UIGradient");
                local Color3_Value_17 = Color3_FromRGB(94, 78, 71);
                local ColorSequenceKeypoint_Value_10 = ColorSequenceKeypoint_New(0, Color3_Value_17);
                local Color3_Value_18 = Color3_FromRGB(84, 68, 61);
                local ColorSequenceKeypoint_Value_11 = ColorSequenceKeypoint_New(0.5, Color3_Value_18);
                local Color3_Value_19 = Color3_FromRGB(94, 78, 71);
                local ColorSequenceKeypoint_Value_12 = ColorSequenceKeypoint_New(1, Color3_Value_19);
                local ColorSequence_Value_4 = ColorSequence_New({
                    ColorSequenceKeypoint_Value_10,
                    ColorSequenceKeypoint_Value_11,
                    ColorSequenceKeypoint_Value_12,
                });
                UIGradient_5.Color = ColorSequence_Value_4;
                local NumberSequenceKeypoint_Value_10 = NumberSequenceKeypoint_New(0, 0.2);
                local NumberSequenceKeypoint_Value_11 = NumberSequenceKeypoint_New(0.5, 0.25);
                local NumberSequenceKeypoint_Value_12 = NumberSequenceKeypoint_New(1, 0.2);
                local NumberSequence_Value_4 = NumberSequence_New({
                    NumberSequenceKeypoint_Value_10,
                    NumberSequenceKeypoint_Value_11,
                    NumberSequenceKeypoint_Value_12,
                });
                UIGradient_5.Transparency = NumberSequence_Value_4;
                UIGradient_5.Rotation = 90;
                UIGradient_5.Parent = Frame_14;
                local Success_10549, Error_Message_10549 = pcall(function(...)
                    local Sound_4 = Instance.new("Sound");
                    Sound_4.SoundId = "rbxassetid://99469140131424";
                    Sound_4.Volume = 10;
                    Sound_4.Parent = workspace;
                    local Connection_10;
                    Connection_10 = Sound_4.Ended:Connect(function() -- args: SoundId_4;
                        local Destroy_4 = Sound_4:Destroy();

                    end);
                    local Play_12 = Sound_4:Play();
                end) -- true
                local Array_7 = Array_6;
                local var495 = table.insert(Array_7, 1, Frame_13);
                local New_18 = TweenInfo.new;
                local Back_4 = Enum_EasingStyle.Back;
                local Out_13 = Enum_EasingDirection.Out;
                local _call498 = New_18(0.4, Back_4, Out_13);
                local UDim2_Value_63 = UDim2_New(0.4, 0, 0.15, 0);
                local str_15 = TweenService:Create(Frame_13, _call498, {
                    Size = UDim2_Value_63,
                });
                local New_19 = TweenInfo.new;
                local Quad_10 = Enum_EasingStyle.Quad;
                local Out_14 = Enum_EasingDirection.Out;
                local _call501 = New_19(0.5, Quad_10, Out_14, 0, false, 0.3);
                local str_16 = TweenService:Create(TextLabel_7, _call501, {
                    TextTransparency = 0,
                });
                local New_20 = TweenInfo.new;
                local Quad_11 = Enum_EasingStyle.Quad;
                local Out_15 = Enum_EasingDirection.Out;
                local _call504 = New_20(0.5, Quad_11, Out_15, 0, false, 0.4);
                local str_17 = TweenService:Create(ImageLabel_4, _call504, {
                    ImageTransparency = 0,
                });
                local New_21 = TweenInfo.new;
                local Quad_12 = Enum_EasingStyle.Quad;
                local Out_16 = Enum_EasingDirection.Out;
                local _call507 = New_21(0.6, Quad_12, Out_16, 0, false, 0.5);
                local str_18 = TweenService:Create(TextLabel_8, _call507, {
                    TextTransparency = 0,
                });
                local Play_13 = str_15.Play;
                local Play_14 = str_15:Play();
                local Completed_4 = str_15.Completed;
                local Connect_9 = Completed_4.Connect;
                local Connected_7 = Completed_4:Connect(function()
                    local Play_54 = str_16.Play;
                    local Play_55 = str_16:Play();
                    local Play_56 = str_17.Play;
                    local Play_57 = str_17:Play();
                    local Play_58 = str_18.Play;
                    local Play_59 = str_18:Play();
                    local Completed_12 = str_18.Completed;
                    local Connect_19 = Completed_12.Connect;
                    local Connected_17 = Completed_12:Connect(function()

                    end);

                end);
                local Spawned_7 = task.delay(5, function()
                    local Not_Frame_13 = not Frame_13;
                    -- false
                    local Parent_8 = Frame_13.Parent;
                    local Not_Parent_8 = not Parent_8;
                    -- false
                    local var1004 = (Not_Frame_13 or Not_Parent_8); -- false
                    if var1004 then -- didnt run, expr id 972, has no else.
                    end
                    local New_39 = TweenInfo.new;
                    local Quad_25 = Enum_EasingStyle.Quad;
                    local In_14 = Enum_EasingDirection.In;
                    local _call1007 = New_39(0.3, Quad_25, In_14);
                    local str_118 = TweenService:Create(TextLabel_7, _call1007, {
                        TextTransparency = 1,
                    });
                    local New_40 = TweenInfo.new;
                    local Quad_26 = Enum_EasingStyle.Quad;
                    local In_15 = Enum_EasingDirection.In;
                    local _call1010 = New_40(0.3, Quad_26, In_15);
                    local str_119 = TweenService:Create(ImageLabel_4, _call1010, {
                        ImageTransparency = 1,
                    });
                    local New_41 = TweenInfo.new;
                    local Quad_27 = Enum_EasingStyle.Quad;
                    local In_16 = Enum_EasingDirection.In;
                    local _call1013 = New_41(0.3, Quad_27, In_16);
                    local str_120 = TweenService:Create(TextLabel_8, _call1013, {
                        TextTransparency = 1,
                    });
                    local New_42 = TweenInfo.new;
                    local Back_9 = Enum_EasingStyle.Back;
                    local In_17 = Enum_EasingDirection.In;
                    local _call1016 = New_42(0.5, Back_9, In_17, 0, false, 0.3);
                    local UDim2_Value_82 = UDim2_New(0, 0, 0, 0);
                    local str_121 = TweenService:Create(Frame_13, _call1016, {
                        Size = UDim2_Value_82,
                    });
                    local Play_60 = str_118.Play;
                    local Play_61 = str_118:Play();
                    local Play_62 = str_119.Play;
                    local Play_63 = str_119:Play();
                    local Play_64 = str_120.Play;
                    local Play_65 = str_120:Play();
                    local Completed_13 = str_120.Completed;
                    local Connect_20 = Completed_13.Connect;
                    local Connected_18 = Completed_13:Connect(function()
                        local Play_84 = str_121.Play;
                        local Play_85 = str_121:Play();
                        local Completed_19 = str_121.Completed;
                        local Connect_26 = Completed_19.Connect;
                        local Connected_24 = Completed_19:Connect(function()
                            local Parent_13 = Frame_13.Parent;
                            local var1052 = (Frame_13 and Parent_13); -- ScreenGui_3
                            if var1052 then -- ran, expr id 980, has no else.
                                local Destroy_9 = Frame_13:Destroy();
                            end

                        end);

                    end);

                end);
            end) -- true

        end,
        DoubleClick = false,
    });
    local AddDivider_5 = __4.AddDivider;
    local AddDivider_6 = __4:AddDivider();
    local AddLabel = __4.AddLabel;
    local str = __4:AddLabel("<font color=\"rgb(255,0,0)\">[警告]\n</font><font color=\"rgb(255,255,255)\">通用子追会被部分服务器</font><font color=\"rgb(255,0,0)\">封禁&踢出</font>");
    local AddDivider_7 = __4.AddDivider;
    local AddDivider_8 = __4:AddDivider();
    local UpdateWarningBox = _.UpdateWarningBox;
    local UpdateWarningBox_2 = _:UpdateWarningBox({
        Visible = true,
        Title = "<font color=\"rgb(0, 255, 0)\">更新日志</font>",
        IsNormal = true,
        Text = "\r\n<font color=\"rgb(0, 255, 0)\">2026,1,2.</font> - XK Hub V2\n加载器<font color=\"rgb(255, 0, 0)\">删除</font>服务器:\n战争大亨，黑暗欺骗，通用时间，俄亥俄州，尼克的下一个机器人，植物大战脑红，种植花园，恶魔学，花园塔防\n后续我们将会对这种删除后的服务器进行大规模重置与新增功能，敬请期待...\r\n",
        LockSize = true,
    });
    local AddLeftGroupbox_3 = _.AddLeftGroupbox;
    local __10 = _:AddLeftGroupbox("用户", "users");
    local AddRightGroupbox_4 = _.AddRightGroupbox;
    local __11 = _:AddRightGroupbox("用户信息", "users");
    local AddLabel_2 = __11.AddLabel;
    local Players_4 = game.Players;
    local LocalPlayer_4 = Players.LocalPlayer;
    local Name_3 = LocalPlayer.Name;
    local var39 = "用户名: " .. Name_3;
    -- "用户名: YLXd"
    local AddLabel_3 = __11:AddLabel(var39);
    local AddLabel_4 = __11.AddLabel;
    local RbxAnalyticsService = game:GetService("RbxAnalyticsService");
    local ClientId = RbxAnalyticsService:GetClientId();
    local var41 = "HWID: " .. ClientId;
    -- "HWID: KuTCQR-vlxQMn-iCEpuS-CScICi"
    local AddLabel_5 = __11:AddLabel(var41);
    local var43 = os.time();
    local AddLabel_6 = __11.AddLabel;
    local Font_Color_Rgb25500_0_Font = __11:AddLabel("使用时间 <font color=\"rgb(255,0,0)\">0</font> 分钟");
    spawn(function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
        local Success_10550, Error_Message_10550 = pcall(function(...)
            local Waited_For = task.wait(60);
            local Not_Waited_For = not Waited_For;
            -- false
            if Waited_For then -- ran, expr id 487, has an else.
                local var510 = os.time();
                local var511 = var510 - var43;
                -- 207.000000
                local var512 = var511 / 60;
                -- 3.450000
                local SetText = Font_Color_Rgb25500_0_Font.SetText;
                local str_19 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">3</font> 分钟");
                local Waited_For_2 = task.wait(60);
                local Not_Waited_For_2 = not Waited_For_2;
                -- false
                if Waited_For_2 then -- ran, expr id 488, has an else.
                    local var513 = os.time();
                    local var514 = var513 - var43;
                    -- 267.000000
                    local var515 = var514 / 60;
                    -- 4.450000
                    local SetText_2 = Font_Color_Rgb25500_0_Font.SetText;
                    local str_20 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">4</font> 分钟");
                    local Waited_For_3 = task.wait(60);
                    local Not_Waited_For_3 = not Waited_For_3;
                    -- false
                    if Waited_For_3 then -- ran, expr id 489, has an else.
                        local var516 = os.time();
                        local var517 = var516 - var43;
                        -- 327.000000
                        local var518 = var517 / 60;
                        -- 5.450000
                        local SetText_3 = Font_Color_Rgb25500_0_Font.SetText;
                        local str_21 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">5</font> 分钟");
                        local Waited_For_4 = task.wait(60);
                        local Not_Waited_For_4 = not Waited_For_4;
                        -- false
                        if Waited_For_4 then -- ran, expr id 490, has an else.
                            local var519 = os.time();
                            local var520 = var519 - var43;
                            -- 387.000000
                            local var521 = var520 / 60;
                            -- 6.450000
                            local SetText_4 = Font_Color_Rgb25500_0_Font.SetText;
                            local str_22 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">6</font> 分钟");
                            local Waited_For_5 = task.wait(60);
                            local Not_Waited_For_5 = not Waited_For_5;
                            -- false
                            if Waited_For_5 then -- ran, expr id 491, has an else.
                                local var522 = os.time();
                                local var523 = var522 - var43;
                                -- 447.000000
                                local var524 = var523 / 60;
                                -- 7.450000
                                local SetText_5 = Font_Color_Rgb25500_0_Font.SetText;
                                local str_23 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">7</font> 分钟");
                                local Waited_For_6 = task.wait(60);
                                local Not_Waited_For_6 = not Waited_For_6;
                                -- false
                                if Waited_For_6 then -- ran, expr id 492, has an else.
                                    local var525 = os.time();
                                    local var526 = var525 - var43;
                                    -- 507.000000
                                    local var527 = var526 / 60;
                                    -- 8.450000
                                    local SetText_6 = Font_Color_Rgb25500_0_Font.SetText;
                                    local str_24 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">8</font> 分钟");
                                    local Waited_For_7 = task.wait(60);
                                    local Not_Waited_For_7 = not Waited_For_7;
                                    -- false
                                    if Waited_For_7 then -- ran, expr id 493, has an else.
                                        local var528 = os.time();
                                        local var529 = var528 - var43;
                                        -- 567.000000
                                        local var530 = var529 / 60;
                                        -- 9.450000
                                        local SetText_7 = Font_Color_Rgb25500_0_Font.SetText;
                                        local str_25 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">9</font> 分钟");
                                        local Waited_For_8 = task.wait(60);
                                        local Not_Waited_For_8 = not Waited_For_8;
                                        -- false
                                        if Waited_For_8 then -- ran, expr id 494, has an else.
                                            local var531 = os.time();
                                            local var532 = var531 - var43;
                                            -- 627.000000
                                            local var533 = var532 / 60;
                                            -- 10.450000
                                            local SetText_8 = Font_Color_Rgb25500_0_Font.SetText;
                                            local str_26 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">10</font> 分钟");
                                            local Waited_For_9 = task.wait(60);
                                            local Not_Waited_For_9 = not Waited_For_9;
                                            -- false
                                            if Waited_For_9 then -- ran, expr id 495, has an else.
                                                local var534 = os.time();
                                                local var535 = var534 - var43;
                                                -- 687.000000
                                                local var536 = var535 / 60;
                                                -- 11.450000
                                                local SetText_9 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_27 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">11</font> 分钟");
                                                local Waited_For_10 = task.wait(60);
                                                local Not_Waited_For_10 = not Waited_For_10;
                                                -- false
                                                if Waited_For_10 then -- ran, expr id 496, has an else.
                                                local var537 = os.time();
                                                local var538 = var537 - var43;
                                                -- 747.000000
                                                local var539 = var538 / 60;
                                                -- 12.450000
                                                local SetText_10 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_28 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">12</font> 分钟");
                                                local Waited_For_11 = task.wait(60);
                                                local Not_Waited_For_11 = not Waited_For_11;
                                                -- false
                                                if Waited_For_11 then -- ran, expr id 497, has an else.
                                                local var540 = os.time();
                                                local var541 = var540 - var43;
                                                -- 807.000000
                                                local var542 = var541 / 60;
                                                -- 13.450000
                                                local SetText_11 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_29 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">13</font> 分钟");
                                                local Waited_For_12 = task.wait(60);
                                                local Not_Waited_For_12 = not Waited_For_12;
                                                -- false
                                                if Waited_For_12 then -- ran, expr id 498, has an else.
                                                local var543 = os.time();
                                                local var544 = var543 - var43;
                                                -- 867.000000
                                                local var545 = var544 / 60;
                                                -- 14.450000
                                                local SetText_12 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_30 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">14</font> 分钟");
                                                local Waited_For_13 = task.wait(60);
                                                local Not_Waited_For_13 = not Waited_For_13;
                                                -- false
                                                if Waited_For_13 then -- ran, expr id 499, has an else.
                                                local var546 = os.time();
                                                local var547 = var546 - var43;
                                                -- 927.000000
                                                local var548 = var547 / 60;
                                                -- 15.450000
                                                local SetText_13 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_31 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">15</font> 分钟");
                                                local Waited_For_14 = task.wait(60);
                                                local Not_Waited_For_14 = not Waited_For_14;
                                                -- false
                                                if Waited_For_14 then -- ran, expr id 500, has an else.
                                                local var549 = os.time();
                                                local var550 = var549 - var43;
                                                -- 987.000000
                                                local var551 = var550 / 60;
                                                -- 16.450000
                                                local SetText_14 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_32 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">16</font> 分钟");
                                                local Waited_For_15 = task.wait(60);
                                                local Not_Waited_For_15 = not Waited_For_15;
                                                -- false
                                                if Waited_For_15 then -- ran, expr id 501, has an else.
                                                local var552 = os.time();
                                                local var553 = var552 - var43;
                                                -- 1047.000000
                                                local var554 = var553 / 60;
                                                -- 17.450000
                                                local SetText_15 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_33 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">17</font> 分钟");
                                                local Waited_For_16 = task.wait(60);
                                                local Not_Waited_For_16 = not Waited_For_16;
                                                -- false
                                                if Waited_For_16 then -- ran, expr id 502, has an else.
                                                local var555 = os.time();
                                                local var556 = var555 - var43;
                                                -- 1107.000000
                                                local var557 = var556 / 60;
                                                -- 18.450000
                                                local SetText_16 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_34 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">18</font> 分钟");
                                                local Waited_For_17 = task.wait(60);
                                                local Not_Waited_For_17 = not Waited_For_17;
                                                -- false
                                                if Waited_For_17 then -- ran, expr id 503, has an else.
                                                local var558 = os.time();
                                                local var559 = var558 - var43;
                                                -- 1167.000000
                                                local var560 = var559 / 60;
                                                -- 19.450000
                                                local SetText_17 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_35 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">19</font> 分钟");
                                                local Waited_For_18 = task.wait(60);
                                                local Not_Waited_For_18 = not Waited_For_18;
                                                -- false
                                                if Waited_For_18 then -- ran, expr id 504, has an else.
                                                local var561 = os.time();
                                                local var562 = var561 - var43;
                                                -- 1227.000000
                                                local var563 = var562 / 60;
                                                -- 20.450000
                                                local SetText_18 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_36 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">20</font> 分钟");
                                                local Waited_For_19 = task.wait(60);
                                                local Not_Waited_For_19 = not Waited_For_19;
                                                -- false
                                                if Waited_For_19 then -- ran, expr id 505, has an else.
                                                local var564 = os.time();
                                                local var565 = var564 - var43;
                                                -- 1287.000000
                                                local var566 = var565 / 60;
                                                -- 21.450000
                                                local SetText_19 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_37 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">21</font> 分钟");
                                                local Waited_For_20 = task.wait(60);
                                                local Not_Waited_For_20 = not Waited_For_20;
                                                -- false
                                                if Waited_For_20 then -- ran, expr id 506, has an else.
                                                local var567 = os.time();
                                                local var568 = var567 - var43;
                                                -- 1347.000000
                                                local var569 = var568 / 60;
                                                -- 22.450000
                                                local SetText_20 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_38 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">22</font> 分钟");
                                                local Waited_For_21 = task.wait(60);
                                                local Not_Waited_For_21 = not Waited_For_21;
                                                -- false
                                                if Waited_For_21 then -- ran, expr id 507, has an else.
                                                local var570 = os.time();
                                                local var571 = var570 - var43;
                                                -- 1407.000000
                                                local var572 = var571 / 60;
                                                -- 23.450000
                                                local SetText_21 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_39 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">23</font> 分钟");
                                                local Waited_For_22 = task.wait(60);
                                                local Not_Waited_For_22 = not Waited_For_22;
                                                -- false
                                                if Waited_For_22 then -- ran, expr id 508, has an else.
                                                local var573 = os.time();
                                                local var574 = var573 - var43;
                                                -- 1467.000000
                                                local var575 = var574 / 60;
                                                -- 24.450000
                                                local SetText_22 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_40 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">24</font> 分钟");
                                                local Waited_For_23 = task.wait(60);
                                                local Not_Waited_For_23 = not Waited_For_23;
                                                -- false
                                                if Waited_For_23 then -- ran, expr id 509, has an else.
                                                local var576 = os.time();
                                                local var577 = var576 - var43;
                                                -- 1527.000000
                                                local var578 = var577 / 60;
                                                -- 25.450000
                                                local SetText_23 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_41 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">25</font> 分钟");
                                                local Waited_For_24 = task.wait(60);
                                                local Not_Waited_For_24 = not Waited_For_24;
                                                -- false
                                                if Waited_For_24 then -- ran, expr id 510, has an else.
                                                local var579 = os.time();
                                                local var580 = var579 - var43;
                                                -- 1587.000000
                                                local var581 = var580 / 60;
                                                -- 26.450000
                                                local SetText_24 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_42 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">26</font> 分钟");
                                                local Waited_For_25 = task.wait(60);
                                                local Not_Waited_For_25 = not Waited_For_25;
                                                -- false
                                                if Waited_For_25 then -- ran, expr id 511, has an else.
                                                local var582 = os.time();
                                                local var583 = var582 - var43;
                                                -- 1647.000000
                                                local var584 = var583 / 60;
                                                -- 27.450000
                                                local SetText_25 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_43 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">27</font> 分钟");
                                                local Waited_For_26 = task.wait(60);
                                                local Not_Waited_For_26 = not Waited_For_26;
                                                -- false
                                                if Waited_For_26 then -- ran, expr id 512, has an else.
                                                local var585 = os.time();
                                                local var586 = var585 - var43;
                                                -- 1707.000000
                                                local var587 = var586 / 60;
                                                -- 28.450000
                                                local SetText_26 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_44 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">28</font> 分钟");
                                                local Waited_For_27 = task.wait(60);
                                                local Not_Waited_For_27 = not Waited_For_27;
                                                -- false
                                                if Waited_For_27 then -- ran, expr id 513, has an else.
                                                local var588 = os.time();
                                                local var589 = var588 - var43;
                                                -- 1767.000000
                                                local var590 = var589 / 60;
                                                -- 29.450000
                                                local SetText_27 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_45 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">29</font> 分钟");
                                                local Waited_For_28 = task.wait(60);
                                                local Not_Waited_For_28 = not Waited_For_28;
                                                -- false
                                                if Waited_For_28 then -- ran, expr id 514, has an else.
                                                local var591 = os.time();
                                                local var592 = var591 - var43;
                                                -- 1827.000000
                                                local var593 = var592 / 60;
                                                -- 30.450000
                                                local SetText_28 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_46 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">30</font> 分钟");
                                                local Waited_For_29 = task.wait(60);
                                                local Not_Waited_For_29 = not Waited_For_29;
                                                -- false
                                                if Waited_For_29 then -- ran, expr id 515, has an else.
                                                local var594 = os.time();
                                                local var595 = var594 - var43;
                                                -- 1887.000000
                                                local var596 = var595 / 60;
                                                -- 31.450000
                                                local SetText_29 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_47 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">31</font> 分钟");
                                                local Waited_For_30 = task.wait(60);
                                                local Not_Waited_For_30 = not Waited_For_30;
                                                -- false
                                                if Waited_For_30 then -- ran, expr id 516, has an else.
                                                local var597 = os.time();
                                                local var598 = var597 - var43;
                                                -- 1947.000000
                                                local var599 = var598 / 60;
                                                -- 32.450000
                                                local SetText_30 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_48 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">32</font> 分钟");
                                                local Waited_For_31 = task.wait(60);
                                                local Not_Waited_For_31 = not Waited_For_31;
                                                -- false
                                                if Waited_For_31 then -- ran, expr id 517, has an else.
                                                local var600 = os.time();
                                                local var601 = var600 - var43;
                                                -- 2007.000000
                                                local var602 = var601 / 60;
                                                -- 33.450000
                                                local SetText_31 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_49 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">33</font> 分钟");
                                                local Waited_For_32 = task.wait(60);
                                                local Not_Waited_For_32 = not Waited_For_32;
                                                -- false
                                                if Waited_For_32 then -- ran, expr id 518, has an else.
                                                local var603 = os.time();
                                                local var604 = var603 - var43;
                                                -- 2067.000000
                                                local var605 = var604 / 60;
                                                -- 34.450000
                                                local SetText_32 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_50 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">34</font> 分钟");
                                                local Waited_For_33 = task.wait(60);
                                                local Not_Waited_For_33 = not Waited_For_33;
                                                -- false
                                                if Waited_For_33 then -- ran, expr id 519, has an else.
                                                local var606 = os.time();
                                                local var607 = var606 - var43;
                                                -- 2127.000000
                                                local var608 = var607 / 60;
                                                -- 35.450000
                                                local SetText_33 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_51 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">35</font> 分钟");
                                                local Waited_For_34 = task.wait(60);
                                                local Not_Waited_For_34 = not Waited_For_34;
                                                -- false
                                                if Waited_For_34 then -- ran, expr id 520, has an else.
                                                local var609 = os.time();
                                                local var610 = var609 - var43;
                                                -- 2187.000000
                                                local var611 = var610 / 60;
                                                -- 36.450000
                                                local SetText_34 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_52 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">36</font> 分钟");
                                                local Waited_For_35 = task.wait(60);
                                                local Not_Waited_For_35 = not Waited_For_35;
                                                -- false
                                                if Waited_For_35 then -- ran, expr id 521, has an else.
                                                local var612 = os.time();
                                                local var613 = var612 - var43;
                                                -- 2247.000000
                                                local var614 = var613 / 60;
                                                -- 37.450000
                                                local SetText_35 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_53 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">37</font> 分钟");
                                                local Waited_For_36 = task.wait(60);
                                                local Not_Waited_For_36 = not Waited_For_36;
                                                -- false
                                                if Waited_For_36 then -- ran, expr id 522, has an else.
                                                local var615 = os.time();
                                                local var616 = var615 - var43;
                                                -- 2307.000000
                                                local var617 = var616 / 60;
                                                -- 38.450000
                                                local SetText_36 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_54 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">38</font> 分钟");
                                                local Waited_For_37 = task.wait(60);
                                                local Not_Waited_For_37 = not Waited_For_37;
                                                -- false
                                                if Waited_For_37 then -- ran, expr id 523, has an else.
                                                local var618 = os.time();
                                                local var619 = var618 - var43;
                                                -- 2367.000000
                                                local var620 = var619 / 60;
                                                -- 39.450000
                                                local SetText_37 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_55 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">39</font> 分钟");
                                                local Waited_For_38 = task.wait(60);
                                                local Not_Waited_For_38 = not Waited_For_38;
                                                -- false
                                                if Waited_For_38 then -- ran, expr id 524, has an else.
                                                local var621 = os.time();
                                                local var622 = var621 - var43;
                                                -- 2427.000000
                                                local var623 = var622 / 60;
                                                -- 40.450000
                                                local SetText_38 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_56 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">40</font> 分钟");
                                                local Waited_For_39 = task.wait(60);
                                                local Not_Waited_For_39 = not Waited_For_39;
                                                -- false
                                                if Waited_For_39 then -- ran, expr id 525, has an else.
                                                local var624 = os.time();
                                                local var625 = var624 - var43;
                                                -- 2487.000000
                                                local var626 = var625 / 60;
                                                -- 41.450000
                                                local SetText_39 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_57 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">41</font> 分钟");
                                                local Waited_For_40 = task.wait(60);
                                                local Not_Waited_For_40 = not Waited_For_40;
                                                -- false
                                                if Waited_For_40 then -- ran, expr id 526, has an else.
                                                local var627 = os.time();
                                                local var628 = var627 - var43;
                                                -- 2547.000000
                                                local var629 = var628 / 60;
                                                -- 42.450000
                                                local SetText_40 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_58 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">42</font> 分钟");
                                                local Waited_For_41 = task.wait(60);
                                                local Not_Waited_For_41 = not Waited_For_41;
                                                -- false
                                                if Waited_For_41 then -- ran, expr id 527, has an else.
                                                local var630 = os.time();
                                                local var631 = var630 - var43;
                                                -- 2607.000000
                                                local var632 = var631 / 60;
                                                -- 43.450000
                                                local SetText_41 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_59 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">43</font> 分钟");
                                                local Waited_For_42 = task.wait(60);
                                                local Not_Waited_For_42 = not Waited_For_42;
                                                -- false
                                                if Waited_For_42 then -- ran, expr id 528, has an else.
                                                local var633 = os.time();
                                                local var634 = var633 - var43;
                                                -- 2667.000000
                                                local var635 = var634 / 60;
                                                -- 44.450000
                                                local SetText_42 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_60 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">44</font> 分钟");
                                                local Waited_For_43 = task.wait(60);
                                                local Not_Waited_For_43 = not Waited_For_43;
                                                -- false
                                                if Waited_For_43 then -- ran, expr id 529, has an else.
                                                local var636 = os.time();
                                                local var637 = var636 - var43;
                                                -- 2727.000000
                                                local var638 = var637 / 60;
                                                -- 45.450000
                                                local SetText_43 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_61 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">45</font> 分钟");
                                                local Waited_For_44 = task.wait(60);
                                                local Not_Waited_For_44 = not Waited_For_44;
                                                -- false
                                                if Waited_For_44 then -- ran, expr id 530, has an else.
                                                local var639 = os.time();
                                                local var640 = var639 - var43;
                                                -- 2787.000000
                                                local var641 = var640 / 60;
                                                -- 46.450000
                                                local SetText_44 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_62 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">46</font> 分钟");
                                                local Waited_For_45 = task.wait(60);
                                                local Not_Waited_For_45 = not Waited_For_45;
                                                -- false
                                                if Waited_For_45 then -- ran, expr id 531, has an else.
                                                local var642 = os.time();
                                                local var643 = var642 - var43;
                                                -- 2847.000000
                                                local var644 = var643 / 60;
                                                -- 47.450000
                                                local SetText_45 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_63 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">47</font> 分钟");
                                                local Waited_For_46 = task.wait(60);
                                                local Not_Waited_For_46 = not Waited_For_46;
                                                -- false
                                                if Waited_For_46 then -- ran, expr id 532, has an else.
                                                local var645 = os.time();
                                                local var646 = var645 - var43;
                                                -- 2907.000000
                                                local var647 = var646 / 60;
                                                -- 48.450000
                                                local SetText_46 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_64 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">48</font> 分钟");
                                                local Waited_For_47 = task.wait(60);
                                                local Not_Waited_For_47 = not Waited_For_47;
                                                -- false
                                                if Waited_For_47 then -- ran, expr id 533, has an else.
                                                local var648 = os.time();
                                                local var649 = var648 - var43;
                                                -- 2967.000000
                                                local var650 = var649 / 60;
                                                -- 49.450000
                                                local SetText_47 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_65 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">49</font> 分钟");
                                                local Waited_For_48 = task.wait(60);
                                                local Not_Waited_For_48 = not Waited_For_48;
                                                -- false
                                                if Waited_For_48 then -- ran, expr id 534, has an else.
                                                local var651 = os.time();
                                                local var652 = var651 - var43;
                                                -- 3027.000000
                                                local var653 = var652 / 60;
                                                -- 50.450000
                                                local SetText_48 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_66 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">50</font> 分钟");
                                                local Waited_For_49 = task.wait(60);
                                                local Not_Waited_For_49 = not Waited_For_49;
                                                -- false
                                                if Waited_For_49 then -- ran, expr id 535, has an else.
                                                local var654 = os.time();
                                                local var655 = var654 - var43;
                                                -- 3087.000000
                                                local var656 = var655 / 60;
                                                -- 51.450000
                                                local SetText_49 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_67 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">51</font> 分钟");
                                                local Waited_For_50 = task.wait(60);
                                                local Not_Waited_For_50 = not Waited_For_50;
                                                -- false
                                                if Waited_For_50 then -- ran, expr id 536, has an else.
                                                local var657 = os.time();
                                                local var658 = var657 - var43;
                                                -- 3147.000000
                                                local var659 = var658 / 60;
                                                -- 52.450000
                                                local SetText_50 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_68 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">52</font> 分钟");
                                                local Waited_For_51 = task.wait(60);
                                                local Not_Waited_For_51 = not Waited_For_51;
                                                -- false
                                                if Waited_For_51 then -- ran, expr id 537, has an else.
                                                local var660 = os.time();
                                                local var661 = var660 - var43;
                                                -- 3207.000000
                                                local var662 = var661 / 60;
                                                -- 53.450000
                                                local SetText_51 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_69 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">53</font> 分钟");
                                                local Waited_For_52 = task.wait(60);
                                                local Not_Waited_For_52 = not Waited_For_52;
                                                -- false
                                                if Waited_For_52 then -- ran, expr id 538, has an else.
                                                local var663 = os.time();
                                                local var664 = var663 - var43;
                                                -- 3267.000000
                                                local var665 = var664 / 60;
                                                -- 54.450000
                                                local SetText_52 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_70 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">54</font> 分钟");
                                                local Waited_For_53 = task.wait(60);
                                                local Not_Waited_For_53 = not Waited_For_53;
                                                -- false
                                                if Waited_For_53 then -- ran, expr id 539, has an else.
                                                local var666 = os.time();
                                                local var667 = var666 - var43;
                                                -- 3327.000000
                                                local var668 = var667 / 60;
                                                -- 55.450000
                                                local SetText_53 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_71 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">55</font> 分钟");
                                                local Waited_For_54 = task.wait(60);
                                                local Not_Waited_For_54 = not Waited_For_54;
                                                -- false
                                                if Waited_For_54 then -- ran, expr id 540, has an else.
                                                local var669 = os.time();
                                                local var670 = var669 - var43;
                                                -- 3387.000000
                                                local var671 = var670 / 60;
                                                -- 56.450000
                                                local SetText_54 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_72 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">56</font> 分钟");
                                                local Waited_For_55 = task.wait(60);
                                                local Not_Waited_For_55 = not Waited_For_55;
                                                -- false
                                                if Waited_For_55 then -- ran, expr id 541, has an else.
                                                local var672 = os.time();
                                                local var673 = var672 - var43;
                                                -- 3448.000000
                                                local var674 = var673 / 60;
                                                -- 57.466667
                                                local SetText_55 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_73 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">57</font> 分钟");
                                                local Waited_For_56 = task.wait(60);
                                                local Not_Waited_For_56 = not Waited_For_56;
                                                -- false
                                                if Waited_For_56 then -- ran, expr id 542, has an else.
                                                local var675 = os.time();
                                                local var676 = var675 - var43;
                                                -- 3508.000000
                                                local var677 = var676 / 60;
                                                -- 58.466667
                                                local SetText_56 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_74 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">58</font> 分钟");
                                                local Waited_For_57 = task.wait(60);
                                                local Not_Waited_For_57 = not Waited_For_57;
                                                -- false
                                                if Waited_For_57 then -- ran, expr id 543, has an else.
                                                local var678 = os.time();
                                                local var679 = var678 - var43;
                                                -- 3568.000000
                                                local var680 = var679 / 60;
                                                -- 59.466667
                                                local SetText_57 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_75 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">59</font> 分钟");
                                                local Waited_For_58 = task.wait(60);
                                                local Not_Waited_For_58 = not Waited_For_58;
                                                -- false
                                                if Waited_For_58 then -- ran, expr id 544, has an else.
                                                local var681 = os.time();
                                                local var682 = var681 - var43;
                                                -- 3628.000000
                                                local var683 = var682 / 60;
                                                -- 60.466667
                                                local SetText_58 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_76 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">60</font> 分钟");
                                                local Waited_For_59 = task.wait(60);
                                                local Not_Waited_For_59 = not Waited_For_59;
                                                -- false
                                                if Waited_For_59 then -- ran, expr id 545, has an else.
                                                local var684 = os.time();
                                                local var685 = var684 - var43;
                                                -- 3688.000000
                                                local var686 = var685 / 60;
                                                -- 61.466667
                                                local SetText_59 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_77 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">61</font> 分钟");
                                                local Waited_For_60 = task.wait(60);
                                                local Not_Waited_For_60 = not Waited_For_60;
                                                -- false
                                                if Waited_For_60 then -- ran, expr id 546, has an else.
                                                local var687 = os.time();
                                                local var688 = var687 - var43;
                                                -- 3748.000000
                                                local var689 = var688 / 60;
                                                -- 62.466667
                                                local SetText_60 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_78 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">62</font> 分钟");
                                                local Waited_For_61 = task.wait(60);
                                                local Not_Waited_For_61 = not Waited_For_61;
                                                -- false
                                                if Waited_For_61 then -- ran, expr id 547, has an else.
                                                local var690 = os.time();
                                                local var691 = var690 - var43;
                                                -- 3808.000000
                                                local var692 = var691 / 60;
                                                -- 63.466667
                                                local SetText_61 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_79 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">63</font> 分钟");
                                                local Waited_For_62 = task.wait(60);
                                                local Not_Waited_For_62 = not Waited_For_62;
                                                -- false
                                                if Waited_For_62 then -- ran, expr id 548, has an else.
                                                local var693 = os.time();
                                                local var694 = var693 - var43;
                                                -- 3868.000000
                                                local var695 = var694 / 60;
                                                -- 64.466667
                                                local SetText_62 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_80 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">64</font> 分钟");
                                                local Waited_For_63 = task.wait(60);
                                                local Not_Waited_For_63 = not Waited_For_63;
                                                -- false
                                                if Waited_For_63 then -- ran, expr id 549, has an else.
                                                local var696 = os.time();
                                                local var697 = var696 - var43;
                                                -- 3928.000000
                                                local var698 = var697 / 60;
                                                -- 65.466667
                                                local SetText_63 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_81 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">65</font> 分钟");
                                                local Waited_For_64 = task.wait(60);
                                                local Not_Waited_For_64 = not Waited_For_64;
                                                -- false
                                                if Waited_For_64 then -- ran, expr id 550, has an else.
                                                local var699 = os.time();
                                                local var700 = var699 - var43;
                                                -- 3988.000000
                                                local var701 = var700 / 60;
                                                -- 66.466667
                                                local SetText_64 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_82 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">66</font> 分钟");
                                                local Waited_For_65 = task.wait(60);
                                                local Not_Waited_For_65 = not Waited_For_65;
                                                -- false
                                                if Waited_For_65 then -- ran, expr id 551, has an else.
                                                local var702 = os.time();
                                                local var703 = var702 - var43;
                                                -- 4048.000000
                                                local var704 = var703 / 60;
                                                -- 67.466667
                                                local SetText_65 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_83 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">67</font> 分钟");
                                                local Waited_For_66 = task.wait(60);
                                                local Not_Waited_For_66 = not Waited_For_66;
                                                -- false
                                                if Waited_For_66 then -- ran, expr id 552, has an else.
                                                local var705 = os.time();
                                                local var706 = var705 - var43;
                                                -- 4108.000000
                                                local var707 = var706 / 60;
                                                -- 68.466667
                                                local SetText_66 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_84 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">68</font> 分钟");
                                                local Waited_For_67 = task.wait(60);
                                                local Not_Waited_For_67 = not Waited_For_67;
                                                -- false
                                                if Waited_For_67 then -- ran, expr id 553, has an else.
                                                local var708 = os.time();
                                                local var709 = var708 - var43;
                                                -- 4168.000000
                                                local var710 = var709 / 60;
                                                -- 69.466667
                                                local SetText_67 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_85 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">69</font> 分钟");
                                                local Waited_For_68 = task.wait(60);
                                                local Not_Waited_For_68 = not Waited_For_68;
                                                -- false
                                                if Waited_For_68 then -- ran, expr id 554, has an else.
                                                local var711 = os.time();
                                                local var712 = var711 - var43;
                                                -- 4228.000000
                                                local var713 = var712 / 60;
                                                -- 70.466667
                                                local SetText_68 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_86 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">70</font> 分钟");
                                                local Waited_For_69 = task.wait(60);
                                                local Not_Waited_For_69 = not Waited_For_69;
                                                -- false
                                                if Waited_For_69 then -- ran, expr id 555, has an else.
                                                local var714 = os.time();
                                                local var715 = var714 - var43;
                                                -- 4288.000000
                                                local var716 = var715 / 60;
                                                -- 71.466667
                                                local SetText_69 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_87 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">71</font> 分钟");
                                                local Waited_For_70 = task.wait(60);
                                                local Not_Waited_For_70 = not Waited_For_70;
                                                -- false
                                                if Waited_For_70 then -- ran, expr id 556, has an else.
                                                local var717 = os.time();
                                                local var718 = var717 - var43;
                                                -- 4348.000000
                                                local var719 = var718 / 60;
                                                -- 72.466667
                                                local SetText_70 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_88 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">72</font> 分钟");
                                                local Waited_For_71 = task.wait(60);
                                                local Not_Waited_For_71 = not Waited_For_71;
                                                -- false
                                                if Waited_For_71 then -- ran, expr id 557, has an else.
                                                local var720 = os.time();
                                                local var721 = var720 - var43;
                                                -- 4408.000000
                                                local var722 = var721 / 60;
                                                -- 73.466667
                                                local SetText_71 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_89 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">73</font> 分钟");
                                                local Waited_For_72 = task.wait(60);
                                                local Not_Waited_For_72 = not Waited_For_72;
                                                -- false
                                                if Waited_For_72 then -- ran, expr id 558, has an else.
                                                local var723 = os.time();
                                                local var724 = var723 - var43;
                                                -- 4468.000000
                                                local var725 = var724 / 60;
                                                -- 74.466667
                                                local SetText_72 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_90 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">74</font> 分钟");
                                                local Waited_For_73 = task.wait(60);
                                                local Not_Waited_For_73 = not Waited_For_73;
                                                -- false
                                                if Waited_For_73 then -- ran, expr id 559, has an else.
                                                local var726 = os.time();
                                                local var727 = var726 - var43;
                                                -- 4528.000000
                                                local var728 = var727 / 60;
                                                -- 75.466667
                                                local SetText_73 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_91 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">75</font> 分钟");
                                                local Waited_For_74 = task.wait(60);
                                                local Not_Waited_For_74 = not Waited_For_74;
                                                -- false
                                                if Waited_For_74 then -- ran, expr id 560, has an else.
                                                local var729 = os.time();
                                                local var730 = var729 - var43;
                                                -- 4588.000000
                                                local var731 = var730 / 60;
                                                -- 76.466667
                                                local SetText_74 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_92 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">76</font> 分钟");
                                                local Waited_For_75 = task.wait(60);
                                                local Not_Waited_For_75 = not Waited_For_75;
                                                -- false
                                                if Waited_For_75 then -- ran, expr id 561, has an else.
                                                local var732 = os.time();
                                                local var733 = var732 - var43;
                                                -- 4648.000000
                                                local var734 = var733 / 60;
                                                -- 77.466667
                                                local SetText_75 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_93 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">77</font> 分钟");
                                                local Waited_For_76 = task.wait(60);
                                                local Not_Waited_For_76 = not Waited_For_76;
                                                -- false
                                                if Waited_For_76 then -- ran, expr id 562, has an else.
                                                local var735 = os.time();
                                                local var736 = var735 - var43;
                                                -- 4708.000000
                                                local var737 = var736 / 60;
                                                -- 78.466667
                                                local SetText_76 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_94 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">78</font> 分钟");
                                                local Waited_For_77 = task.wait(60);
                                                local Not_Waited_For_77 = not Waited_For_77;
                                                -- false
                                                if Waited_For_77 then -- ran, expr id 563, has an else.
                                                local var738 = os.time();
                                                local var739 = var738 - var43;
                                                -- 4768.000000
                                                local var740 = var739 / 60;
                                                -- 79.466667
                                                local SetText_77 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_95 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">79</font> 分钟");
                                                local Waited_For_78 = task.wait(60);
                                                local Not_Waited_For_78 = not Waited_For_78;
                                                -- false
                                                if Waited_For_78 then -- ran, expr id 564, has an else.
                                                local var741 = os.time();
                                                local var742 = var741 - var43;
                                                -- 4828.000000
                                                local var743 = var742 / 60;
                                                -- 80.466667
                                                local SetText_78 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_96 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">80</font> 分钟");
                                                local Waited_For_79 = task.wait(60);
                                                local Not_Waited_For_79 = not Waited_For_79;
                                                -- false
                                                if Waited_For_79 then -- ran, expr id 565, has an else.
                                                local var744 = os.time();
                                                local var745 = var744 - var43;
                                                -- 4888.000000
                                                local var746 = var745 / 60;
                                                -- 81.466667
                                                local SetText_79 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_97 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">81</font> 分钟");
                                                local Waited_For_80 = task.wait(60);
                                                local Not_Waited_For_80 = not Waited_For_80;
                                                -- false
                                                if Waited_For_80 then -- ran, expr id 566, has an else.
                                                local var747 = os.time();
                                                local var748 = var747 - var43;
                                                -- 4948.000000
                                                local var749 = var748 / 60;
                                                -- 82.466667
                                                local SetText_80 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_98 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">82</font> 分钟");
                                                local Waited_For_81 = task.wait(60);
                                                local Not_Waited_For_81 = not Waited_For_81;
                                                -- false
                                                if Waited_For_81 then -- ran, expr id 567, has an else.
                                                local var750 = os.time();
                                                local var751 = var750 - var43;
                                                -- 5008.000000
                                                local var752 = var751 / 60;
                                                -- 83.466667
                                                local SetText_81 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_99 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">83</font> 分钟");
                                                local Waited_For_82 = task.wait(60);
                                                local Not_Waited_For_82 = not Waited_For_82;
                                                -- false
                                                if Waited_For_82 then -- ran, expr id 568, has an else.
                                                local var753 = os.time();
                                                local var754 = var753 - var43;
                                                -- 5068.000000
                                                local var755 = var754 / 60;
                                                -- 84.466667
                                                local SetText_82 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_100 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">84</font> 分钟");
                                                local Waited_For_83 = task.wait(60);
                                                local Not_Waited_For_83 = not Waited_For_83;
                                                -- false
                                                if Waited_For_83 then -- ran, expr id 569, has an else.
                                                local var756 = os.time();
                                                local var757 = var756 - var43;
                                                -- 5128.000000
                                                local var758 = var757 / 60;
                                                -- 85.466667
                                                local SetText_83 = Font_Color_Rgb25500_0_Font.SetText;
                                                local str_101 = Font_Color_Rgb25500_0_Font:SetText("使用时间  <font color=\"rgb(0,255,0)\">85</font> 分钟");
                                                local Waited_For_84 = task.wait(60);
                                                local Not_Waited_For_84 = not Waited_For_84;
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end) -- false, "[KuIJEG]:1: too many operations"

    end)
    local AddLabel_7 = __10.AddLabel;
    local Players_5 = game.Players;
    local LocalPlayer_5 = Players.LocalPlayer;
    local Name_4 = LocalPlayer.Name;
    local var44 = Name_4 .. "</font> 上午好";
    -- "YLXd</font> 上午好"
    local var45 = "欢迎 <font color=\"rgb(0,255,0)\">" .. var44;
    -- "欢迎 <font color=\"rgb(0,255,0)\">YLXd</font> 上午好"
    local AddLabel_8 = __10:AddLabel(var45);
    local AddLabel_9 = __10.AddLabel;
    local var47 = __10:AddLabel("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:01</font>");
    spawn(function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
        local Success_10664, Error_Message_10664 = pcall(function(...)
            local Waited_For_85 = task.wait(1);
            local Not_Waited_For_85 = not Waited_For_85;
            -- false
            if Waited_For_85 then -- ran, expr id 570, has an else.
                local SetText_84 = var47.SetText;
                local var759 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                local Waited_For_86 = task.wait(1);
                local Not_Waited_For_86 = not Waited_For_86;
                -- false
                if Waited_For_86 then -- ran, expr id 571, has an else.
                    local SetText_85 = var47.SetText;
                    local var760 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                    local Waited_For_87 = task.wait(1);
                    local Not_Waited_For_87 = not Waited_For_87;
                    -- false
                    if Waited_For_87 then -- ran, expr id 572, has an else.
                        local SetText_86 = var47.SetText;
                        local var761 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                        local Waited_For_88 = task.wait(1);
                        local Not_Waited_For_88 = not Waited_For_88;
                        -- false
                        if Waited_For_88 then -- ran, expr id 573, has an else.
                            local SetText_87 = var47.SetText;
                            local var762 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                            local Waited_For_89 = task.wait(1);
                            local Not_Waited_For_89 = not Waited_For_89;
                            -- false
                            if Waited_For_89 then -- ran, expr id 574, has an else.
                                local SetText_88 = var47.SetText;
                                local var763 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                local Waited_For_90 = task.wait(1);
                                local Not_Waited_For_90 = not Waited_For_90;
                                -- false
                                if Waited_For_90 then -- ran, expr id 575, has an else.
                                    local SetText_89 = var47.SetText;
                                    local var764 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                    local Waited_For_91 = task.wait(1);
                                    local Not_Waited_For_91 = not Waited_For_91;
                                    -- false
                                    if Waited_For_91 then -- ran, expr id 576, has an else.
                                        local SetText_90 = var47.SetText;
                                        local var765 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                        local Waited_For_92 = task.wait(1);
                                        local Not_Waited_For_92 = not Waited_For_92;
                                        -- false
                                        if Waited_For_92 then -- ran, expr id 577, has an else.
                                            local SetText_91 = var47.SetText;
                                            local var766 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                            local Waited_For_93 = task.wait(1);
                                            local Not_Waited_For_93 = not Waited_For_93;
                                            -- false
                                            if Waited_For_93 then -- ran, expr id 578, has an else.
                                                local SetText_92 = var47.SetText;
                                                local var767 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_94 = task.wait(1);
                                                local Not_Waited_For_94 = not Waited_For_94;
                                                -- false
                                                if Waited_For_94 then -- ran, expr id 579, has an else.
                                                local SetText_93 = var47.SetText;
                                                local var768 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_95 = task.wait(1);
                                                local Not_Waited_For_95 = not Waited_For_95;
                                                -- false
                                                if Waited_For_95 then -- ran, expr id 580, has an else.
                                                local SetText_94 = var47.SetText;
                                                local var769 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_96 = task.wait(1);
                                                local Not_Waited_For_96 = not Waited_For_96;
                                                -- false
                                                if Waited_For_96 then -- ran, expr id 581, has an else.
                                                local SetText_95 = var47.SetText;
                                                local var770 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_97 = task.wait(1);
                                                local Not_Waited_For_97 = not Waited_For_97;
                                                -- false
                                                if Waited_For_97 then -- ran, expr id 582, has an else.
                                                local SetText_96 = var47.SetText;
                                                local var771 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_98 = task.wait(1);
                                                local Not_Waited_For_98 = not Waited_For_98;
                                                -- false
                                                if Waited_For_98 then -- ran, expr id 583, has an else.
                                                local SetText_97 = var47.SetText;
                                                local var772 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_99 = task.wait(1);
                                                local Not_Waited_For_99 = not Waited_For_99;
                                                -- false
                                                if Waited_For_99 then -- ran, expr id 584, has an else.
                                                local SetText_98 = var47.SetText;
                                                local var773 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_100 = task.wait(1);
                                                local Not_Waited_For_100 = not Waited_For_100;
                                                -- false
                                                if Waited_For_100 then -- ran, expr id 585, has an else.
                                                local SetText_99 = var47.SetText;
                                                local var774 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_101 = task.wait(1);
                                                local Not_Waited_For_101 = not Waited_For_101;
                                                -- false
                                                if Waited_For_101 then -- ran, expr id 586, has an else.
                                                local SetText_100 = var47.SetText;
                                                local var775 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_102 = task.wait(1);
                                                local Not_Waited_For_102 = not Waited_For_102;
                                                -- false
                                                if Waited_For_102 then -- ran, expr id 587, has an else.
                                                local SetText_101 = var47.SetText;
                                                local var776 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_103 = task.wait(1);
                                                local Not_Waited_For_103 = not Waited_For_103;
                                                -- false
                                                if Waited_For_103 then -- ran, expr id 588, has an else.
                                                local SetText_102 = var47.SetText;
                                                local var777 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_104 = task.wait(1);
                                                local Not_Waited_For_104 = not Waited_For_104;
                                                -- false
                                                if Waited_For_104 then -- ran, expr id 589, has an else.
                                                local SetText_103 = var47.SetText;
                                                local var778 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_105 = task.wait(1);
                                                local Not_Waited_For_105 = not Waited_For_105;
                                                -- false
                                                if Waited_For_105 then -- ran, expr id 590, has an else.
                                                local SetText_104 = var47.SetText;
                                                local var779 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_106 = task.wait(1);
                                                local Not_Waited_For_106 = not Waited_For_106;
                                                -- false
                                                if Waited_For_106 then -- ran, expr id 591, has an else.
                                                local SetText_105 = var47.SetText;
                                                local var780 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_107 = task.wait(1);
                                                local Not_Waited_For_107 = not Waited_For_107;
                                                -- false
                                                if Waited_For_107 then -- ran, expr id 592, has an else.
                                                local SetText_106 = var47.SetText;
                                                local var781 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_108 = task.wait(1);
                                                local Not_Waited_For_108 = not Waited_For_108;
                                                -- false
                                                if Waited_For_108 then -- ran, expr id 593, has an else.
                                                local SetText_107 = var47.SetText;
                                                local var782 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_109 = task.wait(1);
                                                local Not_Waited_For_109 = not Waited_For_109;
                                                -- false
                                                if Waited_For_109 then -- ran, expr id 594, has an else.
                                                local SetText_108 = var47.SetText;
                                                local var783 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_110 = task.wait(1);
                                                local Not_Waited_For_110 = not Waited_For_110;
                                                -- false
                                                if Waited_For_110 then -- ran, expr id 595, has an else.
                                                local SetText_109 = var47.SetText;
                                                local var784 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_111 = task.wait(1);
                                                local Not_Waited_For_111 = not Waited_For_111;
                                                -- false
                                                if Waited_For_111 then -- ran, expr id 596, has an else.
                                                local SetText_110 = var47.SetText;
                                                local var785 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_112 = task.wait(1);
                                                local Not_Waited_For_112 = not Waited_For_112;
                                                -- false
                                                if Waited_For_112 then -- ran, expr id 597, has an else.
                                                local SetText_111 = var47.SetText;
                                                local var786 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_113 = task.wait(1);
                                                local Not_Waited_For_113 = not Waited_For_113;
                                                -- false
                                                if Waited_For_113 then -- ran, expr id 598, has an else.
                                                local SetText_112 = var47.SetText;
                                                local var787 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_114 = task.wait(1);
                                                local Not_Waited_For_114 = not Waited_For_114;
                                                -- false
                                                if Waited_For_114 then -- ran, expr id 599, has an else.
                                                local SetText_113 = var47.SetText;
                                                local var788 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_115 = task.wait(1);
                                                local Not_Waited_For_115 = not Waited_For_115;
                                                -- false
                                                if Waited_For_115 then -- ran, expr id 600, has an else.
                                                local SetText_114 = var47.SetText;
                                                local var789 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_116 = task.wait(1);
                                                local Not_Waited_For_116 = not Waited_For_116;
                                                -- false
                                                if Waited_For_116 then -- ran, expr id 601, has an else.
                                                local SetText_115 = var47.SetText;
                                                local var790 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_117 = task.wait(1);
                                                local Not_Waited_For_117 = not Waited_For_117;
                                                -- false
                                                if Waited_For_117 then -- ran, expr id 602, has an else.
                                                local SetText_116 = var47.SetText;
                                                local var791 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_118 = task.wait(1);
                                                local Not_Waited_For_118 = not Waited_For_118;
                                                -- false
                                                if Waited_For_118 then -- ran, expr id 603, has an else.
                                                local SetText_117 = var47.SetText;
                                                local var792 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_119 = task.wait(1);
                                                local Not_Waited_For_119 = not Waited_For_119;
                                                -- false
                                                if Waited_For_119 then -- ran, expr id 604, has an else.
                                                local SetText_118 = var47.SetText;
                                                local var793 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_120 = task.wait(1);
                                                local Not_Waited_For_120 = not Waited_For_120;
                                                -- false
                                                if Waited_For_120 then -- ran, expr id 605, has an else.
                                                local SetText_119 = var47.SetText;
                                                local var794 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_121 = task.wait(1);
                                                local Not_Waited_For_121 = not Waited_For_121;
                                                -- false
                                                if Waited_For_121 then -- ran, expr id 606, has an else.
                                                local SetText_120 = var47.SetText;
                                                local var795 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_122 = task.wait(1);
                                                local Not_Waited_For_122 = not Waited_For_122;
                                                -- false
                                                if Waited_For_122 then -- ran, expr id 607, has an else.
                                                local SetText_121 = var47.SetText;
                                                local var796 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_123 = task.wait(1);
                                                local Not_Waited_For_123 = not Waited_For_123;
                                                -- false
                                                if Waited_For_123 then -- ran, expr id 608, has an else.
                                                local SetText_122 = var47.SetText;
                                                local var797 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_124 = task.wait(1);
                                                local Not_Waited_For_124 = not Waited_For_124;
                                                -- false
                                                if Waited_For_124 then -- ran, expr id 609, has an else.
                                                local SetText_123 = var47.SetText;
                                                local var798 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_125 = task.wait(1);
                                                local Not_Waited_For_125 = not Waited_For_125;
                                                -- false
                                                if Waited_For_125 then -- ran, expr id 610, has an else.
                                                local SetText_124 = var47.SetText;
                                                local var799 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_126 = task.wait(1);
                                                local Not_Waited_For_126 = not Waited_For_126;
                                                -- false
                                                if Waited_For_126 then -- ran, expr id 611, has an else.
                                                local SetText_125 = var47.SetText;
                                                local var800 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_127 = task.wait(1);
                                                local Not_Waited_For_127 = not Waited_For_127;
                                                -- false
                                                if Waited_For_127 then -- ran, expr id 612, has an else.
                                                local SetText_126 = var47.SetText;
                                                local var801 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_128 = task.wait(1);
                                                local Not_Waited_For_128 = not Waited_For_128;
                                                -- false
                                                if Waited_For_128 then -- ran, expr id 613, has an else.
                                                local SetText_127 = var47.SetText;
                                                local var802 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_129 = task.wait(1);
                                                local Not_Waited_For_129 = not Waited_For_129;
                                                -- false
                                                if Waited_For_129 then -- ran, expr id 614, has an else.
                                                local SetText_128 = var47.SetText;
                                                local var803 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_130 = task.wait(1);
                                                local Not_Waited_For_130 = not Waited_For_130;
                                                -- false
                                                if Waited_For_130 then -- ran, expr id 615, has an else.
                                                local SetText_129 = var47.SetText;
                                                local var804 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_131 = task.wait(1);
                                                local Not_Waited_For_131 = not Waited_For_131;
                                                -- false
                                                if Waited_For_131 then -- ran, expr id 616, has an else.
                                                local SetText_130 = var47.SetText;
                                                local var805 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_132 = task.wait(1);
                                                local Not_Waited_For_132 = not Waited_For_132;
                                                -- false
                                                if Waited_For_132 then -- ran, expr id 617, has an else.
                                                local SetText_131 = var47.SetText;
                                                local var806 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_133 = task.wait(1);
                                                local Not_Waited_For_133 = not Waited_For_133;
                                                -- false
                                                if Waited_For_133 then -- ran, expr id 618, has an else.
                                                local SetText_132 = var47.SetText;
                                                local var807 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_134 = task.wait(1);
                                                local Not_Waited_For_134 = not Waited_For_134;
                                                -- false
                                                if Waited_For_134 then -- ran, expr id 619, has an else.
                                                local SetText_133 = var47.SetText;
                                                local var808 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_135 = task.wait(1);
                                                local Not_Waited_For_135 = not Waited_For_135;
                                                -- false
                                                if Waited_For_135 then -- ran, expr id 620, has an else.
                                                local SetText_134 = var47.SetText;
                                                local var809 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_136 = task.wait(1);
                                                local Not_Waited_For_136 = not Waited_For_136;
                                                -- false
                                                if Waited_For_136 then -- ran, expr id 621, has an else.
                                                local SetText_135 = var47.SetText;
                                                local var810 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_137 = task.wait(1);
                                                local Not_Waited_For_137 = not Waited_For_137;
                                                -- false
                                                if Waited_For_137 then -- ran, expr id 622, has an else.
                                                local SetText_136 = var47.SetText;
                                                local var811 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_138 = task.wait(1);
                                                local Not_Waited_For_138 = not Waited_For_138;
                                                -- false
                                                if Waited_For_138 then -- ran, expr id 623, has an else.
                                                local SetText_137 = var47.SetText;
                                                local var812 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_139 = task.wait(1);
                                                local Not_Waited_For_139 = not Waited_For_139;
                                                -- false
                                                if Waited_For_139 then -- ran, expr id 624, has an else.
                                                local SetText_138 = var47.SetText;
                                                local var813 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_140 = task.wait(1);
                                                local Not_Waited_For_140 = not Waited_For_140;
                                                -- false
                                                if Waited_For_140 then -- ran, expr id 625, has an else.
                                                local SetText_139 = var47.SetText;
                                                local var814 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_141 = task.wait(1);
                                                local Not_Waited_For_141 = not Waited_For_141;
                                                -- false
                                                if Waited_For_141 then -- ran, expr id 626, has an else.
                                                local SetText_140 = var47.SetText;
                                                local var815 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_142 = task.wait(1);
                                                local Not_Waited_For_142 = not Waited_For_142;
                                                -- false
                                                if Waited_For_142 then -- ran, expr id 627, has an else.
                                                local SetText_141 = var47.SetText;
                                                local var816 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_143 = task.wait(1);
                                                local Not_Waited_For_143 = not Waited_For_143;
                                                -- false
                                                if Waited_For_143 then -- ran, expr id 628, has an else.
                                                local SetText_142 = var47.SetText;
                                                local var817 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_144 = task.wait(1);
                                                local Not_Waited_For_144 = not Waited_For_144;
                                                -- false
                                                if Waited_For_144 then -- ran, expr id 629, has an else.
                                                local SetText_143 = var47.SetText;
                                                local var818 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_145 = task.wait(1);
                                                local Not_Waited_For_145 = not Waited_For_145;
                                                -- false
                                                if Waited_For_145 then -- ran, expr id 630, has an else.
                                                local SetText_144 = var47.SetText;
                                                local var819 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_146 = task.wait(1);
                                                local Not_Waited_For_146 = not Waited_For_146;
                                                -- false
                                                if Waited_For_146 then -- ran, expr id 631, has an else.
                                                local SetText_145 = var47.SetText;
                                                local var820 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_147 = task.wait(1);
                                                local Not_Waited_For_147 = not Waited_For_147;
                                                -- false
                                                if Waited_For_147 then -- ran, expr id 632, has an else.
                                                local SetText_146 = var47.SetText;
                                                local var821 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_148 = task.wait(1);
                                                local Not_Waited_For_148 = not Waited_For_148;
                                                -- false
                                                if Waited_For_148 then -- ran, expr id 633, has an else.
                                                local SetText_147 = var47.SetText;
                                                local var822 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_149 = task.wait(1);
                                                local Not_Waited_For_149 = not Waited_For_149;
                                                -- false
                                                if Waited_For_149 then -- ran, expr id 634, has an else.
                                                local SetText_148 = var47.SetText;
                                                local var823 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_150 = task.wait(1);
                                                local Not_Waited_For_150 = not Waited_For_150;
                                                -- false
                                                if Waited_For_150 then -- ran, expr id 635, has an else.
                                                local SetText_149 = var47.SetText;
                                                local var824 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_151 = task.wait(1);
                                                local Not_Waited_For_151 = not Waited_For_151;
                                                -- false
                                                if Waited_For_151 then -- ran, expr id 636, has an else.
                                                local SetText_150 = var47.SetText;
                                                local var825 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_152 = task.wait(1);
                                                local Not_Waited_For_152 = not Waited_For_152;
                                                -- false
                                                if Waited_For_152 then -- ran, expr id 637, has an else.
                                                local SetText_151 = var47.SetText;
                                                local var826 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_153 = task.wait(1);
                                                local Not_Waited_For_153 = not Waited_For_153;
                                                -- false
                                                if Waited_For_153 then -- ran, expr id 638, has an else.
                                                local SetText_152 = var47.SetText;
                                                local var827 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_154 = task.wait(1);
                                                local Not_Waited_For_154 = not Waited_For_154;
                                                -- false
                                                if Waited_For_154 then -- ran, expr id 639, has an else.
                                                local SetText_153 = var47.SetText;
                                                local var828 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_155 = task.wait(1);
                                                local Not_Waited_For_155 = not Waited_For_155;
                                                -- false
                                                if Waited_For_155 then -- ran, expr id 640, has an else.
                                                local SetText_154 = var47.SetText;
                                                local var829 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_156 = task.wait(1);
                                                local Not_Waited_For_156 = not Waited_For_156;
                                                -- false
                                                if Waited_For_156 then -- ran, expr id 641, has an else.
                                                local SetText_155 = var47.SetText;
                                                local var830 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_157 = task.wait(1);
                                                local Not_Waited_For_157 = not Waited_For_157;
                                                -- false
                                                if Waited_For_157 then -- ran, expr id 642, has an else.
                                                local SetText_156 = var47.SetText;
                                                local var831 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_158 = task.wait(1);
                                                local Not_Waited_For_158 = not Waited_For_158;
                                                -- false
                                                if Waited_For_158 then -- ran, expr id 643, has an else.
                                                local SetText_157 = var47.SetText;
                                                local var832 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_159 = task.wait(1);
                                                local Not_Waited_For_159 = not Waited_For_159;
                                                -- false
                                                if Waited_For_159 then -- ran, expr id 644, has an else.
                                                local SetText_158 = var47.SetText;
                                                local var833 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_160 = task.wait(1);
                                                local Not_Waited_For_160 = not Waited_For_160;
                                                -- false
                                                if Waited_For_160 then -- ran, expr id 645, has an else.
                                                local SetText_159 = var47.SetText;
                                                local var834 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_161 = task.wait(1);
                                                local Not_Waited_For_161 = not Waited_For_161;
                                                -- false
                                                if Waited_For_161 then -- ran, expr id 646, has an else.
                                                local SetText_160 = var47.SetText;
                                                local var835 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_162 = task.wait(1);
                                                local Not_Waited_For_162 = not Waited_For_162;
                                                -- false
                                                if Waited_For_162 then -- ran, expr id 647, has an else.
                                                local SetText_161 = var47.SetText;
                                                local var836 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_163 = task.wait(1);
                                                local Not_Waited_For_163 = not Waited_For_163;
                                                -- false
                                                if Waited_For_163 then -- ran, expr id 648, has an else.
                                                local SetText_162 = var47.SetText;
                                                local var837 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_164 = task.wait(1);
                                                local Not_Waited_For_164 = not Waited_For_164;
                                                -- false
                                                if Waited_For_164 then -- ran, expr id 649, has an else.
                                                local SetText_163 = var47.SetText;
                                                local var838 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_165 = task.wait(1);
                                                local Not_Waited_For_165 = not Waited_For_165;
                                                -- false
                                                if Waited_For_165 then -- ran, expr id 650, has an else.
                                                local SetText_164 = var47.SetText;
                                                local var839 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_166 = task.wait(1);
                                                local Not_Waited_For_166 = not Waited_For_166;
                                                -- false
                                                if Waited_For_166 then -- ran, expr id 651, has an else.
                                                local SetText_165 = var47.SetText;
                                                local var840 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_167 = task.wait(1);
                                                local Not_Waited_For_167 = not Waited_For_167;
                                                -- false
                                                if Waited_For_167 then -- ran, expr id 652, has an else.
                                                local SetText_166 = var47.SetText;
                                                local var841 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_168 = task.wait(1);
                                                local Not_Waited_For_168 = not Waited_For_168;
                                                -- false
                                                if Waited_For_168 then -- ran, expr id 653, has an else.
                                                local SetText_167 = var47.SetText;
                                                local var842 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_169 = task.wait(1);
                                                local Not_Waited_For_169 = not Waited_For_169;
                                                -- false
                                                if Waited_For_169 then -- ran, expr id 654, has an else.
                                                local SetText_168 = var47.SetText;
                                                local var843 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_170 = task.wait(1);
                                                local Not_Waited_For_170 = not Waited_For_170;
                                                -- false
                                                if Waited_For_170 then -- ran, expr id 655, has an else.
                                                local SetText_169 = var47.SetText;
                                                local var844 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_171 = task.wait(1);
                                                local Not_Waited_For_171 = not Waited_For_171;
                                                -- false
                                                if Waited_For_171 then -- ran, expr id 656, has an else.
                                                local SetText_170 = var47.SetText;
                                                local var845 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_172 = task.wait(1);
                                                local Not_Waited_For_172 = not Waited_For_172;
                                                -- false
                                                if Waited_For_172 then -- ran, expr id 657, has an else.
                                                local SetText_171 = var47.SetText;
                                                local var846 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_173 = task.wait(1);
                                                local Not_Waited_For_173 = not Waited_For_173;
                                                -- false
                                                if Waited_For_173 then -- ran, expr id 658, has an else.
                                                local SetText_172 = var47.SetText;
                                                local var847 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_174 = task.wait(1);
                                                local Not_Waited_For_174 = not Waited_For_174;
                                                -- false
                                                if Waited_For_174 then -- ran, expr id 659, has an else.
                                                local SetText_173 = var47.SetText;
                                                local var848 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_175 = task.wait(1);
                                                local Not_Waited_For_175 = not Waited_For_175;
                                                -- false
                                                if Waited_For_175 then -- ran, expr id 660, has an else.
                                                local SetText_174 = var47.SetText;
                                                local var849 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_176 = task.wait(1);
                                                local Not_Waited_For_176 = not Waited_For_176;
                                                -- false
                                                if Waited_For_176 then -- ran, expr id 661, has an else.
                                                local SetText_175 = var47.SetText;
                                                local var850 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_177 = task.wait(1);
                                                local Not_Waited_For_177 = not Waited_For_177;
                                                -- false
                                                if Waited_For_177 then -- ran, expr id 662, has an else.
                                                local SetText_176 = var47.SetText;
                                                local var851 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_178 = task.wait(1);
                                                local Not_Waited_For_178 = not Waited_For_178;
                                                -- false
                                                if Waited_For_178 then -- ran, expr id 663, has an else.
                                                local SetText_177 = var47.SetText;
                                                local var852 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_179 = task.wait(1);
                                                local Not_Waited_For_179 = not Waited_For_179;
                                                -- false
                                                if Waited_For_179 then -- ran, expr id 664, has an else.
                                                local SetText_178 = var47.SetText;
                                                local var853 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_180 = task.wait(1);
                                                local Not_Waited_For_180 = not Waited_For_180;
                                                -- false
                                                if Waited_For_180 then -- ran, expr id 665, has an else.
                                                local SetText_179 = var47.SetText;
                                                local var854 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_181 = task.wait(1);
                                                local Not_Waited_For_181 = not Waited_For_181;
                                                -- false
                                                if Waited_For_181 then -- ran, expr id 666, has an else.
                                                local SetText_180 = var47.SetText;
                                                local var855 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_182 = task.wait(1);
                                                local Not_Waited_For_182 = not Waited_For_182;
                                                -- false
                                                if Waited_For_182 then -- ran, expr id 667, has an else.
                                                local SetText_181 = var47.SetText;
                                                local var856 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_183 = task.wait(1);
                                                local Not_Waited_For_183 = not Waited_For_183;
                                                -- false
                                                if Waited_For_183 then -- ran, expr id 668, has an else.
                                                local SetText_182 = var47.SetText;
                                                local var857 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_184 = task.wait(1);
                                                local Not_Waited_For_184 = not Waited_For_184;
                                                -- false
                                                if Waited_For_184 then -- ran, expr id 669, has an else.
                                                local SetText_183 = var47.SetText;
                                                local var858 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_185 = task.wait(1);
                                                local Not_Waited_For_185 = not Waited_For_185;
                                                -- false
                                                if Waited_For_185 then -- ran, expr id 670, has an else.
                                                local SetText_184 = var47.SetText;
                                                local var859 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_186 = task.wait(1);
                                                local Not_Waited_For_186 = not Waited_For_186;
                                                -- false
                                                if Waited_For_186 then -- ran, expr id 671, has an else.
                                                local SetText_185 = var47.SetText;
                                                local var860 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_187 = task.wait(1);
                                                local Not_Waited_For_187 = not Waited_For_187;
                                                -- false
                                                if Waited_For_187 then -- ran, expr id 672, has an else.
                                                local SetText_186 = var47.SetText;
                                                local var861 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_188 = task.wait(1);
                                                local Not_Waited_For_188 = not Waited_For_188;
                                                -- false
                                                if Waited_For_188 then -- ran, expr id 673, has an else.
                                                local SetText_187 = var47.SetText;
                                                local var862 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_189 = task.wait(1);
                                                local Not_Waited_For_189 = not Waited_For_189;
                                                -- false
                                                if Waited_For_189 then -- ran, expr id 674, has an else.
                                                local SetText_188 = var47.SetText;
                                                local var863 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_190 = task.wait(1);
                                                local Not_Waited_For_190 = not Waited_For_190;
                                                -- false
                                                if Waited_For_190 then -- ran, expr id 675, has an else.
                                                local SetText_189 = var47.SetText;
                                                local var864 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_191 = task.wait(1);
                                                local Not_Waited_For_191 = not Waited_For_191;
                                                -- false
                                                if Waited_For_191 then -- ran, expr id 676, has an else.
                                                local SetText_190 = var47.SetText;
                                                local var865 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_192 = task.wait(1);
                                                local Not_Waited_For_192 = not Waited_For_192;
                                                -- false
                                                if Waited_For_192 then -- ran, expr id 677, has an else.
                                                local SetText_191 = var47.SetText;
                                                local var866 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_193 = task.wait(1);
                                                local Not_Waited_For_193 = not Waited_For_193;
                                                -- false
                                                if Waited_For_193 then -- ran, expr id 678, has an else.
                                                local SetText_192 = var47.SetText;
                                                local var867 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_194 = task.wait(1);
                                                local Not_Waited_For_194 = not Waited_For_194;
                                                -- false
                                                if Waited_For_194 then -- ran, expr id 679, has an else.
                                                local SetText_193 = var47.SetText;
                                                local var868 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_195 = task.wait(1);
                                                local Not_Waited_For_195 = not Waited_For_195;
                                                -- false
                                                if Waited_For_195 then -- ran, expr id 680, has an else.
                                                local SetText_194 = var47.SetText;
                                                local var869 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_196 = task.wait(1);
                                                local Not_Waited_For_196 = not Waited_For_196;
                                                -- false
                                                if Waited_For_196 then -- ran, expr id 681, has an else.
                                                local SetText_195 = var47.SetText;
                                                local var870 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_197 = task.wait(1);
                                                local Not_Waited_For_197 = not Waited_For_197;
                                                -- false
                                                if Waited_For_197 then -- ran, expr id 682, has an else.
                                                local SetText_196 = var47.SetText;
                                                local var871 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_198 = task.wait(1);
                                                local Not_Waited_For_198 = not Waited_For_198;
                                                -- false
                                                if Waited_For_198 then -- ran, expr id 683, has an else.
                                                local SetText_197 = var47.SetText;
                                                local var872 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_199 = task.wait(1);
                                                local Not_Waited_For_199 = not Waited_For_199;
                                                -- false
                                                if Waited_For_199 then -- ran, expr id 684, has an else.
                                                local SetText_198 = var47.SetText;
                                                local var873 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_200 = task.wait(1);
                                                local Not_Waited_For_200 = not Waited_For_200;
                                                -- false
                                                if Waited_For_200 then -- ran, expr id 685, has an else.
                                                local SetText_199 = var47.SetText;
                                                local var874 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_201 = task.wait(1);
                                                local Not_Waited_For_201 = not Waited_For_201;
                                                -- false
                                                if Waited_For_201 then -- ran, expr id 686, has an else.
                                                local SetText_200 = var47.SetText;
                                                local var875 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_202 = task.wait(1);
                                                local Not_Waited_For_202 = not Waited_For_202;
                                                -- false
                                                if Waited_For_202 then -- ran, expr id 687, has an else.
                                                local SetText_201 = var47.SetText;
                                                local var876 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_203 = task.wait(1);
                                                local Not_Waited_For_203 = not Waited_For_203;
                                                -- false
                                                if Waited_For_203 then -- ran, expr id 688, has an else.
                                                local SetText_202 = var47.SetText;
                                                local var877 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_204 = task.wait(1);
                                                local Not_Waited_For_204 = not Waited_For_204;
                                                -- false
                                                if Waited_For_204 then -- ran, expr id 689, has an else.
                                                local SetText_203 = var47.SetText;
                                                local var878 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_205 = task.wait(1);
                                                local Not_Waited_For_205 = not Waited_For_205;
                                                -- false
                                                if Waited_For_205 then -- ran, expr id 690, has an else.
                                                local SetText_204 = var47.SetText;
                                                local var879 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_206 = task.wait(1);
                                                local Not_Waited_For_206 = not Waited_For_206;
                                                -- false
                                                if Waited_For_206 then -- ran, expr id 691, has an else.
                                                local SetText_205 = var47.SetText;
                                                local var880 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_207 = task.wait(1);
                                                local Not_Waited_For_207 = not Waited_For_207;
                                                -- false
                                                if Waited_For_207 then -- ran, expr id 692, has an else.
                                                local SetText_206 = var47.SetText;
                                                local var881 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_208 = task.wait(1);
                                                local Not_Waited_For_208 = not Waited_For_208;
                                                -- false
                                                if Waited_For_208 then -- ran, expr id 693, has an else.
                                                local SetText_207 = var47.SetText;
                                                local var882 = var47:SetText("<font color=\"rgb(0,255,0)\">2026-01-05 07:21:08</font>");
                                                local Waited_For_209 = task.wait(1);
                                                local Not_Waited_For_209 = not Waited_For_209;
                                                -- false
                                                if Waited_For_209 then -- ran, expr id 694, has an else.
                                                local SetText_208 = var47.SetText;
                                                error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:659: too many operations")
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end) -- false, "[KuIJEG]:1: [KuIJEG]:1: too many operations"

    end)
    local AddDivider_9 = __10.AddDivider;
    local AddDivider_10 = __10:AddDivider();
    local AddButton_23 = __10.AddButton;
    local AddButton_24 = __10:AddButton({
        Func = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            local Success_10699, Error_Message_10699 = pcall(function(...)
                local setclipboard = Env.setclipboard;
                local _call883 = setclipboard("QQ群:915207093");
            end) -- true

        end,
        Text = "官方群组",
    });
    local AddButton_25 = AddButton_24.AddButton;
    local AddButton_26 = AddButton_24:AddButton({
        Func = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            local _call884 = setclipboard("快手:Haxhub-4");

        end,
        Text = "官方账号",
    });
    local AddLeftGroupbox_4 = __3.AddLeftGroupbox;
    local __12 = __3:AddLeftGroupbox("调试功能");
    local AddToggle_7 = __12.AddToggle;
    local KeybindFrame = _call11.KeybindFrame;
    local Visible = KeybindFrame.Visible;
    local KeybindMenuOpen = __12:AddToggle("KeybindMenuOpen", {
        Text = "快捷菜单",
        Default = Visible,
        Callback = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            local Success_10755, Error_Message_10755 = pcall(function(...)
                local KeybindFrame_2 = _call11.KeybindFrame;
                KeybindFrame_2.Visible = ext_1_0;
            end) -- true

        end,
    });
    local AddToggle_8 = __12.AddToggle;
    local ShowCustomCursor = __12:AddToggle("ShowCustomCursor", {
        Text = "自定义光标",
        Default = true,
        Callback = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            _call11.ShowCustomCursor = ext_1_0;

        end,
    });
    local AddDropdown_2 = __12.AddDropdown;
    local NotificationSide = __12:AddDropdown("NotificationSide", {
        Callback = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            local Success_10769, Error_Message_10769 = pcall(function(...)
                local SetNotifySide = _call11.SetNotifySide;
                local SetNotifySide_2 = _call11:SetNotifySide(ext_1_0);
            end) -- true

        end,
        Text = "通知位置",
        Default = "右",
        Values = {
            "左",
            "右",
        },
    });
    local AddDropdown_3 = __12.AddDropdown;
    local DPIDropdown = __12:AddDropdown("DPIDropdown", {
        Callback = function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
            local Success_10786, Error_Message_10786 = pcall(function(...)
                local Gsub = ext_1_0.gsub;
                local __14 = ext_1_0:gsub("%%", "");
                local var884 = tonumber(__14, nil);
                -- no value
                local SetDPIScale = _call11.SetDPIScale;
                local SetDPIScale_2 = _call11:SetDPIScale(var884);
            end) -- true

        end,
        Text = "UI大小",
        Default = "100%",
        Values = {
            "25%",
            "50%",
            "75%",
            "100%",
            "125%",
            "150%",
            "175%",
            "200%",
        },
    });
    local AddDivider_11 = __12.AddDivider;
    local AddDivider_12 = __12:AddDivider();
    local AddLabel_10 = __12.AddLabel;
    local Menu_Bind = __12:AddLabel("Menu bind");
    local AddKeyPicker = Menu_Bind.AddKeyPicker;
    local MenuKeybind = Menu_Bind:AddKeyPicker("MenuKeybind", {
        NoUI = true,
        Default = "RightShift",
        Text = "Menu keybind",
    });
    local AddButton_27 = __12.AddButton;
    local __13 = __12:AddButton("删除 用户界面", function(ext_1_0, ext_2_0, ext_3_0, ext_4_0, ext_5_0, ...)
        local Success_10850, Error_Message_10850 = pcall(function(...)
            local Unload_3 = _call11.Unload;
            local Unload_4 = _call11:Unload();
        end) -- true

    end);
    local SetLibrary = _call14.SetLibrary;
    local SetLibrary_2 = _call14:SetLibrary(_call11);
    local SetLibrary_3 = _call17.SetLibrary;
    local SetLibrary_4 = _call17:SetLibrary(_call11);
    local IgnoreThemeSettings = _call17.IgnoreThemeSettings;
    local IgnoreThemeSettings_2 = _call17:IgnoreThemeSettings();
    local SetIgnoreIndexes = _call17.SetIgnoreIndexes;
    local SetIgnoreIndexes_2 = _call17:SetIgnoreIndexes({
        "MenuKeybind",
    });
    local SetFolder = _call14.SetFolder;
    local MyScriptHub = _call14:SetFolder("MyScriptHub");
    local SetFolder_2 = _call17.SetFolder;
    local MyScriptHubSpecificGame = _call17:SetFolder("MyScriptHub/specific-game");
    local SetSubFolder = _call17.SetSubFolder;
    local SpecificPlace = _call17:SetSubFolder("specific-place");
    local BuildConfigSection = _call17.BuildConfigSection;
    local BuildConfigSection_2 = _call17:BuildConfigSection(__3);
    local ApplyToTab = _call14.ApplyToTab;
    local ApplyToTab_2 = _call14:ApplyToTab(__3);
    local LoadAutoloadConfig = _call17.LoadAutoloadConfig;
    local LoadAutoloadConfig_2 = _call17:LoadAutoloadConfig();
end) -- true
local var59 = tick();
local var60 = var59 - var3;
-- 14.346368
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui");
local Character = LocalPlayer.Character;
if Character then -- ran, expr id 1, has no else.
    local Character_2 = LocalPlayer.Character;
    local Humanoid = Character_2:WaitForChild("Humanoid");
    local Died = Humanoid.Died;
    local Connect = Died.Connect;
    local Connected = Died:Connect(function()

    end);
end
local Connection;
Connection = LocalPlayer.CharacterAdded:Connect(function(Character_6) -- args: Character_7;
    local WaitForChild = Character_6.WaitForChild;
    local Humanoid_4 = Character_6:WaitForChild("Humanoid");
    local Died_3 = Humanoid_4.Died;
    local Connect_10 = Died_3.Connect;
    local Connected_8 = Died_3:Connect(function()

    end);

end);
local Not_PlayerGui = not PlayerGui;
-- false
if Not_PlayerGui then -- didnt run, expr id 2, has no else.
end
local ScreenGui = Instance.new("ScreenGui");
ScreenGui.Name = "EntityNoticeNotificationGui";
local Enum_ZIndexBehavior = Enum.ZIndexBehavior;
local Sibling = Enum_ZIndexBehavior.Sibling;
ScreenGui.ZIndexBehavior = Sibling;
ScreenGui.ResetOnSpawn = false;
ScreenGui.IgnoreGuiInset = true;
ScreenGui.Parent = PlayerGui;
local Frame = Instance.new("Frame");
Frame.Name = "NotificationContainer";
local UDim2_New = UDim2.new;
local UDim2_Value = UDim2_New(0.4, 0, 0.15, 0);
Frame.Size = UDim2_Value;
local UDim2_Value_2 = UDim2_New(0.5, 0, 0.08, 0);
Frame.Position = UDim2_Value_2;
local Vector2_New = Vector2.new;
local Vector2_Value = Vector2_New(0.5, 0);
Frame.AnchorPoint = Vector2_Value;
Frame.BackgroundTransparency = 1;
Frame.ZIndex = 999;
Frame.Parent = ScreenGui;
local UDim2_Value_3 = UDim2_New(0, 0, 0, 0);
Frame.Size = UDim2_Value_3;
Frame.BackgroundTransparency = 1;
local TextLabel = Instance.new("TextLabel");
TextLabel.Name = "EntityNotice";
local UDim2_Value_4 = UDim2_New(0.9, 0, 0.25, 0);
TextLabel.Size = UDim2_Value_4;
local UDim2_Value_5 = UDim2_New(0.05, 0, 0, 0);
TextLabel.Position = UDim2_Value_5;
TextLabel.BackgroundTransparency = 1;
TextLabel.Text = "ENTITY NOTICE";
TextLabel.TextColor3 = Color3_Value;
TextLabel.TextSize = 20;
local Enum_Font = Enum.Font;
local Oswald = Enum_Font.Oswald;
TextLabel.Font = Oswald;
local Font = Env.Font;
local New = Font.new;
local Enum_FontWeight = Enum.FontWeight;
local Bold = Enum_FontWeight.Bold;
local Enum_FontStyle = Enum.FontStyle;
local Normal = Enum_FontStyle.Normal;
local _call66 = New("rbxasset://fonts/families/Oswald.json", Bold, Normal);
TextLabel.FontFace = _call66;
local Enum_TextXAlignment = Enum.TextXAlignment;
local Left = Enum_TextXAlignment.Left;
TextLabel.TextXAlignment = Left;
local Enum_TextYAlignment = Enum.TextYAlignment;
local Bottom = Enum_TextYAlignment.Bottom;
TextLabel.TextYAlignment = Bottom;
TextLabel.ZIndex = 1000;
TextLabel.TextTransparency = 1;
TextLabel.Parent = Frame;
local Frame_2 = Instance.new("Frame");
Frame_2.Name = "Notification";
local UDim2_Value_6 = UDim2_New(0.95, 0, 0.7, 0);
Frame_2.Size = UDim2_Value_6;
local UDim2_Value_7 = UDim2_New(0.025, 0, 0.3, 0);
Frame_2.Position = UDim2_Value_7;
local Vector2_Value_2 = Vector2_New(0, 0);
Frame_2.AnchorPoint = Vector2_Value_2;
Frame_2.BackgroundColor3 = Color3_Value_3;
Frame_2.BackgroundTransparency = 0.2;
Frame_2.BorderSizePixel = 0;
Frame_2.ZIndex = 999;
Frame_2.Parent = Frame;
local UICorner = Instance.new("UICorner");
local UDim_New = UDim.new;
local UDim_Value = UDim_New(0, 10);
UICorner.CornerRadius = UDim_Value;
UICorner.Parent = Frame_2;
local UIStroke = Instance.new("UIStroke");
UIStroke.Color = Color3_Value;
UIStroke.Thickness = 3;
UIStroke.Transparency = 0.1;
UIStroke.ZIndex = 1000;
UIStroke.Parent = Frame_2;
local Frame_3 = Instance.new("Frame");
Frame_3.Name = "IconContainer";
local UDim2_Value_8 = UDim2_New(0, 50, 0, 50);
Frame_3.Size = UDim2_Value_8;
local UDim2_Value_9 = UDim2_New(0.05, 0, 0.5, 0);
Frame_3.Position = UDim2_Value_9;
local Vector2_Value_3 = Vector2_New(0, 0.5);
Frame_3.AnchorPoint = Vector2_Value_3;
Frame_3.BackgroundColor3 = Color3_Value_3;
Frame_3.BackgroundTransparency = 0.3;
Frame_3.ZIndex = 1000;
Frame_3.Parent = Frame_2;
local UICorner_2 = Instance.new("UICorner");
local UDim_Value_2 = UDim_New(1, 0);
UICorner_2.CornerRadius = UDim_Value_2;
UICorner_2.Parent = Frame_3;
local UIStroke_2 = Instance.new("UIStroke");
UIStroke_2.Color = Color3_Value;
UIStroke_2.Thickness = 2;
UIStroke_2.Transparency = 0.2;
UIStroke_2.ZIndex = 1001;
UIStroke_2.Parent = Frame_3;
local ImageLabel = Instance.new("ImageLabel");
ImageLabel.Name = "Icon";
local UDim2_Value_10 = UDim2_New(1, 0, 1, 0);
ImageLabel.Size = UDim2_Value_10;
local UDim2_Value_11 = UDim2_New(0.5, 0, 0.5, 0);
ImageLabel.Position = UDim2_Value_11;
local Vector2_Value_4 = Vector2_New(0.5, 0.5);
ImageLabel.AnchorPoint = Vector2_Value_4;
ImageLabel.BackgroundTransparency = 1;
ImageLabel.Image = "rbxassetid://97837015726495";
local Enum_ScaleType = Enum.ScaleType;
local Fit = Enum_ScaleType.Fit;
ImageLabel.ScaleType = Fit;
ImageLabel.ZIndex = 1002;
ImageLabel.ImageTransparency = 1;
ImageLabel.Parent = Frame_3;
local UICorner_3 = Instance.new("UICorner");
local UDim_Value_3 = UDim_New(1, 0);
UICorner_3.CornerRadius = UDim_Value_3;
UICorner_3.Parent = ImageLabel;
local Frame_4 = Instance.new("Frame");
Frame_4.Name = "MessageFrame";
local UDim2_Value_12 = UDim2_New(0.65, 0, 0.8, 0);
Frame_4.Size = UDim2_Value_12;
local UDim2_Value_13 = UDim2_New(0.22, 0, 0.5, 0);
Frame_4.Position = UDim2_Value_13;
local Vector2_Value_5 = Vector2_New(0, 0.5);
Frame_4.AnchorPoint = Vector2_Value_5;
Frame_4.BackgroundTransparency = 1;
Frame_4.ZIndex = 1000;
Frame_4.Parent = Frame_2;
local TextLabel_2 = Instance.new("TextLabel");
TextLabel_2.Name = "Message";
local UDim2_Value_14 = UDim2_New(1, 0, 1, 0);
TextLabel_2.Size = UDim2_Value_14;
TextLabel_2.BackgroundTransparency = 1;
TextLabel_2.Text = "脚本加载完成！耗时: 14.35秒";
TextLabel_2.TextColor3 = Color3_Value_2;
TextLabel_2.TextSize = 18;
TextLabel_2.TextWrapped = true;
local RobotoCondensed = Enum_Font.RobotoCondensed;
TextLabel_2.Font = RobotoCondensed;
local Left_2 = Enum_TextXAlignment.Left;
TextLabel_2.TextXAlignment = Left_2;
local Center = Enum_TextYAlignment.Center;
TextLabel_2.TextYAlignment = Center;
TextLabel_2.ZIndex = 1001;
TextLabel_2.TextTransparency = 1;
TextLabel_2.Parent = Frame_4;
local UIGradient = Instance.new("UIGradient");
local ColorSequence_New = ColorSequence.new;
local ColorSequenceKeypoint_New = ColorSequenceKeypoint.new;
local Color3_Value_7 = Color3_FromRGB(94, 78, 71);
local ColorSequenceKeypoint_Value = ColorSequenceKeypoint_New(0, Color3_Value_7);
local Color3_Value_8 = Color3_FromRGB(84, 68, 61);
local ColorSequenceKeypoint_Value_2 = ColorSequenceKeypoint_New(0.5, Color3_Value_8);
local Color3_Value_9 = Color3_FromRGB(94, 78, 71);
local ColorSequenceKeypoint_Value_3 = ColorSequenceKeypoint_New(1, Color3_Value_9);
local ColorSequence_Value = ColorSequence_New({
    ColorSequenceKeypoint_Value,
    ColorSequenceKeypoint_Value_2,
    ColorSequenceKeypoint_Value_3,
});
UIGradient.Color = ColorSequence_Value;
local NumberSequence_New = NumberSequence.new;
local NumberSequenceKeypoint_New = NumberSequenceKeypoint.new;
local NumberSequenceKeypoint_Value = NumberSequenceKeypoint_New(0, 0.2);
local NumberSequenceKeypoint_Value_2 = NumberSequenceKeypoint_New(0.5, 0.25);
local NumberSequenceKeypoint_Value_3 = NumberSequenceKeypoint_New(1, 0.2);
local NumberSequence_Value = NumberSequence_New({
    NumberSequenceKeypoint_Value,
    NumberSequenceKeypoint_Value_2,
    NumberSequenceKeypoint_Value_3,
});
UIGradient.Transparency = NumberSequence_Value;
UIGradient.Rotation = 90;
UIGradient.Parent = Frame_2;
local Success_6470, Error_Message_6470 = pcall(function(...)
    local Sound = Instance.new("Sound");
    Sound.SoundId = "rbxassetid://99469140131424";
    Sound.Volume = 10;
    Sound.Parent = workspace;
    local Connection_2;
    Connection_2 = Sound.Ended:Connect(function() -- args: SoundId;
        local Destroy = Sound:Destroy();

    end);
    local Play = Sound:Play();
end) -- true
local Array = {};
local var73 = table.insert(Array, 1, Frame);
local TweenInfo = TweenInfo;
local New_2 = TweenInfo.new;
local Enum_EasingStyle = Enum.EasingStyle;
local Back = Enum_EasingStyle.Back;
local Enum_EasingDirection = Enum.EasingDirection;
local Out = Enum_EasingDirection.Out;
local _call76 = New_2(0.4, Back, Out);
local UDim2_Value_15 = UDim2_New(0.4, 0, 0.15, 0);
local str_2 = TweenService:Create(Frame, _call76, {
    Size = UDim2_Value_15,
});
local New_3 = TweenInfo.new;
local Quad = Enum_EasingStyle.Quad;
local Out_2 = Enum_EasingDirection.Out;
local _call79 = New_3(0.5, Quad, Out_2, 0, false, 0.3);
local str_3 = TweenService:Create(TextLabel, _call79, {
    TextTransparency = 0,
});
local New_4 = TweenInfo.new;
local Quad_2 = Enum_EasingStyle.Quad;
local Out_3 = Enum_EasingDirection.Out;
local _call82 = New_4(0.5, Quad_2, Out_3, 0, false, 0.4);
local str_4 = TweenService:Create(ImageLabel, _call82, {
    ImageTransparency = 0,
});
local New_5 = TweenInfo.new;
local Quad_3 = Enum_EasingStyle.Quad;
local Out_4 = Enum_EasingDirection.Out;
local _call85 = New_5(0.6, Quad_3, Out_4, 0, false, 0.5);
local str_5 = TweenService:Create(TextLabel_2, _call85, {
    TextTransparency = 0,
});
local Play_2 = str_2.Play;
local Play_3 = str_2:Play();
local Completed = str_2.Completed;
local Connect_2 = Completed.Connect;
local Connected_2 = Completed:Connect(function()
    local Play_15 = str_3.Play;
    local Play_16 = str_3:Play();
    local Play_17 = str_4.Play;
    local Play_18 = str_4:Play();
    local Play_19 = str_5.Play;
    local Play_20 = str_5:Play();
    local Completed_5 = str_5.Completed;
    local Connect_11 = Completed_5.Connect;
    local Connected_9 = Completed_5:Connect(function()

    end);

end);
local Spawned = task.delay(5, function()
    local Not_Frame = not Frame;
    -- false
    local Parent_4 = Frame.Parent;
    local Not_Parent_4 = not Parent_4;
    -- false
    local var892 = (Not_Frame or Not_Parent_4); -- false
    if var892 then -- didnt run, expr id 695, has no else.
    end
    local New_22 = TweenInfo.new;
    local Quad_13 = Enum_EasingStyle.Quad;
    local In_2 = Enum_EasingDirection.In;
    local _call895 = New_22(0.3, Quad_13, In_2);
    local str_102 = TweenService:Create(TextLabel, _call895, {
        TextTransparency = 1,
    });
    local New_23 = TweenInfo.new;
    local Quad_14 = Enum_EasingStyle.Quad;
    local In_3 = Enum_EasingDirection.In;
    local _call898 = New_23(0.3, Quad_14, In_3);
    local str_103 = TweenService:Create(ImageLabel, _call898, {
        ImageTransparency = 1,
    });
    local New_24 = TweenInfo.new;
    local Quad_15 = Enum_EasingStyle.Quad;
    local In_4 = Enum_EasingDirection.In;
    local _call901 = New_24(0.3, Quad_15, In_4);
    local str_104 = TweenService:Create(TextLabel_2, _call901, {
        TextTransparency = 1,
    });
    local New_25 = TweenInfo.new;
    local Back_5 = Enum_EasingStyle.Back;
    local In_5 = Enum_EasingDirection.In;
    local _call904 = New_25(0.5, Back_5, In_5, 0, false, 0.3);
    local UDim2_Value_64 = UDim2_New(0, 0, 0, 0);
    local str_105 = TweenService:Create(Frame, _call904, {
        Size = UDim2_Value_64,
    });
    local Play_21 = str_102.Play;
    local Play_22 = str_102:Play();
    local Play_23 = str_103.Play;
    local Play_24 = str_103:Play();
    local Play_25 = str_104.Play;
    local Play_26 = str_104:Play();
    local Completed_6 = str_104.Completed;
    local Connect_12 = Completed_6.Connect;
    local Connected_10 = Completed_6:Connect(function()
        local Play_66 = str_105.Play;
        local Play_67 = str_105:Play();
        local Completed_14 = str_105.Completed;
        local Connect_21 = Completed_14.Connect;
        local Connected_19 = Completed_14:Connect(function()
            local Parent_10 = Frame.Parent;
            local var1047 = (Frame and Parent_10); -- ScreenGui
            if var1047 then -- ran, expr id 977, has no else.
                local Destroy_6 = Frame:Destroy();
            end

        end);

    end);


end);
