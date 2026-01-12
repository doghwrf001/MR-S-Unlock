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


-- 傻逼黑科技，圈钱狗QQ 390751814
-- 
-- 你爹我给你脚本破解了
-- 狗屎的东西


local var1 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/RobloxBlackMagicHUB.txt", true);
local var2 = loadstring(var1);
local Loaded_Var1 = var2();
local Players = game:GetService("Players");
local LocalPlayer = Players.LocalPlayer;
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui");
local ScreenGui = Instance.new("ScreenGui");
ScreenGui.Parent = PlayerGui;
local Enum_ZIndexBehavior = Enum.ZIndexBehavior;
local Sibling = Enum_ZIndexBehavior.Sibling;
ScreenGui.ZIndexBehavior = Sibling;
ScreenGui.ResetOnSpawn = false;
local Frame = Instance.new("Frame");
Frame.Parent = ScreenGui;
Frame.BorderSizePixel = 0;
local Color3_FromRGB = Color3.fromRGB;
local Color3_Value = Color3_FromRGB(255, 86, 128);
Frame.BackgroundColor3 = Color3_Value;
local UDim2_New = UDim2.new;
local UDim2_Value = UDim2_New(0, 666, 0, 369);
Frame.Size = UDim2_Value;
local UDim2_Value_2 = UDim2_New(0.2446, 0, 0.26675, 0);
Frame.Position = UDim2_Value_2;
local Color3_Value_2 = Color3_FromRGB(0, 0, 0);
Frame.BorderColor3 = Color3_Value_2;
Frame.BackgroundTransparency = 0.3;
local UICorner = Instance.new("UICorner");
UICorner.Parent = Frame;
local UDim_New = UDim.new;
local UDim_Value = UDim_New(0, 16);
UICorner.CornerRadius = UDim_Value;
local LocalScript = Instance.new("LocalScript");
LocalScript.Parent = Frame;
LocalScript.Name = "加边框加流动渐变";
local Frame_2 = Instance.new("Frame");
Frame_2.Parent = Frame;
Frame_2.BorderSizePixel = 0;
local Color3_Value_3 = Color3_FromRGB(255, 255, 255);
Frame_2.BackgroundColor3 = Color3_Value_3;
local UDim2_Value_3 = UDim2_New(1, 0, 0, 1);
Frame_2.Size = UDim2_Value_3;
local UDim2_Value_4 = UDim2_New(-0.0015, 0, 0.13008, 0);
Frame_2.Position = UDim2_Value_4;
local Color3_Value_4 = Color3_FromRGB(255, 255, 255);
Frame_2.BorderColor3 = Color3_Value_4;
Frame_2.Name = "横分割线";
Frame_2.BackgroundTransparency = 0.3;
local LocalScript_2 = Instance.new("LocalScript");
LocalScript_2.Parent = Frame_2;
LocalScript_2.Name = "流动渐变";
local UIGradient = Instance.new("UIGradient");
UIGradient.Parent = Frame_2;
local ColorSequence_New = ColorSequence.new;
local ColorSequenceKeypoint_New = ColorSequenceKeypoint.new;
local Color3_Value_5 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value = ColorSequenceKeypoint_New(0, Color3_Value_5);
local Color3_Value_6 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_2 = ColorSequenceKeypoint_New(0, Color3_Value_6);
local Color3_Value_7 = Color3_FromRGB(171, 68, 68);
local ColorSequenceKeypoint_Value_3 = ColorSequenceKeypoint_New(0.25, Color3_Value_7);
local Color3_Value_8 = Color3_FromRGB(171, 0, 0);
local ColorSequenceKeypoint_Value_4 = ColorSequenceKeypoint_New(0.5, Color3_Value_8);
local Color3_Value_9 = Color3_FromRGB(171, 68, 68);
local ColorSequenceKeypoint_Value_5 = ColorSequenceKeypoint_New(0.75, Color3_Value_9);
local Color3_Value_10 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_6 = ColorSequenceKeypoint_New(1, Color3_Value_10);
local ColorSequence_Value = ColorSequence_New({
    ColorSequenceKeypoint_Value,
    ColorSequenceKeypoint_Value_2,
    ColorSequenceKeypoint_Value_3,
    ColorSequenceKeypoint_Value_4,
    ColorSequenceKeypoint_Value_5,
    ColorSequenceKeypoint_Value_6,
});
UIGradient.Color = ColorSequence_Value;
local Frame_3 = Instance.new("Frame");
Frame_3.Parent = Frame;
Frame_3.BorderSizePixel = 0;
local Color3_Value_11 = Color3_FromRGB(255, 255, 255);
Frame_3.BackgroundColor3 = Color3_Value_11;
local UDim2_Value_5 = UDim2_New(0, 1, 0.86992, 0);
Frame_3.Size = UDim2_Value_5;
local UDim2_Value_6 = UDim2_New(0.14865, 0, 0.13279, 0);
Frame_3.Position = UDim2_Value_6;
local Color3_Value_12 = Color3_FromRGB(0, 0, 0);
Frame_3.BorderColor3 = Color3_Value_12;
Frame_3.Name = "竖分割线";
Frame_3.BackgroundTransparency = 0.3;
local UIGradient_2 = Instance.new("UIGradient");
UIGradient_2.Parent = Frame_3;
UIGradient_2.Rotation = 90;
local Color3_Value_13 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_7 = ColorSequenceKeypoint_New(0, Color3_Value_13);
local Color3_Value_14 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_8 = ColorSequenceKeypoint_New(0, Color3_Value_14);
local Color3_Value_15 = Color3_FromRGB(206, 206, 255);
local ColorSequenceKeypoint_Value_9 = ColorSequenceKeypoint_New(0.25, Color3_Value_15);
local Color3_Value_16 = Color3_FromRGB(171, 171, 255);
local ColorSequenceKeypoint_Value_10 = ColorSequenceKeypoint_New(0.498, Color3_Value_16);
local Color3_Value_17 = Color3_FromRGB(206, 206, 255);
local ColorSequenceKeypoint_Value_11 = ColorSequenceKeypoint_New(0.75, Color3_Value_17);
local Color3_Value_18 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_12 = ColorSequenceKeypoint_New(1, Color3_Value_18);
local ColorSequence_Value_2 = ColorSequence_New({
    ColorSequenceKeypoint_Value_7,
    ColorSequenceKeypoint_Value_8,
    ColorSequenceKeypoint_Value_9,
    ColorSequenceKeypoint_Value_10,
    ColorSequenceKeypoint_Value_11,
    ColorSequenceKeypoint_Value_12,
});
UIGradient_2.Color = ColorSequence_Value_2;
local LocalScript_3 = Instance.new("LocalScript");
LocalScript_3.Parent = Frame_3;
LocalScript_3.Name = "流动渐变";
local ImageLabel = Instance.new("ImageLabel");
ImageLabel.Parent = Frame;
ImageLabel.BorderSizePixel = 0;
local Color3_Value_19 = Color3_FromRGB(255, 255, 255);
ImageLabel.BackgroundColor3 = Color3_Value_19;
ImageLabel.Image = "rbxassetid://138288475364166";
local UDim2_Value_7 = UDim2_New(0, 36, 0, 36);
ImageLabel.Size = UDim2_Value_7;
local Color3_Value_20 = Color3_FromRGB(0, 0, 0);
ImageLabel.BorderColor3 = Color3_Value_20;
ImageLabel.BackgroundTransparency = 1;
ImageLabel.Name = "Logo";
local UDim2_Value_8 = UDim2_New(0.01098, 0, 0.01274, 0);
ImageLabel.Position = UDim2_Value_8;
local UICorner_2 = Instance.new("UICorner");
UICorner_2.Parent = ImageLabel;
local TextLabel = Instance.new("TextLabel");
TextLabel.Parent = Frame;
TextLabel.BorderSizePixel = 0;
TextLabel.TextSize = 19;
local Enum_TextXAlignment = Enum.TextXAlignment;
local Left = Enum_TextXAlignment.Left;
TextLabel.TextXAlignment = Left;
local Color3_Value_21 = Color3_FromRGB(255, 255, 255);
TextLabel.BackgroundColor3 = Color3_Value_21;
local Font = Font;
local New = Font.new;
local Enum_FontWeight = Enum.FontWeight;
local Regular = Enum_FontWeight.Regular;
local Enum_FontStyle = Enum.FontStyle;
local Normal = Enum_FontStyle.Normal;
local _call7 = New("rbxasset://fonts/families/FredokaOne.json", Regular, Normal);
TextLabel.FontFace = _call7;
local Color3_Value_22 = Color3_FromRGB(255, 255, 255);
TextLabel.TextColor3 = Color3_Value_22;
TextLabel.BackgroundTransparency = 1;
local UDim2_Value_9 = UDim2_New(0, 279, 0, 30);
TextLabel.Size = UDim2_Value_9;
local Color3_Value_23 = Color3_FromRGB(0, 0, 0);
TextLabel.BorderColor3 = Color3_Value_23;
TextLabel.Text = "Roblox黑科技脚本中心 - 恁又要讨人厌了";
TextLabel.Name = "标题";
local UDim2_Value_10 = UDim2_New(0.09009, 0, 0.01897, 0);
TextLabel.Position = UDim2_Value_10;
local LocalScript_4 = Instance.new("LocalScript");
LocalScript_4.Parent = TextLabel;
LocalScript_4.Name = "文字随机变色";
local LocalScript_5 = Instance.new("LocalScript");
LocalScript_5.Parent = TextLabel;
LocalScript_5.Name = "文字设定";
local TextLabel_2 = Instance.new("TextLabel");
TextLabel_2.Parent = Frame;
TextLabel_2.BorderSizePixel = 0;
TextLabel_2.TextSize = 16;
local Color3_Value_24 = Color3_FromRGB(255, 255, 255);
TextLabel_2.BackgroundColor3 = Color3_Value_24;
local New_2 = Font.new;
local Bold = Enum_FontWeight.Bold;
local Normal_2 = Enum_FontStyle.Normal;
local _call10 = New_2("rbxasset://fonts/families/FredokaOne.json", Bold, Normal_2);
TextLabel_2.FontFace = _call10;
local Color3_Value_25 = Color3_FromRGB(255, 255, 255);
TextLabel_2.TextColor3 = Color3_Value_25;
TextLabel_2.BackgroundTransparency = 1;
local UDim2_Value_11 = UDim2_New(0, 84, 0, 26);
TextLabel_2.Size = UDim2_Value_11;
local Color3_Value_26 = Color3_FromRGB(0, 0, 0);
TextLabel_2.BorderColor3 = Color3_Value_26;
TextLabel_2.Text = "390751814";
TextLabel_2.Name = "联系方式2";
local UDim2_Value_12 = UDim2_New(0.84384, 0, 0.9187, 0);
TextLabel_2.Position = UDim2_Value_12;
local LocalScript_6 = Instance.new("LocalScript");
LocalScript_6.Parent = TextLabel_2;
LocalScript_6.Name = "文字设定";
local ImageLabel_2 = Instance.new("ImageLabel");
ImageLabel_2.Parent = Frame;
ImageLabel_2.BorderSizePixel = 0;
local Color3_Value_27 = Color3_FromRGB(255, 255, 255);
ImageLabel_2.BackgroundColor3 = Color3_Value_27;
ImageLabel_2.Image = "rbxassetid://140442613595732";
local UDim2_Value_13 = UDim2_New(0, 23, 0, 23);
ImageLabel_2.Size = UDim2_Value_13;
local Color3_Value_28 = Color3_FromRGB(0, 0, 0);
ImageLabel_2.BorderColor3 = Color3_Value_28;
ImageLabel_2.BackgroundTransparency = 1;
ImageLabel_2.Name = "QQ";
local UDim2_Value_14 = UDim2_New(0.81532, 0, 0.92141, 0);
ImageLabel_2.Position = UDim2_Value_14;
local ImageLabel_3 = Instance.new("ImageLabel");
ImageLabel_3.Parent = Frame;
ImageLabel_3.BorderSizePixel = 0;
local Color3_Value_29 = Color3_FromRGB(255, 255, 255);
ImageLabel_3.BackgroundColor3 = Color3_Value_29;
ImageLabel_3.Image = "rbxassetid://127305073924596";
local UDim2_Value_15 = UDim2_New(0, 23, 0, 23);
ImageLabel_3.Size = UDim2_Value_15;
local Color3_Value_30 = Color3_FromRGB(0, 0, 0);
ImageLabel_3.BorderColor3 = Color3_Value_30;
ImageLabel_3.BackgroundTransparency = 1;
ImageLabel_3.Name = "微信";
local UDim2_Value_16 = UDim2_New(0.65465, 0, 0.92141, 0);
ImageLabel_3.Position = UDim2_Value_16;
local UICorner_3 = Instance.new("UICorner");
UICorner_3.Parent = ImageLabel_3;
local UDim_Value_2 = UDim_New(0, 16);
UICorner_3.CornerRadius = UDim_Value_2;
local TextButton = Instance.new("TextButton");
TextButton.Parent = Frame;
TextButton.TextWrapped = true;
TextButton.RichText = true;
TextButton.BorderSizePixel = 0;
TextButton.TextSize = 14;
local Color3_Value_31 = Color3_FromRGB(255, 255, 255);
TextButton.TextColor3 = Color3_Value_31;
local Color3_Value_32 = Color3_FromRGB(255, 255, 255);
TextButton.BackgroundColor3 = Color3_Value_32;
local New_3 = Font.new;
local Bold_2 = Enum_FontWeight.Bold;
local Normal_3 = Enum_FontStyle.Normal;
local _call13 = New_3("rbxasset://fonts/families/FredokaOne.json", Bold_2, Normal_3);
TextButton.FontFace = _call13;
TextButton.BackgroundTransparency = 1;
local Enum_AutomaticSize = Enum.AutomaticSize;
local Y = Enum_AutomaticSize.Y;
TextButton.AutomaticSize = Y;
local UDim2_Value_17 = UDim2_New(0, 23, 0, 23);
TextButton.Size = UDim2_Value_17;
local Color3_Value_33 = Color3_FromRGB(0, 0, 0);
TextButton.BorderColor3 = Color3_Value_33;
TextButton.Text = "X";
TextButton.Name = "关闭窗口";
local UDim2_Value_18 = UDim2_New(0.94144, 0, 0.02981, 0);
TextButton.Position = UDim2_Value_18;
local LocalScript_7 = Instance.new("LocalScript");
LocalScript_7.Parent = TextButton;
LocalScript_7.Name = "文字设定";
local LocalScript_8 = Instance.new("LocalScript");
LocalScript_8.Parent = TextButton;
LocalScript_8.Name = "关闭";
local TextLabel_3 = Instance.new("TextLabel");
TextLabel_3.Parent = Frame;
TextLabel_3.BorderSizePixel = 0;
TextLabel_3.TextSize = 16;
local Color3_Value_34 = Color3_FromRGB(255, 255, 255);
TextLabel_3.BackgroundColor3 = Color3_Value_34;
local New_4 = Font.new;
local Bold_3 = Enum_FontWeight.Bold;
local Normal_4 = Enum_FontStyle.Normal;
local _call17 = New_4("rbxasset://fonts/families/FredokaOne.json", Bold_3, Normal_4);
TextLabel_3.FontFace = _call17;
local Color3_Value_35 = Color3_FromRGB(255, 255, 255);
TextLabel_3.TextColor3 = Color3_Value_35;
TextLabel_3.BackgroundTransparency = 1;
local UDim2_Value_19 = UDim2_New(0, 84, 0, 26);
TextLabel_3.Size = UDim2_Value_19;
local Color3_Value_36 = Color3_FromRGB(0, 0, 0);
TextLabel_3.BorderColor3 = Color3_Value_36;
TextLabel_3.Text = "oxYLENxo";
TextLabel_3.Name = "联系方式1";
local UDim2_Value_20 = UDim2_New(0.68919, 0, 0.9187, 0);
TextLabel_3.Position = UDim2_Value_20;
local LocalScript_9 = Instance.new("LocalScript");
LocalScript_9.Parent = TextLabel_3;
LocalScript_9.Name = "文字设定";
local TextButton_2 = Instance.new("TextButton");
TextButton_2.Parent = Frame;
TextButton_2.BorderSizePixel = 0;
TextButton_2.TextSize = 14;
local Color3_Value_37 = Color3_FromRGB(255, 255, 255);
TextButton_2.TextColor3 = Color3_Value_37;
local Color3_Value_38 = Color3_FromRGB(255, 255, 255);
TextButton_2.BackgroundColor3 = Color3_Value_38;
local New_5 = Font.new;
local Regular_2 = Enum_FontWeight.Regular;
local Normal_5 = Enum_FontStyle.Normal;
local _call20 = New_5("rbxasset://fonts/families/SourceSansPro.json", Regular_2, Normal_5);
TextButton_2.FontFace = _call20;
TextButton_2.BackgroundTransparency = 1;
local UDim2_Value_21 = UDim2_New(0, 99, 0, 39);
TextButton_2.Size = UDim2_Value_21;
local Color3_Value_39 = Color3_FromRGB(0, 0, 0);
TextButton_2.BorderColor3 = Color3_Value_39;
TextButton_2.Text = "😀 免费脚本";
TextButton_2.Name = "免费脚本";
local UDim2_Value_22 = UDim2_New(0, 0, 0.24661, 0);
TextButton_2.Position = UDim2_Value_22;
local LocalScript_10 = Instance.new("LocalScript");
LocalScript_10.Parent = TextButton_2;
LocalScript_10.Name = "隐藏其他显示区";
local LocalScript_11 = Instance.new("LocalScript");
LocalScript_11.Parent = TextButton_2;
LocalScript_11.Name = "文字设定";
local Frame_4 = Instance.new("Frame");
Frame_4.Parent = Frame;
Frame_4.BorderSizePixel = 0;
local Color3_Value_40 = Color3_FromRGB(255, 255, 255);
Frame_4.BackgroundColor3 = Color3_Value_40;
local UDim2_Value_23 = UDim2_New(0.14865, 0, 0, 1);
Frame_4.Size = UDim2_Value_23;
local UDim2_Value_24 = UDim2_New(0, 0, 0.2439, 0);
Frame_4.Position = UDim2_Value_24;
local Color3_Value_41 = Color3_FromRGB(255, 255, 255);
Frame_4.BorderColor3 = Color3_Value_41;
Frame_4.Name = "横分割线";
Frame_4.BackgroundTransparency = 0.3;
local LocalScript_12 = Instance.new("LocalScript");
LocalScript_12.Parent = Frame_4;
LocalScript_12.Name = "流动渐变";
local UIGradient_3 = Instance.new("UIGradient");
UIGradient_3.Parent = Frame_4;
local Color3_Value_42 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_13 = ColorSequenceKeypoint_New(0, Color3_Value_42);
local Color3_Value_43 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_14 = ColorSequenceKeypoint_New(0, Color3_Value_43);
local Color3_Value_44 = Color3_FromRGB(34, 86, 34);
local ColorSequenceKeypoint_Value_15 = ColorSequenceKeypoint_New(0.25, Color3_Value_44);
local Color3_Value_45 = Color3_FromRGB(0, 86, 0);
local ColorSequenceKeypoint_Value_16 = ColorSequenceKeypoint_New(0.5, Color3_Value_45);
local Color3_Value_46 = Color3_FromRGB(34, 86, 34);
local ColorSequenceKeypoint_Value_17 = ColorSequenceKeypoint_New(0.75, Color3_Value_46);
local Color3_Value_47 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_18 = ColorSequenceKeypoint_New(1, Color3_Value_47);
local ColorSequence_Value_3 = ColorSequence_New({
    ColorSequenceKeypoint_Value_13,
    ColorSequenceKeypoint_Value_14,
    ColorSequenceKeypoint_Value_15,
    ColorSequenceKeypoint_Value_16,
    ColorSequenceKeypoint_Value_17,
    ColorSequenceKeypoint_Value_18,
});
UIGradient_3.Color = ColorSequence_Value_3;
local TextButton_3 = Instance.new("TextButton");
TextButton_3.Parent = Frame;
TextButton_3.BorderSizePixel = 0;
TextButton_3.TextSize = 14;
local Color3_Value_48 = Color3_FromRGB(255, 255, 255);
TextButton_3.TextColor3 = Color3_Value_48;
local Color3_Value_49 = Color3_FromRGB(255, 255, 255);
TextButton_3.BackgroundColor3 = Color3_Value_49;
local New_6 = Font.new;
local Regular_3 = Enum_FontWeight.Regular;
local Normal_6 = Enum_FontStyle.Normal;
local _call23 = New_6("rbxasset://fonts/families/SourceSansPro.json", Regular_3, Normal_6);
TextButton_3.FontFace = _call23;
TextButton_3.BackgroundTransparency = 1;
local UDim2_Value_25 = UDim2_New(0, 99, 0, 39);
TextButton_3.Size = UDim2_Value_25;
local Color3_Value_50 = Color3_FromRGB(0, 0, 0);
TextButton_3.BorderColor3 = Color3_Value_50;
TextButton_3.Text = " 💴 买断制脚本";
TextButton_3.Name = "买断制脚本";
local UDim2_Value_26 = UDim2_New(0, 0, 0.35501, 0);
TextButton_3.Position = UDim2_Value_26;
local LocalScript_13 = Instance.new("LocalScript");
LocalScript_13.Parent = TextButton_3;
LocalScript_13.Name = "文字设定";
local LocalScript_14 = Instance.new("LocalScript");
LocalScript_14.Parent = TextButton_3;
LocalScript_14.Name = "隐藏其他显示区";
local Frame_5 = Instance.new("Frame");
Frame_5.Parent = Frame;
Frame_5.BorderSizePixel = 0;
local Color3_Value_51 = Color3_FromRGB(255, 255, 255);
Frame_5.BackgroundColor3 = Color3_Value_51;
local UDim2_Value_27 = UDim2_New(0.14865, 0, 0, 1);
Frame_5.Size = UDim2_Value_27;
local UDim2_Value_28 = UDim2_New(0.0015, 0, 0.3523, 0);
Frame_5.Position = UDim2_Value_28;
local Color3_Value_52 = Color3_FromRGB(255, 255, 255);
Frame_5.BorderColor3 = Color3_Value_52;
Frame_5.Name = "横分割线";
Frame_5.BackgroundTransparency = 0.3;
local LocalScript_15 = Instance.new("LocalScript");
LocalScript_15.Parent = Frame_5;
LocalScript_15.Name = "流动渐变";
local UIGradient_4 = Instance.new("UIGradient");
UIGradient_4.Parent = Frame_5;
local Color3_Value_53 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_19 = ColorSequenceKeypoint_New(0, Color3_Value_53);
local Color3_Value_54 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_20 = ColorSequenceKeypoint_New(0, Color3_Value_54);
local Color3_Value_55 = Color3_FromRGB(171, 119, 68);
local ColorSequenceKeypoint_Value_21 = ColorSequenceKeypoint_New(0.25, Color3_Value_55);
local Color3_Value_56 = Color3_FromRGB(171, 86, 0);
local ColorSequenceKeypoint_Value_22 = ColorSequenceKeypoint_New(0.5, Color3_Value_56);
local Color3_Value_57 = Color3_FromRGB(171, 119, 68);
local ColorSequenceKeypoint_Value_23 = ColorSequenceKeypoint_New(0.75, Color3_Value_57);
local Color3_Value_58 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_24 = ColorSequenceKeypoint_New(1, Color3_Value_58);
local ColorSequence_Value_4 = ColorSequence_New({
    ColorSequenceKeypoint_Value_19,
    ColorSequenceKeypoint_Value_20,
    ColorSequenceKeypoint_Value_21,
    ColorSequenceKeypoint_Value_22,
    ColorSequenceKeypoint_Value_23,
    ColorSequenceKeypoint_Value_24,
});
UIGradient_4.Color = ColorSequence_Value_4;
local TextButton_4 = Instance.new("TextButton");
TextButton_4.Parent = Frame;
TextButton_4.BorderSizePixel = 0;
TextButton_4.TextSize = 14;
local Color3_Value_59 = Color3_FromRGB(255, 255, 255);
TextButton_4.TextColor3 = Color3_Value_59;
local Color3_Value_60 = Color3_FromRGB(255, 255, 255);
TextButton_4.BackgroundColor3 = Color3_Value_60;
local New_7 = Font.new;
local Regular_4 = Enum_FontWeight.Regular;
local Normal_7 = Enum_FontStyle.Normal;
local _call26 = New_7("rbxasset://fonts/families/SourceSansPro.json", Regular_4, Normal_7);
TextButton_4.FontFace = _call26;
TextButton_4.BackgroundTransparency = 1;
local UDim2_Value_29 = UDim2_New(0, 99, 0, 39);
TextButton_4.Size = UDim2_Value_29;
local Color3_Value_61 = Color3_FromRGB(0, 0, 0);
TextButton_4.BorderColor3 = Color3_Value_61;
TextButton_4.Text = " 👍 包月制脚本";
TextButton_4.Name = "包月制脚本";
local UDim2_Value_30 = UDim2_New(0.0015, 0, 0.47154, 0);
TextButton_4.Position = UDim2_Value_30;
local LocalScript_16 = Instance.new("LocalScript");
LocalScript_16.Parent = TextButton_4;
LocalScript_16.Name = "文字设定";
local LocalScript_17 = Instance.new("LocalScript");
LocalScript_17.Parent = TextButton_4;
LocalScript_17.Name = "隐藏其他显示区";
local Frame_6 = Instance.new("Frame");
Frame_6.Parent = Frame;
Frame_6.BorderSizePixel = 0;
local Color3_Value_62 = Color3_FromRGB(255, 255, 255);
Frame_6.BackgroundColor3 = Color3_Value_62;
local UDim2_Value_31 = UDim2_New(0.14865, 0, 0, 1);
Frame_6.Size = UDim2_Value_31;
local UDim2_Value_32 = UDim2_New(0, 0, 0.46883, 0);
Frame_6.Position = UDim2_Value_32;
local Color3_Value_63 = Color3_FromRGB(255, 255, 255);
Frame_6.BorderColor3 = Color3_Value_63;
Frame_6.Name = "横分割线";
Frame_6.BackgroundTransparency = 0.3;
local LocalScript_18 = Instance.new("LocalScript");
LocalScript_18.Parent = Frame_6;
LocalScript_18.Name = "流动渐变";
local UIGradient_5 = Instance.new("UIGradient");
UIGradient_5.Parent = Frame_6;
local Color3_Value_64 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_25 = ColorSequenceKeypoint_New(0, Color3_Value_64);
local Color3_Value_65 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_26 = ColorSequenceKeypoint_New(0, Color3_Value_65);
local Color3_Value_66 = Color3_FromRGB(51, 51, 128);
local ColorSequenceKeypoint_Value_27 = ColorSequenceKeypoint_New(0.25, Color3_Value_66);
local Color3_Value_67 = Color3_FromRGB(0, 0, 128);
local ColorSequenceKeypoint_Value_28 = ColorSequenceKeypoint_New(0.5, Color3_Value_67);
local Color3_Value_68 = Color3_FromRGB(51, 51, 128);
local ColorSequenceKeypoint_Value_29 = ColorSequenceKeypoint_New(0.75, Color3_Value_68);
local Color3_Value_69 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_30 = ColorSequenceKeypoint_New(1, Color3_Value_69);
local ColorSequence_Value_5 = ColorSequence_New({
    ColorSequenceKeypoint_Value_25,
    ColorSequenceKeypoint_Value_26,
    ColorSequenceKeypoint_Value_27,
    ColorSequenceKeypoint_Value_28,
    ColorSequenceKeypoint_Value_29,
    ColorSequenceKeypoint_Value_30,
});
UIGradient_5.Color = ColorSequence_Value_5;
local TextButton_5 = Instance.new("TextButton");
TextButton_5.Parent = Frame;
TextButton_5.BorderSizePixel = 0;
TextButton_5.TextSize = 14;
local Color3_Value_70 = Color3_FromRGB(255, 255, 255);
TextButton_5.TextColor3 = Color3_Value_70;
local Color3_Value_71 = Color3_FromRGB(255, 255, 255);
TextButton_5.BackgroundColor3 = Color3_Value_71;
local New_8 = Font.new;
local Regular_5 = Enum_FontWeight.Regular;
local Normal_8 = Enum_FontStyle.Normal;
local _call29 = New_8("rbxasset://fonts/families/SourceSansPro.json", Regular_5, Normal_8);
TextButton_5.FontFace = _call29;
TextButton_5.BackgroundTransparency = 1;
local UDim2_Value_33 = UDim2_New(0, 99, 0, 39);
TextButton_5.Size = UDim2_Value_33;
local Color3_Value_72 = Color3_FromRGB(0, 0, 0);
TextButton_5.BorderColor3 = Color3_Value_72;
TextButton_5.Text = "🎊 公告及活动";
TextButton_5.Name = "公告及活动";
local UDim2_Value_34 = UDim2_New(0.0015, 0, 0.13279, 0);
TextButton_5.Position = UDim2_Value_34;
local LocalScript_19 = Instance.new("LocalScript");
LocalScript_19.Parent = TextButton_5;
LocalScript_19.Name = "隐藏其他显示区";
local LocalScript_20 = Instance.new("LocalScript");
LocalScript_20.Parent = TextButton_5;
LocalScript_20.Name = "文字设定";
local TextButton_6 = Instance.new("TextButton");
TextButton_6.Parent = Frame;
TextButton_6.BorderSizePixel = 0;
TextButton_6.TextSize = 14;
local Color3_Value_73 = Color3_FromRGB(255, 255, 255);
TextButton_6.TextColor3 = Color3_Value_73;
local Color3_Value_74 = Color3_FromRGB(255, 255, 255);
TextButton_6.BackgroundColor3 = Color3_Value_74;
local New_9 = Font.new;
local Regular_6 = Enum_FontWeight.Regular;
local Normal_9 = Enum_FontStyle.Normal;
local _call32 = New_9("rbxasset://fonts/families/SourceSansPro.json", Regular_6, Normal_9);
TextButton_6.FontFace = _call32;
TextButton_6.BackgroundTransparency = 1;
local UDim2_Value_35 = UDim2_New(0, 99, 0, 39);
TextButton_6.Size = UDim2_Value_35;
local Color3_Value_75 = Color3_FromRGB(0, 0, 0);
TextButton_6.BorderColor3 = Color3_Value_75;
TextButton_6.Text = " 💪 代刷代练";
TextButton_6.Name = "代刷代练";
local UDim2_Value_36 = UDim2_New(0.0015, 0, 0.5664, 0);
TextButton_6.Position = UDim2_Value_36;
local LocalScript_21 = Instance.new("LocalScript");
LocalScript_21.Parent = TextButton_6;
LocalScript_21.Name = "隐藏其他显示区";
local LocalScript_22 = Instance.new("LocalScript");
LocalScript_22.Parent = TextButton_6;
LocalScript_22.Name = "文字设定";
local Frame_7 = Instance.new("Frame");
Frame_7.Parent = Frame;
Frame_7.BorderSizePixel = 0;
local Color3_Value_76 = Color3_FromRGB(255, 255, 255);
Frame_7.BackgroundColor3 = Color3_Value_76;
local UDim2_Value_37 = UDim2_New(0.14865, 0, 0, 1);
Frame_7.Size = UDim2_Value_37;
local UDim2_Value_38 = UDim2_New(0, 0, 0.5664, 0);
Frame_7.Position = UDim2_Value_38;
local Color3_Value_77 = Color3_FromRGB(255, 255, 255);
Frame_7.BorderColor3 = Color3_Value_77;
Frame_7.Name = "横分割线";
Frame_7.BackgroundTransparency = 0.3;
local LocalScript_23 = Instance.new("LocalScript");
LocalScript_23.Parent = Frame_7;
LocalScript_23.Name = "流动渐变";
local UIGradient_6 = Instance.new("UIGradient");
UIGradient_6.Parent = Frame_7;
local Color3_Value_78 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_31 = ColorSequenceKeypoint_New(0, Color3_Value_78);
local Color3_Value_79 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_32 = ColorSequenceKeypoint_New(0, Color3_Value_79);
local Color3_Value_80 = Color3_FromRGB(204, 101, 255);
local ColorSequenceKeypoint_Value_33 = ColorSequenceKeypoint_New(0.25, Color3_Value_80);
local Color3_Value_81 = Color3_FromRGB(171, 0, 255);
local ColorSequenceKeypoint_Value_34 = ColorSequenceKeypoint_New(0.5, Color3_Value_81);
local Color3_Value_82 = Color3_FromRGB(204, 101, 255);
local ColorSequenceKeypoint_Value_35 = ColorSequenceKeypoint_New(0.75, Color3_Value_82);
local Color3_Value_83 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_36 = ColorSequenceKeypoint_New(1, Color3_Value_83);
local ColorSequence_Value_6 = ColorSequence_New({
    ColorSequenceKeypoint_Value_31,
    ColorSequenceKeypoint_Value_32,
    ColorSequenceKeypoint_Value_33,
    ColorSequenceKeypoint_Value_34,
    ColorSequenceKeypoint_Value_35,
    ColorSequenceKeypoint_Value_36,
});
UIGradient_6.Color = ColorSequence_Value_6;
local Frame_8 = Instance.new("Frame");
Frame_8.Parent = Frame;
Frame_8.BorderSizePixel = 0;
local Color3_Value_84 = Color3_FromRGB(255, 255, 255);
Frame_8.BackgroundColor3 = Color3_Value_84;
local UDim2_Value_39 = UDim2_New(0.14865, 0, 0, 1);
Frame_8.Size = UDim2_Value_39;
local UDim2_Value_40 = UDim2_New(0.0015, 0, 0.67751, 0);
Frame_8.Position = UDim2_Value_40;
local Color3_Value_85 = Color3_FromRGB(255, 255, 255);
Frame_8.BorderColor3 = Color3_Value_85;
Frame_8.Name = "横分割线";
Frame_8.BackgroundTransparency = 0.3;
local LocalScript_24 = Instance.new("LocalScript");
LocalScript_24.Parent = Frame_8;
LocalScript_24.Name = "流动渐变";
local UIGradient_7 = Instance.new("UIGradient");
UIGradient_7.Parent = Frame_8;
local Color3_Value_86 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_37 = ColorSequenceKeypoint_New(0, Color3_Value_86);
local Color3_Value_87 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_38 = ColorSequenceKeypoint_New(0, Color3_Value_87);
local Color3_Value_88 = Color3_FromRGB(186, 255, 255);
local ColorSequenceKeypoint_Value_39 = ColorSequenceKeypoint_New(0.25, Color3_Value_88);
local Color3_Value_89 = Color3_FromRGB(86, 255, 255);
local ColorSequenceKeypoint_Value_40 = ColorSequenceKeypoint_New(0.5, Color3_Value_89);
local Color3_Value_90 = Color3_FromRGB(186, 255, 255);
local ColorSequenceKeypoint_Value_41 = ColorSequenceKeypoint_New(0.75, Color3_Value_90);
local Color3_Value_91 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_42 = ColorSequenceKeypoint_New(1, Color3_Value_91);
local ColorSequence_Value_7 = ColorSequence_New({
    ColorSequenceKeypoint_Value_37,
    ColorSequenceKeypoint_Value_38,
    ColorSequenceKeypoint_Value_39,
    ColorSequenceKeypoint_Value_40,
    ColorSequenceKeypoint_Value_41,
    ColorSequenceKeypoint_Value_42,
});
UIGradient_7.Color = ColorSequence_Value_7;
local Frame_9 = Instance.new("Frame");
Frame_9.Parent = Frame;
Frame_9.BorderSizePixel = 0;
local Color3_Value_92 = Color3_FromRGB(255, 255, 255);
Frame_9.BackgroundColor3 = Color3_Value_92;
local UDim2_Value_41 = UDim2_New(0.14865, 0, 0, 1);
Frame_9.Size = UDim2_Value_41;
local UDim2_Value_42 = UDim2_New(0.0015, 0, 0.7832, 0);
Frame_9.Position = UDim2_Value_42;
local Color3_Value_93 = Color3_FromRGB(255, 255, 255);
Frame_9.BorderColor3 = Color3_Value_93;
Frame_9.Name = "横分割线";
Frame_9.BackgroundTransparency = 0.3;
local LocalScript_25 = Instance.new("LocalScript");
LocalScript_25.Parent = Frame_9;
LocalScript_25.Name = "流动渐变";
local UIGradient_8 = Instance.new("UIGradient");
UIGradient_8.Parent = Frame_9;
local Color3_Value_94 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_43 = ColorSequenceKeypoint_New(0, Color3_Value_94);
local Color3_Value_95 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_44 = ColorSequenceKeypoint_New(0, Color3_Value_95);
local Color3_Value_96 = Color3_FromRGB(171, 121, 148);
local ColorSequenceKeypoint_Value_45 = ColorSequenceKeypoint_New(0.25, Color3_Value_96);
local Color3_Value_97 = Color3_FromRGB(171, 86, 128);
local ColorSequenceKeypoint_Value_46 = ColorSequenceKeypoint_New(0.5, Color3_Value_97);
local Color3_Value_98 = Color3_FromRGB(171, 121, 146);
local ColorSequenceKeypoint_Value_47 = ColorSequenceKeypoint_New(0.75, Color3_Value_98);
local Color3_Value_99 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_48 = ColorSequenceKeypoint_New(1, Color3_Value_99);
local ColorSequence_Value_8 = ColorSequence_New({
    ColorSequenceKeypoint_Value_43,
    ColorSequenceKeypoint_Value_44,
    ColorSequenceKeypoint_Value_45,
    ColorSequenceKeypoint_Value_46,
    ColorSequenceKeypoint_Value_47,
    ColorSequenceKeypoint_Value_48,
});
UIGradient_8.Color = ColorSequence_Value_8;
local TextButton_7 = Instance.new("TextButton");
TextButton_7.Parent = Frame;
TextButton_7.BorderSizePixel = 0;
TextButton_7.TextSize = 14;
local Color3_Value_100 = Color3_FromRGB(255, 255, 255);
TextButton_7.TextColor3 = Color3_Value_100;
local Color3_Value_101 = Color3_FromRGB(255, 255, 255);
TextButton_7.BackgroundColor3 = Color3_Value_101;
local New_10 = Font.new;
local Regular_7 = Enum_FontWeight.Regular;
local Normal_10 = Enum_FontStyle.Normal;
local _call35 = New_10("rbxasset://fonts/families/SourceSansPro.json", Regular_7, Normal_10);
TextButton_7.FontFace = _call35;
TextButton_7.BackgroundTransparency = 1;
local UDim2_Value_43 = UDim2_New(0, 99, 0, 39);
TextButton_7.Size = UDim2_Value_43;
local Color3_Value_102 = Color3_FromRGB(0, 0, 0);
TextButton_7.BorderColor3 = Color3_Value_102;
TextButton_7.Text = " 🔈 广告位";
TextButton_7.Name = "广告位";
local UDim2_Value_44 = UDim2_New(0, 0, 0.68022, 0);
TextButton_7.Position = UDim2_Value_44;
local LocalScript_26 = Instance.new("LocalScript");
LocalScript_26.Parent = TextButton_7;
LocalScript_26.Name = "隐藏其他显示区";
local LocalScript_27 = Instance.new("LocalScript");
LocalScript_27.Parent = TextButton_7;
LocalScript_27.Name = "文字设定";
local TextLabel_4 = Instance.new("TextLabel");
TextLabel_4.Parent = Frame;
TextLabel_4.BorderSizePixel = 0;
TextLabel_4.TextSize = 14;
local Color3_Value_103 = Color3_FromRGB(255, 255, 255);
TextLabel_4.BackgroundColor3 = Color3_Value_103;
local New_11 = Font.new;
local Regular_8 = Enum_FontWeight.Regular;
local Normal_11 = Enum_FontStyle.Normal;
local _call38 = New_11("rbxasset://fonts/families/SourceSansPro.json", Regular_8, Normal_11);
TextLabel_4.FontFace = _call38;
local Color3_Value_104 = Color3_FromRGB(0, 0, 0);
TextLabel_4.TextColor3 = Color3_Value_104;
TextLabel_4.BackgroundTransparency = 1;
local UDim2_Value_45 = UDim2_New(0, 299, 0, 35);
TextLabel_4.Size = UDim2_Value_45;
local Color3_Value_105 = Color3_FromRGB(0, 0, 0);
TextLabel_4.BorderColor3 = Color3_Value_105;
TextLabel_4.Text = "";
TextLabel_4.Name = "欢迎语";
local UDim2_Value_46 = UDim2_New(0.17868, 0, 0.90515, 0);
TextLabel_4.Position = UDim2_Value_46;
local LocalScript_28 = Instance.new("LocalScript");
LocalScript_28.Parent = TextLabel_4;
LocalScript_28.Name = "欢迎语+玩家Name";
local ImageLabel_4 = Instance.new("ImageLabel");
ImageLabel_4.Parent = Frame;
ImageLabel_4.BorderSizePixel = 0;
local Color3_Value_106 = Color3_FromRGB(255, 255, 255);
ImageLabel_4.BackgroundColor3 = Color3_Value_106;
ImageLabel_4.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png";
local UDim2_Value_47 = UDim2_New(0, 63, 0, 63);
ImageLabel_4.Size = UDim2_Value_47;
local Color3_Value_107 = Color3_FromRGB(0, 0, 0);
ImageLabel_4.BorderColor3 = Color3_Value_107;
ImageLabel_4.BackgroundTransparency = 1;
ImageLabel_4.Name = "玩家头像";
local UDim2_Value_48 = UDim2_New(0.02703, 0, 0.80759, 0);
ImageLabel_4.Position = UDim2_Value_48;
local UICorner_4 = Instance.new("UICorner");
UICorner_4.Parent = ImageLabel_4;
local UDim_Value_3 = UDim_New(0, 16);
UICorner_4.CornerRadius = UDim_Value_3;
local LocalScript_29 = Instance.new("LocalScript");
LocalScript_29.Parent = ImageLabel_4;
LocalScript_29.Name = "显示玩家头像";
local ScrollingFrame = Instance.new("ScrollingFrame");
ScrollingFrame.Parent = Frame;
ScrollingFrame.Visible = false;
ScrollingFrame.BorderSizePixel = 0;
ScrollingFrame.Name = "公告及活动显示区";
local Color3_Value_108 = Color3_FromRGB(255, 255, 255);
ScrollingFrame.BackgroundColor3 = Color3_Value_108;
local Y_2 = Enum_AutomaticSize.Y;
ScrollingFrame.AutomaticCanvasSize = Y_2;
local UDim2_Value_49 = UDim2_New(0, 537, 0, 269);
ScrollingFrame.Size = UDim2_Value_49;
local Color3_Value_109 = Color3_FromRGB(0, 0, 0);
ScrollingFrame.ScrollBarImageColor3 = Color3_Value_109;
local UDim2_Value_50 = UDim2_New(0.16967, 0, 0.16531, 0);
ScrollingFrame.Position = UDim2_Value_50;
local Color3_Value_110 = Color3_FromRGB(0, 0, 0);
ScrollingFrame.BorderColor3 = Color3_Value_110;
ScrollingFrame.ScrollBarThickness = 6;
ScrollingFrame.BackgroundTransparency = 1;
local TextLabel_5 = Instance.new("TextLabel");
TextLabel_5.Parent = ScrollingFrame;
TextLabel_5.TextWrapped = true;
TextLabel_5.BorderSizePixel = 0;
TextLabel_5.TextSize = 16;
local Left_2 = Enum_TextXAlignment.Left;
TextLabel_5.TextXAlignment = Left_2;
local Enum_TextYAlignment = Enum.TextYAlignment;
local Top = Enum_TextYAlignment.Top;
TextLabel_5.TextYAlignment = Top;
local Color3_Value_111 = Color3_FromRGB(255, 255, 255);
TextLabel_5.BackgroundColor3 = Color3_Value_111;
local New_12 = Font.new;
local Bold_4 = Enum_FontWeight.Bold;
local Normal_12 = Enum_FontStyle.Normal;
local _call44 = New_12("rbxasset://fonts/families/FredokaOne.json", Bold_4, Normal_12);
TextLabel_5.FontFace = _call44;
local Color3_Value_112 = Color3_FromRGB(255, 255, 255);
TextLabel_5.TextColor3 = Color3_Value_112;
TextLabel_5.BackgroundTransparency = 1;
TextLabel_5.RichText = true;
local UDim2_Value_51 = UDim2_New(1, 0, 0, 0);
TextLabel_5.Size = UDim2_Value_51;
local Color3_Value_113 = Color3_FromRGB(0, 0, 0);
TextLabel_5.BorderColor3 = Color3_Value_113;
TextLabel_5.Text = "<font color='rgb(255,255,0)'>【公告】更新时间2026.1.4</font><br/><br/>1.正在紧锣密鼓的搭建脚本中心框架，添加脚本以及增设服务<br/><br/>2.日后新增脚本，临时变动，闲事扯皮等等都更新在这里<br/><br/><font color='rgb(255,255,0)'>【关于注入器和VPN】</font><br/><br/>1.目前注入器PC，安卓，ios三端皆可使用，需要其他注入器或者视频教学远程协助直接联系我<br/><br/>2.如果你是国内玩家，想去外网看看，那么你肯定需要一个翻墙VPN<br/><br/>3.VPN40元一个月，我已经稳定用了很多年，需要可以联系我<br/><br/><font color='rgb(255,255,0)'>【免责声明】</font><br/><br/>1.自己选择开脚本，就不要担心封号，虽然概率极低，但本人不做任何承诺<br/><br/>2.Roblox小号可以无限注册，请勿用充过值的大号测试脚本，被封禁不要跟我说<br/><br/>3.脚本和注入器一直会被官方针对，如果被修复可能需要更换新版脚本或新方式注入器<br/><br/>4.如果运气不佳，刚付款就遇到官方修复，当月内我会免费给你更新";
local Y_3 = Enum_AutomaticSize.Y;
TextLabel_5.AutomaticSize = Y_3;
TextLabel_5.Name = "公告及活动";
local UDim2_Value_52 = UDim2_New(0.02297, 0, 0.00014, 0);
TextLabel_5.Position = UDim2_Value_52;
local LocalScript_30 = Instance.new("LocalScript");
LocalScript_30.Parent = TextLabel_5;
LocalScript_30.Name = "文字设定";
local UIListLayout = Instance.new("UIListLayout");
UIListLayout.Parent = ScrollingFrame;
local Enum_SortOrder = Enum.SortOrder;
local LayoutOrder = Enum_SortOrder.LayoutOrder;
UIListLayout.SortOrder = LayoutOrder;
local LocalScript_31 = Instance.new("LocalScript");
LocalScript_31.Parent = ScrollingFrame;
LocalScript_31.Name = "滚动设定";
local Frame_10 = Instance.new("Frame");
Frame_10.Parent = Frame;
Frame_10.BorderSizePixel = 0;
local Color3_Value_114 = Color3_FromRGB(255, 255, 255);
Frame_10.BackgroundColor3 = Color3_Value_114;
local UDim2_Value_53 = UDim2_New(0.84985, 0, 0, 1);
Frame_10.Size = UDim2_Value_53;
local UDim2_Value_54 = UDim2_New(0.15015, 0, 0.90244, 0);
Frame_10.Position = UDim2_Value_54;
local Color3_Value_115 = Color3_FromRGB(255, 255, 255);
Frame_10.BorderColor3 = Color3_Value_115;
Frame_10.Name = "横分割线";
Frame_10.BackgroundTransparency = 0.3;
local LocalScript_32 = Instance.new("LocalScript");
LocalScript_32.Parent = Frame_10;
LocalScript_32.Name = "流动渐变";
local UIGradient_9 = Instance.new("UIGradient");
UIGradient_9.Parent = Frame_10;
local Color3_Value_116 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_49 = ColorSequenceKeypoint_New(0, Color3_Value_116);
local Color3_Value_117 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_50 = ColorSequenceKeypoint_New(0, Color3_Value_117);
local Color3_Value_118 = Color3_FromRGB(255, 204, 101);
local ColorSequenceKeypoint_Value_51 = ColorSequenceKeypoint_New(0.25, Color3_Value_118);
local Color3_Value_119 = Color3_FromRGB(255, 171, 0);
local ColorSequenceKeypoint_Value_52 = ColorSequenceKeypoint_New(0.5, Color3_Value_119);
local Color3_Value_120 = Color3_FromRGB(255, 255, 56);
local ColorSequenceKeypoint_Value_53 = ColorSequenceKeypoint_New(0.75, Color3_Value_120);
local Color3_Value_121 = Color3_FromRGB(255, 255, 255);
local ColorSequenceKeypoint_Value_54 = ColorSequenceKeypoint_New(1, Color3_Value_121);
local ColorSequence_Value_9 = ColorSequence_New({
    ColorSequenceKeypoint_Value_49,
    ColorSequenceKeypoint_Value_50,
    ColorSequenceKeypoint_Value_51,
    ColorSequenceKeypoint_Value_52,
    ColorSequenceKeypoint_Value_53,
    ColorSequenceKeypoint_Value_54,
});
UIGradient_9.Color = ColorSequence_Value_9;
local ScrollingFrame_2 = Instance.new("ScrollingFrame");
ScrollingFrame_2.Parent = Frame;
ScrollingFrame_2.Visible = false;
ScrollingFrame_2.BorderSizePixel = 0;
ScrollingFrame_2.Name = "代练代刷显示区";
local Color3_Value_122 = Color3_FromRGB(255, 255, 255);
ScrollingFrame_2.BackgroundColor3 = Color3_Value_122;
local UDim2_Value_55 = UDim2_New(0, 537, 0, 269);
ScrollingFrame_2.Size = UDim2_Value_55;
local Color3_Value_123 = Color3_FromRGB(0, 0, 0);
ScrollingFrame_2.ScrollBarImageColor3 = Color3_Value_123;
local UDim2_Value_56 = UDim2_New(0.16967, 0, 0.16531, 0);
ScrollingFrame_2.Position = UDim2_Value_56;
local Color3_Value_124 = Color3_FromRGB(0, 0, 0);
ScrollingFrame_2.BorderColor3 = Color3_Value_124;
ScrollingFrame_2.ScrollBarThickness = 6;
ScrollingFrame_2.BackgroundTransparency = 1;
local TextLabel_6 = Instance.new("TextLabel");
TextLabel_6.Parent = ScrollingFrame_2;
TextLabel_6.TextWrapped = true;
TextLabel_6.BorderSizePixel = 0;
TextLabel_6.TextSize = 16;
local Left_3 = Enum_TextXAlignment.Left;
TextLabel_6.TextXAlignment = Left_3;
local Top_2 = Enum_TextYAlignment.Top;
TextLabel_6.TextYAlignment = Top_2;
local Color3_Value_125 = Color3_FromRGB(255, 255, 255);
TextLabel_6.BackgroundColor3 = Color3_Value_125;
local New_13 = Font.new;
local Bold_5 = Enum_FontWeight.Bold;
local Normal_13 = Enum_FontStyle.Normal;
local _call51 = New_13("rbxasset://fonts/families/FredokaOne.json", Bold_5, Normal_13);
TextLabel_6.FontFace = _call51;
local Color3_Value_126 = Color3_FromRGB(255, 255, 255);
TextLabel_6.TextColor3 = Color3_Value_126;
TextLabel_6.BackgroundTransparency = 1;
TextLabel_6.RichText = true;
local UDim2_Value_57 = UDim2_New(1, 0, 0, 0);
TextLabel_6.Size = UDim2_Value_57;
local Color3_Value_127 = Color3_FromRGB(0, 0, 0);
TextLabel_6.BorderColor3 = Color3_Value_127;
TextLabel_6.Text = "<font color='rgb(255,255,0)'>【Roblox游戏代练代刷价格表】最低30元起刷，另招代练数名，有意私聊</font><br/><br/>1.<font color='rgb(255,255,0)'>【BloxFruit】</font>：等级100级=5R，技能等级100级=5R，F币1000=2R，绿钞100W=9R<br/><br/>2.<font color='rgb(255,255,0)'>【KingLegacy国王遗产】</font>人物等级100级=6R<br/><br/>3.<font color='rgb(255,255,0)'>【死铁轨】</font>债券100张=3R（通过送火车，职业等方式交易）<br/><br/>4.<font color='rgb(255,255,0)'>【99夜在森林里】</font>挂机刷天数每100天=13R，帮打钻石兼刷天数每100天=19R<br/><br/>5.<font color='rgb(255,255,0)'>【伐木大亨2】</font>19把不同斧子=19R，多头斧和末日斧1把=2R<br/><br/>6.<font color='rgb(255,255,0)'>【战争大亨】</font>3元刷一转，6元刷2转，9元刷三转以此类推，资金1000万=9元<br/><br/>7.<font color='rgb(255,255,0)'>【造船寻宝】</font>金币1000=3R<br/><br/>8.<font color='rgb(255,255,0)'>【极速传奇】</font>刷数值和转生1小时=16R，比手动快10倍<br/><br/>9.<font color='rgb(255,255,0)'>【忍者传奇】</font>刷数值和转生1小时=13R，比手动快5倍";
local Y_4 = Enum_AutomaticSize.Y;
TextLabel_6.AutomaticSize = Y_4;
TextLabel_6.Name = "代刷代练";
local UDim2_Value_58 = UDim2_New(0.02297, 0, 0.00005, 0);
TextLabel_6.Position = UDim2_Value_58;
local LocalScript_33 = Instance.new("LocalScript");
LocalScript_33.Parent = TextLabel_6;
LocalScript_33.Name = "文字设定";
local UIListLayout_2 = Instance.new("UIListLayout");
UIListLayout_2.Parent = ScrollingFrame_2;
local LayoutOrder_2 = Enum_SortOrder.LayoutOrder;
UIListLayout_2.SortOrder = LayoutOrder_2;
local LocalScript_34 = Instance.new("LocalScript");
LocalScript_34.Parent = ScrollingFrame_2;
LocalScript_34.Name = "滚动设定";
local ScrollingFrame_3 = Instance.new("ScrollingFrame");
ScrollingFrame_3.Parent = Frame;
ScrollingFrame_3.Visible = false;
ScrollingFrame_3.BorderSizePixel = 0;
ScrollingFrame_3.Name = "广告位显示区";
local Color3_Value_128 = Color3_FromRGB(255, 255, 255);
ScrollingFrame_3.BackgroundColor3 = Color3_Value_128;
local UDim2_Value_59 = UDim2_New(0, 537, 0, 269);
ScrollingFrame_3.Size = UDim2_Value_59;
local Color3_Value_129 = Color3_FromRGB(0, 0, 0);
ScrollingFrame_3.ScrollBarImageColor3 = Color3_Value_129;
local UDim2_Value_60 = UDim2_New(0.16967, 0, 0.16531, 0);
ScrollingFrame_3.Position = UDim2_Value_60;
local Color3_Value_130 = Color3_FromRGB(0, 0, 0);
ScrollingFrame_3.BorderColor3 = Color3_Value_130;
ScrollingFrame_3.ScrollBarThickness = 6;
ScrollingFrame_3.BackgroundTransparency = 1;
local LocalScript_35 = Instance.new("LocalScript");
LocalScript_35.Parent = ScrollingFrame_3;
LocalScript_35.Name = "滚动设定";
local TextLabel_7 = Instance.new("TextLabel");
TextLabel_7.Parent = ScrollingFrame_3;
TextLabel_7.TextWrapped = true;
TextLabel_7.BorderSizePixel = 0;
TextLabel_7.TextSize = 16;
local Left_4 = Enum_TextXAlignment.Left;
TextLabel_7.TextXAlignment = Left_4;
local Top_3 = Enum_TextYAlignment.Top;
TextLabel_7.TextYAlignment = Top_3;
local Color3_Value_131 = Color3_FromRGB(255, 255, 255);
TextLabel_7.BackgroundColor3 = Color3_Value_131;
local New_14 = Font.new;
local Bold_6 = Enum_FontWeight.Bold;
local Normal_14 = Enum_FontStyle.Normal;
local _call58 = New_14("rbxasset://fonts/families/FredokaOne.json", Bold_6, Normal_14);
TextLabel_7.FontFace = _call58;
local Color3_Value_132 = Color3_FromRGB(255, 255, 255);
TextLabel_7.TextColor3 = Color3_Value_132;
TextLabel_7.BackgroundTransparency = 1;
TextLabel_7.RichText = true;
local UDim2_Value_61 = UDim2_New(1, 0, 0, 0);
TextLabel_7.Size = UDim2_Value_61;
local Color3_Value_133 = Color3_FromRGB(0, 0, 0);
TextLabel_7.BorderColor3 = Color3_Value_133;
TextLabel_7.Text = "<font color='rgb(255,255,0)'>【广告位租赁须知】</font><br/><br/>1.广告位价格为30R一个月<br/><br/>2.接受代练，代充，游戏道具，成品号或和Roblox无关的一切广告<br/><br/>3.任何运行脚本中心的玩家都可以看到你的广告<br/><br/>4.广告位格式：Logo+你的昵称+广告内容+联系方式<br/><br/>5.本人不提供担保服务，任何交易都由双方私下协商。";
local Y_5 = Enum_AutomaticSize.Y;
TextLabel_7.AutomaticSize = Y_5;
TextLabel_7.Name = "广告位";
local UDim2_Value_62 = UDim2_New(0, 0, -0.00136, 0);
TextLabel_7.Position = UDim2_Value_62;
local LocalScript_36 = Instance.new("LocalScript");
LocalScript_36.Parent = TextLabel_7;
LocalScript_36.Name = "文字设定";
local UIListLayout_3 = Instance.new("UIListLayout");
UIListLayout_3.Parent = ScrollingFrame_3;
local UDim_Value_4 = UDim_New(0, 16);
UIListLayout_3.Padding = UDim_Value_4;
local LayoutOrder_3 = Enum_SortOrder.LayoutOrder;
UIListLayout_3.SortOrder = LayoutOrder_3;
local ImageButton = Instance.new("ImageButton");
ImageButton.Parent = ScrollingFrame_3;
ImageButton.BorderSizePixel = 0;
local Color3_Value_134 = Color3_FromRGB(255, 255, 255);
ImageButton.BackgroundColor3 = Color3_Value_134;
ImageButton.Image = "rbxassetid://138288475364166";
local UDim2_Value_63 = UDim2_New(0, 64, 0, 64);
ImageButton.Size = UDim2_Value_63;
local Color3_Value_135 = Color3_FromRGB(0, 0, 0);
ImageButton.BorderColor3 = Color3_Value_135;
ImageButton.Name = "广告1";
local UDim2_Value_64 = UDim2_New(0, 0, 0.26016, 0);
ImageButton.Position = UDim2_Value_64;
local TextLabel_8 = Instance.new("TextLabel");
TextLabel_8.Parent = ImageButton;
TextLabel_8.TextWrapped = true;
TextLabel_8.BorderSizePixel = 0;
TextLabel_8.TextSize = 16;
local Color3_Value_136 = Color3_FromRGB(255, 255, 255);
TextLabel_8.BackgroundColor3 = Color3_Value_136;
local New_15 = Font.new;
local Bold_7 = Enum_FontWeight.Bold;
local Normal_15 = Enum_FontStyle.Normal;
local _call63 = New_15("rbxasset://fonts/families/FredokaOne.json", Bold_7, Normal_15);
TextLabel_8.FontFace = _call63;
local Color3_Value_137 = Color3_FromRGB(255, 255, 255);
TextLabel_8.TextColor3 = Color3_Value_137;
TextLabel_8.BackgroundTransparency = 1;
TextLabel_8.RichText = true;
local UDim2_Value_65 = UDim2_New(0, 450, 0, 64);
TextLabel_8.Size = UDim2_Value_65;
local Color3_Value_138 = Color3_FromRGB(255, 255, 255);
TextLabel_8.BorderColor3 = Color3_Value_138;
TextLabel_8.Text = "<font color='rgb(255,255,0)'>Roblox黑科技</font><br/>脚本，注入器，VPN有需要请添加我的联系方式<br/>QQ微信同号：39075184";
local Y_6 = Enum_AutomaticSize.Y;
TextLabel_8.AutomaticSize = Y_6;
TextLabel_8.Name = "广告1";
local UDim2_Value_66 = UDim2_New(1, 0, 0, 0);
TextLabel_8.Position = UDim2_Value_66;
local LocalScript_37 = Instance.new("LocalScript");
LocalScript_37.Parent = TextLabel_8;
LocalScript_37.Name = "文字设定";
local UICorner_5 = Instance.new("UICorner");
UICorner_5.Parent = ImageButton;
local UDim_Value_5 = UDim_New(0, 16);
UICorner_5.CornerRadius = UDim_Value_5;
local ImageButton_2 = Instance.new("ImageButton");
ImageButton_2.Parent = ScrollingFrame_3;
ImageButton_2.BorderSizePixel = 0;
local Color3_Value_139 = Color3_FromRGB(255, 255, 255);
ImageButton_2.BackgroundColor3 = Color3_Value_139;
ImageButton_2.Image = "rbxassetid://1545406485";
local UDim2_Value_67 = UDim2_New(0, 64, 0, 64);
ImageButton_2.Size = UDim2_Value_67;
local Color3_Value_140 = Color3_FromRGB(0, 0, 0);
ImageButton_2.BorderColor3 = Color3_Value_140;
ImageButton_2.Name = "广告2";
local UDim2_Value_68 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_2.Position = UDim2_Value_68;
local TextLabel_9 = Instance.new("TextLabel");
TextLabel_9.Parent = ImageButton_2;
TextLabel_9.TextWrapped = true;
TextLabel_9.BorderSizePixel = 0;
TextLabel_9.TextSize = 16;
local Color3_Value_141 = Color3_FromRGB(255, 255, 255);
TextLabel_9.BackgroundColor3 = Color3_Value_141;
local New_16 = Font.new;
local Bold_8 = Enum_FontWeight.Bold;
local Normal_16 = Enum_FontStyle.Normal;
local _call67 = New_16("rbxasset://fonts/families/FredokaOne.json", Bold_8, Normal_16);
TextLabel_9.FontFace = _call67;
local Color3_Value_142 = Color3_FromRGB(255, 255, 255);
TextLabel_9.TextColor3 = Color3_Value_142;
TextLabel_9.BackgroundTransparency = 1;
TextLabel_9.RichText = true;
local UDim2_Value_69 = UDim2_New(0, 450, 0, 64);
TextLabel_9.Size = UDim2_Value_69;
local Color3_Value_143 = Color3_FromRGB(255, 255, 255);
TextLabel_9.BorderColor3 = Color3_Value_143;
TextLabel_9.Text = "<font color='rgb(255,255,0)'>7沐</font><br/>收弃坑号，重氪号，回收R币，见号估值<br/>QQ：3877498557";
local Y_7 = Enum_AutomaticSize.Y;
TextLabel_9.AutomaticSize = Y_7;
TextLabel_9.Name = "广告2";
local UDim2_Value_70 = UDim2_New(1, 0, 0, 0);
TextLabel_9.Position = UDim2_Value_70;
local LocalScript_38 = Instance.new("LocalScript");
LocalScript_38.Parent = TextLabel_9;
LocalScript_38.Name = "文字设定";
local UICorner_6 = Instance.new("UICorner");
UICorner_6.Parent = ImageButton_2;
local UDim_Value_6 = UDim_New(0, 16);
UICorner_6.CornerRadius = UDim_Value_6;
local ScrollingFrame_4 = Instance.new("ScrollingFrame");
ScrollingFrame_4.Parent = Frame;
ScrollingFrame_4.Visible = false;
ScrollingFrame_4.BorderSizePixel = 0;
ScrollingFrame_4.Name = "免费脚本显示区";
local Color3_Value_144 = Color3_FromRGB(255, 255, 255);
ScrollingFrame_4.BackgroundColor3 = Color3_Value_144;
local Y_8 = Enum_AutomaticSize.Y;
ScrollingFrame_4.AutomaticCanvasSize = Y_8;
local UDim2_Value_71 = UDim2_New(0, 537, 0, 269);
ScrollingFrame_4.Size = UDim2_Value_71;
local Color3_Value_145 = Color3_FromRGB(0, 0, 0);
ScrollingFrame_4.ScrollBarImageColor3 = Color3_Value_145;
local UDim2_Value_72 = UDim2_New(0.16967, 0, 0.16531, 0);
ScrollingFrame_4.Position = UDim2_Value_72;
local Color3_Value_146 = Color3_FromRGB(0, 0, 0);
ScrollingFrame_4.BorderColor3 = Color3_Value_146;
ScrollingFrame_4.ScrollBarThickness = 6;
ScrollingFrame_4.BackgroundTransparency = 1;
local TextLabel_10 = Instance.new("TextLabel");
TextLabel_10.Parent = ScrollingFrame_4;
TextLabel_10.TextWrapped = true;
TextLabel_10.BorderSizePixel = 0;
TextLabel_10.TextSize = 16;
local Color3_Value_147 = Color3_FromRGB(255, 255, 255);
TextLabel_10.BackgroundColor3 = Color3_Value_147;
local New_17 = Font.new;
local Bold_9 = Enum_FontWeight.Bold;
local Normal_17 = Enum_FontStyle.Normal;
local _call72 = New_17("rbxasset://fonts/families/FredokaOne.json", Bold_9, Normal_17);
TextLabel_10.FontFace = _call72;
local Color3_Value_148 = Color3_FromRGB(255, 255, 255);
TextLabel_10.TextColor3 = Color3_Value_148;
TextLabel_10.BackgroundTransparency = 1;
TextLabel_10.RichText = true;
local UDim2_Value_73 = UDim2_New(1, 0, 0, 0);
TextLabel_10.Size = UDim2_Value_73;
local Color3_Value_149 = Color3_FromRGB(0, 0, 0);
TextLabel_10.BorderColor3 = Color3_Value_149;
TextLabel_10.Text = "<font color='rgb(85,255,127)'>免费脚本的密钥为右下角我的QQ号，买断制脚本每个13R，包月制脚本每个30R/月<br/><br/>购买脚本,注入器教学，翻墙VPN请添加右下角联系方式，遇到BUG请及时反馈给我</font>";
local Y_9 = Enum_AutomaticSize.Y;
TextLabel_10.AutomaticSize = Y_9;
TextLabel_10.Name = "免费脚本";
local UDim2_Value_74 = UDim2_New(0.02297, 0, 0.00014, 0);
TextLabel_10.Position = UDim2_Value_74;
local LocalScript_39 = Instance.new("LocalScript");
LocalScript_39.Parent = TextLabel_10;
LocalScript_39.Name = "文字设定";
local UIListLayout_4 = Instance.new("UIListLayout");
UIListLayout_4.Parent = ScrollingFrame_4;
local UDim_Value_7 = UDim_New(0, 16);
UIListLayout_4.Padding = UDim_Value_7;
local LayoutOrder_4 = Enum_SortOrder.LayoutOrder;
UIListLayout_4.SortOrder = LayoutOrder_4;
local LocalScript_40 = Instance.new("LocalScript");
LocalScript_40.Parent = ScrollingFrame_4;
LocalScript_40.Name = "滚动设定";
local ImageButton_3 = Instance.new("ImageButton");
ImageButton_3.Parent = ScrollingFrame_4;
ImageButton_3.BorderSizePixel = 0;
local Color3_Value_150 = Color3_FromRGB(255, 255, 255);
ImageButton_3.BackgroundColor3 = Color3_Value_150;
ImageButton_3.Image = "rbxassetid://6159266";
local UDim2_Value_75 = UDim2_New(0, 64, 0, 64);
ImageButton_3.Size = UDim2_Value_75;
local Color3_Value_151 = Color3_FromRGB(0, 0, 0);
ImageButton_3.BorderColor3 = Color3_Value_151;
ImageButton_3.Name = "飞行";
local UDim2_Value_76 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_3.Position = UDim2_Value_76;
local TextLabel_11 = Instance.new("TextLabel");
TextLabel_11.Parent = ImageButton_3;
TextLabel_11.TextWrapped = true;
TextLabel_11.BorderSizePixel = 0;
TextLabel_11.TextSize = 16;
local Left_5 = Enum_TextXAlignment.Left;
TextLabel_11.TextXAlignment = Left_5;
local Color3_Value_152 = Color3_FromRGB(255, 255, 255);
TextLabel_11.BackgroundColor3 = Color3_Value_152;
local New_18 = Font.new;
local Bold_10 = Enum_FontWeight.Bold;
local Normal_18 = Enum_FontStyle.Normal;
local _call78 = New_18("rbxasset://fonts/families/FredokaOne.json", Bold_10, Normal_18);
TextLabel_11.FontFace = _call78;
local Color3_Value_153 = Color3_FromRGB(255, 255, 255);
TextLabel_11.TextColor3 = Color3_Value_153;
TextLabel_11.BackgroundTransparency = 1;
TextLabel_11.RichText = true;
local UDim2_Value_77 = UDim2_New(0, 433, 0, 64);
TextLabel_11.Size = UDim2_Value_77;
local Color3_Value_154 = Color3_FromRGB(255, 255, 255);
TextLabel_11.BorderColor3 = Color3_Value_154;
TextLabel_11.Text = "<font color='rgb(255,255,0)'>通用飞行</font><br/>全游戏飞行，加速，部分游戏可穿墙";
local Y_10 = Enum_AutomaticSize.Y;
TextLabel_11.AutomaticSize = Y_10;
TextLabel_11.Name = "脚本介绍";
local UDim2_Value_78 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_11.Position = UDim2_Value_78;
local LocalScript_41 = Instance.new("LocalScript");
LocalScript_41.Parent = TextLabel_11;
LocalScript_41.Name = "文字设定";
local UICorner_7 = Instance.new("UICorner");
UICorner_7.Parent = ImageButton_3;
local UDim_Value_8 = UDim_New(0, 16);
UICorner_7.CornerRadius = UDim_Value_8;
local LocalScript_42 = Instance.new("LocalScript");
LocalScript_42.Parent = ImageButton_3;
LocalScript_42.Name = "密钥验证";
local ImageButton_4 = Instance.new("ImageButton");
ImageButton_4.Parent = ScrollingFrame_4;
ImageButton_4.BorderSizePixel = 0;
local Color3_Value_155 = Color3_FromRGB(255, 255, 255);
ImageButton_4.BackgroundColor3 = Color3_Value_155;
ImageButton_4.Image = "rbxassetid://5002002011";
local UDim2_Value_79 = UDim2_New(0, 64, 0, 64);
ImageButton_4.Size = UDim2_Value_79;
local Color3_Value_156 = Color3_FromRGB(0, 0, 0);
ImageButton_4.BorderColor3 = Color3_Value_156;
ImageButton_4.Name = "飞车";
local UDim2_Value_80 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_4.Position = UDim2_Value_80;
local TextLabel_12 = Instance.new("TextLabel");
TextLabel_12.Parent = ImageButton_4;
TextLabel_12.TextWrapped = true;
TextLabel_12.BorderSizePixel = 0;
TextLabel_12.TextSize = 16;
local Left_6 = Enum_TextXAlignment.Left;
TextLabel_12.TextXAlignment = Left_6;
local Color3_Value_157 = Color3_FromRGB(255, 255, 255);
TextLabel_12.BackgroundColor3 = Color3_Value_157;
local New_19 = Font.new;
local Bold_11 = Enum_FontWeight.Bold;
local Normal_19 = Enum_FontStyle.Normal;
local _call83 = New_19("rbxasset://fonts/families/FredokaOne.json", Bold_11, Normal_19);
TextLabel_12.FontFace = _call83;
local Color3_Value_158 = Color3_FromRGB(255, 255, 255);
TextLabel_12.TextColor3 = Color3_Value_158;
TextLabel_12.BackgroundTransparency = 1;
TextLabel_12.RichText = true;
local UDim2_Value_81 = UDim2_New(0, 433, 0, 64);
TextLabel_12.Size = UDim2_Value_81;
local Color3_Value_159 = Color3_FromRGB(255, 255, 255);
TextLabel_12.BorderColor3 = Color3_Value_159;
TextLabel_12.Text = "<font color='rgb(255,255,0)'>通用载具飞行</font><br/>全游戏载具飞行，加速";
local Y_11 = Enum_AutomaticSize.Y;
TextLabel_12.AutomaticSize = Y_11;
TextLabel_12.Name = "脚本介绍";
local UDim2_Value_82 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_12.Position = UDim2_Value_82;
local LocalScript_43 = Instance.new("LocalScript");
LocalScript_43.Parent = TextLabel_12;
LocalScript_43.Name = "文字设定";
local UICorner_8 = Instance.new("UICorner");
UICorner_8.Parent = ImageButton_4;
local UDim_Value_9 = UDim_New(0, 16);
UICorner_8.CornerRadius = UDim_Value_9;
local LocalScript_44 = Instance.new("LocalScript");
LocalScript_44.Parent = ImageButton_4;
LocalScript_44.Name = "密钥验证";
local ImageButton_5 = Instance.new("ImageButton");
ImageButton_5.Parent = ScrollingFrame_4;
ImageButton_5.BorderSizePixel = 0;
local Color3_Value_160 = Color3_FromRGB(255, 255, 255);
ImageButton_5.BackgroundColor3 = Color3_Value_160;
ImageButton_5.Image = "rbxassetid://17188809619";
local UDim2_Value_83 = UDim2_New(0, 64, 0, 64);
ImageButton_5.Size = UDim2_Value_83;
local Color3_Value_161 = Color3_FromRGB(0, 0, 0);
ImageButton_5.BorderColor3 = Color3_Value_161;
ImageButton_5.Name = "透视";
local UDim2_Value_84 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_5.Position = UDim2_Value_84;
local TextLabel_13 = Instance.new("TextLabel");
TextLabel_13.Parent = ImageButton_5;
TextLabel_13.TextWrapped = true;
TextLabel_13.BorderSizePixel = 0;
TextLabel_13.TextSize = 16;
local Left_7 = Enum_TextXAlignment.Left;
TextLabel_13.TextXAlignment = Left_7;
local Color3_Value_162 = Color3_FromRGB(255, 255, 255);
TextLabel_13.BackgroundColor3 = Color3_Value_162;
local New_20 = Font.new;
local Bold_12 = Enum_FontWeight.Bold;
local Normal_20 = Enum_FontStyle.Normal;
local _call88 = New_20("rbxasset://fonts/families/FredokaOne.json", Bold_12, Normal_20);
TextLabel_13.FontFace = _call88;
local Color3_Value_163 = Color3_FromRGB(255, 255, 255);
TextLabel_13.TextColor3 = Color3_Value_163;
TextLabel_13.BackgroundTransparency = 1;
TextLabel_13.RichText = true;
local UDim2_Value_85 = UDim2_New(0, 433, 0, 64);
TextLabel_13.Size = UDim2_Value_85;
local Color3_Value_164 = Color3_FromRGB(255, 255, 255);
TextLabel_13.BorderColor3 = Color3_Value_164;
TextLabel_13.Text = "<font color='rgb(255,255,0)'>通用透视</font><br/>全游戏透视所有玩家，名称，体积，血量，距离";
local Y_12 = Enum_AutomaticSize.Y;
TextLabel_13.AutomaticSize = Y_12;
TextLabel_13.Name = "脚本介绍";
local UDim2_Value_86 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_13.Position = UDim2_Value_86;
local LocalScript_45 = Instance.new("LocalScript");
LocalScript_45.Parent = TextLabel_13;
LocalScript_45.Name = "文字设定";
local UICorner_9 = Instance.new("UICorner");
UICorner_9.Parent = ImageButton_5;
local UDim_Value_10 = UDim_New(0, 16);
UICorner_9.CornerRadius = UDim_Value_10;
local LocalScript_46 = Instance.new("LocalScript");
LocalScript_46.Parent = ImageButton_5;
LocalScript_46.Name = "密钥验证";
local ImageButton_6 = Instance.new("ImageButton");
ImageButton_6.Parent = ScrollingFrame_4;
ImageButton_6.BorderSizePixel = 0;
local Color3_Value_165 = Color3_FromRGB(255, 255, 255);
ImageButton_6.BackgroundColor3 = Color3_Value_165;
ImageButton_6.Image = "rbxassetid://91831737962427";
local UDim2_Value_87 = UDim2_New(0, 64, 0, 64);
ImageButton_6.Size = UDim2_Value_87;
local Color3_Value_166 = Color3_FromRGB(0, 0, 0);
ImageButton_6.BorderColor3 = Color3_Value_166;
ImageButton_6.Name = "坐标传送";
local UDim2_Value_88 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_6.Position = UDim2_Value_88;
local TextLabel_14 = Instance.new("TextLabel");
TextLabel_14.Parent = ImageButton_6;
TextLabel_14.TextWrapped = true;
TextLabel_14.BorderSizePixel = 0;
TextLabel_14.TextSize = 16;
local Left_8 = Enum_TextXAlignment.Left;
TextLabel_14.TextXAlignment = Left_8;
local Color3_Value_167 = Color3_FromRGB(255, 255, 255);
TextLabel_14.BackgroundColor3 = Color3_Value_167;
local New_21 = Font.new;
local Bold_13 = Enum_FontWeight.Bold;
local Normal_21 = Enum_FontStyle.Normal;
local _call93 = New_21("rbxasset://fonts/families/FredokaOne.json", Bold_13, Normal_21);
TextLabel_14.FontFace = _call93;
local Color3_Value_168 = Color3_FromRGB(255, 255, 255);
TextLabel_14.TextColor3 = Color3_Value_168;
TextLabel_14.BackgroundTransparency = 1;
TextLabel_14.RichText = true;
local UDim2_Value_89 = UDim2_New(0, 433, 0, 64);
TextLabel_14.Size = UDim2_Value_89;
local Color3_Value_169 = Color3_FromRGB(255, 255, 255);
TextLabel_14.BorderColor3 = Color3_Value_169;
TextLabel_14.Text = "<font color='rgb(255,255,0)'>通用瞬移</font><br/>全游戏传送，记录要传送的坐标，点击瞬间到达";
local Y_13 = Enum_AutomaticSize.Y;
TextLabel_14.AutomaticSize = Y_13;
TextLabel_14.Name = "脚本介绍";
local UDim2_Value_90 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_14.Position = UDim2_Value_90;
local LocalScript_47 = Instance.new("LocalScript");
LocalScript_47.Parent = TextLabel_14;
LocalScript_47.Name = "文字设定";
local UICorner_10 = Instance.new("UICorner");
UICorner_10.Parent = ImageButton_6;
local UDim_Value_11 = UDim_New(0, 16);
UICorner_10.CornerRadius = UDim_Value_11;
local LocalScript_48 = Instance.new("LocalScript");
LocalScript_48.Parent = ImageButton_6;
LocalScript_48.Name = "密钥验证";
local ImageButton_7 = Instance.new("ImageButton");
ImageButton_7.Parent = ScrollingFrame_4;
ImageButton_7.BorderSizePixel = 0;
local Color3_Value_170 = Color3_FromRGB(255, 255, 255);
ImageButton_7.BackgroundColor3 = Color3_Value_170;
ImageButton_7.Image = "rbxassetid://90273055";
local UDim2_Value_91 = UDim2_New(0, 64, 0, 64);
ImageButton_7.Size = UDim2_Value_91;
local Color3_Value_171 = Color3_FromRGB(0, 0, 0);
ImageButton_7.BorderColor3 = Color3_Value_171;
ImageButton_7.Name = "隐身";
local UDim2_Value_92 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_7.Position = UDim2_Value_92;
local TextLabel_15 = Instance.new("TextLabel");
TextLabel_15.Parent = ImageButton_7;
TextLabel_15.TextWrapped = true;
TextLabel_15.BorderSizePixel = 0;
TextLabel_15.TextSize = 16;
local Left_9 = Enum_TextXAlignment.Left;
TextLabel_15.TextXAlignment = Left_9;
local Color3_Value_172 = Color3_FromRGB(255, 255, 255);
TextLabel_15.BackgroundColor3 = Color3_Value_172;
local New_22 = Font.new;
local Bold_14 = Enum_FontWeight.Bold;
local Normal_22 = Enum_FontStyle.Normal;
local _call98 = New_22("rbxasset://fonts/families/FredokaOne.json", Bold_14, Normal_22);
TextLabel_15.FontFace = _call98;
local Color3_Value_173 = Color3_FromRGB(255, 255, 255);
TextLabel_15.TextColor3 = Color3_Value_173;
TextLabel_15.BackgroundTransparency = 1;
TextLabel_15.RichText = true;
local UDim2_Value_93 = UDim2_New(0, 433, 0, 64);
TextLabel_15.Size = UDim2_Value_93;
local Color3_Value_174 = Color3_FromRGB(255, 255, 255);
TextLabel_15.BorderColor3 = Color3_Value_174;
TextLabel_15.Text = "<font color='rgb(255,255,0)'>通用隐身</font><br/>全游戏隐身，但隐身时不可互动，需要互动时先关闭此功能";
local Y_14 = Enum_AutomaticSize.Y;
TextLabel_15.AutomaticSize = Y_14;
TextLabel_15.Name = "脚本介绍";
local UDim2_Value_94 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_15.Position = UDim2_Value_94;
local LocalScript_49 = Instance.new("LocalScript");
LocalScript_49.Parent = TextLabel_15;
LocalScript_49.Name = "文字设定";
local UICorner_11 = Instance.new("UICorner");
UICorner_11.Parent = ImageButton_7;
local UDim_Value_12 = UDim_New(0, 16);
UICorner_11.CornerRadius = UDim_Value_12;
local LocalScript_50 = Instance.new("LocalScript");
LocalScript_50.Parent = ImageButton_7;
LocalScript_50.Name = "密钥验证";
local ScrollingFrame_5 = Instance.new("ScrollingFrame");
ScrollingFrame_5.Parent = Frame;
ScrollingFrame_5.Visible = false;
ScrollingFrame_5.BorderSizePixel = 0;
ScrollingFrame_5.Name = "包月制脚本显示区";
local Color3_Value_175 = Color3_FromRGB(255, 255, 255);
ScrollingFrame_5.BackgroundColor3 = Color3_Value_175;
local Y_15 = Enum_AutomaticSize.Y;
ScrollingFrame_5.AutomaticCanvasSize = Y_15;
local UDim2_Value_95 = UDim2_New(0, 537, 0, 269);
ScrollingFrame_5.Size = UDim2_Value_95;
local Color3_Value_176 = Color3_FromRGB(0, 0, 0);
ScrollingFrame_5.ScrollBarImageColor3 = Color3_Value_176;
local UDim2_Value_96 = UDim2_New(0.16967, 0, 0.16531, 0);
ScrollingFrame_5.Position = UDim2_Value_96;
local Color3_Value_177 = Color3_FromRGB(0, 0, 0);
ScrollingFrame_5.BorderColor3 = Color3_Value_177;
ScrollingFrame_5.ScrollBarThickness = 6;
ScrollingFrame_5.BackgroundTransparency = 1;
local TextLabel_16 = Instance.new("TextLabel");
TextLabel_16.Parent = ScrollingFrame_5;
TextLabel_16.TextWrapped = true;
TextLabel_16.BorderSizePixel = 0;
TextLabel_16.TextSize = 16;
local Color3_Value_178 = Color3_FromRGB(255, 255, 255);
TextLabel_16.BackgroundColor3 = Color3_Value_178;
local New_23 = Font.new;
local Bold_15 = Enum_FontWeight.Bold;
local Normal_23 = Enum_FontStyle.Normal;
local _call103 = New_23("rbxasset://fonts/families/FredokaOne.json", Bold_15, Normal_23);
TextLabel_16.FontFace = _call103;
local Color3_Value_179 = Color3_FromRGB(255, 255, 255);
TextLabel_16.TextColor3 = Color3_Value_179;
TextLabel_16.BackgroundTransparency = 1;
TextLabel_16.RichText = true;
local UDim2_Value_97 = UDim2_New(1, 0, 0, 0);
TextLabel_16.Size = UDim2_Value_97;
local Color3_Value_180 = Color3_FromRGB(0, 0, 0);
TextLabel_16.BorderColor3 = Color3_Value_180;
TextLabel_16.Text = "<font color='rgb(85,255,127)'>免费脚本任意使用，买断制脚本每个13R，包月制脚本每个30R/月<br/><br/>购买脚本,注入器教学，翻墙VPN请添加右下角联系方式，遇到BUG请及时反馈给我</font>";
local Y_16 = Enum_AutomaticSize.Y;
TextLabel_16.AutomaticSize = Y_16;
TextLabel_16.Name = "包月制脚本";
local UDim2_Value_98 = UDim2_New(0.02297, 0, 0.00014, 0);
TextLabel_16.Position = UDim2_Value_98;
local LocalScript_51 = Instance.new("LocalScript");
LocalScript_51.Parent = TextLabel_16;
LocalScript_51.Name = "文字设定";
local UIListLayout_5 = Instance.new("UIListLayout");
UIListLayout_5.Parent = ScrollingFrame_5;
local UDim_Value_13 = UDim_New(0, 16);
UIListLayout_5.Padding = UDim_Value_13;
local LayoutOrder_5 = Enum_SortOrder.LayoutOrder;
UIListLayout_5.SortOrder = LayoutOrder_5;
local LocalScript_52 = Instance.new("LocalScript");
LocalScript_52.Parent = ScrollingFrame_5;
LocalScript_52.Name = "滚动设定";
local ImageButton_8 = Instance.new("ImageButton");
ImageButton_8.Parent = ScrollingFrame_5;
ImageButton_8.BorderSizePixel = 0;
local Color3_Value_181 = Color3_FromRGB(255, 255, 255);
ImageButton_8.BackgroundColor3 = Color3_Value_181;
ImageButton_8.Image = "rbxassetid://834666972";
local UDim2_Value_99 = UDim2_New(0, 64, 0, 64);
ImageButton_8.Size = UDim2_Value_99;
local Color3_Value_182 = Color3_FromRGB(0, 0, 0);
ImageButton_8.BorderColor3 = Color3_Value_182;
ImageButton_8.Name = "伐木大亨2";
local UDim2_Value_100 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_8.Position = UDim2_Value_100;
local TextLabel_17 = Instance.new("TextLabel");
TextLabel_17.Parent = ImageButton_8;
TextLabel_17.TextWrapped = true;
TextLabel_17.BorderSizePixel = 0;
TextLabel_17.TextSize = 16;
local Left_10 = Enum_TextXAlignment.Left;
TextLabel_17.TextXAlignment = Left_10;
local Color3_Value_183 = Color3_FromRGB(255, 255, 255);
TextLabel_17.BackgroundColor3 = Color3_Value_183;
local New_24 = Font.new;
local Bold_16 = Enum_FontWeight.Bold;
local Normal_24 = Enum_FontStyle.Normal;
local _call109 = New_24("rbxasset://fonts/families/FredokaOne.json", Bold_16, Normal_24);
TextLabel_17.FontFace = _call109;
local Color3_Value_184 = Color3_FromRGB(255, 255, 255);
TextLabel_17.TextColor3 = Color3_Value_184;
TextLabel_17.BackgroundTransparency = 1;
TextLabel_17.RichText = true;
local UDim2_Value_101 = UDim2_New(0, 433, 0, 64);
TextLabel_17.Size = UDim2_Value_101;
local Color3_Value_185 = Color3_FromRGB(255, 255, 255);
TextLabel_17.BorderColor3 = Color3_Value_185;
TextLabel_17.Text = "<font color='rgb(255,255,0)'>伐木大亨2</font><br/>无限复制所有斧子，远程砍树并带回基地，无视树木体积直接加工为超级长的木板<br/>自动将木板或树木出售，免费把基地扩建到最大，飞行加速，改变天气等等";
local Y_17 = Enum_AutomaticSize.Y;
TextLabel_17.AutomaticSize = Y_17;
TextLabel_17.Name = "脚本介绍";
local UDim2_Value_102 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_17.Position = UDim2_Value_102;
local LocalScript_53 = Instance.new("LocalScript");
LocalScript_53.Parent = TextLabel_17;
LocalScript_53.Name = "文字设定";
local UICorner_12 = Instance.new("UICorner");
UICorner_12.Parent = ImageButton_8;
local UDim_Value_14 = UDim_New(0, 16);
UICorner_12.CornerRadius = UDim_Value_14;
local LocalScript_54 = Instance.new("LocalScript");
LocalScript_54.Parent = ImageButton_8;
LocalScript_54.Name = "密钥验证";
local ImageButton_9 = Instance.new("ImageButton");
ImageButton_9.Parent = ScrollingFrame_5;
ImageButton_9.BorderSizePixel = 0;
local Color3_Value_186 = Color3_FromRGB(255, 255, 255);
ImageButton_9.BackgroundColor3 = Color3_Value_186;
ImageButton_9.Image = "rbxassetid://96163608506723";
local UDim2_Value_103 = UDim2_New(0, 64, 0, 64);
ImageButton_9.Size = UDim2_Value_103;
local Color3_Value_187 = Color3_FromRGB(0, 0, 0);
ImageButton_9.BorderColor3 = Color3_Value_187;
ImageButton_9.Name = "锻造";
local UDim2_Value_104 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_9.Position = UDim2_Value_104;
local TextLabel_18 = Instance.new("TextLabel");
TextLabel_18.Parent = ImageButton_9;
TextLabel_18.TextWrapped = true;
TextLabel_18.BorderSizePixel = 0;
TextLabel_18.TextSize = 16;
local Left_11 = Enum_TextXAlignment.Left;
TextLabel_18.TextXAlignment = Left_11;
local Color3_Value_188 = Color3_FromRGB(255, 255, 255);
TextLabel_18.BackgroundColor3 = Color3_Value_188;
local New_25 = Font.new;
local Bold_17 = Enum_FontWeight.Bold;
local Normal_25 = Enum_FontStyle.Normal;
local _call114 = New_25("rbxasset://fonts/families/FredokaOne.json", Bold_17, Normal_25);
TextLabel_18.FontFace = _call114;
local Color3_Value_189 = Color3_FromRGB(255, 255, 255);
TextLabel_18.TextColor3 = Color3_Value_189;
TextLabel_18.BackgroundTransparency = 1;
TextLabel_18.RichText = true;
local UDim2_Value_105 = UDim2_New(0, 433, 0, 64);
TextLabel_18.Size = UDim2_Value_105;
local Color3_Value_190 = Color3_FromRGB(255, 255, 255);
TextLabel_18.BorderColor3 = Color3_Value_190;
TextLabel_18.Text = "<font color='rgb(255,255,0)'>锻造 TheForge</font><br/>自动采集，可选择矿区或特定矿石，自动锻造，所有小游戏自动操作，装备全部完美<br/>自动刷怪，可自由指定怪物，瞬间传送岛屿等";
local Y_18 = Enum_AutomaticSize.Y;
TextLabel_18.AutomaticSize = Y_18;
TextLabel_18.Name = "脚本介绍";
local UDim2_Value_106 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_18.Position = UDim2_Value_106;
local LocalScript_55 = Instance.new("LocalScript");
LocalScript_55.Parent = TextLabel_18;
LocalScript_55.Name = "文字设定";
local UICorner_13 = Instance.new("UICorner");
UICorner_13.Parent = ImageButton_9;
local UDim_Value_15 = UDim_New(0, 16);
UICorner_13.CornerRadius = UDim_Value_15;
local LocalScript_56 = Instance.new("LocalScript");
LocalScript_56.Parent = ImageButton_9;
LocalScript_56.Name = "密钥验证";
local ImageButton_10 = Instance.new("ImageButton");
ImageButton_10.Parent = ScrollingFrame_5;
ImageButton_10.BorderSizePixel = 0;
local Color3_Value_191 = Color3_FromRGB(255, 255, 255);
ImageButton_10.BackgroundColor3 = Color3_Value_191;
ImageButton_10.Image = "rbxassetid://122874126897828";
local UDim2_Value_107 = UDim2_New(0, 64, 0, 64);
ImageButton_10.Size = UDim2_Value_107;
local Color3_Value_192 = Color3_FromRGB(0, 0, 0);
ImageButton_10.BorderColor3 = Color3_Value_192;
ImageButton_10.Name = "死铁轨";
local UDim2_Value_108 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_10.Position = UDim2_Value_108;
local TextLabel_19 = Instance.new("TextLabel");
TextLabel_19.Parent = ImageButton_10;
TextLabel_19.TextWrapped = true;
TextLabel_19.BorderSizePixel = 0;
TextLabel_19.TextSize = 16;
local Left_12 = Enum_TextXAlignment.Left;
TextLabel_19.TextXAlignment = Left_12;
local Color3_Value_193 = Color3_FromRGB(255, 255, 255);
TextLabel_19.BackgroundColor3 = Color3_Value_193;
local New_26 = Font.new;
local Bold_18 = Enum_FontWeight.Bold;
local Normal_26 = Enum_FontStyle.Normal;
local _call119 = New_26("rbxasset://fonts/families/FredokaOne.json", Bold_18, Normal_26);
TextLabel_19.FontFace = _call119;
local Color3_Value_194 = Color3_FromRGB(255, 255, 255);
TextLabel_19.TextColor3 = Color3_Value_194;
TextLabel_19.BackgroundTransparency = 1;
TextLabel_19.RichText = true;
local UDim2_Value_109 = UDim2_New(0, 433, 0, 64);
TextLabel_19.Size = UDim2_Value_109;
local Color3_Value_195 = Color3_FromRGB(255, 255, 255);
TextLabel_19.BorderColor3 = Color3_Value_195;
TextLabel_19.Text = "<font color='rgb(255,255,0)'>死铁轨</font><br/>进图后开启脚本，自动刷债券，开启后不到2分钟一局，一局平均获得80债券";
local Y_19 = Enum_AutomaticSize.Y;
TextLabel_19.AutomaticSize = Y_19;
TextLabel_19.Name = "脚本介绍";
local UDim2_Value_110 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_19.Position = UDim2_Value_110;
local LocalScript_57 = Instance.new("LocalScript");
LocalScript_57.Parent = TextLabel_19;
LocalScript_57.Name = "文字设定";
local UICorner_14 = Instance.new("UICorner");
UICorner_14.Parent = ImageButton_10;
local UDim_Value_16 = UDim_New(0, 16);
UICorner_14.CornerRadius = UDim_Value_16;
local LocalScript_58 = Instance.new("LocalScript");
LocalScript_58.Parent = ImageButton_10;
LocalScript_58.Name = "密钥验证";
local ImageButton_11 = Instance.new("ImageButton");
ImageButton_11.Parent = ScrollingFrame_5;
ImageButton_11.BorderSizePixel = 0;
local Color3_Value_196 = Color3_FromRGB(255, 255, 255);
ImageButton_11.BackgroundColor3 = Color3_Value_196;
ImageButton_11.Image = "rbxassetid://17263231144";
local UDim2_Value_111 = UDim2_New(0, 64, 0, 64);
ImageButton_11.Size = UDim2_Value_111;
local Color3_Value_197 = Color3_FromRGB(0, 0, 0);
ImageButton_11.BorderColor3 = Color3_Value_197;
ImageButton_11.Name = "战争大亨";
local UDim2_Value_112 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_11.Position = UDim2_Value_112;
local TextLabel_20 = Instance.new("TextLabel");
TextLabel_20.Parent = ImageButton_11;
TextLabel_20.TextWrapped = true;
TextLabel_20.BorderSizePixel = 0;
TextLabel_20.TextSize = 16;
local Left_13 = Enum_TextXAlignment.Left;
TextLabel_20.TextXAlignment = Left_13;
local Color3_Value_198 = Color3_FromRGB(255, 255, 255);
TextLabel_20.BackgroundColor3 = Color3_Value_198;
local New_27 = Font.new;
local Bold_19 = Enum_FontWeight.Bold;
local Normal_27 = Enum_FontStyle.Normal;
local _call124 = New_27("rbxasset://fonts/families/FredokaOne.json", Bold_19, Normal_27);
TextLabel_20.FontFace = _call124;
local Color3_Value_199 = Color3_FromRGB(255, 255, 255);
TextLabel_20.TextColor3 = Color3_Value_199;
TextLabel_20.BackgroundTransparency = 1;
TextLabel_20.RichText = true;
local UDim2_Value_113 = UDim2_New(0, 433, 0, 64);
TextLabel_20.Size = UDim2_Value_113;
local Color3_Value_200 = Color3_FromRGB(255, 255, 255);
TextLabel_20.BorderColor3 = Color3_Value_200;
TextLabel_20.Text = "<font color='rgb(255,255,0)'>战争大亨</font><br/>自动偷其他玩家零件，运气好分分钟上千万资金，透视自瞄，飞天加速，自动重生";
local Y_20 = Enum_AutomaticSize.Y;
TextLabel_20.AutomaticSize = Y_20;
TextLabel_20.Name = "脚本介绍";
local UDim2_Value_114 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_20.Position = UDim2_Value_114;
local LocalScript_59 = Instance.new("LocalScript");
LocalScript_59.Parent = TextLabel_20;
LocalScript_59.Name = "文字设定";
local UICorner_15 = Instance.new("UICorner");
UICorner_15.Parent = ImageButton_11;
local UDim_Value_17 = UDim_New(0, 16);
UICorner_15.CornerRadius = UDim_Value_17;
local LocalScript_60 = Instance.new("LocalScript");
LocalScript_60.Parent = ImageButton_11;
LocalScript_60.Name = "密钥验证";
local ImageButton_12 = Instance.new("ImageButton");
ImageButton_12.Parent = ScrollingFrame_5;
ImageButton_12.BorderSizePixel = 0;
local Color3_Value_201 = Color3_FromRGB(255, 255, 255);
ImageButton_12.BackgroundColor3 = Color3_Value_201;
ImageButton_12.Image = "rbxassetid://2288805611";
local UDim2_Value_115 = UDim2_New(0, 64, 0, 64);
ImageButton_12.Size = UDim2_Value_115;
local Color3_Value_202 = Color3_FromRGB(0, 0, 0);
ImageButton_12.BorderColor3 = Color3_Value_202;
ImageButton_12.Name = "蜂群模拟器";
local UDim2_Value_116 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_12.Position = UDim2_Value_116;
local TextLabel_21 = Instance.new("TextLabel");
TextLabel_21.Parent = ImageButton_12;
TextLabel_21.TextWrapped = true;
TextLabel_21.BorderSizePixel = 0;
TextLabel_21.TextSize = 16;
local Left_14 = Enum_TextXAlignment.Left;
TextLabel_21.TextXAlignment = Left_14;
local Color3_Value_203 = Color3_FromRGB(255, 255, 255);
TextLabel_21.BackgroundColor3 = Color3_Value_203;
local New_28 = Font.new;
local Bold_20 = Enum_FontWeight.Bold;
local Normal_28 = Enum_FontStyle.Normal;
local _call129 = New_28("rbxasset://fonts/families/FredokaOne.json", Bold_20, Normal_28);
TextLabel_21.FontFace = _call129;
local Color3_Value_204 = Color3_FromRGB(255, 255, 255);
TextLabel_21.TextColor3 = Color3_Value_204;
TextLabel_21.BackgroundTransparency = 1;
TextLabel_21.RichText = true;
local UDim2_Value_117 = UDim2_New(0, 433, 0, 64);
TextLabel_21.Size = UDim2_Value_117;
local Color3_Value_205 = Color3_FromRGB(255, 255, 255);
TextLabel_21.BorderColor3 = Color3_Value_205;
TextLabel_21.Text = "<font color='rgb(255,255,0)'>蜂群模拟器</font><br/>自动采集酿造可选择区域，自动刷徽章代币物品，自动任务，自动刷怪等";
local Y_21 = Enum_AutomaticSize.Y;
TextLabel_21.AutomaticSize = Y_21;
TextLabel_21.Name = "脚本介绍";
local UDim2_Value_118 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_21.Position = UDim2_Value_118;
local LocalScript_61 = Instance.new("LocalScript");
LocalScript_61.Parent = TextLabel_21;
LocalScript_61.Name = "文字设定";
local UICorner_16 = Instance.new("UICorner");
UICorner_16.Parent = ImageButton_12;
local UDim_Value_18 = UDim_New(0, 16);
UICorner_16.CornerRadius = UDim_Value_18;
local LocalScript_62 = Instance.new("LocalScript");
LocalScript_62.Parent = ImageButton_12;
LocalScript_62.Name = "密钥验证";
local ImageButton_13 = Instance.new("ImageButton");
ImageButton_13.Parent = ScrollingFrame_5;
ImageButton_13.BorderSizePixel = 0;
local Color3_Value_206 = Color3_FromRGB(255, 255, 255);
ImageButton_13.BackgroundColor3 = Color3_Value_206;
ImageButton_13.Image = "rbxassetid://125094830280177";
local UDim2_Value_119 = UDim2_New(0, 64, 0, 64);
ImageButton_13.Size = UDim2_Value_119;
local Color3_Value_207 = Color3_FromRGB(0, 0, 0);
ImageButton_13.BorderColor3 = Color3_Value_207;
ImageButton_13.Name = "99夜在森林里";
local UDim2_Value_120 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_13.Position = UDim2_Value_120;
local TextLabel_22 = Instance.new("TextLabel");
TextLabel_22.Parent = ImageButton_13;
TextLabel_22.TextWrapped = true;
TextLabel_22.BorderSizePixel = 0;
TextLabel_22.TextSize = 16;
local Left_15 = Enum_TextXAlignment.Left;
TextLabel_22.TextXAlignment = Left_15;
local Color3_Value_208 = Color3_FromRGB(255, 255, 255);
TextLabel_22.BackgroundColor3 = Color3_Value_208;
local New_29 = Font.new;
local Bold_21 = Enum_FontWeight.Bold;
local Normal_29 = Enum_FontStyle.Normal;
local _call134 = New_29("rbxasset://fonts/families/FredokaOne.json", Bold_21, Normal_29);
TextLabel_22.FontFace = _call134;
local Color3_Value_209 = Color3_FromRGB(255, 255, 255);
TextLabel_22.TextColor3 = Color3_Value_209;
TextLabel_22.BackgroundTransparency = 1;
TextLabel_22.RichText = true;
local UDim2_Value_121 = UDim2_New(0, 433, 0, 64);
TextLabel_22.Size = UDim2_Value_121;
local Color3_Value_210 = Color3_FromRGB(255, 255, 255);
TextLabel_22.BorderColor3 = Color3_Value_210;
TextLabel_22.Text = "<font color='rgb(255,255,0)'>99夜在森林里</font><br/>自动将物品带回营地可选择物品种类，砍树光环，杀戮光环，飞行加速等<br/>基本可以无限刷天数";
local Y_22 = Enum_AutomaticSize.Y;
TextLabel_22.AutomaticSize = Y_22;
TextLabel_22.Name = "脚本介绍";
local UDim2_Value_122 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_22.Position = UDim2_Value_122;
local LocalScript_63 = Instance.new("LocalScript");
LocalScript_63.Parent = TextLabel_22;
LocalScript_63.Name = "文字设定";
local UICorner_17 = Instance.new("UICorner");
UICorner_17.Parent = ImageButton_13;
local UDim_Value_19 = UDim_New(0, 16);
UICorner_17.CornerRadius = UDim_Value_19;
local LocalScript_64 = Instance.new("LocalScript");
LocalScript_64.Parent = ImageButton_13;
LocalScript_64.Name = "密钥验证";
local ScrollingFrame_6 = Instance.new("ScrollingFrame");
ScrollingFrame_6.Parent = Frame;
ScrollingFrame_6.BorderSizePixel = 0;
local Vector2_New = Vector2.new;
local Vector2_Value = Vector2_New(0, 1950);
ScrollingFrame_6.CanvasPosition = Vector2_Value;
ScrollingFrame_6.Name = "买断制脚本显示区";
local Color3_Value_211 = Color3_FromRGB(255, 255, 255);
ScrollingFrame_6.BackgroundColor3 = Color3_Value_211;
local Y_23 = Enum_AutomaticSize.Y;
ScrollingFrame_6.AutomaticCanvasSize = Y_23;
local UDim2_Value_123 = UDim2_New(0, 537, 0, 269);
ScrollingFrame_6.Size = UDim2_Value_123;
local Color3_Value_212 = Color3_FromRGB(0, 0, 0);
ScrollingFrame_6.ScrollBarImageColor3 = Color3_Value_212;
local UDim2_Value_124 = UDim2_New(0.16967, 0, 0.16531, 0);
ScrollingFrame_6.Position = UDim2_Value_124;
local Color3_Value_213 = Color3_FromRGB(0, 0, 0);
ScrollingFrame_6.BorderColor3 = Color3_Value_213;
ScrollingFrame_6.ScrollBarThickness = 6;
ScrollingFrame_6.BackgroundTransparency = 1;
local TextLabel_23 = Instance.new("TextLabel");
TextLabel_23.Parent = ScrollingFrame_6;
TextLabel_23.TextWrapped = true;
TextLabel_23.BorderSizePixel = 0;
TextLabel_23.TextSize = 16;
local Color3_Value_214 = Color3_FromRGB(255, 255, 255);
TextLabel_23.BackgroundColor3 = Color3_Value_214;
local New_30 = Font.new;
local Bold_22 = Enum_FontWeight.Bold;
local Normal_30 = Enum_FontStyle.Normal;
local _call139 = New_30("rbxasset://fonts/families/FredokaOne.json", Bold_22, Normal_30);
TextLabel_23.FontFace = _call139;
local Color3_Value_215 = Color3_FromRGB(255, 255, 255);
TextLabel_23.TextColor3 = Color3_Value_215;
TextLabel_23.BackgroundTransparency = 1;
TextLabel_23.RichText = true;
local UDim2_Value_125 = UDim2_New(1, 0, 0, 0);
TextLabel_23.Size = UDim2_Value_125;
local Color3_Value_216 = Color3_FromRGB(0, 0, 0);
TextLabel_23.BorderColor3 = Color3_Value_216;
TextLabel_23.Text = "<font color='rgb(85,255,127)'>免费脚本任意使用，买断制脚本每个13R，包月制脚本每个30R/月<br/><br/>购买脚本,注入器教学，翻墙VPN请添加右下角联系方式，遇到BUG请及时反馈给我</font>";
local Y_24 = Enum_AutomaticSize.Y;
TextLabel_23.AutomaticSize = Y_24;
TextLabel_23.Name = "买断制脚本";
local UDim2_Value_126 = UDim2_New(0.02297, 0, 0.00014, 0);
TextLabel_23.Position = UDim2_Value_126;
local LocalScript_65 = Instance.new("LocalScript");
LocalScript_65.Parent = TextLabel_23;
LocalScript_65.Name = "文字设定";
local UIListLayout_6 = Instance.new("UIListLayout");
UIListLayout_6.Parent = ScrollingFrame_6;
local UDim_Value_20 = UDim_New(0, 16);
UIListLayout_6.Padding = UDim_Value_20;
local LayoutOrder_6 = Enum_SortOrder.LayoutOrder;
UIListLayout_6.SortOrder = LayoutOrder_6;
local LocalScript_66 = Instance.new("LocalScript");
LocalScript_66.Parent = ScrollingFrame_6;
LocalScript_66.Name = "滚动设定";
local ImageButton_14 = Instance.new("ImageButton");
ImageButton_14.Parent = ScrollingFrame_6;
ImageButton_14.BorderSizePixel = 0;
local Color3_Value_217 = Color3_FromRGB(255, 255, 255);
ImageButton_14.BackgroundColor3 = Color3_Value_217;
ImageButton_14.Image = "rbxassetid://114760217639164";
local UDim2_Value_127 = UDim2_New(0, 64, 0, 64);
ImageButton_14.Size = UDim2_Value_127;
local Color3_Value_218 = Color3_FromRGB(0, 0, 0);
ImageButton_14.BorderColor3 = Color3_Value_218;
ImageButton_14.Name = "BloxFruit";
local UDim2_Value_128 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_14.Position = UDim2_Value_128;
local TextLabel_24 = Instance.new("TextLabel");
TextLabel_24.Parent = ImageButton_14;
TextLabel_24.TextWrapped = true;
TextLabel_24.BorderSizePixel = 0;
TextLabel_24.TextSize = 16;
local Left_16 = Enum_TextXAlignment.Left;
TextLabel_24.TextXAlignment = Left_16;
local Color3_Value_219 = Color3_FromRGB(255, 255, 255);
TextLabel_24.BackgroundColor3 = Color3_Value_219;
local New_31 = Font.new;
local Bold_23 = Enum_FontWeight.Bold;
local Normal_31 = Enum_FontStyle.Normal;
local _call145 = New_31("rbxasset://fonts/families/FredokaOne.json", Bold_23, Normal_31);
TextLabel_24.FontFace = _call145;
local Color3_Value_220 = Color3_FromRGB(255, 255, 255);
TextLabel_24.TextColor3 = Color3_Value_220;
TextLabel_24.BackgroundTransparency = 1;
TextLabel_24.RichText = true;
local UDim2_Value_129 = UDim2_New(0, 433, 0, 64);
TextLabel_24.Size = UDim2_Value_129;
local Color3_Value_221 = Color3_FromRGB(255, 255, 255);
TextLabel_24.BorderColor3 = Color3_Value_221;
TextLabel_24.Text = "<font color='rgb(255,255,0)'>BloxFruit</font><br/>自动练等级，技能等级，果实等级，刷绿钞，F币，材料，果实探索，传送加速等<br/>PVP功能酌情使用";
local Y_25 = Enum_AutomaticSize.Y;
TextLabel_24.AutomaticSize = Y_25;
TextLabel_24.Name = "脚本介绍";
local UDim2_Value_130 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_24.Position = UDim2_Value_130;
local LocalScript_67 = Instance.new("LocalScript");
LocalScript_67.Parent = TextLabel_24;
LocalScript_67.Name = "文字设定";
local UICorner_18 = Instance.new("UICorner");
UICorner_18.Parent = ImageButton_14;
local UDim_Value_21 = UDim_New(0, 16);
UICorner_18.CornerRadius = UDim_Value_21;
local LocalScript_68 = Instance.new("LocalScript");
LocalScript_68.Parent = ImageButton_14;
LocalScript_68.Name = "密钥验证";
local ImageButton_15 = Instance.new("ImageButton");
ImageButton_15.Parent = ScrollingFrame_6;
ImageButton_15.BorderSizePixel = 0;
local Color3_Value_222 = Color3_FromRGB(255, 255, 255);
ImageButton_15.BackgroundColor3 = Color3_Value_222;
ImageButton_15.Image = "rbxassetid://12819512142";
local UDim2_Value_131 = UDim2_New(0, 64, 0, 64);
ImageButton_15.Size = UDim2_Value_131;
local Color3_Value_223 = Color3_FromRGB(0, 0, 0);
ImageButton_15.BorderColor3 = Color3_Value_223;
ImageButton_15.Name = "KingLegacy";
local UDim2_Value_132 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_15.Position = UDim2_Value_132;
local TextLabel_25 = Instance.new("TextLabel");
TextLabel_25.Parent = ImageButton_15;
TextLabel_25.TextWrapped = true;
TextLabel_25.BorderSizePixel = 0;
TextLabel_25.TextSize = 16;
local Left_17 = Enum_TextXAlignment.Left;
TextLabel_25.TextXAlignment = Left_17;
local Color3_Value_224 = Color3_FromRGB(255, 255, 255);
TextLabel_25.BackgroundColor3 = Color3_Value_224;
local New_32 = Font.new;
local Bold_24 = Enum_FontWeight.Bold;
local Normal_32 = Enum_FontStyle.Normal;
local _call150 = New_32("rbxasset://fonts/families/FredokaOne.json", Bold_24, Normal_32);
TextLabel_25.FontFace = _call150;
local Color3_Value_225 = Color3_FromRGB(255, 255, 255);
TextLabel_25.TextColor3 = Color3_Value_225;
TextLabel_25.BackgroundTransparency = 1;
TextLabel_25.RichText = true;
local UDim2_Value_133 = UDim2_New(0, 433, 0, 64);
TextLabel_25.Size = UDim2_Value_133;
local Color3_Value_226 = Color3_FromRGB(255, 255, 255);
TextLabel_25.BorderColor3 = Color3_Value_226;
TextLabel_25.Text = "<font color='rgb(255,255,0)'>国王遗产KingLegacy</font><br/>自动刷等级，副本，海上事件，果实探索";
local Y_26 = Enum_AutomaticSize.Y;
TextLabel_25.AutomaticSize = Y_26;
TextLabel_25.Name = "脚本介绍";
local UDim2_Value_134 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_25.Position = UDim2_Value_134;
local LocalScript_69 = Instance.new("LocalScript");
LocalScript_69.Parent = TextLabel_25;
LocalScript_69.Name = "文字设定";
local UICorner_19 = Instance.new("UICorner");
UICorner_19.Parent = ImageButton_15;
local UDim_Value_22 = UDim_New(0, 16);
UICorner_19.CornerRadius = UDim_Value_22;
local LocalScript_70 = Instance.new("LocalScript");
LocalScript_70.Parent = ImageButton_15;
LocalScript_70.Name = "密钥验证";
local ImageButton_16 = Instance.new("ImageButton");
ImageButton_16.Parent = ScrollingFrame_6;
ImageButton_16.BorderSizePixel = 0;
local Color3_Value_227 = Color3_FromRGB(255, 255, 255);
ImageButton_16.BackgroundColor3 = Color3_Value_227;
ImageButton_16.Image = "rbxassetid://1070850038";
local UDim2_Value_135 = UDim2_New(0, 64, 0, 64);
ImageButton_16.Size = UDim2_Value_135;
local Color3_Value_228 = Color3_FromRGB(0, 0, 0);
ImageButton_16.BorderColor3 = Color3_Value_228;
ImageButton_16.Name = "FishIt";
local UDim2_Value_136 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_16.Position = UDim2_Value_136;
local TextLabel_26 = Instance.new("TextLabel");
TextLabel_26.Parent = ImageButton_16;
TextLabel_26.TextWrapped = true;
TextLabel_26.BorderSizePixel = 0;
TextLabel_26.TextSize = 16;
local Left_18 = Enum_TextXAlignment.Left;
TextLabel_26.TextXAlignment = Left_18;
local Color3_Value_229 = Color3_FromRGB(255, 255, 255);
TextLabel_26.BackgroundColor3 = Color3_Value_229;
local New_33 = Font.new;
local Bold_25 = Enum_FontWeight.Bold;
local Normal_33 = Enum_FontStyle.Normal;
local _call155 = New_33("rbxasset://fonts/families/FredokaOne.json", Bold_25, Normal_33);
TextLabel_26.FontFace = _call155;
local Color3_Value_230 = Color3_FromRGB(255, 255, 255);
TextLabel_26.TextColor3 = Color3_Value_230;
TextLabel_26.BackgroundTransparency = 1;
TextLabel_26.RichText = true;
local UDim2_Value_137 = UDim2_New(0, 433, 0, 64);
TextLabel_26.Size = UDim2_Value_137;
local Color3_Value_231 = Color3_FromRGB(255, 255, 255);
TextLabel_26.BorderColor3 = Color3_Value_231;
TextLabel_26.Text = "<font color='rgb(255,255,0)'>钓鱼吧Fish It</font><font color='rgb(255,0,0)'>（调试中）</font><br/>自动抛竿，跳过点击瞬间钓鱼，自动贩售，传送等";
local Y_27 = Enum_AutomaticSize.Y;
TextLabel_26.AutomaticSize = Y_27;
TextLabel_26.Name = "脚本介绍";
local UDim2_Value_138 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_26.Position = UDim2_Value_138;
local LocalScript_71 = Instance.new("LocalScript");
LocalScript_71.Parent = TextLabel_26;
LocalScript_71.Name = "文字设定";
local UICorner_20 = Instance.new("UICorner");
UICorner_20.Parent = ImageButton_16;
local UDim_Value_23 = UDim_New(0, 16);
UICorner_20.CornerRadius = UDim_Value_23;
local LocalScript_72 = Instance.new("LocalScript");
LocalScript_72.Parent = ImageButton_16;
LocalScript_72.Name = "密钥验证";
local ImageButton_17 = Instance.new("ImageButton");
ImageButton_17.Parent = ScrollingFrame_6;
ImageButton_17.BorderSizePixel = 0;
local Color3_Value_232 = Color3_FromRGB(255, 255, 255);
ImageButton_17.BackgroundColor3 = Color3_Value_232;
ImageButton_17.Image = "rbxassetid://77005458544600";
local UDim2_Value_139 = UDim2_New(0, 64, 0, 64);
ImageButton_17.Size = UDim2_Value_139;
local Color3_Value_233 = Color3_FromRGB(0, 0, 0);
ImageButton_17.BorderColor3 = Color3_Value_233;
ImageButton_17.Name = "Fisch";
local UDim2_Value_140 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_17.Position = UDim2_Value_140;
local UICorner_21 = Instance.new("UICorner");
UICorner_21.Parent = ImageButton_17;
local UDim_Value_24 = UDim_New(0, 16);
UICorner_21.CornerRadius = UDim_Value_24;
local LocalScript_73 = Instance.new("LocalScript");
LocalScript_73.Parent = ImageButton_17;
LocalScript_73.Name = "密钥验证";
local TextLabel_27 = Instance.new("TextLabel");
TextLabel_27.Parent = ImageButton_17;
TextLabel_27.TextWrapped = true;
TextLabel_27.BorderSizePixel = 0;
TextLabel_27.TextSize = 16;
local Left_19 = Enum_TextXAlignment.Left;
TextLabel_27.TextXAlignment = Left_19;
local Color3_Value_234 = Color3_FromRGB(255, 255, 255);
TextLabel_27.BackgroundColor3 = Color3_Value_234;
local New_34 = Font.new;
local Bold_26 = Enum_FontWeight.Bold;
local Normal_34 = Enum_FontStyle.Normal;
local _call160 = New_34("rbxasset://fonts/families/FredokaOne.json", Bold_26, Normal_34);
TextLabel_27.FontFace = _call160;
local Color3_Value_235 = Color3_FromRGB(255, 255, 255);
TextLabel_27.TextColor3 = Color3_Value_235;
TextLabel_27.BackgroundTransparency = 1;
TextLabel_27.RichText = true;
local UDim2_Value_141 = UDim2_New(0, 433, 0, 64);
TextLabel_27.Size = UDim2_Value_141;
local Color3_Value_236 = Color3_FromRGB(255, 255, 255);
TextLabel_27.BorderColor3 = Color3_Value_236;
TextLabel_27.Text = "<font color='rgb(255,255,0)'>钓鱼Fisch</font><font color='rgb(255,0,0)'>（调试中）</font><br/>自动抛竿，跳过点击瞬间钓鱼，自动贩售，传送等";
local Y_28 = Enum_AutomaticSize.Y;
TextLabel_27.AutomaticSize = Y_28;
TextLabel_27.Name = "脚本介绍";
local UDim2_Value_142 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_27.Position = UDim2_Value_142;
local LocalScript_74 = Instance.new("LocalScript");
LocalScript_74.Parent = TextLabel_27;
LocalScript_74.Name = "文字设定";
local ImageButton_18 = Instance.new("ImageButton");
ImageButton_18.Parent = ScrollingFrame_6;
ImageButton_18.BorderSizePixel = 0;
local Color3_Value_237 = Color3_FromRGB(255, 255, 255);
ImageButton_18.BackgroundColor3 = Color3_Value_237;
ImageButton_18.Image = "rbxassetid://12737594844";
local UDim2_Value_143 = UDim2_New(0, 64, 0, 64);
ImageButton_18.Size = UDim2_Value_143;
local Color3_Value_238 = Color3_FromRGB(0, 0, 0);
ImageButton_18.BorderColor3 = Color3_Value_238;
ImageButton_18.Name = "触摸踢飞";
local UDim2_Value_144 = UDim2_New(0, 0, 0.06114, 0);
ImageButton_18.Position = UDim2_Value_144;
local TextLabel_28 = Instance.new("TextLabel");
TextLabel_28.Parent = ImageButton_18;
TextLabel_28.TextWrapped = true;
TextLabel_28.BorderSizePixel = 0;
TextLabel_28.TextSize = 16;
local Left_20 = Enum_TextXAlignment.Left;
TextLabel_28.TextXAlignment = Left_20;
local Color3_Value_239 = Color3_FromRGB(255, 255, 255);
TextLabel_28.BackgroundColor3 = Color3_Value_239;
local New_35 = Font.new;
local Bold_27 = Enum_FontWeight.Bold;
local Normal_35 = Enum_FontStyle.Normal;
local _call165 = New_35("rbxasset://fonts/families/FredokaOne.json", Bold_27, Normal_35);
TextLabel_28.FontFace = _call165;
local Color3_Value_240 = Color3_FromRGB(255, 255, 255);
TextLabel_28.TextColor3 = Color3_Value_240;
TextLabel_28.BackgroundTransparency = 1;
TextLabel_28.RichText = true;
local UDim2_Value_145 = UDim2_New(0, 433, 0, 64);
TextLabel_28.Size = UDim2_Value_145;
local Color3_Value_241 = Color3_FromRGB(255, 255, 255);
TextLabel_28.BorderColor3 = Color3_Value_241;
TextLabel_28.Text = "<font color='rgb(255,255,0)'>通用触摸踢飞</font><br/>通用踢飞的低调版，开启后你触碰别人或者别人触碰你，都会被弹出地图外";
local Y_29 = Enum_AutomaticSize.Y;
TextLabel_28.AutomaticSize = Y_29;
TextLabel_28.Name = "脚本介绍";
local UDim2_Value_146 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_28.Position = UDim2_Value_146;
local LocalScript_75 = Instance.new("LocalScript");
LocalScript_75.Parent = TextLabel_28;
LocalScript_75.Name = "文字设定";
local UICorner_22 = Instance.new("UICorner");
UICorner_22.Parent = ImageButton_18;
local UDim_Value_25 = UDim_New(0, 16);
UICorner_22.CornerRadius = UDim_Value_25;
local LocalScript_76 = Instance.new("LocalScript");
LocalScript_76.Parent = ImageButton_18;
LocalScript_76.Name = "密钥验证";
local ImageButton_19 = Instance.new("ImageButton");
ImageButton_19.Parent = ScrollingFrame_6;
ImageButton_19.BorderSizePixel = 0;
local Color3_Value_242 = Color3_FromRGB(255, 255, 255);
ImageButton_19.BackgroundColor3 = Color3_Value_242;
ImageButton_19.Image = "rbxassetid://135774371504720";
local UDim2_Value_147 = UDim2_New(0, 64, 0, 64);
ImageButton_19.Size = UDim2_Value_147;
local Color3_Value_243 = Color3_FromRGB(0, 0, 0);
ImageButton_19.BorderColor3 = Color3_Value_243;
ImageButton_19.Name = "被遗弃";
local UDim2_Value_148 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_19.Position = UDim2_Value_148;
local TextLabel_29 = Instance.new("TextLabel");
TextLabel_29.Parent = ImageButton_19;
TextLabel_29.TextWrapped = true;
TextLabel_29.BorderSizePixel = 0;
TextLabel_29.TextSize = 16;
local Left_21 = Enum_TextXAlignment.Left;
TextLabel_29.TextXAlignment = Left_21;
local Color3_Value_244 = Color3_FromRGB(255, 255, 255);
TextLabel_29.BackgroundColor3 = Color3_Value_244;
local New_36 = Font.new;
local Bold_28 = Enum_FontWeight.Bold;
local Normal_36 = Enum_FontStyle.Normal;
local _call170 = New_36("rbxasset://fonts/families/FredokaOne.json", Bold_28, Normal_36);
TextLabel_29.FontFace = _call170;
local Color3_Value_245 = Color3_FromRGB(255, 255, 255);
TextLabel_29.TextColor3 = Color3_Value_245;
TextLabel_29.BackgroundTransparency = 1;
TextLabel_29.RichText = true;
local UDim2_Value_149 = UDim2_New(0, 433, 0, 64);
TextLabel_29.Size = UDim2_Value_149;
local Color3_Value_246 = Color3_FromRGB(255, 255, 255);
TextLabel_29.BorderColor3 = Color3_Value_246;
TextLabel_29.Text = "<font color='rgb(255,255,0)'>被遗弃</font><br/>透视，隐形，跳过小游戏直接解机，生存者自动防御自动使用技能<br/>杀手自动击杀";
local Y_30 = Enum_AutomaticSize.Y;
TextLabel_29.AutomaticSize = Y_30;
TextLabel_29.Name = "脚本介绍";
local UDim2_Value_150 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_29.Position = UDim2_Value_150;
local LocalScript_77 = Instance.new("LocalScript");
LocalScript_77.Parent = TextLabel_29;
LocalScript_77.Name = "文字设定";
local UICorner_23 = Instance.new("UICorner");
UICorner_23.Parent = ImageButton_19;
local UDim_Value_26 = UDim_New(0, 16);
UICorner_23.CornerRadius = UDim_Value_26;
local LocalScript_78 = Instance.new("LocalScript");
LocalScript_78.Parent = ImageButton_19;
LocalScript_78.Name = "密钥验证";
local ImageButton_20 = Instance.new("ImageButton");
ImageButton_20.Parent = ScrollingFrame_6;
ImageButton_20.BorderSizePixel = 0;
local Color3_Value_247 = Color3_FromRGB(255, 255, 255);
ImageButton_20.BackgroundColor3 = Color3_Value_247;
ImageButton_20.Image = "rbxassetid://18694383100";
local UDim2_Value_151 = UDim2_New(0, 64, 0, 64);
ImageButton_20.Size = UDim2_Value_151;
local Color3_Value_248 = Color3_FromRGB(0, 0, 0);
ImageButton_20.BorderColor3 = Color3_Value_248;
ImageButton_20.Name = "自瞄";
local UDim2_Value_152 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_20.Position = UDim2_Value_152;
local TextLabel_30 = Instance.new("TextLabel");
TextLabel_30.Parent = ImageButton_20;
TextLabel_30.TextWrapped = true;
TextLabel_30.BorderSizePixel = 0;
TextLabel_30.TextSize = 16;
local Left_22 = Enum_TextXAlignment.Left;
TextLabel_30.TextXAlignment = Left_22;
local Color3_Value_249 = Color3_FromRGB(255, 255, 255);
TextLabel_30.BackgroundColor3 = Color3_Value_249;
local New_37 = Font.new;
local Bold_29 = Enum_FontWeight.Bold;
local Normal_37 = Enum_FontStyle.Normal;
local _call175 = New_37("rbxasset://fonts/families/FredokaOne.json", Bold_29, Normal_37);
TextLabel_30.FontFace = _call175;
local Color3_Value_250 = Color3_FromRGB(255, 255, 255);
TextLabel_30.TextColor3 = Color3_Value_250;
TextLabel_30.BackgroundTransparency = 1;
TextLabel_30.RichText = true;
local UDim2_Value_153 = UDim2_New(0, 433, 0, 64);
TextLabel_30.Size = UDim2_Value_153;
local Color3_Value_251 = Color3_FromRGB(255, 255, 255);
TextLabel_30.BorderColor3 = Color3_Value_251;
TextLabel_30.Text = "<font color='rgb(255,255,0)'>通用自瞄</font><br/>全游戏通用透视和自瞄，由于是通用，效果没有独立脚本强，甚至有的游戏无法使用";
local Y_31 = Enum_AutomaticSize.Y;
TextLabel_30.AutomaticSize = Y_31;
TextLabel_30.Name = "脚本介绍";
local UDim2_Value_154 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_30.Position = UDim2_Value_154;
local LocalScript_79 = Instance.new("LocalScript");
LocalScript_79.Parent = TextLabel_30;
LocalScript_79.Name = "文字设定";
local UICorner_24 = Instance.new("UICorner");
UICorner_24.Parent = ImageButton_20;
local UDim_Value_27 = UDim_New(0, 16);
UICorner_24.CornerRadius = UDim_Value_27;
local LocalScript_80 = Instance.new("LocalScript");
LocalScript_80.Parent = ImageButton_20;
LocalScript_80.Name = "密钥验证";
local ImageButton_21 = Instance.new("ImageButton");
ImageButton_21.Parent = ScrollingFrame_6;
ImageButton_21.BorderSizePixel = 0;
local Color3_Value_252 = Color3_FromRGB(255, 255, 255);
ImageButton_21.BackgroundColor3 = Color3_Value_252;
ImageButton_21.Image = "rbxassetid://136610541521358";
local UDim2_Value_155 = UDim2_New(0, 64, 0, 64);
ImageButton_21.Size = UDim2_Value_155;
local Color3_Value_253 = Color3_FromRGB(0, 0, 0);
ImageButton_21.BorderColor3 = Color3_Value_253;
ImageButton_21.Name = "踢飞";
local UDim2_Value_156 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_21.Position = UDim2_Value_156;
local TextLabel_31 = Instance.new("TextLabel");
TextLabel_31.Parent = ImageButton_21;
TextLabel_31.TextWrapped = true;
TextLabel_31.BorderSizePixel = 0;
TextLabel_31.TextSize = 16;
local Left_23 = Enum_TextXAlignment.Left;
TextLabel_31.TextXAlignment = Left_23;
local Color3_Value_254 = Color3_FromRGB(255, 255, 255);
TextLabel_31.BackgroundColor3 = Color3_Value_254;
local New_38 = Font.new;
local Bold_30 = Enum_FontWeight.Bold;
local Normal_38 = Enum_FontStyle.Normal;
local _call180 = New_38("rbxasset://fonts/families/FredokaOne.json", Bold_30, Normal_38);
TextLabel_31.FontFace = _call180;
local Color3_Value_255 = Color3_FromRGB(255, 255, 255);
TextLabel_31.TextColor3 = Color3_Value_255;
TextLabel_31.BackgroundTransparency = 1;
TextLabel_31.RichText = true;
local UDim2_Value_157 = UDim2_New(0, 433, 0, 64);
TextLabel_31.Size = UDim2_Value_157;
local Color3_Value_256 = Color3_FromRGB(255, 255, 255);
TextLabel_31.BorderColor3 = Color3_Value_256;
TextLabel_31.Text = "<font color='rgb(255,255,0)'>通用踢飞</font><br/>很多游戏通用的踢飞脚本，可指定玩家也可踢飞所有玩家<br/>在游戏里被人莫名扔出地图外就是这个脚本所为";
local Y_32 = Enum_AutomaticSize.Y;
TextLabel_31.AutomaticSize = Y_32;
TextLabel_31.Name = "脚本介绍";
local UDim2_Value_158 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_31.Position = UDim2_Value_158;
local LocalScript_81 = Instance.new("LocalScript");
LocalScript_81.Parent = TextLabel_31;
LocalScript_81.Name = "文字设定";
local UICorner_25 = Instance.new("UICorner");
UICorner_25.Parent = ImageButton_21;
local UDim_Value_28 = UDim_New(0, 16);
UICorner_25.CornerRadius = UDim_Value_28;
local LocalScript_82 = Instance.new("LocalScript");
LocalScript_82.Parent = ImageButton_21;
LocalScript_82.Name = "密钥验证";
local ImageButton_22 = Instance.new("ImageButton");
ImageButton_22.Parent = ScrollingFrame_6;
ImageButton_22.BorderSizePixel = 0;
local Color3_Value_257 = Color3_FromRGB(255, 255, 255);
ImageButton_22.BackgroundColor3 = Color3_Value_257;
ImageButton_22.Image = "rbxassetid://72384664851328";
local UDim2_Value_159 = UDim2_New(0, 64, 0, 64);
ImageButton_22.Size = UDim2_Value_159;
local Color3_Value_258 = Color3_FromRGB(0, 0, 0);
ImageButton_22.BorderColor3 = Color3_Value_258;
ImageButton_22.Name = "弹钢琴";
local UDim2_Value_160 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_22.Position = UDim2_Value_160;
local TextLabel_32 = Instance.new("TextLabel");
TextLabel_32.Parent = ImageButton_22;
TextLabel_32.TextWrapped = true;
TextLabel_32.BorderSizePixel = 0;
TextLabel_32.TextSize = 16;
local Left_24 = Enum_TextXAlignment.Left;
TextLabel_32.TextXAlignment = Left_24;
local Color3_Value_259 = Color3_FromRGB(255, 255, 255);
TextLabel_32.BackgroundColor3 = Color3_Value_259;
local New_39 = Font.new;
local Bold_31 = Enum_FontWeight.Bold;
local Normal_39 = Enum_FontStyle.Normal;
local _call185 = New_39("rbxasset://fonts/families/FredokaOne.json", Bold_31, Normal_39);
TextLabel_32.FontFace = _call185;
local Color3_Value_260 = Color3_FromRGB(255, 255, 255);
TextLabel_32.TextColor3 = Color3_Value_260;
TextLabel_32.BackgroundTransparency = 1;
TextLabel_32.RichText = true;
local UDim2_Value_161 = UDim2_New(0, 433, 0, 64);
TextLabel_32.Size = UDim2_Value_161;
local Color3_Value_261 = Color3_FromRGB(255, 255, 255);
TextLabel_32.BorderColor3 = Color3_Value_261;
TextLabel_32.Text = "<font color='rgb(255,255,0)'>通用弹钢琴</font><br/>所有内置钢琴的游戏皆可自动弹奏，支持几百首曲子";
local Y_33 = Enum_AutomaticSize.Y;
TextLabel_32.AutomaticSize = Y_33;
TextLabel_32.Name = "脚本介绍";
local UDim2_Value_162 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_32.Position = UDim2_Value_162;
local LocalScript_83 = Instance.new("LocalScript");
LocalScript_83.Parent = TextLabel_32;
LocalScript_83.Name = "文字设定";
local UICorner_26 = Instance.new("UICorner");
UICorner_26.Parent = ImageButton_22;
local UDim_Value_29 = UDim_New(0, 16);
UICorner_26.CornerRadius = UDim_Value_29;
local LocalScript_84 = Instance.new("LocalScript");
LocalScript_84.Parent = ImageButton_22;
LocalScript_84.Name = "密钥验证";
local ImageButton_23 = Instance.new("ImageButton");
ImageButton_23.Parent = ScrollingFrame_6;
ImageButton_23.BorderSizePixel = 0;
local Color3_Value_262 = Color3_FromRGB(255, 255, 255);
ImageButton_23.BackgroundColor3 = Color3_Value_262;
ImageButton_23.Image = "rbxassetid://71106264262734";
local UDim2_Value_163 = UDim2_New(0, 64, 0, 64);
ImageButton_23.Size = UDim2_Value_163;
local Color3_Value_263 = Color3_FromRGB(0, 0, 0);
ImageButton_23.BorderColor3 = Color3_Value_263;
ImageButton_23.Name = "种植花园";
local UDim2_Value_164 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_23.Position = UDim2_Value_164;
local TextLabel_33 = Instance.new("TextLabel");
TextLabel_33.Parent = ImageButton_23;
TextLabel_33.TextWrapped = true;
TextLabel_33.BorderSizePixel = 0;
TextLabel_33.TextSize = 16;
local Left_25 = Enum_TextXAlignment.Left;
TextLabel_33.TextXAlignment = Left_25;
local Color3_Value_264 = Color3_FromRGB(255, 255, 255);
TextLabel_33.BackgroundColor3 = Color3_Value_264;
local New_40 = Font.new;
local Bold_32 = Enum_FontWeight.Bold;
local Normal_40 = Enum_FontStyle.Normal;
local _call190 = New_40("rbxasset://fonts/families/FredokaOne.json", Bold_32, Normal_40);
TextLabel_33.FontFace = _call190;
local Color3_Value_265 = Color3_FromRGB(255, 255, 255);
TextLabel_33.TextColor3 = Color3_Value_265;
TextLabel_33.BackgroundTransparency = 1;
TextLabel_33.RichText = true;
local UDim2_Value_165 = UDim2_New(0, 433, 0, 64);
TextLabel_33.Size = UDim2_Value_165;
local Color3_Value_266 = Color3_FromRGB(255, 255, 255);
TextLabel_33.BorderColor3 = Color3_Value_266;
TextLabel_33.Text = "<font color='rgb(255,255,0)'>种植花园</font><font color='rgb(255,0,0)'>（调试中）</font><br/>自动收获出售，自动购买稀有种子宠物蛋，自动种植等";
local Y_34 = Enum_AutomaticSize.Y;
TextLabel_33.AutomaticSize = Y_34;
TextLabel_33.Name = "脚本介绍";
local UDim2_Value_166 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_33.Position = UDim2_Value_166;
local LocalScript_85 = Instance.new("LocalScript");
LocalScript_85.Parent = TextLabel_33;
LocalScript_85.Name = "文字设定";
local UICorner_27 = Instance.new("UICorner");
UICorner_27.Parent = ImageButton_23;
local UDim_Value_30 = UDim_New(0, 16);
UICorner_27.CornerRadius = UDim_Value_30;
local LocalScript_86 = Instance.new("LocalScript");
LocalScript_86.Parent = ImageButton_23;
LocalScript_86.Name = "密钥验证";
local ImageButton_24 = Instance.new("ImageButton");
ImageButton_24.Parent = ScrollingFrame_6;
ImageButton_24.BorderSizePixel = 0;
local Color3_Value_267 = Color3_FromRGB(255, 255, 255);
ImageButton_24.BackgroundColor3 = Color3_Value_267;
ImageButton_24.Image = "rbxassetid://16128570695";
local UDim2_Value_167 = UDim2_New(0, 64, 0, 64);
ImageButton_24.Size = UDim2_Value_167;
local Color3_Value_268 = Color3_FromRGB(0, 0, 0);
ImageButton_24.BorderColor3 = Color3_Value_268;
ImageButton_24.Name = "猎杀僵尸";
local UDim2_Value_168 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_24.Position = UDim2_Value_168;
local TextLabel_34 = Instance.new("TextLabel");
TextLabel_34.Parent = ImageButton_24;
TextLabel_34.TextWrapped = true;
TextLabel_34.BorderSizePixel = 0;
TextLabel_34.TextSize = 16;
local Left_26 = Enum_TextXAlignment.Left;
TextLabel_34.TextXAlignment = Left_26;
local Color3_Value_269 = Color3_FromRGB(255, 255, 255);
TextLabel_34.BackgroundColor3 = Color3_Value_269;
local New_41 = Font.new;
local Bold_33 = Enum_FontWeight.Bold;
local Normal_41 = Enum_FontStyle.Normal;
local _call195 = New_41("rbxasset://fonts/families/FredokaOne.json", Bold_33, Normal_41);
TextLabel_34.FontFace = _call195;
local Color3_Value_270 = Color3_FromRGB(255, 255, 255);
TextLabel_34.TextColor3 = Color3_Value_270;
TextLabel_34.BackgroundTransparency = 1;
TextLabel_34.RichText = true;
local UDim2_Value_169 = UDim2_New(0, 433, 0, 64);
TextLabel_34.Size = UDim2_Value_169;
local Color3_Value_271 = Color3_FromRGB(255, 255, 255);
TextLabel_34.BorderColor3 = Color3_Value_271;
TextLabel_34.Text = "<font color='rgb(255,255,0)'>猎杀僵尸</font><font color='rgb(255,0,0)'>（调试中）</font><br/>自动刷图，自动浮空开门放技能";
local Y_35 = Enum_AutomaticSize.Y;
TextLabel_34.AutomaticSize = Y_35;
TextLabel_34.Name = "脚本介绍";
local UDim2_Value_170 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_34.Position = UDim2_Value_170;
local LocalScript_87 = Instance.new("LocalScript");
LocalScript_87.Parent = TextLabel_34;
LocalScript_87.Name = "文字设定";
local UICorner_28 = Instance.new("UICorner");
UICorner_28.Parent = ImageButton_24;
local UDim_Value_31 = UDim_New(0, 16);
UICorner_28.CornerRadius = UDim_Value_31;
local LocalScript_88 = Instance.new("LocalScript");
LocalScript_88.Parent = ImageButton_24;
LocalScript_88.Name = "密钥验证";
local ImageButton_25 = Instance.new("ImageButton");
ImageButton_25.Parent = ScrollingFrame_6;
ImageButton_25.BorderSizePixel = 0;
local Color3_Value_272 = Color3_FromRGB(255, 255, 255);
ImageButton_25.BackgroundColor3 = Color3_Value_272;
ImageButton_25.Image = "rbxassetid://121756556784262";
local UDim2_Value_171 = UDim2_New(0, 64, 0, 64);
ImageButton_25.Size = UDim2_Value_171;
local Color3_Value_273 = Color3_FromRGB(0, 0, 0);
ImageButton_25.BorderColor3 = Color3_Value_273;
ImageButton_25.Name = "装扮打动人";
local UDim2_Value_172 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_25.Position = UDim2_Value_172;
local TextLabel_35 = Instance.new("TextLabel");
TextLabel_35.Parent = ImageButton_25;
TextLabel_35.TextWrapped = true;
TextLabel_35.BorderSizePixel = 0;
TextLabel_35.TextSize = 16;
local Left_27 = Enum_TextXAlignment.Left;
TextLabel_35.TextXAlignment = Left_27;
local Color3_Value_274 = Color3_FromRGB(255, 255, 255);
TextLabel_35.BackgroundColor3 = Color3_Value_274;
local New_42 = Font.new;
local Bold_34 = Enum_FontWeight.Bold;
local Normal_42 = Enum_FontStyle.Normal;
local _call200 = New_42("rbxasset://fonts/families/FredokaOne.json", Bold_34, Normal_42);
TextLabel_35.FontFace = _call200;
local Color3_Value_275 = Color3_FromRGB(255, 255, 255);
TextLabel_35.TextColor3 = Color3_Value_275;
TextLabel_35.BackgroundTransparency = 1;
TextLabel_35.RichText = true;
local UDim2_Value_173 = UDim2_New(0, 433, 0, 64);
TextLabel_35.Size = UDim2_Value_173;
local Color3_Value_276 = Color3_FromRGB(255, 255, 255);
TextLabel_35.BorderColor3 = Color3_Value_276;
TextLabel_35.Text = "<font color='rgb(255,255,0)'>装扮打动人</font><br/>自动拾取全图服装币，更改动作，肤色等娱乐小功能";
local Y_36 = Enum_AutomaticSize.Y;
TextLabel_35.AutomaticSize = Y_36;
TextLabel_35.Name = "脚本介绍";
local UDim2_Value_174 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_35.Position = UDim2_Value_174;
local LocalScript_89 = Instance.new("LocalScript");
LocalScript_89.Parent = TextLabel_35;
LocalScript_89.Name = "文字设定";
local UICorner_29 = Instance.new("UICorner");
UICorner_29.Parent = ImageButton_25;
local UDim_Value_32 = UDim_New(0, 16);
UICorner_29.CornerRadius = UDim_Value_32;
local LocalScript_90 = Instance.new("LocalScript");
LocalScript_90.Parent = ImageButton_25;
LocalScript_90.Name = "密钥验证";
local ImageButton_26 = Instance.new("ImageButton");
ImageButton_26.Parent = ScrollingFrame_6;
ImageButton_26.BorderSizePixel = 0;
local Color3_Value_277 = Color3_FromRGB(255, 255, 255);
ImageButton_26.BackgroundColor3 = Color3_Value_277;
ImageButton_26.Image = "rbxassetid://18508936902";
local UDim2_Value_175 = UDim2_New(0, 64, 0, 64);
ImageButton_26.Size = UDim2_Value_175;
local Color3_Value_278 = Color3_FromRGB(0, 0, 0);
ImageButton_26.BorderColor3 = Color3_Value_278;
ImageButton_26.Name = "最强战场";
local UDim2_Value_176 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_26.Position = UDim2_Value_176;
local TextLabel_36 = Instance.new("TextLabel");
TextLabel_36.Parent = ImageButton_26;
TextLabel_36.TextWrapped = true;
TextLabel_36.BorderSizePixel = 0;
TextLabel_36.TextSize = 16;
local Left_28 = Enum_TextXAlignment.Left;
TextLabel_36.TextXAlignment = Left_28;
local Color3_Value_279 = Color3_FromRGB(255, 255, 255);
TextLabel_36.BackgroundColor3 = Color3_Value_279;
local New_43 = Font.new;
local Bold_35 = Enum_FontWeight.Bold;
local Normal_43 = Enum_FontStyle.Normal;
local _call205 = New_43("rbxasset://fonts/families/FredokaOne.json", Bold_35, Normal_43);
TextLabel_36.FontFace = _call205;
local Color3_Value_280 = Color3_FromRGB(255, 255, 255);
TextLabel_36.TextColor3 = Color3_Value_280;
TextLabel_36.BackgroundTransparency = 1;
TextLabel_36.RichText = true;
local UDim2_Value_177 = UDim2_New(0, 433, 0, 64);
TextLabel_36.Size = UDim2_Value_177;
local Color3_Value_281 = Color3_FromRGB(255, 255, 255);
TextLabel_36.BorderColor3 = Color3_Value_281;
TextLabel_36.Text = "<font color='rgb(255,255,0)'>最强战场</font><br/>自动收割残血玩家，遁地无伤打架";
local Y_37 = Enum_AutomaticSize.Y;
TextLabel_36.AutomaticSize = Y_37;
TextLabel_36.Name = "脚本介绍";
local UDim2_Value_178 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_36.Position = UDim2_Value_178;
local LocalScript_91 = Instance.new("LocalScript");
LocalScript_91.Parent = TextLabel_36;
LocalScript_91.Name = "文字设定";
local UICorner_30 = Instance.new("UICorner");
UICorner_30.Parent = ImageButton_26;
local UDim_Value_33 = UDim_New(0, 16);
UICorner_30.CornerRadius = UDim_Value_33;
local LocalScript_92 = Instance.new("LocalScript");
LocalScript_92.Parent = ImageButton_26;
LocalScript_92.Name = "密钥验证";
local ImageButton_27 = Instance.new("ImageButton");
ImageButton_27.Parent = ScrollingFrame_6;
ImageButton_27.BorderSizePixel = 0;
local Color3_Value_282 = Color3_FromRGB(255, 255, 255);
ImageButton_27.BackgroundColor3 = Color3_Value_282;
ImageButton_27.Image = "rbxassetid://8446589311";
local UDim2_Value_179 = UDim2_New(0, 64, 0, 64);
ImageButton_27.Size = UDim2_Value_179;
local Color3_Value_283 = Color3_FromRGB(0, 0, 0);
ImageButton_27.BorderColor3 = Color3_Value_283;
ImageButton_27.Name = "兵工厂";
local UDim2_Value_180 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_27.Position = UDim2_Value_180;
local TextLabel_37 = Instance.new("TextLabel");
TextLabel_37.Parent = ImageButton_27;
TextLabel_37.TextWrapped = true;
TextLabel_37.BorderSizePixel = 0;
TextLabel_37.TextSize = 16;
local Left_29 = Enum_TextXAlignment.Left;
TextLabel_37.TextXAlignment = Left_29;
local Color3_Value_284 = Color3_FromRGB(255, 255, 255);
TextLabel_37.BackgroundColor3 = Color3_Value_284;
local New_44 = Font.new;
local Bold_36 = Enum_FontWeight.Bold;
local Normal_44 = Enum_FontStyle.Normal;
local _call210 = New_44("rbxasset://fonts/families/FredokaOne.json", Bold_36, Normal_44);
TextLabel_37.FontFace = _call210;
local Color3_Value_285 = Color3_FromRGB(255, 255, 255);
TextLabel_37.TextColor3 = Color3_Value_285;
TextLabel_37.BackgroundTransparency = 1;
TextLabel_37.RichText = true;
local UDim2_Value_181 = UDim2_New(0, 433, 0, 64);
TextLabel_37.Size = UDim2_Value_181;
local Color3_Value_286 = Color3_FromRGB(255, 255, 255);
TextLabel_37.BorderColor3 = Color3_Value_286;
TextLabel_37.Text = "<font color='rgb(255,255,0)'>兵工厂</font><br/>透视自瞄，增大敌方的体型";
local Y_38 = Enum_AutomaticSize.Y;
TextLabel_37.AutomaticSize = Y_38;
TextLabel_37.Name = "脚本介绍";
local UDim2_Value_182 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_37.Position = UDim2_Value_182;
local LocalScript_93 = Instance.new("LocalScript");
LocalScript_93.Parent = TextLabel_37;
LocalScript_93.Name = "文字设定";
local UICorner_31 = Instance.new("UICorner");
UICorner_31.Parent = ImageButton_27;
local UDim_Value_34 = UDim_New(0, 16);
UICorner_31.CornerRadius = UDim_Value_34;
local LocalScript_94 = Instance.new("LocalScript");
LocalScript_94.Parent = ImageButton_27;
LocalScript_94.Name = "密钥验证";
local ImageButton_28 = Instance.new("ImageButton");
ImageButton_28.Parent = ScrollingFrame_6;
ImageButton_28.BorderSizePixel = 0;
local Color3_Value_287 = Color3_FromRGB(255, 255, 255);
ImageButton_28.BackgroundColor3 = Color3_Value_287;
ImageButton_28.Image = "rbxassetid://15822360171";
local UDim2_Value_183 = UDim2_New(0, 64, 0, 64);
ImageButton_28.Size = UDim2_Value_183;
local Color3_Value_288 = Color3_FromRGB(0, 0, 0);
ImageButton_28.BorderColor3 = Color3_Value_288;
ImageButton_28.Name = "驾驶帝国";
local UDim2_Value_184 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_28.Position = UDim2_Value_184;
local TextLabel_38 = Instance.new("TextLabel");
TextLabel_38.Parent = ImageButton_28;
TextLabel_38.TextWrapped = true;
TextLabel_38.BorderSizePixel = 0;
TextLabel_38.TextSize = 16;
local Left_30 = Enum_TextXAlignment.Left;
TextLabel_38.TextXAlignment = Left_30;
local Color3_Value_289 = Color3_FromRGB(255, 255, 255);
TextLabel_38.BackgroundColor3 = Color3_Value_289;
local New_45 = Font.new;
local Bold_37 = Enum_FontWeight.Bold;
local Normal_45 = Enum_FontStyle.Normal;
local _call215 = New_45("rbxasset://fonts/families/FredokaOne.json", Bold_37, Normal_45);
TextLabel_38.FontFace = _call215;
local Color3_Value_290 = Color3_FromRGB(255, 255, 255);
TextLabel_38.TextColor3 = Color3_Value_290;
TextLabel_38.BackgroundTransparency = 1;
TextLabel_38.RichText = true;
local UDim2_Value_185 = UDim2_New(0, 433, 0, 64);
TextLabel_38.Size = UDim2_Value_185;
local Color3_Value_291 = Color3_FromRGB(255, 255, 255);
TextLabel_38.BorderColor3 = Color3_Value_291;
TextLabel_38.Text = "<font color='rgb(255,255,0)'>驾驶帝国</font><br/>自动刷钱（需买一架最便宜的飞机）";
local Y_39 = Enum_AutomaticSize.Y;
TextLabel_38.AutomaticSize = Y_39;
TextLabel_38.Name = "脚本介绍";
local UDim2_Value_186 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_38.Position = UDim2_Value_186;
local LocalScript_95 = Instance.new("LocalScript");
LocalScript_95.Parent = TextLabel_38;
LocalScript_95.Name = "文字设定";
local UICorner_32 = Instance.new("UICorner");
UICorner_32.Parent = ImageButton_28;
local UDim_Value_35 = UDim_New(0, 16);
UICorner_32.CornerRadius = UDim_Value_35;
local LocalScript_96 = Instance.new("LocalScript");
LocalScript_96.Parent = ImageButton_28;
LocalScript_96.Name = "密钥验证";
local ImageButton_29 = Instance.new("ImageButton");
ImageButton_29.Parent = ScrollingFrame_6;
ImageButton_29.BorderSizePixel = 0;
local Color3_Value_292 = Color3_FromRGB(255, 255, 255);
ImageButton_29.BackgroundColor3 = Color3_Value_292;
ImageButton_29.Image = "rbxassetid://13943877707";
local UDim2_Value_187 = UDim2_New(0, 64, 0, 64);
ImageButton_29.Size = UDim2_Value_187;
local Color3_Value_293 = Color3_FromRGB(0, 0, 0);
ImageButton_29.BorderColor3 = Color3_Value_293;
ImageButton_29.Name = "忍者传奇";
local UDim2_Value_188 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_29.Position = UDim2_Value_188;
local TextLabel_39 = Instance.new("TextLabel");
TextLabel_39.Parent = ImageButton_29;
TextLabel_39.TextWrapped = true;
TextLabel_39.BorderSizePixel = 0;
TextLabel_39.TextSize = 16;
local Left_31 = Enum_TextXAlignment.Left;
TextLabel_39.TextXAlignment = Left_31;
local Color3_Value_294 = Color3_FromRGB(255, 255, 255);
TextLabel_39.BackgroundColor3 = Color3_Value_294;
local New_46 = Font.new;
local Bold_38 = Enum_FontWeight.Bold;
local Normal_46 = Enum_FontStyle.Normal;
local _call220 = New_46("rbxasset://fonts/families/FredokaOne.json", Bold_38, Normal_46);
TextLabel_39.FontFace = _call220;
local Color3_Value_295 = Color3_FromRGB(255, 255, 255);
TextLabel_39.TextColor3 = Color3_Value_295;
TextLabel_39.BackgroundTransparency = 1;
TextLabel_39.RichText = true;
local UDim2_Value_189 = UDim2_New(0, 433, 0, 64);
TextLabel_39.Size = UDim2_Value_189;
local Color3_Value_296 = Color3_FromRGB(255, 255, 255);
TextLabel_39.BorderColor3 = Color3_Value_296;
TextLabel_39.Text = "<font color='rgb(255,255,0)'>忍者传奇</font><br/>自动刷忍术，金钱，气，开启所有岛屿，无限跳，pvp";
local Y_40 = Enum_AutomaticSize.Y;
TextLabel_39.AutomaticSize = Y_40;
TextLabel_39.Name = "脚本介绍";
local UDim2_Value_190 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_39.Position = UDim2_Value_190;
local LocalScript_97 = Instance.new("LocalScript");
LocalScript_97.Parent = TextLabel_39;
LocalScript_97.Name = "文字设定";
local UICorner_33 = Instance.new("UICorner");
UICorner_33.Parent = ImageButton_29;
local UDim_Value_36 = UDim_New(0, 16);
UICorner_33.CornerRadius = UDim_Value_36;
local LocalScript_98 = Instance.new("LocalScript");
LocalScript_98.Parent = ImageButton_29;
LocalScript_98.Name = "密钥验证";
local ImageButton_30 = Instance.new("ImageButton");
ImageButton_30.Parent = ScrollingFrame_6;
ImageButton_30.BorderSizePixel = 0;
local Color3_Value_297 = Color3_FromRGB(255, 255, 255);
ImageButton_30.BackgroundColor3 = Color3_Value_297;
ImageButton_30.Image = "rbxassetid://14127381063";
local UDim2_Value_191 = UDim2_New(0, 64, 0, 64);
ImageButton_30.Size = UDim2_Value_191;
local Color3_Value_298 = Color3_FromRGB(0, 0, 0);
ImageButton_30.BorderColor3 = Color3_Value_298;
ImageButton_30.Name = "极速传奇";
local UDim2_Value_192 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_30.Position = UDim2_Value_192;
local TextLabel_40 = Instance.new("TextLabel");
TextLabel_40.Parent = ImageButton_30;
TextLabel_40.TextWrapped = true;
TextLabel_40.BorderSizePixel = 0;
TextLabel_40.TextSize = 16;
local Left_32 = Enum_TextXAlignment.Left;
TextLabel_40.TextXAlignment = Left_32;
local Color3_Value_299 = Color3_FromRGB(255, 255, 255);
TextLabel_40.BackgroundColor3 = Color3_Value_299;
local New_47 = Font.new;
local Bold_39 = Enum_FontWeight.Bold;
local Normal_47 = Enum_FontStyle.Normal;
local _call225 = New_47("rbxasset://fonts/families/FredokaOne.json", Bold_39, Normal_47);
TextLabel_40.FontFace = _call225;
local Color3_Value_300 = Color3_FromRGB(255, 255, 255);
TextLabel_40.TextColor3 = Color3_Value_300;
TextLabel_40.BackgroundTransparency = 1;
TextLabel_40.RichText = true;
local UDim2_Value_193 = UDim2_New(0, 433, 0, 64);
TextLabel_40.Size = UDim2_Value_193;
local Color3_Value_301 = Color3_FromRGB(255, 255, 255);
TextLabel_40.BorderColor3 = Color3_Value_301;
TextLabel_40.Text = "<font color='rgb(255,255,0)'>极速传奇</font><br/>自动刷所有数值，转生，自动参加并赢得比赛";
local Y_41 = Enum_AutomaticSize.Y;
TextLabel_40.AutomaticSize = Y_41;
TextLabel_40.Name = "脚本介绍";
local UDim2_Value_194 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_40.Position = UDim2_Value_194;
local LocalScript_99 = Instance.new("LocalScript");
LocalScript_99.Parent = TextLabel_40;
LocalScript_99.Name = "文字设定";
local UICorner_34 = Instance.new("UICorner");
UICorner_34.Parent = ImageButton_30;
local UDim_Value_37 = UDim_New(0, 16);
UICorner_34.CornerRadius = UDim_Value_37;
local LocalScript_100 = Instance.new("LocalScript");
LocalScript_100.Parent = ImageButton_30;
LocalScript_100.Name = "密钥验证";
local ImageButton_31 = Instance.new("ImageButton");
ImageButton_31.Parent = ScrollingFrame_6;
ImageButton_31.BorderSizePixel = 0;
local Color3_Value_302 = Color3_FromRGB(255, 255, 255);
ImageButton_31.BackgroundColor3 = Color3_Value_302;
ImageButton_31.Image = "rbxassetid://5183416835";
local UDim2_Value_195 = UDim2_New(0, 64, 0, 64);
ImageButton_31.Size = UDim2_Value_195;
local Color3_Value_303 = Color3_FromRGB(0, 0, 0);
ImageButton_31.BorderColor3 = Color3_Value_303;
ImageButton_31.Name = "破坏者谜团2";
local UDim2_Value_196 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_31.Position = UDim2_Value_196;
local TextLabel_41 = Instance.new("TextLabel");
TextLabel_41.Parent = ImageButton_31;
TextLabel_41.TextWrapped = true;
TextLabel_41.BorderSizePixel = 0;
TextLabel_41.TextSize = 16;
local Left_33 = Enum_TextXAlignment.Left;
TextLabel_41.TextXAlignment = Left_33;
local Color3_Value_304 = Color3_FromRGB(255, 255, 255);
TextLabel_41.BackgroundColor3 = Color3_Value_304;
local New_48 = Font.new;
local Bold_40 = Enum_FontWeight.Bold;
local Normal_48 = Enum_FontStyle.Normal;
local _call230 = New_48("rbxasset://fonts/families/FredokaOne.json", Bold_40, Normal_48);
TextLabel_41.FontFace = _call230;
local Color3_Value_305 = Color3_FromRGB(255, 255, 255);
TextLabel_41.TextColor3 = Color3_Value_305;
TextLabel_41.BackgroundTransparency = 1;
TextLabel_41.RichText = true;
local UDim2_Value_197 = UDim2_New(0, 433, 0, 64);
TextLabel_41.Size = UDim2_Value_197;
local Color3_Value_306 = Color3_FromRGB(255, 255, 255);
TextLabel_41.BorderColor3 = Color3_Value_306;
TextLabel_41.Text = "<font color='rgb(255,255,0)'>破坏者谜团2</font><br/>自动拾取金币，警察死亡时自动捡枪成为英雄，警察或英雄一键击杀凶手<br/>凶手一键击杀警察或英雄，凶手一键击杀所有人";
local Y_42 = Enum_AutomaticSize.Y;
TextLabel_41.AutomaticSize = Y_42;
TextLabel_41.Name = "脚本介绍";
local UDim2_Value_198 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_41.Position = UDim2_Value_198;
local LocalScript_101 = Instance.new("LocalScript");
LocalScript_101.Parent = TextLabel_41;
LocalScript_101.Name = "文字设定";
local UICorner_35 = Instance.new("UICorner");
UICorner_35.Parent = ImageButton_31;
local UDim_Value_38 = UDim_New(0, 16);
UICorner_35.CornerRadius = UDim_Value_38;
local LocalScript_102 = Instance.new("LocalScript");
LocalScript_102.Parent = ImageButton_31;
LocalScript_102.Name = "密钥验证";
local ImageButton_32 = Instance.new("ImageButton");
ImageButton_32.Parent = ScrollingFrame_6;
ImageButton_32.BorderSizePixel = 0;
local Color3_Value_307 = Color3_FromRGB(255, 255, 255);
ImageButton_32.BackgroundColor3 = Color3_Value_307;
ImageButton_32.Image = "rbxassetid://123633789510122";
local UDim2_Value_199 = UDim2_New(0, 64, 0, 64);
ImageButton_32.Size = UDim2_Value_199;
local Color3_Value_308 = Color3_FromRGB(0, 0, 0);
ImageButton_32.BorderColor3 = Color3_Value_308;
ImageButton_32.Name = "刀刃球";
local UDim2_Value_200 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_32.Position = UDim2_Value_200;
local TextLabel_42 = Instance.new("TextLabel");
TextLabel_42.Parent = ImageButton_32;
TextLabel_42.TextWrapped = true;
TextLabel_42.BorderSizePixel = 0;
TextLabel_42.TextSize = 16;
local Left_34 = Enum_TextXAlignment.Left;
TextLabel_42.TextXAlignment = Left_34;
local Color3_Value_309 = Color3_FromRGB(255, 255, 255);
TextLabel_42.BackgroundColor3 = Color3_Value_309;
local New_49 = Font.new;
local Bold_41 = Enum_FontWeight.Bold;
local Normal_49 = Enum_FontStyle.Normal;
local _call235 = New_49("rbxasset://fonts/families/FredokaOne.json", Bold_41, Normal_49);
TextLabel_42.FontFace = _call235;
local Color3_Value_310 = Color3_FromRGB(255, 255, 255);
TextLabel_42.TextColor3 = Color3_Value_310;
TextLabel_42.BackgroundTransparency = 1;
TextLabel_42.RichText = true;
local UDim2_Value_201 = UDim2_New(0, 433, 0, 64);
TextLabel_42.Size = UDim2_Value_201;
local Color3_Value_311 = Color3_FromRGB(255, 255, 255);
TextLabel_42.BorderColor3 = Color3_Value_311;
TextLabel_42.Text = "<font color='rgb(255,255,0)'>刀刃球</font><br/>自动弹反，尽量时刻正面朝向球，背对也许会弹反失败";
local Y_43 = Enum_AutomaticSize.Y;
TextLabel_42.AutomaticSize = Y_43;
TextLabel_42.Name = "脚本介绍";
local UDim2_Value_202 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_42.Position = UDim2_Value_202;
local LocalScript_103 = Instance.new("LocalScript");
LocalScript_103.Parent = TextLabel_42;
LocalScript_103.Name = "文字设定";
local UICorner_36 = Instance.new("UICorner");
UICorner_36.Parent = ImageButton_32;
local UDim_Value_39 = UDim_New(0, 16);
UICorner_36.CornerRadius = UDim_Value_39;
local LocalScript_104 = Instance.new("LocalScript");
LocalScript_104.Parent = ImageButton_32;
LocalScript_104.Name = "密钥验证";
local ImageButton_33 = Instance.new("ImageButton");
ImageButton_33.Parent = ScrollingFrame_6;
ImageButton_33.BorderSizePixel = 0;
local Color3_Value_312 = Color3_FromRGB(255, 255, 255);
ImageButton_33.BackgroundColor3 = Color3_Value_312;
ImageButton_33.Image = "rbxassetid://70810387955318";
local UDim2_Value_203 = UDim2_New(0, 64, 0, 64);
ImageButton_33.Size = UDim2_Value_203;
local Color3_Value_313 = Color3_FromRGB(0, 0, 0);
ImageButton_33.BorderColor3 = Color3_Value_313;
ImageButton_33.Name = "FlingThingsAndPeople";
local UDim2_Value_204 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_33.Position = UDim2_Value_204;
local TextLabel_43 = Instance.new("TextLabel");
TextLabel_43.Parent = ImageButton_33;
TextLabel_43.TextWrapped = true;
TextLabel_43.BorderSizePixel = 0;
TextLabel_43.TextSize = 16;
local Left_35 = Enum_TextXAlignment.Left;
TextLabel_43.TextXAlignment = Left_35;
local Color3_Value_314 = Color3_FromRGB(255, 255, 255);
TextLabel_43.BackgroundColor3 = Color3_Value_314;
local New_50 = Font.new;
local Bold_42 = Enum_FontWeight.Bold;
local Normal_50 = Enum_FontStyle.Normal;
local _call240 = New_50("rbxasset://fonts/families/FredokaOne.json", Bold_42, Normal_50);
TextLabel_43.FontFace = _call240;
local Color3_Value_315 = Color3_FromRGB(255, 255, 255);
TextLabel_43.TextColor3 = Color3_Value_315;
TextLabel_43.BackgroundTransparency = 1;
TextLabel_43.RichText = true;
local UDim2_Value_205 = UDim2_New(0, 433, 0, 64);
TextLabel_43.Size = UDim2_Value_205;
local Color3_Value_316 = Color3_FromRGB(255, 255, 255);
TextLabel_43.BorderColor3 = Color3_Value_316;
TextLabel_43.Text = "<font color='rgb(255,255,0)'>FlingThingsAndPeople</font><br/>力量无限大，将玩家或物体扔出地图外，反抓取，别人抓你他会死<br/>杀戮光环，着火光环，龙卷风光环";
local Y_44 = Enum_AutomaticSize.Y;
TextLabel_43.AutomaticSize = Y_44;
TextLabel_43.Name = "脚本介绍";
local UDim2_Value_206 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_43.Position = UDim2_Value_206;
local LocalScript_105 = Instance.new("LocalScript");
LocalScript_105.Parent = TextLabel_43;
LocalScript_105.Name = "文字设定";
local UICorner_37 = Instance.new("UICorner");
UICorner_37.Parent = ImageButton_33;
local UDim_Value_40 = UDim_New(0, 16);
UICorner_37.CornerRadius = UDim_Value_40;
local LocalScript_106 = Instance.new("LocalScript");
LocalScript_106.Parent = ImageButton_33;
LocalScript_106.Name = "密钥验证";
local ImageButton_34 = Instance.new("ImageButton");
ImageButton_34.Parent = ScrollingFrame_6;
ImageButton_34.BorderSizePixel = 0;
local Color3_Value_317 = Color3_FromRGB(255, 255, 255);
ImageButton_34.BackgroundColor3 = Color3_Value_317;
ImageButton_34.Image = "rbxassetid://11216933642";
local UDim2_Value_207 = UDim2_New(0, 64, 0, 64);
ImageButton_34.Size = UDim2_Value_207;
local Color3_Value_318 = Color3_FromRGB(0, 0, 0);
ImageButton_34.BorderColor3 = Color3_Value_318;
ImageButton_34.Name = "动感星期五";
local UDim2_Value_208 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_34.Position = UDim2_Value_208;
local TextLabel_44 = Instance.new("TextLabel");
TextLabel_44.Parent = ImageButton_34;
TextLabel_44.TextWrapped = true;
TextLabel_44.BorderSizePixel = 0;
TextLabel_44.TextSize = 16;
local Left_36 = Enum_TextXAlignment.Left;
TextLabel_44.TextXAlignment = Left_36;
local Color3_Value_319 = Color3_FromRGB(255, 255, 255);
TextLabel_44.BackgroundColor3 = Color3_Value_319;
local New_51 = Font.new;
local Bold_43 = Enum_FontWeight.Bold;
local Normal_51 = Enum_FontStyle.Normal;
local _call245 = New_51("rbxasset://fonts/families/FredokaOne.json", Bold_43, Normal_51);
TextLabel_44.FontFace = _call245;
local Color3_Value_320 = Color3_FromRGB(255, 255, 255);
TextLabel_44.TextColor3 = Color3_Value_320;
TextLabel_44.BackgroundTransparency = 1;
TextLabel_44.RichText = true;
local UDim2_Value_209 = UDim2_New(0, 433, 0, 64);
TextLabel_44.Size = UDim2_Value_209;
local Color3_Value_321 = Color3_FromRGB(255, 255, 255);
TextLabel_44.BorderColor3 = Color3_Value_321;
TextLabel_44.Text = "<font color='rgb(255,255,0)'>动感星期五</font><br/>自动弹奏，全部完美";
local Y_45 = Enum_AutomaticSize.Y;
TextLabel_44.AutomaticSize = Y_45;
TextLabel_44.Name = "脚本介绍";
local UDim2_Value_210 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_44.Position = UDim2_Value_210;
local LocalScript_107 = Instance.new("LocalScript");
LocalScript_107.Parent = TextLabel_44;
LocalScript_107.Name = "文字设定";
local UICorner_38 = Instance.new("UICorner");
UICorner_38.Parent = ImageButton_34;
local UDim_Value_41 = UDim_New(0, 16);
UICorner_38.CornerRadius = UDim_Value_41;
local LocalScript_108 = Instance.new("LocalScript");
LocalScript_108.Parent = ImageButton_34;
LocalScript_108.Name = "密钥验证";
local ImageButton_35 = Instance.new("ImageButton");
ImageButton_35.Parent = ScrollingFrame_6;
ImageButton_35.BorderSizePixel = 0;
local Color3_Value_322 = Color3_FromRGB(255, 255, 255);
ImageButton_35.BackgroundColor3 = Color3_Value_322;
ImageButton_35.Image = "rbxassetid://7698866393";
local UDim2_Value_211 = UDim2_New(0, 64, 0, 64);
ImageButton_35.Size = UDim2_Value_211;
local Color3_Value_323 = Color3_FromRGB(0, 0, 0);
ImageButton_35.BorderColor3 = Color3_Value_323;
ImageButton_35.Name = "自然灾害模拟器";
local UDim2_Value_212 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_35.Position = UDim2_Value_212;
local TextLabel_45 = Instance.new("TextLabel");
TextLabel_45.Parent = ImageButton_35;
TextLabel_45.TextWrapped = true;
TextLabel_45.BorderSizePixel = 0;
TextLabel_45.TextSize = 16;
local Left_37 = Enum_TextXAlignment.Left;
TextLabel_45.TextXAlignment = Left_37;
local Color3_Value_324 = Color3_FromRGB(255, 255, 255);
TextLabel_45.BackgroundColor3 = Color3_Value_324;
local New_52 = Font.new;
local Bold_44 = Enum_FontWeight.Bold;
local Normal_52 = Enum_FontStyle.Normal;
local _call250 = New_52("rbxasset://fonts/families/FredokaOne.json", Bold_44, Normal_52);
TextLabel_45.FontFace = _call250;
local Color3_Value_325 = Color3_FromRGB(255, 255, 255);
TextLabel_45.TextColor3 = Color3_Value_325;
TextLabel_45.BackgroundTransparency = 1;
TextLabel_45.RichText = true;
local UDim2_Value_213 = UDim2_New(0, 433, 0, 64);
TextLabel_45.Size = UDim2_Value_213;
local Color3_Value_326 = Color3_FromRGB(255, 255, 255);
TextLabel_45.BorderColor3 = Color3_Value_326;
TextLabel_45.Text = "<font color='rgb(255,255,0)'>自然灾害模拟器</font><br/>这个游戏不需要独立的脚本，通用飞行，通用踢飞，触摸踢飞搭配使用即可";
local Y_46 = Enum_AutomaticSize.Y;
TextLabel_45.AutomaticSize = Y_46;
TextLabel_45.Name = "脚本介绍";
local UDim2_Value_214 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_45.Position = UDim2_Value_214;
local LocalScript_109 = Instance.new("LocalScript");
LocalScript_109.Parent = TextLabel_45;
LocalScript_109.Name = "文字设定";
local UICorner_39 = Instance.new("UICorner");
UICorner_39.Parent = ImageButton_35;
local UDim_Value_42 = UDim_New(0, 16);
UICorner_39.CornerRadius = UDim_Value_42;
local ImageButton_36 = Instance.new("ImageButton");
ImageButton_36.Parent = ScrollingFrame_6;
ImageButton_36.BorderSizePixel = 0;
local Color3_Value_327 = Color3_FromRGB(255, 255, 255);
ImageButton_36.BackgroundColor3 = Color3_Value_327;
ImageButton_36.Image = "rbxassetid://15158577758";
local UDim2_Value_215 = UDim2_New(0, 64, 0, 64);
ImageButton_36.Size = UDim2_Value_215;
local Color3_Value_328 = Color3_FromRGB(0, 0, 0);
ImageButton_36.BorderColor3 = Color3_Value_328;
ImageButton_36.Name = "监狱人生";
local UDim2_Value_216 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_36.Position = UDim2_Value_216;
local TextLabel_46 = Instance.new("TextLabel");
TextLabel_46.Parent = ImageButton_36;
TextLabel_46.TextWrapped = true;
TextLabel_46.BorderSizePixel = 0;
TextLabel_46.TextSize = 16;
local Left_38 = Enum_TextXAlignment.Left;
TextLabel_46.TextXAlignment = Left_38;
local Color3_Value_329 = Color3_FromRGB(255, 255, 255);
TextLabel_46.BackgroundColor3 = Color3_Value_329;
local New_53 = Font.new;
local Bold_45 = Enum_FontWeight.Bold;
local Normal_53 = Enum_FontStyle.Normal;
local _call255 = New_53("rbxasset://fonts/families/FredokaOne.json", Bold_45, Normal_53);
TextLabel_46.FontFace = _call255;
local Color3_Value_330 = Color3_FromRGB(255, 255, 255);
TextLabel_46.TextColor3 = Color3_Value_330;
TextLabel_46.BackgroundTransparency = 1;
TextLabel_46.RichText = true;
local UDim2_Value_217 = UDim2_New(0, 433, 0, 64);
TextLabel_46.Size = UDim2_Value_217;
local Color3_Value_331 = Color3_FromRGB(255, 255, 255);
TextLabel_46.BorderColor3 = Color3_Value_331;
TextLabel_46.Text = "<font color='rgb(255,255,0)'>监狱人生</font><font color='rgb(255,0,0)'>（调试中）</font><br/>自动获得枪械，杀戮光环，传送加速";
local Y_47 = Enum_AutomaticSize.Y;
TextLabel_46.AutomaticSize = Y_47;
TextLabel_46.Name = "脚本介绍";
local UDim2_Value_218 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_46.Position = UDim2_Value_218;
local LocalScript_110 = Instance.new("LocalScript");
LocalScript_110.Parent = TextLabel_46;
LocalScript_110.Name = "文字设定";
local UICorner_40 = Instance.new("UICorner");
UICorner_40.Parent = ImageButton_36;
local UDim_Value_43 = UDim_New(0, 16);
UICorner_40.CornerRadius = UDim_Value_43;
local LocalScript_111 = Instance.new("LocalScript");
LocalScript_111.Parent = ImageButton_36;
LocalScript_111.Name = "密钥验证";
local ImageButton_37 = Instance.new("ImageButton");
ImageButton_37.Parent = ScrollingFrame_6;
ImageButton_37.BorderSizePixel = 0;
local Color3_Value_332 = Color3_FromRGB(255, 255, 255);
ImageButton_37.BackgroundColor3 = Color3_Value_332;
ImageButton_37.Image = "rbxassetid://119122088865300";
local UDim2_Value_219 = UDim2_New(0, 64, 0, 64);
ImageButton_37.Size = UDim2_Value_219;
local Color3_Value_333 = Color3_FromRGB(0, 0, 0);
ImageButton_37.BorderColor3 = Color3_Value_333;
ImageButton_37.Name = "造船寻宝";
local UDim2_Value_220 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_37.Position = UDim2_Value_220;
local TextLabel_47 = Instance.new("TextLabel");
TextLabel_47.Parent = ImageButton_37;
TextLabel_47.TextWrapped = true;
TextLabel_47.BorderSizePixel = 0;
TextLabel_47.TextSize = 16;
local Left_39 = Enum_TextXAlignment.Left;
TextLabel_47.TextXAlignment = Left_39;
local Color3_Value_334 = Color3_FromRGB(255, 255, 255);
TextLabel_47.BackgroundColor3 = Color3_Value_334;
local New_54 = Font.new;
local Bold_46 = Enum_FontWeight.Bold;
local Normal_54 = Enum_FontStyle.Normal;
local _call260 = New_54("rbxasset://fonts/families/FredokaOne.json", Bold_46, Normal_54);
TextLabel_47.FontFace = _call260;
local Color3_Value_335 = Color3_FromRGB(255, 255, 255);
TextLabel_47.TextColor3 = Color3_Value_335;
TextLabel_47.BackgroundTransparency = 1;
TextLabel_47.RichText = true;
local UDim2_Value_221 = UDim2_New(0, 433, 0, 64);
TextLabel_47.Size = UDim2_Value_221;
local Color3_Value_336 = Color3_FromRGB(255, 255, 255);
TextLabel_47.BorderColor3 = Color3_Value_336;
TextLabel_47.Text = "<font color='rgb(255,255,0)'>造船寻宝</font><br/>无需造船，飞到终点获得金币和奖励";
local Y_48 = Enum_AutomaticSize.Y;
TextLabel_47.AutomaticSize = Y_48;
TextLabel_47.Name = "脚本介绍";
local UDim2_Value_222 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_47.Position = UDim2_Value_222;
local LocalScript_112 = Instance.new("LocalScript");
LocalScript_112.Parent = TextLabel_47;
LocalScript_112.Name = "文字设定";
local UICorner_41 = Instance.new("UICorner");
UICorner_41.Parent = ImageButton_37;
local UDim_Value_44 = UDim_New(0, 16);
UICorner_41.CornerRadius = UDim_Value_44;
local LocalScript_113 = Instance.new("LocalScript");
LocalScript_113.Parent = ImageButton_37;
LocalScript_113.Name = "密钥验证";
local ImageButton_38 = Instance.new("ImageButton");
ImageButton_38.Parent = ScrollingFrame_6;
ImageButton_38.BorderSizePixel = 0;
local Color3_Value_337 = Color3_FromRGB(255, 255, 255);
ImageButton_38.BackgroundColor3 = Color3_Value_337;
ImageButton_38.Image = "rbxassetid://138536687489735";
local UDim2_Value_223 = UDim2_New(0, 64, 0, 64);
ImageButton_38.Size = UDim2_Value_223;
local Color3_Value_338 = Color3_FromRGB(0, 0, 0);
ImageButton_38.BorderColor3 = Color3_Value_338;
ImageButton_38.Name = "吃掉世界";
local UDim2_Value_224 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_38.Position = UDim2_Value_224;
local TextLabel_48 = Instance.new("TextLabel");
TextLabel_48.Parent = ImageButton_38;
TextLabel_48.TextWrapped = true;
TextLabel_48.BorderSizePixel = 0;
TextLabel_48.TextSize = 16;
local Left_40 = Enum_TextXAlignment.Left;
TextLabel_48.TextXAlignment = Left_40;
local Color3_Value_339 = Color3_FromRGB(255, 255, 255);
TextLabel_48.BackgroundColor3 = Color3_Value_339;
local New_55 = Font.new;
local Bold_47 = Enum_FontWeight.Bold;
local Normal_55 = Enum_FontStyle.Normal;
local _call265 = New_55("rbxasset://fonts/families/FredokaOne.json", Bold_47, Normal_55);
TextLabel_48.FontFace = _call265;
local Color3_Value_340 = Color3_FromRGB(255, 255, 255);
TextLabel_48.TextColor3 = Color3_Value_340;
TextLabel_48.BackgroundTransparency = 1;
TextLabel_48.RichText = true;
local UDim2_Value_225 = UDim2_New(0, 433, 0, 64);
TextLabel_48.Size = UDim2_Value_225;
local Color3_Value_341 = Color3_FromRGB(255, 255, 255);
TextLabel_48.BorderColor3 = Color3_Value_341;
TextLabel_48.Text = "<font color='rgb(255,255,0)'>吃掉世界</font><br/>自动吃，一键出售<br/>搭配通用踢飞脚本更欢乐";
local Y_49 = Enum_AutomaticSize.Y;
TextLabel_48.AutomaticSize = Y_49;
TextLabel_48.Name = "脚本介绍";
local UDim2_Value_226 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_48.Position = UDim2_Value_226;
local LocalScript_114 = Instance.new("LocalScript");
LocalScript_114.Parent = TextLabel_48;
LocalScript_114.Name = "文字设定";
local UICorner_42 = Instance.new("UICorner");
UICorner_42.Parent = ImageButton_38;
local UDim_Value_45 = UDim_New(0, 16);
UICorner_42.CornerRadius = UDim_Value_45;
local LocalScript_115 = Instance.new("LocalScript");
LocalScript_115.Parent = ImageButton_38;
LocalScript_115.Name = "密钥验证";
local ImageButton_39 = Instance.new("ImageButton");
ImageButton_39.Parent = ScrollingFrame_6;
ImageButton_39.BorderSizePixel = 0;
local Color3_Value_342 = Color3_FromRGB(255, 255, 255);
ImageButton_39.BackgroundColor3 = Color3_Value_342;
ImageButton_39.Image = "rbxassetid://15143633113";
local UDim2_Value_227 = UDim2_New(0, 64, 0, 64);
ImageButton_39.Size = UDim2_Value_227;
local Color3_Value_343 = Color3_FromRGB(0, 0, 0);
ImageButton_39.BorderColor3 = Color3_Value_343;
ImageButton_39.Name = "勘探中";
local UDim2_Value_228 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_39.Position = UDim2_Value_228;
local TextLabel_49 = Instance.new("TextLabel");
TextLabel_49.Parent = ImageButton_39;
TextLabel_49.TextWrapped = true;
TextLabel_49.BorderSizePixel = 0;
TextLabel_49.TextSize = 16;
local Left_41 = Enum_TextXAlignment.Left;
TextLabel_49.TextXAlignment = Left_41;
local Color3_Value_344 = Color3_FromRGB(255, 255, 255);
TextLabel_49.BackgroundColor3 = Color3_Value_344;
local New_56 = Font.new;
local Bold_48 = Enum_FontWeight.Bold;
local Normal_56 = Enum_FontStyle.Normal;
local _call270 = New_56("rbxasset://fonts/families/FredokaOne.json", Bold_48, Normal_56);
TextLabel_49.FontFace = _call270;
local Color3_Value_345 = Color3_FromRGB(255, 255, 255);
TextLabel_49.TextColor3 = Color3_Value_345;
TextLabel_49.BackgroundTransparency = 1;
TextLabel_49.RichText = true;
local UDim2_Value_229 = UDim2_New(0, 433, 0, 64);
TextLabel_49.Size = UDim2_Value_229;
local Color3_Value_346 = Color3_FromRGB(255, 255, 255);
TextLabel_49.BorderColor3 = Color3_Value_346;
TextLabel_49.Text = "<font color='rgb(255,255,0)'>勘探中</font><br/>设置挖沙和淘金坐标，自动在坐标位置挖沙淘金，自动出售";
local Y_50 = Enum_AutomaticSize.Y;
TextLabel_49.AutomaticSize = Y_50;
TextLabel_49.Name = "脚本介绍";
local UDim2_Value_230 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_49.Position = UDim2_Value_230;
local LocalScript_116 = Instance.new("LocalScript");
LocalScript_116.Parent = TextLabel_49;
LocalScript_116.Name = "文字设定";
local UICorner_43 = Instance.new("UICorner");
UICorner_43.Parent = ImageButton_39;
local UDim_Value_46 = UDim_New(0, 16);
UICorner_43.CornerRadius = UDim_Value_46;
local LocalScript_117 = Instance.new("LocalScript");
LocalScript_117.Parent = ImageButton_39;
LocalScript_117.Name = "密钥验证";
local ImageButton_40 = Instance.new("ImageButton");
ImageButton_40.Parent = ScrollingFrame_6;
ImageButton_40.BorderSizePixel = 0;
local Color3_Value_347 = Color3_FromRGB(255, 255, 255);
ImageButton_40.BackgroundColor3 = Color3_Value_347;
ImageButton_40.Image = "rbxassetid://70803651014944";
local UDim2_Value_231 = UDim2_New(0, 64, 0, 64);
ImageButton_40.Size = UDim2_Value_231;
local Color3_Value_348 = Color3_FromRGB(0, 0, 0);
ImageButton_40.BorderColor3 = Color3_Value_348;
ImageButton_40.Name = "竞争对手";
local UDim2_Value_232 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_40.Position = UDim2_Value_232;
local TextLabel_50 = Instance.new("TextLabel");
TextLabel_50.Parent = ImageButton_40;
TextLabel_50.TextWrapped = true;
TextLabel_50.BorderSizePixel = 0;
TextLabel_50.TextSize = 16;
local Left_42 = Enum_TextXAlignment.Left;
TextLabel_50.TextXAlignment = Left_42;
local Color3_Value_349 = Color3_FromRGB(255, 255, 255);
TextLabel_50.BackgroundColor3 = Color3_Value_349;
local New_57 = Font.new;
local Bold_49 = Enum_FontWeight.Bold;
local Normal_57 = Enum_FontStyle.Normal;
local _call275 = New_57("rbxasset://fonts/families/FredokaOne.json", Bold_49, Normal_57);
TextLabel_50.FontFace = _call275;
local Color3_Value_350 = Color3_FromRGB(255, 255, 255);
TextLabel_50.TextColor3 = Color3_Value_350;
TextLabel_50.BackgroundTransparency = 1;
TextLabel_50.RichText = true;
local UDim2_Value_233 = UDim2_New(0, 433, 0, 64);
TextLabel_50.Size = UDim2_Value_233;
local Color3_Value_351 = Color3_FromRGB(255, 255, 255);
TextLabel_50.BorderColor3 = Color3_Value_351;
TextLabel_50.Text = "<font color='rgb(255,255,0)'>竞争对手</font><br/>用通用自瞄脚本即可，最好使用电脑端";
local Y_51 = Enum_AutomaticSize.Y;
TextLabel_50.AutomaticSize = Y_51;
TextLabel_50.Name = "脚本介绍";
local UDim2_Value_234 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_50.Position = UDim2_Value_234;
local LocalScript_118 = Instance.new("LocalScript");
LocalScript_118.Parent = TextLabel_50;
LocalScript_118.Name = "文字设定";
local UICorner_44 = Instance.new("UICorner");
UICorner_44.Parent = ImageButton_40;
local UDim_Value_47 = UDim_New(0, 16);
UICorner_44.CornerRadius = UDim_Value_47;
local ImageButton_41 = Instance.new("ImageButton");
ImageButton_41.Parent = ScrollingFrame_6;
ImageButton_41.BorderSizePixel = 0;
local Color3_Value_352 = Color3_FromRGB(255, 255, 255);
ImageButton_41.BackgroundColor3 = Color3_Value_352;
ImageButton_41.Image = "rbxassetid://17228729998";
local UDim2_Value_235 = UDim2_New(0, 64, 0, 64);
ImageButton_41.Size = UDim2_Value_235;
local Color3_Value_353 = Color3_FromRGB(0, 0, 0);
ImageButton_41.BorderColor3 = Color3_Value_353;
ImageButton_41.Name = "建造一架飞机";
local UDim2_Value_236 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_41.Position = UDim2_Value_236;
local TextLabel_51 = Instance.new("TextLabel");
TextLabel_51.Parent = ImageButton_41;
TextLabel_51.TextWrapped = true;
TextLabel_51.BorderSizePixel = 0;
TextLabel_51.TextSize = 16;
local Left_43 = Enum_TextXAlignment.Left;
TextLabel_51.TextXAlignment = Left_43;
local Color3_Value_354 = Color3_FromRGB(255, 255, 255);
TextLabel_51.BackgroundColor3 = Color3_Value_354;
local New_58 = Font.new;
local Bold_50 = Enum_FontWeight.Bold;
local Normal_58 = Enum_FontStyle.Normal;
local _call280 = New_58("rbxasset://fonts/families/FredokaOne.json", Bold_50, Normal_58);
TextLabel_51.FontFace = _call280;
local Color3_Value_355 = Color3_FromRGB(255, 255, 255);
TextLabel_51.TextColor3 = Color3_Value_355;
TextLabel_51.BackgroundTransparency = 1;
TextLabel_51.RichText = true;
local UDim2_Value_237 = UDim2_New(0, 433, 0, 64);
TextLabel_51.Size = UDim2_Value_237;
local Color3_Value_356 = Color3_FromRGB(255, 255, 255);
TextLabel_51.BorderColor3 = Color3_Value_356;
TextLabel_51.Text = "<font color='rgb(255,255,0)'>建造一架飞机</font><br/>加速飞行，升高降低，无限飞行刷钱";
local Y_52 = Enum_AutomaticSize.Y;
TextLabel_51.AutomaticSize = Y_52;
TextLabel_51.Name = "脚本介绍";
local UDim2_Value_238 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_51.Position = UDim2_Value_238;
local LocalScript_119 = Instance.new("LocalScript");
LocalScript_119.Parent = TextLabel_51;
LocalScript_119.Name = "文字设定";
local UICorner_45 = Instance.new("UICorner");
UICorner_45.Parent = ImageButton_41;
local UDim_Value_48 = UDim_New(0, 16);
UICorner_45.CornerRadius = UDim_Value_48;
local LocalScript_120 = Instance.new("LocalScript");
LocalScript_120.Parent = ImageButton_41;
LocalScript_120.Name = "密钥验证";
local ImageButton_42 = Instance.new("ImageButton");
ImageButton_42.Parent = ScrollingFrame_6;
ImageButton_42.BorderSizePixel = 0;
local Color3_Value_357 = Color3_FromRGB(255, 255, 255);
ImageButton_42.BackgroundColor3 = Color3_Value_357;
ImageButton_42.Image = "rbxassetid://10702107551";
local UDim2_Value_239 = UDim2_New(0, 64, 0, 64);
ImageButton_42.Size = UDim2_Value_239;
local Color3_Value_358 = Color3_FromRGB(0, 0, 0);
ImageButton_42.BorderColor3 = Color3_Value_358;
ImageButton_42.Name = "砍伐树木";
local UDim2_Value_240 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_42.Position = UDim2_Value_240;
local TextLabel_52 = Instance.new("TextLabel");
TextLabel_52.Parent = ImageButton_42;
TextLabel_52.TextWrapped = true;
TextLabel_52.BorderSizePixel = 0;
TextLabel_52.TextSize = 16;
local Left_44 = Enum_TextXAlignment.Left;
TextLabel_52.TextXAlignment = Left_44;
local Color3_Value_359 = Color3_FromRGB(255, 255, 255);
TextLabel_52.BackgroundColor3 = Color3_Value_359;
local New_59 = Font.new;
local Bold_51 = Enum_FontWeight.Bold;
local Normal_59 = Enum_FontStyle.Normal;
local _call285 = New_59("rbxasset://fonts/families/FredokaOne.json", Bold_51, Normal_59);
TextLabel_52.FontFace = _call285;
local Color3_Value_360 = Color3_FromRGB(255, 255, 255);
TextLabel_52.TextColor3 = Color3_Value_360;
TextLabel_52.BackgroundTransparency = 1;
TextLabel_52.RichText = true;
local UDim2_Value_241 = UDim2_New(0, 433, 0, 64);
TextLabel_52.Size = UDim2_Value_241;
local Color3_Value_361 = Color3_FromRGB(255, 255, 255);
TextLabel_52.BorderColor3 = Color3_Value_361;
TextLabel_52.Text = "<font color='rgb(255,255,0)'>砍伐树木</font><br/>自动获取全图宝箱，可选择宝箱等级";
local Y_53 = Enum_AutomaticSize.Y;
TextLabel_52.AutomaticSize = Y_53;
TextLabel_52.Name = "脚本介绍";
local UDim2_Value_242 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_52.Position = UDim2_Value_242;
local LocalScript_121 = Instance.new("LocalScript");
LocalScript_121.Parent = TextLabel_52;
LocalScript_121.Name = "文字设定";
local UICorner_46 = Instance.new("UICorner");
UICorner_46.Parent = ImageButton_42;
local UDim_Value_49 = UDim_New(0, 16);
UICorner_46.CornerRadius = UDim_Value_49;
local LocalScript_122 = Instance.new("LocalScript");
LocalScript_122.Parent = ImageButton_42;
LocalScript_122.Name = "密钥验证";
local ImageButton_43 = Instance.new("ImageButton");
ImageButton_43.Parent = ScrollingFrame_6;
ImageButton_43.BorderSizePixel = 0;
local Color3_Value_362 = Color3_FromRGB(255, 255, 255);
ImageButton_43.BackgroundColor3 = Color3_Value_362;
ImageButton_43.Image = "rbxassetid://18908033895";
local UDim2_Value_243 = UDim2_New(0, 64, 0, 64);
ImageButton_43.Size = UDim2_Value_243;
local Color3_Value_363 = Color3_FromRGB(0, 0, 0);
ImageButton_43.BorderColor3 = Color3_Value_363;
ImageButton_43.Name = "打屁股战斗";
local UDim2_Value_244 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_43.Position = UDim2_Value_244;
local TextLabel_53 = Instance.new("TextLabel");
TextLabel_53.Parent = ImageButton_43;
TextLabel_53.TextWrapped = true;
TextLabel_53.BorderSizePixel = 0;
TextLabel_53.TextSize = 16;
local Left_45 = Enum_TextXAlignment.Left;
TextLabel_53.TextXAlignment = Left_45;
local Color3_Value_364 = Color3_FromRGB(255, 255, 255);
TextLabel_53.BackgroundColor3 = Color3_Value_364;
local New_60 = Font.new;
local Bold_52 = Enum_FontWeight.Bold;
local Normal_60 = Enum_FontStyle.Normal;
local _call290 = New_60("rbxasset://fonts/families/FredokaOne.json", Bold_52, Normal_60);
TextLabel_53.FontFace = _call290;
local Color3_Value_365 = Color3_FromRGB(255, 255, 255);
TextLabel_53.TextColor3 = Color3_Value_365;
TextLabel_53.BackgroundTransparency = 1;
TextLabel_53.RichText = true;
local UDim2_Value_245 = UDim2_New(0, 433, 0, 64);
TextLabel_53.Size = UDim2_Value_245;
local Color3_Value_366 = Color3_FromRGB(255, 255, 255);
TextLabel_53.BorderColor3 = Color3_Value_366;
TextLabel_53.Text = "<font color='rgb(255,255,0)'>打屁股战斗</font><br/>直接获得超大双手套，不会掉出地图外";
local Y_54 = Enum_AutomaticSize.Y;
TextLabel_53.AutomaticSize = Y_54;
TextLabel_53.Name = "脚本介绍";
local UDim2_Value_246 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_53.Position = UDim2_Value_246;
local LocalScript_123 = Instance.new("LocalScript");
LocalScript_123.Parent = TextLabel_53;
LocalScript_123.Name = "文字设定";
local UICorner_47 = Instance.new("UICorner");
UICorner_47.Parent = ImageButton_43;
local UDim_Value_50 = UDim_New(0, 16);
UICorner_47.CornerRadius = UDim_Value_50;
local LocalScript_124 = Instance.new("LocalScript");
LocalScript_124.Parent = ImageButton_43;
LocalScript_124.Name = "密钥验证";
local ImageButton_44 = Instance.new("ImageButton");
ImageButton_44.Parent = ScrollingFrame_6;
ImageButton_44.BorderSizePixel = 0;
local Color3_Value_367 = Color3_FromRGB(255, 255, 255);
ImageButton_44.BackgroundColor3 = Color3_Value_367;
ImageButton_44.Image = "rbxassetid://133278360723189";
local UDim2_Value_247 = UDim2_New(0, 64, 0, 64);
ImageButton_44.Size = UDim2_Value_247;
local Color3_Value_368 = Color3_FromRGB(0, 0, 0);
ImageButton_44.BorderColor3 = Color3_Value_368;
ImageButton_44.Name = "逃出海啸获得脑力";
local UDim2_Value_248 = UDim2_New(0, 0, 0.26016, 0);
ImageButton_44.Position = UDim2_Value_248;
local TextLabel_54 = Instance.new("TextLabel");
TextLabel_54.Parent = ImageButton_44;
TextLabel_54.TextWrapped = true;
TextLabel_54.BorderSizePixel = 0;
TextLabel_54.TextSize = 16;
local Left_46 = Enum_TextXAlignment.Left;
TextLabel_54.TextXAlignment = Left_46;
local Color3_Value_369 = Color3_FromRGB(255, 255, 255);
TextLabel_54.BackgroundColor3 = Color3_Value_369;
local New_61 = Font.new;
local Bold_53 = Enum_FontWeight.Bold;
local Normal_61 = Enum_FontStyle.Normal;
local _call295 = New_61("rbxasset://fonts/families/FredokaOne.json", Bold_53, Normal_61);
TextLabel_54.FontFace = _call295;
local Color3_Value_370 = Color3_FromRGB(255, 255, 255);
TextLabel_54.TextColor3 = Color3_Value_370;
TextLabel_54.BackgroundTransparency = 1;
TextLabel_54.RichText = true;
local UDim2_Value_249 = UDim2_New(0, 433, 0, 64);
TextLabel_54.Size = UDim2_Value_249;
local Color3_Value_371 = Color3_FromRGB(255, 255, 255);
TextLabel_54.BorderColor3 = Color3_Value_371;
TextLabel_54.Text = "<font color='rgb(255,255,0)'>逃出海啸获得脑力</font><br/>删除海啸，自动获取最高级脑力，自动收钱";
local Y_55 = Enum_AutomaticSize.Y;
TextLabel_54.AutomaticSize = Y_55;
TextLabel_54.Name = "脚本介绍";
local UDim2_Value_250 = UDim2_New(1.26563, 0, 0, 0);
TextLabel_54.Position = UDim2_Value_250;
local LocalScript_125 = Instance.new("LocalScript");
LocalScript_125.Parent = TextLabel_54;
LocalScript_125.Name = "文字设定";
local UICorner_48 = Instance.new("UICorner");
UICorner_48.Parent = ImageButton_44;
local UDim_Value_51 = UDim_New(0, 16);
UICorner_48.CornerRadius = UDim_Value_51;
local LocalScript_126 = Instance.new("LocalScript");
LocalScript_126.Parent = ImageButton_44;
LocalScript_126.Name = "密钥验证";
local TextButton_8 = Instance.new("TextButton");
TextButton_8.Parent = Frame;
TextButton_8.TextWrapped = true;
TextButton_8.RichText = true;
TextButton_8.BorderSizePixel = 0;
TextButton_8.TextSize = 14;
local Color3_Value_372 = Color3_FromRGB(255, 255, 255);
TextButton_8.TextColor3 = Color3_Value_372;
local Color3_Value_373 = Color3_FromRGB(255, 255, 255);
TextButton_8.BackgroundColor3 = Color3_Value_373;
local New_62 = Font.new;
local Bold_54 = Enum_FontWeight.Bold;
local Normal_62 = Enum_FontStyle.Normal;
local _call299 = New_62("rbxasset://fonts/families/FredokaOne.json", Bold_54, Normal_62);
TextButton_8.FontFace = _call299;
TextButton_8.BackgroundTransparency = 1;
local Y_56 = Enum_AutomaticSize.Y;
TextButton_8.AutomaticSize = Y_56;
local UDim2_Value_251 = UDim2_New(0, 23, 0, 23);
TextButton_8.Size = UDim2_Value_251;
local Color3_Value_374 = Color3_FromRGB(0, 0, 0);
TextButton_8.BorderColor3 = Color3_Value_374;
TextButton_8.Text = "一";
TextButton_8.Name = "最小化窗口";
local UDim2_Value_252 = UDim2_New(0.88889, 0, 0.02981, 0);
TextButton_8.Position = UDim2_Value_252;
local LocalScript_127 = Instance.new("LocalScript");
LocalScript_127.Parent = TextButton_8;
LocalScript_127.Name = "文字设定";
local ImageButton_45 = Instance.new("ImageButton");
ImageButton_45.Parent = ScreenGui;
ImageButton_45.BorderSizePixel = 0;
ImageButton_45.Visible = false;
local Color3_Value_375 = Color3_FromRGB(255, 255, 255);
ImageButton_45.BackgroundColor3 = Color3_Value_375;
ImageButton_45.Image = "rbxassetid://138288475364166";
local UDim2_Value_253 = UDim2_New(0, 36, 0, 36);
ImageButton_45.Size = UDim2_Value_253;
local Color3_Value_376 = Color3_FromRGB(0, 0, 0);
ImageButton_45.BorderColor3 = Color3_Value_376;
ImageButton_45.Name = "展开窗口";
local UDim2_Value_254 = UDim2_New(0.2509, 0, 0.22124, 0);
ImageButton_45.Position = UDim2_Value_254;
local UICorner_49 = Instance.new("UICorner");
UICorner_49.Parent = ImageButton_45;
local LocalScript_128 = Instance.new("LocalScript");
LocalScript_128.Parent = ImageButton_45;
LocalScript_128.Name = "拖动";
local LocalScript_129 = Instance.new("LocalScript");
LocalScript_129.Parent = ScreenGui;
LocalScript_129.Name = "最小化窗口";
local Spawned = task.spawn(function()
    local Parent = LocalScript.Parent;
    local UIStroke = Instance.new("UIStroke");
    UIStroke.Parent = Parent;
    UIStroke.Thickness = 1;
    local Color3_New = Color3.new;
    local Color3_Value_377 = Color3_New(1, 1, 1);
    UIStroke.Color = Color3_Value_377;
    local UIGradient_10 = Instance.new("UIGradient");
    UIGradient_10.Parent = UIStroke;
    local Color3_Value_378 = Color3_New(1, 1, 1);
    local ColorSequenceKeypoint_Value_55 = ColorSequenceKeypoint_New(0, Color3_Value_378);
    local Color3_Value_379 = Color3_FromRGB(255, 255, 55);
    local ColorSequenceKeypoint_Value_56 = ColorSequenceKeypoint_New(0.25, Color3_Value_379);
    local Color3_Value_380 = Color3_FromRGB(255, 255, 0);
    local ColorSequenceKeypoint_Value_57 = ColorSequenceKeypoint_New(0.5, Color3_Value_380);
    local Color3_Value_381 = Color3_FromRGB(255, 255, 55);
    local ColorSequenceKeypoint_Value_58 = ColorSequenceKeypoint_New(0.75, Color3_Value_381);
    local Color3_Value_382 = Color3_New(1, 1, 1);
    local ColorSequenceKeypoint_Value_59 = ColorSequenceKeypoint_New(1, Color3_Value_382);
    local ColorSequence_Value_10 = ColorSequence_New({
        ColorSequenceKeypoint_Value_55,
        ColorSequenceKeypoint_Value_56,
        ColorSequenceKeypoint_Value_57,
        ColorSequenceKeypoint_Value_58,
        ColorSequenceKeypoint_Value_59,
    });
    UIGradient_10.Color = ColorSequence_Value_10;
    local TweenService = game:GetService("TweenService");
    local TweenInfo = TweenInfo;
    local New_63 = TweenInfo.new;
    local Enum_EasingStyle = Enum.EasingStyle;
    local Linear = Enum_EasingStyle.Linear;
    local Enum_EasingDirection = Enum.EasingDirection;
    local In = Enum_EasingDirection.In;
    local _call303 = New_63(3, Linear, In, -1);
    local Vector2_Value_2 = Vector2_New(1, 0);
    local str = TweenService:Create(UIGradient_10, _call303, {
        Offset = Vector2_Value_2,
    });
    local Play = str.Play;
    local Play_2 = str:Play();
    local UserInputService = game:GetService("UserInputService");
    local Connection;
    Connection = Frame.InputBegan:Connect(function(Input) -- args: Input_2;
        local UserInputType = Input.UserInputType;
        local Enum_UserInputType = Enum.UserInputType;
        local MouseButton1 = Enum_UserInputType.MouseButton1;
        local var425 = (UserInputType == MouseButton1);
        -- false, eq id 1
        local UserInputType_2 = Input.UserInputType;
        local Touch = Enum_UserInputType.Touch;
        local var427 = (UserInputType_2 == Touch);
        -- false, eq id 2
        local var428 = (var425 or var427); -- false
        if var428 then -- didnt run, expr id 1, has no else.
        end

    end);
    local Connection_2;
    Connection_2 = Frame.InputChanged:Connect(function(Input_3) -- args: Input_4;
        local UserInputType_3 = Input_3.UserInputType;
        local MouseMovement = Enum_UserInputType.MouseMovement;
        local var430 = (UserInputType_3 == MouseMovement);
        -- false, eq id 3
        local UserInputType_4 = Input_3.UserInputType;
        local Touch_2 = Enum_UserInputType.Touch;
        local var432 = (UserInputType_4 == Touch_2);
        -- false, eq id 4
        local var433 = (var430 or var432); -- false
        if var433 then -- didnt run, expr id 2, has no else.
        end

    end);

end);
local Spawned_2 = task.spawn(function()
    local Parent_2 = LocalScript_2.Parent;
    local UIGradient_11 = Frame_2.UIGradient;
    local TweenService_2 = game:GetService("TweenService");
    local New_64 = TweenInfo.new;
    local Linear_2 = Enum_EasingStyle.Linear;
    local InOut = Enum_EasingDirection.InOut;
    local _call307 = New_64(3, Linear_2, InOut, -1, true);
    local Vector2_Value_3 = Vector2_New(-1, 0);
    local str_2 = TweenService:Create(UIGradient, _call307, {
        Offset = Vector2_Value_3,
    });
    local Play_3 = str_2.Play;
    local Play_4 = str_2:Play();

end);
local Spawned_3 = task.spawn(function()
    local Parent_3 = LocalScript_3.Parent;
    local UIGradient_12 = Frame_3.UIGradient;
    local TweenService_3 = game:GetService("TweenService");
    local New_65 = TweenInfo.new;
    local Linear_3 = Enum_EasingStyle.Linear;
    local InOut_2 = Enum_EasingDirection.InOut;
    local _call311 = New_65(3, Linear_3, InOut_2, -1, true);
    local Vector2_Value_4 = Vector2_New(0, -1);
    local str_3 = TweenService:Create(UIGradient_2, _call311, {
        Offset = Vector2_Value_4,
    });
    local Play_5 = str_3.Play;
    local Play_6 = str_3:Play();

end);
local Spawned_4 = task.spawn(function()
    local TweenService_4 = game:GetService("TweenService");
    local Parent_4 = LocalScript_4.Parent;
    local var313 = tick();
    local var314 = var313 % 5;
    -- 0.764609
    local var315 = var314 / 5;
    -- 0.152922
    local Color3_FromHSV = Color3.fromHSV;
    local Color3_Value_383 = Color3_FromHSV(var315, 1, 1);
    local New_66 = TweenInfo.new;
    local Sine = Enum_EasingStyle.Sine;
    local InOut_3 = Enum_EasingDirection.InOut;
    local _call318 = New_66(1.2, Sine, InOut_3);
    local str_4 = TweenService:Create(Parent_4, _call318, {
        TextColor3 = Color3_Value_383,
    });
    local Play_7 = str_4.Play;
    local Play_8 = str_4:Play();
    local Waited_For = task.wait(1.2);
    local var320 = tick();
    local var321 = var320 % 5;
    -- 0.778217
    local var322 = var321 / 5;
    -- 0.155643
    local Color3_Value_384 = Color3_FromHSV(var322, 1, 1);
    local New_67 = TweenInfo.new;
    local Sine_2 = Enum_EasingStyle.Sine;
    local InOut_4 = Enum_EasingDirection.InOut;
    local _call325 = New_67(1.2, Sine_2, InOut_4);
    local str_5 = TweenService:Create(Parent_4, _call325, {
        TextColor3 = Color3_Value_384,
    });
    local Play_9 = str_5.Play;
    local Play_10 = str_5:Play();
    local Waited_For_2 = task.wait(1.2);
    local var327 = tick();
    local var328 = var327 % 5;
    -- 0.790905
    local var329 = var328 / 5;
    -- 0.158181
    local Color3_Value_385 = Color3_FromHSV(var329, 1, 1);
    local New_68 = TweenInfo.new;
    local Sine_3 = Enum_EasingStyle.Sine;
    local InOut_5 = Enum_EasingDirection.InOut;
    local _call332 = New_68(1.2, Sine_3, InOut_5);
    local str_6 = TweenService:Create(Parent_4, _call332, {
        TextColor3 = Color3_Value_385,
    });
    local Play_11 = str_6.Play;
    local Play_12 = str_6:Play();
    local Waited_For_3 = task.wait(1.2);
    local var334 = tick();
    local var335 = var334 % 5;
    -- 0.803511
    local var336 = var335 / 5;
    -- 0.160702
    local Color3_Value_386 = Color3_FromHSV(var336, 1, 1);
    local New_69 = TweenInfo.new;
    local Sine_4 = Enum_EasingStyle.Sine;
    local InOut_6 = Enum_EasingDirection.InOut;
    local _call339 = New_69(1.2, Sine_4, InOut_6);
    local str_7 = TweenService:Create(Parent_4, _call339, {
        TextColor3 = Color3_Value_386,
    });
    local Play_13 = str_7.Play;
    local Play_14 = str_7:Play();
    local Waited_For_4 = task.wait(1.2);
    local var341 = tick();
    local var342 = var341 % 5;
    -- 0.816041
    local var343 = var342 / 5;
    -- 0.163208
    local Color3_Value_387 = Color3_FromHSV(var343, 1, 1);
    local New_70 = TweenInfo.new;
    local Sine_5 = Enum_EasingStyle.Sine;
    local InOut_7 = Enum_EasingDirection.InOut;
    local _call346 = New_70(1.2, Sine_5, InOut_7);
    local str_8 = TweenService:Create(Parent_4, _call346, {
        TextColor3 = Color3_Value_387,
    });
    local Play_15 = str_8.Play;
    local Play_16 = str_8:Play();
    local Waited_For_5 = task.wait(1.2);
    local var348 = tick();
    local var349 = var348 % 5;
    -- 0.828340
    local var350 = var349 / 5;
    -- 0.165668
    local Color3_Value_388 = Color3_FromHSV(var350, 1, 1);
    local New_71 = TweenInfo.new;
    local Sine_6 = Enum_EasingStyle.Sine;
    local InOut_8 = Enum_EasingDirection.InOut;
    local _call353 = New_71(1.2, Sine_6, InOut_8);
    local str_9 = TweenService:Create(Parent_4, _call353, {
        TextColor3 = Color3_Value_388,
    });
    local Play_17 = str_9.Play;
    local Play_18 = str_9:Play();
    local Waited_For_6 = task.wait(1.2);
    local var355 = tick();
    local var356 = var355 % 5;
    -- 0.841023
    local var357 = var356 / 5;
    -- 0.168205
    local Color3_Value_389 = Color3_FromHSV(var357, 1, 1);
    local New_72 = TweenInfo.new;
    local Sine_7 = Enum_EasingStyle.Sine;
    local InOut_9 = Enum_EasingDirection.InOut;
    local _call360 = New_72(1.2, Sine_7, InOut_9);
    local str_10 = TweenService:Create(Parent_4, _call360, {
        TextColor3 = Color3_Value_389,
    });
    local Play_19 = str_10.Play;
    local Play_20 = str_10:Play();
    local Waited_For_7 = task.wait(1.2);
    local var362 = tick();
    local var363 = var362 % 5;
    -- 0.853392
    local var364 = var363 / 5;
    -- 0.170678
    local Color3_Value_390 = Color3_FromHSV(var364, 1, 1);
    local New_73 = TweenInfo.new;
    local Sine_8 = Enum_EasingStyle.Sine;
    local InOut_10 = Enum_EasingDirection.InOut;
    local _call367 = New_73(1.2, Sine_8, InOut_10);
    local str_11 = TweenService:Create(Parent_4, _call367, {
        TextColor3 = Color3_Value_390,
    });
    local Play_21 = str_11.Play;
    local Play_22 = str_11:Play();
    local Waited_For_8 = task.wait(1.2);
    local var369 = tick();
    local var370 = var369 % 5;
    -- 0.865666
    local var371 = var370 / 5;
    -- 0.173133
    local Color3_Value_391 = Color3_FromHSV(var371, 1, 1);
    local New_74 = TweenInfo.new;
    local Sine_9 = Enum_EasingStyle.Sine;
    local InOut_11 = Enum_EasingDirection.InOut;
    local _call374 = New_74(1.2, Sine_9, InOut_11);
    local str_12 = TweenService:Create(Parent_4, _call374, {
        TextColor3 = Color3_Value_391,
    });
    local Play_23 = str_12.Play;
    local Play_24 = str_12:Play();
    local Waited_For_9 = task.wait(1.2);
    local var376 = tick();
    local var377 = var376 % 5;
    -- 0.877946
    local var378 = var377 / 5;
    -- 0.175589
    local Color3_Value_392 = Color3_FromHSV(var378, 1, 1);
    local New_75 = TweenInfo.new;
    local Sine_10 = Enum_EasingStyle.Sine;
    local InOut_12 = Enum_EasingDirection.InOut;
    local _call381 = New_75(1.2, Sine_10, InOut_12);
    local str_13 = TweenService:Create(Parent_4, _call381, {
        TextColor3 = Color3_Value_392,
    });
    local Play_25 = str_13.Play;
    local Play_26 = str_13:Play();
    local Waited_For_10 = task.wait(1.2);
    local var383 = tick();
    local var384 = var383 % 5;
    -- 0.890525
    local var385 = var384 / 5;
    -- 0.178105
    local Color3_Value_393 = Color3_FromHSV(var385, 1, 1);
    local New_76 = TweenInfo.new;
    local Sine_11 = Enum_EasingStyle.Sine;
    local InOut_13 = Enum_EasingDirection.InOut;
    local _call388 = New_76(1.2, Sine_11, InOut_13);
    local str_14 = TweenService:Create(Parent_4, _call388, {
        TextColor3 = Color3_Value_393,
    });
    local Play_27 = str_14.Play;
    local Play_28 = str_14:Play();
    local Waited_For_11 = task.wait(1.2);
    local var390 = tick();
    local var391 = var390 % 5;
    -- 0.903344
    local var392 = var391 / 5;
    -- 0.180669
    local Color3_Value_394 = Color3_FromHSV(var392, 1, 1);
    local New_77 = TweenInfo.new;
    local Sine_12 = Enum_EasingStyle.Sine;
    local InOut_14 = Enum_EasingDirection.InOut;
    local _call395 = New_77(1.2, Sine_12, InOut_14);
    local str_15 = TweenService:Create(Parent_4, _call395, {
        TextColor3 = Color3_Value_394,
    });
    local Play_29 = str_15.Play;
    local Play_30 = str_15:Play();
    local Waited_For_12 = task.wait(1.2);
    local var397 = tick();
    local var398 = var397 % 5;
    -- 0.916123
    local var399 = var398 / 5;
    -- 0.183225
    local Color3_Value_395 = Color3_FromHSV(var399, 1, 1);
    local New_78 = TweenInfo.new;
    local Sine_13 = Enum_EasingStyle.Sine;
    local InOut_15 = Enum_EasingDirection.InOut;
    local _call402 = New_78(1.2, Sine_13, InOut_15);
    local str_16 = TweenService:Create(Parent_4, _call402, {
        TextColor3 = Color3_Value_395,
    });
    local Play_31 = str_16.Play;
    local Play_32 = str_16:Play();
    local Waited_For_13 = task.wait(1.2);
    local var404 = tick();
    local var405 = var404 % 5;
    -- 0.928725
    local var406 = var405 / 5;
    -- 0.185745
    local Color3_Value_396 = Color3_FromHSV(var406, 1, 1);
    local New_79 = TweenInfo.new;
    local Sine_14 = Enum_EasingStyle.Sine;
    local InOut_16 = Enum_EasingDirection.InOut;
    local _call409 = New_79(1.2, Sine_14, InOut_16);
    local str_17 = TweenService:Create(Parent_4, _call409, {
        TextColor3 = Color3_Value_396,
    });
    local Play_33 = str_17.Play;
    local Play_34 = str_17:Play();
    local Waited_For_14 = task.wait(1.2);
    local var411 = tick();
    local var412 = var411 % 5;
    -- 0.941254
    local var413 = var412 / 5;
    -- 0.188251
    local Color3_Value_397 = Color3_FromHSV(var413, 1, 1);
    local New_80 = TweenInfo.new;
    local Sine_15 = Enum_EasingStyle.Sine;
    local InOut_17 = Enum_EasingDirection.InOut;
    local _call416 = New_80(1.2, Sine_15, InOut_17);
    local str_18 = TweenService:Create(Parent_4, _call416, {
        TextColor3 = Color3_Value_397,
    });
    local Play_35 = str_18.Play;
    local Play_36 = str_18:Play();
    local Waited_For_15 = task.wait(1.2);
    local var418 = tick();
    local var419 = var418 % 5;
    -- 0.953573
    local var420 = var419 / 5;
    -- 0.190715
    local Color3_Value_398 = Color3_FromHSV(var420, 1, 1);
    local New_81 = TweenInfo.new;
    local Sine_16 = Enum_EasingStyle.Sine;
    local InOut_18 = Enum_EasingDirection.InOut;
    local _call423 = New_81(1.2, Sine_16, InOut_18);
    local str_19 = TweenService:Create(Parent_4, _call423, {
        TextColor3 = Color3_Value_398,
    });
    local Play_37 = str_19.Play;
    local Play_38 = str_19:Play();
    local Waited_For_16 = task.wait(1.2);
    local var425 = tick();
    local var426 = var425 % 5;
    -- 0.966008
    local var427 = var426 / 5;
    -- 0.193202
    local Color3_Value_399 = Color3_FromHSV(var427, 1, 1);
    local New_82 = TweenInfo.new;
    local Sine_17 = Enum_EasingStyle.Sine;
    local InOut_19 = Enum_EasingDirection.InOut;
    local _call430 = New_82(1.2, Sine_17, InOut_19);
    local str_20 = TweenService:Create(Parent_4, _call430, {
        TextColor3 = Color3_Value_399,
    });
    local Play_39 = str_20.Play;
    local Play_40 = str_20:Play();
    local Waited_For_17 = task.wait(1.2);
    local var432 = tick();
    local var433 = var432 % 5;
    -- 0.978426
    local var434 = var433 / 5;
    -- 0.195685
    local Color3_Value_400 = Color3_FromHSV(var434, 1, 1);
    local New_83 = TweenInfo.new;
    local Sine_18 = Enum_EasingStyle.Sine;
    local InOut_20 = Enum_EasingDirection.InOut;
    local _call437 = New_83(1.2, Sine_18, InOut_20);
    local str_21 = TweenService:Create(Parent_4, _call437, {
        TextColor3 = Color3_Value_400,
    });
    local Play_41 = str_21.Play;
    local Play_42 = str_21:Play();
    local Waited_For_18 = task.wait(1.2);
    local var439 = tick();
    local var440 = var439 % 5;
    -- 0.990829
    local var441 = var440 / 5;
    -- 0.198166
    local Color3_Value_401 = Color3_FromHSV(var441, 1, 1);
    local New_84 = TweenInfo.new;
    local Sine_19 = Enum_EasingStyle.Sine;
    local InOut_21 = Enum_EasingDirection.InOut;
    local _call444 = New_84(1.2, Sine_19, InOut_21);
    local str_22 = TweenService:Create(Parent_4, _call444, {
        TextColor3 = Color3_Value_401,
    });
    local Play_43 = str_22.Play;
    local Play_44 = str_22:Play();
    local Waited_For_19 = task.wait(1.2);
    local var446 = tick();
    local var447 = var446 % 5;
    -- 1.003161
    local var448 = var447 / 5;
    -- 0.200632
    local Color3_Value_402 = Color3_FromHSV(var448, 1, 1);
    local New_85 = TweenInfo.new;
    local Sine_20 = Enum_EasingStyle.Sine;
    local InOut_22 = Enum_EasingDirection.InOut;
    local _call451 = New_85(1.2, Sine_20, InOut_22);
    local str_23 = TweenService:Create(Parent_4, _call451, {
        TextColor3 = Color3_Value_402,
    });
    local Play_45 = str_23.Play;
    local Play_46 = str_23:Play();
    local Waited_For_20 = task.wait(1.2);
    local var453 = tick();
    local var454 = var453 % 5;
    -- 1.015428
    local var455 = var454 / 5;
    -- 0.203086
    local Color3_Value_403 = Color3_FromHSV(var455, 1, 1);
    local New_86 = TweenInfo.new;
    local Sine_21 = Enum_EasingStyle.Sine;
    local InOut_23 = Enum_EasingDirection.InOut;
    local _call458 = New_86(1.2, Sine_21, InOut_23);
    local str_24 = TweenService:Create(Parent_4, _call458, {
        TextColor3 = Color3_Value_403,
    });
    local Play_47 = str_24.Play;
    local Play_48 = str_24:Play();
    local Waited_For_21 = task.wait(1.2);
    local var460 = tick();
    local var461 = var460 % 5;
    -- 1.027733
    local var462 = var461 / 5;
    -- 0.205547
    local Color3_Value_404 = Color3_FromHSV(var462, 1, 1);
    local New_87 = TweenInfo.new;
    local Sine_22 = Enum_EasingStyle.Sine;
    local InOut_24 = Enum_EasingDirection.InOut;
    local _call465 = New_87(1.2, Sine_22, InOut_24);
    local str_25 = TweenService:Create(Parent_4, _call465, {
        TextColor3 = Color3_Value_404,
    });
    local Play_49 = str_25.Play;
    local Play_50 = str_25:Play();
    local Waited_For_22 = task.wait(1.2);
    local var467 = tick();
    local var468 = var467 % 5;
    -- 1.040059
    local var469 = var468 / 5;
    -- 0.208012
    local Color3_Value_405 = Color3_FromHSV(var469, 1, 1);
    local New_88 = TweenInfo.new;
    local Sine_23 = Enum_EasingStyle.Sine;
    local InOut_25 = Enum_EasingDirection.InOut;
    local _call472 = New_88(1.2, Sine_23, InOut_25);
    local str_26 = TweenService:Create(Parent_4, _call472, {
        TextColor3 = Color3_Value_405,
    });
    local Play_51 = str_26.Play;
    local Play_52 = str_26:Play();
    local Waited_For_23 = task.wait(1.2);
    local var474 = tick();
    local var475 = var474 % 5;
    -- 1.052516
    local var476 = var475 / 5;
    -- 0.210503
    local Color3_Value_406 = Color3_FromHSV(var476, 1, 1);
    local New_89 = TweenInfo.new;
    local Sine_24 = Enum_EasingStyle.Sine;
    local InOut_26 = Enum_EasingDirection.InOut;
    local _call479 = New_89(1.2, Sine_24, InOut_26);
    local str_27 = TweenService:Create(Parent_4, _call479, {
        TextColor3 = Color3_Value_406,
    });
    local Play_53 = str_27.Play;
    local Play_54 = str_27:Play();
    local Waited_For_24 = task.wait(1.2);
    local var481 = tick();
    local var482 = var481 % 5;
    -- 1.064948
    local var483 = var482 / 5;
    -- 0.212990
    local Color3_Value_407 = Color3_FromHSV(var483, 1, 1);
    local New_90 = TweenInfo.new;
    local Sine_25 = Enum_EasingStyle.Sine;
    local InOut_27 = Enum_EasingDirection.InOut;
    local _call486 = New_90(1.2, Sine_25, InOut_27);
    local str_28 = TweenService:Create(Parent_4, _call486, {
        TextColor3 = Color3_Value_407,
    });
    local Play_55 = str_28.Play;
    local Play_56 = str_28:Play();
    local Waited_For_25 = task.wait(1.2);
    local var488 = tick();
    local var489 = var488 % 5;
    -- 1.077743
    local var490 = var489 / 5;
    -- 0.215549
    local Color3_Value_408 = Color3_FromHSV(var490, 1, 1);
    local New_91 = TweenInfo.new;
    local Sine_26 = Enum_EasingStyle.Sine;
    local InOut_28 = Enum_EasingDirection.InOut;
    local _call493 = New_91(1.2, Sine_26, InOut_28);
    local str_29 = TweenService:Create(Parent_4, _call493, {
        TextColor3 = Color3_Value_408,
    });
    local Play_57 = str_29.Play;
    local Play_58 = str_29:Play();
    local Waited_For_26 = task.wait(1.2);
    local var495 = tick();
    local var496 = var495 % 5;
    -- 1.090325
    local var497 = var496 / 5;
    -- 0.218065
    local Color3_Value_409 = Color3_FromHSV(var497, 1, 1);
    local New_92 = TweenInfo.new;
    local Sine_27 = Enum_EasingStyle.Sine;
    local InOut_29 = Enum_EasingDirection.InOut;
    local _call500 = New_92(1.2, Sine_27, InOut_29);
    local str_30 = TweenService:Create(Parent_4, _call500, {
        TextColor3 = Color3_Value_409,
    });
    local Play_59 = str_30.Play;
    local Play_60 = str_30:Play();
    local Waited_For_27 = task.wait(1.2);
    local var502 = tick();
    local var503 = var502 % 5;
    -- 1.102784
    local var504 = var503 / 5;
    -- 0.220557
    local Color3_Value_410 = Color3_FromHSV(var504, 1, 1);
    local New_93 = TweenInfo.new;
    local Sine_28 = Enum_EasingStyle.Sine;
    local InOut_30 = Enum_EasingDirection.InOut;
    local _call507 = New_93(1.2, Sine_28, InOut_30);
    local str_31 = TweenService:Create(Parent_4, _call507, {
        TextColor3 = Color3_Value_410,
    });
    local Play_61 = str_31.Play;
    local Play_62 = str_31:Play();
    local Waited_For_28 = task.wait(1.2);
    local var509 = tick();
    local var510 = var509 % 5;
    -- 1.115275
    local var511 = var510 / 5;
    -- 0.223055
    local Color3_Value_411 = Color3_FromHSV(var511, 1, 1);
    local New_94 = TweenInfo.new;
    local Sine_29 = Enum_EasingStyle.Sine;
    local InOut_31 = Enum_EasingDirection.InOut;
    local _call514 = New_94(1.2, Sine_29, InOut_31);
    local str_32 = TweenService:Create(Parent_4, _call514, {
        TextColor3 = Color3_Value_411,
    });
    local Play_63 = str_32.Play;
    local Play_64 = str_32:Play();
    local Waited_For_29 = task.wait(1.2);
    local var516 = tick();
    local var517 = var516 % 5;
    -- 1.127739
    local var518 = var517 / 5;
    -- 0.225548
    local Color3_Value_412 = Color3_FromHSV(var518, 1, 1);
    local New_95 = TweenInfo.new;
    local Sine_30 = Enum_EasingStyle.Sine;
    local InOut_32 = Enum_EasingDirection.InOut;
    local _call521 = New_95(1.2, Sine_30, InOut_32);
    local str_33 = TweenService:Create(Parent_4, _call521, {
        TextColor3 = Color3_Value_412,
    });
    local Play_65 = str_33.Play;
    local Play_66 = str_33:Play();
    local Waited_For_30 = task.wait(1.2);
    local var523 = tick();
    local var524 = var523 % 5;
    -- 1.140199
    local var525 = var524 / 5;
    -- 0.228040
    local Color3_Value_413 = Color3_FromHSV(var525, 1, 1);
    local New_96 = TweenInfo.new;
    local Sine_31 = Enum_EasingStyle.Sine;
    local InOut_33 = Enum_EasingDirection.InOut;
    local _call528 = New_96(1.2, Sine_31, InOut_33);
    local str_34 = TweenService:Create(Parent_4, _call528, {
        TextColor3 = Color3_Value_413,
    });
    local Play_67 = str_34.Play;
    local Play_68 = str_34:Play();
    local Waited_For_31 = task.wait(1.2);
    local var530 = tick();
    local var531 = var530 % 5;
    -- 1.152685
    local var532 = var531 / 5;
    -- 0.230537
    local Color3_Value_414 = Color3_FromHSV(var532, 1, 1);
    local New_97 = TweenInfo.new;
    local Sine_32 = Enum_EasingStyle.Sine;
    local InOut_34 = Enum_EasingDirection.InOut;
    local _call535 = New_97(1.2, Sine_32, InOut_34);
    local str_35 = TweenService:Create(Parent_4, _call535, {
        TextColor3 = Color3_Value_414,
    });
    local Play_69 = str_35.Play;
    local Play_70 = str_35:Play();
    local Waited_For_32 = task.wait(1.2);
    local var537 = tick();
    local var538 = var537 % 5;
    -- 1.165143
    local var539 = var538 / 5;
    -- 0.233029
    local Color3_Value_415 = Color3_FromHSV(var539, 1, 1);
    local New_98 = TweenInfo.new;
    local Sine_33 = Enum_EasingStyle.Sine;
    local InOut_35 = Enum_EasingDirection.InOut;
    local _call542 = New_98(1.2, Sine_33, InOut_35);
    local str_36 = TweenService:Create(Parent_4, _call542, {
        TextColor3 = Color3_Value_415,
    });
    local Play_71 = str_36.Play;
    local Play_72 = str_36:Play();
    local Waited_For_33 = task.wait(1.2);
    local var544 = tick();
    local var545 = var544 % 5;
    -- 1.178505
    local var546 = var545 / 5;
    -- 0.235701
    local Color3_Value_416 = Color3_FromHSV(var546, 1, 1);
    local New_99 = TweenInfo.new;
    local Sine_34 = Enum_EasingStyle.Sine;
    local InOut_36 = Enum_EasingDirection.InOut;
    local _call549 = New_99(1.2, Sine_34, InOut_36);
    local str_37 = TweenService:Create(Parent_4, _call549, {
        TextColor3 = Color3_Value_416,
    });
    local Play_73 = str_37.Play;
    local Play_74 = str_37:Play();
    local Waited_For_34 = task.wait(1.2);
    local var551 = tick();
    local var552 = var551 % 5;
    -- 1.191022
    local var553 = var552 / 5;
    -- 0.238204
    local Color3_Value_417 = Color3_FromHSV(var553, 1, 1);
    local New_100 = TweenInfo.new;
    local Sine_35 = Enum_EasingStyle.Sine;
    local InOut_37 = Enum_EasingDirection.InOut;
    local _call556 = New_100(1.2, Sine_35, InOut_37);
    local str_38 = TweenService:Create(Parent_4, _call556, {
        TextColor3 = Color3_Value_417,
    });
    local Play_75 = str_38.Play;
    local Play_76 = str_38:Play();
    local Waited_For_35 = task.wait(1.2);
    local var558 = tick();
    local var559 = var558 % 5;
    -- 1.203442
    local var560 = var559 / 5;
    -- 0.240688
    local Color3_Value_418 = Color3_FromHSV(var560, 1, 1);
    local New_101 = TweenInfo.new;
    local Sine_36 = Enum_EasingStyle.Sine;
    local InOut_38 = Enum_EasingDirection.InOut;
    local _call563 = New_101(1.2, Sine_36, InOut_38);
    local str_39 = TweenService:Create(Parent_4, _call563, {
        TextColor3 = Color3_Value_418,
    });
    local Play_77 = str_39.Play;
    local Play_78 = str_39:Play();
    local Waited_For_36 = task.wait(1.2);
    local var565 = tick();
    local var566 = var565 % 5;
    -- 1.216004
    local var567 = var566 / 5;
    -- 0.243201
    local Color3_Value_419 = Color3_FromHSV(var567, 1, 1);
    local New_102 = TweenInfo.new;
    local Sine_37 = Enum_EasingStyle.Sine;
    local InOut_39 = Enum_EasingDirection.InOut;
    local _call570 = New_102(1.2, Sine_37, InOut_39);
    local str_40 = TweenService:Create(Parent_4, _call570, {
        TextColor3 = Color3_Value_419,
    });
    local Play_79 = str_40.Play;
    local Play_80 = str_40:Play();
    local Waited_For_37 = task.wait(1.2);
    local var572 = tick();
    local var573 = var572 % 5;
    -- 1.228375
    local var574 = var573 / 5;
    -- 0.245675
    local Color3_Value_420 = Color3_FromHSV(var574, 1, 1);
    local New_103 = TweenInfo.new;
    local Sine_38 = Enum_EasingStyle.Sine;
    local InOut_40 = Enum_EasingDirection.InOut;
    local _call577 = New_103(1.2, Sine_38, InOut_40);
    local str_41 = TweenService:Create(Parent_4, _call577, {
        TextColor3 = Color3_Value_420,
    });
    local Play_81 = str_41.Play;
    local Play_82 = str_41:Play();
    local Waited_For_38 = task.wait(1.2);
    local var579 = tick();
    local var580 = var579 % 5;
    -- 1.240721
    local var581 = var580 / 5;
    -- 0.248144
    local Color3_Value_421 = Color3_FromHSV(var581, 1, 1);
    local New_104 = TweenInfo.new;
    local Sine_39 = Enum_EasingStyle.Sine;
    local InOut_41 = Enum_EasingDirection.InOut;
    local _call584 = New_104(1.2, Sine_39, InOut_41);
    local str_42 = TweenService:Create(Parent_4, _call584, {
        TextColor3 = Color3_Value_421,
    });
    local Play_83 = str_42.Play;
    local Play_84 = str_42:Play();
    local Waited_For_39 = task.wait(1.2);
    local var586 = tick();
    local var587 = var586 % 5;
    -- 1.253157
    local var588 = var587 / 5;
    -- 0.250631
    local Color3_Value_422 = Color3_FromHSV(var588, 1, 1);
    local New_105 = TweenInfo.new;
    local Sine_40 = Enum_EasingStyle.Sine;
    local InOut_42 = Enum_EasingDirection.InOut;
    local _call591 = New_105(1.2, Sine_40, InOut_42);
    local str_43 = TweenService:Create(Parent_4, _call591, {
        TextColor3 = Color3_Value_422,
    });
    local Play_85 = str_43.Play;
    local Play_86 = str_43:Play();
    local Waited_For_40 = task.wait(1.2);
    local var593 = tick();
    local var594 = var593 % 5;
    -- 1.265499
    local var595 = var594 / 5;
    -- 0.253100
    local Color3_Value_423 = Color3_FromHSV(var595, 1, 1);
    local New_106 = TweenInfo.new;
    local Sine_41 = Enum_EasingStyle.Sine;
    local InOut_43 = Enum_EasingDirection.InOut;
    local _call598 = New_106(1.2, Sine_41, InOut_43);
    local str_44 = TweenService:Create(Parent_4, _call598, {
        TextColor3 = Color3_Value_423,
    });
    local Play_87 = str_44.Play;
    local Play_88 = str_44:Play();
    local Waited_For_41 = task.wait(1.2);
    local var600 = tick();
    local var601 = var600 % 5;
    -- 1.278029
    local var602 = var601 / 5;
    -- 0.255606
    local Color3_Value_424 = Color3_FromHSV(var602, 1, 1);
    local New_107 = TweenInfo.new;
    error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:659: too many operations")

end);
local Spawned_5 = task.spawn(function()
    local Parent_5 = LocalScript_5.Parent;
    local TweenService_5 = game:GetService("TweenService");
    local New_108 = Font.new;
    local Bold_55 = Enum_FontWeight.Bold;
    local _call604 = New_108("rbxasset://fonts/families/FredokaOne.json", Bold_55);
    TextLabel.FontFace = _call604;
    TextLabel.TextSize = 19;
    local Color3_Value_425 = Color3_New(1, 1, 1);
    TextLabel.TextColor3 = Color3_Value_425;
    local Left_47 = Enum_TextXAlignment.Left;
    TextLabel.TextXAlignment = Left_47;

end);
local Spawned_6 = task.spawn(function()
    local Parent_6 = LocalScript_6.Parent;
    local New_109 = Font.new;
    local Bold_56 = Enum_FontWeight.Bold;
    local _call603 = New_109("rbxasset://fonts/families/FredokaOne.json", Bold_56);
    TextLabel_2.FontFace = _call603;
    TextLabel_2.TextSize = 16;
    local Color3_Value_426 = Color3_New(1, 1, 1);
    TextLabel_2.TextColor3 = Color3_Value_426;
    local Center = Enum_TextXAlignment.Center;
    TextLabel_2.TextXAlignment = Center;
    TextLabel_2.RichText = true;
    local Y_57 = Enum_AutomaticSize.Y;
    TextLabel_2.AutomaticSize = Y_57;
    TextLabel_2.TextWrapped = true;

end);
local Spawned_7 = task.spawn(function()
    local Parent_7 = LocalScript_7.Parent;
    local New_110 = Font.new;
    local Bold_57 = Enum_FontWeight.Bold;
    local _call600 = New_110("rbxasset://fonts/families/FredokaOne.json", Bold_57);
    TextButton.FontFace = _call600;
    TextButton.TextSize = 16;
    local Color3_Value_427 = Color3_New(1, 1, 1);
    TextButton.TextColor3 = Color3_Value_427;
    local Center_2 = Enum_TextXAlignment.Center;
    TextButton.TextXAlignment = Center_2;
    TextButton.RichText = true;
    local Y_58 = Enum_AutomaticSize.Y;
    TextButton.AutomaticSize = Y_58;
    TextButton.TextWrapped = true;

end);
local Spawned_8 = task.spawn(function()
    local Parent_8 = LocalScript_8.Parent;
    local Parent_9 = TextButton.Parent;
    local Parent_10 = Frame.Parent;
    local TweenService_6 = game:GetService("TweenService");
    local New_111 = TweenInfo.new;
    local Quart = Enum_EasingStyle.Quart;
    local Out = Enum_EasingDirection.Out;
    local _call598 = New_111(3, Quart, Out);
    local Connection_3;
    Connection_3 = TextButton.MouseButton1Click:Connect(function()
        local Descendants = ScreenGui:GetDescendants();
        for i, v in ipairs(Descendants) do
            local IsA = v.IsA;
            local GuiObject = v:IsA("GuiObject");
            if GuiObject then -- ran, expr id 3, has no else.
                local IsA_2 = v.IsA;
                local ImageButton_46 = v:IsA("ImageButton");
                -- local _ = ImageButton_46 or (unknown_value)
                if ImageButton_46 then -- ran, expr id 4, has an else.
                    local str_52 = TweenService:Create(v, _call598, {
                        ImageTransparency = 1,
                    });
                    local Play_103 = str_52.Play;
                    local Play_104 = str_52:Play();
                end
            end
        end
        local Spawned_136 = task.delay(3, function()
            ScreenGui.Enabled = false;

        end);

    end);

end);
local Spawned_9 = task.spawn(function()
    local Parent_11 = LocalScript_9.Parent;
    local New_112 = Font.new;
    local Bold_58 = Enum_FontWeight.Bold;
    local _call600 = New_112("rbxasset://fonts/families/FredokaOne.json", Bold_58);
    TextLabel_3.FontFace = _call600;
    TextLabel_3.TextSize = 16;
    local Color3_Value_428 = Color3_New(1, 1, 1);
    TextLabel_3.TextColor3 = Color3_Value_428;
    local Center_3 = Enum_TextXAlignment.Center;
    TextLabel_3.TextXAlignment = Center_3;
    TextLabel_3.RichText = true;
    local Y_59 = Enum_AutomaticSize.Y;
    TextLabel_3.AutomaticSize = Y_59;
    TextLabel_3.TextWrapped = true;

end);
local Spawned_10 = task.spawn(function()
    local Parent_12 = LocalScript_10.Parent;
    local Parent_13 = TextButton_2.Parent;
    local Connection_4;
    Connection_4 = TextButton_2.MouseButton1Click:Connect(function()
        local Children = Frame:GetChildren();
        for i_2, v_2 in Children do
            local IsA_3 = v_2.IsA;
            local ScrollingFrame_7 = v_2:IsA("ScrollingFrame");
            if ScrollingFrame_7 then -- ran, expr id 5, has no else.
                local Name_2 = v_2.Name;
                local Name_2_is_string = (Name_2 == "免费脚本显示区");
                -- false, eq id 5
                v_2.Visible = Name_2_is_string;
            end
        end

    end);

end);
local Spawned_11 = task.spawn(function()
    local Parent_14 = LocalScript_11.Parent;
    local New_113 = Font.new;
    local Bold_59 = Enum_FontWeight.Bold;
    local _call597 = New_113("rbxasset://fonts/families/FredokaOne.json", Bold_59);
    TextButton_2.FontFace = _call597;
    TextButton_2.TextSize = 16;
    local Color3_Value_429 = Color3_New(1, 1, 1);
    TextButton_2.TextColor3 = Color3_Value_429;
    local Center_4 = Enum_TextXAlignment.Center;
    TextButton_2.TextXAlignment = Center_4;
    TextButton_2.RichText = true;
    local Y_60 = Enum_AutomaticSize.Y;
    TextButton_2.AutomaticSize = Y_60;
    TextButton_2.TextWrapped = true;

end);
local Spawned_12 = task.spawn(function()
    local Parent_15 = LocalScript_12.Parent;
    local UIGradient_13 = Frame_4.UIGradient;
    local TweenService_7 = game:GetService("TweenService");
    local New_114 = TweenInfo.new;
    local Linear_4 = Enum_EasingStyle.Linear;
    local InOut_44 = Enum_EasingDirection.InOut;
    local _call595 = New_114(3, Linear_4, InOut_44, -1, true);
    local Vector2_Value_5 = Vector2_New(1, 0);
    local str_45 = TweenService:Create(UIGradient_3, _call595, {
        Offset = Vector2_Value_5,
    });
    local Play_89 = str_45.Play;
    local Play_90 = str_45:Play();

end);
local Spawned_13 = task.spawn(function()
    local Parent_16 = LocalScript_13.Parent;
    local New_115 = Font.new;
    local Bold_60 = Enum_FontWeight.Bold;
    local _call598 = New_115("rbxasset://fonts/families/FredokaOne.json", Bold_60);
    TextButton_3.FontFace = _call598;
    TextButton_3.TextSize = 16;
    local Color3_Value_430 = Color3_New(1, 1, 1);
    TextButton_3.TextColor3 = Color3_Value_430;
    local Center_5 = Enum_TextXAlignment.Center;
    TextButton_3.TextXAlignment = Center_5;
    TextButton_3.RichText = true;
    local Y_61 = Enum_AutomaticSize.Y;
    TextButton_3.AutomaticSize = Y_61;
    TextButton_3.TextWrapped = true;

end);
local Spawned_14 = task.spawn(function()
    local Parent_17 = LocalScript_14.Parent;
    local Parent_18 = TextButton_3.Parent;
    local Connection_5;
    Connection_5 = TextButton_3.MouseButton1Click:Connect(function()
        local Children_2 = Frame:GetChildren();
        for i_3, v_3 in Children_2 do
            local IsA_4 = v_3.IsA;
            local ScrollingFrame_8 = v_3:IsA("ScrollingFrame");
            if ScrollingFrame_8 then -- ran, expr id 6, has no else.
                local Name_3 = v_3.Name;
                local Name_3_is_string = (Name_3 == "买断制脚本显示区");
                -- false, eq id 6
                v_3.Visible = Name_3_is_string;
            end
        end

    end);

end);
local Spawned_15 = task.spawn(function()
    local Parent_19 = LocalScript_15.Parent;
    local UIGradient_14 = Frame_5.UIGradient;
    local TweenService_8 = game:GetService("TweenService");
    local New_116 = TweenInfo.new;
    local Linear_5 = Enum_EasingStyle.Linear;
    local InOut_45 = Enum_EasingDirection.InOut;
    local _call596 = New_116(3, Linear_5, InOut_45, -1, true);
    local Vector2_Value_6 = Vector2_New(-1, 0);
    local str_46 = TweenService:Create(UIGradient_4, _call596, {
        Offset = Vector2_Value_6,
    });
    local Play_91 = str_46.Play;
    local Play_92 = str_46:Play();

end);
local Spawned_16 = task.spawn(function()
    local Parent_20 = LocalScript_16.Parent;
    local New_117 = Font.new;
    local Bold_61 = Enum_FontWeight.Bold;
    local _call599 = New_117("rbxasset://fonts/families/FredokaOne.json", Bold_61);
    TextButton_4.FontFace = _call599;
    TextButton_4.TextSize = 16;
    local Color3_Value_431 = Color3_New(1, 1, 1);
    TextButton_4.TextColor3 = Color3_Value_431;
    local Center_6 = Enum_TextXAlignment.Center;
    TextButton_4.TextXAlignment = Center_6;
    TextButton_4.RichText = true;
    local Y_62 = Enum_AutomaticSize.Y;
    TextButton_4.AutomaticSize = Y_62;
    TextButton_4.TextWrapped = true;

end);
local Spawned_17 = task.spawn(function()
    local Parent_21 = LocalScript_17.Parent;
    local Parent_22 = TextButton_4.Parent;
    local Connection_6;
    Connection_6 = TextButton_4.MouseButton1Click:Connect(function()
        local Children_3 = Frame:GetChildren();
        for i_4, v_4 in Children_3 do
            local IsA_5 = v_4.IsA;
            local ScrollingFrame_9 = v_4:IsA("ScrollingFrame");
            if ScrollingFrame_9 then -- ran, expr id 7, has no else.
                local Name_4 = v_4.Name;
                local Name_4_is_string = (Name_4 == "包月制脚本显示区");
                -- false, eq id 7
                v_4.Visible = Name_4_is_string;
            end
        end

    end);

end);
local Spawned_18 = task.spawn(function()
    local Parent_23 = LocalScript_18.Parent;
    local UIGradient_15 = Frame_6.UIGradient;
    local TweenService_9 = game:GetService("TweenService");
    local New_118 = TweenInfo.new;
    local Linear_6 = Enum_EasingStyle.Linear;
    local InOut_46 = Enum_EasingDirection.InOut;
    local _call597 = New_118(3, Linear_6, InOut_46, -1, true);
    local Vector2_Value_7 = Vector2_New(1, 0);
    local str_47 = TweenService:Create(UIGradient_5, _call597, {
        Offset = Vector2_Value_7,
    });
    local Play_93 = str_47.Play;
    local Play_94 = str_47:Play();

end);
local Spawned_19 = task.spawn(function()
    local Parent_24 = LocalScript_19.Parent;
    local Parent_25 = TextButton_5.Parent;
    local Connection_7;
    Connection_7 = TextButton_5.MouseButton1Click:Connect(function()
        local Children_4 = Frame:GetChildren();
        for i_5, v_5 in Children_4 do
            local IsA_6 = v_5.IsA;
            local ScrollingFrame_10 = v_5:IsA("ScrollingFrame");
            if ScrollingFrame_10 then -- ran, expr id 8, has no else.
                local Name_5 = v_5.Name;
                local Name_5_is_string = (Name_5 == "公告及活动显示区");
                -- false, eq id 8
                v_5.Visible = Name_5_is_string;
            end
        end

    end);

end);
local Spawned_20 = task.spawn(function()
    local Parent_26 = LocalScript_20.Parent;
    local New_119 = Font.new;
    local Bold_62 = Enum_FontWeight.Bold;
    local _call600 = New_119("rbxasset://fonts/families/FredokaOne.json", Bold_62);
    TextButton_5.FontFace = _call600;
    TextButton_5.TextSize = 16;
    local Color3_Value_432 = Color3_New(1, 1, 1);
    TextButton_5.TextColor3 = Color3_Value_432;
    local Center_7 = Enum_TextXAlignment.Center;
    TextButton_5.TextXAlignment = Center_7;
    TextButton_5.RichText = true;
    local Y_63 = Enum_AutomaticSize.Y;
    TextButton_5.AutomaticSize = Y_63;
    TextButton_5.TextWrapped = true;

end);
local Spawned_21 = task.spawn(function()
    local Parent_27 = LocalScript_21.Parent;
    local Parent_28 = TextButton_6.Parent;
    local Connection_8;
    Connection_8 = TextButton_6.MouseButton1Click:Connect(function()
        local Children_5 = Frame:GetChildren();
        for i_6, v_6 in Children_5 do
            local IsA_7 = v_6.IsA;
            local ScrollingFrame_11 = v_6:IsA("ScrollingFrame");
            if ScrollingFrame_11 then -- ran, expr id 9, has no else.
                local Name_6 = v_6.Name;
                local Name_6_is_string = (Name_6 == "代练代刷显示区");
                -- false, eq id 9
                v_6.Visible = Name_6_is_string;
            end
        end

    end);

end);
local Spawned_22 = task.spawn(function()
    local Parent_29 = LocalScript_22.Parent;
    local New_120 = Font.new;
    local Bold_63 = Enum_FontWeight.Bold;
    local _call597 = New_120("rbxasset://fonts/families/FredokaOne.json", Bold_63);
    TextButton_6.FontFace = _call597;
    TextButton_6.TextSize = 16;
    local Color3_Value_433 = Color3_New(1, 1, 1);
    TextButton_6.TextColor3 = Color3_Value_433;
    local Center_8 = Enum_TextXAlignment.Center;
    TextButton_6.TextXAlignment = Center_8;
    TextButton_6.RichText = true;
    local Y_64 = Enum_AutomaticSize.Y;
    TextButton_6.AutomaticSize = Y_64;
    TextButton_6.TextWrapped = true;

end);
local Spawned_23 = task.spawn(function()
    local Parent_30 = LocalScript_23.Parent;
    local UIGradient_16 = Frame_7.UIGradient;
    local TweenService_10 = game:GetService("TweenService");
    local New_121 = TweenInfo.new;
    local Linear_7 = Enum_EasingStyle.Linear;
    local InOut_47 = Enum_EasingDirection.InOut;
    local _call595 = New_121(3, Linear_7, InOut_47, -1, true);
    local Vector2_Value_8 = Vector2_New(-1, 0);
    local str_48 = TweenService:Create(UIGradient_6, _call595, {
        Offset = Vector2_Value_8,
    });
    local Play_95 = str_48.Play;
    local Play_96 = str_48:Play();

end);
local Spawned_24 = task.spawn(function()
    local Parent_31 = LocalScript_24.Parent;
    local UIGradient_17 = Frame_8.UIGradient;
    local TweenService_11 = game:GetService("TweenService");
    local New_122 = TweenInfo.new;
    local Linear_8 = Enum_EasingStyle.Linear;
    local InOut_48 = Enum_EasingDirection.InOut;
    local _call599 = New_122(3, Linear_8, InOut_48, -1, true);
    local Vector2_Value_9 = Vector2_New(1, 0);
    local str_49 = TweenService:Create(UIGradient_7, _call599, {
        Offset = Vector2_Value_9,
    });
    local Play_97 = str_49.Play;
    local Play_98 = str_49:Play();

end);
local Spawned_25 = task.spawn(function()
    local Parent_32 = LocalScript_25.Parent;
    local UIGradient_18 = Frame_9.UIGradient;
    local TweenService_12 = game:GetService("TweenService");
    local New_123 = TweenInfo.new;
    local Linear_9 = Enum_EasingStyle.Linear;
    local InOut_49 = Enum_EasingDirection.InOut;
    local _call603 = New_123(3, Linear_9, InOut_49, -1, true);
    local Vector2_Value_10 = Vector2_New(-1, 0);
    local str_50 = TweenService:Create(UIGradient_8, _call603, {
        Offset = Vector2_Value_10,
    });
    local Play_99 = str_50.Play;
    local Play_100 = str_50:Play();

end);
local Spawned_26 = task.spawn(function()
    local Parent_33 = LocalScript_26.Parent;
    local Parent_34 = TextButton_7.Parent;
    local Connection_9;
    Connection_9 = TextButton_7.MouseButton1Click:Connect(function()
        local Children_6 = Frame:GetChildren();
        for i_7, v_7 in Children_6 do
            local IsA_8 = v_7.IsA;
            local ScrollingFrame_12 = v_7:IsA("ScrollingFrame");
            if ScrollingFrame_12 then -- ran, expr id 10, has no else.
                local Name_7 = v_7.Name;
                local Name_7_is_string = (Name_7 == "广告位显示区");
                -- false, eq id 10
                v_7.Visible = Name_7_is_string;
            end
        end

    end);

end);
local Spawned_27 = task.spawn(function()
    local Parent_35 = LocalScript_27.Parent;
    local New_124 = Font.new;
    local Bold_64 = Enum_FontWeight.Bold;
    local _call606 = New_124("rbxasset://fonts/families/FredokaOne.json", Bold_64);
    TextButton_7.FontFace = _call606;
    TextButton_7.TextSize = 16;
    local Color3_Value_434 = Color3_New(1, 1, 1);
    TextButton_7.TextColor3 = Color3_Value_434;
    local Center_9 = Enum_TextXAlignment.Center;
    TextButton_7.TextXAlignment = Center_9;
    TextButton_7.RichText = true;
    local Y_65 = Enum_AutomaticSize.Y;
    TextButton_7.AutomaticSize = Y_65;
    TextButton_7.TextWrapped = true;

end);
local Spawned_28 = task.spawn(function()
    local Parent_36 = LocalScript_28.Parent;
    local New_125 = Font.new;
    local Bold_65 = Enum_FontWeight.Bold;
    local _call603 = New_125("rbxasset://fonts/families/FredokaOne.json", Bold_65);
    TextLabel_4.FontFace = _call603;
    TextLabel_4.TextSize = 16;
    local Color3_Value_435 = Color3_New(0, 1, 1);
    TextLabel_4.TextColor3 = Color3_Value_435;
    local Left_48 = Enum_TextXAlignment.Left;
    TextLabel_4.TextXAlignment = Left_48;
    TextLabel_4.RichText = true;
    local Y_66 = Enum_AutomaticSize.Y;
    TextLabel_4.AutomaticSize = Y_66;
    TextLabel_4.TextWrapped = true;
    local Parent_37 = LocalScript_28.Parent;
    local Players_2 = game.Players;
    local LocalPlayer_2 = Players.LocalPlayer;
    local Name = LocalPlayer.Name;
    local var599 = Name .. "，咨询或购买请添加我的联系方式 👉 ";
    -- "nRdBXwVoWiIxX，咨询或购买请添加我的联系方式 👉 "
    local var600 = "恁好！" .. var599;
    -- "恁好！nRdBXwVoWiIxX，咨询或购买请添加我的联系方式 👉 "
    TextLabel_4.Text = var600;

end);
local Spawned_29 = task.spawn(function()
    local Players_3 = game:GetService("Players");
    local LocalPlayer_3 = Players.LocalPlayer;
    local Parent_38 = LocalScript_29.Parent;
    local UserId = LocalPlayer.UserId;
    local Enum_ThumbnailType = Enum.ThumbnailType;
    local HeadShot = Enum_ThumbnailType.HeadShot;
    local Enum_ThumbnailSize = Enum.ThumbnailSize;
    local Size420x420 = Enum_ThumbnailSize.Size420x420;
    local UserThumbnailAsync = Players:GetUserThumbnailAsync(UserId, HeadShot, Size420x420);
    ImageLabel_4.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png";

end);
local Spawned_30 = task.spawn(function()
    local Parent_39 = LocalScript_30.Parent;
    local New_126 = Font.new;
    local Bold_66 = Enum_FontWeight.Bold;
    local _call602 = New_126("rbxasset://fonts/families/FredokaOne.json", Bold_66);
    TextLabel_5.FontFace = _call602;
    TextLabel_5.TextSize = 16;
    local Color3_Value_436 = Color3_New(1, 1, 1);
    TextLabel_5.TextColor3 = Color3_Value_436;
    local Left_49 = Enum_TextXAlignment.Left;
    TextLabel_5.TextXAlignment = Left_49;
    local Top_4 = Enum_TextYAlignment.Top;
    TextLabel_5.TextYAlignment = Top_4;
    TextLabel_5.RichText = true;
    local Y_67 = Enum_AutomaticSize.Y;
    TextLabel_5.AutomaticSize = Y_67;
    TextLabel_5.TextWrapped = true;

end);
local Spawned_31 = task.spawn(function()
    local Parent_40 = LocalScript_31.Parent;
    local None = Enum_AutomaticSize.None;
    ScrollingFrame.AutomaticCanvasSize = None;
    ScrollingFrame.ScrollBarThickness = 6;
    local Color3_Value_437 = Color3_FromRGB(0, 0, 127);
    ScrollingFrame.ScrollBarImageColor3 = Color3_Value_437;
    local UDim2_Value_255 = UDim2_New(0, 0, 0, 0);
    ScrollingFrame.CanvasSize = UDim2_Value_255;
    ScrollingFrame.ClipsDescendants = true;
    ScrollingFrame.ScrollingEnabled = true;
    local UIListLayout_7 = ScrollingFrame:WaitForChild("UIListLayout");
    local Enum_FillDirection = Enum.FillDirection;
    local Vertical = Enum_FillDirection.Vertical;
    UIListLayout_7.FillDirection = Vertical;
    local LayoutOrder_7 = Enum_SortOrder.LayoutOrder;
    UIListLayout_7.SortOrder = LayoutOrder_7;
    local UDim_Value_52 = UDim_New(0, 16);
    UIListLayout_7.Padding = UDim_Value_52;
    local GetPropertyChangedSignal = UIListLayout_7.GetPropertyChangedSignal;
    local AbsoluteContentSize = UIListLayout_7:GetPropertyChangedSignal("AbsoluteContentSize");
    local Connect = AbsoluteContentSize.Connect;
    local Connected = AbsoluteContentSize:Connect(function()
        local AbsoluteContentSize_7 = UIListLayout_7.AbsoluteContentSize;
        local Y_118 = AbsoluteContentSize_7.Y;
        local UDim2_Value_261 = UDim2_New(0, 0, 0, Y_118);
        ScrollingFrame.CanvasSize = UDim2_Value_261;

    end);
    local Spawned_130 = task.spawn(function()
        local Waited_For_42 = task.wait();
        local AbsoluteContentSize_8 = UIListLayout_7.AbsoluteContentSize;
        local Y_119 = AbsoluteContentSize_8.Y;
        local UDim2_Value_262 = UDim2_New(0, 0, 0, Y_119);
        ScrollingFrame.CanvasSize = UDim2_Value_262;

    end);

end);
local Spawned_32 = task.spawn(function()
    local Parent_41 = LocalScript_32.Parent;
    local UIGradient_19 = Frame_10.UIGradient;
    local TweenService_13 = game:GetService("TweenService");
    local New_127 = TweenInfo.new;
    local Linear_10 = Enum_EasingStyle.Linear;
    local InOut_50 = Enum_EasingDirection.InOut;
    local _call595 = New_127(3, Linear_10, InOut_50, -1, true);
    local Vector2_Value_11 = Vector2_New(1, 0);
    local str_51 = TweenService:Create(UIGradient_9, _call595, {
        Offset = Vector2_Value_11,
    });
    local Play_101 = str_51.Play;
    local Play_102 = str_51:Play();

end);
local Spawned_33 = task.spawn(function()
    local Parent_42 = LocalScript_33.Parent;
    local New_128 = Font.new;
    local Bold_67 = Enum_FontWeight.Bold;
    local _call598 = New_128("rbxasset://fonts/families/FredokaOne.json", Bold_67);
    TextLabel_6.FontFace = _call598;
    TextLabel_6.TextSize = 16;
    local Color3_Value_438 = Color3_New(1, 1, 1);
    TextLabel_6.TextColor3 = Color3_Value_438;
    local Left_50 = Enum_TextXAlignment.Left;
    TextLabel_6.TextXAlignment = Left_50;
    local Top_5 = Enum_TextYAlignment.Top;
    TextLabel_6.TextYAlignment = Top_5;
    TextLabel_6.RichText = true;
    local Y_68 = Enum_AutomaticSize.Y;
    TextLabel_6.AutomaticSize = Y_68;
    TextLabel_6.TextWrapped = true;

end);
local Spawned_34 = task.spawn(function()
    local Parent_43 = LocalScript_34.Parent;
    local None_2 = Enum_AutomaticSize.None;
    ScrollingFrame_2.AutomaticCanvasSize = None_2;
    ScrollingFrame_2.ScrollBarThickness = 6;
    local Color3_Value_439 = Color3_FromRGB(0, 0, 127);
    ScrollingFrame_2.ScrollBarImageColor3 = Color3_Value_439;
    local UDim2_Value_256 = UDim2_New(0, 0, 0, 0);
    ScrollingFrame_2.CanvasSize = UDim2_Value_256;
    ScrollingFrame_2.ClipsDescendants = true;
    ScrollingFrame_2.ScrollingEnabled = true;
    local UIListLayout_8 = ScrollingFrame_2:WaitForChild("UIListLayout");
    local Vertical_2 = Enum_FillDirection.Vertical;
    UIListLayout_8.FillDirection = Vertical_2;
    local LayoutOrder_8 = Enum_SortOrder.LayoutOrder;
    UIListLayout_8.SortOrder = LayoutOrder_8;
    local UDim_Value_53 = UDim_New(0, 16);
    UIListLayout_8.Padding = UDim_Value_53;
    local GetPropertyChangedSignal_2 = UIListLayout_8.GetPropertyChangedSignal;
    local AbsoluteContentSize_2 = UIListLayout_8:GetPropertyChangedSignal("AbsoluteContentSize");
    local Connect_2 = AbsoluteContentSize_2.Connect;
    local Connected_2 = AbsoluteContentSize_2:Connect(function()
        local AbsoluteContentSize_9 = UIListLayout_8.AbsoluteContentSize;
        local Y_120 = AbsoluteContentSize_9.Y;
        local UDim2_Value_263 = UDim2_New(0, 0, 0, Y_120);
        ScrollingFrame_2.CanvasSize = UDim2_Value_263;

    end);
    local Spawned_131 = task.spawn(function()
        local Waited_For_43 = task.wait();
        local AbsoluteContentSize_10 = UIListLayout_8.AbsoluteContentSize;
        local Y_121 = AbsoluteContentSize_10.Y;
        local UDim2_Value_264 = UDim2_New(0, 0, 0, Y_121);
        ScrollingFrame_2.CanvasSize = UDim2_Value_264;

    end);

end);
local Spawned_35 = task.spawn(function()
    local Parent_44 = LocalScript_35.Parent;
    local None_3 = Enum_AutomaticSize.None;
    ScrollingFrame_3.AutomaticCanvasSize = None_3;
    ScrollingFrame_3.ScrollBarThickness = 6;
    local Color3_Value_440 = Color3_FromRGB(0, 0, 127);
    ScrollingFrame_3.ScrollBarImageColor3 = Color3_Value_440;
    local UDim2_Value_257 = UDim2_New(0, 0, 0, 0);
    ScrollingFrame_3.CanvasSize = UDim2_Value_257;
    ScrollingFrame_3.ClipsDescendants = true;
    ScrollingFrame_3.ScrollingEnabled = true;
    local UIListLayout_9 = ScrollingFrame_3:WaitForChild("UIListLayout");
    local Vertical_3 = Enum_FillDirection.Vertical;
    UIListLayout_9.FillDirection = Vertical_3;
    local LayoutOrder_9 = Enum_SortOrder.LayoutOrder;
    UIListLayout_9.SortOrder = LayoutOrder_9;
    local UDim_Value_54 = UDim_New(0, 16);
    UIListLayout_9.Padding = UDim_Value_54;
    local GetPropertyChangedSignal_3 = UIListLayout_9.GetPropertyChangedSignal;
    local AbsoluteContentSize_3 = UIListLayout_9:GetPropertyChangedSignal("AbsoluteContentSize");
    local Connect_3 = AbsoluteContentSize_3.Connect;
    local Connected_3 = AbsoluteContentSize_3:Connect(function()
        local AbsoluteContentSize_11 = UIListLayout_9.AbsoluteContentSize;
        local Y_122 = AbsoluteContentSize_11.Y;
        local UDim2_Value_265 = UDim2_New(0, 0, 0, Y_122);
        ScrollingFrame_3.CanvasSize = UDim2_Value_265;

    end);
    local Spawned_132 = task.spawn(function()
        local Waited_For_44 = task.wait();
        local AbsoluteContentSize_12 = UIListLayout_9.AbsoluteContentSize;
        local Y_123 = AbsoluteContentSize_12.Y;
        local UDim2_Value_266 = UDim2_New(0, 0, 0, Y_123);
        ScrollingFrame_3.CanvasSize = UDim2_Value_266;

    end);

end);
local Spawned_36 = task.spawn(function()
    local Parent_45 = LocalScript_36.Parent;
    local New_129 = Font.new;
    local Bold_68 = Enum_FontWeight.Bold;
    local _call585 = New_129("rbxasset://fonts/families/FredokaOne.json", Bold_68);
    TextLabel_7.FontFace = _call585;
    TextLabel_7.TextSize = 16;
    local Color3_Value_441 = Color3_New(1, 1, 1);
    TextLabel_7.TextColor3 = Color3_Value_441;
    local Center_10 = Enum_TextXAlignment.Center;
    TextLabel_7.TextXAlignment = Center_10;
    TextLabel_7.RichText = true;
    local Y_69 = Enum_AutomaticSize.Y;
    TextLabel_7.AutomaticSize = Y_69;
    TextLabel_7.TextWrapped = true;

end);
local Spawned_37 = task.spawn(function()
    local Parent_46 = LocalScript_37.Parent;
    local New_130 = Font.new;
    local Bold_69 = Enum_FontWeight.Bold;
    local _call582 = New_130("rbxasset://fonts/families/FredokaOne.json", Bold_69);
    TextLabel_8.FontFace = _call582;
    TextLabel_8.TextSize = 16;
    local Color3_Value_442 = Color3_New(1, 1, 1);
    TextLabel_8.TextColor3 = Color3_Value_442;
    local Center_11 = Enum_TextXAlignment.Center;
    TextLabel_8.TextXAlignment = Center_11;
    TextLabel_8.RichText = true;
    local Y_70 = Enum_AutomaticSize.Y;
    TextLabel_8.AutomaticSize = Y_70;
    TextLabel_8.TextWrapped = true;

end);
local Spawned_38 = task.spawn(function()
    local Parent_47 = LocalScript_38.Parent;
    local New_131 = Font.new;
    local Bold_70 = Enum_FontWeight.Bold;
    local _call579 = New_131("rbxasset://fonts/families/FredokaOne.json", Bold_70);
    TextLabel_9.FontFace = _call579;
    TextLabel_9.TextSize = 16;
    local Color3_Value_443 = Color3_New(1, 1, 1);
    TextLabel_9.TextColor3 = Color3_Value_443;
    local Center_12 = Enum_TextXAlignment.Center;
    TextLabel_9.TextXAlignment = Center_12;
    TextLabel_9.RichText = true;
    local Y_71 = Enum_AutomaticSize.Y;
    TextLabel_9.AutomaticSize = Y_71;
    TextLabel_9.TextWrapped = true;

end);
local Spawned_39 = task.spawn(function()
    local Parent_48 = LocalScript_39.Parent;
    local New_132 = Font.new;
    local Bold_71 = Enum_FontWeight.Bold;
    local _call576 = New_132("rbxasset://fonts/families/FredokaOne.json", Bold_71);
    TextLabel_10.FontFace = _call576;
    TextLabel_10.TextSize = 16;
    local Color3_Value_444 = Color3_New(1, 1, 1);
    TextLabel_10.TextColor3 = Color3_Value_444;
    local Center_13 = Enum_TextXAlignment.Center;
    TextLabel_10.TextXAlignment = Center_13;
    TextLabel_10.RichText = true;
    local Y_72 = Enum_AutomaticSize.Y;
    TextLabel_10.AutomaticSize = Y_72;
    TextLabel_10.TextWrapped = true;

end);
local Spawned_40 = task.spawn(function()
    local Parent_49 = LocalScript_40.Parent;
    local None_4 = Enum_AutomaticSize.None;
    ScrollingFrame_4.AutomaticCanvasSize = None_4;
    ScrollingFrame_4.ScrollBarThickness = 6;
    local Color3_Value_445 = Color3_FromRGB(0, 0, 127);
    ScrollingFrame_4.ScrollBarImageColor3 = Color3_Value_445;
    local UDim2_Value_258 = UDim2_New(0, 0, 0, 0);
    ScrollingFrame_4.CanvasSize = UDim2_Value_258;
    ScrollingFrame_4.ClipsDescendants = true;
    ScrollingFrame_4.ScrollingEnabled = true;
    local UIListLayout_10 = ScrollingFrame_4:WaitForChild("UIListLayout");
    local Vertical_4 = Enum_FillDirection.Vertical;
    UIListLayout_10.FillDirection = Vertical_4;
    local LayoutOrder_10 = Enum_SortOrder.LayoutOrder;
    UIListLayout_10.SortOrder = LayoutOrder_10;
    local UDim_Value_55 = UDim_New(0, 16);
    UIListLayout_10.Padding = UDim_Value_55;
    local GetPropertyChangedSignal_4 = UIListLayout_10.GetPropertyChangedSignal;
    local AbsoluteContentSize_4 = UIListLayout_10:GetPropertyChangedSignal("AbsoluteContentSize");
    local Connect_4 = AbsoluteContentSize_4.Connect;
    local Connected_4 = AbsoluteContentSize_4:Connect(function()
        local AbsoluteContentSize_13 = UIListLayout_10.AbsoluteContentSize;
        local Y_124 = AbsoluteContentSize_13.Y;
        local UDim2_Value_267 = UDim2_New(0, 0, 0, Y_124);
        ScrollingFrame_4.CanvasSize = UDim2_Value_267;

    end);
    local Spawned_133 = task.spawn(function()
        local Waited_For_45 = task.wait();
        local AbsoluteContentSize_14 = UIListLayout_10.AbsoluteContentSize;
        local Y_125 = AbsoluteContentSize_14.Y;
        local UDim2_Value_268 = UDim2_New(0, 0, 0, Y_125);
        ScrollingFrame_4.CanvasSize = UDim2_Value_268;

    end);

end);
local Spawned_41 = task.spawn(function()
    local Parent_50 = LocalScript_41.Parent;
    local New_133 = Font.new;
    local Bold_72 = Enum_FontWeight.Bold;
    local _call568 = New_133("rbxasset://fonts/families/FredokaOne.json", Bold_72);
    TextLabel_11.FontFace = _call568;
    TextLabel_11.TextSize = 16;
    local Color3_Value_446 = Color3_New(1, 1, 1);
    TextLabel_11.TextColor3 = Color3_Value_446;
    local Left_51 = Enum_TextXAlignment.Left;
    TextLabel_11.TextXAlignment = Left_51;
    TextLabel_11.RichText = true;
    local Y_73 = Enum_AutomaticSize.Y;
    TextLabel_11.AutomaticSize = Y_73;
    TextLabel_11.TextWrapped = true;

end);
local Spawned_42 = task.spawn(function()
    local Players_4 = game:GetService("Players");
    local StarterGui = game:GetService("StarterGui");
    local LocalPlayer_4 = Players.LocalPlayer;
    local Parent_51 = LocalScript_42.Parent;
    local Connection_10;
    Connection_10 = ImageButton_3.MouseButton1Click:Connect(function()
        local ScreenGui_2 = Instance.new("ScreenGui");
        ScreenGui_2.ResetOnSpawn = false;
        local PlayerGui_2 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_2.Parent = PlayerGui_2;
        local Frame_12 = Instance.new("Frame");
        local UDim2_Value_269 = UDim2_New(0, 340, 0, 190);
        Frame_12.Size = UDim2_Value_269;
        local UDim2_Value_270 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_12.Position = UDim2_Value_270;
        local Color3_Value_493 = Color3_New(1, 1, 1);
        Frame_12.BackgroundColor3 = Color3_Value_493;
        Frame_12.BorderSizePixel = 0;
        Frame_12.Parent = ScreenGui_2;
        local UICorner_50 = Instance.new("UICorner");
        local UDim_Value_58 = UDim_New(0, 14);
        UICorner_50.CornerRadius = UDim_Value_58;
        UICorner_50.Parent = Frame_12;
        local TextLabel_55 = Instance.new("TextLabel");
        local UDim2_Value_271 = UDim2_New(1, 0, 0, 50);
        TextLabel_55.Size = UDim2_Value_271;
        TextLabel_55.BackgroundTransparency = 1;
        TextLabel_55.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_494 = Color3_New(0, 0, 0);
        TextLabel_55.TextColor3 = Color3_Value_494;
        TextLabel_55.TextSize = 20;
        local Enum_Font = Enum.Font;
        local SourceSansBold = Enum_Font.SourceSansBold;
        TextLabel_55.Font = SourceSansBold;
        TextLabel_55.TextWrapped = true;
        TextLabel_55.Parent = Frame_12;
        local TextBox = Instance.new("TextBox");
        local UDim2_Value_272 = UDim2_New(0.9, 0, 0, 42);
        TextBox.Size = UDim2_Value_272;
        local UDim2_Value_273 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox.Position = UDim2_Value_273;
        local Color3_Value_495 = Color3_FromRGB(240, 240, 240);
        TextBox.BackgroundColor3 = Color3_Value_495;
        local Color3_Value_496 = Color3_New(0, 0, 0);
        TextBox.TextColor3 = Color3_Value_496;
        TextBox.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_497 = Color3_FromRGB(140, 140, 140);
        TextBox.PlaceholderColor3 = Color3_Value_497;
        TextBox.Text = "";
        TextBox.TextSize = 18;
        local SourceSans = Enum_Font.SourceSans;
        TextBox.Font = SourceSans;
        TextBox.ClearTextOnFocus = false;
        TextBox.Parent = Frame_12;
        local UICorner_51 = Instance.new("UICorner");
        local UDim_Value_59 = UDim_New(0, 10);
        UICorner_51.CornerRadius = UDim_Value_59;
        UICorner_51.Parent = TextBox;
        local TextButton_9 = Instance.new("TextButton");
        local UDim2_Value_274 = UDim2_New(0.9, 0, 0, 42);
        TextButton_9.Size = UDim2_Value_274;
        local UDim2_Value_275 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_9.Position = UDim2_Value_275;
        local Color3_Value_498 = Color3_FromRGB(235, 235, 235);
        TextButton_9.BackgroundColor3 = Color3_Value_498;
        local Color3_Value_499 = Color3_New(0, 0, 0);
        TextButton_9.TextColor3 = Color3_Value_499;
        TextButton_9.Text = "俺要起飞";
        TextButton_9.TextSize = 18;
        local SourceSansBold_2 = Enum_Font.SourceSansBold;
        TextButton_9.Font = SourceSansBold_2;
        TextButton_9.Parent = Frame_12;
        local UICorner_52 = Instance.new("UICorner");
        local UDim_Value_60 = UDim_New(0, 10);
        UICorner_52.CornerRadius = UDim_Value_60;
        UICorner_52.Parent = TextButton_9;
        local TextButton_10 = Instance.new("TextButton");
        local UDim2_Value_276 = UDim2_New(0, 34, 0, 34);
        TextButton_10.Size = UDim2_Value_276;
        local UDim2_Value_277 = UDim2_New(1, -40, 0, 6);
        TextButton_10.Position = UDim2_Value_277;
        TextButton_10.BackgroundTransparency = 1;
        TextButton_10.Text = "×";
        local Color3_Value_500 = Color3_New(0.2, 0.2, 0.2);
        TextButton_10.TextColor3 = Color3_Value_500;
        TextButton_10.TextSize = 26;
        local SourceSansBold_3 = Enum_Font.SourceSansBold;
        TextButton_10.Font = SourceSansBold_3;
        TextButton_10.Parent = Frame_12;
        local Connection_53;
        Connection_53 = TextButton_10.MouseButton1Click:Connect(function()
            local Destroy = ScreenGui_2:Destroy();

        end);
        local Connection_54;
        Connection_54 = TextButton_9.MouseButton1Click:Connect(function()
            local Success_65, Error_Message_65 = pcall(function(...)
                local var569 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FreeKey.txt\", true)");
                local Loaded_Func_7 = var569();
                local var570 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FreeKey.txt", true);
            end) -- true, var570
            local var571 = tostring(var570);
            local Text = TextBox.Text;
            local _390751814QQ = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_55;
        Connection_55 = TextBox.FocusLost:Connect(function(EnterPressed) -- args: EnterPressed_2, InputThatCausedFocusLoss;
            if EnterPressed then -- ran, expr id 12, has no else.
                local Success_66, Error_Message_66 = pcall(function(...)
                    local var572 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FreeKey.txt\", true)");
                    local _call573 = var572();
                end) -- true, _call573
                local var574 = tostring(_call573);
                local Text_2 = TextBox.Text;
                local _390751814QQ_2 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_43 = task.spawn(function()
    local Parent_52 = LocalScript_43.Parent;
    local New_134 = Font.new;
    local Bold_73 = Enum_FontWeight.Bold;
    local _call565 = New_134("rbxasset://fonts/families/FredokaOne.json", Bold_73);
    TextLabel_12.FontFace = _call565;
    TextLabel_12.TextSize = 16;
    local Color3_Value_447 = Color3_New(1, 1, 1);
    TextLabel_12.TextColor3 = Color3_Value_447;
    local Left_52 = Enum_TextXAlignment.Left;
    TextLabel_12.TextXAlignment = Left_52;
    TextLabel_12.RichText = true;
    local Y_74 = Enum_AutomaticSize.Y;
    TextLabel_12.AutomaticSize = Y_74;
    TextLabel_12.TextWrapped = true;

end);
local Spawned_44 = task.spawn(function()
    local Players_5 = game:GetService("Players");
    local StarterGui_2 = game:GetService("StarterGui");
    local LocalPlayer_5 = Players.LocalPlayer;
    local Parent_53 = LocalScript_44.Parent;
    local Connection_11;
    Connection_11 = ImageButton_4.MouseButton1Click:Connect(function()
        local ScreenGui_3 = Instance.new("ScreenGui");
        ScreenGui_3.ResetOnSpawn = false;
        local PlayerGui_3 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_3.Parent = PlayerGui_3;
        local Frame_13 = Instance.new("Frame");
        local UDim2_Value_278 = UDim2_New(0, 340, 0, 190);
        Frame_13.Size = UDim2_Value_278;
        local UDim2_Value_279 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_13.Position = UDim2_Value_279;
        local Color3_Value_501 = Color3_New(1, 1, 1);
        Frame_13.BackgroundColor3 = Color3_Value_501;
        Frame_13.BorderSizePixel = 0;
        Frame_13.Parent = ScreenGui_3;
        local UICorner_53 = Instance.new("UICorner");
        local UDim_Value_61 = UDim_New(0, 14);
        UICorner_53.CornerRadius = UDim_Value_61;
        UICorner_53.Parent = Frame_13;
        local TextLabel_56 = Instance.new("TextLabel");
        local UDim2_Value_280 = UDim2_New(1, 0, 0, 50);
        TextLabel_56.Size = UDim2_Value_280;
        TextLabel_56.BackgroundTransparency = 1;
        TextLabel_56.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_502 = Color3_New(0, 0, 0);
        TextLabel_56.TextColor3 = Color3_Value_502;
        TextLabel_56.TextSize = 20;
        local SourceSansBold_4 = Enum_Font.SourceSansBold;
        TextLabel_56.Font = SourceSansBold_4;
        TextLabel_56.TextWrapped = true;
        TextLabel_56.Parent = Frame_13;
        local TextBox_2 = Instance.new("TextBox");
        local UDim2_Value_281 = UDim2_New(0.9, 0, 0, 42);
        TextBox_2.Size = UDim2_Value_281;
        local UDim2_Value_282 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_2.Position = UDim2_Value_282;
        local Color3_Value_503 = Color3_FromRGB(240, 240, 240);
        TextBox_2.BackgroundColor3 = Color3_Value_503;
        local Color3_Value_504 = Color3_New(0, 0, 0);
        TextBox_2.TextColor3 = Color3_Value_504;
        TextBox_2.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_505 = Color3_FromRGB(140, 140, 140);
        TextBox_2.PlaceholderColor3 = Color3_Value_505;
        TextBox_2.Text = "";
        TextBox_2.TextSize = 18;
        local SourceSans_2 = Enum_Font.SourceSans;
        TextBox_2.Font = SourceSans_2;
        TextBox_2.ClearTextOnFocus = false;
        TextBox_2.Parent = Frame_13;
        local UICorner_54 = Instance.new("UICorner");
        local UDim_Value_62 = UDim_New(0, 10);
        UICorner_54.CornerRadius = UDim_Value_62;
        UICorner_54.Parent = TextBox_2;
        local TextButton_11 = Instance.new("TextButton");
        local UDim2_Value_283 = UDim2_New(0.9, 0, 0, 42);
        TextButton_11.Size = UDim2_Value_283;
        local UDim2_Value_284 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_11.Position = UDim2_Value_284;
        local Color3_Value_506 = Color3_FromRGB(235, 235, 235);
        TextButton_11.BackgroundColor3 = Color3_Value_506;
        local Color3_Value_507 = Color3_New(0, 0, 0);
        TextButton_11.TextColor3 = Color3_Value_507;
        TextButton_11.Text = "俺要起飞";
        TextButton_11.TextSize = 18;
        local SourceSansBold_5 = Enum_Font.SourceSansBold;
        TextButton_11.Font = SourceSansBold_5;
        TextButton_11.Parent = Frame_13;
        local UICorner_55 = Instance.new("UICorner");
        local UDim_Value_63 = UDim_New(0, 10);
        UICorner_55.CornerRadius = UDim_Value_63;
        UICorner_55.Parent = TextButton_11;
        local TextButton_12 = Instance.new("TextButton");
        local UDim2_Value_285 = UDim2_New(0, 34, 0, 34);
        TextButton_12.Size = UDim2_Value_285;
        local UDim2_Value_286 = UDim2_New(1, -40, 0, 6);
        TextButton_12.Position = UDim2_Value_286;
        TextButton_12.BackgroundTransparency = 1;
        TextButton_12.Text = "×";
        local Color3_Value_508 = Color3_New(0.2, 0.2, 0.2);
        TextButton_12.TextColor3 = Color3_Value_508;
        TextButton_12.TextSize = 26;
        local SourceSansBold_6 = Enum_Font.SourceSansBold;
        TextButton_12.Font = SourceSansBold_6;
        TextButton_12.Parent = Frame_13;
        local Connection_56;
        Connection_56 = TextButton_12.MouseButton1Click:Connect(function()
            local Destroy_2 = ScreenGui_3:Destroy();

        end);
        local Connection_57;
        Connection_57 = TextButton_11.MouseButton1Click:Connect(function()
            local Success_67, Error_Message_67 = pcall(function(...)
                local var575 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FreeKey.txt\", true)");
                local Loaded_Func_9 = var575();
                local var576 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FreeKey.txt", true);
            end) -- true, "390751814\n\n"
            local Text_3 = TextBox_2.Text;
            local _390751814QQ_3 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_58;
        Connection_58 = TextBox_2.FocusLost:Connect(function(EnterPressed_3) -- args: EnterPressed_4, InputThatCausedFocusLoss_2;
            if EnterPressed_3 then -- ran, expr id 13, has no else.
                local Success_68, Error_Message_68 = pcall(function(...)
                    local var577 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FreeKey.txt\", true)");
                    local Loaded_Func_10 = var577();
                    local var578 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FreeKey.txt", true);
                end) -- true, "390751814\n\n"
                local Text_4 = TextBox_2.Text;
                local _390751814QQ_4 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_45 = task.spawn(function()
    local Parent_54 = LocalScript_45.Parent;
    local New_135 = Font.new;
    local Bold_74 = Enum_FontWeight.Bold;
    local _call562 = New_135("rbxasset://fonts/families/FredokaOne.json", Bold_74);
    TextLabel_13.FontFace = _call562;
    TextLabel_13.TextSize = 16;
    local Color3_Value_448 = Color3_New(1, 1, 1);
    TextLabel_13.TextColor3 = Color3_Value_448;
    local Left_53 = Enum_TextXAlignment.Left;
    TextLabel_13.TextXAlignment = Left_53;
    TextLabel_13.RichText = true;
    local Y_75 = Enum_AutomaticSize.Y;
    TextLabel_13.AutomaticSize = Y_75;
    TextLabel_13.TextWrapped = true;

end);
local Spawned_46 = task.spawn(function()
    local Players_6 = game:GetService("Players");
    local StarterGui_3 = game:GetService("StarterGui");
    local LocalPlayer_6 = Players.LocalPlayer;
    local Parent_55 = LocalScript_46.Parent;
    local Connection_12;
    Connection_12 = ImageButton_5.MouseButton1Click:Connect(function()
        local ScreenGui_4 = Instance.new("ScreenGui");
        ScreenGui_4.ResetOnSpawn = false;
        local PlayerGui_4 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_4.Parent = PlayerGui_4;
        local Frame_14 = Instance.new("Frame");
        local UDim2_Value_287 = UDim2_New(0, 340, 0, 190);
        Frame_14.Size = UDim2_Value_287;
        local UDim2_Value_288 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_14.Position = UDim2_Value_288;
        local Color3_Value_509 = Color3_New(1, 1, 1);
        Frame_14.BackgroundColor3 = Color3_Value_509;
        Frame_14.BorderSizePixel = 0;
        Frame_14.Parent = ScreenGui_4;
        local UICorner_56 = Instance.new("UICorner");
        local UDim_Value_64 = UDim_New(0, 14);
        UICorner_56.CornerRadius = UDim_Value_64;
        UICorner_56.Parent = Frame_14;
        local TextLabel_57 = Instance.new("TextLabel");
        local UDim2_Value_289 = UDim2_New(1, 0, 0, 50);
        TextLabel_57.Size = UDim2_Value_289;
        TextLabel_57.BackgroundTransparency = 1;
        TextLabel_57.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_510 = Color3_New(0, 0, 0);
        TextLabel_57.TextColor3 = Color3_Value_510;
        TextLabel_57.TextSize = 20;
        local SourceSansBold_7 = Enum_Font.SourceSansBold;
        TextLabel_57.Font = SourceSansBold_7;
        TextLabel_57.TextWrapped = true;
        TextLabel_57.Parent = Frame_14;
        local TextBox_3 = Instance.new("TextBox");
        local UDim2_Value_290 = UDim2_New(0.9, 0, 0, 42);
        TextBox_3.Size = UDim2_Value_290;
        local UDim2_Value_291 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_3.Position = UDim2_Value_291;
        local Color3_Value_511 = Color3_FromRGB(240, 240, 240);
        TextBox_3.BackgroundColor3 = Color3_Value_511;
        local Color3_Value_512 = Color3_New(0, 0, 0);
        TextBox_3.TextColor3 = Color3_Value_512;
        TextBox_3.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_513 = Color3_FromRGB(140, 140, 140);
        TextBox_3.PlaceholderColor3 = Color3_Value_513;
        TextBox_3.Text = "";
        TextBox_3.TextSize = 18;
        local SourceSans_3 = Enum_Font.SourceSans;
        TextBox_3.Font = SourceSans_3;
        TextBox_3.ClearTextOnFocus = false;
        TextBox_3.Parent = Frame_14;
        local UICorner_57 = Instance.new("UICorner");
        local UDim_Value_65 = UDim_New(0, 10);
        UICorner_57.CornerRadius = UDim_Value_65;
        UICorner_57.Parent = TextBox_3;
        local TextButton_13 = Instance.new("TextButton");
        local UDim2_Value_292 = UDim2_New(0.9, 0, 0, 42);
        TextButton_13.Size = UDim2_Value_292;
        local UDim2_Value_293 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_13.Position = UDim2_Value_293;
        local Color3_Value_514 = Color3_FromRGB(235, 235, 235);
        TextButton_13.BackgroundColor3 = Color3_Value_514;
        local Color3_Value_515 = Color3_New(0, 0, 0);
        TextButton_13.TextColor3 = Color3_Value_515;
        TextButton_13.Text = "俺要起飞";
        TextButton_13.TextSize = 18;
        local SourceSansBold_8 = Enum_Font.SourceSansBold;
        TextButton_13.Font = SourceSansBold_8;
        TextButton_13.Parent = Frame_14;
        local UICorner_58 = Instance.new("UICorner");
        local UDim_Value_66 = UDim_New(0, 10);
        UICorner_58.CornerRadius = UDim_Value_66;
        UICorner_58.Parent = TextButton_13;
        local TextButton_14 = Instance.new("TextButton");
        local UDim2_Value_294 = UDim2_New(0, 34, 0, 34);
        TextButton_14.Size = UDim2_Value_294;
        local UDim2_Value_295 = UDim2_New(1, -40, 0, 6);
        TextButton_14.Position = UDim2_Value_295;
        TextButton_14.BackgroundTransparency = 1;
        TextButton_14.Text = "×";
        local Color3_Value_516 = Color3_New(0.2, 0.2, 0.2);
        TextButton_14.TextColor3 = Color3_Value_516;
        TextButton_14.TextSize = 26;
        local SourceSansBold_9 = Enum_Font.SourceSansBold;
        TextButton_14.Font = SourceSansBold_9;
        TextButton_14.Parent = Frame_14;
        local Connection_59;
        Connection_59 = TextButton_14.MouseButton1Click:Connect(function()
            local Destroy_3 = ScreenGui_4:Destroy();

        end);
        local Connection_60;
        Connection_60 = TextButton_13.MouseButton1Click:Connect(function()
            local Success_69, Error_Message_69 = pcall(function(...)
                local var579 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FreeKey.txt\", true)");
                local _call580 = var579();
            end) -- true, _call580
            local var581 = tostring(_call580);
            local Text_5 = TextBox_3.Text;
            local _390751814QQ_5 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_61;
        Connection_61 = TextBox_3.FocusLost:Connect(function(EnterPressed_5) -- args: EnterPressed_6, InputThatCausedFocusLoss_3;
            if EnterPressed_5 then -- ran, expr id 14, has no else.
                local Success_70, Error_Message_70 = pcall(function(...)
                    local var582 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FreeKey.txt\", true)");
                    local Loaded_Func_12 = var582();
                    local var583 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FreeKey.txt", true);
                end) -- true, "390751814\n\n"
                local Text_6 = TextBox_3.Text;
                local _390751814QQ_6 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_47 = task.spawn(function()
    local Parent_56 = LocalScript_47.Parent;
    local New_136 = Font.new;
    local Bold_75 = Enum_FontWeight.Bold;
    local _call559 = New_136("rbxasset://fonts/families/FredokaOne.json", Bold_75);
    TextLabel_14.FontFace = _call559;
    TextLabel_14.TextSize = 16;
    local Color3_Value_449 = Color3_New(1, 1, 1);
    TextLabel_14.TextColor3 = Color3_Value_449;
    local Left_54 = Enum_TextXAlignment.Left;
    TextLabel_14.TextXAlignment = Left_54;
    TextLabel_14.RichText = true;
    local Y_76 = Enum_AutomaticSize.Y;
    TextLabel_14.AutomaticSize = Y_76;
    TextLabel_14.TextWrapped = true;

end);
local Spawned_48 = task.spawn(function()
    local Players_7 = game:GetService("Players");
    local StarterGui_4 = game:GetService("StarterGui");
    local LocalPlayer_7 = Players.LocalPlayer;
    local Parent_57 = LocalScript_48.Parent;
    local Connection_13;
    Connection_13 = ImageButton_6.MouseButton1Click:Connect(function()
        local ScreenGui_5 = Instance.new("ScreenGui");
        ScreenGui_5.ResetOnSpawn = false;
        local PlayerGui_5 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_5.Parent = PlayerGui_5;
        local Frame_15 = Instance.new("Frame");
        local UDim2_Value_296 = UDim2_New(0, 340, 0, 190);
        Frame_15.Size = UDim2_Value_296;
        local UDim2_Value_297 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_15.Position = UDim2_Value_297;
        local Color3_Value_517 = Color3_New(1, 1, 1);
        Frame_15.BackgroundColor3 = Color3_Value_517;
        Frame_15.BorderSizePixel = 0;
        Frame_15.Parent = ScreenGui_5;
        local UICorner_59 = Instance.new("UICorner");
        local UDim_Value_67 = UDim_New(0, 14);
        UICorner_59.CornerRadius = UDim_Value_67;
        UICorner_59.Parent = Frame_15;
        local TextLabel_58 = Instance.new("TextLabel");
        local UDim2_Value_298 = UDim2_New(1, 0, 0, 50);
        TextLabel_58.Size = UDim2_Value_298;
        TextLabel_58.BackgroundTransparency = 1;
        TextLabel_58.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_518 = Color3_New(0, 0, 0);
        TextLabel_58.TextColor3 = Color3_Value_518;
        TextLabel_58.TextSize = 20;
        local SourceSansBold_10 = Enum_Font.SourceSansBold;
        TextLabel_58.Font = SourceSansBold_10;
        TextLabel_58.TextWrapped = true;
        TextLabel_58.Parent = Frame_15;
        local TextBox_4 = Instance.new("TextBox");
        local UDim2_Value_299 = UDim2_New(0.9, 0, 0, 42);
        TextBox_4.Size = UDim2_Value_299;
        local UDim2_Value_300 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_4.Position = UDim2_Value_300;
        local Color3_Value_519 = Color3_FromRGB(240, 240, 240);
        TextBox_4.BackgroundColor3 = Color3_Value_519;
        local Color3_Value_520 = Color3_New(0, 0, 0);
        TextBox_4.TextColor3 = Color3_Value_520;
        TextBox_4.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_521 = Color3_FromRGB(140, 140, 140);
        TextBox_4.PlaceholderColor3 = Color3_Value_521;
        TextBox_4.Text = "";
        TextBox_4.TextSize = 18;
        local SourceSans_4 = Enum_Font.SourceSans;
        TextBox_4.Font = SourceSans_4;
        TextBox_4.ClearTextOnFocus = false;
        TextBox_4.Parent = Frame_15;
        local UICorner_60 = Instance.new("UICorner");
        local UDim_Value_68 = UDim_New(0, 10);
        UICorner_60.CornerRadius = UDim_Value_68;
        UICorner_60.Parent = TextBox_4;
        local TextButton_15 = Instance.new("TextButton");
        local UDim2_Value_301 = UDim2_New(0.9, 0, 0, 42);
        TextButton_15.Size = UDim2_Value_301;
        local UDim2_Value_302 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_15.Position = UDim2_Value_302;
        local Color3_Value_522 = Color3_FromRGB(235, 235, 235);
        TextButton_15.BackgroundColor3 = Color3_Value_522;
        local Color3_Value_523 = Color3_New(0, 0, 0);
        TextButton_15.TextColor3 = Color3_Value_523;
        TextButton_15.Text = "俺要起飞";
        TextButton_15.TextSize = 18;
        local SourceSansBold_11 = Enum_Font.SourceSansBold;
        TextButton_15.Font = SourceSansBold_11;
        TextButton_15.Parent = Frame_15;
        local UICorner_61 = Instance.new("UICorner");
        local UDim_Value_69 = UDim_New(0, 10);
        UICorner_61.CornerRadius = UDim_Value_69;
        UICorner_61.Parent = TextButton_15;
        local TextButton_16 = Instance.new("TextButton");
        local UDim2_Value_303 = UDim2_New(0, 34, 0, 34);
        TextButton_16.Size = UDim2_Value_303;
        local UDim2_Value_304 = UDim2_New(1, -40, 0, 6);
        TextButton_16.Position = UDim2_Value_304;
        TextButton_16.BackgroundTransparency = 1;
        TextButton_16.Text = "×";
        local Color3_Value_524 = Color3_New(0.2, 0.2, 0.2);
        TextButton_16.TextColor3 = Color3_Value_524;
        TextButton_16.TextSize = 26;
        local SourceSansBold_12 = Enum_Font.SourceSansBold;
        TextButton_16.Font = SourceSansBold_12;
        TextButton_16.Parent = Frame_15;
        local Connection_62;
        Connection_62 = TextButton_16.MouseButton1Click:Connect(function()
            local Destroy_4 = ScreenGui_5:Destroy();

        end);
        local Connection_63;
        Connection_63 = TextButton_15.MouseButton1Click:Connect(function()
            local Success_71, Error_Message_71 = pcall(function(...)
                local var584 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FreeKey.txt\", true)");
                local Loaded_Func_13 = var584();
                local var585 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FreeKey.txt", true);
            end) -- true, "390751814\n\n"
            local Text_7 = TextBox_4.Text;
            local _390751814QQ_7 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_64;
        Connection_64 = TextBox_4.FocusLost:Connect(function(EnterPressed_7) -- args: EnterPressed_8, InputThatCausedFocusLoss_4;
            if EnterPressed_7 then -- ran, expr id 15, has no else.
                local Success_72, Error_Message_72 = pcall(function(...)
                    local var586 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FreeKey.txt\", true)");
                    local _call587 = var586();
                end) -- true, _call587
                local var588 = tostring(_call587);
                local Text_8 = TextBox_4.Text;
                local _390751814QQ_8 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_49 = task.spawn(function()
    local Parent_58 = LocalScript_49.Parent;
    local New_137 = Font.new;
    local Bold_76 = Enum_FontWeight.Bold;
    local _call556 = New_137("rbxasset://fonts/families/FredokaOne.json", Bold_76);
    TextLabel_15.FontFace = _call556;
    TextLabel_15.TextSize = 16;
    local Color3_Value_450 = Color3_New(1, 1, 1);
    TextLabel_15.TextColor3 = Color3_Value_450;
    local Left_55 = Enum_TextXAlignment.Left;
    TextLabel_15.TextXAlignment = Left_55;
    TextLabel_15.RichText = true;
    local Y_77 = Enum_AutomaticSize.Y;
    TextLabel_15.AutomaticSize = Y_77;
    TextLabel_15.TextWrapped = true;

end);
local Spawned_50 = task.spawn(function()
    local Players_8 = game:GetService("Players");
    local StarterGui_5 = game:GetService("StarterGui");
    local LocalPlayer_8 = Players.LocalPlayer;
    local Parent_59 = LocalScript_50.Parent;
    local Connection_14;
    Connection_14 = ImageButton_7.MouseButton1Click:Connect(function()
        local ScreenGui_6 = Instance.new("ScreenGui");
        ScreenGui_6.ResetOnSpawn = false;
        local PlayerGui_6 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_6.Parent = PlayerGui_6;
        local Frame_16 = Instance.new("Frame");
        local UDim2_Value_305 = UDim2_New(0, 340, 0, 190);
        Frame_16.Size = UDim2_Value_305;
        local UDim2_Value_306 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_16.Position = UDim2_Value_306;
        local Color3_Value_525 = Color3_New(1, 1, 1);
        Frame_16.BackgroundColor3 = Color3_Value_525;
        Frame_16.BorderSizePixel = 0;
        Frame_16.Parent = ScreenGui_6;
        local UICorner_62 = Instance.new("UICorner");
        local UDim_Value_70 = UDim_New(0, 14);
        UICorner_62.CornerRadius = UDim_Value_70;
        UICorner_62.Parent = Frame_16;
        local TextLabel_59 = Instance.new("TextLabel");
        local UDim2_Value_307 = UDim2_New(1, 0, 0, 50);
        TextLabel_59.Size = UDim2_Value_307;
        TextLabel_59.BackgroundTransparency = 1;
        TextLabel_59.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_526 = Color3_New(0, 0, 0);
        TextLabel_59.TextColor3 = Color3_Value_526;
        TextLabel_59.TextSize = 20;
        local SourceSansBold_13 = Enum_Font.SourceSansBold;
        TextLabel_59.Font = SourceSansBold_13;
        TextLabel_59.TextWrapped = true;
        TextLabel_59.Parent = Frame_16;
        local TextBox_5 = Instance.new("TextBox");
        local UDim2_Value_308 = UDim2_New(0.9, 0, 0, 42);
        TextBox_5.Size = UDim2_Value_308;
        local UDim2_Value_309 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_5.Position = UDim2_Value_309;
        local Color3_Value_527 = Color3_FromRGB(240, 240, 240);
        TextBox_5.BackgroundColor3 = Color3_Value_527;
        local Color3_Value_528 = Color3_New(0, 0, 0);
        TextBox_5.TextColor3 = Color3_Value_528;
        TextBox_5.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_529 = Color3_FromRGB(140, 140, 140);
        TextBox_5.PlaceholderColor3 = Color3_Value_529;
        TextBox_5.Text = "";
        TextBox_5.TextSize = 18;
        local SourceSans_5 = Enum_Font.SourceSans;
        TextBox_5.Font = SourceSans_5;
        TextBox_5.ClearTextOnFocus = false;
        TextBox_5.Parent = Frame_16;
        local UICorner_63 = Instance.new("UICorner");
        local UDim_Value_71 = UDim_New(0, 10);
        UICorner_63.CornerRadius = UDim_Value_71;
        UICorner_63.Parent = TextBox_5;
        local TextButton_17 = Instance.new("TextButton");
        local UDim2_Value_310 = UDim2_New(0.9, 0, 0, 42);
        TextButton_17.Size = UDim2_Value_310;
        local UDim2_Value_311 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_17.Position = UDim2_Value_311;
        local Color3_Value_530 = Color3_FromRGB(235, 235, 235);
        TextButton_17.BackgroundColor3 = Color3_Value_530;
        local Color3_Value_531 = Color3_New(0, 0, 0);
        TextButton_17.TextColor3 = Color3_Value_531;
        TextButton_17.Text = "俺要起飞";
        TextButton_17.TextSize = 18;
        local SourceSansBold_14 = Enum_Font.SourceSansBold;
        TextButton_17.Font = SourceSansBold_14;
        TextButton_17.Parent = Frame_16;
        local UICorner_64 = Instance.new("UICorner");
        local UDim_Value_72 = UDim_New(0, 10);
        UICorner_64.CornerRadius = UDim_Value_72;
        UICorner_64.Parent = TextButton_17;
        local TextButton_18 = Instance.new("TextButton");
        local UDim2_Value_312 = UDim2_New(0, 34, 0, 34);
        TextButton_18.Size = UDim2_Value_312;
        local UDim2_Value_313 = UDim2_New(1, -40, 0, 6);
        TextButton_18.Position = UDim2_Value_313;
        TextButton_18.BackgroundTransparency = 1;
        TextButton_18.Text = "×";
        local Color3_Value_532 = Color3_New(0.2, 0.2, 0.2);
        TextButton_18.TextColor3 = Color3_Value_532;
        TextButton_18.TextSize = 26;
        local SourceSansBold_15 = Enum_Font.SourceSansBold;
        TextButton_18.Font = SourceSansBold_15;
        TextButton_18.Parent = Frame_16;
        local Connection_65;
        Connection_65 = TextButton_18.MouseButton1Click:Connect(function()
            local Destroy_5 = ScreenGui_6:Destroy();

        end);
        local Connection_66;
        Connection_66 = TextButton_17.MouseButton1Click:Connect(function()
            local Success_73, Error_Message_73 = pcall(function(...)
                local var589 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FreeKey.txt\", true)");
                local Loaded_Func_15 = var589();
                local var590 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FreeKey.txt", true);
            end) -- true, "390751814\n\n"
            local Text_9 = TextBox_5.Text;
            local _390751814QQ_9 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_67;
        Connection_67 = TextBox_5.FocusLost:Connect(function(EnterPressed_9) -- args: EnterPressed_10, InputThatCausedFocusLoss_5;
            if EnterPressed_9 then -- ran, expr id 16, has no else.
                local Success_74, Error_Message_74 = pcall(function(...)
                    local var591 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FreeKey.txt\", true)");
                    local Loaded_Func_16 = var591();
                    local var592 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FreeKey.txt", true);
                end) -- true, "390751814\n\n"
                local Text_10 = TextBox_5.Text;
                local _390751814QQ_10 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_51 = task.spawn(function()
    local Parent_60 = LocalScript_51.Parent;
    local New_138 = Font.new;
    local Bold_77 = Enum_FontWeight.Bold;
    local _call553 = New_138("rbxasset://fonts/families/FredokaOne.json", Bold_77);
    TextLabel_16.FontFace = _call553;
    TextLabel_16.TextSize = 16;
    local Color3_Value_451 = Color3_New(1, 1, 1);
    TextLabel_16.TextColor3 = Color3_Value_451;
    local Center_14 = Enum_TextXAlignment.Center;
    TextLabel_16.TextXAlignment = Center_14;
    TextLabel_16.RichText = true;
    local Y_78 = Enum_AutomaticSize.Y;
    TextLabel_16.AutomaticSize = Y_78;
    TextLabel_16.TextWrapped = true;

end);
local Spawned_52 = task.spawn(function()
    local Parent_61 = LocalScript_52.Parent;
    local None_5 = Enum_AutomaticSize.None;
    ScrollingFrame_5.AutomaticCanvasSize = None_5;
    ScrollingFrame_5.ScrollBarThickness = 6;
    local Color3_Value_452 = Color3_FromRGB(0, 0, 127);
    ScrollingFrame_5.ScrollBarImageColor3 = Color3_Value_452;
    local UDim2_Value_259 = UDim2_New(0, 0, 0, 0);
    ScrollingFrame_5.CanvasSize = UDim2_Value_259;
    ScrollingFrame_5.ClipsDescendants = true;
    ScrollingFrame_5.ScrollingEnabled = true;
    local UIListLayout_11 = ScrollingFrame_5:WaitForChild("UIListLayout");
    local Vertical_5 = Enum_FillDirection.Vertical;
    UIListLayout_11.FillDirection = Vertical_5;
    local LayoutOrder_11 = Enum_SortOrder.LayoutOrder;
    UIListLayout_11.SortOrder = LayoutOrder_11;
    local UDim_Value_56 = UDim_New(0, 16);
    UIListLayout_11.Padding = UDim_Value_56;
    local GetPropertyChangedSignal_5 = UIListLayout_11.GetPropertyChangedSignal;
    local AbsoluteContentSize_5 = UIListLayout_11:GetPropertyChangedSignal("AbsoluteContentSize");
    local Connect_5 = AbsoluteContentSize_5.Connect;
    local Connected_5 = AbsoluteContentSize_5:Connect(function()
        local AbsoluteContentSize_15 = UIListLayout_11.AbsoluteContentSize;
        local Y_126 = AbsoluteContentSize_15.Y;
        local UDim2_Value_314 = UDim2_New(0, 0, 0, Y_126);
        ScrollingFrame_5.CanvasSize = UDim2_Value_314;

    end);
    local Spawned_134 = task.spawn(function()
        local Waited_For_46 = task.wait();
        local AbsoluteContentSize_16 = UIListLayout_11.AbsoluteContentSize;
        local Y_127 = AbsoluteContentSize_16.Y;
        local UDim2_Value_315 = UDim2_New(0, 0, 0, Y_127);
        ScrollingFrame_5.CanvasSize = UDim2_Value_315;

    end);

end);
local Spawned_53 = task.spawn(function()
    local Parent_62 = LocalScript_53.Parent;
    local New_139 = Font.new;
    local Bold_78 = Enum_FontWeight.Bold;
    local _call545 = New_139("rbxasset://fonts/families/FredokaOne.json", Bold_78);
    TextLabel_17.FontFace = _call545;
    TextLabel_17.TextSize = 16;
    local Color3_Value_453 = Color3_New(1, 1, 1);
    TextLabel_17.TextColor3 = Color3_Value_453;
    local Left_56 = Enum_TextXAlignment.Left;
    TextLabel_17.TextXAlignment = Left_56;
    TextLabel_17.RichText = true;
    local Y_79 = Enum_AutomaticSize.Y;
    TextLabel_17.AutomaticSize = Y_79;
    TextLabel_17.TextWrapped = true;

end);
local Spawned_54 = task.spawn(function()
    local Players_9 = game:GetService("Players");
    local StarterGui_6 = game:GetService("StarterGui");
    local LocalPlayer_9 = Players.LocalPlayer;
    local Parent_63 = LocalScript_54.Parent;
    local Connection_15;
    Connection_15 = ImageButton_8.MouseButton1Click:Connect(function()
        local SendNotification = StarterGui:SetCore("SendNotification", {
            Text = "正在检测恁在不在白名单，不要狂点以免卡顿...",
            Title = "包月制脚本白名单验证",
            Duration = 10,
        });
        local Success_59, Error_Message_59 = pcall(function(...)
            local var432 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/LumberTycoon2WhiteList.txt\", true)");
            local _call433 = var432();
        end) -- true, _call433
        local var434 = tostring(_call433);
        local Name_8 = LocalPlayer.Name;
        local SendNotification_2 = StarterGui:SetCore("SendNotification", {
            Text = "请联系管理员购买，390751814微信QQ同号",
            Title = "白名单里没恁",
            Duration = 10,
        });

    end);

end);
local Spawned_55 = task.spawn(function()
    local Parent_64 = LocalScript_55.Parent;
    local New_140 = Font.new;
    local Bold_79 = Enum_FontWeight.Bold;
    local _call542 = New_140("rbxasset://fonts/families/FredokaOne.json", Bold_79);
    TextLabel_18.FontFace = _call542;
    TextLabel_18.TextSize = 16;
    local Color3_Value_454 = Color3_New(1, 1, 1);
    TextLabel_18.TextColor3 = Color3_Value_454;
    local Left_57 = Enum_TextXAlignment.Left;
    TextLabel_18.TextXAlignment = Left_57;
    TextLabel_18.RichText = true;
    local Y_80 = Enum_AutomaticSize.Y;
    TextLabel_18.AutomaticSize = Y_80;
    TextLabel_18.TextWrapped = true;

end);
local Spawned_56 = task.spawn(function()
    local Players_10 = game:GetService("Players");
    local StarterGui_7 = game:GetService("StarterGui");
    local LocalPlayer_10 = Players.LocalPlayer;
    local Parent_65 = LocalScript_56.Parent;
    local Connection_16;
    Connection_16 = ImageButton_9.MouseButton1Click:Connect(function()
        local SendNotification_3 = StarterGui:SetCore("SendNotification", {
            Text = "正在检测恁在不在白名单，不要狂点以免卡顿...",
            Title = "包月制脚本白名单验证",
            Duration = 10,
        });
        local Success_60, Error_Message_60 = pcall(function(...)
            local var435 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/TheForgeWhiteList.txt\", true)");
            local Loaded_Func_2 = var435();
            local var436 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/TheForgeWhiteList.txt", true);
        end) -- true, var436
        local var437 = tostring(var436);
        local Name_9 = LocalPlayer.Name;
        local SendNotification_4 = StarterGui:SetCore("SendNotification", {
            Text = "请联系管理员购买，390751814微信QQ同号",
            Title = "白名单里没恁",
            Duration = 10,
        });

    end);

end);
local Spawned_57 = task.spawn(function()
    local Parent_66 = LocalScript_57.Parent;
    local New_141 = Font.new;
    local Bold_80 = Enum_FontWeight.Bold;
    local _call539 = New_141("rbxasset://fonts/families/FredokaOne.json", Bold_80);
    TextLabel_19.FontFace = _call539;
    TextLabel_19.TextSize = 16;
    local Color3_Value_455 = Color3_New(1, 1, 1);
    TextLabel_19.TextColor3 = Color3_Value_455;
    local Left_58 = Enum_TextXAlignment.Left;
    TextLabel_19.TextXAlignment = Left_58;
    TextLabel_19.RichText = true;
    local Y_81 = Enum_AutomaticSize.Y;
    TextLabel_19.AutomaticSize = Y_81;
    TextLabel_19.TextWrapped = true;

end);
local Spawned_58 = task.spawn(function()
    local Players_11 = game:GetService("Players");
    local StarterGui_8 = game:GetService("StarterGui");
    local LocalPlayer_11 = Players.LocalPlayer;
    local Parent_67 = LocalScript_58.Parent;
    local Connection_17;
    Connection_17 = ImageButton_10.MouseButton1Click:Connect(function()
        local SendNotification_5 = StarterGui:SetCore("SendNotification", {
            Text = "正在检测恁在不在白名单，不要狂点以免卡顿...",
            Title = "包月制脚本白名单验证",
            Duration = 10,
        });
        local Success_61, Error_Message_61 = pcall(function(...)
            local var438 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/DeadRailsWhiteList.txt\", true)");
            local Loaded_Func_3 = var438();
            local var439 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/DeadRailsWhiteList.txt", true);
        end) -- true, var439
        local var440 = tostring(var439);
        local Name_10 = LocalPlayer.Name;
        local SendNotification_6 = StarterGui:SetCore("SendNotification", {
            Text = "请联系管理员购买，390751814微信QQ同号",
            Title = "白名单里没恁",
            Duration = 10,
        });

    end);

end);
local Spawned_59 = task.spawn(function()
    local Parent_68 = LocalScript_59.Parent;
    local New_142 = Font.new;
    local Bold_81 = Enum_FontWeight.Bold;
    local _call536 = New_142("rbxasset://fonts/families/FredokaOne.json", Bold_81);
    TextLabel_20.FontFace = _call536;
    TextLabel_20.TextSize = 16;
    local Color3_Value_456 = Color3_New(1, 1, 1);
    TextLabel_20.TextColor3 = Color3_Value_456;
    local Left_59 = Enum_TextXAlignment.Left;
    TextLabel_20.TextXAlignment = Left_59;
    TextLabel_20.RichText = true;
    local Y_82 = Enum_AutomaticSize.Y;
    TextLabel_20.AutomaticSize = Y_82;
    TextLabel_20.TextWrapped = true;

end);
local Spawned_60 = task.spawn(function()
    local Players_12 = game:GetService("Players");
    local StarterGui_9 = game:GetService("StarterGui");
    local LocalPlayer_12 = Players.LocalPlayer;
    local Parent_69 = LocalScript_60.Parent;
    local Connection_18;
    Connection_18 = ImageButton_11.MouseButton1Click:Connect(function()
        local SendNotification_7 = StarterGui:SetCore("SendNotification", {
            Text = "正在检测恁在不在白名单，不要狂点以免卡顿...",
            Title = "包月制脚本白名单验证",
            Duration = 10,
        });
        local Success_62, Error_Message_62 = pcall(function(...)
            local var441 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/WarTycoonWhiteList.txt\", true)");
            local _call442 = var441();
        end) -- true, _call442
        local var443 = tostring(_call442);
        local Name_11 = LocalPlayer.Name;
        local SendNotification_8 = StarterGui:SetCore("SendNotification", {
            Text = "请联系管理员购买，390751814微信QQ同号",
            Title = "白名单里没恁",
            Duration = 10,
        });

    end);

end);
local Spawned_61 = task.spawn(function()
    local Parent_70 = LocalScript_61.Parent;
    local New_143 = Font.new;
    local Bold_82 = Enum_FontWeight.Bold;
    local _call533 = New_143("rbxasset://fonts/families/FredokaOne.json", Bold_82);
    TextLabel_21.FontFace = _call533;
    TextLabel_21.TextSize = 16;
    local Color3_Value_457 = Color3_New(1, 1, 1);
    TextLabel_21.TextColor3 = Color3_Value_457;
    local Left_60 = Enum_TextXAlignment.Left;
    TextLabel_21.TextXAlignment = Left_60;
    TextLabel_21.RichText = true;
    local Y_83 = Enum_AutomaticSize.Y;
    TextLabel_21.AutomaticSize = Y_83;
    TextLabel_21.TextWrapped = true;

end);
local Spawned_62 = task.spawn(function()
    local Players_13 = game:GetService("Players");
    local StarterGui_10 = game:GetService("StarterGui");
    local LocalPlayer_13 = Players.LocalPlayer;
    local Parent_71 = LocalScript_62.Parent;
    local Connection_19;
    Connection_19 = ImageButton_12.MouseButton1Click:Connect(function()
        local SendNotification_9 = StarterGui:SetCore("SendNotification", {
            Text = "正在检测恁在不在白名单，不要狂点以免卡顿...",
            Title = "包月制脚本白名单验证",
            Duration = 10,
        });
        local Success_63, Error_Message_63 = pcall(function(...)
            local var444 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/BeeSwarmSimulatorWhiteList.txt\", true)");
            local Loaded_Func_5 = var444();
            local var445 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/BeeSwarmSimulatorWhiteList.txt", true);
        end) -- true, var445
        local var446 = tostring(var445);
        local Name_12 = LocalPlayer.Name;
        local SendNotification_10 = StarterGui:SetCore("SendNotification", {
            Text = "请联系管理员购买，390751814微信QQ同号",
            Title = "白名单里没恁",
            Duration = 10,
        });

    end);

end);
local Spawned_63 = task.spawn(function()
    local Parent_72 = LocalScript_63.Parent;
    local New_144 = Font.new;
    local Bold_83 = Enum_FontWeight.Bold;
    local _call530 = New_144("rbxasset://fonts/families/FredokaOne.json", Bold_83);
    TextLabel_22.FontFace = _call530;
    TextLabel_22.TextSize = 16;
    local Color3_Value_458 = Color3_New(1, 1, 1);
    TextLabel_22.TextColor3 = Color3_Value_458;
    local Left_61 = Enum_TextXAlignment.Left;
    TextLabel_22.TextXAlignment = Left_61;
    TextLabel_22.RichText = true;
    local Y_84 = Enum_AutomaticSize.Y;
    TextLabel_22.AutomaticSize = Y_84;
    TextLabel_22.TextWrapped = true;

end);
local Spawned_64 = task.spawn(function()
    local Players_14 = game:GetService("Players");
    local StarterGui_11 = game:GetService("StarterGui");
    local LocalPlayer_14 = Players.LocalPlayer;
    local Parent_73 = LocalScript_64.Parent;
    local Connection_20;
    Connection_20 = ImageButton_13.MouseButton1Click:Connect(function()
        local SendNotification_11 = StarterGui:SetCore("SendNotification", {
            Text = "正在检测恁在不在白名单，不要狂点以免卡顿...",
            Title = "包月制脚本白名单验证",
            Duration = 10,
        });
        local Success_64, Error_Message_64 = pcall(function(...)
            local var447 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/99NightsInTheForestWhiteList.txt\", true)");
            local _call448 = var447();
        end) -- true, _call448
        local var449 = tostring(_call448);
        local Name_13 = LocalPlayer.Name;
        local SendNotification_12 = StarterGui:SetCore("SendNotification", {
            Text = "请联系管理员购买，390751814微信QQ同号",
            Title = "白名单里没恁",
            Duration = 10,
        });

    end);

end);
local Spawned_65 = task.spawn(function()
    local Parent_74 = LocalScript_65.Parent;
    local New_145 = Font.new;
    local Bold_84 = Enum_FontWeight.Bold;
    local _call527 = New_145("rbxasset://fonts/families/FredokaOne.json", Bold_84);
    TextLabel_23.FontFace = _call527;
    TextLabel_23.TextSize = 16;
    local Color3_Value_459 = Color3_New(1, 1, 1);
    TextLabel_23.TextColor3 = Color3_Value_459;
    local Center_15 = Enum_TextXAlignment.Center;
    TextLabel_23.TextXAlignment = Center_15;
    TextLabel_23.RichText = true;
    local Y_85 = Enum_AutomaticSize.Y;
    TextLabel_23.AutomaticSize = Y_85;
    TextLabel_23.TextWrapped = true;

end);
local Spawned_66 = task.spawn(function()
    local Parent_75 = LocalScript_66.Parent;
    local None_6 = Enum_AutomaticSize.None;
    ScrollingFrame_6.AutomaticCanvasSize = None_6;
    ScrollingFrame_6.ScrollBarThickness = 6;
    local Color3_Value_460 = Color3_FromRGB(0, 0, 127);
    ScrollingFrame_6.ScrollBarImageColor3 = Color3_Value_460;
    local UDim2_Value_260 = UDim2_New(0, 0, 0, 0);
    ScrollingFrame_6.CanvasSize = UDim2_Value_260;
    ScrollingFrame_6.ClipsDescendants = true;
    ScrollingFrame_6.ScrollingEnabled = true;
    local UIListLayout_12 = ScrollingFrame_6:WaitForChild("UIListLayout");
    local Vertical_6 = Enum_FillDirection.Vertical;
    UIListLayout_12.FillDirection = Vertical_6;
    local LayoutOrder_12 = Enum_SortOrder.LayoutOrder;
    UIListLayout_12.SortOrder = LayoutOrder_12;
    local UDim_Value_57 = UDim_New(0, 16);
    UIListLayout_12.Padding = UDim_Value_57;
    local GetPropertyChangedSignal_6 = UIListLayout_12.GetPropertyChangedSignal;
    local AbsoluteContentSize_6 = UIListLayout_12:GetPropertyChangedSignal("AbsoluteContentSize");
    local Connect_6 = AbsoluteContentSize_6.Connect;
    local Connected_6 = AbsoluteContentSize_6:Connect(function()
        local AbsoluteContentSize_17 = UIListLayout_12.AbsoluteContentSize;
        local Y_128 = AbsoluteContentSize_17.Y;
        local UDim2_Value_316 = UDim2_New(0, 0, 0, Y_128);
        ScrollingFrame_6.CanvasSize = UDim2_Value_316;

    end);
    local Spawned_135 = task.spawn(function()
        local Waited_For_47 = task.wait();
        local AbsoluteContentSize_18 = UIListLayout_12.AbsoluteContentSize;
        local Y_129 = AbsoluteContentSize_18.Y;
        local UDim2_Value_317 = UDim2_New(0, 0, 0, Y_129);
        ScrollingFrame_6.CanvasSize = UDim2_Value_317;

    end);

end);
local Spawned_67 = task.spawn(function()
    local Parent_76 = LocalScript_67.Parent;
    local New_146 = Font.new;
    local Bold_85 = Enum_FontWeight.Bold;
    local _call519 = New_146("rbxasset://fonts/families/FredokaOne.json", Bold_85);
    TextLabel_24.FontFace = _call519;
    TextLabel_24.TextSize = 16;
    local Color3_Value_461 = Color3_New(1, 1, 1);
    TextLabel_24.TextColor3 = Color3_Value_461;
    local Left_62 = Enum_TextXAlignment.Left;
    TextLabel_24.TextXAlignment = Left_62;
    TextLabel_24.RichText = true;
    local Y_86 = Enum_AutomaticSize.Y;
    TextLabel_24.AutomaticSize = Y_86;
    TextLabel_24.TextWrapped = true;

end);
local Spawned_68 = task.spawn(function()
    local Players_15 = game:GetService("Players");
    local StarterGui_12 = game:GetService("StarterGui");
    local LocalPlayer_15 = Players.LocalPlayer;
    local Parent_77 = LocalScript_68.Parent;
    local Connection_21;
    Connection_21 = ImageButton_14.MouseButton1Click:Connect(function()
        local ScreenGui_7 = Instance.new("ScreenGui");
        ScreenGui_7.ResetOnSpawn = false;
        local PlayerGui_7 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_7.Parent = PlayerGui_7;
        local Frame_17 = Instance.new("Frame");
        local UDim2_Value_318 = UDim2_New(0, 340, 0, 190);
        Frame_17.Size = UDim2_Value_318;
        local UDim2_Value_319 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_17.Position = UDim2_Value_319;
        local Color3_Value_533 = Color3_New(1, 1, 1);
        Frame_17.BackgroundColor3 = Color3_Value_533;
        Frame_17.BorderSizePixel = 0;
        Frame_17.Parent = ScreenGui_7;
        local UICorner_65 = Instance.new("UICorner");
        local UDim_Value_73 = UDim_New(0, 14);
        UICorner_65.CornerRadius = UDim_Value_73;
        UICorner_65.Parent = Frame_17;
        local TextLabel_60 = Instance.new("TextLabel");
        local UDim2_Value_320 = UDim2_New(1, 0, 0, 50);
        TextLabel_60.Size = UDim2_Value_320;
        TextLabel_60.BackgroundTransparency = 1;
        TextLabel_60.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_534 = Color3_New(0, 0, 0);
        TextLabel_60.TextColor3 = Color3_Value_534;
        TextLabel_60.TextSize = 20;
        local SourceSansBold_16 = Enum_Font.SourceSansBold;
        TextLabel_60.Font = SourceSansBold_16;
        TextLabel_60.TextWrapped = true;
        TextLabel_60.Parent = Frame_17;
        local TextBox_6 = Instance.new("TextBox");
        local UDim2_Value_321 = UDim2_New(0.9, 0, 0, 42);
        TextBox_6.Size = UDim2_Value_321;
        local UDim2_Value_322 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_6.Position = UDim2_Value_322;
        local Color3_Value_535 = Color3_FromRGB(240, 240, 240);
        TextBox_6.BackgroundColor3 = Color3_Value_535;
        local Color3_Value_536 = Color3_New(0, 0, 0);
        TextBox_6.TextColor3 = Color3_Value_536;
        TextBox_6.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_537 = Color3_FromRGB(140, 140, 140);
        TextBox_6.PlaceholderColor3 = Color3_Value_537;
        TextBox_6.Text = "";
        TextBox_6.TextSize = 18;
        local SourceSans_6 = Enum_Font.SourceSans;
        TextBox_6.Font = SourceSans_6;
        TextBox_6.ClearTextOnFocus = false;
        TextBox_6.Parent = Frame_17;
        local UICorner_66 = Instance.new("UICorner");
        local UDim_Value_74 = UDim_New(0, 10);
        UICorner_66.CornerRadius = UDim_Value_74;
        UICorner_66.Parent = TextBox_6;
        local TextButton_19 = Instance.new("TextButton");
        local UDim2_Value_323 = UDim2_New(0.9, 0, 0, 42);
        TextButton_19.Size = UDim2_Value_323;
        local UDim2_Value_324 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_19.Position = UDim2_Value_324;
        local Color3_Value_538 = Color3_FromRGB(235, 235, 235);
        TextButton_19.BackgroundColor3 = Color3_Value_538;
        local Color3_Value_539 = Color3_New(0, 0, 0);
        TextButton_19.TextColor3 = Color3_Value_539;
        TextButton_19.Text = "俺要起飞";
        TextButton_19.TextSize = 18;
        local SourceSansBold_17 = Enum_Font.SourceSansBold;
        TextButton_19.Font = SourceSansBold_17;
        TextButton_19.Parent = Frame_17;
        local UICorner_67 = Instance.new("UICorner");
        local UDim_Value_75 = UDim_New(0, 10);
        UICorner_67.CornerRadius = UDim_Value_75;
        UICorner_67.Parent = TextButton_19;
        local TextButton_20 = Instance.new("TextButton");
        local UDim2_Value_325 = UDim2_New(0, 34, 0, 34);
        TextButton_20.Size = UDim2_Value_325;
        local UDim2_Value_326 = UDim2_New(1, -40, 0, 6);
        TextButton_20.Position = UDim2_Value_326;
        TextButton_20.BackgroundTransparency = 1;
        TextButton_20.Text = "×";
        local Color3_Value_540 = Color3_New(0.2, 0.2, 0.2);
        TextButton_20.TextColor3 = Color3_Value_540;
        TextButton_20.TextSize = 26;
        local SourceSansBold_18 = Enum_Font.SourceSansBold;
        TextButton_20.Font = SourceSansBold_18;
        TextButton_20.Parent = Frame_17;
        local Connection_68;
        Connection_68 = TextButton_20.MouseButton1Click:Connect(function()
            local Destroy_6 = ScreenGui_7:Destroy();

        end);
        local Connection_69;
        Connection_69 = TextButton_19.MouseButton1Click:Connect(function()
            local Success_75, Error_Message_75 = pcall(function(...)
                local var593 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/BloxFruitKey.txt\", true)");
                local _call594 = var593();
            end) -- true, _call594
            local var595 = tostring(_call594);
            local Text_11 = TextBox_6.Text;
            local _390751814QQ_11 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_70;
        Connection_70 = TextBox_6.FocusLost:Connect(function(EnterPressed_11) -- args: EnterPressed_12, InputThatCausedFocusLoss_6;
            if EnterPressed_11 then -- ran, expr id 17, has no else.
                local Success_76, Error_Message_76 = pcall(function(...)
                    local var596 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/BloxFruitKey.txt\", true)");
                    local Loaded_Func_18 = var596();
                    local var597 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/BloxFruitKey.txt", true);
                end) -- true, var597
                local var598 = tostring(var597);
                local Text_12 = TextBox_6.Text;
                local _390751814QQ_12 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_69 = task.spawn(function()
    local Parent_78 = LocalScript_69.Parent;
    local New_147 = Font.new;
    local Bold_86 = Enum_FontWeight.Bold;
    local _call516 = New_147("rbxasset://fonts/families/FredokaOne.json", Bold_86);
    TextLabel_25.FontFace = _call516;
    TextLabel_25.TextSize = 16;
    local Color3_Value_462 = Color3_New(1, 1, 1);
    TextLabel_25.TextColor3 = Color3_Value_462;
    local Left_63 = Enum_TextXAlignment.Left;
    TextLabel_25.TextXAlignment = Left_63;
    TextLabel_25.RichText = true;
    local Y_87 = Enum_AutomaticSize.Y;
    TextLabel_25.AutomaticSize = Y_87;
    TextLabel_25.TextWrapped = true;

end);
local Spawned_70 = task.spawn(function()
    local Players_16 = game:GetService("Players");
    local StarterGui_13 = game:GetService("StarterGui");
    local LocalPlayer_16 = Players.LocalPlayer;
    local Parent_79 = LocalScript_70.Parent;
    local Connection_22;
    Connection_22 = ImageButton_15.MouseButton1Click:Connect(function()
        local ScreenGui_8 = Instance.new("ScreenGui");
        ScreenGui_8.ResetOnSpawn = false;
        local PlayerGui_8 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_8.Parent = PlayerGui_8;
        local Frame_18 = Instance.new("Frame");
        local UDim2_Value_327 = UDim2_New(0, 340, 0, 190);
        Frame_18.Size = UDim2_Value_327;
        local UDim2_Value_328 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_18.Position = UDim2_Value_328;
        local Color3_Value_541 = Color3_New(1, 1, 1);
        Frame_18.BackgroundColor3 = Color3_Value_541;
        Frame_18.BorderSizePixel = 0;
        Frame_18.Parent = ScreenGui_8;
        local UICorner_68 = Instance.new("UICorner");
        local UDim_Value_76 = UDim_New(0, 14);
        UICorner_68.CornerRadius = UDim_Value_76;
        UICorner_68.Parent = Frame_18;
        local TextLabel_61 = Instance.new("TextLabel");
        local UDim2_Value_329 = UDim2_New(1, 0, 0, 50);
        TextLabel_61.Size = UDim2_Value_329;
        TextLabel_61.BackgroundTransparency = 1;
        TextLabel_61.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_542 = Color3_New(0, 0, 0);
        TextLabel_61.TextColor3 = Color3_Value_542;
        TextLabel_61.TextSize = 20;
        local SourceSansBold_19 = Enum_Font.SourceSansBold;
        TextLabel_61.Font = SourceSansBold_19;
        TextLabel_61.TextWrapped = true;
        TextLabel_61.Parent = Frame_18;
        local TextBox_7 = Instance.new("TextBox");
        local UDim2_Value_330 = UDim2_New(0.9, 0, 0, 42);
        TextBox_7.Size = UDim2_Value_330;
        local UDim2_Value_331 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_7.Position = UDim2_Value_331;
        local Color3_Value_543 = Color3_FromRGB(240, 240, 240);
        TextBox_7.BackgroundColor3 = Color3_Value_543;
        local Color3_Value_544 = Color3_New(0, 0, 0);
        TextBox_7.TextColor3 = Color3_Value_544;
        TextBox_7.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_545 = Color3_FromRGB(140, 140, 140);
        TextBox_7.PlaceholderColor3 = Color3_Value_545;
        TextBox_7.Text = "";
        TextBox_7.TextSize = 18;
        local SourceSans_7 = Enum_Font.SourceSans;
        TextBox_7.Font = SourceSans_7;
        TextBox_7.ClearTextOnFocus = false;
        TextBox_7.Parent = Frame_18;
        local UICorner_69 = Instance.new("UICorner");
        local UDim_Value_77 = UDim_New(0, 10);
        UICorner_69.CornerRadius = UDim_Value_77;
        UICorner_69.Parent = TextBox_7;
        local TextButton_21 = Instance.new("TextButton");
        local UDim2_Value_332 = UDim2_New(0.9, 0, 0, 42);
        TextButton_21.Size = UDim2_Value_332;
        local UDim2_Value_333 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_21.Position = UDim2_Value_333;
        local Color3_Value_546 = Color3_FromRGB(235, 235, 235);
        TextButton_21.BackgroundColor3 = Color3_Value_546;
        local Color3_Value_547 = Color3_New(0, 0, 0);
        TextButton_21.TextColor3 = Color3_Value_547;
        TextButton_21.Text = "俺要起飞";
        TextButton_21.TextSize = 18;
        local SourceSansBold_20 = Enum_Font.SourceSansBold;
        TextButton_21.Font = SourceSansBold_20;
        TextButton_21.Parent = Frame_18;
        local UICorner_70 = Instance.new("UICorner");
        local UDim_Value_78 = UDim_New(0, 10);
        UICorner_70.CornerRadius = UDim_Value_78;
        UICorner_70.Parent = TextButton_21;
        local TextButton_22 = Instance.new("TextButton");
        local UDim2_Value_334 = UDim2_New(0, 34, 0, 34);
        TextButton_22.Size = UDim2_Value_334;
        local UDim2_Value_335 = UDim2_New(1, -40, 0, 6);
        TextButton_22.Position = UDim2_Value_335;
        TextButton_22.BackgroundTransparency = 1;
        TextButton_22.Text = "×";
        local Color3_Value_548 = Color3_New(0.2, 0.2, 0.2);
        TextButton_22.TextColor3 = Color3_Value_548;
        TextButton_22.TextSize = 26;
        local SourceSansBold_21 = Enum_Font.SourceSansBold;
        TextButton_22.Font = SourceSansBold_21;
        TextButton_22.Parent = Frame_18;
        local Connection_71;
        Connection_71 = TextButton_22.MouseButton1Click:Connect(function()
            local Destroy_7 = ScreenGui_8:Destroy();

        end);
        local Connection_72;
        Connection_72 = TextButton_21.MouseButton1Click:Connect(function()
            local Success_77, Error_Message_77 = pcall(function(...)
                local var599 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/KinglegacyKey.txt\", true)");
                local _call600 = var599();
            end) -- true, _call600
            local var601 = tostring(_call600);
            local Text_13 = TextBox_7.Text;
            local _390751814QQ_13 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_73;
        Connection_73 = TextBox_7.FocusLost:Connect(function(EnterPressed_13) -- args: EnterPressed_14, InputThatCausedFocusLoss_7;
            if EnterPressed_13 then -- ran, expr id 18, has no else.
                local Success_78, Error_Message_78 = pcall(function(...)
                    local var602 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/KinglegacyKey.txt\", true)");
                    local _call603 = var602();
                end) -- true, _call603
                local var604 = tostring(_call603);
                local Text_14 = TextBox_7.Text;
                local _390751814QQ_14 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_71 = task.spawn(function()
    local Parent_80 = LocalScript_71.Parent;
    local New_148 = Font.new;
    local Bold_87 = Enum_FontWeight.Bold;
    local _call513 = New_148("rbxasset://fonts/families/FredokaOne.json", Bold_87);
    TextLabel_26.FontFace = _call513;
    TextLabel_26.TextSize = 16;
    local Color3_Value_463 = Color3_New(1, 1, 1);
    TextLabel_26.TextColor3 = Color3_Value_463;
    local Left_64 = Enum_TextXAlignment.Left;
    TextLabel_26.TextXAlignment = Left_64;
    TextLabel_26.RichText = true;
    local Y_88 = Enum_AutomaticSize.Y;
    TextLabel_26.AutomaticSize = Y_88;
    TextLabel_26.TextWrapped = true;

end);
local Spawned_72 = task.spawn(function()
    local Players_17 = game:GetService("Players");
    local StarterGui_14 = game:GetService("StarterGui");
    local LocalPlayer_17 = Players.LocalPlayer;
    local Parent_81 = LocalScript_72.Parent;
    local Connection_23;
    Connection_23 = ImageButton_16.MouseButton1Click:Connect(function()
        local ScreenGui_9 = Instance.new("ScreenGui");
        ScreenGui_9.ResetOnSpawn = false;
        local PlayerGui_9 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_9.Parent = PlayerGui_9;
        local Frame_19 = Instance.new("Frame");
        local UDim2_Value_336 = UDim2_New(0, 340, 0, 190);
        Frame_19.Size = UDim2_Value_336;
        local UDim2_Value_337 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_19.Position = UDim2_Value_337;
        local Color3_Value_549 = Color3_New(1, 1, 1);
        Frame_19.BackgroundColor3 = Color3_Value_549;
        Frame_19.BorderSizePixel = 0;
        Frame_19.Parent = ScreenGui_9;
        local UICorner_71 = Instance.new("UICorner");
        local UDim_Value_79 = UDim_New(0, 14);
        UICorner_71.CornerRadius = UDim_Value_79;
        UICorner_71.Parent = Frame_19;
        local TextLabel_62 = Instance.new("TextLabel");
        local UDim2_Value_338 = UDim2_New(1, 0, 0, 50);
        TextLabel_62.Size = UDim2_Value_338;
        TextLabel_62.BackgroundTransparency = 1;
        TextLabel_62.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_550 = Color3_New(0, 0, 0);
        TextLabel_62.TextColor3 = Color3_Value_550;
        TextLabel_62.TextSize = 20;
        local SourceSansBold_22 = Enum_Font.SourceSansBold;
        TextLabel_62.Font = SourceSansBold_22;
        TextLabel_62.TextWrapped = true;
        TextLabel_62.Parent = Frame_19;
        local TextBox_8 = Instance.new("TextBox");
        local UDim2_Value_339 = UDim2_New(0.9, 0, 0, 42);
        TextBox_8.Size = UDim2_Value_339;
        local UDim2_Value_340 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_8.Position = UDim2_Value_340;
        local Color3_Value_551 = Color3_FromRGB(240, 240, 240);
        TextBox_8.BackgroundColor3 = Color3_Value_551;
        local Color3_Value_552 = Color3_New(0, 0, 0);
        TextBox_8.TextColor3 = Color3_Value_552;
        TextBox_8.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_553 = Color3_FromRGB(140, 140, 140);
        TextBox_8.PlaceholderColor3 = Color3_Value_553;
        TextBox_8.Text = "";
        TextBox_8.TextSize = 18;
        local SourceSans_8 = Enum_Font.SourceSans;
        TextBox_8.Font = SourceSans_8;
        TextBox_8.ClearTextOnFocus = false;
        TextBox_8.Parent = Frame_19;
        local UICorner_72 = Instance.new("UICorner");
        local UDim_Value_80 = UDim_New(0, 10);
        UICorner_72.CornerRadius = UDim_Value_80;
        UICorner_72.Parent = TextBox_8;
        local TextButton_23 = Instance.new("TextButton");
        local UDim2_Value_341 = UDim2_New(0.9, 0, 0, 42);
        TextButton_23.Size = UDim2_Value_341;
        local UDim2_Value_342 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_23.Position = UDim2_Value_342;
        local Color3_Value_554 = Color3_FromRGB(235, 235, 235);
        TextButton_23.BackgroundColor3 = Color3_Value_554;
        local Color3_Value_555 = Color3_New(0, 0, 0);
        TextButton_23.TextColor3 = Color3_Value_555;
        TextButton_23.Text = "俺要起飞";
        TextButton_23.TextSize = 18;
        local SourceSansBold_23 = Enum_Font.SourceSansBold;
        TextButton_23.Font = SourceSansBold_23;
        TextButton_23.Parent = Frame_19;
        local UICorner_73 = Instance.new("UICorner");
        local UDim_Value_81 = UDim_New(0, 10);
        UICorner_73.CornerRadius = UDim_Value_81;
        UICorner_73.Parent = TextButton_23;
        local TextButton_24 = Instance.new("TextButton");
        local UDim2_Value_343 = UDim2_New(0, 34, 0, 34);
        TextButton_24.Size = UDim2_Value_343;
        local UDim2_Value_344 = UDim2_New(1, -40, 0, 6);
        TextButton_24.Position = UDim2_Value_344;
        TextButton_24.BackgroundTransparency = 1;
        TextButton_24.Text = "×";
        local Color3_Value_556 = Color3_New(0.2, 0.2, 0.2);
        TextButton_24.TextColor3 = Color3_Value_556;
        TextButton_24.TextSize = 26;
        local SourceSansBold_24 = Enum_Font.SourceSansBold;
        TextButton_24.Font = SourceSansBold_24;
        TextButton_24.Parent = Frame_19;
        local Connection_74;
        Connection_74 = TextButton_24.MouseButton1Click:Connect(function()
            local Destroy_8 = ScreenGui_9:Destroy();

        end);
        local Connection_75;
        Connection_75 = TextButton_23.MouseButton1Click:Connect(function()
            local Success_79, Error_Message_79 = pcall(function(...)
                local var605 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FishItKey.txt\", true)");
                local Loaded_Func_21 = var605();
                local var606 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FishItKey.txt", true);
            end) -- true, var606
            local var607 = tostring(var606);
            local Text_15 = TextBox_8.Text;
            local _390751814QQ_15 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_76;
        Connection_76 = TextBox_8.FocusLost:Connect(function(EnterPressed_15) -- args: EnterPressed_16, InputThatCausedFocusLoss_8;
            if EnterPressed_15 then -- ran, expr id 19, has no else.
                local Success_80, Error_Message_80 = pcall(function(...)
                    local var608 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FishItKey.txt\", true)");
                    local Loaded_Func_22 = var608();
                    local var609 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FishItKey.txt", true);
                end) -- true, var606
                local var610 = tostring(var606);
                local Text_16 = TextBox_8.Text;
                local _390751814QQ_16 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_73 = task.spawn(function()
    local Players_18 = game:GetService("Players");
    local StarterGui_15 = game:GetService("StarterGui");
    local LocalPlayer_18 = Players.LocalPlayer;
    local Parent_82 = LocalScript_73.Parent;
    local Connection_24;
    Connection_24 = ImageButton_17.MouseButton1Click:Connect(function()
        local ScreenGui_10 = Instance.new("ScreenGui");
        ScreenGui_10.ResetOnSpawn = false;
        local PlayerGui_10 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_10.Parent = PlayerGui_10;
        local Frame_20 = Instance.new("Frame");
        local UDim2_Value_345 = UDim2_New(0, 340, 0, 190);
        Frame_20.Size = UDim2_Value_345;
        local UDim2_Value_346 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_20.Position = UDim2_Value_346;
        local Color3_Value_557 = Color3_New(1, 1, 1);
        Frame_20.BackgroundColor3 = Color3_Value_557;
        Frame_20.BorderSizePixel = 0;
        Frame_20.Parent = ScreenGui_10;
        local UICorner_74 = Instance.new("UICorner");
        local UDim_Value_82 = UDim_New(0, 14);
        UICorner_74.CornerRadius = UDim_Value_82;
        UICorner_74.Parent = Frame_20;
        local TextLabel_63 = Instance.new("TextLabel");
        local UDim2_Value_347 = UDim2_New(1, 0, 0, 50);
        TextLabel_63.Size = UDim2_Value_347;
        TextLabel_63.BackgroundTransparency = 1;
        TextLabel_63.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_558 = Color3_New(0, 0, 0);
        TextLabel_63.TextColor3 = Color3_Value_558;
        TextLabel_63.TextSize = 20;
        local SourceSansBold_25 = Enum_Font.SourceSansBold;
        TextLabel_63.Font = SourceSansBold_25;
        TextLabel_63.TextWrapped = true;
        TextLabel_63.Parent = Frame_20;
        local TextBox_9 = Instance.new("TextBox");
        local UDim2_Value_348 = UDim2_New(0.9, 0, 0, 42);
        TextBox_9.Size = UDim2_Value_348;
        local UDim2_Value_349 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_9.Position = UDim2_Value_349;
        local Color3_Value_559 = Color3_FromRGB(240, 240, 240);
        TextBox_9.BackgroundColor3 = Color3_Value_559;
        local Color3_Value_560 = Color3_New(0, 0, 0);
        TextBox_9.TextColor3 = Color3_Value_560;
        TextBox_9.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_561 = Color3_FromRGB(140, 140, 140);
        TextBox_9.PlaceholderColor3 = Color3_Value_561;
        TextBox_9.Text = "";
        TextBox_9.TextSize = 18;
        local SourceSans_9 = Enum_Font.SourceSans;
        TextBox_9.Font = SourceSans_9;
        TextBox_9.ClearTextOnFocus = false;
        TextBox_9.Parent = Frame_20;
        local UICorner_75 = Instance.new("UICorner");
        local UDim_Value_83 = UDim_New(0, 10);
        UICorner_75.CornerRadius = UDim_Value_83;
        UICorner_75.Parent = TextBox_9;
        local TextButton_25 = Instance.new("TextButton");
        local UDim2_Value_350 = UDim2_New(0.9, 0, 0, 42);
        TextButton_25.Size = UDim2_Value_350;
        local UDim2_Value_351 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_25.Position = UDim2_Value_351;
        local Color3_Value_562 = Color3_FromRGB(235, 235, 235);
        TextButton_25.BackgroundColor3 = Color3_Value_562;
        local Color3_Value_563 = Color3_New(0, 0, 0);
        TextButton_25.TextColor3 = Color3_Value_563;
        TextButton_25.Text = "俺要起飞";
        TextButton_25.TextSize = 18;
        local SourceSansBold_26 = Enum_Font.SourceSansBold;
        TextButton_25.Font = SourceSansBold_26;
        TextButton_25.Parent = Frame_20;
        local UICorner_76 = Instance.new("UICorner");
        local UDim_Value_84 = UDim_New(0, 10);
        UICorner_76.CornerRadius = UDim_Value_84;
        UICorner_76.Parent = TextButton_25;
        local TextButton_26 = Instance.new("TextButton");
        local UDim2_Value_352 = UDim2_New(0, 34, 0, 34);
        TextButton_26.Size = UDim2_Value_352;
        local UDim2_Value_353 = UDim2_New(1, -40, 0, 6);
        TextButton_26.Position = UDim2_Value_353;
        TextButton_26.BackgroundTransparency = 1;
        TextButton_26.Text = "×";
        local Color3_Value_564 = Color3_New(0.2, 0.2, 0.2);
        TextButton_26.TextColor3 = Color3_Value_564;
        TextButton_26.TextSize = 26;
        local SourceSansBold_27 = Enum_Font.SourceSansBold;
        TextButton_26.Font = SourceSansBold_27;
        TextButton_26.Parent = Frame_20;
        local Connection_77;
        Connection_77 = TextButton_26.MouseButton1Click:Connect(function()
            local Destroy_9 = ScreenGui_10:Destroy();

        end);
        local Connection_78;
        Connection_78 = TextButton_25.MouseButton1Click:Connect(function()
            local Success_81, Error_Message_81 = pcall(function(...)
                local var611 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FischKey.txt\", true)");
                local Loaded_Func_23 = var611();
                local var612 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FischKey.txt", true);
            end) -- true, var612
            local var613 = tostring(var612);
            local Text_17 = TextBox_9.Text;
            local _390751814QQ_17 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_79;
        Connection_79 = TextBox_9.FocusLost:Connect(function(EnterPressed_17) -- args: EnterPressed_18, InputThatCausedFocusLoss_9;
            if EnterPressed_17 then -- ran, expr id 20, has no else.
                local Success_82, Error_Message_82 = pcall(function(...)
                    local var614 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FischKey.txt\", true)");
                    local Loaded_Func_24 = var614();
                    local var615 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FischKey.txt", true);
                end) -- true, var612
                local var616 = tostring(var612);
                local Text_18 = TextBox_9.Text;
                local _390751814QQ_18 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_74 = task.spawn(function()
    local Parent_83 = LocalScript_74.Parent;
    local New_149 = Font.new;
    local Bold_88 = Enum_FontWeight.Bold;
    local _call510 = New_149("rbxasset://fonts/families/FredokaOne.json", Bold_88);
    TextLabel_27.FontFace = _call510;
    TextLabel_27.TextSize = 16;
    local Color3_Value_464 = Color3_New(1, 1, 1);
    TextLabel_27.TextColor3 = Color3_Value_464;
    local Left_65 = Enum_TextXAlignment.Left;
    TextLabel_27.TextXAlignment = Left_65;
    TextLabel_27.RichText = true;
    local Y_89 = Enum_AutomaticSize.Y;
    TextLabel_27.AutomaticSize = Y_89;
    TextLabel_27.TextWrapped = true;

end);
local Spawned_75 = task.spawn(function()
    local Parent_84 = LocalScript_75.Parent;
    local New_150 = Font.new;
    local Bold_89 = Enum_FontWeight.Bold;
    local _call507 = New_150("rbxasset://fonts/families/FredokaOne.json", Bold_89);
    TextLabel_28.FontFace = _call507;
    TextLabel_28.TextSize = 16;
    local Color3_Value_465 = Color3_New(1, 1, 1);
    TextLabel_28.TextColor3 = Color3_Value_465;
    local Left_66 = Enum_TextXAlignment.Left;
    TextLabel_28.TextXAlignment = Left_66;
    TextLabel_28.RichText = true;
    local Y_90 = Enum_AutomaticSize.Y;
    TextLabel_28.AutomaticSize = Y_90;
    TextLabel_28.TextWrapped = true;

end);
local Spawned_76 = task.spawn(function()
    local Players_19 = game:GetService("Players");
    local StarterGui_16 = game:GetService("StarterGui");
    local LocalPlayer_19 = Players.LocalPlayer;
    local Parent_85 = LocalScript_76.Parent;
    local Connection_25;
    Connection_25 = ImageButton_18.MouseButton1Click:Connect(function()
        local ScreenGui_11 = Instance.new("ScreenGui");
        ScreenGui_11.ResetOnSpawn = false;
        local PlayerGui_11 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_11.Parent = PlayerGui_11;
        local Frame_21 = Instance.new("Frame");
        local UDim2_Value_354 = UDim2_New(0, 340, 0, 190);
        Frame_21.Size = UDim2_Value_354;
        local UDim2_Value_355 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_21.Position = UDim2_Value_355;
        local Color3_Value_565 = Color3_New(1, 1, 1);
        Frame_21.BackgroundColor3 = Color3_Value_565;
        Frame_21.BorderSizePixel = 0;
        Frame_21.Parent = ScreenGui_11;
        local UICorner_77 = Instance.new("UICorner");
        local UDim_Value_85 = UDim_New(0, 14);
        UICorner_77.CornerRadius = UDim_Value_85;
        UICorner_77.Parent = Frame_21;
        local TextLabel_64 = Instance.new("TextLabel");
        local UDim2_Value_356 = UDim2_New(1, 0, 0, 50);
        TextLabel_64.Size = UDim2_Value_356;
        TextLabel_64.BackgroundTransparency = 1;
        TextLabel_64.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_566 = Color3_New(0, 0, 0);
        TextLabel_64.TextColor3 = Color3_Value_566;
        TextLabel_64.TextSize = 20;
        local SourceSansBold_28 = Enum_Font.SourceSansBold;
        TextLabel_64.Font = SourceSansBold_28;
        TextLabel_64.TextWrapped = true;
        TextLabel_64.Parent = Frame_21;
        local TextBox_10 = Instance.new("TextBox");
        local UDim2_Value_357 = UDim2_New(0.9, 0, 0, 42);
        TextBox_10.Size = UDim2_Value_357;
        local UDim2_Value_358 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_10.Position = UDim2_Value_358;
        local Color3_Value_567 = Color3_FromRGB(240, 240, 240);
        TextBox_10.BackgroundColor3 = Color3_Value_567;
        local Color3_Value_568 = Color3_New(0, 0, 0);
        TextBox_10.TextColor3 = Color3_Value_568;
        TextBox_10.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_569 = Color3_FromRGB(140, 140, 140);
        TextBox_10.PlaceholderColor3 = Color3_Value_569;
        TextBox_10.Text = "";
        TextBox_10.TextSize = 18;
        local SourceSans_10 = Enum_Font.SourceSans;
        TextBox_10.Font = SourceSans_10;
        TextBox_10.ClearTextOnFocus = false;
        TextBox_10.Parent = Frame_21;
        local UICorner_78 = Instance.new("UICorner");
        local UDim_Value_86 = UDim_New(0, 10);
        UICorner_78.CornerRadius = UDim_Value_86;
        UICorner_78.Parent = TextBox_10;
        local TextButton_27 = Instance.new("TextButton");
        local UDim2_Value_359 = UDim2_New(0.9, 0, 0, 42);
        TextButton_27.Size = UDim2_Value_359;
        local UDim2_Value_360 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_27.Position = UDim2_Value_360;
        local Color3_Value_570 = Color3_FromRGB(235, 235, 235);
        TextButton_27.BackgroundColor3 = Color3_Value_570;
        local Color3_Value_571 = Color3_New(0, 0, 0);
        TextButton_27.TextColor3 = Color3_Value_571;
        TextButton_27.Text = "俺要起飞";
        TextButton_27.TextSize = 18;
        local SourceSansBold_29 = Enum_Font.SourceSansBold;
        TextButton_27.Font = SourceSansBold_29;
        TextButton_27.Parent = Frame_21;
        local UICorner_79 = Instance.new("UICorner");
        local UDim_Value_87 = UDim_New(0, 10);
        UICorner_79.CornerRadius = UDim_Value_87;
        UICorner_79.Parent = TextButton_27;
        local TextButton_28 = Instance.new("TextButton");
        local UDim2_Value_361 = UDim2_New(0, 34, 0, 34);
        TextButton_28.Size = UDim2_Value_361;
        local UDim2_Value_362 = UDim2_New(1, -40, 0, 6);
        TextButton_28.Position = UDim2_Value_362;
        TextButton_28.BackgroundTransparency = 1;
        TextButton_28.Text = "×";
        local Color3_Value_572 = Color3_New(0.2, 0.2, 0.2);
        TextButton_28.TextColor3 = Color3_Value_572;
        TextButton_28.TextSize = 26;
        local SourceSansBold_30 = Enum_Font.SourceSansBold;
        TextButton_28.Font = SourceSansBold_30;
        TextButton_28.Parent = Frame_21;
        local Connection_80;
        Connection_80 = TextButton_28.MouseButton1Click:Connect(function()
            local Destroy_10 = ScreenGui_11:Destroy();

        end);
        local Connection_81;
        Connection_81 = TextButton_27.MouseButton1Click:Connect(function()
            local Success_83, Error_Message_83 = pcall(function(...)
                local var617 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/UniversalTouchFlingKey.txt\", true)");
                local Loaded_Func_25 = var617();
                local var618 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/UniversalTouchFlingKey.txt", true);
            end) -- true, var618
            local var619 = tostring(var618);
            local Text_19 = TextBox_10.Text;
            local _390751814QQ_19 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_82;
        Connection_82 = TextBox_10.FocusLost:Connect(function(EnterPressed_19) -- args: EnterPressed_20, InputThatCausedFocusLoss_10;
            if EnterPressed_19 then -- ran, expr id 21, has no else.
                local Success_84, Error_Message_84 = pcall(function(...)
                    local var620 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/UniversalTouchFlingKey.txt\", true)");
                    local Loaded_Func_26 = var620();
                    local var621 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/UniversalTouchFlingKey.txt", true);
                end) -- true, var618
                local var622 = tostring(var618);
                local Text_20 = TextBox_10.Text;
                local _390751814QQ_20 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_77 = task.spawn(function()
    local Parent_86 = LocalScript_77.Parent;
    local New_151 = Font.new;
    local Bold_90 = Enum_FontWeight.Bold;
    local _call504 = New_151("rbxasset://fonts/families/FredokaOne.json", Bold_90);
    TextLabel_29.FontFace = _call504;
    TextLabel_29.TextSize = 16;
    local Color3_Value_466 = Color3_New(1, 1, 1);
    TextLabel_29.TextColor3 = Color3_Value_466;
    local Left_67 = Enum_TextXAlignment.Left;
    TextLabel_29.TextXAlignment = Left_67;
    TextLabel_29.RichText = true;
    local Y_91 = Enum_AutomaticSize.Y;
    TextLabel_29.AutomaticSize = Y_91;
    TextLabel_29.TextWrapped = true;

end);
local Spawned_78 = task.spawn(function()
    local Players_20 = game:GetService("Players");
    local StarterGui_17 = game:GetService("StarterGui");
    local LocalPlayer_20 = Players.LocalPlayer;
    local Parent_87 = LocalScript_78.Parent;
    local Connection_26;
    Connection_26 = ImageButton_19.MouseButton1Click:Connect(function()
        local ScreenGui_12 = Instance.new("ScreenGui");
        ScreenGui_12.ResetOnSpawn = false;
        local PlayerGui_12 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_12.Parent = PlayerGui_12;
        local Frame_22 = Instance.new("Frame");
        local UDim2_Value_363 = UDim2_New(0, 340, 0, 190);
        Frame_22.Size = UDim2_Value_363;
        local UDim2_Value_364 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_22.Position = UDim2_Value_364;
        local Color3_Value_573 = Color3_New(1, 1, 1);
        Frame_22.BackgroundColor3 = Color3_Value_573;
        Frame_22.BorderSizePixel = 0;
        Frame_22.Parent = ScreenGui_12;
        local UICorner_80 = Instance.new("UICorner");
        local UDim_Value_88 = UDim_New(0, 14);
        UICorner_80.CornerRadius = UDim_Value_88;
        UICorner_80.Parent = Frame_22;
        local TextLabel_65 = Instance.new("TextLabel");
        local UDim2_Value_365 = UDim2_New(1, 0, 0, 50);
        TextLabel_65.Size = UDim2_Value_365;
        TextLabel_65.BackgroundTransparency = 1;
        TextLabel_65.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_574 = Color3_New(0, 0, 0);
        TextLabel_65.TextColor3 = Color3_Value_574;
        TextLabel_65.TextSize = 20;
        local SourceSansBold_31 = Enum_Font.SourceSansBold;
        TextLabel_65.Font = SourceSansBold_31;
        TextLabel_65.TextWrapped = true;
        TextLabel_65.Parent = Frame_22;
        local TextBox_11 = Instance.new("TextBox");
        local UDim2_Value_366 = UDim2_New(0.9, 0, 0, 42);
        TextBox_11.Size = UDim2_Value_366;
        local UDim2_Value_367 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_11.Position = UDim2_Value_367;
        local Color3_Value_575 = Color3_FromRGB(240, 240, 240);
        TextBox_11.BackgroundColor3 = Color3_Value_575;
        local Color3_Value_576 = Color3_New(0, 0, 0);
        TextBox_11.TextColor3 = Color3_Value_576;
        TextBox_11.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_577 = Color3_FromRGB(140, 140, 140);
        TextBox_11.PlaceholderColor3 = Color3_Value_577;
        TextBox_11.Text = "";
        TextBox_11.TextSize = 18;
        local SourceSans_11 = Enum_Font.SourceSans;
        TextBox_11.Font = SourceSans_11;
        TextBox_11.ClearTextOnFocus = false;
        TextBox_11.Parent = Frame_22;
        local UICorner_81 = Instance.new("UICorner");
        local UDim_Value_89 = UDim_New(0, 10);
        UICorner_81.CornerRadius = UDim_Value_89;
        UICorner_81.Parent = TextBox_11;
        local TextButton_29 = Instance.new("TextButton");
        local UDim2_Value_368 = UDim2_New(0.9, 0, 0, 42);
        TextButton_29.Size = UDim2_Value_368;
        local UDim2_Value_369 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_29.Position = UDim2_Value_369;
        local Color3_Value_578 = Color3_FromRGB(235, 235, 235);
        TextButton_29.BackgroundColor3 = Color3_Value_578;
        local Color3_Value_579 = Color3_New(0, 0, 0);
        TextButton_29.TextColor3 = Color3_Value_579;
        TextButton_29.Text = "俺要起飞";
        TextButton_29.TextSize = 18;
        local SourceSansBold_32 = Enum_Font.SourceSansBold;
        TextButton_29.Font = SourceSansBold_32;
        TextButton_29.Parent = Frame_22;
        local UICorner_82 = Instance.new("UICorner");
        local UDim_Value_90 = UDim_New(0, 10);
        UICorner_82.CornerRadius = UDim_Value_90;
        UICorner_82.Parent = TextButton_29;
        local TextButton_30 = Instance.new("TextButton");
        local UDim2_Value_370 = UDim2_New(0, 34, 0, 34);
        TextButton_30.Size = UDim2_Value_370;
        local UDim2_Value_371 = UDim2_New(1, -40, 0, 6);
        TextButton_30.Position = UDim2_Value_371;
        TextButton_30.BackgroundTransparency = 1;
        TextButton_30.Text = "×";
        local Color3_Value_580 = Color3_New(0.2, 0.2, 0.2);
        TextButton_30.TextColor3 = Color3_Value_580;
        TextButton_30.TextSize = 26;
        local SourceSansBold_33 = Enum_Font.SourceSansBold;
        TextButton_30.Font = SourceSansBold_33;
        TextButton_30.Parent = Frame_22;
        local Connection_83;
        Connection_83 = TextButton_30.MouseButton1Click:Connect(function()
            local Destroy_11 = ScreenGui_12:Destroy();

        end);
        local Connection_84;
        Connection_84 = TextButton_29.MouseButton1Click:Connect(function()
            local Success_85, Error_Message_85 = pcall(function(...)
                local var623 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/ForsakenKey.txt\", true)");
                local Loaded_Func_27 = var623();
                local var624 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/ForsakenKey.txt", true);
            end) -- true, var624
            local var625 = tostring(var624);
            local Text_21 = TextBox_11.Text;
            local _390751814QQ_21 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_85;
        Connection_85 = TextBox_11.FocusLost:Connect(function(EnterPressed_21) -- args: EnterPressed_22, InputThatCausedFocusLoss_11;
            if EnterPressed_21 then -- ran, expr id 22, has no else.
                local Success_86, Error_Message_86 = pcall(function(...)
                    local var626 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/ForsakenKey.txt\", true)");
                    local Loaded_Func_28 = var626();
                    local var627 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/ForsakenKey.txt", true);
                end) -- true, var624
                local var628 = tostring(var624);
                local Text_22 = TextBox_11.Text;
                local _390751814QQ_22 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_79 = task.spawn(function()
    local Parent_88 = LocalScript_79.Parent;
    local New_152 = Font.new;
    local Bold_91 = Enum_FontWeight.Bold;
    local _call501 = New_152("rbxasset://fonts/families/FredokaOne.json", Bold_91);
    TextLabel_30.FontFace = _call501;
    TextLabel_30.TextSize = 16;
    local Color3_Value_467 = Color3_New(1, 1, 1);
    TextLabel_30.TextColor3 = Color3_Value_467;
    local Left_68 = Enum_TextXAlignment.Left;
    TextLabel_30.TextXAlignment = Left_68;
    TextLabel_30.RichText = true;
    local Y_92 = Enum_AutomaticSize.Y;
    TextLabel_30.AutomaticSize = Y_92;
    TextLabel_30.TextWrapped = true;

end);
local Spawned_80 = task.spawn(function()
    local Players_21 = game:GetService("Players");
    local StarterGui_18 = game:GetService("StarterGui");
    local LocalPlayer_21 = Players.LocalPlayer;
    local Parent_89 = LocalScript_80.Parent;
    local Connection_27;
    Connection_27 = ImageButton_20.MouseButton1Click:Connect(function()
        local ScreenGui_13 = Instance.new("ScreenGui");
        ScreenGui_13.ResetOnSpawn = false;
        local PlayerGui_13 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_13.Parent = PlayerGui_13;
        local Frame_23 = Instance.new("Frame");
        local UDim2_Value_372 = UDim2_New(0, 340, 0, 190);
        Frame_23.Size = UDim2_Value_372;
        local UDim2_Value_373 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_23.Position = UDim2_Value_373;
        local Color3_Value_581 = Color3_New(1, 1, 1);
        Frame_23.BackgroundColor3 = Color3_Value_581;
        Frame_23.BorderSizePixel = 0;
        Frame_23.Parent = ScreenGui_13;
        local UICorner_83 = Instance.new("UICorner");
        local UDim_Value_91 = UDim_New(0, 14);
        UICorner_83.CornerRadius = UDim_Value_91;
        UICorner_83.Parent = Frame_23;
        local TextLabel_66 = Instance.new("TextLabel");
        local UDim2_Value_374 = UDim2_New(1, 0, 0, 50);
        TextLabel_66.Size = UDim2_Value_374;
        TextLabel_66.BackgroundTransparency = 1;
        TextLabel_66.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_582 = Color3_New(0, 0, 0);
        TextLabel_66.TextColor3 = Color3_Value_582;
        TextLabel_66.TextSize = 20;
        local SourceSansBold_34 = Enum_Font.SourceSansBold;
        TextLabel_66.Font = SourceSansBold_34;
        TextLabel_66.TextWrapped = true;
        TextLabel_66.Parent = Frame_23;
        local TextBox_12 = Instance.new("TextBox");
        local UDim2_Value_375 = UDim2_New(0.9, 0, 0, 42);
        TextBox_12.Size = UDim2_Value_375;
        local UDim2_Value_376 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_12.Position = UDim2_Value_376;
        local Color3_Value_583 = Color3_FromRGB(240, 240, 240);
        TextBox_12.BackgroundColor3 = Color3_Value_583;
        local Color3_Value_584 = Color3_New(0, 0, 0);
        TextBox_12.TextColor3 = Color3_Value_584;
        TextBox_12.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_585 = Color3_FromRGB(140, 140, 140);
        TextBox_12.PlaceholderColor3 = Color3_Value_585;
        TextBox_12.Text = "";
        TextBox_12.TextSize = 18;
        local SourceSans_12 = Enum_Font.SourceSans;
        TextBox_12.Font = SourceSans_12;
        TextBox_12.ClearTextOnFocus = false;
        TextBox_12.Parent = Frame_23;
        local UICorner_84 = Instance.new("UICorner");
        local UDim_Value_92 = UDim_New(0, 10);
        UICorner_84.CornerRadius = UDim_Value_92;
        UICorner_84.Parent = TextBox_12;
        local TextButton_31 = Instance.new("TextButton");
        local UDim2_Value_377 = UDim2_New(0.9, 0, 0, 42);
        TextButton_31.Size = UDim2_Value_377;
        local UDim2_Value_378 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_31.Position = UDim2_Value_378;
        local Color3_Value_586 = Color3_FromRGB(235, 235, 235);
        TextButton_31.BackgroundColor3 = Color3_Value_586;
        local Color3_Value_587 = Color3_New(0, 0, 0);
        TextButton_31.TextColor3 = Color3_Value_587;
        TextButton_31.Text = "俺要起飞";
        TextButton_31.TextSize = 18;
        local SourceSansBold_35 = Enum_Font.SourceSansBold;
        TextButton_31.Font = SourceSansBold_35;
        TextButton_31.Parent = Frame_23;
        local UICorner_85 = Instance.new("UICorner");
        local UDim_Value_93 = UDim_New(0, 10);
        UICorner_85.CornerRadius = UDim_Value_93;
        UICorner_85.Parent = TextButton_31;
        local TextButton_32 = Instance.new("TextButton");
        local UDim2_Value_379 = UDim2_New(0, 34, 0, 34);
        TextButton_32.Size = UDim2_Value_379;
        local UDim2_Value_380 = UDim2_New(1, -40, 0, 6);
        TextButton_32.Position = UDim2_Value_380;
        TextButton_32.BackgroundTransparency = 1;
        TextButton_32.Text = "×";
        local Color3_Value_588 = Color3_New(0.2, 0.2, 0.2);
        TextButton_32.TextColor3 = Color3_Value_588;
        TextButton_32.TextSize = 26;
        local SourceSansBold_36 = Enum_Font.SourceSansBold;
        TextButton_32.Font = SourceSansBold_36;
        TextButton_32.Parent = Frame_23;
        local Connection_86;
        Connection_86 = TextButton_32.MouseButton1Click:Connect(function()
            local Destroy_12 = ScreenGui_13:Destroy();

        end);
        local Connection_87;
        Connection_87 = TextButton_31.MouseButton1Click:Connect(function()
            local Success_87, Error_Message_87 = pcall(function(...)
                local var629 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/UniversalAimbotKey.txt\", true)");
                local Loaded_Func_29 = var629();
                local var630 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/UniversalAimbotKey.txt", true);
            end) -- true, var630
            local var631 = tostring(var630);
            local Text_23 = TextBox_12.Text;
            local _390751814QQ_23 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_88;
        Connection_88 = TextBox_12.FocusLost:Connect(function(EnterPressed_23) -- args: EnterPressed_24, InputThatCausedFocusLoss_12;
            if EnterPressed_23 then -- ran, expr id 23, has no else.
                local Success_88, Error_Message_88 = pcall(function(...)
                    local var632 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/UniversalAimbotKey.txt\", true)");
                    local Loaded_Func_30 = var632();
                    local var633 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/UniversalAimbotKey.txt", true);
                end) -- true, var630
                local var634 = tostring(var630);
                local Text_24 = TextBox_12.Text;
                local _390751814QQ_24 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_81 = task.spawn(function()
    local Parent_90 = LocalScript_81.Parent;
    local New_153 = Font.new;
    local Bold_92 = Enum_FontWeight.Bold;
    local _call498 = New_153("rbxasset://fonts/families/FredokaOne.json", Bold_92);
    TextLabel_31.FontFace = _call498;
    TextLabel_31.TextSize = 16;
    local Color3_Value_468 = Color3_New(1, 1, 1);
    TextLabel_31.TextColor3 = Color3_Value_468;
    local Left_69 = Enum_TextXAlignment.Left;
    TextLabel_31.TextXAlignment = Left_69;
    TextLabel_31.RichText = true;
    local Y_93 = Enum_AutomaticSize.Y;
    TextLabel_31.AutomaticSize = Y_93;
    TextLabel_31.TextWrapped = true;

end);
local Spawned_82 = task.spawn(function()
    local Players_22 = game:GetService("Players");
    local StarterGui_19 = game:GetService("StarterGui");
    local LocalPlayer_22 = Players.LocalPlayer;
    local Parent_91 = LocalScript_82.Parent;
    local Connection_28;
    Connection_28 = ImageButton_21.MouseButton1Click:Connect(function()
        local ScreenGui_14 = Instance.new("ScreenGui");
        ScreenGui_14.ResetOnSpawn = false;
        local PlayerGui_14 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_14.Parent = PlayerGui_14;
        local Frame_24 = Instance.new("Frame");
        local UDim2_Value_381 = UDim2_New(0, 340, 0, 190);
        Frame_24.Size = UDim2_Value_381;
        local UDim2_Value_382 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_24.Position = UDim2_Value_382;
        local Color3_Value_589 = Color3_New(1, 1, 1);
        Frame_24.BackgroundColor3 = Color3_Value_589;
        Frame_24.BorderSizePixel = 0;
        Frame_24.Parent = ScreenGui_14;
        local UICorner_86 = Instance.new("UICorner");
        local UDim_Value_94 = UDim_New(0, 14);
        UICorner_86.CornerRadius = UDim_Value_94;
        UICorner_86.Parent = Frame_24;
        local TextLabel_67 = Instance.new("TextLabel");
        local UDim2_Value_383 = UDim2_New(1, 0, 0, 50);
        TextLabel_67.Size = UDim2_Value_383;
        TextLabel_67.BackgroundTransparency = 1;
        TextLabel_67.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_590 = Color3_New(0, 0, 0);
        TextLabel_67.TextColor3 = Color3_Value_590;
        TextLabel_67.TextSize = 20;
        local SourceSansBold_37 = Enum_Font.SourceSansBold;
        TextLabel_67.Font = SourceSansBold_37;
        TextLabel_67.TextWrapped = true;
        TextLabel_67.Parent = Frame_24;
        local TextBox_13 = Instance.new("TextBox");
        local UDim2_Value_384 = UDim2_New(0.9, 0, 0, 42);
        TextBox_13.Size = UDim2_Value_384;
        local UDim2_Value_385 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_13.Position = UDim2_Value_385;
        local Color3_Value_591 = Color3_FromRGB(240, 240, 240);
        TextBox_13.BackgroundColor3 = Color3_Value_591;
        local Color3_Value_592 = Color3_New(0, 0, 0);
        TextBox_13.TextColor3 = Color3_Value_592;
        TextBox_13.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_593 = Color3_FromRGB(140, 140, 140);
        TextBox_13.PlaceholderColor3 = Color3_Value_593;
        TextBox_13.Text = "";
        TextBox_13.TextSize = 18;
        local SourceSans_13 = Enum_Font.SourceSans;
        TextBox_13.Font = SourceSans_13;
        TextBox_13.ClearTextOnFocus = false;
        TextBox_13.Parent = Frame_24;
        local UICorner_87 = Instance.new("UICorner");
        local UDim_Value_95 = UDim_New(0, 10);
        UICorner_87.CornerRadius = UDim_Value_95;
        UICorner_87.Parent = TextBox_13;
        local TextButton_33 = Instance.new("TextButton");
        local UDim2_Value_386 = UDim2_New(0.9, 0, 0, 42);
        TextButton_33.Size = UDim2_Value_386;
        local UDim2_Value_387 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_33.Position = UDim2_Value_387;
        local Color3_Value_594 = Color3_FromRGB(235, 235, 235);
        TextButton_33.BackgroundColor3 = Color3_Value_594;
        local Color3_Value_595 = Color3_New(0, 0, 0);
        TextButton_33.TextColor3 = Color3_Value_595;
        TextButton_33.Text = "俺要起飞";
        TextButton_33.TextSize = 18;
        local SourceSansBold_38 = Enum_Font.SourceSansBold;
        TextButton_33.Font = SourceSansBold_38;
        TextButton_33.Parent = Frame_24;
        local UICorner_88 = Instance.new("UICorner");
        local UDim_Value_96 = UDim_New(0, 10);
        UICorner_88.CornerRadius = UDim_Value_96;
        UICorner_88.Parent = TextButton_33;
        local TextButton_34 = Instance.new("TextButton");
        local UDim2_Value_388 = UDim2_New(0, 34, 0, 34);
        TextButton_34.Size = UDim2_Value_388;
        local UDim2_Value_389 = UDim2_New(1, -40, 0, 6);
        TextButton_34.Position = UDim2_Value_389;
        TextButton_34.BackgroundTransparency = 1;
        TextButton_34.Text = "×";
        local Color3_Value_596 = Color3_New(0.2, 0.2, 0.2);
        TextButton_34.TextColor3 = Color3_Value_596;
        TextButton_34.TextSize = 26;
        local SourceSansBold_39 = Enum_Font.SourceSansBold;
        TextButton_34.Font = SourceSansBold_39;
        TextButton_34.Parent = Frame_24;
        local Connection_89;
        Connection_89 = TextButton_34.MouseButton1Click:Connect(function()
            local Destroy_13 = ScreenGui_14:Destroy();

        end);
        local Connection_90;
        Connection_90 = TextButton_33.MouseButton1Click:Connect(function()
            local Success_89, Error_Message_89 = pcall(function(...)
                local var635 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/UniversalFlingKey.txt\", true)");
                local Loaded_Func_31 = var635();
                local var636 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/UniversalFlingKey.txt", true);
            end) -- true, var636
            local var637 = tostring(var636);
            local Text_25 = TextBox_13.Text;
            local _390751814QQ_25 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_91;
        Connection_91 = TextBox_13.FocusLost:Connect(function(EnterPressed_25) -- args: EnterPressed_26, InputThatCausedFocusLoss_13;
            if EnterPressed_25 then -- ran, expr id 24, has no else.
                local Success_90, Error_Message_90 = pcall(function(...)
                    local var638 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/UniversalFlingKey.txt\", true)");
                    local Loaded_Func_32 = var638();
                    local var639 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/UniversalFlingKey.txt", true);
                end) -- true, var636
                local var640 = tostring(var636);
                local Text_26 = TextBox_13.Text;
                local _390751814QQ_26 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_83 = task.spawn(function()
    local Parent_92 = LocalScript_83.Parent;
    local New_154 = Font.new;
    local Bold_93 = Enum_FontWeight.Bold;
    local _call495 = New_154("rbxasset://fonts/families/FredokaOne.json", Bold_93);
    TextLabel_32.FontFace = _call495;
    TextLabel_32.TextSize = 16;
    local Color3_Value_469 = Color3_New(1, 1, 1);
    TextLabel_32.TextColor3 = Color3_Value_469;
    local Left_70 = Enum_TextXAlignment.Left;
    TextLabel_32.TextXAlignment = Left_70;
    TextLabel_32.RichText = true;
    local Y_94 = Enum_AutomaticSize.Y;
    TextLabel_32.AutomaticSize = Y_94;
    TextLabel_32.TextWrapped = true;

end);
local Spawned_84 = task.spawn(function()
    local Players_23 = game:GetService("Players");
    local StarterGui_20 = game:GetService("StarterGui");
    local LocalPlayer_23 = Players.LocalPlayer;
    local Parent_93 = LocalScript_84.Parent;
    local Connection_29;
    Connection_29 = ImageButton_22.MouseButton1Click:Connect(function()
        local ScreenGui_15 = Instance.new("ScreenGui");
        ScreenGui_15.ResetOnSpawn = false;
        local PlayerGui_15 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_15.Parent = PlayerGui_15;
        local Frame_25 = Instance.new("Frame");
        local UDim2_Value_390 = UDim2_New(0, 340, 0, 190);
        Frame_25.Size = UDim2_Value_390;
        local UDim2_Value_391 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_25.Position = UDim2_Value_391;
        local Color3_Value_597 = Color3_New(1, 1, 1);
        Frame_25.BackgroundColor3 = Color3_Value_597;
        Frame_25.BorderSizePixel = 0;
        Frame_25.Parent = ScreenGui_15;
        local UICorner_89 = Instance.new("UICorner");
        local UDim_Value_97 = UDim_New(0, 14);
        UICorner_89.CornerRadius = UDim_Value_97;
        UICorner_89.Parent = Frame_25;
        local TextLabel_68 = Instance.new("TextLabel");
        local UDim2_Value_392 = UDim2_New(1, 0, 0, 50);
        TextLabel_68.Size = UDim2_Value_392;
        TextLabel_68.BackgroundTransparency = 1;
        TextLabel_68.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_598 = Color3_New(0, 0, 0);
        TextLabel_68.TextColor3 = Color3_Value_598;
        TextLabel_68.TextSize = 20;
        local SourceSansBold_40 = Enum_Font.SourceSansBold;
        TextLabel_68.Font = SourceSansBold_40;
        TextLabel_68.TextWrapped = true;
        TextLabel_68.Parent = Frame_25;
        local TextBox_14 = Instance.new("TextBox");
        local UDim2_Value_393 = UDim2_New(0.9, 0, 0, 42);
        TextBox_14.Size = UDim2_Value_393;
        local UDim2_Value_394 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_14.Position = UDim2_Value_394;
        local Color3_Value_599 = Color3_FromRGB(240, 240, 240);
        TextBox_14.BackgroundColor3 = Color3_Value_599;
        local Color3_Value_600 = Color3_New(0, 0, 0);
        TextBox_14.TextColor3 = Color3_Value_600;
        TextBox_14.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_601 = Color3_FromRGB(140, 140, 140);
        TextBox_14.PlaceholderColor3 = Color3_Value_601;
        TextBox_14.Text = "";
        TextBox_14.TextSize = 18;
        local SourceSans_14 = Enum_Font.SourceSans;
        TextBox_14.Font = SourceSans_14;
        TextBox_14.ClearTextOnFocus = false;
        TextBox_14.Parent = Frame_25;
        local UICorner_90 = Instance.new("UICorner");
        local UDim_Value_98 = UDim_New(0, 10);
        UICorner_90.CornerRadius = UDim_Value_98;
        UICorner_90.Parent = TextBox_14;
        local TextButton_35 = Instance.new("TextButton");
        local UDim2_Value_395 = UDim2_New(0.9, 0, 0, 42);
        TextButton_35.Size = UDim2_Value_395;
        local UDim2_Value_396 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_35.Position = UDim2_Value_396;
        local Color3_Value_602 = Color3_FromRGB(235, 235, 235);
        TextButton_35.BackgroundColor3 = Color3_Value_602;
        local Color3_Value_603 = Color3_New(0, 0, 0);
        TextButton_35.TextColor3 = Color3_Value_603;
        TextButton_35.Text = "俺要起飞";
        TextButton_35.TextSize = 18;
        local SourceSansBold_41 = Enum_Font.SourceSansBold;
        TextButton_35.Font = SourceSansBold_41;
        TextButton_35.Parent = Frame_25;
        local UICorner_91 = Instance.new("UICorner");
        local UDim_Value_99 = UDim_New(0, 10);
        UICorner_91.CornerRadius = UDim_Value_99;
        UICorner_91.Parent = TextButton_35;
        local TextButton_36 = Instance.new("TextButton");
        local UDim2_Value_397 = UDim2_New(0, 34, 0, 34);
        TextButton_36.Size = UDim2_Value_397;
        local UDim2_Value_398 = UDim2_New(1, -40, 0, 6);
        TextButton_36.Position = UDim2_Value_398;
        TextButton_36.BackgroundTransparency = 1;
        TextButton_36.Text = "×";
        local Color3_Value_604 = Color3_New(0.2, 0.2, 0.2);
        TextButton_36.TextColor3 = Color3_Value_604;
        TextButton_36.TextSize = 26;
        local SourceSansBold_42 = Enum_Font.SourceSansBold;
        TextButton_36.Font = SourceSansBold_42;
        TextButton_36.Parent = Frame_25;
        local Connection_92;
        Connection_92 = TextButton_36.MouseButton1Click:Connect(function()
            local Destroy_14 = ScreenGui_15:Destroy();

        end);
        local Connection_93;
        Connection_93 = TextButton_35.MouseButton1Click:Connect(function()
            local Success_91, Error_Message_91 = pcall(function(...)
                local var641 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/UniversalPianoKey.txt\", true)");
                local Loaded_Func_33 = var641();
                local var642 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/UniversalPianoKey.txt", true);
            end) -- true, var642
            local var643 = tostring(var642);
            local Text_27 = TextBox_14.Text;
            local _390751814QQ_27 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_94;
        Connection_94 = TextBox_14.FocusLost:Connect(function(EnterPressed_27) -- args: EnterPressed_28, InputThatCausedFocusLoss_14;
            if EnterPressed_27 then -- ran, expr id 25, has no else.
                local Success_92, Error_Message_92 = pcall(function(...)
                    local var644 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/UniversalPianoKey.txt\", true)");
                    local Loaded_Func_34 = var644();
                    local var645 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/UniversalPianoKey.txt", true);
                end) -- true, var642
                local var646 = tostring(var642);
                local Text_28 = TextBox_14.Text;
                local _390751814QQ_28 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_85 = task.spawn(function()
    local Parent_94 = LocalScript_85.Parent;
    local New_155 = Font.new;
    local Bold_94 = Enum_FontWeight.Bold;
    local _call492 = New_155("rbxasset://fonts/families/FredokaOne.json", Bold_94);
    TextLabel_33.FontFace = _call492;
    TextLabel_33.TextSize = 16;
    local Color3_Value_470 = Color3_New(1, 1, 1);
    TextLabel_33.TextColor3 = Color3_Value_470;
    local Left_71 = Enum_TextXAlignment.Left;
    TextLabel_33.TextXAlignment = Left_71;
    TextLabel_33.RichText = true;
    local Y_95 = Enum_AutomaticSize.Y;
    TextLabel_33.AutomaticSize = Y_95;
    TextLabel_33.TextWrapped = true;

end);
local Spawned_86 = task.spawn(function()
    local Players_24 = game:GetService("Players");
    local StarterGui_21 = game:GetService("StarterGui");
    local LocalPlayer_24 = Players.LocalPlayer;
    local Parent_95 = LocalScript_86.Parent;
    local Connection_30;
    Connection_30 = ImageButton_23.MouseButton1Click:Connect(function()
        local ScreenGui_16 = Instance.new("ScreenGui");
        ScreenGui_16.ResetOnSpawn = false;
        local PlayerGui_16 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_16.Parent = PlayerGui_16;
        local Frame_26 = Instance.new("Frame");
        local UDim2_Value_399 = UDim2_New(0, 340, 0, 190);
        Frame_26.Size = UDim2_Value_399;
        local UDim2_Value_400 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_26.Position = UDim2_Value_400;
        local Color3_Value_605 = Color3_New(1, 1, 1);
        Frame_26.BackgroundColor3 = Color3_Value_605;
        Frame_26.BorderSizePixel = 0;
        Frame_26.Parent = ScreenGui_16;
        local UICorner_92 = Instance.new("UICorner");
        local UDim_Value_100 = UDim_New(0, 14);
        UICorner_92.CornerRadius = UDim_Value_100;
        UICorner_92.Parent = Frame_26;
        local TextLabel_69 = Instance.new("TextLabel");
        local UDim2_Value_401 = UDim2_New(1, 0, 0, 50);
        TextLabel_69.Size = UDim2_Value_401;
        TextLabel_69.BackgroundTransparency = 1;
        TextLabel_69.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_606 = Color3_New(0, 0, 0);
        TextLabel_69.TextColor3 = Color3_Value_606;
        TextLabel_69.TextSize = 20;
        local SourceSansBold_43 = Enum_Font.SourceSansBold;
        TextLabel_69.Font = SourceSansBold_43;
        TextLabel_69.TextWrapped = true;
        TextLabel_69.Parent = Frame_26;
        local TextBox_15 = Instance.new("TextBox");
        local UDim2_Value_402 = UDim2_New(0.9, 0, 0, 42);
        TextBox_15.Size = UDim2_Value_402;
        local UDim2_Value_403 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_15.Position = UDim2_Value_403;
        local Color3_Value_607 = Color3_FromRGB(240, 240, 240);
        TextBox_15.BackgroundColor3 = Color3_Value_607;
        local Color3_Value_608 = Color3_New(0, 0, 0);
        TextBox_15.TextColor3 = Color3_Value_608;
        TextBox_15.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_609 = Color3_FromRGB(140, 140, 140);
        TextBox_15.PlaceholderColor3 = Color3_Value_609;
        TextBox_15.Text = "";
        TextBox_15.TextSize = 18;
        local SourceSans_15 = Enum_Font.SourceSans;
        TextBox_15.Font = SourceSans_15;
        TextBox_15.ClearTextOnFocus = false;
        TextBox_15.Parent = Frame_26;
        local UICorner_93 = Instance.new("UICorner");
        local UDim_Value_101 = UDim_New(0, 10);
        UICorner_93.CornerRadius = UDim_Value_101;
        UICorner_93.Parent = TextBox_15;
        local TextButton_37 = Instance.new("TextButton");
        local UDim2_Value_404 = UDim2_New(0.9, 0, 0, 42);
        TextButton_37.Size = UDim2_Value_404;
        local UDim2_Value_405 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_37.Position = UDim2_Value_405;
        local Color3_Value_610 = Color3_FromRGB(235, 235, 235);
        TextButton_37.BackgroundColor3 = Color3_Value_610;
        local Color3_Value_611 = Color3_New(0, 0, 0);
        TextButton_37.TextColor3 = Color3_Value_611;
        TextButton_37.Text = "俺要起飞";
        TextButton_37.TextSize = 18;
        local SourceSansBold_44 = Enum_Font.SourceSansBold;
        TextButton_37.Font = SourceSansBold_44;
        TextButton_37.Parent = Frame_26;
        local UICorner_94 = Instance.new("UICorner");
        local UDim_Value_102 = UDim_New(0, 10);
        UICorner_94.CornerRadius = UDim_Value_102;
        UICorner_94.Parent = TextButton_37;
        local TextButton_38 = Instance.new("TextButton");
        local UDim2_Value_406 = UDim2_New(0, 34, 0, 34);
        TextButton_38.Size = UDim2_Value_406;
        local UDim2_Value_407 = UDim2_New(1, -40, 0, 6);
        TextButton_38.Position = UDim2_Value_407;
        TextButton_38.BackgroundTransparency = 1;
        TextButton_38.Text = "×";
        local Color3_Value_612 = Color3_New(0.2, 0.2, 0.2);
        TextButton_38.TextColor3 = Color3_Value_612;
        TextButton_38.TextSize = 26;
        local SourceSansBold_45 = Enum_Font.SourceSansBold;
        TextButton_38.Font = SourceSansBold_45;
        TextButton_38.Parent = Frame_26;
        local Connection_95;
        Connection_95 = TextButton_38.MouseButton1Click:Connect(function()
            local Destroy_15 = ScreenGui_16:Destroy();

        end);
        local Connection_96;
        Connection_96 = TextButton_37.MouseButton1Click:Connect(function()
            local Success_93, Error_Message_93 = pcall(function(...)
                local var647 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/GrowaGardenKey.txt\", true)");
                local Loaded_Func_35 = var647();
                local var648 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/GrowaGardenKey.txt", true);
            end) -- true, var648
            local var649 = tostring(var648);
            local Text_29 = TextBox_15.Text;
            local _390751814QQ_29 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_97;
        Connection_97 = TextBox_15.FocusLost:Connect(function(EnterPressed_29) -- args: EnterPressed_30, InputThatCausedFocusLoss_15;
            if EnterPressed_29 then -- ran, expr id 26, has no else.
                local Success_94, Error_Message_94 = pcall(function(...)
                    local var650 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/GrowaGardenKey.txt\", true)");
                    local Loaded_Func_36 = var650();
                    local var651 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/GrowaGardenKey.txt", true);
                end) -- true, var648
                local var652 = tostring(var648);
                local Text_30 = TextBox_15.Text;
                local _390751814QQ_30 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_87 = task.spawn(function()
    local Parent_96 = LocalScript_87.Parent;
    local New_156 = Font.new;
    local Bold_95 = Enum_FontWeight.Bold;
    local _call489 = New_156("rbxasset://fonts/families/FredokaOne.json", Bold_95);
    TextLabel_34.FontFace = _call489;
    TextLabel_34.TextSize = 16;
    local Color3_Value_471 = Color3_New(1, 1, 1);
    TextLabel_34.TextColor3 = Color3_Value_471;
    local Left_72 = Enum_TextXAlignment.Left;
    TextLabel_34.TextXAlignment = Left_72;
    TextLabel_34.RichText = true;
    local Y_96 = Enum_AutomaticSize.Y;
    TextLabel_34.AutomaticSize = Y_96;
    TextLabel_34.TextWrapped = true;

end);
local Spawned_88 = task.spawn(function()
    local Players_25 = game:GetService("Players");
    local StarterGui_22 = game:GetService("StarterGui");
    local LocalPlayer_25 = Players.LocalPlayer;
    local Parent_97 = LocalScript_88.Parent;
    local Connection_31;
    Connection_31 = ImageButton_24.MouseButton1Click:Connect(function()
        local ScreenGui_17 = Instance.new("ScreenGui");
        ScreenGui_17.ResetOnSpawn = false;
        local PlayerGui_17 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_17.Parent = PlayerGui_17;
        local Frame_27 = Instance.new("Frame");
        local UDim2_Value_408 = UDim2_New(0, 340, 0, 190);
        Frame_27.Size = UDim2_Value_408;
        local UDim2_Value_409 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_27.Position = UDim2_Value_409;
        local Color3_Value_613 = Color3_New(1, 1, 1);
        Frame_27.BackgroundColor3 = Color3_Value_613;
        Frame_27.BorderSizePixel = 0;
        Frame_27.Parent = ScreenGui_17;
        local UICorner_95 = Instance.new("UICorner");
        local UDim_Value_103 = UDim_New(0, 14);
        UICorner_95.CornerRadius = UDim_Value_103;
        UICorner_95.Parent = Frame_27;
        local TextLabel_70 = Instance.new("TextLabel");
        local UDim2_Value_410 = UDim2_New(1, 0, 0, 50);
        TextLabel_70.Size = UDim2_Value_410;
        TextLabel_70.BackgroundTransparency = 1;
        TextLabel_70.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_614 = Color3_New(0, 0, 0);
        TextLabel_70.TextColor3 = Color3_Value_614;
        TextLabel_70.TextSize = 20;
        local SourceSansBold_46 = Enum_Font.SourceSansBold;
        TextLabel_70.Font = SourceSansBold_46;
        TextLabel_70.TextWrapped = true;
        TextLabel_70.Parent = Frame_27;
        local TextBox_16 = Instance.new("TextBox");
        local UDim2_Value_411 = UDim2_New(0.9, 0, 0, 42);
        TextBox_16.Size = UDim2_Value_411;
        local UDim2_Value_412 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_16.Position = UDim2_Value_412;
        local Color3_Value_615 = Color3_FromRGB(240, 240, 240);
        TextBox_16.BackgroundColor3 = Color3_Value_615;
        local Color3_Value_616 = Color3_New(0, 0, 0);
        TextBox_16.TextColor3 = Color3_Value_616;
        TextBox_16.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_617 = Color3_FromRGB(140, 140, 140);
        TextBox_16.PlaceholderColor3 = Color3_Value_617;
        TextBox_16.Text = "";
        TextBox_16.TextSize = 18;
        local SourceSans_16 = Enum_Font.SourceSans;
        TextBox_16.Font = SourceSans_16;
        TextBox_16.ClearTextOnFocus = false;
        TextBox_16.Parent = Frame_27;
        local UICorner_96 = Instance.new("UICorner");
        local UDim_Value_104 = UDim_New(0, 10);
        UICorner_96.CornerRadius = UDim_Value_104;
        UICorner_96.Parent = TextBox_16;
        local TextButton_39 = Instance.new("TextButton");
        local UDim2_Value_413 = UDim2_New(0.9, 0, 0, 42);
        TextButton_39.Size = UDim2_Value_413;
        local UDim2_Value_414 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_39.Position = UDim2_Value_414;
        local Color3_Value_618 = Color3_FromRGB(235, 235, 235);
        TextButton_39.BackgroundColor3 = Color3_Value_618;
        local Color3_Value_619 = Color3_New(0, 0, 0);
        TextButton_39.TextColor3 = Color3_Value_619;
        TextButton_39.Text = "俺要起飞";
        TextButton_39.TextSize = 18;
        local SourceSansBold_47 = Enum_Font.SourceSansBold;
        TextButton_39.Font = SourceSansBold_47;
        TextButton_39.Parent = Frame_27;
        local UICorner_97 = Instance.new("UICorner");
        local UDim_Value_105 = UDim_New(0, 10);
        UICorner_97.CornerRadius = UDim_Value_105;
        UICorner_97.Parent = TextButton_39;
        local TextButton_40 = Instance.new("TextButton");
        local UDim2_Value_415 = UDim2_New(0, 34, 0, 34);
        TextButton_40.Size = UDim2_Value_415;
        local UDim2_Value_416 = UDim2_New(1, -40, 0, 6);
        TextButton_40.Position = UDim2_Value_416;
        TextButton_40.BackgroundTransparency = 1;
        TextButton_40.Text = "×";
        local Color3_Value_620 = Color3_New(0.2, 0.2, 0.2);
        TextButton_40.TextColor3 = Color3_Value_620;
        TextButton_40.TextSize = 26;
        local SourceSansBold_48 = Enum_Font.SourceSansBold;
        TextButton_40.Font = SourceSansBold_48;
        TextButton_40.Parent = Frame_27;
        local Connection_98;
        Connection_98 = TextButton_40.MouseButton1Click:Connect(function()
            local Destroy_16 = ScreenGui_17:Destroy();

        end);
        local Connection_99;
        Connection_99 = TextButton_39.MouseButton1Click:Connect(function()
            local Success_95, Error_Message_95 = pcall(function(...)
                local var653 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/HuntyZombieKey.txt\", true)");
                local Loaded_Func_37 = var653();
                local var654 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/HuntyZombieKey.txt", true);
            end) -- true, var654
            local var655 = tostring(var654);
            local Text_31 = TextBox_16.Text;
            local _390751814QQ_31 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_100;
        Connection_100 = TextBox_16.FocusLost:Connect(function(EnterPressed_31) -- args: EnterPressed_32, InputThatCausedFocusLoss_16;
            if EnterPressed_31 then -- ran, expr id 27, has no else.
                local Success_96, Error_Message_96 = pcall(function(...)
                    local var656 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/HuntyZombieKey.txt\", true)");
                    local Loaded_Func_38 = var656();
                    local var657 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/HuntyZombieKey.txt", true);
                end) -- true, var654
                local var658 = tostring(var654);
                local Text_32 = TextBox_16.Text;
                local _390751814QQ_32 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_89 = task.spawn(function()
    local Parent_98 = LocalScript_89.Parent;
    local New_157 = Font.new;
    local Bold_96 = Enum_FontWeight.Bold;
    local _call486 = New_157("rbxasset://fonts/families/FredokaOne.json", Bold_96);
    TextLabel_35.FontFace = _call486;
    TextLabel_35.TextSize = 16;
    local Color3_Value_472 = Color3_New(1, 1, 1);
    TextLabel_35.TextColor3 = Color3_Value_472;
    local Left_73 = Enum_TextXAlignment.Left;
    TextLabel_35.TextXAlignment = Left_73;
    TextLabel_35.RichText = true;
    local Y_97 = Enum_AutomaticSize.Y;
    TextLabel_35.AutomaticSize = Y_97;
    TextLabel_35.TextWrapped = true;

end);
local Spawned_90 = task.spawn(function()
    local Players_26 = game:GetService("Players");
    local StarterGui_23 = game:GetService("StarterGui");
    local LocalPlayer_26 = Players.LocalPlayer;
    local Parent_99 = LocalScript_90.Parent;
    local Connection_32;
    Connection_32 = ImageButton_25.MouseButton1Click:Connect(function()
        local ScreenGui_18 = Instance.new("ScreenGui");
        ScreenGui_18.ResetOnSpawn = false;
        local PlayerGui_18 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_18.Parent = PlayerGui_18;
        local Frame_28 = Instance.new("Frame");
        local UDim2_Value_417 = UDim2_New(0, 340, 0, 190);
        Frame_28.Size = UDim2_Value_417;
        local UDim2_Value_418 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_28.Position = UDim2_Value_418;
        local Color3_Value_621 = Color3_New(1, 1, 1);
        Frame_28.BackgroundColor3 = Color3_Value_621;
        Frame_28.BorderSizePixel = 0;
        Frame_28.Parent = ScreenGui_18;
        local UICorner_98 = Instance.new("UICorner");
        local UDim_Value_106 = UDim_New(0, 14);
        UICorner_98.CornerRadius = UDim_Value_106;
        UICorner_98.Parent = Frame_28;
        local TextLabel_71 = Instance.new("TextLabel");
        local UDim2_Value_419 = UDim2_New(1, 0, 0, 50);
        TextLabel_71.Size = UDim2_Value_419;
        TextLabel_71.BackgroundTransparency = 1;
        TextLabel_71.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_622 = Color3_New(0, 0, 0);
        TextLabel_71.TextColor3 = Color3_Value_622;
        TextLabel_71.TextSize = 20;
        local SourceSansBold_49 = Enum_Font.SourceSansBold;
        TextLabel_71.Font = SourceSansBold_49;
        TextLabel_71.TextWrapped = true;
        TextLabel_71.Parent = Frame_28;
        local TextBox_17 = Instance.new("TextBox");
        local UDim2_Value_420 = UDim2_New(0.9, 0, 0, 42);
        TextBox_17.Size = UDim2_Value_420;
        local UDim2_Value_421 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_17.Position = UDim2_Value_421;
        local Color3_Value_623 = Color3_FromRGB(240, 240, 240);
        TextBox_17.BackgroundColor3 = Color3_Value_623;
        local Color3_Value_624 = Color3_New(0, 0, 0);
        TextBox_17.TextColor3 = Color3_Value_624;
        TextBox_17.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_625 = Color3_FromRGB(140, 140, 140);
        TextBox_17.PlaceholderColor3 = Color3_Value_625;
        TextBox_17.Text = "";
        TextBox_17.TextSize = 18;
        local SourceSans_17 = Enum_Font.SourceSans;
        TextBox_17.Font = SourceSans_17;
        TextBox_17.ClearTextOnFocus = false;
        TextBox_17.Parent = Frame_28;
        local UICorner_99 = Instance.new("UICorner");
        local UDim_Value_107 = UDim_New(0, 10);
        UICorner_99.CornerRadius = UDim_Value_107;
        UICorner_99.Parent = TextBox_17;
        local TextButton_41 = Instance.new("TextButton");
        local UDim2_Value_422 = UDim2_New(0.9, 0, 0, 42);
        TextButton_41.Size = UDim2_Value_422;
        local UDim2_Value_423 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_41.Position = UDim2_Value_423;
        local Color3_Value_626 = Color3_FromRGB(235, 235, 235);
        TextButton_41.BackgroundColor3 = Color3_Value_626;
        local Color3_Value_627 = Color3_New(0, 0, 0);
        TextButton_41.TextColor3 = Color3_Value_627;
        TextButton_41.Text = "俺要起飞";
        TextButton_41.TextSize = 18;
        local SourceSansBold_50 = Enum_Font.SourceSansBold;
        TextButton_41.Font = SourceSansBold_50;
        TextButton_41.Parent = Frame_28;
        local UICorner_100 = Instance.new("UICorner");
        local UDim_Value_108 = UDim_New(0, 10);
        UICorner_100.CornerRadius = UDim_Value_108;
        UICorner_100.Parent = TextButton_41;
        local TextButton_42 = Instance.new("TextButton");
        local UDim2_Value_424 = UDim2_New(0, 34, 0, 34);
        TextButton_42.Size = UDim2_Value_424;
        local UDim2_Value_425 = UDim2_New(1, -40, 0, 6);
        TextButton_42.Position = UDim2_Value_425;
        TextButton_42.BackgroundTransparency = 1;
        TextButton_42.Text = "×";
        local Color3_Value_628 = Color3_New(0.2, 0.2, 0.2);
        TextButton_42.TextColor3 = Color3_Value_628;
        TextButton_42.TextSize = 26;
        local SourceSansBold_51 = Enum_Font.SourceSansBold;
        TextButton_42.Font = SourceSansBold_51;
        TextButton_42.Parent = Frame_28;
        local Connection_101;
        Connection_101 = TextButton_42.MouseButton1Click:Connect(function()
            local Destroy_17 = ScreenGui_18:Destroy();

        end);
        local Connection_102;
        Connection_102 = TextButton_41.MouseButton1Click:Connect(function()
            local Success_97, Error_Message_97 = pcall(function(...)
                local var659 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/DressToImpressKey.txt\", true)");
                local Loaded_Func_39 = var659();
                local var660 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/DressToImpressKey.txt", true);
            end) -- true, var660
            local var661 = tostring(var660);
            local Text_33 = TextBox_17.Text;
            local _390751814QQ_33 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_103;
        Connection_103 = TextBox_17.FocusLost:Connect(function(EnterPressed_33) -- args: EnterPressed_34, InputThatCausedFocusLoss_17;
            if EnterPressed_33 then -- ran, expr id 28, has no else.
                local Success_98, Error_Message_98 = pcall(function(...)
                    local var662 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/DressToImpressKey.txt\", true)");
                    local Loaded_Func_40 = var662();
                    local var663 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/DressToImpressKey.txt", true);
                end) -- true, var660
                local var664 = tostring(var660);
                local Text_34 = TextBox_17.Text;
                local _390751814QQ_34 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_91 = task.spawn(function()
    local Parent_100 = LocalScript_91.Parent;
    local New_158 = Font.new;
    local Bold_97 = Enum_FontWeight.Bold;
    local _call483 = New_158("rbxasset://fonts/families/FredokaOne.json", Bold_97);
    TextLabel_36.FontFace = _call483;
    TextLabel_36.TextSize = 16;
    local Color3_Value_473 = Color3_New(1, 1, 1);
    TextLabel_36.TextColor3 = Color3_Value_473;
    local Left_74 = Enum_TextXAlignment.Left;
    TextLabel_36.TextXAlignment = Left_74;
    TextLabel_36.RichText = true;
    local Y_98 = Enum_AutomaticSize.Y;
    TextLabel_36.AutomaticSize = Y_98;
    TextLabel_36.TextWrapped = true;

end);
local Spawned_92 = task.spawn(function()
    local Players_27 = game:GetService("Players");
    local StarterGui_24 = game:GetService("StarterGui");
    local LocalPlayer_27 = Players.LocalPlayer;
    local Parent_101 = LocalScript_92.Parent;
    local Connection_33;
    Connection_33 = ImageButton_26.MouseButton1Click:Connect(function()
        local ScreenGui_19 = Instance.new("ScreenGui");
        ScreenGui_19.ResetOnSpawn = false;
        local PlayerGui_19 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_19.Parent = PlayerGui_19;
        local Frame_29 = Instance.new("Frame");
        local UDim2_Value_426 = UDim2_New(0, 340, 0, 190);
        Frame_29.Size = UDim2_Value_426;
        local UDim2_Value_427 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_29.Position = UDim2_Value_427;
        local Color3_Value_629 = Color3_New(1, 1, 1);
        Frame_29.BackgroundColor3 = Color3_Value_629;
        Frame_29.BorderSizePixel = 0;
        Frame_29.Parent = ScreenGui_19;
        local UICorner_101 = Instance.new("UICorner");
        local UDim_Value_109 = UDim_New(0, 14);
        UICorner_101.CornerRadius = UDim_Value_109;
        UICorner_101.Parent = Frame_29;
        local TextLabel_72 = Instance.new("TextLabel");
        local UDim2_Value_428 = UDim2_New(1, 0, 0, 50);
        TextLabel_72.Size = UDim2_Value_428;
        TextLabel_72.BackgroundTransparency = 1;
        TextLabel_72.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_630 = Color3_New(0, 0, 0);
        TextLabel_72.TextColor3 = Color3_Value_630;
        TextLabel_72.TextSize = 20;
        local SourceSansBold_52 = Enum_Font.SourceSansBold;
        TextLabel_72.Font = SourceSansBold_52;
        TextLabel_72.TextWrapped = true;
        TextLabel_72.Parent = Frame_29;
        local TextBox_18 = Instance.new("TextBox");
        local UDim2_Value_429 = UDim2_New(0.9, 0, 0, 42);
        TextBox_18.Size = UDim2_Value_429;
        local UDim2_Value_430 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_18.Position = UDim2_Value_430;
        local Color3_Value_631 = Color3_FromRGB(240, 240, 240);
        TextBox_18.BackgroundColor3 = Color3_Value_631;
        local Color3_Value_632 = Color3_New(0, 0, 0);
        TextBox_18.TextColor3 = Color3_Value_632;
        TextBox_18.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_633 = Color3_FromRGB(140, 140, 140);
        TextBox_18.PlaceholderColor3 = Color3_Value_633;
        TextBox_18.Text = "";
        TextBox_18.TextSize = 18;
        local SourceSans_18 = Enum_Font.SourceSans;
        TextBox_18.Font = SourceSans_18;
        TextBox_18.ClearTextOnFocus = false;
        TextBox_18.Parent = Frame_29;
        local UICorner_102 = Instance.new("UICorner");
        local UDim_Value_110 = UDim_New(0, 10);
        UICorner_102.CornerRadius = UDim_Value_110;
        UICorner_102.Parent = TextBox_18;
        local TextButton_43 = Instance.new("TextButton");
        local UDim2_Value_431 = UDim2_New(0.9, 0, 0, 42);
        TextButton_43.Size = UDim2_Value_431;
        local UDim2_Value_432 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_43.Position = UDim2_Value_432;
        local Color3_Value_634 = Color3_FromRGB(235, 235, 235);
        TextButton_43.BackgroundColor3 = Color3_Value_634;
        local Color3_Value_635 = Color3_New(0, 0, 0);
        TextButton_43.TextColor3 = Color3_Value_635;
        TextButton_43.Text = "俺要起飞";
        TextButton_43.TextSize = 18;
        local SourceSansBold_53 = Enum_Font.SourceSansBold;
        TextButton_43.Font = SourceSansBold_53;
        TextButton_43.Parent = Frame_29;
        local UICorner_103 = Instance.new("UICorner");
        local UDim_Value_111 = UDim_New(0, 10);
        UICorner_103.CornerRadius = UDim_Value_111;
        UICorner_103.Parent = TextButton_43;
        local TextButton_44 = Instance.new("TextButton");
        local UDim2_Value_433 = UDim2_New(0, 34, 0, 34);
        TextButton_44.Size = UDim2_Value_433;
        local UDim2_Value_434 = UDim2_New(1, -40, 0, 6);
        TextButton_44.Position = UDim2_Value_434;
        TextButton_44.BackgroundTransparency = 1;
        TextButton_44.Text = "×";
        local Color3_Value_636 = Color3_New(0.2, 0.2, 0.2);
        TextButton_44.TextColor3 = Color3_Value_636;
        TextButton_44.TextSize = 26;
        local SourceSansBold_54 = Enum_Font.SourceSansBold;
        TextButton_44.Font = SourceSansBold_54;
        TextButton_44.Parent = Frame_29;
        local Connection_104;
        Connection_104 = TextButton_44.MouseButton1Click:Connect(function()
            local Destroy_18 = ScreenGui_19:Destroy();

        end);
        local Connection_105;
        Connection_105 = TextButton_43.MouseButton1Click:Connect(function()
            local Success_99, Error_Message_99 = pcall(function(...)
                local var665 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/TheStrongestBattlegroundsKey.txt\", true)");
                local Loaded_Func_41 = var665();
                local var666 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/TheStrongestBattlegroundsKey.txt", true);
            end) -- true, var666
            local var667 = tostring(var666);
            local Text_35 = TextBox_18.Text;
            local _390751814QQ_35 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_106;
        Connection_106 = TextBox_18.FocusLost:Connect(function(EnterPressed_35) -- args: EnterPressed_36, InputThatCausedFocusLoss_18;
            if EnterPressed_35 then -- ran, expr id 29, has no else.
                local Success_100, Error_Message_100 = pcall(function(...)
                    local var668 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/TheStrongestBattlegroundsKey.txt\", true)");
                    local Loaded_Func_42 = var668();
                    local var669 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/TheStrongestBattlegroundsKey.txt", true);
                end) -- true, var666
                local var670 = tostring(var666);
                local Text_36 = TextBox_18.Text;
                local _390751814QQ_36 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_93 = task.spawn(function()
    local Parent_102 = LocalScript_93.Parent;
    local New_159 = Font.new;
    local Bold_98 = Enum_FontWeight.Bold;
    local _call480 = New_159("rbxasset://fonts/families/FredokaOne.json", Bold_98);
    TextLabel_37.FontFace = _call480;
    TextLabel_37.TextSize = 16;
    local Color3_Value_474 = Color3_New(1, 1, 1);
    TextLabel_37.TextColor3 = Color3_Value_474;
    local Left_75 = Enum_TextXAlignment.Left;
    TextLabel_37.TextXAlignment = Left_75;
    TextLabel_37.RichText = true;
    local Y_99 = Enum_AutomaticSize.Y;
    TextLabel_37.AutomaticSize = Y_99;
    TextLabel_37.TextWrapped = true;

end);
local Spawned_94 = task.spawn(function()
    local Players_28 = game:GetService("Players");
    local StarterGui_25 = game:GetService("StarterGui");
    local LocalPlayer_28 = Players.LocalPlayer;
    local Parent_103 = LocalScript_94.Parent;
    local Connection_34;
    Connection_34 = ImageButton_27.MouseButton1Click:Connect(function()
        local ScreenGui_20 = Instance.new("ScreenGui");
        ScreenGui_20.ResetOnSpawn = false;
        local PlayerGui_20 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_20.Parent = PlayerGui_20;
        local Frame_30 = Instance.new("Frame");
        local UDim2_Value_435 = UDim2_New(0, 340, 0, 190);
        Frame_30.Size = UDim2_Value_435;
        local UDim2_Value_436 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_30.Position = UDim2_Value_436;
        local Color3_Value_637 = Color3_New(1, 1, 1);
        Frame_30.BackgroundColor3 = Color3_Value_637;
        Frame_30.BorderSizePixel = 0;
        Frame_30.Parent = ScreenGui_20;
        local UICorner_104 = Instance.new("UICorner");
        local UDim_Value_112 = UDim_New(0, 14);
        UICorner_104.CornerRadius = UDim_Value_112;
        UICorner_104.Parent = Frame_30;
        local TextLabel_73 = Instance.new("TextLabel");
        local UDim2_Value_437 = UDim2_New(1, 0, 0, 50);
        TextLabel_73.Size = UDim2_Value_437;
        TextLabel_73.BackgroundTransparency = 1;
        TextLabel_73.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_638 = Color3_New(0, 0, 0);
        TextLabel_73.TextColor3 = Color3_Value_638;
        TextLabel_73.TextSize = 20;
        local SourceSansBold_55 = Enum_Font.SourceSansBold;
        TextLabel_73.Font = SourceSansBold_55;
        TextLabel_73.TextWrapped = true;
        TextLabel_73.Parent = Frame_30;
        local TextBox_19 = Instance.new("TextBox");
        local UDim2_Value_438 = UDim2_New(0.9, 0, 0, 42);
        TextBox_19.Size = UDim2_Value_438;
        local UDim2_Value_439 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_19.Position = UDim2_Value_439;
        local Color3_Value_639 = Color3_FromRGB(240, 240, 240);
        TextBox_19.BackgroundColor3 = Color3_Value_639;
        local Color3_Value_640 = Color3_New(0, 0, 0);
        TextBox_19.TextColor3 = Color3_Value_640;
        TextBox_19.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_641 = Color3_FromRGB(140, 140, 140);
        TextBox_19.PlaceholderColor3 = Color3_Value_641;
        TextBox_19.Text = "";
        TextBox_19.TextSize = 18;
        local SourceSans_19 = Enum_Font.SourceSans;
        TextBox_19.Font = SourceSans_19;
        TextBox_19.ClearTextOnFocus = false;
        TextBox_19.Parent = Frame_30;
        local UICorner_105 = Instance.new("UICorner");
        local UDim_Value_113 = UDim_New(0, 10);
        UICorner_105.CornerRadius = UDim_Value_113;
        UICorner_105.Parent = TextBox_19;
        local TextButton_45 = Instance.new("TextButton");
        local UDim2_Value_440 = UDim2_New(0.9, 0, 0, 42);
        TextButton_45.Size = UDim2_Value_440;
        local UDim2_Value_441 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_45.Position = UDim2_Value_441;
        local Color3_Value_642 = Color3_FromRGB(235, 235, 235);
        TextButton_45.BackgroundColor3 = Color3_Value_642;
        local Color3_Value_643 = Color3_New(0, 0, 0);
        TextButton_45.TextColor3 = Color3_Value_643;
        TextButton_45.Text = "俺要起飞";
        TextButton_45.TextSize = 18;
        local SourceSansBold_56 = Enum_Font.SourceSansBold;
        TextButton_45.Font = SourceSansBold_56;
        TextButton_45.Parent = Frame_30;
        local UICorner_106 = Instance.new("UICorner");
        local UDim_Value_114 = UDim_New(0, 10);
        UICorner_106.CornerRadius = UDim_Value_114;
        UICorner_106.Parent = TextButton_45;
        local TextButton_46 = Instance.new("TextButton");
        local UDim2_Value_442 = UDim2_New(0, 34, 0, 34);
        TextButton_46.Size = UDim2_Value_442;
        local UDim2_Value_443 = UDim2_New(1, -40, 0, 6);
        TextButton_46.Position = UDim2_Value_443;
        TextButton_46.BackgroundTransparency = 1;
        TextButton_46.Text = "×";
        local Color3_Value_644 = Color3_New(0.2, 0.2, 0.2);
        TextButton_46.TextColor3 = Color3_Value_644;
        TextButton_46.TextSize = 26;
        local SourceSansBold_57 = Enum_Font.SourceSansBold;
        TextButton_46.Font = SourceSansBold_57;
        TextButton_46.Parent = Frame_30;
        local Connection_107;
        Connection_107 = TextButton_46.MouseButton1Click:Connect(function()
            local Destroy_19 = ScreenGui_20:Destroy();

        end);
        local Connection_108;
        Connection_108 = TextButton_45.MouseButton1Click:Connect(function()
            local Success_101, Error_Message_101 = pcall(function(...)
                local var671 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/ArsenalKey.txt\", true)");
                local Loaded_Func_43 = var671();
                local var672 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/ArsenalKey.txt", true);
            end) -- true, var672
            local var673 = tostring(var672);
            local Text_37 = TextBox_19.Text;
            local _390751814QQ_37 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_109;
        Connection_109 = TextBox_19.FocusLost:Connect(function(EnterPressed_37) -- args: EnterPressed_38, InputThatCausedFocusLoss_19;
            if EnterPressed_37 then -- ran, expr id 30, has no else.
                local Success_102, Error_Message_102 = pcall(function(...)
                    local var674 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/ArsenalKey.txt\", true)");
                    local Loaded_Func_44 = var674();
                    local var675 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/ArsenalKey.txt", true);
                end) -- true, var672
                local var676 = tostring(var672);
                local Text_38 = TextBox_19.Text;
                local _390751814QQ_38 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_95 = task.spawn(function()
    local Parent_104 = LocalScript_95.Parent;
    local New_160 = Font.new;
    local Bold_99 = Enum_FontWeight.Bold;
    local _call477 = New_160("rbxasset://fonts/families/FredokaOne.json", Bold_99);
    TextLabel_38.FontFace = _call477;
    TextLabel_38.TextSize = 16;
    local Color3_Value_475 = Color3_New(1, 1, 1);
    TextLabel_38.TextColor3 = Color3_Value_475;
    local Left_76 = Enum_TextXAlignment.Left;
    TextLabel_38.TextXAlignment = Left_76;
    TextLabel_38.RichText = true;
    local Y_100 = Enum_AutomaticSize.Y;
    TextLabel_38.AutomaticSize = Y_100;
    TextLabel_38.TextWrapped = true;

end);
local Spawned_96 = task.spawn(function()
    local Players_29 = game:GetService("Players");
    local StarterGui_26 = game:GetService("StarterGui");
    local LocalPlayer_29 = Players.LocalPlayer;
    local Parent_105 = LocalScript_96.Parent;
    local Connection_35;
    Connection_35 = ImageButton_28.MouseButton1Click:Connect(function()
        local ScreenGui_21 = Instance.new("ScreenGui");
        ScreenGui_21.ResetOnSpawn = false;
        local PlayerGui_21 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_21.Parent = PlayerGui_21;
        local Frame_31 = Instance.new("Frame");
        local UDim2_Value_444 = UDim2_New(0, 340, 0, 190);
        Frame_31.Size = UDim2_Value_444;
        local UDim2_Value_445 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_31.Position = UDim2_Value_445;
        local Color3_Value_645 = Color3_New(1, 1, 1);
        Frame_31.BackgroundColor3 = Color3_Value_645;
        Frame_31.BorderSizePixel = 0;
        Frame_31.Parent = ScreenGui_21;
        local UICorner_107 = Instance.new("UICorner");
        local UDim_Value_115 = UDim_New(0, 14);
        UICorner_107.CornerRadius = UDim_Value_115;
        UICorner_107.Parent = Frame_31;
        local TextLabel_74 = Instance.new("TextLabel");
        local UDim2_Value_446 = UDim2_New(1, 0, 0, 50);
        TextLabel_74.Size = UDim2_Value_446;
        TextLabel_74.BackgroundTransparency = 1;
        TextLabel_74.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_646 = Color3_New(0, 0, 0);
        TextLabel_74.TextColor3 = Color3_Value_646;
        TextLabel_74.TextSize = 20;
        local SourceSansBold_58 = Enum_Font.SourceSansBold;
        TextLabel_74.Font = SourceSansBold_58;
        TextLabel_74.TextWrapped = true;
        TextLabel_74.Parent = Frame_31;
        local TextBox_20 = Instance.new("TextBox");
        local UDim2_Value_447 = UDim2_New(0.9, 0, 0, 42);
        TextBox_20.Size = UDim2_Value_447;
        local UDim2_Value_448 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_20.Position = UDim2_Value_448;
        local Color3_Value_647 = Color3_FromRGB(240, 240, 240);
        TextBox_20.BackgroundColor3 = Color3_Value_647;
        local Color3_Value_648 = Color3_New(0, 0, 0);
        TextBox_20.TextColor3 = Color3_Value_648;
        TextBox_20.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_649 = Color3_FromRGB(140, 140, 140);
        TextBox_20.PlaceholderColor3 = Color3_Value_649;
        TextBox_20.Text = "";
        TextBox_20.TextSize = 18;
        local SourceSans_20 = Enum_Font.SourceSans;
        TextBox_20.Font = SourceSans_20;
        TextBox_20.ClearTextOnFocus = false;
        TextBox_20.Parent = Frame_31;
        local UICorner_108 = Instance.new("UICorner");
        local UDim_Value_116 = UDim_New(0, 10);
        UICorner_108.CornerRadius = UDim_Value_116;
        UICorner_108.Parent = TextBox_20;
        local TextButton_47 = Instance.new("TextButton");
        local UDim2_Value_449 = UDim2_New(0.9, 0, 0, 42);
        TextButton_47.Size = UDim2_Value_449;
        local UDim2_Value_450 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_47.Position = UDim2_Value_450;
        local Color3_Value_650 = Color3_FromRGB(235, 235, 235);
        TextButton_47.BackgroundColor3 = Color3_Value_650;
        local Color3_Value_651 = Color3_New(0, 0, 0);
        TextButton_47.TextColor3 = Color3_Value_651;
        TextButton_47.Text = "俺要起飞";
        TextButton_47.TextSize = 18;
        local SourceSansBold_59 = Enum_Font.SourceSansBold;
        TextButton_47.Font = SourceSansBold_59;
        TextButton_47.Parent = Frame_31;
        local UICorner_109 = Instance.new("UICorner");
        local UDim_Value_117 = UDim_New(0, 10);
        UICorner_109.CornerRadius = UDim_Value_117;
        UICorner_109.Parent = TextButton_47;
        local TextButton_48 = Instance.new("TextButton");
        local UDim2_Value_451 = UDim2_New(0, 34, 0, 34);
        TextButton_48.Size = UDim2_Value_451;
        local UDim2_Value_452 = UDim2_New(1, -40, 0, 6);
        TextButton_48.Position = UDim2_Value_452;
        TextButton_48.BackgroundTransparency = 1;
        TextButton_48.Text = "×";
        local Color3_Value_652 = Color3_New(0.2, 0.2, 0.2);
        TextButton_48.TextColor3 = Color3_Value_652;
        TextButton_48.TextSize = 26;
        local SourceSansBold_60 = Enum_Font.SourceSansBold;
        TextButton_48.Font = SourceSansBold_60;
        TextButton_48.Parent = Frame_31;
        local Connection_110;
        Connection_110 = TextButton_48.MouseButton1Click:Connect(function()
            local Destroy_20 = ScreenGui_21:Destroy();

        end);
        local Connection_111;
        Connection_111 = TextButton_47.MouseButton1Click:Connect(function()
            local Success_103, Error_Message_103 = pcall(function(...)
                local var677 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/DrivingEmpireKey.txt\", true)");
                local Loaded_Func_45 = var677();
                local var678 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/DrivingEmpireKey.txt", true);
            end) -- true, var678
            local var679 = tostring(var678);
            local Text_39 = TextBox_20.Text;
            local _390751814QQ_39 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_112;
        Connection_112 = TextBox_20.FocusLost:Connect(function(EnterPressed_39) -- args: EnterPressed_40, InputThatCausedFocusLoss_20;
            if EnterPressed_39 then -- ran, expr id 31, has no else.
                local Success_104, Error_Message_104 = pcall(function(...)
                    local var680 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/DrivingEmpireKey.txt\", true)");
                    local Loaded_Func_46 = var680();
                    local var681 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/DrivingEmpireKey.txt", true);
                end) -- true, var678
                local var682 = tostring(var678);
                local Text_40 = TextBox_20.Text;
                local _390751814QQ_40 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_97 = task.spawn(function()
    local Parent_106 = LocalScript_97.Parent;
    local New_161 = Font.new;
    local Bold_100 = Enum_FontWeight.Bold;
    local _call474 = New_161("rbxasset://fonts/families/FredokaOne.json", Bold_100);
    TextLabel_39.FontFace = _call474;
    TextLabel_39.TextSize = 16;
    local Color3_Value_476 = Color3_New(1, 1, 1);
    TextLabel_39.TextColor3 = Color3_Value_476;
    local Left_77 = Enum_TextXAlignment.Left;
    TextLabel_39.TextXAlignment = Left_77;
    TextLabel_39.RichText = true;
    local Y_101 = Enum_AutomaticSize.Y;
    TextLabel_39.AutomaticSize = Y_101;
    TextLabel_39.TextWrapped = true;

end);
local Spawned_98 = task.spawn(function()
    local Players_30 = game:GetService("Players");
    local StarterGui_27 = game:GetService("StarterGui");
    local LocalPlayer_30 = Players.LocalPlayer;
    local Parent_107 = LocalScript_98.Parent;
    local Connection_36;
    Connection_36 = ImageButton_29.MouseButton1Click:Connect(function()
        local ScreenGui_22 = Instance.new("ScreenGui");
        ScreenGui_22.ResetOnSpawn = false;
        local PlayerGui_22 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_22.Parent = PlayerGui_22;
        local Frame_32 = Instance.new("Frame");
        local UDim2_Value_453 = UDim2_New(0, 340, 0, 190);
        Frame_32.Size = UDim2_Value_453;
        local UDim2_Value_454 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_32.Position = UDim2_Value_454;
        local Color3_Value_653 = Color3_New(1, 1, 1);
        Frame_32.BackgroundColor3 = Color3_Value_653;
        Frame_32.BorderSizePixel = 0;
        Frame_32.Parent = ScreenGui_22;
        local UICorner_110 = Instance.new("UICorner");
        local UDim_Value_118 = UDim_New(0, 14);
        UICorner_110.CornerRadius = UDim_Value_118;
        UICorner_110.Parent = Frame_32;
        local TextLabel_75 = Instance.new("TextLabel");
        local UDim2_Value_455 = UDim2_New(1, 0, 0, 50);
        TextLabel_75.Size = UDim2_Value_455;
        TextLabel_75.BackgroundTransparency = 1;
        TextLabel_75.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_654 = Color3_New(0, 0, 0);
        TextLabel_75.TextColor3 = Color3_Value_654;
        TextLabel_75.TextSize = 20;
        local SourceSansBold_61 = Enum_Font.SourceSansBold;
        TextLabel_75.Font = SourceSansBold_61;
        TextLabel_75.TextWrapped = true;
        TextLabel_75.Parent = Frame_32;
        local TextBox_21 = Instance.new("TextBox");
        local UDim2_Value_456 = UDim2_New(0.9, 0, 0, 42);
        TextBox_21.Size = UDim2_Value_456;
        local UDim2_Value_457 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_21.Position = UDim2_Value_457;
        local Color3_Value_655 = Color3_FromRGB(240, 240, 240);
        TextBox_21.BackgroundColor3 = Color3_Value_655;
        local Color3_Value_656 = Color3_New(0, 0, 0);
        TextBox_21.TextColor3 = Color3_Value_656;
        TextBox_21.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_657 = Color3_FromRGB(140, 140, 140);
        TextBox_21.PlaceholderColor3 = Color3_Value_657;
        TextBox_21.Text = "";
        TextBox_21.TextSize = 18;
        local SourceSans_21 = Enum_Font.SourceSans;
        TextBox_21.Font = SourceSans_21;
        TextBox_21.ClearTextOnFocus = false;
        TextBox_21.Parent = Frame_32;
        local UICorner_111 = Instance.new("UICorner");
        local UDim_Value_119 = UDim_New(0, 10);
        UICorner_111.CornerRadius = UDim_Value_119;
        UICorner_111.Parent = TextBox_21;
        local TextButton_49 = Instance.new("TextButton");
        local UDim2_Value_458 = UDim2_New(0.9, 0, 0, 42);
        TextButton_49.Size = UDim2_Value_458;
        local UDim2_Value_459 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_49.Position = UDim2_Value_459;
        local Color3_Value_658 = Color3_FromRGB(235, 235, 235);
        TextButton_49.BackgroundColor3 = Color3_Value_658;
        local Color3_Value_659 = Color3_New(0, 0, 0);
        TextButton_49.TextColor3 = Color3_Value_659;
        TextButton_49.Text = "俺要起飞";
        TextButton_49.TextSize = 18;
        local SourceSansBold_62 = Enum_Font.SourceSansBold;
        TextButton_49.Font = SourceSansBold_62;
        TextButton_49.Parent = Frame_32;
        local UICorner_112 = Instance.new("UICorner");
        local UDim_Value_120 = UDim_New(0, 10);
        UICorner_112.CornerRadius = UDim_Value_120;
        UICorner_112.Parent = TextButton_49;
        local TextButton_50 = Instance.new("TextButton");
        local UDim2_Value_460 = UDim2_New(0, 34, 0, 34);
        TextButton_50.Size = UDim2_Value_460;
        local UDim2_Value_461 = UDim2_New(1, -40, 0, 6);
        TextButton_50.Position = UDim2_Value_461;
        TextButton_50.BackgroundTransparency = 1;
        TextButton_50.Text = "×";
        local Color3_Value_660 = Color3_New(0.2, 0.2, 0.2);
        TextButton_50.TextColor3 = Color3_Value_660;
        TextButton_50.TextSize = 26;
        local SourceSansBold_63 = Enum_Font.SourceSansBold;
        TextButton_50.Font = SourceSansBold_63;
        TextButton_50.Parent = Frame_32;
        local Connection_113;
        Connection_113 = TextButton_50.MouseButton1Click:Connect(function()
            local Destroy_21 = ScreenGui_22:Destroy();

        end);
        local Connection_114;
        Connection_114 = TextButton_49.MouseButton1Click:Connect(function()
            local Success_105, Error_Message_105 = pcall(function(...)
                local var683 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/NinjaLegendsKey.txt\", true)");
                local Loaded_Func_47 = var683();
                local var684 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/NinjaLegendsKey.txt", true);
            end) -- true, var684
            local var685 = tostring(var684);
            local Text_41 = TextBox_21.Text;
            local _390751814QQ_41 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_115;
        Connection_115 = TextBox_21.FocusLost:Connect(function(EnterPressed_41) -- args: EnterPressed_42, InputThatCausedFocusLoss_21;
            if EnterPressed_41 then -- ran, expr id 32, has no else.
                local Success_106, Error_Message_106 = pcall(function(...)
                    local var686 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/NinjaLegendsKey.txt\", true)");
                    local Loaded_Func_48 = var686();
                    local var687 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/NinjaLegendsKey.txt", true);
                end) -- true, var684
                local var688 = tostring(var684);
                local Text_42 = TextBox_21.Text;
                local _390751814QQ_42 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_99 = task.spawn(function()
    local Parent_108 = LocalScript_99.Parent;
    local New_162 = Font.new;
    local Bold_101 = Enum_FontWeight.Bold;
    local _call471 = New_162("rbxasset://fonts/families/FredokaOne.json", Bold_101);
    TextLabel_40.FontFace = _call471;
    TextLabel_40.TextSize = 16;
    local Color3_Value_477 = Color3_New(1, 1, 1);
    TextLabel_40.TextColor3 = Color3_Value_477;
    local Left_78 = Enum_TextXAlignment.Left;
    TextLabel_40.TextXAlignment = Left_78;
    TextLabel_40.RichText = true;
    local Y_102 = Enum_AutomaticSize.Y;
    TextLabel_40.AutomaticSize = Y_102;
    TextLabel_40.TextWrapped = true;

end);
local Spawned_100 = task.spawn(function()
    local Players_31 = game:GetService("Players");
    local StarterGui_28 = game:GetService("StarterGui");
    local LocalPlayer_31 = Players.LocalPlayer;
    local Parent_109 = LocalScript_100.Parent;
    local Connection_37;
    Connection_37 = ImageButton_30.MouseButton1Click:Connect(function()
        local ScreenGui_23 = Instance.new("ScreenGui");
        ScreenGui_23.ResetOnSpawn = false;
        local PlayerGui_23 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_23.Parent = PlayerGui_23;
        local Frame_33 = Instance.new("Frame");
        local UDim2_Value_462 = UDim2_New(0, 340, 0, 190);
        Frame_33.Size = UDim2_Value_462;
        local UDim2_Value_463 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_33.Position = UDim2_Value_463;
        local Color3_Value_661 = Color3_New(1, 1, 1);
        Frame_33.BackgroundColor3 = Color3_Value_661;
        Frame_33.BorderSizePixel = 0;
        Frame_33.Parent = ScreenGui_23;
        local UICorner_113 = Instance.new("UICorner");
        local UDim_Value_121 = UDim_New(0, 14);
        UICorner_113.CornerRadius = UDim_Value_121;
        UICorner_113.Parent = Frame_33;
        local TextLabel_76 = Instance.new("TextLabel");
        local UDim2_Value_464 = UDim2_New(1, 0, 0, 50);
        TextLabel_76.Size = UDim2_Value_464;
        TextLabel_76.BackgroundTransparency = 1;
        TextLabel_76.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_662 = Color3_New(0, 0, 0);
        TextLabel_76.TextColor3 = Color3_Value_662;
        TextLabel_76.TextSize = 20;
        local SourceSansBold_64 = Enum_Font.SourceSansBold;
        TextLabel_76.Font = SourceSansBold_64;
        TextLabel_76.TextWrapped = true;
        TextLabel_76.Parent = Frame_33;
        local TextBox_22 = Instance.new("TextBox");
        local UDim2_Value_465 = UDim2_New(0.9, 0, 0, 42);
        TextBox_22.Size = UDim2_Value_465;
        local UDim2_Value_466 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_22.Position = UDim2_Value_466;
        local Color3_Value_663 = Color3_FromRGB(240, 240, 240);
        TextBox_22.BackgroundColor3 = Color3_Value_663;
        local Color3_Value_664 = Color3_New(0, 0, 0);
        TextBox_22.TextColor3 = Color3_Value_664;
        TextBox_22.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_665 = Color3_FromRGB(140, 140, 140);
        TextBox_22.PlaceholderColor3 = Color3_Value_665;
        TextBox_22.Text = "";
        TextBox_22.TextSize = 18;
        local SourceSans_22 = Enum_Font.SourceSans;
        TextBox_22.Font = SourceSans_22;
        TextBox_22.ClearTextOnFocus = false;
        TextBox_22.Parent = Frame_33;
        local UICorner_114 = Instance.new("UICorner");
        local UDim_Value_122 = UDim_New(0, 10);
        UICorner_114.CornerRadius = UDim_Value_122;
        UICorner_114.Parent = TextBox_22;
        local TextButton_51 = Instance.new("TextButton");
        local UDim2_Value_467 = UDim2_New(0.9, 0, 0, 42);
        TextButton_51.Size = UDim2_Value_467;
        local UDim2_Value_468 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_51.Position = UDim2_Value_468;
        local Color3_Value_666 = Color3_FromRGB(235, 235, 235);
        TextButton_51.BackgroundColor3 = Color3_Value_666;
        local Color3_Value_667 = Color3_New(0, 0, 0);
        TextButton_51.TextColor3 = Color3_Value_667;
        TextButton_51.Text = "俺要起飞";
        TextButton_51.TextSize = 18;
        local SourceSansBold_65 = Enum_Font.SourceSansBold;
        TextButton_51.Font = SourceSansBold_65;
        TextButton_51.Parent = Frame_33;
        local UICorner_115 = Instance.new("UICorner");
        local UDim_Value_123 = UDim_New(0, 10);
        UICorner_115.CornerRadius = UDim_Value_123;
        UICorner_115.Parent = TextButton_51;
        local TextButton_52 = Instance.new("TextButton");
        local UDim2_Value_469 = UDim2_New(0, 34, 0, 34);
        TextButton_52.Size = UDim2_Value_469;
        local UDim2_Value_470 = UDim2_New(1, -40, 0, 6);
        TextButton_52.Position = UDim2_Value_470;
        TextButton_52.BackgroundTransparency = 1;
        TextButton_52.Text = "×";
        local Color3_Value_668 = Color3_New(0.2, 0.2, 0.2);
        TextButton_52.TextColor3 = Color3_Value_668;
        TextButton_52.TextSize = 26;
        local SourceSansBold_66 = Enum_Font.SourceSansBold;
        TextButton_52.Font = SourceSansBold_66;
        TextButton_52.Parent = Frame_33;
        local Connection_116;
        Connection_116 = TextButton_52.MouseButton1Click:Connect(function()
            local Destroy_22 = ScreenGui_23:Destroy();

        end);
        local Connection_117;
        Connection_117 = TextButton_51.MouseButton1Click:Connect(function()
            local Success_107, Error_Message_107 = pcall(function(...)
                local var689 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/LegendsOfSpeedKey.txt\", true)");
                local Loaded_Func_49 = var689();
                local var690 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/LegendsOfSpeedKey.txt", true);
            end) -- true, var690
            local var691 = tostring(var690);
            local Text_43 = TextBox_22.Text;
            local _390751814QQ_43 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_118;
        Connection_118 = TextBox_22.FocusLost:Connect(function(EnterPressed_43) -- args: EnterPressed_44, InputThatCausedFocusLoss_22;
            if EnterPressed_43 then -- ran, expr id 33, has no else.
                local Success_108, Error_Message_108 = pcall(function(...)
                    local var692 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/LegendsOfSpeedKey.txt\", true)");
                    local Loaded_Func_50 = var692();
                    local var693 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/LegendsOfSpeedKey.txt", true);
                end) -- true, var690
                local var694 = tostring(var690);
                local Text_44 = TextBox_22.Text;
                local _390751814QQ_44 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_101 = task.spawn(function()
    local Parent_110 = LocalScript_101.Parent;
    local New_163 = Font.new;
    local Bold_102 = Enum_FontWeight.Bold;
    local _call468 = New_163("rbxasset://fonts/families/FredokaOne.json", Bold_102);
    TextLabel_41.FontFace = _call468;
    TextLabel_41.TextSize = 16;
    local Color3_Value_478 = Color3_New(1, 1, 1);
    TextLabel_41.TextColor3 = Color3_Value_478;
    local Left_79 = Enum_TextXAlignment.Left;
    TextLabel_41.TextXAlignment = Left_79;
    TextLabel_41.RichText = true;
    local Y_103 = Enum_AutomaticSize.Y;
    TextLabel_41.AutomaticSize = Y_103;
    TextLabel_41.TextWrapped = true;

end);
local Spawned_102 = task.spawn(function()
    local Players_32 = game:GetService("Players");
    local StarterGui_29 = game:GetService("StarterGui");
    local LocalPlayer_32 = Players.LocalPlayer;
    local Parent_111 = LocalScript_102.Parent;
    local Connection_38;
    Connection_38 = ImageButton_31.MouseButton1Click:Connect(function()
        local ScreenGui_24 = Instance.new("ScreenGui");
        ScreenGui_24.ResetOnSpawn = false;
        local PlayerGui_24 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_24.Parent = PlayerGui_24;
        local Frame_34 = Instance.new("Frame");
        local UDim2_Value_471 = UDim2_New(0, 340, 0, 190);
        Frame_34.Size = UDim2_Value_471;
        local UDim2_Value_472 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_34.Position = UDim2_Value_472;
        local Color3_Value_669 = Color3_New(1, 1, 1);
        Frame_34.BackgroundColor3 = Color3_Value_669;
        Frame_34.BorderSizePixel = 0;
        Frame_34.Parent = ScreenGui_24;
        local UICorner_116 = Instance.new("UICorner");
        local UDim_Value_124 = UDim_New(0, 14);
        UICorner_116.CornerRadius = UDim_Value_124;
        UICorner_116.Parent = Frame_34;
        local TextLabel_77 = Instance.new("TextLabel");
        local UDim2_Value_473 = UDim2_New(1, 0, 0, 50);
        TextLabel_77.Size = UDim2_Value_473;
        TextLabel_77.BackgroundTransparency = 1;
        TextLabel_77.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_670 = Color3_New(0, 0, 0);
        TextLabel_77.TextColor3 = Color3_Value_670;
        TextLabel_77.TextSize = 20;
        local SourceSansBold_67 = Enum_Font.SourceSansBold;
        TextLabel_77.Font = SourceSansBold_67;
        TextLabel_77.TextWrapped = true;
        TextLabel_77.Parent = Frame_34;
        local TextBox_23 = Instance.new("TextBox");
        local UDim2_Value_474 = UDim2_New(0.9, 0, 0, 42);
        TextBox_23.Size = UDim2_Value_474;
        local UDim2_Value_475 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_23.Position = UDim2_Value_475;
        local Color3_Value_671 = Color3_FromRGB(240, 240, 240);
        TextBox_23.BackgroundColor3 = Color3_Value_671;
        local Color3_Value_672 = Color3_New(0, 0, 0);
        TextBox_23.TextColor3 = Color3_Value_672;
        TextBox_23.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_673 = Color3_FromRGB(140, 140, 140);
        TextBox_23.PlaceholderColor3 = Color3_Value_673;
        TextBox_23.Text = "";
        TextBox_23.TextSize = 18;
        local SourceSans_23 = Enum_Font.SourceSans;
        TextBox_23.Font = SourceSans_23;
        TextBox_23.ClearTextOnFocus = false;
        TextBox_23.Parent = Frame_34;
        local UICorner_117 = Instance.new("UICorner");
        local UDim_Value_125 = UDim_New(0, 10);
        UICorner_117.CornerRadius = UDim_Value_125;
        UICorner_117.Parent = TextBox_23;
        local TextButton_53 = Instance.new("TextButton");
        local UDim2_Value_476 = UDim2_New(0.9, 0, 0, 42);
        TextButton_53.Size = UDim2_Value_476;
        local UDim2_Value_477 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_53.Position = UDim2_Value_477;
        local Color3_Value_674 = Color3_FromRGB(235, 235, 235);
        TextButton_53.BackgroundColor3 = Color3_Value_674;
        local Color3_Value_675 = Color3_New(0, 0, 0);
        TextButton_53.TextColor3 = Color3_Value_675;
        TextButton_53.Text = "俺要起飞";
        TextButton_53.TextSize = 18;
        local SourceSansBold_68 = Enum_Font.SourceSansBold;
        TextButton_53.Font = SourceSansBold_68;
        TextButton_53.Parent = Frame_34;
        local UICorner_118 = Instance.new("UICorner");
        local UDim_Value_126 = UDim_New(0, 10);
        UICorner_118.CornerRadius = UDim_Value_126;
        UICorner_118.Parent = TextButton_53;
        local TextButton_54 = Instance.new("TextButton");
        local UDim2_Value_478 = UDim2_New(0, 34, 0, 34);
        TextButton_54.Size = UDim2_Value_478;
        local UDim2_Value_479 = UDim2_New(1, -40, 0, 6);
        TextButton_54.Position = UDim2_Value_479;
        TextButton_54.BackgroundTransparency = 1;
        TextButton_54.Text = "×";
        local Color3_Value_676 = Color3_New(0.2, 0.2, 0.2);
        TextButton_54.TextColor3 = Color3_Value_676;
        TextButton_54.TextSize = 26;
        local SourceSansBold_69 = Enum_Font.SourceSansBold;
        TextButton_54.Font = SourceSansBold_69;
        TextButton_54.Parent = Frame_34;
        local Connection_119;
        Connection_119 = TextButton_54.MouseButton1Click:Connect(function()
            local Destroy_23 = ScreenGui_24:Destroy();

        end);
        local Connection_120;
        Connection_120 = TextButton_53.MouseButton1Click:Connect(function()
            local Success_109, Error_Message_109 = pcall(function(...)
                local var695 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/MurderMystery2Key.txt\", true)");
                local Loaded_Func_51 = var695();
                local var696 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/MurderMystery2Key.txt", true);
            end) -- true, var696
            local var697 = tostring(var696);
            local Text_45 = TextBox_23.Text;
            local _390751814QQ_45 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_121;
        Connection_121 = TextBox_23.FocusLost:Connect(function(EnterPressed_45) -- args: EnterPressed_46, InputThatCausedFocusLoss_23;
            if EnterPressed_45 then -- ran, expr id 34, has no else.
                local Success_110, Error_Message_110 = pcall(function(...)
                    local var698 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/MurderMystery2Key.txt\", true)");
                    local Loaded_Func_52 = var698();
                    local var699 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/MurderMystery2Key.txt", true);
                end) -- true, var696
                local var700 = tostring(var696);
                local Text_46 = TextBox_23.Text;
                local _390751814QQ_46 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_103 = task.spawn(function()
    local Parent_112 = LocalScript_103.Parent;
    local New_164 = Font.new;
    local Bold_103 = Enum_FontWeight.Bold;
    local _call465 = New_164("rbxasset://fonts/families/FredokaOne.json", Bold_103);
    TextLabel_42.FontFace = _call465;
    TextLabel_42.TextSize = 16;
    local Color3_Value_479 = Color3_New(1, 1, 1);
    TextLabel_42.TextColor3 = Color3_Value_479;
    local Left_80 = Enum_TextXAlignment.Left;
    TextLabel_42.TextXAlignment = Left_80;
    TextLabel_42.RichText = true;
    local Y_104 = Enum_AutomaticSize.Y;
    TextLabel_42.AutomaticSize = Y_104;
    TextLabel_42.TextWrapped = true;

end);
local Spawned_104 = task.spawn(function()
    local Players_33 = game:GetService("Players");
    local StarterGui_30 = game:GetService("StarterGui");
    local LocalPlayer_33 = Players.LocalPlayer;
    local Parent_113 = LocalScript_104.Parent;
    local Connection_39;
    Connection_39 = ImageButton_32.MouseButton1Click:Connect(function()
        local ScreenGui_25 = Instance.new("ScreenGui");
        ScreenGui_25.ResetOnSpawn = false;
        local PlayerGui_25 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_25.Parent = PlayerGui_25;
        local Frame_35 = Instance.new("Frame");
        local UDim2_Value_480 = UDim2_New(0, 340, 0, 190);
        Frame_35.Size = UDim2_Value_480;
        local UDim2_Value_481 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_35.Position = UDim2_Value_481;
        local Color3_Value_677 = Color3_New(1, 1, 1);
        Frame_35.BackgroundColor3 = Color3_Value_677;
        Frame_35.BorderSizePixel = 0;
        Frame_35.Parent = ScreenGui_25;
        local UICorner_119 = Instance.new("UICorner");
        local UDim_Value_127 = UDim_New(0, 14);
        UICorner_119.CornerRadius = UDim_Value_127;
        UICorner_119.Parent = Frame_35;
        local TextLabel_78 = Instance.new("TextLabel");
        local UDim2_Value_482 = UDim2_New(1, 0, 0, 50);
        TextLabel_78.Size = UDim2_Value_482;
        TextLabel_78.BackgroundTransparency = 1;
        TextLabel_78.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_678 = Color3_New(0, 0, 0);
        TextLabel_78.TextColor3 = Color3_Value_678;
        TextLabel_78.TextSize = 20;
        local SourceSansBold_70 = Enum_Font.SourceSansBold;
        TextLabel_78.Font = SourceSansBold_70;
        TextLabel_78.TextWrapped = true;
        TextLabel_78.Parent = Frame_35;
        local TextBox_24 = Instance.new("TextBox");
        local UDim2_Value_483 = UDim2_New(0.9, 0, 0, 42);
        TextBox_24.Size = UDim2_Value_483;
        local UDim2_Value_484 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_24.Position = UDim2_Value_484;
        local Color3_Value_679 = Color3_FromRGB(240, 240, 240);
        TextBox_24.BackgroundColor3 = Color3_Value_679;
        local Color3_Value_680 = Color3_New(0, 0, 0);
        TextBox_24.TextColor3 = Color3_Value_680;
        TextBox_24.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_681 = Color3_FromRGB(140, 140, 140);
        TextBox_24.PlaceholderColor3 = Color3_Value_681;
        TextBox_24.Text = "";
        TextBox_24.TextSize = 18;
        local SourceSans_24 = Enum_Font.SourceSans;
        TextBox_24.Font = SourceSans_24;
        TextBox_24.ClearTextOnFocus = false;
        TextBox_24.Parent = Frame_35;
        local UICorner_120 = Instance.new("UICorner");
        local UDim_Value_128 = UDim_New(0, 10);
        UICorner_120.CornerRadius = UDim_Value_128;
        UICorner_120.Parent = TextBox_24;
        local TextButton_55 = Instance.new("TextButton");
        local UDim2_Value_485 = UDim2_New(0.9, 0, 0, 42);
        TextButton_55.Size = UDim2_Value_485;
        local UDim2_Value_486 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_55.Position = UDim2_Value_486;
        local Color3_Value_682 = Color3_FromRGB(235, 235, 235);
        TextButton_55.BackgroundColor3 = Color3_Value_682;
        local Color3_Value_683 = Color3_New(0, 0, 0);
        TextButton_55.TextColor3 = Color3_Value_683;
        TextButton_55.Text = "俺要起飞";
        TextButton_55.TextSize = 18;
        local SourceSansBold_71 = Enum_Font.SourceSansBold;
        TextButton_55.Font = SourceSansBold_71;
        TextButton_55.Parent = Frame_35;
        local UICorner_121 = Instance.new("UICorner");
        local UDim_Value_129 = UDim_New(0, 10);
        UICorner_121.CornerRadius = UDim_Value_129;
        UICorner_121.Parent = TextButton_55;
        local TextButton_56 = Instance.new("TextButton");
        local UDim2_Value_487 = UDim2_New(0, 34, 0, 34);
        TextButton_56.Size = UDim2_Value_487;
        local UDim2_Value_488 = UDim2_New(1, -40, 0, 6);
        TextButton_56.Position = UDim2_Value_488;
        TextButton_56.BackgroundTransparency = 1;
        TextButton_56.Text = "×";
        local Color3_Value_684 = Color3_New(0.2, 0.2, 0.2);
        TextButton_56.TextColor3 = Color3_Value_684;
        TextButton_56.TextSize = 26;
        local SourceSansBold_72 = Enum_Font.SourceSansBold;
        TextButton_56.Font = SourceSansBold_72;
        TextButton_56.Parent = Frame_35;
        local Connection_122;
        Connection_122 = TextButton_56.MouseButton1Click:Connect(function()
            local Destroy_24 = ScreenGui_25:Destroy();

        end);
        local Connection_123;
        Connection_123 = TextButton_55.MouseButton1Click:Connect(function()
            local Success_111, Error_Message_111 = pcall(function(...)
                local var701 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/BladeBallKey.txt\", true)");
                local Loaded_Func_53 = var701();
                local var702 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/BladeBallKey.txt", true);
            end) -- true, var702
            local var703 = tostring(var702);
            local Text_47 = TextBox_24.Text;
            local _390751814QQ_47 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_124;
        Connection_124 = TextBox_24.FocusLost:Connect(function(EnterPressed_47) -- args: EnterPressed_48, InputThatCausedFocusLoss_24;
            if EnterPressed_47 then -- ran, expr id 35, has no else.
                local Success_112, Error_Message_112 = pcall(function(...)
                    local var704 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/BladeBallKey.txt\", true)");
                    local Loaded_Func_54 = var704();
                    local var705 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/BladeBallKey.txt", true);
                end) -- true, var702
                local var706 = tostring(var702);
                local Text_48 = TextBox_24.Text;
                local _390751814QQ_48 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_105 = task.spawn(function()
    local Parent_114 = LocalScript_105.Parent;
    local New_165 = Font.new;
    local Bold_104 = Enum_FontWeight.Bold;
    local _call462 = New_165("rbxasset://fonts/families/FredokaOne.json", Bold_104);
    TextLabel_43.FontFace = _call462;
    TextLabel_43.TextSize = 16;
    local Color3_Value_480 = Color3_New(1, 1, 1);
    TextLabel_43.TextColor3 = Color3_Value_480;
    local Left_81 = Enum_TextXAlignment.Left;
    TextLabel_43.TextXAlignment = Left_81;
    TextLabel_43.RichText = true;
    local Y_105 = Enum_AutomaticSize.Y;
    TextLabel_43.AutomaticSize = Y_105;
    TextLabel_43.TextWrapped = true;

end);
local Spawned_106 = task.spawn(function()
    local Players_34 = game:GetService("Players");
    local StarterGui_31 = game:GetService("StarterGui");
    local LocalPlayer_34 = Players.LocalPlayer;
    local Parent_115 = LocalScript_106.Parent;
    local Connection_40;
    Connection_40 = ImageButton_33.MouseButton1Click:Connect(function()
        local ScreenGui_26 = Instance.new("ScreenGui");
        ScreenGui_26.ResetOnSpawn = false;
        local PlayerGui_26 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_26.Parent = PlayerGui_26;
        local Frame_36 = Instance.new("Frame");
        local UDim2_Value_489 = UDim2_New(0, 340, 0, 190);
        Frame_36.Size = UDim2_Value_489;
        local UDim2_Value_490 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_36.Position = UDim2_Value_490;
        local Color3_Value_685 = Color3_New(1, 1, 1);
        Frame_36.BackgroundColor3 = Color3_Value_685;
        Frame_36.BorderSizePixel = 0;
        Frame_36.Parent = ScreenGui_26;
        local UICorner_122 = Instance.new("UICorner");
        local UDim_Value_130 = UDim_New(0, 14);
        UICorner_122.CornerRadius = UDim_Value_130;
        UICorner_122.Parent = Frame_36;
        local TextLabel_79 = Instance.new("TextLabel");
        local UDim2_Value_491 = UDim2_New(1, 0, 0, 50);
        TextLabel_79.Size = UDim2_Value_491;
        TextLabel_79.BackgroundTransparency = 1;
        TextLabel_79.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_686 = Color3_New(0, 0, 0);
        TextLabel_79.TextColor3 = Color3_Value_686;
        TextLabel_79.TextSize = 20;
        local SourceSansBold_73 = Enum_Font.SourceSansBold;
        TextLabel_79.Font = SourceSansBold_73;
        TextLabel_79.TextWrapped = true;
        TextLabel_79.Parent = Frame_36;
        local TextBox_25 = Instance.new("TextBox");
        local UDim2_Value_492 = UDim2_New(0.9, 0, 0, 42);
        TextBox_25.Size = UDim2_Value_492;
        local UDim2_Value_493 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_25.Position = UDim2_Value_493;
        local Color3_Value_687 = Color3_FromRGB(240, 240, 240);
        TextBox_25.BackgroundColor3 = Color3_Value_687;
        local Color3_Value_688 = Color3_New(0, 0, 0);
        TextBox_25.TextColor3 = Color3_Value_688;
        TextBox_25.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_689 = Color3_FromRGB(140, 140, 140);
        TextBox_25.PlaceholderColor3 = Color3_Value_689;
        TextBox_25.Text = "";
        TextBox_25.TextSize = 18;
        local SourceSans_25 = Enum_Font.SourceSans;
        TextBox_25.Font = SourceSans_25;
        TextBox_25.ClearTextOnFocus = false;
        TextBox_25.Parent = Frame_36;
        local UICorner_123 = Instance.new("UICorner");
        local UDim_Value_131 = UDim_New(0, 10);
        UICorner_123.CornerRadius = UDim_Value_131;
        UICorner_123.Parent = TextBox_25;
        local TextButton_57 = Instance.new("TextButton");
        local UDim2_Value_494 = UDim2_New(0.9, 0, 0, 42);
        TextButton_57.Size = UDim2_Value_494;
        local UDim2_Value_495 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_57.Position = UDim2_Value_495;
        local Color3_Value_690 = Color3_FromRGB(235, 235, 235);
        TextButton_57.BackgroundColor3 = Color3_Value_690;
        local Color3_Value_691 = Color3_New(0, 0, 0);
        TextButton_57.TextColor3 = Color3_Value_691;
        TextButton_57.Text = "俺要起飞";
        TextButton_57.TextSize = 18;
        local SourceSansBold_74 = Enum_Font.SourceSansBold;
        TextButton_57.Font = SourceSansBold_74;
        TextButton_57.Parent = Frame_36;
        local UICorner_124 = Instance.new("UICorner");
        local UDim_Value_132 = UDim_New(0, 10);
        UICorner_124.CornerRadius = UDim_Value_132;
        UICorner_124.Parent = TextButton_57;
        local TextButton_58 = Instance.new("TextButton");
        local UDim2_Value_496 = UDim2_New(0, 34, 0, 34);
        TextButton_58.Size = UDim2_Value_496;
        local UDim2_Value_497 = UDim2_New(1, -40, 0, 6);
        TextButton_58.Position = UDim2_Value_497;
        TextButton_58.BackgroundTransparency = 1;
        TextButton_58.Text = "×";
        local Color3_Value_692 = Color3_New(0.2, 0.2, 0.2);
        TextButton_58.TextColor3 = Color3_Value_692;
        TextButton_58.TextSize = 26;
        local SourceSansBold_75 = Enum_Font.SourceSansBold;
        TextButton_58.Font = SourceSansBold_75;
        TextButton_58.Parent = Frame_36;
        local Connection_125;
        Connection_125 = TextButton_58.MouseButton1Click:Connect(function()
            local Destroy_25 = ScreenGui_26:Destroy();

        end);
        local Connection_126;
        Connection_126 = TextButton_57.MouseButton1Click:Connect(function()
            local Success_113, Error_Message_113 = pcall(function(...)
                local var707 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FlingThingsAndPeopleKey.txt\", true)");
                local Loaded_Func_55 = var707();
                local var708 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FlingThingsAndPeopleKey.txt", true);
            end) -- true, var708
            local var709 = tostring(var708);
            local Text_49 = TextBox_25.Text;
            local _390751814QQ_49 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_127;
        Connection_127 = TextBox_25.FocusLost:Connect(function(EnterPressed_49) -- args: EnterPressed_50, InputThatCausedFocusLoss_25;
            if EnterPressed_49 then -- ran, expr id 36, has no else.
                local Success_114, Error_Message_114 = pcall(function(...)
                    local var710 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FlingThingsAndPeopleKey.txt\", true)");
                    local Loaded_Func_56 = var710();
                    local var711 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FlingThingsAndPeopleKey.txt", true);
                end) -- true, var708
                local var712 = tostring(var708);
                local Text_50 = TextBox_25.Text;
                local _390751814QQ_50 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_107 = task.spawn(function()
    local Parent_116 = LocalScript_107.Parent;
    local New_166 = Font.new;
    local Bold_105 = Enum_FontWeight.Bold;
    local _call459 = New_166("rbxasset://fonts/families/FredokaOne.json", Bold_105);
    TextLabel_44.FontFace = _call459;
    TextLabel_44.TextSize = 16;
    local Color3_Value_481 = Color3_New(1, 1, 1);
    TextLabel_44.TextColor3 = Color3_Value_481;
    local Left_82 = Enum_TextXAlignment.Left;
    TextLabel_44.TextXAlignment = Left_82;
    TextLabel_44.RichText = true;
    local Y_106 = Enum_AutomaticSize.Y;
    TextLabel_44.AutomaticSize = Y_106;
    TextLabel_44.TextWrapped = true;

end);
local Spawned_108 = task.spawn(function()
    local Players_35 = game:GetService("Players");
    local StarterGui_32 = game:GetService("StarterGui");
    local LocalPlayer_35 = Players.LocalPlayer;
    local Parent_117 = LocalScript_108.Parent;
    local Connection_41;
    Connection_41 = ImageButton_34.MouseButton1Click:Connect(function()
        local ScreenGui_27 = Instance.new("ScreenGui");
        ScreenGui_27.ResetOnSpawn = false;
        local PlayerGui_27 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_27.Parent = PlayerGui_27;
        local Frame_37 = Instance.new("Frame");
        local UDim2_Value_498 = UDim2_New(0, 340, 0, 190);
        Frame_37.Size = UDim2_Value_498;
        local UDim2_Value_499 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_37.Position = UDim2_Value_499;
        local Color3_Value_693 = Color3_New(1, 1, 1);
        Frame_37.BackgroundColor3 = Color3_Value_693;
        Frame_37.BorderSizePixel = 0;
        Frame_37.Parent = ScreenGui_27;
        local UICorner_125 = Instance.new("UICorner");
        local UDim_Value_133 = UDim_New(0, 14);
        UICorner_125.CornerRadius = UDim_Value_133;
        UICorner_125.Parent = Frame_37;
        local TextLabel_80 = Instance.new("TextLabel");
        local UDim2_Value_500 = UDim2_New(1, 0, 0, 50);
        TextLabel_80.Size = UDim2_Value_500;
        TextLabel_80.BackgroundTransparency = 1;
        TextLabel_80.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_694 = Color3_New(0, 0, 0);
        TextLabel_80.TextColor3 = Color3_Value_694;
        TextLabel_80.TextSize = 20;
        local SourceSansBold_76 = Enum_Font.SourceSansBold;
        TextLabel_80.Font = SourceSansBold_76;
        TextLabel_80.TextWrapped = true;
        TextLabel_80.Parent = Frame_37;
        local TextBox_26 = Instance.new("TextBox");
        local UDim2_Value_501 = UDim2_New(0.9, 0, 0, 42);
        TextBox_26.Size = UDim2_Value_501;
        local UDim2_Value_502 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_26.Position = UDim2_Value_502;
        local Color3_Value_695 = Color3_FromRGB(240, 240, 240);
        TextBox_26.BackgroundColor3 = Color3_Value_695;
        local Color3_Value_696 = Color3_New(0, 0, 0);
        TextBox_26.TextColor3 = Color3_Value_696;
        TextBox_26.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_697 = Color3_FromRGB(140, 140, 140);
        TextBox_26.PlaceholderColor3 = Color3_Value_697;
        TextBox_26.Text = "";
        TextBox_26.TextSize = 18;
        local SourceSans_26 = Enum_Font.SourceSans;
        TextBox_26.Font = SourceSans_26;
        TextBox_26.ClearTextOnFocus = false;
        TextBox_26.Parent = Frame_37;
        local UICorner_126 = Instance.new("UICorner");
        local UDim_Value_134 = UDim_New(0, 10);
        UICorner_126.CornerRadius = UDim_Value_134;
        UICorner_126.Parent = TextBox_26;
        local TextButton_59 = Instance.new("TextButton");
        local UDim2_Value_503 = UDim2_New(0.9, 0, 0, 42);
        TextButton_59.Size = UDim2_Value_503;
        local UDim2_Value_504 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_59.Position = UDim2_Value_504;
        local Color3_Value_698 = Color3_FromRGB(235, 235, 235);
        TextButton_59.BackgroundColor3 = Color3_Value_698;
        local Color3_Value_699 = Color3_New(0, 0, 0);
        TextButton_59.TextColor3 = Color3_Value_699;
        TextButton_59.Text = "俺要起飞";
        TextButton_59.TextSize = 18;
        local SourceSansBold_77 = Enum_Font.SourceSansBold;
        TextButton_59.Font = SourceSansBold_77;
        TextButton_59.Parent = Frame_37;
        local UICorner_127 = Instance.new("UICorner");
        local UDim_Value_135 = UDim_New(0, 10);
        UICorner_127.CornerRadius = UDim_Value_135;
        UICorner_127.Parent = TextButton_59;
        local TextButton_60 = Instance.new("TextButton");
        local UDim2_Value_505 = UDim2_New(0, 34, 0, 34);
        TextButton_60.Size = UDim2_Value_505;
        local UDim2_Value_506 = UDim2_New(1, -40, 0, 6);
        TextButton_60.Position = UDim2_Value_506;
        TextButton_60.BackgroundTransparency = 1;
        TextButton_60.Text = "×";
        local Color3_Value_700 = Color3_New(0.2, 0.2, 0.2);
        TextButton_60.TextColor3 = Color3_Value_700;
        TextButton_60.TextSize = 26;
        local SourceSansBold_78 = Enum_Font.SourceSansBold;
        TextButton_60.Font = SourceSansBold_78;
        TextButton_60.Parent = Frame_37;
        local Connection_128;
        Connection_128 = TextButton_60.MouseButton1Click:Connect(function()
            local Destroy_26 = ScreenGui_27:Destroy();

        end);
        local Connection_129;
        Connection_129 = TextButton_59.MouseButton1Click:Connect(function()
            local Success_115, Error_Message_115 = pcall(function(...)
                local var713 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FunkyFridayKey.txt\", true)");
                local Loaded_Func_57 = var713();
                local var714 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FunkyFridayKey.txt", true);
            end) -- true, var714
            local var715 = tostring(var714);
            local Text_51 = TextBox_26.Text;
            local _390751814QQ_51 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_130;
        Connection_130 = TextBox_26.FocusLost:Connect(function(EnterPressed_51) -- args: EnterPressed_52, InputThatCausedFocusLoss_26;
            if EnterPressed_51 then -- ran, expr id 37, has no else.
                local Success_116, Error_Message_116 = pcall(function(...)
                    local var716 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FunkyFridayKey.txt\", true)");
                    local Loaded_Func_58 = var716();
                    local var717 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/FunkyFridayKey.txt", true);
                end) -- true, var714
                local var718 = tostring(var714);
                local Text_52 = TextBox_26.Text;
                local _390751814QQ_52 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_109 = task.spawn(function()
    local Parent_118 = LocalScript_109.Parent;
    local New_167 = Font.new;
    local Bold_106 = Enum_FontWeight.Bold;
    local _call456 = New_167("rbxasset://fonts/families/FredokaOne.json", Bold_106);
    TextLabel_45.FontFace = _call456;
    TextLabel_45.TextSize = 16;
    local Color3_Value_482 = Color3_New(1, 1, 1);
    TextLabel_45.TextColor3 = Color3_Value_482;
    local Left_83 = Enum_TextXAlignment.Left;
    TextLabel_45.TextXAlignment = Left_83;
    TextLabel_45.RichText = true;
    local Y_107 = Enum_AutomaticSize.Y;
    TextLabel_45.AutomaticSize = Y_107;
    TextLabel_45.TextWrapped = true;

end);
local Spawned_110 = task.spawn(function()
    local Parent_119 = LocalScript_110.Parent;
    local New_168 = Font.new;
    local Bold_107 = Enum_FontWeight.Bold;
    local _call453 = New_168("rbxasset://fonts/families/FredokaOne.json", Bold_107);
    TextLabel_46.FontFace = _call453;
    TextLabel_46.TextSize = 16;
    local Color3_Value_483 = Color3_New(1, 1, 1);
    TextLabel_46.TextColor3 = Color3_Value_483;
    local Left_84 = Enum_TextXAlignment.Left;
    TextLabel_46.TextXAlignment = Left_84;
    TextLabel_46.RichText = true;
    local Y_108 = Enum_AutomaticSize.Y;
    TextLabel_46.AutomaticSize = Y_108;
    TextLabel_46.TextWrapped = true;

end);
local Spawned_111 = task.spawn(function()
    local Players_36 = game:GetService("Players");
    local StarterGui_33 = game:GetService("StarterGui");
    local LocalPlayer_36 = Players.LocalPlayer;
    local Parent_120 = LocalScript_111.Parent;
    local Connection_42;
    Connection_42 = ImageButton_36.MouseButton1Click:Connect(function()
        local ScreenGui_28 = Instance.new("ScreenGui");
        ScreenGui_28.ResetOnSpawn = false;
        local PlayerGui_28 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_28.Parent = PlayerGui_28;
        local Frame_38 = Instance.new("Frame");
        local UDim2_Value_507 = UDim2_New(0, 340, 0, 190);
        Frame_38.Size = UDim2_Value_507;
        local UDim2_Value_508 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_38.Position = UDim2_Value_508;
        local Color3_Value_701 = Color3_New(1, 1, 1);
        Frame_38.BackgroundColor3 = Color3_Value_701;
        Frame_38.BorderSizePixel = 0;
        Frame_38.Parent = ScreenGui_28;
        local UICorner_128 = Instance.new("UICorner");
        local UDim_Value_136 = UDim_New(0, 14);
        UICorner_128.CornerRadius = UDim_Value_136;
        UICorner_128.Parent = Frame_38;
        local TextLabel_81 = Instance.new("TextLabel");
        local UDim2_Value_509 = UDim2_New(1, 0, 0, 50);
        TextLabel_81.Size = UDim2_Value_509;
        TextLabel_81.BackgroundTransparency = 1;
        TextLabel_81.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_702 = Color3_New(0, 0, 0);
        TextLabel_81.TextColor3 = Color3_Value_702;
        TextLabel_81.TextSize = 20;
        local SourceSansBold_79 = Enum_Font.SourceSansBold;
        TextLabel_81.Font = SourceSansBold_79;
        TextLabel_81.TextWrapped = true;
        TextLabel_81.Parent = Frame_38;
        local TextBox_27 = Instance.new("TextBox");
        local UDim2_Value_510 = UDim2_New(0.9, 0, 0, 42);
        TextBox_27.Size = UDim2_Value_510;
        local UDim2_Value_511 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_27.Position = UDim2_Value_511;
        local Color3_Value_703 = Color3_FromRGB(240, 240, 240);
        TextBox_27.BackgroundColor3 = Color3_Value_703;
        local Color3_Value_704 = Color3_New(0, 0, 0);
        TextBox_27.TextColor3 = Color3_Value_704;
        TextBox_27.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_705 = Color3_FromRGB(140, 140, 140);
        TextBox_27.PlaceholderColor3 = Color3_Value_705;
        TextBox_27.Text = "";
        TextBox_27.TextSize = 18;
        local SourceSans_27 = Enum_Font.SourceSans;
        TextBox_27.Font = SourceSans_27;
        TextBox_27.ClearTextOnFocus = false;
        TextBox_27.Parent = Frame_38;
        local UICorner_129 = Instance.new("UICorner");
        local UDim_Value_137 = UDim_New(0, 10);
        UICorner_129.CornerRadius = UDim_Value_137;
        UICorner_129.Parent = TextBox_27;
        local TextButton_61 = Instance.new("TextButton");
        local UDim2_Value_512 = UDim2_New(0.9, 0, 0, 42);
        TextButton_61.Size = UDim2_Value_512;
        local UDim2_Value_513 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_61.Position = UDim2_Value_513;
        local Color3_Value_706 = Color3_FromRGB(235, 235, 235);
        TextButton_61.BackgroundColor3 = Color3_Value_706;
        local Color3_Value_707 = Color3_New(0, 0, 0);
        TextButton_61.TextColor3 = Color3_Value_707;
        TextButton_61.Text = "俺要起飞";
        TextButton_61.TextSize = 18;
        local SourceSansBold_80 = Enum_Font.SourceSansBold;
        TextButton_61.Font = SourceSansBold_80;
        TextButton_61.Parent = Frame_38;
        local UICorner_130 = Instance.new("UICorner");
        local UDim_Value_138 = UDim_New(0, 10);
        UICorner_130.CornerRadius = UDim_Value_138;
        UICorner_130.Parent = TextButton_61;
        local TextButton_62 = Instance.new("TextButton");
        local UDim2_Value_514 = UDim2_New(0, 34, 0, 34);
        TextButton_62.Size = UDim2_Value_514;
        local UDim2_Value_515 = UDim2_New(1, -40, 0, 6);
        TextButton_62.Position = UDim2_Value_515;
        TextButton_62.BackgroundTransparency = 1;
        TextButton_62.Text = "×";
        local Color3_Value_708 = Color3_New(0.2, 0.2, 0.2);
        TextButton_62.TextColor3 = Color3_Value_708;
        TextButton_62.TextSize = 26;
        local SourceSansBold_81 = Enum_Font.SourceSansBold;
        TextButton_62.Font = SourceSansBold_81;
        TextButton_62.Parent = Frame_38;
        local Connection_131;
        Connection_131 = TextButton_62.MouseButton1Click:Connect(function()
            local Destroy_27 = ScreenGui_28:Destroy();

        end);
        local Connection_132;
        Connection_132 = TextButton_61.MouseButton1Click:Connect(function()
            local Success_117, Error_Message_117 = pcall(function(...)
                local var719 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/PrisonLifeKey.txt\", true)");
                local Loaded_Func_59 = var719();
                local var720 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/PrisonLifeKey.txt", true);
            end) -- true, var720
            local var721 = tostring(var720);
            local Text_53 = TextBox_27.Text;
            local _390751814QQ_53 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_133;
        Connection_133 = TextBox_27.FocusLost:Connect(function(EnterPressed_53) -- args: EnterPressed_54, InputThatCausedFocusLoss_27;
            if EnterPressed_53 then -- ran, expr id 38, has no else.
                local Success_118, Error_Message_118 = pcall(function(...)
                    local var722 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/PrisonLifeKey.txt\", true)");
                    local Loaded_Func_60 = var722();
                    local var723 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/PrisonLifeKey.txt", true);
                end) -- true, var720
                local var724 = tostring(var720);
                local Text_54 = TextBox_27.Text;
                local _390751814QQ_54 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_112 = task.spawn(function()
    local Parent_121 = LocalScript_112.Parent;
    local New_169 = Font.new;
    local Bold_108 = Enum_FontWeight.Bold;
    local _call450 = New_169("rbxasset://fonts/families/FredokaOne.json", Bold_108);
    TextLabel_47.FontFace = _call450;
    TextLabel_47.TextSize = 16;
    local Color3_Value_484 = Color3_New(1, 1, 1);
    TextLabel_47.TextColor3 = Color3_Value_484;
    local Left_85 = Enum_TextXAlignment.Left;
    TextLabel_47.TextXAlignment = Left_85;
    TextLabel_47.RichText = true;
    local Y_109 = Enum_AutomaticSize.Y;
    TextLabel_47.AutomaticSize = Y_109;
    TextLabel_47.TextWrapped = true;

end);
local Spawned_113 = task.spawn(function()
    local Players_37 = game:GetService("Players");
    local StarterGui_34 = game:GetService("StarterGui");
    local LocalPlayer_37 = Players.LocalPlayer;
    local Parent_122 = LocalScript_113.Parent;
    local Connection_43;
    Connection_43 = ImageButton_37.MouseButton1Click:Connect(function()
        local ScreenGui_29 = Instance.new("ScreenGui");
        ScreenGui_29.ResetOnSpawn = false;
        local PlayerGui_29 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_29.Parent = PlayerGui_29;
        local Frame_39 = Instance.new("Frame");
        local UDim2_Value_516 = UDim2_New(0, 340, 0, 190);
        Frame_39.Size = UDim2_Value_516;
        local UDim2_Value_517 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_39.Position = UDim2_Value_517;
        local Color3_Value_709 = Color3_New(1, 1, 1);
        Frame_39.BackgroundColor3 = Color3_Value_709;
        Frame_39.BorderSizePixel = 0;
        Frame_39.Parent = ScreenGui_29;
        local UICorner_131 = Instance.new("UICorner");
        local UDim_Value_139 = UDim_New(0, 14);
        UICorner_131.CornerRadius = UDim_Value_139;
        UICorner_131.Parent = Frame_39;
        local TextLabel_82 = Instance.new("TextLabel");
        local UDim2_Value_518 = UDim2_New(1, 0, 0, 50);
        TextLabel_82.Size = UDim2_Value_518;
        TextLabel_82.BackgroundTransparency = 1;
        TextLabel_82.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_710 = Color3_New(0, 0, 0);
        TextLabel_82.TextColor3 = Color3_Value_710;
        TextLabel_82.TextSize = 20;
        local SourceSansBold_82 = Enum_Font.SourceSansBold;
        TextLabel_82.Font = SourceSansBold_82;
        TextLabel_82.TextWrapped = true;
        TextLabel_82.Parent = Frame_39;
        local TextBox_28 = Instance.new("TextBox");
        local UDim2_Value_519 = UDim2_New(0.9, 0, 0, 42);
        TextBox_28.Size = UDim2_Value_519;
        local UDim2_Value_520 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_28.Position = UDim2_Value_520;
        local Color3_Value_711 = Color3_FromRGB(240, 240, 240);
        TextBox_28.BackgroundColor3 = Color3_Value_711;
        local Color3_Value_712 = Color3_New(0, 0, 0);
        TextBox_28.TextColor3 = Color3_Value_712;
        TextBox_28.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_713 = Color3_FromRGB(140, 140, 140);
        TextBox_28.PlaceholderColor3 = Color3_Value_713;
        TextBox_28.Text = "";
        TextBox_28.TextSize = 18;
        local SourceSans_28 = Enum_Font.SourceSans;
        TextBox_28.Font = SourceSans_28;
        TextBox_28.ClearTextOnFocus = false;
        TextBox_28.Parent = Frame_39;
        local UICorner_132 = Instance.new("UICorner");
        local UDim_Value_140 = UDim_New(0, 10);
        UICorner_132.CornerRadius = UDim_Value_140;
        UICorner_132.Parent = TextBox_28;
        local TextButton_63 = Instance.new("TextButton");
        local UDim2_Value_521 = UDim2_New(0.9, 0, 0, 42);
        TextButton_63.Size = UDim2_Value_521;
        local UDim2_Value_522 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_63.Position = UDim2_Value_522;
        local Color3_Value_714 = Color3_FromRGB(235, 235, 235);
        TextButton_63.BackgroundColor3 = Color3_Value_714;
        local Color3_Value_715 = Color3_New(0, 0, 0);
        TextButton_63.TextColor3 = Color3_Value_715;
        TextButton_63.Text = "俺要起飞";
        TextButton_63.TextSize = 18;
        local SourceSansBold_83 = Enum_Font.SourceSansBold;
        TextButton_63.Font = SourceSansBold_83;
        TextButton_63.Parent = Frame_39;
        local UICorner_133 = Instance.new("UICorner");
        local UDim_Value_141 = UDim_New(0, 10);
        UICorner_133.CornerRadius = UDim_Value_141;
        UICorner_133.Parent = TextButton_63;
        local TextButton_64 = Instance.new("TextButton");
        local UDim2_Value_523 = UDim2_New(0, 34, 0, 34);
        TextButton_64.Size = UDim2_Value_523;
        local UDim2_Value_524 = UDim2_New(1, -40, 0, 6);
        TextButton_64.Position = UDim2_Value_524;
        TextButton_64.BackgroundTransparency = 1;
        TextButton_64.Text = "×";
        local Color3_Value_716 = Color3_New(0.2, 0.2, 0.2);
        TextButton_64.TextColor3 = Color3_Value_716;
        TextButton_64.TextSize = 26;
        local SourceSansBold_84 = Enum_Font.SourceSansBold;
        TextButton_64.Font = SourceSansBold_84;
        TextButton_64.Parent = Frame_39;
        local Connection_134;
        Connection_134 = TextButton_64.MouseButton1Click:Connect(function()
            local Destroy_28 = ScreenGui_29:Destroy();

        end);
        local Connection_135;
        Connection_135 = TextButton_63.MouseButton1Click:Connect(function()
            local Success_119, Error_Message_119 = pcall(function(...)
                local var725 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/BuildABoatForTreasureKey.txt\", true)");
                local Loaded_Func_61 = var725();
                local var726 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/BuildABoatForTreasureKey.txt", true);
            end) -- true, var726
            local var727 = tostring(var726);
            local Text_55 = TextBox_28.Text;
            local _390751814QQ_55 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_136;
        Connection_136 = TextBox_28.FocusLost:Connect(function(EnterPressed_55) -- args: EnterPressed_56, InputThatCausedFocusLoss_28;
            if EnterPressed_55 then -- ran, expr id 39, has no else.
                local Success_120, Error_Message_120 = pcall(function(...)
                    local var728 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/BuildABoatForTreasureKey.txt\", true)");
                    local Loaded_Func_62 = var728();
                    local var729 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/BuildABoatForTreasureKey.txt", true);
                end) -- true, var726
                local var730 = tostring(var726);
                local Text_56 = TextBox_28.Text;
                local _390751814QQ_56 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_114 = task.spawn(function()
    local Parent_123 = LocalScript_114.Parent;
    local New_170 = Font.new;
    local Bold_109 = Enum_FontWeight.Bold;
    local _call447 = New_170("rbxasset://fonts/families/FredokaOne.json", Bold_109);
    TextLabel_48.FontFace = _call447;
    TextLabel_48.TextSize = 16;
    local Color3_Value_485 = Color3_New(1, 1, 1);
    TextLabel_48.TextColor3 = Color3_Value_485;
    local Left_86 = Enum_TextXAlignment.Left;
    TextLabel_48.TextXAlignment = Left_86;
    TextLabel_48.RichText = true;
    local Y_110 = Enum_AutomaticSize.Y;
    TextLabel_48.AutomaticSize = Y_110;
    TextLabel_48.TextWrapped = true;

end);
local Spawned_115 = task.spawn(function()
    local Players_38 = game:GetService("Players");
    local StarterGui_35 = game:GetService("StarterGui");
    local LocalPlayer_38 = Players.LocalPlayer;
    local Parent_124 = LocalScript_115.Parent;
    local Connection_44;
    Connection_44 = ImageButton_38.MouseButton1Click:Connect(function()
        local ScreenGui_30 = Instance.new("ScreenGui");
        ScreenGui_30.ResetOnSpawn = false;
        local PlayerGui_30 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_30.Parent = PlayerGui_30;
        local Frame_40 = Instance.new("Frame");
        local UDim2_Value_525 = UDim2_New(0, 340, 0, 190);
        Frame_40.Size = UDim2_Value_525;
        local UDim2_Value_526 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_40.Position = UDim2_Value_526;
        local Color3_Value_717 = Color3_New(1, 1, 1);
        Frame_40.BackgroundColor3 = Color3_Value_717;
        Frame_40.BorderSizePixel = 0;
        Frame_40.Parent = ScreenGui_30;
        local UICorner_134 = Instance.new("UICorner");
        local UDim_Value_142 = UDim_New(0, 14);
        UICorner_134.CornerRadius = UDim_Value_142;
        UICorner_134.Parent = Frame_40;
        local TextLabel_83 = Instance.new("TextLabel");
        local UDim2_Value_527 = UDim2_New(1, 0, 0, 50);
        TextLabel_83.Size = UDim2_Value_527;
        TextLabel_83.BackgroundTransparency = 1;
        TextLabel_83.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_718 = Color3_New(0, 0, 0);
        TextLabel_83.TextColor3 = Color3_Value_718;
        TextLabel_83.TextSize = 20;
        local SourceSansBold_85 = Enum_Font.SourceSansBold;
        TextLabel_83.Font = SourceSansBold_85;
        TextLabel_83.TextWrapped = true;
        TextLabel_83.Parent = Frame_40;
        local TextBox_29 = Instance.new("TextBox");
        local UDim2_Value_528 = UDim2_New(0.9, 0, 0, 42);
        TextBox_29.Size = UDim2_Value_528;
        local UDim2_Value_529 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_29.Position = UDim2_Value_529;
        local Color3_Value_719 = Color3_FromRGB(240, 240, 240);
        TextBox_29.BackgroundColor3 = Color3_Value_719;
        local Color3_Value_720 = Color3_New(0, 0, 0);
        TextBox_29.TextColor3 = Color3_Value_720;
        TextBox_29.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_721 = Color3_FromRGB(140, 140, 140);
        TextBox_29.PlaceholderColor3 = Color3_Value_721;
        TextBox_29.Text = "";
        TextBox_29.TextSize = 18;
        local SourceSans_29 = Enum_Font.SourceSans;
        TextBox_29.Font = SourceSans_29;
        TextBox_29.ClearTextOnFocus = false;
        TextBox_29.Parent = Frame_40;
        local UICorner_135 = Instance.new("UICorner");
        local UDim_Value_143 = UDim_New(0, 10);
        UICorner_135.CornerRadius = UDim_Value_143;
        UICorner_135.Parent = TextBox_29;
        local TextButton_65 = Instance.new("TextButton");
        local UDim2_Value_530 = UDim2_New(0.9, 0, 0, 42);
        TextButton_65.Size = UDim2_Value_530;
        local UDim2_Value_531 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_65.Position = UDim2_Value_531;
        local Color3_Value_722 = Color3_FromRGB(235, 235, 235);
        TextButton_65.BackgroundColor3 = Color3_Value_722;
        local Color3_Value_723 = Color3_New(0, 0, 0);
        TextButton_65.TextColor3 = Color3_Value_723;
        TextButton_65.Text = "俺要起飞";
        TextButton_65.TextSize = 18;
        local SourceSansBold_86 = Enum_Font.SourceSansBold;
        TextButton_65.Font = SourceSansBold_86;
        TextButton_65.Parent = Frame_40;
        local UICorner_136 = Instance.new("UICorner");
        local UDim_Value_144 = UDim_New(0, 10);
        UICorner_136.CornerRadius = UDim_Value_144;
        UICorner_136.Parent = TextButton_65;
        local TextButton_66 = Instance.new("TextButton");
        local UDim2_Value_532 = UDim2_New(0, 34, 0, 34);
        TextButton_66.Size = UDim2_Value_532;
        local UDim2_Value_533 = UDim2_New(1, -40, 0, 6);
        TextButton_66.Position = UDim2_Value_533;
        TextButton_66.BackgroundTransparency = 1;
        TextButton_66.Text = "×";
        local Color3_Value_724 = Color3_New(0.2, 0.2, 0.2);
        TextButton_66.TextColor3 = Color3_Value_724;
        TextButton_66.TextSize = 26;
        local SourceSansBold_87 = Enum_Font.SourceSansBold;
        TextButton_66.Font = SourceSansBold_87;
        TextButton_66.Parent = Frame_40;
        local Connection_137;
        Connection_137 = TextButton_66.MouseButton1Click:Connect(function()
            local Destroy_29 = ScreenGui_30:Destroy();

        end);
        local Connection_138;
        Connection_138 = TextButton_65.MouseButton1Click:Connect(function()
            local Success_121, Error_Message_121 = pcall(function(...)
                local var731 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/EatTheWorldKey.txt\", true)");
                local Loaded_Func_63 = var731();
                local var732 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/EatTheWorldKey.txt", true);
            end) -- true, var732
            local var733 = tostring(var732);
            local Text_57 = TextBox_29.Text;
            local _390751814QQ_57 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_139;
        Connection_139 = TextBox_29.FocusLost:Connect(function(EnterPressed_57) -- args: EnterPressed_58, InputThatCausedFocusLoss_29;
            if EnterPressed_57 then -- ran, expr id 40, has no else.
                local Success_122, Error_Message_122 = pcall(function(...)
                    local var734 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/EatTheWorldKey.txt\", true)");
                    local Loaded_Func_64 = var734();
                    local var735 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/EatTheWorldKey.txt", true);
                end) -- true, var732
                local var736 = tostring(var732);
                local Text_58 = TextBox_29.Text;
                local _390751814QQ_58 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_116 = task.spawn(function()
    local Parent_125 = LocalScript_116.Parent;
    local New_171 = Font.new;
    local Bold_110 = Enum_FontWeight.Bold;
    local _call444 = New_171("rbxasset://fonts/families/FredokaOne.json", Bold_110);
    TextLabel_49.FontFace = _call444;
    TextLabel_49.TextSize = 16;
    local Color3_Value_486 = Color3_New(1, 1, 1);
    TextLabel_49.TextColor3 = Color3_Value_486;
    local Left_87 = Enum_TextXAlignment.Left;
    TextLabel_49.TextXAlignment = Left_87;
    TextLabel_49.RichText = true;
    local Y_111 = Enum_AutomaticSize.Y;
    TextLabel_49.AutomaticSize = Y_111;
    TextLabel_49.TextWrapped = true;

end);
local Spawned_117 = task.spawn(function()
    local Players_39 = game:GetService("Players");
    local StarterGui_36 = game:GetService("StarterGui");
    local LocalPlayer_39 = Players.LocalPlayer;
    local Parent_126 = LocalScript_117.Parent;
    local Connection_45;
    Connection_45 = ImageButton_39.MouseButton1Click:Connect(function()
        local ScreenGui_31 = Instance.new("ScreenGui");
        ScreenGui_31.ResetOnSpawn = false;
        local PlayerGui_31 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_31.Parent = PlayerGui_31;
        local Frame_41 = Instance.new("Frame");
        local UDim2_Value_534 = UDim2_New(0, 340, 0, 190);
        Frame_41.Size = UDim2_Value_534;
        local UDim2_Value_535 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_41.Position = UDim2_Value_535;
        local Color3_Value_725 = Color3_New(1, 1, 1);
        Frame_41.BackgroundColor3 = Color3_Value_725;
        Frame_41.BorderSizePixel = 0;
        Frame_41.Parent = ScreenGui_31;
        local UICorner_137 = Instance.new("UICorner");
        local UDim_Value_145 = UDim_New(0, 14);
        UICorner_137.CornerRadius = UDim_Value_145;
        UICorner_137.Parent = Frame_41;
        local TextLabel_84 = Instance.new("TextLabel");
        local UDim2_Value_536 = UDim2_New(1, 0, 0, 50);
        TextLabel_84.Size = UDim2_Value_536;
        TextLabel_84.BackgroundTransparency = 1;
        TextLabel_84.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_726 = Color3_New(0, 0, 0);
        TextLabel_84.TextColor3 = Color3_Value_726;
        TextLabel_84.TextSize = 20;
        local SourceSansBold_88 = Enum_Font.SourceSansBold;
        TextLabel_84.Font = SourceSansBold_88;
        TextLabel_84.TextWrapped = true;
        TextLabel_84.Parent = Frame_41;
        local TextBox_30 = Instance.new("TextBox");
        local UDim2_Value_537 = UDim2_New(0.9, 0, 0, 42);
        TextBox_30.Size = UDim2_Value_537;
        local UDim2_Value_538 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_30.Position = UDim2_Value_538;
        local Color3_Value_727 = Color3_FromRGB(240, 240, 240);
        TextBox_30.BackgroundColor3 = Color3_Value_727;
        local Color3_Value_728 = Color3_New(0, 0, 0);
        TextBox_30.TextColor3 = Color3_Value_728;
        TextBox_30.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_729 = Color3_FromRGB(140, 140, 140);
        TextBox_30.PlaceholderColor3 = Color3_Value_729;
        TextBox_30.Text = "";
        TextBox_30.TextSize = 18;
        local SourceSans_30 = Enum_Font.SourceSans;
        TextBox_30.Font = SourceSans_30;
        TextBox_30.ClearTextOnFocus = false;
        TextBox_30.Parent = Frame_41;
        local UICorner_138 = Instance.new("UICorner");
        local UDim_Value_146 = UDim_New(0, 10);
        UICorner_138.CornerRadius = UDim_Value_146;
        UICorner_138.Parent = TextBox_30;
        local TextButton_67 = Instance.new("TextButton");
        local UDim2_Value_539 = UDim2_New(0.9, 0, 0, 42);
        TextButton_67.Size = UDim2_Value_539;
        local UDim2_Value_540 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_67.Position = UDim2_Value_540;
        local Color3_Value_730 = Color3_FromRGB(235, 235, 235);
        TextButton_67.BackgroundColor3 = Color3_Value_730;
        local Color3_Value_731 = Color3_New(0, 0, 0);
        TextButton_67.TextColor3 = Color3_Value_731;
        TextButton_67.Text = "俺要起飞";
        TextButton_67.TextSize = 18;
        local SourceSansBold_89 = Enum_Font.SourceSansBold;
        TextButton_67.Font = SourceSansBold_89;
        TextButton_67.Parent = Frame_41;
        local UICorner_139 = Instance.new("UICorner");
        local UDim_Value_147 = UDim_New(0, 10);
        UICorner_139.CornerRadius = UDim_Value_147;
        UICorner_139.Parent = TextButton_67;
        local TextButton_68 = Instance.new("TextButton");
        local UDim2_Value_541 = UDim2_New(0, 34, 0, 34);
        TextButton_68.Size = UDim2_Value_541;
        local UDim2_Value_542 = UDim2_New(1, -40, 0, 6);
        TextButton_68.Position = UDim2_Value_542;
        TextButton_68.BackgroundTransparency = 1;
        TextButton_68.Text = "×";
        local Color3_Value_732 = Color3_New(0.2, 0.2, 0.2);
        TextButton_68.TextColor3 = Color3_Value_732;
        TextButton_68.TextSize = 26;
        local SourceSansBold_90 = Enum_Font.SourceSansBold;
        TextButton_68.Font = SourceSansBold_90;
        TextButton_68.Parent = Frame_41;
        local Connection_140;
        Connection_140 = TextButton_68.MouseButton1Click:Connect(function()
            local Destroy_30 = ScreenGui_31:Destroy();

        end);
        local Connection_141;
        Connection_141 = TextButton_67.MouseButton1Click:Connect(function()
            local Success_123, Error_Message_123 = pcall(function(...)
                local var737 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/ProspectingKey.txt\", true)");
                local Loaded_Func_65 = var737();
                local var738 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/ProspectingKey.txt", true);
            end) -- true, var738
            local var739 = tostring(var738);
            local Text_59 = TextBox_30.Text;
            local _390751814QQ_59 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_142;
        Connection_142 = TextBox_30.FocusLost:Connect(function(EnterPressed_59) -- args: EnterPressed_60, InputThatCausedFocusLoss_30;
            if EnterPressed_59 then -- ran, expr id 41, has no else.
                local Success_124, Error_Message_124 = pcall(function(...)
                    local var740 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/ProspectingKey.txt\", true)");
                    local Loaded_Func_66 = var740();
                    local var741 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/ProspectingKey.txt", true);
                end) -- true, var738
                local var742 = tostring(var738);
                local Text_60 = TextBox_30.Text;
                local _390751814QQ_60 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_118 = task.spawn(function()
    local Parent_127 = LocalScript_118.Parent;
    local New_172 = Font.new;
    local Bold_111 = Enum_FontWeight.Bold;
    local _call441 = New_172("rbxasset://fonts/families/FredokaOne.json", Bold_111);
    TextLabel_50.FontFace = _call441;
    TextLabel_50.TextSize = 16;
    local Color3_Value_487 = Color3_New(1, 1, 1);
    TextLabel_50.TextColor3 = Color3_Value_487;
    local Left_88 = Enum_TextXAlignment.Left;
    TextLabel_50.TextXAlignment = Left_88;
    TextLabel_50.RichText = true;
    local Y_112 = Enum_AutomaticSize.Y;
    TextLabel_50.AutomaticSize = Y_112;
    TextLabel_50.TextWrapped = true;

end);
local Spawned_119 = task.spawn(function()
    local Parent_128 = LocalScript_119.Parent;
    local New_173 = Font.new;
    local Bold_112 = Enum_FontWeight.Bold;
    local _call438 = New_173("rbxasset://fonts/families/FredokaOne.json", Bold_112);
    TextLabel_51.FontFace = _call438;
    TextLabel_51.TextSize = 16;
    local Color3_Value_488 = Color3_New(1, 1, 1);
    TextLabel_51.TextColor3 = Color3_Value_488;
    local Left_89 = Enum_TextXAlignment.Left;
    TextLabel_51.TextXAlignment = Left_89;
    TextLabel_51.RichText = true;
    local Y_113 = Enum_AutomaticSize.Y;
    TextLabel_51.AutomaticSize = Y_113;
    TextLabel_51.TextWrapped = true;

end);
local Spawned_120 = task.spawn(function()
    local Players_40 = game:GetService("Players");
    local StarterGui_37 = game:GetService("StarterGui");
    local LocalPlayer_40 = Players.LocalPlayer;
    local Parent_129 = LocalScript_120.Parent;
    local Connection_46;
    Connection_46 = ImageButton_41.MouseButton1Click:Connect(function()
        local ScreenGui_32 = Instance.new("ScreenGui");
        ScreenGui_32.ResetOnSpawn = false;
        local PlayerGui_32 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_32.Parent = PlayerGui_32;
        local Frame_42 = Instance.new("Frame");
        local UDim2_Value_543 = UDim2_New(0, 340, 0, 190);
        Frame_42.Size = UDim2_Value_543;
        local UDim2_Value_544 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_42.Position = UDim2_Value_544;
        local Color3_Value_733 = Color3_New(1, 1, 1);
        Frame_42.BackgroundColor3 = Color3_Value_733;
        Frame_42.BorderSizePixel = 0;
        Frame_42.Parent = ScreenGui_32;
        local UICorner_140 = Instance.new("UICorner");
        local UDim_Value_148 = UDim_New(0, 14);
        UICorner_140.CornerRadius = UDim_Value_148;
        UICorner_140.Parent = Frame_42;
        local TextLabel_85 = Instance.new("TextLabel");
        local UDim2_Value_545 = UDim2_New(1, 0, 0, 50);
        TextLabel_85.Size = UDim2_Value_545;
        TextLabel_85.BackgroundTransparency = 1;
        TextLabel_85.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_734 = Color3_New(0, 0, 0);
        TextLabel_85.TextColor3 = Color3_Value_734;
        TextLabel_85.TextSize = 20;
        local SourceSansBold_91 = Enum_Font.SourceSansBold;
        TextLabel_85.Font = SourceSansBold_91;
        TextLabel_85.TextWrapped = true;
        TextLabel_85.Parent = Frame_42;
        local TextBox_31 = Instance.new("TextBox");
        local UDim2_Value_546 = UDim2_New(0.9, 0, 0, 42);
        TextBox_31.Size = UDim2_Value_546;
        local UDim2_Value_547 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_31.Position = UDim2_Value_547;
        local Color3_Value_735 = Color3_FromRGB(240, 240, 240);
        TextBox_31.BackgroundColor3 = Color3_Value_735;
        local Color3_Value_736 = Color3_New(0, 0, 0);
        TextBox_31.TextColor3 = Color3_Value_736;
        TextBox_31.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_737 = Color3_FromRGB(140, 140, 140);
        TextBox_31.PlaceholderColor3 = Color3_Value_737;
        TextBox_31.Text = "";
        TextBox_31.TextSize = 18;
        local SourceSans_31 = Enum_Font.SourceSans;
        TextBox_31.Font = SourceSans_31;
        TextBox_31.ClearTextOnFocus = false;
        TextBox_31.Parent = Frame_42;
        local UICorner_141 = Instance.new("UICorner");
        local UDim_Value_149 = UDim_New(0, 10);
        UICorner_141.CornerRadius = UDim_Value_149;
        UICorner_141.Parent = TextBox_31;
        local TextButton_69 = Instance.new("TextButton");
        local UDim2_Value_548 = UDim2_New(0.9, 0, 0, 42);
        TextButton_69.Size = UDim2_Value_548;
        local UDim2_Value_549 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_69.Position = UDim2_Value_549;
        local Color3_Value_738 = Color3_FromRGB(235, 235, 235);
        TextButton_69.BackgroundColor3 = Color3_Value_738;
        local Color3_Value_739 = Color3_New(0, 0, 0);
        TextButton_69.TextColor3 = Color3_Value_739;
        TextButton_69.Text = "俺要起飞";
        TextButton_69.TextSize = 18;
        local SourceSansBold_92 = Enum_Font.SourceSansBold;
        TextButton_69.Font = SourceSansBold_92;
        TextButton_69.Parent = Frame_42;
        local UICorner_142 = Instance.new("UICorner");
        local UDim_Value_150 = UDim_New(0, 10);
        UICorner_142.CornerRadius = UDim_Value_150;
        UICorner_142.Parent = TextButton_69;
        local TextButton_70 = Instance.new("TextButton");
        local UDim2_Value_550 = UDim2_New(0, 34, 0, 34);
        TextButton_70.Size = UDim2_Value_550;
        local UDim2_Value_551 = UDim2_New(1, -40, 0, 6);
        TextButton_70.Position = UDim2_Value_551;
        TextButton_70.BackgroundTransparency = 1;
        TextButton_70.Text = "×";
        local Color3_Value_740 = Color3_New(0.2, 0.2, 0.2);
        TextButton_70.TextColor3 = Color3_Value_740;
        TextButton_70.TextSize = 26;
        local SourceSansBold_93 = Enum_Font.SourceSansBold;
        TextButton_70.Font = SourceSansBold_93;
        TextButton_70.Parent = Frame_42;
        local Connection_143;
        Connection_143 = TextButton_70.MouseButton1Click:Connect(function()
            local Destroy_31 = ScreenGui_32:Destroy();

        end);
        local Connection_144;
        Connection_144 = TextButton_69.MouseButton1Click:Connect(function()
            local Success_125, Error_Message_125 = pcall(function(...)
                local var743 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/BuildAPlaneKey.txt\", true)");
                local Loaded_Func_67 = var743();
                local var744 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/BuildAPlaneKey.txt", true);
            end) -- true, var744
            local var745 = tostring(var744);
            local Text_61 = TextBox_31.Text;
            local _390751814QQ_61 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_145;
        Connection_145 = TextBox_31.FocusLost:Connect(function(EnterPressed_61) -- args: EnterPressed_62, InputThatCausedFocusLoss_31;
            if EnterPressed_61 then -- ran, expr id 42, has no else.
                local Success_126, Error_Message_126 = pcall(function(...)
                    local var746 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/BuildAPlaneKey.txt\", true)");
                    local Loaded_Func_68 = var746();
                    local var747 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/BuildAPlaneKey.txt", true);
                end) -- true, var744
                local var748 = tostring(var744);
                local Text_62 = TextBox_31.Text;
                local _390751814QQ_62 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_121 = task.spawn(function()
    local Parent_130 = LocalScript_121.Parent;
    local New_174 = Font.new;
    local Bold_113 = Enum_FontWeight.Bold;
    local _call435 = New_174("rbxasset://fonts/families/FredokaOne.json", Bold_113);
    TextLabel_52.FontFace = _call435;
    TextLabel_52.TextSize = 16;
    local Color3_Value_489 = Color3_New(1, 1, 1);
    TextLabel_52.TextColor3 = Color3_Value_489;
    local Left_90 = Enum_TextXAlignment.Left;
    TextLabel_52.TextXAlignment = Left_90;
    TextLabel_52.RichText = true;
    local Y_114 = Enum_AutomaticSize.Y;
    TextLabel_52.AutomaticSize = Y_114;
    TextLabel_52.TextWrapped = true;

end);
local Spawned_122 = task.spawn(function()
    local Players_41 = game:GetService("Players");
    local StarterGui_38 = game:GetService("StarterGui");
    local LocalPlayer_41 = Players.LocalPlayer;
    local Parent_131 = LocalScript_122.Parent;
    local Connection_47;
    Connection_47 = ImageButton_42.MouseButton1Click:Connect(function()
        local ScreenGui_33 = Instance.new("ScreenGui");
        ScreenGui_33.ResetOnSpawn = false;
        local PlayerGui_33 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_33.Parent = PlayerGui_33;
        local Frame_43 = Instance.new("Frame");
        local UDim2_Value_552 = UDim2_New(0, 340, 0, 190);
        Frame_43.Size = UDim2_Value_552;
        local UDim2_Value_553 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_43.Position = UDim2_Value_553;
        local Color3_Value_741 = Color3_New(1, 1, 1);
        Frame_43.BackgroundColor3 = Color3_Value_741;
        Frame_43.BorderSizePixel = 0;
        Frame_43.Parent = ScreenGui_33;
        local UICorner_143 = Instance.new("UICorner");
        local UDim_Value_151 = UDim_New(0, 14);
        UICorner_143.CornerRadius = UDim_Value_151;
        UICorner_143.Parent = Frame_43;
        local TextLabel_86 = Instance.new("TextLabel");
        local UDim2_Value_554 = UDim2_New(1, 0, 0, 50);
        TextLabel_86.Size = UDim2_Value_554;
        TextLabel_86.BackgroundTransparency = 1;
        TextLabel_86.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_742 = Color3_New(0, 0, 0);
        TextLabel_86.TextColor3 = Color3_Value_742;
        TextLabel_86.TextSize = 20;
        local SourceSansBold_94 = Enum_Font.SourceSansBold;
        TextLabel_86.Font = SourceSansBold_94;
        TextLabel_86.TextWrapped = true;
        TextLabel_86.Parent = Frame_43;
        local TextBox_32 = Instance.new("TextBox");
        local UDim2_Value_555 = UDim2_New(0.9, 0, 0, 42);
        TextBox_32.Size = UDim2_Value_555;
        local UDim2_Value_556 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_32.Position = UDim2_Value_556;
        local Color3_Value_743 = Color3_FromRGB(240, 240, 240);
        TextBox_32.BackgroundColor3 = Color3_Value_743;
        local Color3_Value_744 = Color3_New(0, 0, 0);
        TextBox_32.TextColor3 = Color3_Value_744;
        TextBox_32.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_745 = Color3_FromRGB(140, 140, 140);
        TextBox_32.PlaceholderColor3 = Color3_Value_745;
        TextBox_32.Text = "";
        TextBox_32.TextSize = 18;
        local SourceSans_32 = Enum_Font.SourceSans;
        TextBox_32.Font = SourceSans_32;
        TextBox_32.ClearTextOnFocus = false;
        TextBox_32.Parent = Frame_43;
        local UICorner_144 = Instance.new("UICorner");
        local UDim_Value_152 = UDim_New(0, 10);
        UICorner_144.CornerRadius = UDim_Value_152;
        UICorner_144.Parent = TextBox_32;
        local TextButton_71 = Instance.new("TextButton");
        local UDim2_Value_557 = UDim2_New(0.9, 0, 0, 42);
        TextButton_71.Size = UDim2_Value_557;
        local UDim2_Value_558 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_71.Position = UDim2_Value_558;
        local Color3_Value_746 = Color3_FromRGB(235, 235, 235);
        TextButton_71.BackgroundColor3 = Color3_Value_746;
        local Color3_Value_747 = Color3_New(0, 0, 0);
        TextButton_71.TextColor3 = Color3_Value_747;
        TextButton_71.Text = "俺要起飞";
        TextButton_71.TextSize = 18;
        local SourceSansBold_95 = Enum_Font.SourceSansBold;
        TextButton_71.Font = SourceSansBold_95;
        TextButton_71.Parent = Frame_43;
        local UICorner_145 = Instance.new("UICorner");
        local UDim_Value_153 = UDim_New(0, 10);
        UICorner_145.CornerRadius = UDim_Value_153;
        UICorner_145.Parent = TextButton_71;
        local TextButton_72 = Instance.new("TextButton");
        local UDim2_Value_559 = UDim2_New(0, 34, 0, 34);
        TextButton_72.Size = UDim2_Value_559;
        local UDim2_Value_560 = UDim2_New(1, -40, 0, 6);
        TextButton_72.Position = UDim2_Value_560;
        TextButton_72.BackgroundTransparency = 1;
        TextButton_72.Text = "×";
        local Color3_Value_748 = Color3_New(0.2, 0.2, 0.2);
        TextButton_72.TextColor3 = Color3_Value_748;
        TextButton_72.TextSize = 26;
        local SourceSansBold_96 = Enum_Font.SourceSansBold;
        TextButton_72.Font = SourceSansBold_96;
        TextButton_72.Parent = Frame_43;
        local Connection_146;
        Connection_146 = TextButton_72.MouseButton1Click:Connect(function()
            local Destroy_32 = ScreenGui_33:Destroy();

        end);
        local Connection_147;
        Connection_147 = TextButton_71.MouseButton1Click:Connect(function()
            local Success_127, Error_Message_127 = pcall(function(...)
                local var749 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/CutTreesKey.txt\", true)");
                local Loaded_Func_69 = var749();
                local var750 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/CutTreesKey.txt", true);
            end) -- true, var750
            local var751 = tostring(var750);
            local Text_63 = TextBox_32.Text;
            local _390751814QQ_63 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_148;
        Connection_148 = TextBox_32.FocusLost:Connect(function(EnterPressed_63) -- args: EnterPressed_64, InputThatCausedFocusLoss_32;
            if EnterPressed_63 then -- ran, expr id 43, has no else.
                local Success_128, Error_Message_128 = pcall(function(...)
                    local var752 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/CutTreesKey.txt\", true)");
                    local Loaded_Func_70 = var752();
                    local var753 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/CutTreesKey.txt", true);
                end) -- true, var750
                local var754 = tostring(var750);
                local Text_64 = TextBox_32.Text;
                local _390751814QQ_64 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_123 = task.spawn(function()
    local Parent_132 = LocalScript_123.Parent;
    local New_175 = Font.new;
    local Bold_114 = Enum_FontWeight.Bold;
    local _call432 = New_175("rbxasset://fonts/families/FredokaOne.json", Bold_114);
    TextLabel_53.FontFace = _call432;
    TextLabel_53.TextSize = 16;
    local Color3_Value_490 = Color3_New(1, 1, 1);
    TextLabel_53.TextColor3 = Color3_Value_490;
    local Left_91 = Enum_TextXAlignment.Left;
    TextLabel_53.TextXAlignment = Left_91;
    TextLabel_53.RichText = true;
    local Y_115 = Enum_AutomaticSize.Y;
    TextLabel_53.AutomaticSize = Y_115;
    TextLabel_53.TextWrapped = true;

end);
local Spawned_124 = task.spawn(function()
    local Players_42 = game:GetService("Players");
    local StarterGui_39 = game:GetService("StarterGui");
    local LocalPlayer_42 = Players.LocalPlayer;
    local Parent_133 = LocalScript_124.Parent;
    local Connection_48;
    Connection_48 = ImageButton_43.MouseButton1Click:Connect(function()
        local ScreenGui_34 = Instance.new("ScreenGui");
        ScreenGui_34.ResetOnSpawn = false;
        local PlayerGui_34 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_34.Parent = PlayerGui_34;
        local Frame_44 = Instance.new("Frame");
        local UDim2_Value_561 = UDim2_New(0, 340, 0, 190);
        Frame_44.Size = UDim2_Value_561;
        local UDim2_Value_562 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_44.Position = UDim2_Value_562;
        local Color3_Value_749 = Color3_New(1, 1, 1);
        Frame_44.BackgroundColor3 = Color3_Value_749;
        Frame_44.BorderSizePixel = 0;
        Frame_44.Parent = ScreenGui_34;
        local UICorner_146 = Instance.new("UICorner");
        local UDim_Value_154 = UDim_New(0, 14);
        UICorner_146.CornerRadius = UDim_Value_154;
        UICorner_146.Parent = Frame_44;
        local TextLabel_87 = Instance.new("TextLabel");
        local UDim2_Value_563 = UDim2_New(1, 0, 0, 50);
        TextLabel_87.Size = UDim2_Value_563;
        TextLabel_87.BackgroundTransparency = 1;
        TextLabel_87.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_750 = Color3_New(0, 0, 0);
        TextLabel_87.TextColor3 = Color3_Value_750;
        TextLabel_87.TextSize = 20;
        local SourceSansBold_97 = Enum_Font.SourceSansBold;
        TextLabel_87.Font = SourceSansBold_97;
        TextLabel_87.TextWrapped = true;
        TextLabel_87.Parent = Frame_44;
        local TextBox_33 = Instance.new("TextBox");
        local UDim2_Value_564 = UDim2_New(0.9, 0, 0, 42);
        TextBox_33.Size = UDim2_Value_564;
        local UDim2_Value_565 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_33.Position = UDim2_Value_565;
        local Color3_Value_751 = Color3_FromRGB(240, 240, 240);
        TextBox_33.BackgroundColor3 = Color3_Value_751;
        local Color3_Value_752 = Color3_New(0, 0, 0);
        TextBox_33.TextColor3 = Color3_Value_752;
        TextBox_33.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_753 = Color3_FromRGB(140, 140, 140);
        TextBox_33.PlaceholderColor3 = Color3_Value_753;
        TextBox_33.Text = "";
        TextBox_33.TextSize = 18;
        local SourceSans_33 = Enum_Font.SourceSans;
        TextBox_33.Font = SourceSans_33;
        TextBox_33.ClearTextOnFocus = false;
        TextBox_33.Parent = Frame_44;
        local UICorner_147 = Instance.new("UICorner");
        local UDim_Value_155 = UDim_New(0, 10);
        UICorner_147.CornerRadius = UDim_Value_155;
        UICorner_147.Parent = TextBox_33;
        local TextButton_73 = Instance.new("TextButton");
        local UDim2_Value_566 = UDim2_New(0.9, 0, 0, 42);
        TextButton_73.Size = UDim2_Value_566;
        local UDim2_Value_567 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_73.Position = UDim2_Value_567;
        local Color3_Value_754 = Color3_FromRGB(235, 235, 235);
        TextButton_73.BackgroundColor3 = Color3_Value_754;
        local Color3_Value_755 = Color3_New(0, 0, 0);
        TextButton_73.TextColor3 = Color3_Value_755;
        TextButton_73.Text = "俺要起飞";
        TextButton_73.TextSize = 18;
        local SourceSansBold_98 = Enum_Font.SourceSansBold;
        TextButton_73.Font = SourceSansBold_98;
        TextButton_73.Parent = Frame_44;
        local UICorner_148 = Instance.new("UICorner");
        local UDim_Value_156 = UDim_New(0, 10);
        UICorner_148.CornerRadius = UDim_Value_156;
        UICorner_148.Parent = TextButton_73;
        local TextButton_74 = Instance.new("TextButton");
        local UDim2_Value_568 = UDim2_New(0, 34, 0, 34);
        TextButton_74.Size = UDim2_Value_568;
        local UDim2_Value_569 = UDim2_New(1, -40, 0, 6);
        TextButton_74.Position = UDim2_Value_569;
        TextButton_74.BackgroundTransparency = 1;
        TextButton_74.Text = "×";
        local Color3_Value_756 = Color3_New(0.2, 0.2, 0.2);
        TextButton_74.TextColor3 = Color3_Value_756;
        TextButton_74.TextSize = 26;
        local SourceSansBold_99 = Enum_Font.SourceSansBold;
        TextButton_74.Font = SourceSansBold_99;
        TextButton_74.Parent = Frame_44;
        local Connection_149;
        Connection_149 = TextButton_74.MouseButton1Click:Connect(function()
            local Destroy_33 = ScreenGui_34:Destroy();

        end);
        local Connection_150;
        Connection_150 = TextButton_73.MouseButton1Click:Connect(function()
            local Success_129, Error_Message_129 = pcall(function(...)
                local var755 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/SlapBattlesKey.txt\", true)");
                local Loaded_Func_71 = var755();
                local var756 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/SlapBattlesKey.txt", true);
            end) -- true, var756
            local var757 = tostring(var756);
            local Text_65 = TextBox_33.Text;
            local _390751814QQ_65 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_151;
        Connection_151 = TextBox_33.FocusLost:Connect(function(EnterPressed_65) -- args: EnterPressed_66, InputThatCausedFocusLoss_33;
            if EnterPressed_65 then -- ran, expr id 44, has no else.
                local Success_130, Error_Message_130 = pcall(function(...)
                    local var758 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/SlapBattlesKey.txt\", true)");
                    local Loaded_Func_72 = var758();
                    local var759 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/SlapBattlesKey.txt", true);
                end) -- true, var756
                local var760 = tostring(var756);
                local Text_66 = TextBox_33.Text;
                local _390751814QQ_66 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_125 = task.spawn(function()
    local Parent_134 = LocalScript_125.Parent;
    local New_176 = Font.new;
    local Bold_115 = Enum_FontWeight.Bold;
    local _call429 = New_176("rbxasset://fonts/families/FredokaOne.json", Bold_115);
    TextLabel_54.FontFace = _call429;
    TextLabel_54.TextSize = 16;
    local Color3_Value_491 = Color3_New(1, 1, 1);
    TextLabel_54.TextColor3 = Color3_Value_491;
    local Left_92 = Enum_TextXAlignment.Left;
    TextLabel_54.TextXAlignment = Left_92;
    TextLabel_54.RichText = true;
    local Y_116 = Enum_AutomaticSize.Y;
    TextLabel_54.AutomaticSize = Y_116;
    TextLabel_54.TextWrapped = true;

end);
local Spawned_126 = task.spawn(function()
    local Players_43 = game:GetService("Players");
    local StarterGui_40 = game:GetService("StarterGui");
    local LocalPlayer_43 = Players.LocalPlayer;
    local Parent_135 = LocalScript_126.Parent;
    local Connection_49;
    Connection_49 = ImageButton_44.MouseButton1Click:Connect(function()
        local ScreenGui_35 = Instance.new("ScreenGui");
        ScreenGui_35.ResetOnSpawn = false;
        local PlayerGui_35 = LocalPlayer:WaitForChild("PlayerGui");
        ScreenGui_35.Parent = PlayerGui_35;
        local Frame_45 = Instance.new("Frame");
        local UDim2_Value_570 = UDim2_New(0, 340, 0, 190);
        Frame_45.Size = UDim2_Value_570;
        local UDim2_Value_571 = UDim2_New(0.5, -170, 0.5, -95);
        Frame_45.Position = UDim2_Value_571;
        local Color3_Value_757 = Color3_New(1, 1, 1);
        Frame_45.BackgroundColor3 = Color3_Value_757;
        Frame_45.BorderSizePixel = 0;
        Frame_45.Parent = ScreenGui_35;
        local UICorner_149 = Instance.new("UICorner");
        local UDim_Value_157 = UDim_New(0, 14);
        UICorner_149.CornerRadius = UDim_Value_157;
        UICorner_149.Parent = Frame_45;
        local TextLabel_88 = Instance.new("TextLabel");
        local UDim2_Value_572 = UDim2_New(1, 0, 0, 50);
        TextLabel_88.Size = UDim2_Value_572;
        TextLabel_88.BackgroundTransparency = 1;
        TextLabel_88.Text = "Roblox黑科技脚本中心密钥系统";
        local Color3_Value_758 = Color3_New(0, 0, 0);
        TextLabel_88.TextColor3 = Color3_Value_758;
        TextLabel_88.TextSize = 20;
        local SourceSansBold_100 = Enum_Font.SourceSansBold;
        TextLabel_88.Font = SourceSansBold_100;
        TextLabel_88.TextWrapped = true;
        TextLabel_88.Parent = Frame_45;
        local TextBox_34 = Instance.new("TextBox");
        local UDim2_Value_573 = UDim2_New(0.9, 0, 0, 42);
        TextBox_34.Size = UDim2_Value_573;
        local UDim2_Value_574 = UDim2_New(0.05, 0, 0.32, 0);
        TextBox_34.Position = UDim2_Value_574;
        local Color3_Value_759 = Color3_FromRGB(240, 240, 240);
        TextBox_34.BackgroundColor3 = Color3_Value_759;
        local Color3_Value_760 = Color3_New(0, 0, 0);
        TextBox_34.TextColor3 = Color3_Value_760;
        TextBox_34.PlaceholderText = "请输入恁的密钥...";
        local Color3_Value_761 = Color3_FromRGB(140, 140, 140);
        TextBox_34.PlaceholderColor3 = Color3_Value_761;
        TextBox_34.Text = "";
        TextBox_34.TextSize = 18;
        local SourceSans_34 = Enum_Font.SourceSans;
        TextBox_34.Font = SourceSans_34;
        TextBox_34.ClearTextOnFocus = false;
        TextBox_34.Parent = Frame_45;
        local UICorner_150 = Instance.new("UICorner");
        local UDim_Value_158 = UDim_New(0, 10);
        UICorner_150.CornerRadius = UDim_Value_158;
        UICorner_150.Parent = TextBox_34;
        local TextButton_75 = Instance.new("TextButton");
        local UDim2_Value_575 = UDim2_New(0.9, 0, 0, 42);
        TextButton_75.Size = UDim2_Value_575;
        local UDim2_Value_576 = UDim2_New(0.05, 0, 0.58, 0);
        TextButton_75.Position = UDim2_Value_576;
        local Color3_Value_762 = Color3_FromRGB(235, 235, 235);
        TextButton_75.BackgroundColor3 = Color3_Value_762;
        local Color3_Value_763 = Color3_New(0, 0, 0);
        TextButton_75.TextColor3 = Color3_Value_763;
        TextButton_75.Text = "俺要起飞";
        TextButton_75.TextSize = 18;
        local SourceSansBold_101 = Enum_Font.SourceSansBold;
        TextButton_75.Font = SourceSansBold_101;
        TextButton_75.Parent = Frame_45;
        local UICorner_151 = Instance.new("UICorner");
        local UDim_Value_159 = UDim_New(0, 10);
        UICorner_151.CornerRadius = UDim_Value_159;
        UICorner_151.Parent = TextButton_75;
        local TextButton_76 = Instance.new("TextButton");
        local UDim2_Value_577 = UDim2_New(0, 34, 0, 34);
        TextButton_76.Size = UDim2_Value_577;
        local UDim2_Value_578 = UDim2_New(1, -40, 0, 6);
        TextButton_76.Position = UDim2_Value_578;
        TextButton_76.BackgroundTransparency = 1;
        TextButton_76.Text = "×";
        local Color3_Value_764 = Color3_New(0.2, 0.2, 0.2);
        TextButton_76.TextColor3 = Color3_Value_764;
        TextButton_76.TextSize = 26;
        local SourceSansBold_102 = Enum_Font.SourceSansBold;
        TextButton_76.Font = SourceSansBold_102;
        TextButton_76.Parent = Frame_45;
        local Connection_152;
        Connection_152 = TextButton_76.MouseButton1Click:Connect(function()
            local Destroy_34 = ScreenGui_35:Destroy();

        end);
        local Connection_153;
        Connection_153 = TextButton_75.MouseButton1Click:Connect(function()
            local Success_131, Error_Message_131 = pcall(function(...)
                local var761 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/EscapeTsunamiForBrainrotsKey.txt\", true)");
                local Loaded_Func_73 = var761();
                local var762 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/EscapeTsunamiForBrainrotsKey.txt", true);
            end) -- true, var762
            local var763 = tostring(var762);
            local Text_67 = TextBox_34.Text;
            local _390751814QQ_67 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");

        end);
        local Connection_154;
        Connection_154 = TextBox_34.FocusLost:Connect(function(EnterPressed_67) -- args: EnterPressed_68, InputThatCausedFocusLoss_34;
            if EnterPressed_67 then -- ran, expr id 45, has no else.
                local Success_132, Error_Message_132 = pcall(function(...)
                    local var764 = loadstring("return game:HttpGet(\"https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/EscapeTsunamiForBrainrotsKey.txt\", true)");
                    local Loaded_Func_74 = var764();
                    local var765 = game:HttpGet("https://raw.githubusercontent.com/RBMHUB/Key/refs/heads/main/EscapeTsunamiForBrainrotsKey.txt", true);
                end) -- true, var762
                local var766 = tostring(var762);
                local Text_68 = TextBox_34.Text;
                local _390751814QQ_68 = LocalPlayer:Kick("恁的密钥不对，所以踢恁下线，请核实密钥或联系管理员获取，390751814微信QQ同号");
            end

        end);

    end);

end);
local Spawned_127 = task.spawn(function()
    local Parent_136 = LocalScript_127.Parent;
    local New_177 = Font.new;
    local Bold_116 = Enum_FontWeight.Bold;
    local _call426 = New_177("rbxasset://fonts/families/FredokaOne.json", Bold_116);
    TextButton_8.FontFace = _call426;
    TextButton_8.TextSize = 16;
    local Color3_Value_492 = Color3_New(1, 1, 1);
    TextButton_8.TextColor3 = Color3_Value_492;
    local Center_16 = Enum_TextXAlignment.Center;
    TextButton_8.TextXAlignment = Center_16;
    TextButton_8.RichText = true;
    local Y_117 = Enum_AutomaticSize.Y;
    TextButton_8.AutomaticSize = Y_117;
    TextButton_8.TextWrapped = true;

end);
local Spawned_128 = task.spawn(function()
    local Parent_137 = LocalScript_128.Parent;
    local UserInputService_2 = game:GetService("UserInputService");
    local Connection_50;
    Connection_50 = ImageButton_45.InputBegan:Connect(function(Input_5) -- args: Input_6;
        local UserInputType_5 = Input_5.UserInputType;
        local MouseButton1_2 = Enum_UserInputType.MouseButton1;
        local var565 = (UserInputType_5 == MouseButton1_2);
        -- false, eq id 11
        local UserInputType_6 = Input_5.UserInputType;
        local Touch_3 = Enum_UserInputType.Touch;
        local var567 = (UserInputType_6 == Touch_3);
        -- false, eq id 12
        local var568 = (var565 or var567); -- false
        -- local _ = var568 and (unknown_value)

    end);
    local Connection_51;
    Connection_51 = ImageButton_45.InputChanged:Connect(function(Input_7) -- args: Input_8;

    end);
    local Connection_52;
    Connection_52 = ImageButton_45.InputEnded:Connect(function(Input_9) -- args: Input_10;
        local UserInputType_7 = Input_9.UserInputType;
        local MouseButton1_3 = Enum_UserInputType.MouseButton1;
        local var570 = (UserInputType_7 == MouseButton1_3);
        -- false, eq id 13
        local UserInputType_8 = Input_9.UserInputType;
        local Touch_4 = Enum_UserInputType.Touch;
        local var572 = (UserInputType_8 == Touch_4);
        -- false, eq id 14
        local var573 = (var570 or var572); -- false
        if var573 then -- didnt run, expr id 11, has no else.
        end

    end);

end);
local Spawned_129 = task.spawn(function()
    local Parent_138 = LocalScript_129.Parent;
    local Frame_11 = ScreenGui:WaitForChild("Frame");
    local WaitForChild = Frame_11.WaitForChild;
    local _ = Frame_11:WaitForChild("最小化窗口");
    local __2 = ScreenGui:WaitForChild("展开窗口");
    local MouseButton1Click = _.MouseButton1Click;
    local Connect_7 = MouseButton1Click.Connect;
    local Connected_7 = MouseButton1Click:Connect(function()
        Frame_11.Visible = false;
        __2.Visible = true;

    end);
    local MouseButton1Click_2 = __2.MouseButton1Click;
    local Connect_8 = MouseButton1Click_2.Connect;
    local Connected_8 = MouseButton1Click_2:Connect(function()
        Frame_11.Visible = true;
        __2.Visible = false;

    end);

end);