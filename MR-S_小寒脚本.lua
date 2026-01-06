-- 开源

local Loaded_Var1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/qy886123a/-/refs/heads/main/小寒UI.lua"))()
local Window = Loaded_Var1:CreateWindow({
    Folder = "MyScript",
    Title = "小寒脚本",
    Background = "https://raw.githubusercontent.com/qy886123a/-/refs/heads/main/Image_1767328658968.jpg",
    Author = "欢迎使用小寒脚本qq群870462406",
    Icon = "heart",
    Size = UDim2.new(0, 600, 0, 400),
})
local Tab_2 = Window:Tab({
    Title = "玩家",
    Icon = "heart",
})
local Section_2 = Tab_2:Section({
    Title = "玩家",
    Desc = "玩家",
})
local _ = Section_2:Toggle({
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0, p6_0)
        if not p1_0 then -- didnt run, expr id 1, has an else.
        else
            local Notify = Loaded_Var1.Notify;
        end
        local Notify_2 = Loaded_Var1:Notify({
            Icon = "bolt",
            Duration = 3,
            Title = "移速开关",
            Content = "✅ 已开启",
        });
        local Players_2 = game.Players;
        local LocalPlayer_2 = Players.LocalPlayer;
        local Character = LocalPlayer.Character;
        local var12 = (Character and 10462806); -- 10462806
        local var13 = (var12 or 10064036);
        local Humanoid = Character:FindFirstChildOfClass("Humanoid");
        if not Humanoid then -- didnt run, expr id 2, has an else.
        else
            if p1_0 then -- ran, expr id 3, has an else.
                Humanoid.WalkSpeed = 16;
            end
        end
        Humanoid.JumpPower = 50;
    end,
    Default = false,
    Title = "移速开关",
    Desc = "测试",
})
Section_2:Slider({
    Title = "移速",
    Value = {
        Min = 1,
        Default = 16,
        Max = 200,
    },
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0, p6_0)
    end,
    Step = 1,
    Desc = "测试",
})
local _ = Section_2:Toggle({
    Callback = function(p1_0, p2_0, p3_0, p4_0, p5_0, p6_0)
        local G_JumpConnectedion = _G.JumpConnection;
        local var13 = (p1_0 and 11832655); -- 11832655
        local UserInputService = game:GetService("UserInputService");
        local Connection;
        Connection = UserInputService.JumpRequest:Connect(function(p1_0, p2_0)
            local Players_3 = game.Players;
            local LocalPlayer_3 = Players.LocalPlayer;
            local Character_3 = LocalPlayer.Character;
            if not Character_3 then -- didnt run, expr id 7, has an else.
            else
                local Humanoid_4 = Character_3:FindFirstChildOfClass("Humanoid");
            end
            if Humanoid_4 then -- ran, expr id 8, has an else.
                local GetState = Humanoid_4.GetState;
                local State = Humanoid_4:GetState();
            end
            local Dead = Enum_HumanoidStateType.Dead;
            local State_isnt_Dead = (State ~= Dead);
            -- true, eq id 1
            local ChangeState_3 = Humanoid_4.ChangeState;
            local Jumping_2 = Enum_HumanoidStateType.Jumping;
            local ChangeState_4 = Humanoid_4:ChangeState(Jumping_2);
        end);
        _G.JumpConnection = Connection;
        local Notify_3 = Loaded_Var1.Notify;
        local Notify_4 = Loaded_Var1:Notify({
            Icon = "feather",
            Duration = 3,
            Title = "无限跳",
            Content = "✅ 已开启",
        });
    end,
    Default = false,
    Title = "无限跳",
    Desc = "持续跳跃",
})
local _ = Section_2:Toggle({
    Callback = function(p1_0, p2_0)
        local var15 = (p1_0 and 16167635); -- 16167635
        local Notify_5 = Loaded_Var1.Notify;
        local Notify_6 = Loaded_Var1:Notify({
            Icon = "heart",
            Duration = 3,
            Title = "飞行提示",
            Content = "✅ 飞行已开启",
        });
        local Not_P1_0 = not p1_0;
        -- false
        local var17 = (Not_P1_0 and 11541639);
        local Character_2 = game:GetService("Players").LocalPlayer.Character;
        if not Character_2 then -- didnt run, expr id 4, has an else.
        else
            local Humanoid_2 = Character_2:FindFirstChildOfClass("Humanoid");
            local Not_Humanoid_2 = not Humanoid_2;
            -- false
            local var18 = (Not_Humanoid_2 and 15516539);
        end
        spawn(function(p1_0, p2_0)
            local RunService = game:GetService("RunService");
            local Connection_Result;
            Connection_Result = RunService.Heartbeat:Wait();
            local var58 = (Connection_Result and 15509476); -- 15509476
            local var59 = (Character_2 and 13698306); -- 13698306
            if Humanoid_2 then -- ran, expr id 9, has an else.
                local Parent = Humanoid_2.Parent;
            end
            local var60 = (Parent and 13760577); -- 13760577
            local MoveDirection = Humanoid_2.MoveDirection;
        end)
        local Animate = Character_2.Animate;
        Animate.Disabled = true;
        local Humanoid_3 = Character_2:FindFirstChildOfClass("Humanoid");
        if not Humanoid_3 then -- didnt run, expr id 5, has an else.
        else
            local GetPlayingAnimationTracks = Humanoid_3.GetPlayingAnimationTracks;
            local PlayingAnimationTracks = Humanoid_3:GetPlayingAnimationTracks();
            for i, v in pairs(PlayingAnimationTracks) do
            end
            if i then -- ran, expr id 6, has an else.
                local AdjustSpeed = v.AdjustSpeed;
                local AdjustSpeed_2 = v:AdjustSpeed(0);
            end
        end
        local Enum_HumanoidStateType = Enum.HumanoidStateType;
        local Climbing = Enum_HumanoidStateType.Climbing;
        local SetStateEnabled = Humanoid_2.SetStateEnabled;
        local SetStateEnabled_2 = Humanoid_2:SetStateEnabled(Climbing, false);
        local SetStateEnabled_3 = Humanoid_2.SetStateEnabled;
        local FallingDown = Enum_HumanoidStateType.FallingDown;
        local SetStateEnabled_4 = Humanoid_2:SetStateEnabled(FallingDown, false);
        local SetStateEnabled_5 = Humanoid_2.SetStateEnabled;
        local Flying = Enum_HumanoidStateType.Flying;
        local SetStateEnabled_6 = Humanoid_2:SetStateEnabled(Flying, false);
        local Freefall = Enum_HumanoidStateType.Freefall;
        local SetStateEnabled_7 = Humanoid_2.SetStateEnabled;
        local SetStateEnabled_8 = Humanoid_2:SetStateEnabled(Freefall, false);
        local GettingUp = Enum_HumanoidStateType.GettingUp;
        local SetStateEnabled_9 = Humanoid_2.SetStateEnabled;
        local SetStateEnabled_10 = Humanoid_2:SetStateEnabled(GettingUp, false);
        local Jumping = Enum_HumanoidStateType.Jumping;
        local SetStateEnabled_11 = Humanoid_2.SetStateEnabled;
        local SetStateEnabled_12 = Humanoid_2:SetStateEnabled(Jumping, false);
        local Landed = Enum_HumanoidStateType.Landed;
        local SetStateEnabled_13 = Humanoid_2.SetStateEnabled;
        local SetStateEnabled_14 = Humanoid_2:SetStateEnabled(Landed, false);
        local SetStateEnabled_15 = Humanoid_2.SetStateEnabled;
        local Physics = Enum_HumanoidStateType.Physics;
        local SetStateEnabled_16 = Humanoid_2:SetStateEnabled(Physics, false);
        local SetStateEnabled_17 = Humanoid_2.SetStateEnabled;
        local PlatformStanding = Enum_HumanoidStateType.PlatformStanding;
        local SetStateEnabled_18 = Humanoid_2:SetStateEnabled(PlatformStanding, false);
        local SetStateEnabled_19 = Humanoid_2.SetStateEnabled;
        local Ragdoll = Enum_HumanoidStateType.Ragdoll;
        local SetStateEnabled_20 = Humanoid_2:SetStateEnabled(Ragdoll, false);
        local Running = Enum_HumanoidStateType.Running;
        local SetStateEnabled_21 = Humanoid_2.SetStateEnabled;
        local SetStateEnabled_22 = Humanoid_2:SetStateEnabled(Running, false);
        local SetStateEnabled_23 = Humanoid_2.SetStateEnabled;
        local RunningNoPhysics = Enum_HumanoidStateType.RunningNoPhysics;
        local SetStateEnabled_24 = Humanoid_2:SetStateEnabled(RunningNoPhysics, false);
        local SetStateEnabled_25 = Humanoid_2.SetStateEnabled;
        local Seated = Enum_HumanoidStateType.Seated;
        local SetStateEnabled_26 = Humanoid_2:SetStateEnabled(Seated, false);
        local StrafingNoPhysics = Enum_HumanoidStateType.StrafingNoPhysics;
        local SetStateEnabled_27 = Humanoid_2.SetStateEnabled;
        local SetStateEnabled_28 = Humanoid_2:SetStateEnabled(StrafingNoPhysics, false);
        local Swimming = Enum_HumanoidStateType.Swimming;
        local SetStateEnabled_29 = Humanoid_2.SetStateEnabled;
        local SetStateEnabled_30 = Humanoid_2:SetStateEnabled(Swimming, false);
        local ChangeState = Humanoid_2.ChangeState;
        local Swimming_2 = Enum_HumanoidStateType.Swimming;
        local ChangeState_2 = Humanoid_2:ChangeState(Swimming_2);
        Humanoid_2.PlatformStand = true;
        spawn(function(p1_0)
            local Torso = Character_2:FindFirstChild("Torso");
            local var61 = (Torso and 13034240); -- 13034240
            local Not_Torso = not Torso;
            -- false
            local var62 = (Not_Torso and 16732431);
            local BodyGyro = Instance.new("BodyGyro");
            BodyGyro.Parent = Torso;
            BodyGyro.P = 90000;
            local Vector3_New = Vector3.new;
            local Vector3_Value = Vector3_New(9000000000, 9000000000, 9000000000);
            BodyGyro.maxTorque = Vector3_Value;
            local CFrame = Torso.CFrame;
            BodyGyro.cframe = CFrame;
            local BodyVelocity = Instance.new("BodyVelocity");
            BodyVelocity.Parent = Torso;
            local Vector3_Value_2 = Vector3_New(0, 0.1, 0);
            BodyVelocity.velocity = Vector3_Value_2;
            local Vector3_Value_3 = Vector3_New(9000000000, 9000000000, 9000000000);
            BodyVelocity.maxForce = Vector3_Value_3;
            local var63 = (p1_0 and 15587463); -- 15587463
            local var64 = (var63 or 15058362);
            local Health = Humanoid_2.Health;
            local var65 = (Health > 0); -- nil
            local var66 = (var65 and 16493442);
            local Destroy = BodyGyro:Destroy();
            local Destroy_2 = BodyVelocity:Destroy();
        end)
    end,
    Default = false,
    Title = "小寒飞行",
    Desc = "飞行",
})
Section_2:Slider({
    Title = "飞行速度",
    Value = {
        Min = 1,
        Default = 1,
        Max = 50,
    },
    Callback = function(p1_0, p2_0, p3_0, p4_0)
        local SpeedSlider = Env.SpeedSlider
        SpeedSlider:SetDesc("当前速度倍率: " .. p1_0)
        Loaded_Var1:Notify({
            Icon = "heart",
            Duration = 2,
            Title = "速度提示",
            Content = "飞行速度倍率已设置为: " .. p1_0,
        })
    end,
    Step = 1,
    Desc = "当前速度倍率: 1",
})