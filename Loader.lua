-- Please Dont Look At My Shits, Im Too Lazy To Obfuscate It :(
getgenv().FrameRateBoost = true
getgenv().AutoClick = true
getgenv().SpamSkill = false
getgenv().AutoUseRaceV3 = false
getgenv().AutoUseRacev4 = false
getgenv().SpamSkillOnRaceV4 = false
getgenv().Invisible = false
getgenv().InCombatNoReset = false
getgenv().Team = "Pirates"
getgenv().TweenSpeed = 300
 getgenv().Setting = {
        ["Melee"] = {["Enable"] = true, ["Delay"] = 99,
          ["Skills"] = {
            ["Z"] = {["Enable"] = true,["HoldTime"] = 0.1, ["TimeToNextSkill"] = 0,},
            [ "X"] = {["Enable"] = true,["HoldTime"] = 0.2, ["TimeToNextSkill"] = 0,},
            ["C"] = {["Enable"] = true,["HoldTime"] = 1, ["TimeToNextSkill"] = 0,},
            },
        },
        ["Blox Fruit"] = {["Enable"] = false, ["Delay"] = 2,
            ["Skills"] = {
                ["Z"] = {["Enable"] = true, ["HoldTime"] = 1, ["TimeToNextSkill"] = 0,},
                ["X"] = { ["Enable"] = true, ["HoldTime"] = 0, ["TimeToNextSkill"] = 0,},
                ["C"] = { ["Enable"] = true, ["HoldTime"] = 0,["TimeToNextSkill"] = 0, },
                ["V"] = { ["Enable"] = false, ["HoldTime"] = 0,["TimeToNextSkill"] = 0,},
                ["F"] = {["Enable"] = true,["HoldTime"] = 0, ["TimeToNextSkill"] = 0,},
            },
        },
        ["Sword"] = { ["Enable"] = false, ["Delay"] = 1.5,
            ["Skills"] = {
                ["Z"] = {["Enable"] = true,  ["HoldTime"] = 0.5,["TimeToNextSkill"] = 0,},
                ["X"] = {["Enable"] = true, ["HoldTime"] = 0, ["TimeToNextSkill"] = 0,},
            },
        },
        ["Gun"] = {["Enable"] = false, ["Delay"] = 2,
            ["Skills"] = {
                ["Z"] = {["Enable"] = true,["HoldTime"] = 0.5,["TimeToNextSkill"] = 0,},
                ["X"] = {["Enable"] = true,["HoldTime"] = 0.5,["TimeToNextSkill"] = 0,
                },
            },
        }
    }

-- Wait Until Game Is Loaded
repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
task.wait(3)

-- Auto-Bounty
task.spawn(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/vinhuchi/temp-repos/main/FreeAutoBounty.lua'))()
end)

-- Auto-Reconnect
task.spawn(function()
    repeat task.wait() until game.PlaceId ~= nil and game.JobId ~= nil
    game:GetService("NetworkClient").ChildRemoved:Connect(function()
    game:GetService("TeleportService"):Teleport(game.PlaceId)
    end)
end)

-- Rejoin After 15 Minutes
task.spawn(function()
    while task.wait(900) do
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
end)

-- Equip Melee Dragon Talon And Warrior Helmet
task.spawn(function()
    while task.wait(1) do
        if not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
            task.wait(0.1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Warrior Helmet")
            break
        end
    end
end)

-- Auto Click Attack For Faster Hunt
task.spawn(function()
    while task.wait(0.33) do
        if getgenv().AutoClick then
             pcall(function()
                game:GetService'VirtualUser':CaptureController()	                    game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1)) 
            end)
        end
    end
end)

-- Point Mouse At The Center Of The Screen
task.spawn(function()
    while task.wait(0.1) do
        mousemoveabs(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)
    end
end)

-- Loop Equip Dragon Talon
task.spawn(function()
    while task.wait(1) do
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AynaShiratori/BloxFruit/main/EquipDragonTalon.lua"))()
    end
end)

-- Better Performance

local LocalPlayerAsd = game.Players.LocalPlayer
if LocalPlayerAsd then
    if not isfile(".flux_settings") then
        writefile(".flux_settings")
    end

    if not isfile(".fluxus_auth_store") then
        writefile(".fluxus_auth_store")
    end

    local FluxusSettingsData = '{"SaveTabs":true,"ConsoleOutput":false,"CenterMinimize":false,"FPSUnlocker":false,"ConsoleError":false,"NoAnims":true,"SaveSettings":true,"ConsoleWarning":false,"FastAnims":false}'
    writefile(".flux_settings", FluxusSettingsData)
else
    game.Players.LocalPlayer:Kick("Failed To Auto Load Fluxus Settings")
end

game.Workspace:WaitForChild"Terrain".WaterWaveSize = 0
game.Workspace:WaitForChild"Terrain".WaterWaveSpeed = 0
game.Workspace:WaitForChild"Terrain".WaterReflectance = 0
game.Workspace:WaitForChild"Terrain".WaterTransparency = 1
game:GetService"Lighting".GlobalShadows = false
game:GetService("Lighting"):ClearAllChildren()

task.spawn(function()
    game.Players.LocalPlayer.PlayerScripts.WaterCFrame.Disabled = true
end)
task.spawn(function()
    game.Players.LocalPlayer.PlayerScripts.EnhancementsVisual.Disabled = true
end)

settings().Rendering.QualityLevel = "1"
UserSettings():GetService("UserGameSettings").MasterVolume = 0
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat,false)
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
local CameraShake = require(game.ReplicatedStorage.Util.CameraShaker)
CameraShake:Stop()
game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
game.Players.LocalPlayer.PlayerGui.TopbarPlus.Enabled = false
game:GetService("Players").LocalPlayer.PlayerGui.TouchGui:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.MobileMouselock:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.DynamicTopBar:Destroy()
game:GetService("ReplicatedStorage").Effect.Container:Remove()
game:GetService("ReplicatedStorage").FX:Remove()
game:GetService("ReplicatedStorage").Assets:Remove()
game:GetService("ReplicatedStorage").ClientWeapons:Remove()
game.Workspace.Enemies:Remove()
game.Workspace.SeaBeasts:Remove()
game.Workspace.SeaEvents:Remove()
game.Workspace.Map:Remove()
game.Workspace.Boats:Remove()
game.Workspace.Leaderboards:Remove()

-- Check If Auto-Bounty Is Loaded
repeat
    task.wait()
    if not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
        break
    end
    wait(1)
until not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")
task.wait(1)

-- Teleport To Sea3
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")

-- Remove W-azure CoreGui
task.spawn(function()
	game:GetService("CoreGui").SGStats.ClientStats.Visible = false
end)
task.spawn(function()
	game.Players.LocalPlayer.PlayerGui.ScreenGui.ToggleLevelFarmButton:Destroy()
end)
task.spawn(function()
game.Players.LocalPlayer.PlayerGui.ScreenGui.TextLabel:Destroy()
end)

-- Better Vision

task.spawn(function()
  repeat task.wait(1) until game.Workspace.Characters:FindFirstChild(game.Players.LocalPlayer.Name)
  wait(0.5)
  game:GetService("VirtualInputManager"):SendKeyEvent(true,"H",false,game)
  wait(0.5)
  for i = 1,3 do
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"O",false,game)
  end
end)

task.spawn(function()
	while task.wait(0.5) do
		game.Players.LocalPlayer.PlayerGui.Main.Compass.Visible = false
		game.Players.LocalPlayer.PlayerGui.Main.CrewButton.Visible = false
	end
end)
game.Players.LocalPlayer.PlayerGui.ContextActionGui.Enabled = false
game.Players.LocalPlayer.PlayerGui.Main.ShopButton.Visible = false
game.Players.LocalPlayer.PlayerGui.Main.Shop.Visible = false
game.Players.LocalPlayer.PlayerGui.Main.Settings.Visible = false
game.Players.LocalPlayer.PlayerGui.Main.Mute.Visible = false
game.Players.LocalPlayer.PlayerGui.Main.HomeButton.Visible = false
game.Players.LocalPlayer.PlayerGui.Main.AlliesButton.Visible = false
game.Players.LocalPlayer.PlayerGui.Main.Code.Visible = false
game.Players.LocalPlayer.PlayerGui.Main.InventoryContainer.Visible = false
game.Players.LocalPlayer.PlayerGui.Main.Stats.Visible = false
game.Players.LocalPlayer.PlayerGui.Main.Allies.Visible = false
game.Players.LocalPlayer.PlayerGui.Main.Beli.Visible = false
game.Players.LocalPlayer.PlayerGui.Main.Fragments.Visible = false
game.Players.LocalPlayer.PlayerGui.Main.Level.Visible = false
game.Players.LocalPlayer.PlayerGui.Main.MenuButton.Visible = false
game.Players.LocalPlayer.PlayerGui.Main.Energy.Visible = false
game.Players.LocalPlayer.PlayerGui.Main.InCombat.TextTransparency = 1
game.Players.LocalPlayer.PlayerGui.Main.InCombat.Bottom.TextTransparency = 1
game.Workspace.NPCs:Remove()

-- UI
local thisoneissocoldww = Instance.new("ScreenGui")
local madebybloodofbatus = Instance.new("Frame")
local UICornerw = Instance.new("UICorner")
local DestroyButton = Instance.new("TextButton")
local uselesslabelone = Instance.new("TextLabel")
local timerlabel = Instance.new("TextLabel")
local uselesslabeltwo = Instance.new("TextLabel")
local fpslabel = Instance.new("TextLabel")
local uselesslabelthree = Instance.new("TextLabel")
local pinglabel = Instance.new("TextLabel")
local uselessframeone = Instance.new("Frame")
local UICornerww = Instance.new("UICorner")
local uselesslabelfour = Instance.new("TextLabel")

thisoneissocoldww.IgnoreGuiInset = true

thisoneissocoldww.Name = "thisoneissocoldww"
thisoneissocoldww.Parent = game.CoreGui
thisoneissocoldww.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

madebybloodofbatus.Name = "madebybloodofbatus"
madebybloodofbatus.Parent = thisoneissocoldww
madebybloodofbatus.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
madebybloodofbatus.Position = UDim2.new(0, 0, 0.13128835, 0)
madebybloodofbatus.Size = UDim2.new(0, 225, 0, 96)

UICornerw.Name = "UICornerw"
UICornerw.Parent = madebybloodofbatus

DestroyButton.Name = "DestroyButton"
DestroyButton.Parent = madebybloodofbatus
DestroyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DestroyButton.BackgroundTransparency = 1.000
DestroyButton.Position = UDim2.new(0.871702373, 0, 0.0245379955, 0)
DestroyButton.Size = UDim2.new(0, 27, 0, 15)
DestroyButton.Font = Enum.Font.SourceSans
DestroyButton.Text = "X"
DestroyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DestroyButton.TextSize = 14.000

DestroyButton.MouseButton1Click:connect(function()
	game:GetService("RunService"):Set3dRenderingEnabled(true)
end)

uselesslabelone.Name = "uselesslabelone"
uselesslabelone.Parent = madebybloodofbatus
uselesslabelone.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
uselesslabelone.BackgroundTransparency = 1.000
uselesslabelone.Position = UDim2.new(0.302473009, 0, 0, 0)
uselesslabelone.Size = UDim2.new(0, 95, 0, 24)
uselesslabelone.Font = Enum.Font.SourceSans
uselesslabelone.Text = "Ayna Shiratori"
uselesslabelone.TextColor3 = Color3.fromRGB(255, 255, 255)
uselesslabelone.TextSize = 14.000

timerlabel.Name = "timerlabel"
timerlabel.Parent = madebybloodofbatus
timerlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
timerlabel.BackgroundTransparency = 1.000
timerlabel.Position = UDim2.new(0.65344125, 0, 0.68194294, 0)
timerlabel.Size = UDim2.new(0, 60, 0, 24)
timerlabel.Font = Enum.Font.SourceSans
timerlabel.Text = "0:0:0"
timerlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
timerlabel.TextSize = 14.000

uselesslabeltwo.Name = "uselesslabeltwo"
uselesslabeltwo.Parent = madebybloodofbatus
uselesslabeltwo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
uselesslabeltwo.BackgroundTransparency = 1.000
uselesslabeltwo.Position = UDim2.new(0.038864471, 0, 0.373806685, 0)
uselesslabeltwo.Size = UDim2.new(0, 29, 0, 24)
uselesslabeltwo.Font = Enum.Font.SourceSans
uselesslabeltwo.Text = "Bounty: "
uselesslabeltwo.TextColor3 = Color3.fromRGB(255, 255, 255)
uselesslabeltwo.TextSize = 14.000

fpslabel.Name = "fpslabel"
fpslabel.Parent = madebybloodofbatus
fpslabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fpslabel.BackgroundTransparency = 1.000
fpslabel.Position = UDim2.new(0.724226236, 0, 0.358796299, 0)
fpslabel.Size = UDim2.new(0, 55, 0, 24)
fpslabel.Font = Enum.Font.SourceSans
fpslabel.Text = ""
fpslabel.TextColor3 = Color3.fromRGB(255, 255, 255)
fpslabel.TextSize = 14.000

uselesslabelthree.Name = "uselesslabelthree"
uselesslabelthree.Parent = madebybloodofbatus
uselesslabelthree.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
uselesslabelthree.BackgroundTransparency = 1.000
uselesslabelthree.Position = UDim2.new(0.675, 0, 0.352585167, 0)
uselesslabelthree.Size = UDim2.new(0, 26, 0, 24)
uselesslabelthree.Font = Enum.Font.SourceSans
uselesslabelthree.Text = "Fps: "
uselesslabelthree.TextColor3 = Color3.fromRGB(255, 255, 255)
uselesslabelthree.TextSize = 14.000

pinglabel.Name = "pinglabel"
pinglabel.Parent = madebybloodofbatus
pinglabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
pinglabel.BackgroundTransparency = 1.000
pinglabel.Position = UDim2.new(0.20330891, 0, 0.371578127, 0)
pinglabel.Size = UDim2.new(0, 55, 0, 24)
pinglabel.Font = Enum.Font.SourceSans
pinglabel.Text = ""

function comma_value(amount)
	local formatted = amount
	while task.wait() do
		formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)","%1,%2")
		if (k==0) then
			break
		end
	end
	return formatted
end

task.spawn(function()
  while task.wait() do
    pinglabel.Text = comma_value(tonumber(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value))
  end
end)

pinglabel.TextColor3 = Color3.fromRGB(255, 255, 255)
pinglabel.TextSize = 14.000
pinglabel.TextWrapped = true

uselessframeone.Name = "uselessframeone"
uselessframeone.Parent = madebybloodofbatus
uselessframeone.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
uselessframeone.Position = UDim2.new(0.00444444455, 0, 0.243312627, 0)
uselessframeone.Size = UDim2.new(0, 224, 0, 5)

UICornerww.CornerRadius = UDim.new(0, 50)
UICornerww.Name = "UICornerww"
UICornerww.Parent = uselessframeone

uselesslabelfour.Name = "uselesslabelfour"
uselesslabelfour.Parent = madebybloodofbatus
uselesslabelfour.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
uselesslabelfour.BackgroundTransparency = 1.000
uselesslabelfour.Position = UDim2.new(0.0580285639, 0, 0.8125, 0)
uselesslabelfour.Size = UDim2.new(0, 95, 0, 12)
uselesslabelfour.Font = Enum.Font.SourceSans
uselesslabelfour.Text = game.Players.LocalPlayer.Name
uselesslabelfour.TextColor3 = Color3.fromRGB(255, 255, 255)
uselesslabelfour.TextSize = 14.000

local Drag = game.CoreGui.thisoneissocoldww.madebybloodofbatus
gsCoreGui = game:GetService("CoreGui")
gsTween = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local dragging
local dragInput
local dragStart
local startPos
local function update(input)
	local delta = input.Position - dragStart
	local dragTime = 0.04
	local SmoothDrag = {}
	SmoothDrag.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	local dragSmoothFunction = gsTween:Create(Drag, TweenInfo.new(dragTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), SmoothDrag)
	dragSmoothFunction:Play()
end
Drag.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = Drag.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)
Drag.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)
UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging and Drag.Size then
		update(input)
	end
end)

local FPSsLabel = fpslabel
local RunService = game:GetService("RunService")
local RenderStepped = RunService.RenderStepped
local sec = nil
local FPS = {}

local function fre()
	local fr = tick()
	for index = #FPS,1,-1 do
		FPS[index + 1] = (FPS[index] >= fr - 1) and FPS[index] or nil
	end
	FPS[1] = fr
	local fps = (tick() - sec >= 1 and #FPS) or (#FPS / (tick() - sec))
	fps = math.floor(fps)
	fpslabel.Text = fps
end

sec = tick()
RenderStepped:Connect(fre)

local DisplayedHours = 0
local DisplayedMinutes = 0
local DisplayedSeconds = 0
getgenv().TimerTracker = true
task.spawn(function()
	while true do
		if getgenv().TimerTracker then
			DisplayedSeconds = DisplayedSeconds + 1
			wait(1)
		end
		if DisplayedSeconds >= 60 then
			DisplayedSeconds = 0
			DisplayedMinutes = DisplayedMinutes + 1
		end
		if DisplayedMinutes >= 60 then
			DisplayedMinutes = 0
			DisplayedHours = DisplayedHours + 1
		end
		timerlabel.Text = DisplayedHours..":"..DisplayedMinutes..":"..DisplayedSeconds
	end
end)
