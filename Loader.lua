task.spawn(function()    
    game:GetService("GuiService").ErrorMessageChanged:Connect(function()
        wait (0.1) game:GetService("TeleportService"):Teleport(game.PlaceId)
            end);
        end)

task.spawn(function()
    while task.wait(1800) do
        game:Shutdown()
    end
end)

task.spawn(function()
    while task.wait(900) do
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
end)

repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
task.wait()

getgenv().config = {
    ["Team"] = "Pirates",
    ["FPS Boost"] = false,
    ["LocalPlayer"] = {
        ["Ken Haki"] = true,
        ["Invisible"] = true,
        ["Click Delay"] = 0.35,
        ["Panic Mode"] = {
            ["Skip Player"] = true,
            ["Run"] = 4500,
            ["Max"] = 5000,
        }
    },
    ["settings"] = {
        ["White Screen"] = true,
        ["Region_Hop"] = {
            ["Enabled"] = true,
            ["Value"] = "United States"
        },
        ["Webhook"] = {
            ["Enabled"] = true,
            ["URL"] = {
                ["Discord"] = "https://discord.com/api/webhooks/1198957951172476968/9C1Wklj3x7WthwBmx7K88V3rheltSDfl7Xswj8JUME5rD8VlWQoyg35pBPujLvkbsaDq",
                ["Thumbnail"] = "https://r2.easyimg.io/xk94bq20f/b731f097-b9c9-4e72-a542-e47ecfa44475.jpeg"
            }
        },
        ["Chatkill"] = {
            ["Enabled"] = false,
            ["Text"] = {
                ""
            }
        },
        ["FPS Locker"] = {
            ["Enabled"] = false,
            ["Value"] = 12
        },
        ["Bounty Lock"] = {
            ["Enabled"] = false,
            ["Value"] = 30000000
        },
        ["Ignore"] = {
            ["Buddha Users"] = false,
            ["Portal Users"] = true,
            ['Some Annoying V4'] = true,
        },
        ["Stats"] = {
            ["Auto Reset Stat If Doesnt Match"] = false,
            ["Points"] = "Sword"
        },
    },
    ["Skills"] = {
        ["Melee"] = {
            ["Time"] = 1.85,
            ["Enabled"] = true,
            ["Z"] = {["Enabled"] = true, ["HoldTime"] = 0.75},
            ["X"] = {["Enabled"] = true, ["HoldTime"] = 0},
            ["C"] = {["Enabled"] = true, ["HoldTime"] = 0}
        },
        ["Fruit"] = {
            ["Time"] = 1,
            ["Enabled"] = false,
            ["Z"] = {["Enabled"] = true, ["HoldTime"] = 1.75},
            ["X"] = {["Enabled"] = true, ["HoldTime"] = 0},
            ["C"] = {["Enabled"] = true, ["HoldTime"] = 0},
            ["V"] = {["Enabled"] = true, ["HoldTime"] = 0},
            ["F"] = {["Enabled"] = true, ["HoldTime"] = 0}
        },
        ["Sword"] = {
            ["Time"] = 0.5,
            ["Enabled"] = true,
            ["Z"] = {["Enabled"] = true, ["HoldTime"] = 0.1},
            ["X"] = {["Enabled"] = true, ["HoldTime"] = 0.5},
        },
        ["Gun"] = {
            ["Time"] = 1.112,
            ["Enabled"] = false,
            ["GunMode"] = true,
            ["Z"] = {["Enabled"] = true, ["HoldTime"] = 0},
            ["X"] = {["Enabled"] = true, ["HoldTime"] = 0},
        }
    }
};

-- Auto-Bounty
task.spawn(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/PhamBaAnh08/LuaU/main/Blox%20Fruits/AutoBounty/Loader.lua"))()
end)

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

game.Workspace.Map:Remove()
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
                if v.Name == ("CurvedRing") or v.Name == ("SlashHit") or v.Name == ("SwordSlash") or v.Name == ("SlashTail") then --or v.Name == ("Sounds")
                    v:Remove()
                end
            end)
        end
    end
end)

task.spawn(function()
    while task.wait(1) do
        if not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
            task.wait(0.1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Warrior Helmet")
            task.wait(0.1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Buddy Sword")
            break
        end
    end
end)

-- Check If Auto-Bounty Is Loaded
repeat
    task.wait()
    if not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
        break
    end
    wait(1)
until not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")
task.wait(1)

-- Track Stat

getgenv().Hermanos_Settings = {
    ['key'] = '4a97a4c2-cac7-46ff-8009-332ccf4caef6',

    ['PC'] = '1',
    ['Sword'] = {'',},
    ['Fruit'] = {'Kitsune'},
}
task.spawn(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/hermanos-dev/hermanos-script/main/script.lua'))() end)

-- Teleport To Sea3
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")

-- Better Vision

task.spawn(function()
	while task.wait(0.5) do
		game.Players.LocalPlayer.PlayerGui.Main.Compass.Visible = false
		game.Players.LocalPlayer.PlayerGui.Main.CrewButton.Visible = false
	end
end)
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
task.spawn(function()
    game.Players.LocalPlayer.PlayerGui.ContextActionGui.Enabled = false
end)

delay(20, function()
    if getgenv().ScriptExecuted then
        return;
    end

    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId)
end)

local CurrentStatus = "Heavily Modified By Ayna Shiratori"

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
uselesslabelone.Text = CurrentStatus
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
