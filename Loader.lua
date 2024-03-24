getgenv().Team = "Pirates"
getgenv().config = {
    ["Team"] = "Pirates",
    ["FPS Boost"] = false,
    ["LocalPlayer"] = {["Ken Haki"] = true, ["Invisible"] = true, ["Click Delay"] = 0,
        ["Panic Mode"] = {["Skip Player"] = true, ["Run"] = 3500, ["Max"] = 5000,}
    },
    ["settings"] = {
	    ["Cam Farm"] = true,
        ["White Screen"] = false,
        ["Region_Hop"] = {["Enabled"] = true, ["Value"] = "United States"},
        ["Webhook"] = {["Enabled"] = true, ["URL"] = {["Discord"] = "https://discord.com/api/webhooks/1219654507131306065/OUoF012Jdkj_rMtl1-1q4so-hnEhud6pP8fnY1GJk_OVts4XgknlXt6ebqUkUUbl8BJs", ["Thumbnail"] = "https://r2.easyimg.io/xk94bq20f/b731f097-b9c9-4e72-a542-e47ecfa44475.jpeg"}},
        ["Chatkill"] = {["Enabled"] = true, ["Text"] = {"gg btw why did u run lol"}},
        ["FPS Locker"] = {["Enabled"] = false, ["Value"] = 12},
        ["Bounty Lock"] = {["Enabled"] = false, ["Value"] = 30000000},
        ["Ignore"] = {["Buddha Users"] = false, ["Portal Users"] = true, ['Some Annoying V4'] = true,},
        ["Stats"] = {["Auto Reset Stat If Doesnt Match"] = false, ["Points"] = "Sword"},
    },
    ["Skills"] = {
        ["Melee"] = {["Time"] = 3, ["Enabled"] = true,
            ["Z"] = {["Enabled"] = true, ["HoldTime"] = 0.5}, ["X"] = {["Enabled"] = true, ["HoldTime"] = 0.1},
            ["C"] = {["Enabled"] = true, ["HoldTime"] = 0.5}
        },
        ["Fruit"] = {["Time"] = 1.75, ["Enabled"] = false,
            ["Z"] = {["Enabled"] = true, ["HoldTime"] = 1}, ["X"] = {["Enabled"] = true, ["HoldTime"] = 0},
            ["C"] = {["Enabled"] = true, ["HoldTime"] = 0}, ["V"] = {["Enabled"] = true, ["HoldTime"] = 0},
            ["F"] = {["Enabled"] = true, ["HoldTime"] = 0}
        },
        ["Sword"] = {["Time"] = 0, ["Enabled"] = false,
            ["Z"] = {["Enabled"] = false, ["HoldTime"] = 0}, ["X"] = {["Enabled"] = false, ["HoldTime"] = 0},
        },
        ["Gun"] = {["Time"] = 0, ["Enabled"] = false, ["GunMode"] = false,
            ["Z"] = {["Enabled"] = false, ["HoldTime"] = 0}, ["X"] = {["Enabled"] = false, ["HoldTime"] = 0},
        }
    }
}

task.spawn(function()
  repeat task.wait() until game.PlaceId ~= nil and game.JobId ~= nil
  game:GetService("NetworkClient").ChildRemoved:Connect(function()
  game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
  end)
end)

-- Rejoin After 15 Minutes
task.spawn(function()
    while task.wait(900) do
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
end)

-- Wait Until Game Is Loaded
game:GetService("RunService"):Set3dRenderingEnabled(false)
repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");

-- Better Performance While Auto Bounty
settings().Rendering.QualityLevel = "1"
UserSettings():GetService("UserGameSettings").MasterVolume = 0
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat,false)
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
local CameraShake = require(game.ReplicatedStorage.Util.CameraShaker)
CameraShake:Stop()
game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
game.Players.LocalPlayer.PlayerGui.TopbarPlus.Enabled = false
game.Players.LocalPlayer.PlayerGui.Main.DynamicTopBar:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.TouchGui:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.MobileMouselock:Destroy()

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
    game.Players.LocalPlayer.PlayerScripts.EnhancementVisual.Disabled = true
end)
for i,v in pairs(game:GetService("Workspace").Map:GetDescendants()) do
    if (v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart")) then
        v:Remove()
    end
end
game.Workspace.Enemies:Remove()
game.Workspace.SeaBeasts:Remove()
game.Workspace.SeaEvents:Remove()
game.Workspace.Boats:Remove()
game.Workspace.Leaderboards:Remove()
game:GetService("ReplicatedStorage").Effect.Container:Remove()
task.spawn(function()
    game:GetService("ReplicatedStorage").FX:Remove()
end)
game:GetService("ReplicatedStorage").Assets:Remove()
game:GetService("ReplicatedStorage").ClientWeapons:Remove()

-- Remove Effects
task.spawn(function()
    while task.wait() do
        for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
            pcall(function()
                if v.Name == ("CurvedRing") or v.Name == ("SlashHit") or v.Name == ("SwordSlash") or v.Name == ("SlashTail") then
                    v:Remove()
                end
            end)
        end
    end
end)

-- Remove Godx Auto Bounty Ui
task.spawn(function()
    while task.wait() do
        if game.Players.LocalPlayer.PlayerGui:FindFirstChild("BountyTracker") then
            game.Players.LocalPlayer.PlayerGui.BountyTracker:Destroy()
            break
        end
    end
end)

loadstring(game:HttpGet(("https://raw.githubusercontent.com/LeNguyenBaoPhuc/BloxFruits/main/Bounty.lua")))()

CurrentStatus = "Heavily Modifed By Ayna Shiratori"
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
task.spawn(function()
    while task.wait() do
        uselesslabelone.Text = CurrentStatus
    end
end)
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
uselesslabelfour.Text = "Loading..."

uselesslabelfour.TextColor3 = Color3.fromRGB(255, 255, 255)
uselesslabelfour.TextSize = 14.000

-- FPS
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

-- TimerTracker
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

-- Ping
task.spawn(function()
	repeat
		wait(1)
		local ping = tonumber(game:GetService("Stats"):FindFirstChild("PerformanceStats").Ping:GetValue())
		ping = math.floor(ping)
		uselesslabelfour.Text = game.Players.LocalPlayer.Name .. " " .. ping
	until pinglabel == nil
end)
