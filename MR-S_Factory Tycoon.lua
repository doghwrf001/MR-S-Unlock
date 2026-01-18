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

-- 此脚本中的无限金钱会导致被反作弊检查到,请勿使用,或者自行研究反作弊绕过!请勿直接使用一键按钮!!!!
-- The infinite money feature in this script may trigger anti-cheat detection. Do not use it, or research anti-cheat bypass methods yourself! Do NOT directly use the one-click button!!!!

-- 脚本介绍: 简洁、干净、可拖动的图形用户界面，可解锁 'Factory Tycoon' 所有游戏通行证。 可以单独启用每个游戏通行证，也可以一次性启用所有通行证。  游戏通行证：双倍宝石、双倍金币、自动收集、VIP、闪亮矿石
-- Script Introduction: A clean, minimalist, and draggable GUI that unlocks all game passes for 'Factory Tycoon'. You can enable each game pass individually or activate all passes at once. Game passes include: Double Gems, Double Coins, Auto Collect, VIP, Shiny Ore.


local UserInputService = game:GetService('UserInputService')
local TweenService = game:GetService('TweenService')
local CoreGui = game:GetService('CoreGui')
local LocalPlayer = game:GetService('Players').LocalPlayer

local existingGui = CoreGui:FindFirstChild('FactoryTycoonGUI')
if existingGui then
    existingGui:Destroy()
end

local Has2xGems = LocalPlayer:FindFirstChild('Has2xGems')
local Has2xMoney = LocalPlayer:FindFirstChild('Has2xMoney')
local HasAutoCollect = LocalPlayer:FindFirstChild('HasAutoCollect')
local HasVIP = LocalPlayer:FindFirstChild('HasVIP')
local HasShinyOres = LocalPlayer:FindFirstChild('HasShinyOres')

local ScreenGui = Instance.new('ScreenGui', CoreGui)
ScreenGui.Name = 'FactoryTycoonGUI'

local MainFrame = Instance.new('Frame', ScreenGui)
MainFrame.Size = UDim2.new(0, 360, 0, 340)
MainFrame.Position = UDim2.new(0.5, -180, 0.5, -170)
MainFrame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
MainFrame.BorderSizePixel = 0

local MainFrameCorner = Instance.new('UICorner', MainFrame)
MainFrameCorner.CornerRadius = UDim.new(0, 12)

MainFrame.BackgroundTransparency = 1

local OpenTween = TweenService:Create(MainFrame, TweenInfo.new(0.3), {BackgroundTransparency = 0})
OpenTween:Play()

local TitleLabel = Instance.new('TextLabel', MainFrame)
TitleLabel.Text = 'Factory Tycoon Trainer v1.1'
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextSize = 20
TitleLabel.TextColor3 = Color3.new(1, 1, 1)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Size = UDim2.new(1, -90, 0, 36)
TitleLabel.Position = UDim2.new(0, 12, 0, 6)
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left

local AuthorButton = Instance.new('TextButton')
AuthorButton.Text = 'Diego'
AuthorButton.Font = Enum.Font.Gotham
AuthorButton.TextSize = 12
AuthorButton.TextColor3 = Color3.fromRGB(170, 170, 170)
AuthorButton.BackgroundTransparency = 1
AuthorButton.Size = UDim2.new(0, 60, 0, 16)
AuthorButton.Position = UDim2.new(0, 12, 0, 38)
AuthorButton.TextXAlignment = Enum.TextXAlignment.Left
AuthorButton.Parent = MainFrame
AuthorButton.ZIndex = 5

AuthorButton.MouseButton1Click:Connect(function()
    setclipboard('rscripts.net/@DiegoRRQ')
end)

local TooltipLabel = Instance.new('TextLabel')
TooltipLabel.Text = 'Click to copy:\nrscripts.net/@DiegoRRQ'
TooltipLabel.Font = Enum.Font.Gotham
TooltipLabel.TextSize = 13
TooltipLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TooltipLabel.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
TooltipLabel.Size = UDim2.new(0, 240, 0, 44)
TooltipLabel.Position = UDim2.new(0, 12, 0, 50)
TooltipLabel.Visible = false
TooltipLabel.ZIndex = 6
TooltipLabel.Parent = MainFrame

local TooltipCorner = Instance.new('UICorner', TooltipLabel)
TooltipCorner.CornerRadius = UDim.new(0, 8)

AuthorButton.MouseEnter:Connect(function()
    TooltipLabel.Visible = true
end)

AuthorButton.MouseLeave:Connect(function()
    TooltipLabel.Visible = false
end)

local CloseButton = Instance.new('TextButton', MainFrame)
CloseButton.Text = 'X'
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 18
CloseButton.TextColor3 = Color3.fromRGB(255, 120, 120)
CloseButton.BackgroundTransparency = 1
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -35, 0, 5)

local MinimizeButton = Instance.new('TextButton', MainFrame)
MinimizeButton.Text = '\u{2013}'
MinimizeButton.Font = Enum.Font.GothamBold
MinimizeButton.TextSize = 22
MinimizeButton.TextColor3 = Color3.fromRGB(200, 200, 200)
MinimizeButton.BackgroundTransparency = 1
MinimizeButton.Size = UDim2.new(0, 30, 0, 30)
MinimizeButton.Position = UDim2.new(1, -65, 0, 5)

local EnableAllFrame = Instance.new('Frame', MainFrame)
EnableAllFrame.BackgroundTransparency = 1
EnableAllFrame.Size = UDim2.new(1, -20, 0, 36)
EnableAllFrame.Position = UDim2.new(0, 10, 0, 60)

local EnableAllButton = Instance.new('TextButton', EnableAllFrame)
EnableAllButton.Text = 'Enable All'
EnableAllButton.Font = Enum.Font.GothamBold
EnableAllButton.TextSize = 14
EnableAllButton.TextColor3 = Color3.new(1, 1, 1)
EnableAllButton.Size = UDim2.new(1, 0, 1, 0)
EnableAllButton.BackgroundColor3 = Color3.fromRGB(90, 90, 90)

local EnableAllCorner = Instance.new('UICorner', EnableAllButton)
EnableAllCorner.CornerRadius = UDim.new(0, 8)

local ScrollingFrame = Instance.new('ScrollingFrame', MainFrame)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Position = UDim2.new(0, 10, 0, 110)
ScrollingFrame.Size = UDim2.new(1, -20, 1, -140)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
ScrollingFrame.ScrollBarImageTransparency = 1
ScrollingFrame.BorderSizePixel = 0

local ListLayout = Instance.new('UIListLayout', ScrollingFrame)
ListLayout.Padding = UDim.new(0, 8)

local GemsFrame = Instance.new('Frame', ScrollingFrame)
GemsFrame.Size = UDim2.new(1, 0, 0, 40)
GemsFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

local GemsFrameCorner = Instance.new('UICorner', GemsFrame)
GemsFrameCorner.CornerRadius = UDim.new(0, 8)

local GemsLabel = Instance.new('TextLabel', GemsFrame)
GemsLabel.Text = '2x Gems'
GemsLabel.Font = Enum.Font.Gotham
GemsLabel.TextSize = 15
GemsLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
GemsLabel.BackgroundTransparency = 1
GemsLabel.Size = UDim2.new(0.6, 0, 1, 0)
GemsLabel.Position = UDim2.new(0, 10, 0, 0)
GemsLabel.TextXAlignment = Enum.TextXAlignment.Left

local GemsButton = Instance.new('TextButton', GemsFrame)
GemsButton.Font = Enum.Font.GothamBold
GemsButton.TextSize = 14
GemsButton.Size = UDim2.new(0.3, -10, 0.7, 0)
GemsButton.Position = UDim2.new(0.7, 0, 0.15, 0)

local GemsButtonCorner = Instance.new('UICorner', GemsButton)
GemsButtonCorner.CornerRadius = UDim.new(0, 8)

local GemsEnabled = false

local function UpdateGemsButton()
    if GemsEnabled then
        GemsButton.Text = 'ENABLED'
        GemsButton.BackgroundColor3 = Color3.fromRGB(80, 200, 120)
        GemsButton.TextColor3 = Color3.fromRGB(20, 60, 30)
    else
        GemsButton.Text = 'DISABLED'
        GemsButton.BackgroundColor3 = Color3.fromRGB(200, 80, 80)
        GemsButton.TextColor3 = Color3.fromRGB(60, 20, 20)
    end
end

GemsButton.MouseButton1Click:Connect(function()
    GemsEnabled = not GemsEnabled
    if Has2xGems then
        Has2xGems.Value = GemsEnabled
    end
    UpdateGemsButton()
end)

if Has2xGems then
    GemsEnabled = Has2xGems.Value
end
UpdateGemsButton()

local MoneyFrame = Instance.new('Frame', ScrollingFrame)
MoneyFrame.Size = UDim2.new(1, 0, 0, 40)
MoneyFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

local MoneyFrameCorner = Instance.new('UICorner', MoneyFrame)
MoneyFrameCorner.CornerRadius = UDim.new(0, 8)

local MoneyLabel = Instance.new('TextLabel', MoneyFrame)
MoneyLabel.Text = '2x Money'
MoneyLabel.Font = Enum.Font.Gotham
MoneyLabel.TextSize = 15
MoneyLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
MoneyLabel.BackgroundTransparency = 1
MoneyLabel.Size = UDim2.new(0.6, 0, 1, 0)
MoneyLabel.Position = UDim2.new(0, 10, 0, 0)
MoneyLabel.TextXAlignment = Enum.TextXAlignment.Left

local MoneyButton = Instance.new('TextButton', MoneyFrame)
MoneyButton.Font = Enum.Font.GothamBold
MoneyButton.TextSize = 14
MoneyButton.Size = UDim2.new(0.3, -10, 0.7, 0)
MoneyButton.Position = UDim2.new(0.7, 0, 0.15, 0)

local MoneyButtonCorner = Instance.new('UICorner', MoneyButton)
MoneyButtonCorner.CornerRadius = UDim.new(0, 8)

local MoneyEnabled = false

local function UpdateMoneyButton()
    if MoneyEnabled then
        MoneyButton.Text = 'ENABLED'
        MoneyButton.BackgroundColor3 = Color3.fromRGB(80, 200, 120)
        MoneyButton.TextColor3 = Color3.fromRGB(20, 60, 30)
    else
        MoneyButton.Text = 'DISABLED'
        MoneyButton.BackgroundColor3 = Color3.fromRGB(200, 80, 80)
        MoneyButton.TextColor3 = Color3.fromRGB(60, 20, 20)
    end
end

MoneyButton.MouseButton1Click:Connect(function()
    MoneyEnabled = not MoneyEnabled
    if Has2xMoney then
        Has2xMoney.Value = MoneyEnabled
    end
    UpdateMoneyButton()
end)

if Has2xMoney then
    MoneyEnabled = Has2xMoney.Value
end
UpdateMoneyButton()

local AutoCollectFrame = Instance.new('Frame', ScrollingFrame)
AutoCollectFrame.Size = UDim2.new(1, 0, 0, 40)
AutoCollectFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

local AutoCollectFrameCorner = Instance.new('UICorner', AutoCollectFrame)
AutoCollectFrameCorner.CornerRadius = UDim.new(0, 8)

local AutoCollectLabel = Instance.new('TextLabel', AutoCollectFrame)
AutoCollectLabel.Text = 'Auto Collect'
AutoCollectLabel.Font = Enum.Font.Gotham
AutoCollectLabel.TextSize = 15
AutoCollectLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
AutoCollectLabel.BackgroundTransparency = 1
AutoCollectLabel.Size = UDim2.new(0.6, 0, 1, 0)
AutoCollectLabel.Position = UDim2.new(0, 10, 0, 0)
AutoCollectLabel.TextXAlignment = Enum.TextXAlignment.Left

local AutoCollectButton = Instance.new('TextButton', AutoCollectFrame)
AutoCollectButton.Font = Enum.Font.GothamBold
AutoCollectButton.TextSize = 14
AutoCollectButton.Size = UDim2.new(0.3, -10, 0.7, 0)
AutoCollectButton.Position = UDim2.new(0.7, 0, 0.15, 0)

local AutoCollectButtonCorner = Instance.new('UICorner', AutoCollectButton)
AutoCollectButtonCorner.CornerRadius = UDim.new(0, 8)

local AutoCollectEnabled = false

local function UpdateAutoCollectButton()
    if AutoCollectEnabled then
        AutoCollectButton.Text = 'ENABLED'
        AutoCollectButton.BackgroundColor3 = Color3.fromRGB(80, 200, 120)
        AutoCollectButton.TextColor3 = Color3.fromRGB(20, 60, 30)
    else
        AutoCollectButton.Text = 'DISABLED'
        AutoCollectButton.BackgroundColor3 = Color3.fromRGB(200, 80, 80)
        AutoCollectButton.TextColor3 = Color3.fromRGB(60, 20, 20)
    end
end

AutoCollectButton.MouseButton1Click:Connect(function()
    AutoCollectEnabled = not AutoCollectEnabled
    if HasAutoCollect then
        HasAutoCollect.Value = AutoCollectEnabled
    end
    UpdateAutoCollectButton()
end)

if HasAutoCollect then
    AutoCollectEnabled = HasAutoCollect.Value
end
UpdateAutoCollectButton()

local VIPFrame = Instance.new('Frame', ScrollingFrame)
VIPFrame.Size = UDim2.new(1, 0, 0, 40)
VIPFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

local VIPFrameCorner = Instance.new('UICorner', VIPFrame)
VIPFrameCorner.CornerRadius = UDim.new(0, 8)

local VIPLabel = Instance.new('TextLabel', VIPFrame)
VIPLabel.Text = 'VIP'
VIPLabel.Font = Enum.Font.Gotham
VIPLabel.TextSize = 15
VIPLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
VIPLabel.BackgroundTransparency = 1
VIPLabel.Size = UDim2.new(0.6, 0, 1, 0)
VIPLabel.Position = UDim2.new(0, 10, 0, 0)
VIPLabel.TextXAlignment = Enum.TextXAlignment.Left

local VIPButton = Instance.new('TextButton', VIPFrame)
VIPButton.Font = Enum.Font.GothamBold
VIPButton.TextSize = 14
VIPButton.Size = UDim2.new(0.3, -10, 0.7, 0)
VIPButton.Position = UDim2.new(0.7, 0, 0.15, 0)

local VIPButtonCorner = Instance.new('UICorner', VIPButton)
VIPButtonCorner.CornerRadius = UDim.new(0, 8)

local VIPEnabled = false

local function UpdateVIPButton()
    if VIPEnabled then
        VIPButton.Text = 'ENABLED'
        VIPButton.BackgroundColor3 = Color3.fromRGB(80, 200, 120)
        VIPButton.TextColor3 = Color3.fromRGB(20, 60, 30)
    else
        VIPButton.Text = 'DISABLED'
        VIPButton.BackgroundColor3 = Color3.fromRGB(200, 80, 80)
        VIPButton.TextColor3 = Color3.fromRGB(60, 20, 20)
    end
end

VIPButton.MouseButton1Click:Connect(function()
    VIPEnabled = not VIPEnabled
    if HasVIP then
        HasVIP.Value = VIPEnabled
    end
    UpdateVIPButton()
end)

if HasVIP then
    VIPEnabled = HasVIP.Value
end
UpdateVIPButton()

local ShinyOresFrame = Instance.new('Frame', ScrollingFrame)
ShinyOresFrame.Size = UDim2.new(1, 0, 0, 40)
ShinyOresFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

local ShinyOresFrameCorner = Instance.new('UICorner', ShinyOresFrame)
ShinyOresFrameCorner.CornerRadius = UDim.new(0, 8)

local ShinyOresLabel = Instance.new('TextLabel', ShinyOresFrame)
ShinyOresLabel.Text = 'Shiny Ores'
ShinyOresLabel.Font = Enum.Font.Gotham
ShinyOresLabel.TextSize = 15
ShinyOresLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
ShinyOresLabel.BackgroundTransparency = 1
ShinyOresLabel.Size = UDim2.new(0.6, 0, 1, 0)
ShinyOresLabel.Position = UDim2.new(0, 10, 0, 0)
ShinyOresLabel.TextXAlignment = Enum.TextXAlignment.Left

local ShinyOresButton = Instance.new('TextButton', ShinyOresFrame)
ShinyOresButton.Font = Enum.Font.GothamBold
ShinyOresButton.TextSize = 14
ShinyOresButton.Size = UDim2.new(0.3, -10, 0.7, 0)
ShinyOresButton.Position = UDim2.new(0.7, 0, 0.15, 0)

local ShinyOresButtonCorner = Instance.new('UICorner', ShinyOresButton)
ShinyOresButtonCorner.CornerRadius = UDim.new(0, 8)

local ShinyOresEnabled = false

local function UpdateShinyOresButton()
    if ShinyOresEnabled then
        ShinyOresButton.Text = 'ENABLED'
        ShinyOresButton.BackgroundColor3 = Color3.fromRGB(80, 200, 120)
        ShinyOresButton.TextColor3 = Color3.fromRGB(20, 60, 30)
    else
        ShinyOresButton.Text = 'DISABLED'
        ShinyOresButton.BackgroundColor3 = Color3.fromRGB(200, 80, 80)
        ShinyOresButton.TextColor3 = Color3.fromRGB(60, 20, 20)
    end
end

ShinyOresButton.MouseButton1Click:Connect(function()
    ShinyOresEnabled = not ShinyOresEnabled
    if HasShinyOres then
        HasShinyOres.Value = ShinyOresEnabled
    end
    UpdateShinyOresButton()
end)

if HasShinyOres then
    ShinyOresEnabled = HasShinyOres.Value
end
UpdateShinyOresButton()

EnableAllButton.MouseButton1Click:Connect(function()
    GemsEnabled = true
    MoneyEnabled = true
    AutoCollectEnabled = true
    VIPEnabled = true
    ShinyOresEnabled = true
    
    if Has2xGems then
        Has2xGems.Value = true
    end
    if Has2xMoney then
        Has2xMoney.Value = true
    end
    if HasAutoCollect then
        HasAutoCollect.Value = true
    end
    if HasVIP then
        HasVIP.Value = true
    end
    if HasShinyOres then
        HasShinyOres.Value = true
    end
    
    UpdateGemsButton()
    UpdateMoneyButton()
    UpdateAutoCollectButton()
    UpdateVIPButton()
    UpdateShinyOresButton()
end)

local IsMinimized = false

MinimizeButton.MouseButton1Click:Connect(function()
    if IsMinimized then
        local ExpandTween = TweenService:Create(MainFrame, TweenInfo.new(0.25), {
            Size = UDim2.new(0, 360, 0, 340),
        })
        ExpandTween:Play()
        ExpandTween.Completed:Connect(function()
            ScrollingFrame.Visible = true
            EnableAllFrame.Visible = true
        end)
        MinimizeButton.Text = '\u{2013}'
        IsMinimized = false
    else
        local MinimizeTween = TweenService:Create(MainFrame, TweenInfo.new(0.25), {
            Size = UDim2.new(0, 360, 0, 50),
        })
        MinimizeTween:Play()
        ScrollingFrame.Visible = false
        EnableAllFrame.Visible = false
        MinimizeButton.Text = '+'
        IsMinimized = true
    end
end)

CloseButton.MouseButton1Click:Connect(function()
    local CloseTween = TweenService:Create(MainFrame, TweenInfo.new(0.2), {
        BackgroundTransparency = 1,
    })
    CloseTween:Play()
    CloseTween.Completed:Connect(function()
        ScreenGui:Destroy()
    end)
end)

local IsDragging = false
local DragStart = nil
local StartPosition = nil

MainFrame.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
        IsDragging = true
        DragStart = Input.Position
        StartPosition = MainFrame.Position
        
        Input.Changed:Connect(function()
            if Input.UserInputState == Enum.UserInputState.End then
                IsDragging = false
            end
        end)
    end
end)

UserInputService.InputChanged:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseMovement then
        if IsDragging then
            local Delta = Input.Position - DragStart
            MainFrame.Position = UDim2.new(
                StartPosition.X.Scale,
                StartPosition.X.Offset + Delta.X,
                StartPosition.Y.Scale,
                StartPosition.Y.Offset + Delta.Y
            )
        end
    end
end)

UserInputService.InputEnded:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
        IsDragging = false
    end
end)
