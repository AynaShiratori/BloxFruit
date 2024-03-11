repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
task.wait(3)

-- Better Performance
game:GetService("RunService"):Set3dRenderingEnabled(false)
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
    game.Players.LocalPlayer.PlayerScripts.EnhancementVisual.Disabled = true
end)

function ObjectRemove()
    for i,v in pairs(game:GetService("Workspace").Map:GetDescendants()) do
        if (v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart")) then
            v:Remove()
        end
    end
end

task.spawn(function()
    if not IsAutoBounty() then
        ObjectRemove()
    end
end)

task.wait(2)

getgenv().Team = "Pirates"
getgenv().FixCrash = true
getgenv().FixCrash2 = true
getgenv().ForceUseSilentAim = false

CurrentStatus = "Loading..."
CurrentSea = ""

if game.PlaceId == 2753915549 then
	CurrentSea = "Sea 1"
elseif game.PlaceId == 4442272183 then
	CurrentSea = "Sea 2"
elseif game.PlaceId == 7449423635 then
	CurrentSea = "Sea 3"
end

local fileName1 = "Main/IsSea1/" .. game.Players.LocalPlayer.Name .. ".txt"
local fileName2 = "Main/IsSea3/" .. game.Players.LocalPlayer.Name .. ".txt"
local fileName3 = "Main/HasBuddySword/" .. game.Players.LocalPlayer.Name .. ".txt"
local fileName4 = "Main/HasGodhuman/" .. game.Players.LocalPlayer.Name .. ".txt"
local fileName5 = "Main/IsFarmingBuddySwordMastery/" .. game.Players.LocalPlayer.Name .. ".txt"
local fileName6 = "Main/HasBuddySwordAllSkillsUnlocked/" .. game.Players.LocalPlayer.Name .. ".txt"
local fileName7 = "Main/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt"
local fileName8 = "Main/ResetStats/" .. game.Players.LocalPlayer.Name .. ".txt"
local fileName9 = "Main/StatsCombo/" .. game.Players.LocalPlayer.Name .. ".txt"
local fileName10 = "Main/IsGettingBuddySword/" .. game.Players.LocalPlayer.Name .. ".txt"

local MyLevelAsd = game.Players.LocalPlayer.Data.Level.Value
local MeleeStat = game.Players.localPlayer.Data.Stats.Melee.Level.Value
local DefenseStat = game.Players.localPlayer.Data.Stats.Defense.Level.Value
local SwordStat = game.Players.localPlayer.Data.Stats.Sword.Level.Value

local LocalPlayerAsd = game.Players.LocalPlayer
if LocalPlayerAsd then
    if not isfolder("Main") then
        makefolder("Main")
    end
    if not isfolder("Main/IsSea1") then
        makefolder("Main/IsFindingFruit")
    end
    if not isfolder("Main/IsSea3") then
        makefolder("Main/IsSea3")
    end
    if not isfolder("Main/HasBuddySword") then
        makefolder("Main/HasBuddySword")
	end
    if not isfolder("Main/HasGodhuman") then
        makefolder("Main/HasGodhuman")
	end
    if not isfolder("Main/IsFarmingBuddySwordMastery") then
        makefolder("Main/IsFarmingBuddySwordMastery")
	end
    if not isfolder("Main/HasBuddySwordAllSkillsUnlocked") then
        makefolder("Main/HasBuddySwordAllSkillsUnlocked")
	end
    if not isfolder("Main/IsAutoBounty") then
        makefolder("Main/IsAutoBounty")
	end
    if not isfolder("Main/ResetStats") then
        makefolder("Main/ResetStats")
	end
    if not isfolder("Main/StatsCombo") then
        makefolder("Main/StatsCombo")
	end
    if not isfolder("Main/IsGettingBuddySword") then
        makefolder("Main/IsGettingBuddySword")
	end
else
    print("Failed To Make Main Folders")
end

local function IsSea1()
    local success, fileContent = pcall(readfile, fileName1)  -- Read the file content
    return success and fileContent ~= nil
end

local function IsSea3()
    local success, fileContent = pcall(readfile, fileName2)  -- Read the file content
    return success and fileContent ~= nil
end

local function HasBuddySword()
    local success, fileContent = pcall(readfile, fileName3)  -- Read the file content
    return success and fileContent ~= nil
end

local function HasGodhuman()
    local success, fileContent = pcall(readfile, fileName4)  -- Read the file content
    return success and fileContent ~= nil
end

local function IsFarmingBuddySwordMastery()
    local success, fileContent = pcall(readfile, fileName5)  -- Read the file content
    return success and fileContent ~= nil
end

local function HasBuddySwordAllSkillsUnlocked()
    local success, fileContent = pcall(readfile, fileName6)  -- Read the file content
    return success and fileContent ~= nil
end

local function IsAutoBounty()
    local success, fileContent = pcall(readfile, fileName7)  -- Read the file content
    return success and fileContent ~= nil
end

local function ResetStats()
    local success, fileContent = pcall(readfile, fileName8)  -- Read the file content
    return success and fileContent ~= nil
end

local function StatsCombo()
    local success, fileContent = pcall(readfile, fileName9)  -- Read the file content
    return success and fileContent ~= nil
end

local function IsGettingBuddySword()
    local success, fileContent = pcall(readfile, fileName10)  -- Read the file content
    return success and fileContent ~= nil
end

function LoadWazureBuddySwordMasteryConfig()
  loadstring(game:HttpGet("https://gist.githubusercontent.com/AynaShiratori/d43f5f4b7e4925a354e9635e5920abd1/raw/64acfa3b2f66480e1d5224ba6df3a27b5e3d0eab/LoadWazureBuddySwordMasteryConfig"))()
end

function LoadWazureAutoGetBuddySwordConfig()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/AynaShiratori/9bf7c2bfbafcd9b863de21122e9db8e1/raw/5496493b4c543eac9a7bde7d279130303360b8ed/LoadWazureAutoGetBuddySwordConfig"))()
end

function loadstringWazure()
	task.spawn(function()
		loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
	end)
end

function loadstringSynergyAutoBounty()
	loadstring(game:HttpGet("https://gist.githubusercontent.com/AynaShiratori/7d99aaa65fad94103efdaaa25718e583/raw/802b164d5c830e062ea581db333aa683d431428d/SynergyTalonBuddy"))()
end

function loadstringFPSBoost2()
	loadstring(game:HttpGet("https://gist.githubusercontent.com/AynaShiratori/fe649e8f976b85985d317d050af1eeb9/raw/be8e2488214000367aeab01da2387dffc3b46b16/FPSBoost2"))()
end

function ChooseTeam()
	loadstring(game:HttpGet("https://gist.githubusercontent.com/AynaShiratori/1753c889c3be4c41853a847c81f15c8e/raw/b3c71ff6b1fad5a2820dbba699e6cee45ee89fdc/ChooseTeam"))()
end

function AddPointMeleeDefenseSword()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",2550)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",2550)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",2550)
end

function ServerHop()
	loadstring(game:HttpGet("https://gist.github.com/AynaShiratori/b812f351a6e6d5db3924f25e3d208ca3/raw/ff07e9c53951ad73496a57b6f1d08b188031bc5f/ServerHop"))()
end

local RefundStatCode = {	
	"SUB2GAMERROBOT_RESET1",
	"KITT_RESET",
	"Sub2UncleKizaru"
}
function RedeemCode(value)
	(game:GetService("ReplicatedStorage")).Remotes.Redeem:InvokeServer(value)
end
task.spawn(function()
	for i, v in pairs(RefundStatCode) do
		RedeemCode(v)
	end
end)

task.spawn(function()
    while task.wait(1) do
        if not ResetStats() and not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("redeemRefundPoints","Refund Points")
            task.wait(0.1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")         
            writefile(fileName8, "Reset Stats")
            break
        end
    end
end)

task.spawn(function()
    while task.wait(1) do
        if not StatsCombo() and not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
            AddPointMeleeDefenseSword()
            break
        end
    end
end)

task.spawn(function()
    while task.wait(1) do
        if not StatsCombo() and MeleeStat >= 2550 and DefenseStat >= 2550 and SwordStat >= 2550 and not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
            writefile(filename9, "Melee Defense Sword")
            break
        end
    end
end)

task.spawn(function()
    while task.wait(1) do
        if not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") and not HasGodhuman() then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
            break
        end
    end
end)

task.spawn(function()
    while not HasGodhuman() do task.wait(1)
        pcall(function()
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
        writefile(fileName4, "Has Godhuman")
        game.Players.LocalPlayer:Kick("Break. Got Godhuman, Rejoining...")
            end
        end)
    end
end)

task.spawn(function()
    while not HasBuddySword() do task.wait(1)
        pcall(function()
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Buddy Sword") then
        writefile(fileName3, "Has Buddy Sword")
            end
        end)
    end
end)

task.spawn(function()
    while not HasBuddySword() and not IsGettingBuddySword() do task.wait(10)
        pcall(function()
            if not game.Players.LocalPlayer.Backpack:FindFirstChild("Buddy Sword") then
        writefile(fileName10, "Is Getting Buddy Sword")
        game.Players.LocalPlayer:Kick("Break. Missing Buddy Sword, Server Hopping To Find Boss For Buddy Sword")
            end
        end)
    end
end)

task.spawn(function()
    if IsGettingBuddySword() and not HasBuddySword() then
        loadstringFPSBoost2()
        task.wait(1)
        LoadWazureAutoGetBuddySwordConfig()
        task.wait(1)
        loadstringWazure()
        task.wait(90)
        ServerHop()
    end
end)

task.spawn(function()
    while task.wait(1) do
        if MyLevelAsd == 2550 and not IsFarmingBuddySwordMastery() and HasGodhuman() and HasBuddySword() then
            writefile(fileName5, "Is Farming Buddy Sword Mastery")
            game.Players.LocalPlayer:Kick("Break. Got Godhuman And Buddy Sword, Farming Buddy Sword Mastery...")
            break
        end
    end
end)

task.spawn(function()
    while not HasBuddySwordAllSkillsUnlocked() do task.wait(1)
        pcall(function()
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Buddy Sword") and game.Players.LocalPlayer.Backpack:FindFirstChild("Buddy Sword").Level.Value >= 300 or game.Players.LocalPlayer.Character:FindFirstChild("Buddy Sword") and game.Players.LocalPlayer.Character:FindFirstChild("Buddy Sword").Level.Value >= 300 then
        writefile(fileName6, "Has Buddy Sword All Skills Unlocked")
            end
        end)
    end
end)

if IsFarmingBuddySwordMastery() and not IsAutoBounty() then
  loadstringFPSBoost2()
  task.wait(1)
  LoadWazureBuddySwordMasteryConfig()
  task.wait(1)
  loadstringWazure()
end

task.spawn(function()
    while task.wait(1) do
        if HasBuddySwordAllSkillsUnlocked() and not IsAutoBounty() then
            writefile(fileName7, "IsAutoBounty")
            game.Players.LocalPlayer:Kick("Break. Got Godhuman And Buddy Sword All Skills Unlocked, Doing Auto Bounty.")
            break
        end
    end
end)

task.spawn(function()
	if IsAutoBounty() then
		print("Loading Synergy Auto Bounty")
		loadstringSynergyAutoBounty()
	end
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

-- If Current Sea Is Sea 1 Then Teleport To Sea2

if game.PlaceId == 2753915549 then
    ChooseTeam()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end

-- If Current Sea Is Sea 2 Then Teleport To Sea3

if game.PlaceId == 4442272183 then
    ChooseTeam()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end

-- Equip Melee Dragon Talon, Buddy Sword And Warrior Helmet

task.spawn(function()
    while task.wait(1) do
        if not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
            task.wait(0.1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Warrior Helmet")
            task.wait(0.1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Buddy Sword")
            break
        end
    end
end)

-- Status

if game.PlaceId == 2753915549 then
    CurrentStatus = "Teleporting To Sea 2"
end

if game.PlaceId == 4442272183 then
    CurrentStatus = "Teleporting To Sea 3"
end

if not MyLevelAsd == 2550 then
    CurrentStatus = "!!! Current Level Is Not Maxed !!!"
end

if not HasBuddySword() then
    CurrentStatus = "Getting Buddy Sword"
end

if not HasGodhuman() then
    CurrentStatus = "!!! Missing Godhuman !!!"
end

if IsFarmingBuddySwordMastery() and not IsAutoBounty() then
    CurrentStatus = "Farming Buddy Sword To 300 Mastery"
end

if IsAutoBounty() then
    CurrentStatus = "Doing Auto Bounty"
end

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
uselesslabelfour.Text = game.Players.LocalPlayer.Name .. " " .. CurrentSea

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
