--[[

  ███╗   ███╗██████╗              ███████╗    ████████╗███████╗ █████╗ ███╗   ███╗
  ████╗ ████║██╔══██╗             ██╔════╝    ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║
  ██╔████╔██║██████╔╝  ███████    ███████╗       ██║   █████╗  ███████║██╔████╔██║
  ██║╚██╔╝██║██╔══██╗             ╚════██║       ██║   ██╔══╝  ██╔══██║██║╚██╔╝██║
  ██║ ╚═╝ ██║██║  ██║             ███████║       ██║   ███████╗██║  ██║██║ ╚═╝ ██║
  ╚═╝     ╚═╝╚═╝  ╚═╝             ╚══════╝       ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝

                    by MR-S Team | www.mr-s.us.ci
]]--

-- Escape Tsunami For Brainrots! → LuckyESP
-- 🚫Any money scamming is strictly prohibited!
-- ⚠️All open-source projects of the MR-S team use the AGPL3.0 open-source license. Please comply with the license terms!


local folder = workspace:WaitForChild("ActiveLuckyBlocks")

local function getMainPart(obj)
	if obj:IsA("BasePart") then
		return obj
	end
	return obj:FindFirstChildWhichIsA("BasePart")
end

local function getLastWord(name)
	return name:match("_(%w+)$") or "unknown"
end

local function addESP(obj)
	if obj:FindFirstChild("LuckyESP") then return end

	local part = getMainPart(obj)
	if not part then return end

	local rarity = getLastWord(obj.Name)

	local bb = Instance.new("BillboardGui")
	bb.Name = "LuckyESP"
	bb.Size = UDim2.new(0, 70, 0, 18)
	bb.StudsOffset = Vector3.new(0, 3, 0)
	bb.AlwaysOnTop = true
	bb.MaxDistance = math.huge
	bb.Parent = part

	local txt = Instance.new("TextLabel")
	txt.Size = UDim2.new(1,0,1,0)
	txt.BackgroundTransparency = 1
	txt.TextScaled = true
	txt.Font = Enum.Font.GothamBold
	txt.TextStrokeTransparency = 0
	txt.TextColor3 = Color3.new(1,1,1)
	txt.Text = rarity
	txt.Parent = bb
end

local function removeESP(obj)
	local part = getMainPart(obj)
	if part and part:FindFirstChild("LuckyESP") then
		part.LuckyESP:Destroy()
	end
end

for _,v in ipairs(folder:GetChildren()) do
	addESP(v)
end

folder.ChildAdded:Connect(function(v)
	task.wait(0.2)
	addESP(v)
end)

folder.ChildRemoved:Connect(function(v)
	removeESP(v)
end)