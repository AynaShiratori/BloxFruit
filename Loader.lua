FrameRateBoost = true

getgenv().Key = ''
getgenv().Setting = {
    ["Team"] = "Pirates",
    ["Webhook"] = {
        ["Enabled"] = true,
        ["Url Webhook"] = "https://discord.com/api/webhooks/1198957951172476968/9C1Wklj3x7WthwBmx7K88V3rheltSDfl7Xswj8JUME5rD8VlWQoyg35pBPujLvkbsaDq",
    },
    ["Misc"] = {
        ["AutoBuyRandomandStoreFruit"] = true,
        ["AutoBuySurprise"] = false,
    },
    ["Click"] = {
        ["Enable"] = true,
        ["Click Gun"] = false,
        ["OnLowHealthDisable"] = true,
        ["LowHealth"] = 4500,
    },
    ["SafeZone"] = {
        ["Enable"] = true,
        ["LowHealth"] = 4500,
        ["MaxHealth"] = 5000,
        ["Teleport Y"] = 2000
    },
    ["Race V4"] = {
        ["Enable"] = true,
    },
    ["Invisible"] = false,
    ["White Screen"] = false,
    ["GunMethod"] = false,
    ["SpamSkill"] = false,
    ["Weapons"] = {
        ["Melee"] = {
            ["Enable"] = true,
            ["Delay"] = 3,
            ["Skills"] = {
                ["Z"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0.11,
                },
               [ "X"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0.14,
                },

                ["C"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 2,
                },
            },
        },
        ["Blox Fruit"] = {
            ["Enable"] = false,
            ["Delay"] = 1,
            ["Skills"] = {
                ["Z"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0.12,
                },
                ["X"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 2,
                },

                ["C"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0.14,
                },
                ["V"] = {
                    ["Enable"] = false,
                    ["HoldTime"] = 0,
                },
                ["F"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0.07,
                },
            },
        },
        ["Gun"] = {
            ["Enable"] = false,
            ["Delay"] = 2,
            ["Skills"] = {
                ["Z"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0.15,
                },
                ["X"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0.13,
                },
            },
        },
        ["Sword"] = {
            ["Enable"] = false,
            ["Delay"] = 1,
            ["Skills"] = {
                ["Z"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0.11,
                },
                ["X"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0.17,
                },
            },
        },
    }
}

local function HopServer()
local currentJobId = game.JobId
repeat
    task.spawn(pcall, function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer, game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(math.random(1, 100))[math.random(1, 100)])
    end)    
    wait(2)
until game.JobId ~= currentJobId
end

task.spawn(function()
    repeat wait() until game.CoreGui:FindFirstChild('RobloxPromptGui')
    local lp,po,ts = game:GetService('Players').LocalPlayer,game.CoreGui.RobloxPromptGui.promptOverlay,game:GetService('TeleportService')

    po.ChildAdded:connect(function(a)
            repeat
                HopServer()
                wait(30)
            until false
    end)
end)

local vu = game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
    vu:CaptureController()
    vu:ClickButton2(Vector2.new())
end)

for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
  v:Disable()
end

repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");

function TextureLow()
    if not game:IsLoaded() then repeat wait() until game:IsLoaded() end
    if hookfunction and setreadonly then
        local mt = getrawmetatable(game)
        local old = mt.__newindex
        setreadonly(mt, false)
        local sda
        sda = hookfunction(old, function(t, k, v)
            if k == "Material" then
                if v ~= Enum.Material.Neon and v ~= Enum.Material.Plastic and v ~= Enum.Material.ForceField then v = Enum.Material.Plastic end
            elseif k == "TopSurface" then v = "Smooth"
            elseif k == "Reflectance" or k == "WaterWaveSize" or k == "WaterWaveSpeed" or k == "WaterReflectance" then v = 0
            elseif k == "WaterTransparency" then v = 1
            elseif k == "GlobalShadows" then v = false end
            return sda(t, k, v)
        end)
        setreadonly(mt, true)
    end

    local g = game
    local w = g.Workspace
    local l = g:GetService"Lighting"
    local t = w:WaitForChild"Terrain"
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 1
    l.GlobalShadows = false

    function change(v)
        pcall(function()
            if v.Material ~= Enum.Material.Neon and v.Material ~= Enum.Material.Plastic and v.Material ~= Enum.Material.ForceField then
                pcall(function() v.Reflectance = 0 end)
                pcall(function() v.Material = Enum.Material.Plastic end)
                pcall(function() v.TopSurface = "Smooth" end)
            end
        end)
    end

    game.DescendantAdded:Connect(function(v)
        pcall(function()
            if v:IsA"Part" then change(v)
            elseif v:IsA"MeshPart" then change(v)
            elseif v:IsA"TrussPart" then change(v)
            elseif v:IsA"UnionOperation" then change(v)
            elseif v:IsA"CornerWedgePart" then change(v)
            elseif v:IsA"WedgePart" then change(v) end
        end)
    end)

    for i, v in pairs(game:GetDescendants()) do
        pcall(function()
            if v:IsA"Part" then change(v)
            elseif v:IsA"MeshPart" then change(v)
            elseif v:IsA"TrussPart" then change(v)
            elseif v:IsA"UnionOperation" then change(v)
            elseif v:IsA"CornerWedgePart" then change(v)
            elseif v:IsA"WedgePart" then change(v) end
        end)
    end
end

function WaterRemove()
    for i,v in pairs(workspace:GetDescendants()) do
        if string.find(v.Name,"Water") then
            v:Destroy()
        end
    end
end

function ObjectRemove()
    for i,v in pairs(workspace:GetDescendants()) do
        if string.find(v.Name,"Tree") or string.find(v.Name,"House") then
            v:Destroy()
        end
    end
end

function InvisibleObject()
    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if (v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart")) and v.Transparency then
            v.Transparency = 1
        end
    end
end

if FrameRateBoost then
    game.Players.LocalPlayer.PlayerScripts.WaterCFrame.Disabled = true
    game:GetService("Lighting"):ClearAllChildren()
    TextureLow()
    WaterRemove()
    ObjectRemove()
    InvisibleObject()
end

task.spawn(function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BountyShit.lua"))()
end)

game:GetService("RunService"):Set3dRenderingEnabled(false)
settings().Rendering.QualityLevel = "1"
UserSettings():GetService("UserGameSettings").MasterVolume = 0
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat,false)
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
game.Players.LocalPlayer.PlayerGui.TopbarPlus.Enabled = false

if getgenv().AntiAfkExecuted and thisoneissocoldww then 
    getgenv().AntiAfkExecuted = false
	getgenv().zamanbaslaticisi = false
	game.CoreGui.thisoneissocoldww:Destroy()
end

getgenv().AntiAfkExecuted = true

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

thisoneissocoldww.Name = "thisoneissocoldww"
thisoneissocoldww.Parent = game.CoreGui
thisoneissocoldww.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

madebybloodofbatus.Name = "madebybloodofbatus"
madebybloodofbatus.Parent = thisoneissocoldww
madebybloodofbatus.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
madebybloodofbatus.Position = UDim2.new(0.0854133144, 0, 0.13128835, 0)
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
DestroyButton.Text = "O"
DestroyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DestroyButton.TextSize = 14.000

DestroyButton.MouseButton1Click:connect(function()	
	wait(0.1)
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
timerlabel.Position = UDim2.new(0.63, 0, 0.68194294, 0)
timerlabel.Size = UDim2.new(0, 60, 0, 24)
timerlabel.Font = Enum.Font.SourceSans
timerlabel.Text = ""
timerlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
timerlabel.TextSize = 14.000

uselesslabeltwo.Name = "uselesslabeltwo"
uselesslabeltwo.Parent = madebybloodofbatus
uselesslabeltwo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
uselesslabeltwo.BackgroundTransparency = 1.000
uselesslabeltwo.Position = UDim2.new(0.038864471, 0, 0.373806685, 0)
uselesslabeltwo.Size = UDim2.new(0, 29, 0, 24)
uselesslabeltwo.Font = Enum.Font.SourceSans
uselesslabeltwo.Text = ""
uselesslabeltwo.TextColor3 = Color3.fromRGB(255, 255, 255)
uselesslabeltwo.TextSize = 14.000

fpslabel.Name = "fpslabel"
fpslabel.Parent = madebybloodofbatus
fpslabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fpslabel.BackgroundTransparency = 1.000
fpslabel.Position = UDim2.new(0.54, 0, 0.358796299, 0)
fpslabel.Size = UDim2.new(0, 55, 0, 24)
fpslabel.Font = Enum.Font.SourceSans

function comma_value(amount)
	local formatted = amount
	while wait() do
		formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)","%1,%2")
		if (k==0) then
			break
		end
	end
	return formatted
end

task.spawn(function()
  while task.wait(1) do
    fpslabel.Text = comma_value(tonumber(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value))
  end
end)

fpslabel.TextColor3 = Color3.fromRGB(255, 255, 255)
fpslabel.TextSize = 14.000

uselesslabelthree.Name = "uselesslabelthree"
uselesslabelthree.Parent = madebybloodofbatus
uselesslabelthree.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
uselesslabelthree.BackgroundTransparency = 1.000
uselesslabelthree.Position = UDim2.new(0.506917477, 0, 0.352585167, 0)
uselesslabelthree.Size = UDim2.new(0, 26, 0, 24)
uselesslabelthree.Font = Enum.Font.SourceSans
uselesslabelthree.Text = ""
uselesslabelthree.TextColor3 = Color3.fromRGB(255, 255, 255)
uselesslabelthree.TextSize = 14.000

pinglabel.Name = "pinglabel"
pinglabel.Parent = madebybloodofbatus
pinglabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
pinglabel.BackgroundTransparency = 1.000
pinglabel.Position = UDim2.new(0.1, 0, 0.371578127, 0)
pinglabel.Size = UDim2.new(0, 55, 0, 24)
pinglabel.Font = Enum.Font.SourceSans
pinglabel.Text = game.Players.LocalPlayer.Name
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
uselesslabelfour.Text = ""
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

repeat task.wait(1) until game.Workspace.Characters:FindFirstChild(game.Players.LocalPlayer.Name

game:GetService("Players").LocalPlayer.PlayerGui.TouchGui:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.ContextActionGui:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.ShopButton:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.MenuButton:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.InventoryButton:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.StatsButton:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.Settings:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.Mute:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.HomeButton:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.CrewButton:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.AlliesButton:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.Code:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.DynamicTopBar:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.Compass:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.Shop:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.InventoryContainer:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.Stats:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.Crew:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.Allies:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.Stars:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.Enchants:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.CelebrationShop:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.Confirm:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.Level:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.Fragments:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.Beli:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.BottomHUDList:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.Craft:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.Enegry:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.FruitInventory:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.Colors:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.AwakeningToggler:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.RaceEnegry:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.Gateway:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.FruitShop:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.Fire:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.Trade:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.Skills:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.Quest:Destroy()
game.Players.LocalPlayer.PlayerGui.Main.Titles:Destroy()
game.Players.LocalPlayer.PlayerGui.MobileMouseLock:Destroy()
game:GetService("ReplicatedStorage").Effect.Container:Destroy()
game:GetService("ReplicatedStorage").FX:Destroy()
game:GetService("ReplicatedStorage").Assets:Destroy()

task.spawn(function()
    while task.wait(1) do
        if not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Warrior Helmet")
            break
        end
    end
end)

local AFKDelayCheck = 300
task.spawn(function()
    local PlayerAbcdf = game.Players.LocalPlayer
    local currentBountyAbcdf = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
    print("Current Bounty:", currentBountyAbcdf)
    while true do
        wait(AFKDelayCheck)
        print("Checking Bounty")
        if PlayerAbcdf then
            local newBountyAbcdf = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
            if (newBountyAbcdf == currentBountyAbcdf and currentBountyAbcdf > 1) then
                print("Bounty Is Stucked, Server Hopping...")
                game.Players.LocalPlayer:Kick("Detected Not Killing/AFK, Server Hopping...")
            else
                currentBountyAbcdf = newBountyAbcdf
            end
        end
    end
end)
