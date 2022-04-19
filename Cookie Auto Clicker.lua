-- Cookie Clicker hack
-- Version: 3.2

-- Instances:

_G.autotap = false
local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local On = Instance.new("TextButton")
local Off = Instance.new("TextButton")
local label = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
main.Position = UDim2.new(0.268847793, 0, 0.384615362, 0)
main.Size = UDim2.new(0, 381, 0, 299)
main.Active = true
main.Draggable = true

On.Name = "On"
On.Parent = main
On.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
On.Position = UDim2.new(0.0272771791, 0, 0.376285732, 0)
On.Size = UDim2.new(0, 171, 0, 171)
On.Font = Enum.Font.SourceSans
On.Text = "On"
On.TextColor3 = Color3.fromRGB(0, 0, 0)
On.TextSize = 14.000
On.MouseButton1Down:connect(function()
	_G.autotap = true
	while _G.autotap == true do
		local args = {
			[1] = 1,
			[2] = 1
		}

		game:GetService("ReplicatedStorage").ButtonClicked:FireServer(unpack(args))
		wait()
	end
end)

Off.Name = "Off"
Off.Parent = main
Off.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Off.Position = UDim2.new(0.520424247, 0, 0.376285732, 0)
Off.Size = UDim2.new(0, 171, 0, 171)
Off.Font = Enum.Font.SourceSans
Off.Text = "Off"
Off.TextColor3 = Color3.fromRGB(0, 0, 0)
Off.TextSize = 14.000
Off.MouseButton1Down:connect(function()
	_G.autotap = false
end)

label.Name = "label"
label.Parent = main
label.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
label.BorderColor3 = Color3.fromRGB(60, 60, 60)
label.ClipsDescendants = true
label.Position = UDim2.new(0.0272771884, 0, 0.0454976261, 0)
label.Size = UDim2.new(0, 358, 0, 50)
label.Font = Enum.Font.SciFi
label.Text = "Made  by tiktok: dougs_wrld"
label.TextColor3 = Color3.fromRGB(0, 0, 0)
label.TextSize = 20.000