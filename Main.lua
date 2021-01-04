print("Checking")

if nb_Loaded and not _G.ub_debug == true then
    local arl = Instance.new("Message",workspace)
    arl.Text = 'Underbar is Arleady running'
    wait(3)
	arl:Destroy()
	return
end

pcall(function() getgenv().nb_Loaded  = true end)

if not game:IsLoaded() then
    local ntloaded = Instance.new("Message",workspace)
    ntloaded.Text = 'nb is wating for game to load'
    game.Loaded:Wait()
    ntloaded:Destroy()
end

ver = '0.2'

plr = game:GetService("Players")

local WelcomeScreen = Instance.new("ScreenGui")
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
local TextButton_2 = Instance.new("TextButton")



WelcomeScreen.Name = math.random(0,224137917)
WelcomeScreen.Parent = game.CoreGui
WelcomeScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = WelcomeScreen
main.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
main.Position = UDim2.new(0.359583944, 0, 0.365999997, 0)
main.Size = UDim2.new(0, 362, 0, 169)
main.ZIndex = 999999999

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = main

upbarui.Name = "upbarui"
upbarui.Parent = main
upbarui.Active = true
upbarui.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
upbarui.Selectable = true
upbarui.Size = UDim2.new(0, 362, 0, 17)

UICorner_2.CornerRadius = UDim.new(0, 6)
UICorner_2.Parent = upbarui

upbar.Name = "upbar"
upbar.Parent = main
upbar.Active = true
upbar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
upbar.BorderSizePixel = 0
upbar.Position = UDim2.new(0, 0, 0.0295857992, 0)
upbar.Selectable = true
upbar.Size = UDim2.new(0, 362, 0, 19)

TextLabel.Parent = upbar
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel.Position = UDim2.new(0.0850000009, 0, -0.150000006, 0)
TextLabel.Size = UDim2.new(0, 141, 0, 19)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Underbar"
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

TextButton.Parent = Gamefr
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Size = UDim2.new(0, 290, 0, 116)
TextButton.Font = Enum.Font.SourceSans
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000
TextButton.TextTransparency = 1.000

TextButton_2.Parent = main
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BackgroundTransparency = 1.000
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.93267554, 0, 0.0122433277, 0)
TextButton_2.Size = UDim2.new(0, 17, 0, 18)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "X"
TextButton_2.TextColor3 = Color3.fromRGB(39, 2, 223)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true



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
local function script2() -- Gamefr.LocalScript 
	local script = Instance.new('LocalScript', Gamefr)

	if game.GameId == 3952704772 then
		script.Parent.TextLabel.Text = "운테르 놀이터"
	else
		script.Parent.TextLabel.Text = "Not Surpport Game"
	end
end
coroutine.wrap(script2)()
local function script3() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		if game.GameId == 3952704772 then
			loadstring(game:HttpGet(("https://raw.githubusercontent.com/baechooYT/Underbar/main/Surpport_Games/Untel_game.lua"), true))()
		else
			loadstring(game:HttpGet(("https://raw.githubusercontent.com/baechooYT/Underbar/main/notsurpport"), true))()
		end	
	end)
end
coroutine.wrap(script3)()
local function script4() -- main.LocalScript 
	local script = Instance.new('LocalScript', main)

	local uis = game:GetService("UserInputService")
	
	local main = script.Parent
	local topbar = main:WaitForChild("upbar")
	local upbar2 = main:WaitForChild("upbarui")
	
	local cam = workspace:WaitForChild("Camera")
	
	local dmp
	local fp
	
	local Draggable = false
	
	topbar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			Draggable = true
			dmp = Vector2.new(input.Position.X, input.Position.Y)
			fp = Vector2.new(main.Position.X.Scale,main.Position.Y.Scale)
		end
	end)
	
	topbar.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			Draggable = false
		end
	end)
	
	uis.InputChanged:Connect(function(input)
		if Draggable == true then
			local NewPosition = fp + ((Vector2.new(input.Position.X, input.Position.Y) - dmp) / cam.ViewportSize)
			main.Position = UDim2.new(NewPosition.X, 0, NewPosition.Y, 0)
		end
	end)
end
coroutine.wrap(script4)()
local function script5() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(script5)()
local function script6() -- main.Tween 
	local script = Instance.new('LocalScript', main)

	local main = script.Parent
	local gamefr = main.Gamefr
	local upbar = main.upbar
	local upbarui = main.upbarui
	local textbutton = main.TextButton
	local textlabel = gamefr.TextLabel
	local textlabel2 = upbar.TextLabel
	local imagelabel = upbar.ImageLabel
	
	main.Size = UDim2.new(0,0)
	gamefr.Size = UDim2.new(0,0)
	upbar.Size = UDim2.new(0,0)
	upbarui.Size = UDim2.new(0,0)
	textlabel.Size = UDim2.new(0,0)
	textlabel.Size = UDim2.new(0,0)
	textlabel2.Size = UDim2.new(0,0)
	imagelabel.Size = UDim2.new(0,0)
	textbutton.Size = UDim2.new(0,0)
	
	main:TweenSize(UDim2.new(0, 362,0, 169),"Out","Sine",1)
	gamefr:TweenSize(UDim2.new(0, 290,0, 116),"Out","Sine",1)
	upbar:TweenSize(UDim2.new(0, 362,0, 19),"Out","Sine",1)
	upbarui:TweenSize(UDim2.new(0, 362,0, 17),"Out","Sine",1)
	textbutton:TweenSize(UDim2.new(0, 17,0, 18),"Out","Sine",1)
	textlabel:TweenSize(UDim2.new(0, 215,0, 63),"Out","Sine",1)
	textlabel2:TweenSize(UDim2.new(0, 141,0, 19),"Out","Sine",1)
	imagelabel:TweenSize(UDim2.new(0, 19,0, 19),"Out","Sine",1)
	main:TweenPosition(UDim2.new({0, 0},0, 0),"Out","Sine",1)
	
	textlabel2.Text = "Underbar" ..ver
end
coroutine.wrap(script6)()
