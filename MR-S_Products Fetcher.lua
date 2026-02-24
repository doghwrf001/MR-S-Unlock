--[[

  ███╗   ███╗██████╗              ███████╗    ████████╗███████╗ █████╗ ███╗   ███╗
  ████╗ ████║██╔══██╗             ██╔════╝    ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║
  ██╔████╔██║██████╔╝  ███████    ███████╗       ██║   █████╗  ███████║██╔████╔██║
  ██║╚██╔╝██║██╔══██╗             ╚════██║       ██║   ██╔══╝  ██╔══██║██║╚██╔╝██║
  ██║ ╚═╝ ██║██║  ██║             ███████║       ██║   ███████╗██║  ██║██║ ╚═╝ ██║
  ╚═╝     ╚═╝╚═╝  ╚═╝             ╚══════╝       ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝

                    by MR-S Team | www.mr-s.us.ci
]]--

-- Open-source By：MR
-- Due to the open-source nature, you'll have to handle any issues that arise from now on on your own!
-- 🚫Any money scamming is strictly prohibited!
-- ⚠️All open-source projects of the MR-S team use the AGPL3.0 open-source license. Please comply with the license terms!
-- Finally: Please credit the source, thanks!


local cloneref = cloneref or function(v) return v end
local MarketplaceService = cloneref(game:GetService("MarketplaceService"))
local Players = cloneref(game:GetService("Players"))
local CoreGui = cloneref(game:GetService("CoreGui"))
local player = Players.LocalPlayer

local screenGui = Instance.new("ScreenGui", CoreGui)
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true

local frame = Instance.new("Frame", screenGui)
frame.Size = UDim2.new(0, 400, 0, 350)
frame.Position = UDim2.new(0.5, -200, 0.5, -175)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BackgroundTransparency = 0.15
frame.Active = true
frame.Draggable = true

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
title.Text = "Products Fetcher"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.GothamBold
title.TextScaled = true

local scroll = Instance.new("ScrollingFrame", frame)
scroll.Size = UDim2.new(1, 0, 1, -30)
scroll.Position = UDim2.new(0, 0, 0, 30)
scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
scroll.ScrollBarThickness = 6
scroll.BackgroundTransparency = 1

local uiList = Instance.new("UIListLayout", scroll)
uiList.Padding = UDim.new(0, 6)
uiList.FillDirection = Enum.FillDirection.Vertical
uiList.SortOrder = Enum.SortOrder.LayoutOrder
uiList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
	scroll.CanvasSize = UDim2.new(0, 0, 0, uiList.AbsoluteContentSize.Y + 10)
end)

local function addProduct(info)
	local button = Instance.new("TextButton", scroll)
	button.Size = UDim2.new(1, -10, 0, 60)
	button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	button.Text = ""
	button.AutoButtonColor = true

	local icon = Instance.new("ImageLabel", button)
	icon.Size = UDim2.new(0, 60, 1, 0)
	icon.Image = "rbxassetid://" .. (info.IconImageAssetId or 0)
	icon.BackgroundTransparency = 1

	local nameLabel = Instance.new("TextLabel", button)
	nameLabel.Size = UDim2.new(1, -70, 0.5, 0)
	nameLabel.Position = UDim2.new(0, 70, 0, 0)
	nameLabel.BackgroundTransparency = 1
	nameLabel.Text = info.Name
	nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	nameLabel.TextXAlignment = Enum.TextXAlignment.Left
	nameLabel.Font = Enum.Font.GothamBold
	nameLabel.TextScaled = true

	local priceLabel = Instance.new("TextLabel", button)
	priceLabel.Size = UDim2.new(1, -70, 0.5, 0)
	priceLabel.Position = UDim2.new(0, 70, 0.5, 0)
	priceLabel.BackgroundTransparency = 1
	priceLabel.Text = info.PriceInRobux and (tostring(info.PriceInRobux) .. " R$") or "Not On Sale"
	priceLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
	priceLabel.TextXAlignment = Enum.TextXAlignment.Left
	priceLabel.Font = Enum.Font.Gotham
	priceLabel.TextScaled = true

	button.MouseButton1Click:Connect(function()
		if info.PriceInRobux then
			local success = pcall(function()
				MarketplaceService:PromptProductPurchase(player, info.ProductId)
			end)
			if not success then
				setclipboard("https://www.roblox.com/library/" .. tostring(info.ProductId))
			end
		else
			setclipboard("https://www.roblox.com/library/" .. tostring(info.ProductId))
		end
	end)
end

local function loadProducts()
	local pages
	local ok = pcall(function()
		pages = MarketplaceService:GetDeveloperProductsAsync()
	end)
	if not ok or not pages then
		local lbl = Instance.new("TextLabel", scroll)
		lbl.Size = UDim2.new(1, -10, 0, 40)
		lbl.BackgroundTransparency = 1
		lbl.Text = "Failed to fetch products."
		lbl.TextColor3 = Color3.fromRGB(255, 0, 0)
		lbl.Font = Enum.Font.GothamBold
		lbl.TextScaled = true
		return
	end

	local foundAny = false
	while true do
		local currentPage = pages:GetCurrentPage()
		if currentPage and #currentPage > 0 then
			for _, prod in ipairs(currentPage) do
				local info = MarketplaceService:GetProductInfo(prod.ProductId, Enum.InfoType.Product)
				addProduct(info)
				foundAny = true
			end
		end
		if pages.IsFinished then break end
		local success = pcall(function()
			pages:AdvanceToNextPage()
		end)
		if not success then break end
	end

	if not foundAny then
		local lbl = Instance.new("TextLabel", scroll)
		lbl.Size = UDim2.new(1, -10, 0, 40)
		lbl.BackgroundTransparency = 1
		lbl.Text = "No products found."
		lbl.TextColor3 = Color3.fromRGB(255, 255, 255)
		lbl.Font = Enum.Font.GothamBold
		lbl.TextScaled = true
	end
end

loadProducts()