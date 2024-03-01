FrameRateBoost = true

getgenv().SpamSkill = false
getgenv().AutoUseRaceV3 = false
getgenv().AutoUseRacev4 = false
getgenv().SpamSkillOnRaceV4 = false
getgenv().Invisible = true
getgenv().InCombatNoReset = false
getgenv().Team = "Pirates"
getgenv().TweenSpeed = 350
 getgenv().Setting = {
        ["Melee"] = {["Enable"] = true, ["Delay"] = 3,
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
task.spawn(function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/vinhuchi/temp-repos/main/FreeAutoBounty.lua'))()
end)

task.wait(0.1)
task.spawn(function()
  repeat task.wait() until game.PlaceId ~= nil and game.JobId ~= nil
  game:GetService("NetworkClient").ChildRemoved:Connect(function()
  game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
  end)
end)

task.wait(0.1)
local vu = game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
    vu:CaptureController()
    vu:ClickButton2(Vector2.new())
end)

task.wait(0.1)
for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
  v:Disable()
end

task.wait(0.1)
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

function UnInvisibleObject()
    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if (v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart")) and v.Transparency then
            v.Transparency = 0
        end
    end
end

task.spawn(function()
    if FrameRateBoost then
        task.wait(0.1)
        game.Players.LocalPlayer.PlayerScripts.WaterCFrame.Disabled = true
        task.wait(0.1)
        game:GetService("Lighting"):ClearAllChildren()
        task.wait(0.1)
        TextureLow()
        task.wait(0.1)
        WaterRemove()
        task.wait(0.1)
        ObjectRemove()
        task.wait(0.1)
        InvisibleObject()
    end
end)

task.wait(0.1)
settings().Rendering.QualityLevel = "1"
task.wait(0.1)
UserSettings():GetService("UserGameSettings").MasterVolume = 0
task.wait(0.1)
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat,false)
task.wait(0.1)
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
task.wait(0.1)
game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
task.wait(0.1)
game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
task.wait(0.1)
game.Players.LocalPlayer.PlayerGui.TopbarPlus.Enabled = false
task.wait(0.1)
game:GetService("Players").LocalPlayer.PlayerGui.TouchGui:Destroy()
task.wait(0.1)
game:GetService("Players").LocalPlayer.PlayerGui.MobileMouselock:Destroy()
task.wait(0.1)
game.Players.LocalPlayer.PlayerGui.Main.DynamicTopBar:Destroy()
task.wait(0.1)
game:GetService("ReplicatedStorage").Effect.Container:Remove()
task.wait(0.1)
game:GetService("ReplicatedStorage").ClientWeapons:Remove()
task.wait(0.1)
game:GetService("ReplicatedStorage").FX:Remove()
task.wait(0.1)
game:GetService("ReplicatedStorage").Assets:Remove()

task.wait(0.1)
task.spawn(function()
	while task.wait(1) do
		game.Players.LocalPlayer.PlayerGui.Main.Compass.Visible = false
		game.Players.LocalPlayer.PlayerGui.Main.CrewButton.Visible = false
	end
end)

task.wait(0.1)
task.spawn(function()
    while task.wait(1) do
        if not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
            task.wait(0.1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
            task.wait(0.1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Warrior Helmet")
            break
        end
    end
end)

task.wait(0.1)
if getgenv().AntiAfkExecuted and thisoneissocoldww then
	task.wait(0.1)
	game.CoreGui.thisoneissocoldww:Destroy()
	task.wait(0.1)
	getgenv().AntiAfkExecuted = false
	task.wait(0.1)
	getgenv().zamanbaslaticisi = false
	task.wait(0.1)
	UnInvisibleObject()
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

thisoneissocoldww.IgnoreGuiInset = true

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
DestroyButton.Text = "[]"
DestroyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DestroyButton.TextSize = 14.000

DestroyButton.MouseButton1Click:connect(function()	
	game:GetService("RunService"):Set3dRenderingEnabled(true)
	UnInvisibleObject()
	getgenv().AntiAfkExecuted = false
	thisoneissocoldww:Destroy()
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
fpslabel.Text = "Loading..."
fpslabel.TextColor3 = Color3.fromRGB(255, 255, 255)
fpslabel.TextSize = 14.000

uselesslabelthree.Name = "uselesslabelthree"
uselesslabelthree.Parent = madebybloodofbatus
uselesslabelthree.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
uselesslabelthree.BackgroundTransparency = 1.000
uselesslabelthree.Position = UDim2.new(0.506917477, 0, 0.352585167, 0)
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

task.wait(0.1)
local AFKDelayCheck = 600
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

local saniye = 0
local dakika = 0
local saat = 0
getgenv().zamanbaslaticisi = true
task.spawn(function()
	while true do
		if getgenv().zamanbaslaticisi then
			saniye = saniye + 1
			wait(1)
		end --if zaman baslaticisi end
		if saniye >= 60 then
			saniye = 0
			dakika = dakika + 1
		end --if saniye 60 end
		if dakika >= 60 then
			dakika = 0
			saat = saat + 1
		end --if dakika 60 end
		timerlabel.Text = saat..":"..dakika..":"..saniye
	end
end)

local function SelectTeam()
    local ChooseTeam = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ChooseTeam", true)
    local UIController = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("UIController", true)

    if UIController and ChooseTeam then
        for i, v in pairs(getgc()) do
            if type(v) == "function" and getfenv(v).script == UIController then
                local constant = getconstants(v)
                if constant[1] == getgenv().Team and #constant == 1 then
                    v(getgenv().Team)
                end
            end
        end
    end
end

task.wait(15)
repeat
    task.wait()
    if not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
        break
    end

    local success, errorMessage = pcall(SelectTeam)
    if not success then
        warn("Error in SelectTeam function: " .. errorMessage)
    end

    wait(1)
until game.Players.LocalPlayer.PlayerGui.ContextActionGui and game:IsLoaded()

task.wait(1)
game.Players.LocalPlayer.PlayerGui.ScreenGui.Eanbled = false
task.wait(0.1)
game:GetService("CoreGui").SGStats.Enabled = false
task.wait(0.1)
game.Players.LocalPlayer.PlayerGui.ContextActionGui:Destroy()
task.wait(0.1)
game.Players.LocalPlayer.PlayerGui.Backpack.Enabled = false
task.wait(0.1)
game.Players.LocalPlayer.PlayerGui.Main.ShopButton.Visible = false
task.wait(0.1)
game.Players.LocalPlayer.PlayerGui.Main.Settings.Visible = false
task.wait(0.1)
game.Players.LocalPlayer.PlayerGui.Main.Mute.Visible = false
task.wait(0.1)
game.Players.LocalPlayer.PlayerGui.Main.HomeButton.Visible = false
task.wait(0.1)
game.Players.LocalPlayer.PlayerGui.Main.AlliesButton.Visible = false
task.wait(0.1)
game.Players.LocalPlayer.PlayerGui.Main.Code.Visible = false
task.wait(0.1)
game.Players.LocalPlayer.PlayerGui.Main.Shop.Visible = false
task.wait(0.1)
game.Players.LocalPlayer.PlayerGui.Main.InventoryContainer.Visible = false
task.wait(0.1)
game.Players.LocalPlayer.PlayerGui.Main.Stats.Visible = false
task.wait(0.1)
game.Players.LocalPlayer.PlayerGui.Main.Allies.Visible = false
task.wait(0.1)
game.Players.LocalPlayer.PlayerGui.Main.Beli.Visible = false
task.wait(0.1)
game.Players.LocalPlayer.PlayerGui.Main.Fragments.Visible = false
task.wait(0.1)
game.Players.LocalPlayer.PlayerGui.Main.Level.Visible = false
task.wait(0.1)
game.Players.LocalPlayer.PlayerGui.Main.MenuButton.Visible = false
task.wait(0.1)
game.Players.LocalPlayer.PlayerGui.Main.Energy.Visible = false
task.wait(0.1)
game.Players.LocalPlayer.PlayerGui.Main.InCombat.TextTransparency = 1
task.wait(0.1)
game.Players.LocalPlayer.PlayerGui.Main.InCombat.Bottom.TextTransparency = 1
