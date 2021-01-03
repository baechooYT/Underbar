print("Checking")

if nb_Loaded and not _G.ub_debug == true then
    local arl = Instance.new("Message",workspace)
    arl.Text = 'Underbar is Arleady running'
    wait(3)
    arl:Destroy()
end

pcall(function() getgenv().nb_Loaded  = true end)

if not game:IsLoaded() then
    local ntloaded = Instance.new("Message",workspace)
    ntloaded.Text = 'nb is wating for game to load'
    game.Loaded:Wait()
    ntloaded:Destroy()
end

ver = '0.1'

plr = game:GetService("Players")

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local upbarui = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local upbar = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local Gamefr = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
main.Position = UDim2.new(0.365527481, 0, 0.365999997, 0)
main.Size = UDim2.new(0, 362, 0, 169)

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = main

upbarui.Name = "upbarui"
upbarui.Parent = main
upbarui.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
upbarui.Size = UDim2.new(0, 362, 0, 17)

UICorner_2.CornerRadius = UDim.new(0, 6)
UICorner_2.Parent = upbarui

upbar.Name = "upbar"
upbar.Parent = main
upbar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
upbar.BorderSizePixel = 0
upbar.Position = UDim2.new(0, 0, 0.0295857992, 0)
upbar.Size = UDim2.new(0, 362, 0, 19)

TextLabel.Parent = upbar
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel.Position = UDim2.new(0.0850000009, 0, -0.150000006, 0)
TextLabel.Size = UDim2.new(0, 141, 0, 19)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Underbar ".. ver
TextLabel.TextColor3 = Color3.fromRGB(2, 216, 239)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

ImageLabel.Parent = upbar
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.0193370171, 0, -0.157894731, 0)
ImageLabel.Size = UDim2.new(0, 19, 0, 19)
ImageLabel.Image = "http://www.roblox.com/asset/?id=6176483333"

Gamefr.Name = "Gamefr"
Gamefr.Parent = main
Gamefr.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Gamefr.Position = UDim2.new(0.085000053, 0, 0.213017747, 0)
Gamefr.Size = UDim2.new(0, 290, 0, 116)

UICorner_3.CornerRadius = UDim.new(0, 6)
UICorner_3.Parent = Gamefr

TextLabel_2.Parent = Gamefr
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.127586201, 0, 0.224137917, 0)
TextLabel_2.Size = UDim2.new(0, 215, 0, 63)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Happy New Year!"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextButton.Parent = main
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.93267554, 0, 0.0122433277, 0)
TextButton.Size = UDim2.new(0, 17, 0, 18)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(39, 2, 223)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

local function script1() -- TextLabel_2.LocalScript 
	local script = Instance.new('LocalScript', TextLabel_2)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
		script.Parent.TextColor3 = Color3.fromHSV(zigzag(counter),1,1)
	
		counter = counter + 0.01
	end
end
coroutine.wrap(script1)()
local function script2()
	local script = Instance.new('LocalScript', Gamefr)

	if game.GameId == 5305031231 then
		script.Parent.TextLabel.Text = "testplace"
	end
end
coroutine.wrap(script2)()
local function script3()
	local script = Instance.new('LocalScript', main)

	local frame = script.Parent
	
	frame.Draggable = true
	frame.Active = true
	frame.Selectable = true
end
coroutine.wrap(script3)()
local function script4()
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(script4)()
