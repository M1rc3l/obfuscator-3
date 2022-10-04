-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local GameName = Instance.new("TextLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local Loading = Instance.new("TextLabel")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.365125239, 0, 0.343572259, 0)
MainFrame.Size = UDim2.new(0.269749522, 0, 0.312855512, 0)

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = MainFrame

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.021428572, 0, 0.0363636352, 0)
Title.Size = UDim2.new(0.961904764, 0, 0.181818187, 0)
Title.Font = Enum.Font.FredokaOne
Title.Text = "SOGGYWARE LOADER"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

UITextSizeConstraint.Parent = Title
UITextSizeConstraint.MaxTextSize = 44

GameName.Name = "GameName"
GameName.Parent = MainFrame
GameName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GameName.BackgroundTransparency = 1.000
GameName.BorderSizePixel = 0
GameName.Position = UDim2.new(0, 0, 0.407272726, 0)
GameName.Size = UDim2.new(1, 0, 0.181818187, 0)
GameName.Font = Enum.Font.FredokaOne
GameName.Text = "GAME DETECTED"
GameName.TextColor3 = Color3.fromRGB(255, 255, 255)
GameName.TextScaled = true
GameName.TextSize = 14.000
GameName.TextWrapped = true

UITextSizeConstraint_2.Parent = GameName
UITextSizeConstraint_2.MaxTextSize = 50

Loading.Name = "Loading"
Loading.Parent = MainFrame
Loading.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Loading.BackgroundTransparency = 1.000
Loading.BorderSizePixel = 0
Loading.Position = UDim2.new(0, 0, 0.75999999, 0)
Loading.Size = UDim2.new(1, 0, 0.181818187, 0)
Loading.Font = Enum.Font.FredokaOne
Loading.Text = "Loading Now"
Loading.TextColor3 = Color3.fromRGB(255, 255, 255)
Loading.TextScaled = true
Loading.TextSize = 14.000
Loading.TextWrapped = true

UITextSizeConstraint_3.Parent = Loading
UITextSizeConstraint_3.MaxTextSize = 50

UIAspectRatioConstraint.Parent = ScreenGui
UIAspectRatioConstraint.AspectRatio = 1.771

-- Scripts:

local function QTAJ_fake_script() -- MainFrame.LocalScript 
	local script = Instance.new('LocalScript', MainFrame)

	script.Parent.Position = UDim2.new(1.5, 0,0.344, 0)
	
	wait(1.5)
	
	script.Parent.GameName.Text = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
	
	local function load()
		task.wait(0.5)
		for i = 1,3 do
			script.Parent.Loading.Text = "Loading Now."
			task.wait(0.2)
			script.Parent.Loading.Text = "Loading Now.."
			task.wait(0.2)
			script.Parent.Loading.Text = "Loading Now..."
		end
	
		script.Parent.Loading.Text = "Loaded!"
		wait(2)
		script.Parent.Parent:Destroy()
	end
	
	script.Parent:TweenPosition(
		UDim2.new(0.365, 0,0.344, 0),  
		Enum.EasingDirection.In,    
		Enum.EasingStyle.Bounce,      
		1,                          
		true,                       
		load                  
	)
end
coroutine.wrap(QTAJ_fake_script)()
local function JXXOC_fake_script() -- Loading.LocalScript 
	local script = Instance.new('LocalScript', Loading)

	
end
coroutine.wrap(JXXOC_fake_script)()
local function OYUAHZJ_fake_script() -- ScreenGui.LocalScript 
	local script = Instance.new('LocalScript', ScreenGui)

	script.Parent.Parent = game:GetService("CoreGui")
end
coroutine.wrap(OYUAHZJ_fake_script)()

task.wait(3.5)

local list = {
    ["https://rentry.co/kn6k9/raw"] = 9551640993, --  Mining Simulator 2
    ["https://rentry.co/db4v3/raw"] = 9508087919, -- Apeirophobia
    ["https://rentry.co/a72p4/raw"] = 654732683, -- Car Crushers 2
    ["https://rentry.co/qvtunz/raw"] = 9359839118, -- Gas Station Simulator
    ["https://rentry.co/3wf58/raw"] = 621129760, -- KAT
    ["https://rentry.co/wkk6u/raw"] = 142823291, -- MM2
    ["https://rentry.co/btcaz/raw"] = 8750997647, -- Tapping Legends X
    ["https://rentry.co/zhy6t/raw"] = 7728848215, -- Slashing Simulator
    ["https://rentry.co/i4a5f/raw/"] = 6681647040, -- Random Rumble
    ["https://rentry.co/p24m2/raw"] = 6681647040 -- Slap Battles
}

for k, v in next, list do
    if game.PlaceId == v then
        loadstring(game:HttpGet(k, true))()
    end
end

-- hi nigger skids