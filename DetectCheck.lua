--// GUI

-- Instances:

local DetectCheck = Instance.new("ScreenGui")
local IconContainer = Instance.new("Frame")
local UIGridLayout = Instance.new("UIGridLayout")
local Detected = Instance.new("ImageButton")
local UnDetected = Instance.new("ImageButton")
local OnUpdate = Instance.new("ImageButton")
local Unknown = Instance.new("ImageButton")

local UnknownText = Instance.new("TextLabel")
local UnDetectedText = Instance.new("TextLabel")
local OnUpdateText = Instance.new("TextLabel")
local DetectedText = Instance.new("TextLabel")

--Properties:

DetectCheck.Name = "DetectCheck"
DetectCheck.Parent = game.CoreGui
DetectCheck.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

IconContainer.Name = "IconContainer"
IconContainer.Parent = DetectCheck
IconContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
IconContainer.BackgroundTransparency = 1.000
IconContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
IconContainer.BorderSizePixel = 0
IconContainer.Size = UDim2.new(0.208333328, 0, 0.185185179, 0)

UIGridLayout.Parent = IconContainer
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 0, 0, 0)
UIGridLayout.CellSize = UDim2.new(0.5, 0, 0.3, 0)

Detected.Name = "Detected"
Detected.Parent = DetectCheck
Detected.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Detected.BackgroundTransparency = 1.000
Detected.BorderColor3 = Color3.fromRGB(0, 0, 0)
Detected.BorderSizePixel = 0
Detected.Size = UDim2.new(0, 100, 0, 100)
Detected.Image = "rbxassetid://14557783194"
Detected.ImageColor3 = Color3.fromRGB(255, 0, 0)
Detected.ImageTransparency = 1.000

UnDetected.Name = "UnDetected"
UnDetected.Parent = DetectCheck
UnDetected.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
UnDetected.BackgroundTransparency = 1.000
UnDetected.BorderColor3 = Color3.fromRGB(0, 0, 0)
UnDetected.BorderSizePixel = 0
UnDetected.Position = UDim2.new(0.0520833321, 0, 0, 0)
UnDetected.Size = UDim2.new(0, 100, 0, 100)
UnDetected.Image = "rbxassetid://14557782686"
UnDetected.ImageColor3 = Color3.fromRGB(255, 0, 0)
UnDetected.ImageTransparency = 1.000

OnUpdate.Name = "OnUpdate"
OnUpdate.Parent = DetectCheck
OnUpdate.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
OnUpdate.BackgroundTransparency = 1.000
OnUpdate.BorderColor3 = Color3.fromRGB(0, 0, 0)
OnUpdate.BorderSizePixel = 0
OnUpdate.Position = UDim2.new(0.104166664, 0, 0, 0)
OnUpdate.Size = UDim2.new(0, 100, 0, 100)
OnUpdate.Image = "rbxassetid://14557783047"
OnUpdate.ImageColor3 = Color3.fromRGB(255, 0, 0)
OnUpdate.ImageTransparency = 1.000

Unknown.Name = "Unknown"
Unknown.Parent = DetectCheck
Unknown.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Unknown.BackgroundTransparency = 1.000
Unknown.BorderColor3 = Color3.fromRGB(0, 0, 0)
Unknown.BorderSizePixel = 0
Unknown.Position = UDim2.new(0.104166664, 0, 0, 0)
Unknown.Size = UDim2.new(0, 100, 0, 100)
Unknown.Image = "rbxassetid://14557782519"
Unknown.ImageColor3 = Color3.fromRGB(255, 0, 0)
Unknown.ImageTransparency = 1.000

UnknownText.Name = "UnknownText"
UnknownText.Parent = DetectCheck
UnknownText.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
UnknownText.BackgroundTransparency = 1 --0.500
UnknownText.BorderColor3 = Color3.fromRGB(0, 0, 0)
UnknownText.BorderSizePixel = 2
UnknownText.Size = UDim2.new(0, 200, 0, 50)
UnknownText.Font = Enum.Font.TitilliumWeb
UnknownText.Text = "UNKNOWN"
UnknownText.TextColor3 = Color3.fromRGB(255, 170, 0)
UnknownText.TextScaled = true
UnknownText.TextSize = 14.000
UnknownText.TextStrokeTransparency = 0.000
UnknownText.TextWrapped = true
UnknownText.TextYAlignment = Enum.TextYAlignment.Top
UnknownText.Visible = false

UnDetectedText.Name = "UnDetectedText"
UnDetectedText.Parent = DetectCheck
UnDetectedText.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
UnDetectedText.BackgroundTransparency = 1 --0.500
UnDetectedText.BorderColor3 = Color3.fromRGB(0, 0, 0)
UnDetectedText.BorderSizePixel = 2
UnDetectedText.Size = UDim2.new(0, 200, 0, 50)
UnDetectedText.Font = Enum.Font.TitilliumWeb
UnDetectedText.Text = "UNDETECTED"
UnDetectedText.TextColor3 = Color3.fromRGB(85, 255, 0)
UnDetectedText.TextScaled = true
UnDetectedText.TextSize = 14.000
UnDetectedText.TextStrokeTransparency = 0.000
UnDetectedText.TextWrapped = true
UnDetectedText.TextYAlignment = Enum.TextYAlignment.Top
UnDetectedText.Visible = false

OnUpdateText.Name = "OnUpdateText"
OnUpdateText.Parent = DetectCheck
OnUpdateText.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
OnUpdateText.BackgroundTransparency = 1 --0.500
OnUpdateText.BorderColor3 = Color3.fromRGB(0, 0, 0)
OnUpdateText.BorderSizePixel = 2
OnUpdateText.Size = UDim2.new(0, 200, 0, 50)
OnUpdateText.Font = Enum.Font.TitilliumWeb
OnUpdateText.Text = "On Update"
OnUpdateText.TextColor3 = Color3.fromRGB(255, 170, 0)
OnUpdateText.TextScaled = true
OnUpdateText.TextSize = 30
OnUpdateText.TextSize = 14.000
OnUpdateText.TextStrokeTransparency = 0.000
OnUpdateText.TextWrapped = true
OnUpdateText.TextYAlignment = Enum.TextYAlignment.Top
OnUpdateText.Visible = false

DetectedText.Name = "DetectedText"
DetectedText.Parent = DetectCheck
DetectedText.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
DetectedText.BackgroundTransparency = 1 --0.500
DetectedText.BorderColor3 = Color3.fromRGB(0, 0, 0)
DetectedText.BorderSizePixel = 2
DetectedText.Size = UDim2.new(0, 200, 0, 50)
DetectedText.Font = Enum.Font.TitilliumWeb
DetectedText.Text = "DETECTED"
DetectedText.TextColor3 = Color3.fromRGB(255, 0, 0)
DetectedText.TextScaled = true
DetectedText.TextSize = 14.000
DetectedText.TextStrokeTransparency = 0.000
DetectedText.TextWrapped = true
DetectedText.TextYAlignment = Enum.TextYAlignment.Top
DetectedText.Visible = false

--// FUNCTIONS

function AddUndetected()
	--UnDetected.Parent = IconContainer
	--UnDetected.ImageTransparency = 0
	
	UnDetectedText.Parent = IconContainer
	UnDetectedText.Visible = true
end

function AddDetected()
	--Detected.Parent = IconContainer
	--Detected.ImageTransparency = 0
	
	DetectedText.Parent = IconContainer
	DetectedText.Visible = true
end

function AddUnknown()
	--Unknown.Parent = IconContainer
	--Unknown.ImageTransparency = 0
	
	UnknownText.Parent = IconContainer
	UnknownText.Visible = true
end

function AddOnUpdate()
	--OnUpdate.Parent = IconContainer
	--OnUpdate.ImageTransparency = 0
	
	OnUpdateText.Parent = IconContainer
	OnUpdateText.Visible = true
end

--// REQUIREMENTS

local PlaceID = tostring(game.PlaceId)

local GameListTable = {
	"" -- This game
}

--// HOVER DISPLAY

UnDetectedText.MouseEnter:Connect(function()
	UnDetectedText.Text = "There are no reports of bans on this game in this script's current version"
end)

UnDetectedText.MouseLeave:Connect(function()
	UnDetectedText.Text = "UNDETECTED"
end)

DetectedText.MouseEnter:Connect(function()
	DetectedText.Text = "There are reports of bans on this game in this script's current version. Use with extreme caution"
end)

DetectedText.MouseLeave:Connect(function()
	DetectedText.Text = "DETECTED"
end)

UnknownText.MouseEnter:Connect(function()
	UnknownText.Text = "We are unsure if this game is detected or not. Use with caution"
end)

UnknownText.MouseLeave:Connect(function()
	UnknownText.Text = "UNKNOWN"
end)

OnUpdateText.MouseEnter:Connect(function()
	OnUpdateText.Text = "This game's script is being updated"
end)

OnUpdateText.MouseLeave:Connect(function()
	OnUpdateText.Text = "On Update"
end)

--// DETECTION

if table.find(GameListTable, PlaceID) then -- Valid Game
	
	--// Manually list each game and write the modifiers down
	
else
	AddUnknown()
end
