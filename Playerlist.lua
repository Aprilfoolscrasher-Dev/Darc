game.StarterGui.ResetPlayerGuiOnSpawn = false

function hasGamepass(plrId, id)
	local plrData = game:HttpGet("https://inventory.roblox.com/v1/users/" .. plrId .. "/items/GamePass/" .. id)
	local hasPerm = false
	if string.match(plrData, tostring(id)) then
		hasPerm = true
	end
	return hasPerm
end
local PlayerList = Instance.new("ScreenGui")

coroutine.wrap(function()

local PlayerListMaster = Instance.new("Frame")
local SizeOffsetFrame = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local ScrollingFrameContainer = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")

--Properties:

PlayerList.Name = "PlayerList"
PlayerList.Parent = game.CoreGui
PlayerList.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
PlayerList.DisplayOrder = 1

PlayerListMaster.Name = "PlayerListMaster"
PlayerListMaster.Parent = PlayerList
PlayerListMaster.AnchorPoint = Vector2.new(1, 0)
PlayerListMaster.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerListMaster.BackgroundTransparency = 1.000
PlayerListMaster.Position = UDim2.new(1, -4, 0, 40)
PlayerListMaster.Size = UDim2.new(0, 166, 0.100000001, 0)

SizeOffsetFrame.Name = "SizeOffsetFrame"
SizeOffsetFrame.Parent = PlayerListMaster
SizeOffsetFrame.AnchorPoint = Vector2.new(0.5, 0.5)
SizeOffsetFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SizeOffsetFrame.BackgroundTransparency = 1.000
SizeOffsetFrame.Position = UDim2.new(0.5, 0, 0.881410241, 0)
SizeOffsetFrame.Size = UDim2.new(1, 0, 2.5, 0)

UIListLayout.Parent = SizeOffsetFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

ScrollingFrameContainer.Name = "ScrollingFrameContainer"
ScrollingFrameContainer.Parent = SizeOffsetFrame
ScrollingFrameContainer.BackgroundColor3 = Color3.fromRGB(31, 33, 35)
ScrollingFrameContainer.BackgroundTransparency = 0.300
ScrollingFrameContainer.BorderSizePixel = 0
ScrollingFrameContainer.LayoutOrder = 3
ScrollingFrameContainer.Position = UDim2.new(0, 0, 0.0145454546, 0)
ScrollingFrameContainer.Size = UDim2.new(1, 0, 0.883456707, 40)

UIListLayout_2.Parent = ScrollingFrameContainer
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder


local function KTJYHGG_fake_script()
	local script = Instance.new("LocalScript", ScrollingFrameContainer)

	function addBox(isPerm, plrName, plrDisplay)
		local PlayerHere = Instance.new("Frame")
		local ChildrenFrame = Instance.new("Frame")
		local NameFrame = Instance.new("Frame")
		local DisplayName = Instance.new("Frame")
		local PlayerName = Instance.new("TextLabel")
		local SizeConstraint = Instance.new("UITextSizeConstraint")
		local PermUI = Instance.new("Frame")
		local PlayerName_2 = Instance.new("TextLabel")
		local SizeConstraint_2 = Instance.new("UITextSizeConstraint")
		local PlayerName_3 = Instance.new("Frame")
		local PlayerName_4 = Instance.new("TextLabel")
		local SizeConstraint_3 = Instance.new("UITextSizeConstraint")
		local Layout = Instance.new("UIListLayout")

		PlayerHere.Name = plrName
		PlayerHere.Parent = script.Parent
		PlayerHere.BackgroundTransparency = 1.000
		PlayerHere.ClipsDescendants = true
		PlayerHere.Size = UDim2.new(1, 0, 0.158816129, 0)

		ChildrenFrame.Name = "ChildrenFrame"
		ChildrenFrame.Parent = PlayerHere
		ChildrenFrame.BackgroundTransparency = 1.000
		ChildrenFrame.Size = UDim2.new(1, 0, 0, 40)

		NameFrame.Name = "NameFrame"
		NameFrame.Parent = ChildrenFrame
		NameFrame.BackgroundTransparency = 1.000
		NameFrame.Size = UDim2.new(0, 150, 0, 40)

		PlayerName.Name = "PlayerName"
		PlayerName.Parent = NameFrame
		PlayerName.BackgroundTransparency = 1.000
		PlayerName.Position = UDim2.new(0.439606011, 0, 0.704999983, 0)
		PlayerName.Size = UDim2.new(1, 0, 0.439999998, 0)
		PlayerName.Font = Enum.Font.GothamSemibold
		PlayerName.Text = plrDisplay
		PlayerName.TextColor3 = Color3.fromRGB(255, 255, 255)
		PlayerName.TextScaled = true
		PlayerName.TextSize = 14.000
		PlayerName.TextWrapped = true
		PlayerName.TextXAlignment = Enum.TextXAlignment.Left

		SizeConstraint.Name = "SizeConstraint"
		SizeConstraint.Parent = PlayerName
		SizeConstraint.MaxTextSize = 14
		SizeConstraint.MinTextSize = 9

		PermUI.Name = "PermUI"
		PermUI.Parent = NameFrame
		PermUI.BackgroundTransparency = 1.000
		PermUI.LayoutOrder = 3
		PermUI.Position = UDim2.new(0.0799999982, 0, 0, 0)
		PermUI.Size = UDim2.new(0.446666658, -34, 1, 0)

		PlayerName_2.Name = "PlayerName"
		PlayerName_2.Parent = PermUI
		PlayerName_2.BackgroundTransparency = 1.000
		PlayerName_2.Position = UDim2.new(0, 0, 0.280000001, 0)
		PlayerName_2.Size = UDim2.new(1, 0, 0.439999998, 0)
		PlayerName_2.Font = Enum.Font.GothamSemibold
		PlayerName_2.Text = "    "
		if isPerm then
			PlayerName_2.Text = "Perm"
		end
		PlayerName_2.TextColor3 = Color3.fromRGB(255, 255, 255)
		PlayerName_2.TextScaled = true
		PlayerName_2.TextSize = 14.000
		PlayerName_2.TextWrapped = true
		PlayerName_2.TextXAlignment = Enum.TextXAlignment.Left

		SizeConstraint_2.Name = "SizeConstraint"
		SizeConstraint_2.Parent = PlayerName_2
		SizeConstraint_2.MaxTextSize = 14
		SizeConstraint_2.MinTextSize = 9

		PlayerName_3.Name = "PlayerName"
		PlayerName_3.Parent = NameFrame
		PlayerName_3.BackgroundTransparency = 1.000
		PlayerName_3.LayoutOrder = 3
		PlayerName_3.Size = UDim2.new(1, -34, 1, 0)

		PlayerName_4.Name = "PlayerName"
		PlayerName_4.Parent = PlayerName_3
		PlayerName_4.BackgroundTransparency = 1.000
		PlayerName_4.Position = UDim2.new(0.422413796, 0, 0.280000001, 0)
		PlayerName_4.Size = UDim2.new(1, 0, 0.439999998, 0)
		PlayerName_4.Font = Enum.Font.GothamSemibold
		PlayerName_4.Text = plrName
		PlayerName_4.TextColor3 = Color3.fromRGB(255, 255, 255)
		PlayerName_4.TextScaled = true
		PlayerName_4.TextSize = 14.000
		PlayerName_4.TextWrapped = true
		PlayerName_4.TextXAlignment = Enum.TextXAlignment.Left

		SizeConstraint_3.Name = "SizeConstraint"
		SizeConstraint_3.Parent = PlayerName_4
		SizeConstraint_3.MaxTextSize = 14
		SizeConstraint_3.MinTextSize = 9

		Layout.Name = "Layout"
		Layout.Parent = ChildrenFrame
		Layout.FillDirection = Enum.FillDirection.Horizontal
		Layout.SortOrder = Enum.SortOrder.Name
		Layout.VerticalAlignment = Enum.VerticalAlignment.Center
	end

	game.StarterGui:SetCoreGuiEnabled("PlayerList", false)

	game.Players.ChildRemoved:Connect(function(player)
		if script.Parent:FindFirstChild(player.Name) then
			script.Parent:FindFirstChild(player.Name):remove()
		end
	end)

	while wait(1) do
		for _, plr in pairs(game.Players:GetChildren()) do
			if not script.Parent:FindFirstChild(plr.Name) then
				addBox(hasGamepass(plr.UserId, 66254), plr.Name, "ee")
				task.wait()
				--script.Parent.Size = UDim2.new(0, 166, 0, (#script.Parent:GetChildren() - 1) * 50)
			end
		end
	end
end
coroutine.wrap(KTJYHGG_fake_script)()
end
)()
