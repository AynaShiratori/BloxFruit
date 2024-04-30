local DeviceName = AynaShiratori["Device Name"]
local ScriptKey = AynaShiratori["Script Key"]
local Misc = AynaShiratori["Misc"]
local StatusUIEnabled = Misc["Status UI"]
local YummyTrackStatEnabled = Misc["Yummy Track Stat"]
local SelectTeam = Misc["Select Team"]
local Performance = AynaShiratori["Performance"]
local TimeWaitToRejoin = Performance["Time Wait To Rejoin"]
local WhiteScreenEnabled = Performance["White Screen"]
local FullyFPSBoosterEnabled = Performance["Fully FPS Booster"]
local FullyRemovePlayerGuiEnabled = Performance["Fully Remove Player Gui"]
local FullyRemoveCoreGuiEnabled = Performance["Fully Remove Core Gui"]
local FullyRemoveDeltaExecutorGuiEnabled = Performance["Fully Remove Delta Executor Gui"]

if not ScriptKey == "Ayna Shiratori 1" then
    game.Players.LocalPlayer:Kick("Invalid Key")
end

if getgenv().AynaShiratoriExecuted then return end
getgenv().AynaShiratoriExecuted = true

-- Godx Auto Bounty Settings
getgenv().AccountFilter = {
    ["Enabled"] = false,
    ["Accounts"] = {"account_name_here"}
}

getgenv().config = {
    ["Team"] = "Pirates",
    ["FPS Boost"] = false,
    ["LocalPlayer"] = {
        ["Ken Haki"] = true, ["Invisible"] = false, ["Click Delay"] = 0.05,
        ["Panic Mode"] = {["Skip Player"] = true, ["Run"] = 3500, ["Max"] = 4500}
    },
    ["settings"] = {
        ["Cam Farm"] = true,
        ["White Screen"] = false,
        ["Region_Hop"] = {["Enabled"] = true, ["Value"] = "United States"},
        ["Webhook"] = {["Enabled"] = true, ["URL"] = {["Discord"] = "https://discord.com/api/webhooks/1225439439464173568/IhEF4e3jRGIW8C33tHfWI_CC_7M-vKnsGDBRm5IiVj2sgNozkulBbrCIkfNxh_cRI6Vk", ["Thumbnail"] = "https://r2.easyimg.io/xk94bq20f/b731f097-b9c9-4e72-a542-e47ecfa44475.jpeg"}},
        ["Chatkill"] = {["Enabled"] = true, ["Text"] = {"gg btw why did u run lol?"}},
        ["FPS Locker"] = {["Enabled"] = true, ["Value"] = 9999},
        ["Bounty Lock"] = {["Enabled"] = false, ["Value"] = 30000000},
        ["Ignore"] = {["Buddha Users"] = false, ["Portal Users"] = true, ['Some Annoying V4'] = false},
        ["Stats"] = {["Auto Reset Stat If Doesnt Match"] = false, ["Points"] = "Sword"},
    },
    ["Skills"] = {
        ["Melee"] = {["Time"] = 3, ["Enabled"] = true,
            ["Z"] = {["Enabled"] = true, ["HoldTime"] = 0.2}, 
            ["X"] = {["Enabled"] = true, ["HoldTime"] = 0.1},
            ["C"] = {["Enabled"] = true, ["HoldTime"] = 2}
        },
        ["Fruit"] = {["Time"] = 4, ["Enabled"] = true,
            ["Z"] = {["Enabled"] = true, ["HoldTime"] = 2}, 
            ["X"] = {["Enabled"] = true, ["HoldTime"] = 0},
            ["C"] = {["Enabled"] = true, ["HoldTime"] = 0}, 
            ["V"] = {["Enabled"] = true, ["HoldTime"] = 0},
            ["F"] = {["Enabled"] = true, ["HoldTime"] = 0}
        },
        ["Sword"] = {["Time"] = 0, ["Enabled"] = false,
            ["Z"] = {["Enabled"] = false, ["HoldTime"] = 0},
            ["X"] = {["Enabled"] = false, ["HoldTime"] = 0},
        },
        ["Gun"] = {["Time"] = 0, ["Enabled"] = false, ["GunMode"] = false,
            ["Z"] = {["Enabled"] = false, ["HoldTime"] = 0},
            ["X"] = {["Enabled"] = false, ["HoldTime"] = 0},
        }
    }
}

-- Yummy Track Stat
_G.Config = {
    UserID = "ca09d152-b7da-4218-950a-bed3c622fb2d",
    discord_id = 986156689285861376,
    Note = DeviceName,
}

-- Create Main Folders To Store Stuffs
if not isfolder("AynaShiratori") then
    makefolder("AynaShiratori")
end
if not isfolder("AynaShiratori/HasTomoeRing") then
    makefolder("AynaShiratori/HasTomoeRing")
end
if not isfolder("AynaShiratori/HasGodhuman") then
    makefolder("AynaShiratori/HasGodhuman")
end
if not isfolder("AynaShiratori/HasMagmaFruit") then
    makefolder("AynaShiratori/HasMagmaFruit")
end
if not isfolder("AynaShiratori/IsFarmingMagmaFruitMastery") then
    makefolder("AynaShiratori/IsFarmingMagmaFruitMastery")
end
if not isfolder("AynaShiratori/HasMagmaFruitAllSkillsUnlocked") then
    makefolder("AynaShiratori/HasMagmaFruitAllSkillsUnlocked")
end
if not isfolder("AynaShiratori/IsAutoBounty") then
    makefolder("AynaShiratori/IsAutoBounty")
end
if not isfolder("AynaShiratori/ResetStats") then
    makefolder("AynaShiratori/ResetStats")
end
if not isfolder("AynaShiratori/StatsCombo") then
    makefolder("AynaShiratori/StatsCombo")
end
if not isfolder("AynaShiratori/IsEverythingDone") then
    makefolder("AynaShiratori/IsEverythingDone")
end

local OSDateStringToFormat = "%x %X"
local OsDateResult = os.date(OSDateStringToFormat)

local RefundStatCode = {	
	"SUB2GAMERROBOT_RESET1",
	"KITT_RESET",
	"Sub2UncleKizaru"
}

-- Current Status
local CurrentStatus = "Heavily Modified By Ayna Shiratori"
if StatusUIEnabled then
    task.spawn(function()
        task.wait(2)
        while true do
            if game.PlaceId == 2753915549 then
                CurrentStatus = "Current Sea Is Sea 1. Teleporting To Sea 2"
                break
            elseif game.PlaceId == 4442272183 then
                CurrentStatus = "Current Sea Is Sea 2. Teleporting to Sea 3"
                break
            end
            task.wait(1)
            if not game.Players.LocalPlayer.Data.Level.Value == 2550 then
                CurrentStatus = "Level Is Not Maxed"
                break
            end
            task.wait(1)
            if isfile("AynaShiratori/HasTomoeRing/" .. game.Players.LocalPlayer.Name .. ".txt") and not isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") then
                if getgenv().HasTomoeRing then return end
                getgenv().HasTomoeRing = true
                CurrentStatus = "Found Tomoe Ring"
            else
                if not isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") then
                    CurrentStatus = "!!! Missing Tomoe Ring !!!"
                    break
                end
            end
            task.wait(1)
            if isfile("AynaShiratori/HasGodhuman/" .. game.Players.LocalPlayer.Name .. ".txt") and not isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") then
                if getgenv().HasGodhuman then return end
                getgenv().HasGodhuman = true
                CurrentStatus = "Found Godhuman"
            else
                if not isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") then
                    CurrentStatus = "!!! Missing Godhuman !!!"
                    break
                end
            end
            task.wait(1)
            if isfile("AynaShiratori/HasMagmaFruit/" .. game.Players.LocalPlayer.Name .. ".txt") and not isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") then
                if getgenv().HasMagmaFruit then return end
                getgenv().HasMagmaFruit = true
                CurrentStatus = "Found Magma Fruit"
            else
                if not isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") then
                    CurrentStatus = "!!! Missing Magma Fruit !!!"
                    break
                end
            end
            task.wait(1)
            if not isfile("AynaShiratori/HasMagmaFruitAllSkillsUnlocked/" .. game.Players.LocalPlayer.Name .. ".txt") and isfile("AynaShiratori/IsFarmingMagmaFruit/" .. game.Players.LocalPlayer.Name .. ".txt") then
                if getgenv().HasMagmaFruitAllSkillsUnlocked then return end
                getgenv().HasMagmaFruitAllSkillsUnlocked = true
                CurrentStatus = "Farming Magma Fruit To Lv.140 Mastery"
            end
            task.wait(1)
            if isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") and not isfile("AynaShiratori/IsEverythingDone/" .. game.Players.LocalPlayer.Name .. ".txt") then
                if getgenv().IsAutoBounty then return end
                getgenv().IsAutoBounty = true
                CurrentStatus = "Doing Auto Bounty"
            end
            task.wait(1)
            if isfile("AynaShiratori/IsEverythingDone/" .. game.Players.LocalPlayer.Name .. ".txt") then
                CurrentStatus = "Everything Is Done"
                break
            end
        end
    end)
end

-- UI
task.spawn(function()
    while task.wait(1) do
        if StatusUIEnabled then
            if FullyRemovePlayerGui then
                repeat task.wait(1) until getgenv().FullyRemovePlayerGui == true
            else
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
                task.spawn(function()
                    while task.wait(1) do
                        DisplayedSeconds = DisplayedSeconds + 1
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
                        task.wait(1)
                        local ping = tonumber(game:GetService("Stats"):FindFirstChild("PerformanceStats").Ping:GetValue())
                        ping = math.floor(ping)
                        uselesslabelfour.Text = game.Players.LocalPlayer.Name .. " " .. ping
                    until pinglabel == nil
                end)
                break
            end
        end
    end
end)

-- Better Vision
if FullyRemovePlayerGuiEnabled then
    task.spawn(function()
        game:GetService("Players").LocalPlayer.PlayerGui.TouchGui:Destroy()
        local CameraShake = require(game.ReplicatedStorage.Util.CameraShaker)
        task.spawn(function()
            CameraShake:Stop()
        end)
        -- Remove Godx Auto Bounty Ui
        task.spawn(function()
            while task.wait() do
                if game.Players.LocalPlayer.PlayerGui:FindFirstChild("BountyTracker") then
                    game.Players.LocalPlayer.PlayerGui.BountyTracker.Enabled = false
                    break
                end
            end
        end)
        for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
            if v:IsA("ScreenGui") then
                v.Enabled = false
            end
        end
        for i, v in pairs(game:GetService("StarterGui"):GetChildren()) do
            if v:IsA("ScreenGui") then
                v.Enabled = false
            end
        end
        while task.wait() do
            if game.Players.LocalPlayer.PlayerGui:FindFirstChild("ContextActionGui") then
                game.Players.LocalPlayer.PlayerGui.ContextActionGui:Destroy()
                break
            end
        end
        getgenv().FullyRemovePlayerGui = true
    end)
end

if FullyRemoveCoreGuiEnabled then
    for i, v in pairs(game:GetService("CoreGui"):GetChildren()) do
        if v:IsA("ScreenGui") then
            v.Enabled = false
        end
    end
else
    game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat,false)
    game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList,false)
end


if FullyRemoveDeltaExecutorGuiEnabled then
    task.spawn(function()
        game.CoreGui.Delta.Enabled = false
        game.CoreGui.DeltaIcons.Enabled = false
    end)
end

function LoadGodxAutoBounty()
    task.spawn(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LeNguyenBaoPhuc/BloxFruits/main/Bounty.lua"))()
    end)
end

function LoadMbmHub()
    task.spawn(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/m1M-Plqer819/any/main/mbmxhub/0135"))()
    end)
end

function LoadMbmHubFruitMasteryFarmConfig()
    if not isfolder("MBM_HUB") then
        makefolder("MBM_HUB")
    end
    
    if not isfolder("MBM_HUB/settings") then
        makefolder("MBM_HUB/settings")
    end
    
    writefile("MBM_HUB/settings/autoload.txt", 's')
    writefile("MBM_HUB/settings/s.json", '{"objects":[{"idx":"SliderPosY","type":"Slider","value":"15"},{"idx":"SliderHealt","type":"Slider","value":"35"},{"idx":"ToggleLaw","type":"Toggle","value":false},{"idx":"ToggleBone","type":"Toggle","value":false},{"idx":"ToggleIsland","type":"Toggle","value":false},{"idx":"ToggleAutoT","type":"Toggle","value":false},{"idx":"ToggleCollectAzure","type":"Toggle","value":false},{"idx":"ToggleF","type":"Toggle","value":false},{"idx":"ToggleRandomBone","type":"Toggle","value":false},{"idx":"ToggleHoly","type":"Toggle","value":false},{"idx":"SliderPosX","type":"Slider","value":"15"},{"idx":"ToggleDe","type":"Toggle","value":false},{"idx":"ToggleStore","type":"Toggle","value":false},{"idx":"SelectedPly","type":"Dropdown","mutli":false,"value":"oaLzUvajSBa"},{"idx":"ToggleAutoY","type":"Toggle","value":false},{"idx":"ToggleBringMob","type":"Toggle","value":true},{"idx":"ToggleTushita","type":"Toggle","value":false},{"idx":"ToggleFruit","type":"Toggle","value":false},{"idx":"ToggleV","type":"Toggle","value":true},{"idx":"ToggleCake","type":"Toggle","value":false},{"idx":"ToggleHakiColor","type":"Toggle","value":false},{"idx":"DropdownMastery","type":"Dropdown","mutli":false,"value":"BF - Near Mobs"},{"idx":"ToggleKillAura","type":"Toggle","value":false},{"idx":"ToggleQuanSat","type":"Toggle","value":false},{"idx":"ToggleEspPlayer","type":"Toggle","value":false},{"idx":"ToggleAwake","type":"Toggle","value":false},{"idx":"ToggleYama","type":"Toggle","value":false},{"idx":"ToggleNocliprock","type":"Toggle","value":false},{"idx":"DropdownDelayAttack","type":"Dropdown","mutli":false,"value":"0.1"},{"idx":"ToggleMasteryFruit","type":"Toggle","value":true},{"idx":"ToggleC","type":"Toggle","value":true},{"idx":"ToggleSpawnCake","type":"Toggle","value":false},{"idx":"ToggleSafeM","type":"Toggle","value":true},{"idx":"ToggleEspFruit","type":"Toggle","value":false},{"idx":"DropdownMaterial","type":"Dropdown","mutli":false,"value":"Conjured Cocoa"},{"idx":"Togglelockmoon","type":"Toggle","value":false},{"idx":"DropdownFruit","type":"Dropdown","mutli":false,"value":"Rocket-Rocket"},{"idx":"ToggleElite","type":"Toggle","value":false},{"idx":"Togglehakiqs","type":"Toggle","value":false},{"idx":"ToggleWhite","type":"Toggle","value":false},{"idx":"SliderPosZ","type":"Slider","value":"25"},{"idx":"ToggleCollectTP","type":"Toggle","value":false},{"idx":"ToggleTweenGear","type":"Toggle","value":false},{"idx":"ToggleEnablePvp","type":"Toggle","value":false},{"idx":"ToggleBypassTP","type":"Toggle","value":true},{"idx":"ToggleRejoin","type":"Toggle","value":true},{"idx":"ToggleBuy","type":"Toggle","value":false},{"idx":"SliderSpeedBoat","type":"Slider","value":"250"},{"idx":"ToggleAutoW","type":"Toggle","value":false},{"idx":"ToggleAutotrialafterkill","type":"Toggle","value":false},{"idx":"ToggleEspFlower","type":"Toggle","value":false},{"idx":"DropdownRaid","type":"Dropdown","mutli":false,"value":"Flame"},{"idx":"ToggleMaterial","type":"Toggle","value":false},{"idx":"TogglePLH","type":"Toggle","value":false},{"idx":"ToggleSword","type":"Toggle","value":false},{"idx":"SpeedBoat_Toggle","type":"Toggle","value":false},{"idx":"ToggleSailBoat","type":"Toggle","value":false},{"idx":"ToggleX","type":"Toggle","value":true},{"idx":"ToggleTweenMirageIsland","type":"Toggle","value":false},{"idx":"ToggleMobAura","type":"Toggle","value":false},{"idx":"shopaholic","type":"Dropdown","mutli":false,"value":"geppo"},{"idx":"ToggleFastAttack","type":"Toggle","value":true},{"idx":"ToggleGun","type":"Toggle","value":false},{"idx":"ToggleShark","type":"Toggle","value":false},{"idx":"ToggleAutotrial","type":"Toggle","value":false},{"idx":"ToggleNextIsland","type":"Toggle","value":false},{"idx":"DropdownSelectWeapon","type":"Dropdown","mutli":false,"value":"Melee"},{"idx":"ToggleZ","type":"Toggle","value":true},{"idx":"ToggleCollect","type":"Toggle","value":false},{"idx":"ToggleAutoFarmBoss","type":"Toggle","value":false},{"idx":"ToggleStart","type":"Toggle","value":false},{"idx":"ToggleCastleRaid","type":"Toggle","value":false},{"idx":"shopaholicsss","type":"Dropdown","mutli":false,"value":"Pole v2"},{"idx":"DropdownBoss","type":"Dropdown","mutli":false,"value":"Stone"},{"idx":"ToggleWalkOnWater","type":"Toggle","value":true},{"idx":"ToggleEspIsland","type":"Toggle","value":false},{"idx":"ToggleTPKitsune","type":"Toggle","value":false},{"idx":"Toggleblack","type":"Toggle","value":false},{"idx":"ToggleRemoveNotify","type":"Toggle","value":false},{"idx":"DropdownIsland","type":"Dropdown","mutli":false,"value":"Mansion"},{"idx":"ToggleGetFruit","type":"Toggle","value":false},{"idx":"ToggleRandomFruit","type":"Toggle","value":false},{"idx":"ToggleHallow","type":"Toggle","value":false},{"idx":"ToggleNoClip","type":"Toggle","value":false},{"idx":"ToggleTeleport","type":"Toggle","value":false},{"idx":"ToggleTerrorshark","type":"Toggle","value":false},{"idx":"ToggleMelee","type":"Toggle","value":false},{"idx":"ToggleLevel","type":"Toggle","value":false}]}')
end

-- Choose Team Pirate
function ChooseTeam()
    local ChooseTeam = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ChooseTeam", true)
    local UIController = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("UIController", true)

    if UIController and ChooseTeam then
        for i, v in pairs(getgc()) do
            if type(v) == "function" and getfenv(v).script == UIController then
                local constant = getconstants(v)
                if constant[1] == SelectTeam and #constant == 1 then
                    v(SelectTeam)
                end
            end
        end
    end

    repeat
        task.wait()
        if not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
            break
        end
        task.wait(1)
    until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
end

-- Better Performance While Auto Bounty Or Auto Farm Mastery
function FullyFPSBooster()
    if FullyFPSBoosterEnabled then
        task.spawn(function()
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
            task.spawn(function()
                if isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") then
                    game.Workspace.Enemies:Remove()
                    game.Workspace.NPCs:Remove()
                end
            end)
            game.Workspace.SeaBeasts:Remove()
            game.Workspace.SeaEvents:Remove()
            game.Workspace.Boats:Remove()
            game.Workspace.Leaderboards:Remove()

            game.ReplicatedStorage["Effect"].Container:Remove()
            game.ReplicatedStorage["FXCreator"]:Remove()
            game.ReplicatedStorage["ObjectHighlighter"]:Remove()
            game.ReplicatedStorage["ObservationManager"]:Remove()
            game.ReplicatedStorage["Quests"]:Remove()
            game.ReplicatedStorage["Queue"]:Remove()
            game.ReplicatedStorage["DialoguesList"]:Remove()
            game.ReplicatedStorage["PvPBoosts"]:Remove()
            game.ReplicatedStorage["Worlds"]:Remove()
            game.ReplicatedStorage["Icon"]:Remove()
            game.ReplicatedStorage["Wrapper"]:Remove()
            game.ReplicatedStorage["DamageCounter"]:Remove()
            game.ReplicatedStorage["Raids"]:Remove()
            game.ReplicatedStorage["Shop"]:Remove()
            game.ReplicatedStorage["Pool"]:Remove()
            game.ReplicatedStorage["CustomCollisions"]:Remove()
            game.ReplicatedStorage["SkyMovement"]:Remove()
            game.ReplicatedStorage["CharacterTransparency"]:Remove()
            game.ReplicatedStorage["Harpoon"]:Remove()
            game.ReplicatedStorage["SmartBone"]:Remove()
            game.ReplicatedStorage["IsPointInsideShipBounds"]:Remove()
            game.ReplicatedStorage["RaidTest_"]:Remove()
            game.ReplicatedStorage["Mochi-Mochi"]:Remove()
            game.ReplicatedStorage["Dragon"]:Remove()
            game.ReplicatedStorage["RumbleV2"]:Remove()
            game.ReplicatedStorage["FX"]:Remove()
            game.ReplicatedStorage["Cache2"]:Remove()
            game.ReplicatedStorage["BeastHealthScaler"]:Remove()
            game.ReplicatedStorage["ClientComponents"]:Remove()
            game.ReplicatedStorage["Controllers"]:Remove()
            game.ReplicatedStorage["Modules"]:Remove()
            game.ReplicatedStorage["Types"]:Remove()
            game.ReplicatedStorage["BusoTemplate"]:Remove()
            game.ReplicatedStorage["Assets"]:Remove()
            game.ReplicatedStorage["BeastCooldownScaler"]:Remove()
            game.ReplicatedStorage["Common"]:Remove()
            game.ReplicatedStorage["PlayerDodged"]:Remove()
            game.ReplicatedStorage["PlayerSkyJumped"]:Remove()
            game.ReplicatedStorage["Ope-Ope"]:Remove()
            game.ReplicatedStorage["PlayerJumpAttempted"]:Remove()
            game.ReplicatedStorage["Cache"]:Remove()
            game.ReplicatedStorage["TopbarPlusReference"]:Remove()

            game:GetService("Workspace"):WaitForChild("Terrain").WaterReflectance = 0
            game:GetService("Workspace"):WaitForChild("Terrain").WaterTransparency = 1
            game:GetService("Workspace"):WaitForChild("Terrain").WaterWaveSize = 0
            game:GetService("Workspace"):WaitForChild("Terrain").WaterWaveSpeed = 0
        
            game:GetService("Lighting").Brightness = 999
            game:GetService("Lighting").GlobalShadows = false
            game:GetService("Lighting").FogEnd = 9e100
            game:GetService("Lighting").FogStart = 0
            
            sethiddenproperty(game:GetService("Lighting"), "Technology", 2)
            sethiddenproperty(game:GetService("Workspace"):WaitForChild("Terrain"), "Decoration", false)
            
            local function ClearTextures(v)
                if v:IsA("BasePart") and not v:IsA("MeshPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                    v.Transparency = 1
                elseif (v:IsA("Decal") or v:IsA("Texture")) then
                    v.Transparency = 1
                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Lifetime = NumberRange.new(0)
                elseif v:IsA("Explosion") then
                    v.BlastPressure = 1
                    v.BlastRadius = 1
                elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                    v.Enabled = false
                elseif v:IsA("MeshPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                    v.TextureID = 10385902758728957
                elseif v:IsA("SpecialMesh")  then
                    v.TextureId = 0
                elseif v:IsA("ShirtGraphic") then
                    v.Graphic = 1
                elseif (v:IsA("Shirt") or v:IsA("Pants")) then
                    v[v.ClassName .. "Template"] = 1
                elseif v.Name == "Foilage" and v:IsA("Folder") then
                    v:Destroy()
                elseif string.find(v.Name, "Tree") or string.find(v.Name, "Water") or string.find(v.Name, "Bush") or string.find(v.Name, "grass") then
                    task.wait()
                    v:Destroy()
                end
            end
        
            game:GetService("Lighting"):ClearAllChildren()
        
            for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                ClearTextures(v)
            end
        
            game:GetService("Workspace").DescendantAdded:Connect(function(v)
                ClearTextures(v)
            end)
        end)
    end
end

function CheckItem(ah)
    for k, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
        if v.Name == ah then
            return v
        end
    end
end

-- Do White Screen
if WhiteScreenEnabled then
    game:GetService("RunService"):Set3dRenderingEnabled(false)
end

-- Auto Reconnect
task.spawn(function()
    local lp,po,ts = game:GetService('Players').LocalPlayer,game.CoreGui.RobloxPromptGui.promptOverlay,game:GetService('TeleportService')
    po.ChildAdded:connect(function(a)
        if a.Name == 'ErrorPrompt' and not isfile("AynaShiratori/IsEverythingDone/" .. game.Players.LocalPlayer.Name .. ".txt") then
            repeat
                ts:Teleport(game.PlaceId)
                task.wait(2)
            until false
        end
    end)
end)

-- Rejoin After Spectify Minute In Setting
task.spawn(function()
    while task.wait(TimeWaitToRejoin) do
        game.Players.LocalPlayer:Kick("It's Been Past " .. TimeWaitToRejoin/60 .. "Minutes " .. "Rejoining")
    end
end)

-- Anti AFK 1
game:service'Players'.LocalPlayer.Idled:connect(function()
    game:service'VirtualUser':CaptureController()
    game:service'VirtualUser':ClickButton2(Vector2.new())
end)

-- Wait Until Game Is Loaded
repeat task.wait(1) until game:IsLoaded() and game.Players.LocalPlayer:FindFirstChild("PlayerGui") and game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main") and game.Players.LocalPlayer.PlayerGui.Main.Loading.Visible == false

-- Do Redeem Refund Stat Code To Reset Stat To Add Point Stats Combo
function RedeemCode(value)
	(game:GetService("ReplicatedStorage")).Remotes.Redeem:InvokeServer(value)
end
task.spawn(function()
    if not isfile("AynaShiratori/StatsCombo/" .. game.Players.LocalPlayer.Name .. ".txt") then
        for i, v in pairs(RefundStatCode) do
            RedeemCode(v)
        end
    end
end)

-- If Haven't Reset Stats Then Do Reset Stats
task.spawn(function()
    while task.wait(1) do
        if isfile("AynaShiratori/ResetStats/" .. game.Players.LocalPlayer.Name .. ".txt") then
            break
        end
        if not isfile("AynaShiratori/ResetStats/" .. game.Players.LocalPlayer.Name .. ".txt") and not isfile("AynaShiratori/StatsCombo/" .. game.Players.LocalPlayer.Name .. ".txt") then
            repeat task.wait(1) until not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")
            task.wait(0.1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("redeemRefundPoints","Refund Points")
            task.wait(0.1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
            task.wait(0.1)
            writefile("AynaShiratori/ResetStats/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
        end
    end
end)

-- Do Add Points
task.spawn(function()
    repeat task.wait(1) until not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",2549)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",2549)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",2549)   
end)

-- Check If Has Godhuman, Magma Fruit And Magma Fruit All Skills Unlocked
task.spawn(function()
    while task.wait(1) do
        if isfile("AynaShiratori/HasGodhuman/" .. game.Players.LocalPlayer.Name .. ".txt") and isfile("AynaShiratori/HasMagmaFruit/" .. game.Players.LocalPlayer.Name .. ".txt") and isfile("AynaShiratori/HasMagmaFruitAllSkillsUnlocked/" .. game.Players.LocalPlayer.Name .. ".txt") then
            break
        end
        if not isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") and not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
            if not isfile("AynaShiratori/HasTomoeRing/" .. game.Players.LocalPlayer.Name .. ".txt") then
                TomoeRing = CheckItem("Tomoe Ring")
                if not TomoeRing then
                    TomoeRing = CheckItem("Tomoe Ring")
                end
                if TomoeRing then
                    writefile("AynaShiratori/HasTomoeRing/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
                end
            end
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
                writefile("AynaShiratori/HasGodhuman/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
            end
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Magma-Magma") then
                writefile("AynaShiratori/HasMagmaFruit/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
            end
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Magma-Magma") and game.Players.LocalPlayer.Backpack:FindFirstChild("Magma-Magma").Level.Value >= 140 or game.Players.LocalPlayer.Character:FindFirstChild("Magma-Magma") and game.Players.LocalPlayer.Character:FindFirstChild("Magma-Magma").Level.Value >= 140 then
                writefile("AynaShiratori/HasMagmaFruitAllSkillsUnlocked/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
            end  
        end
    end
end)

-- If Has Tomoe Ring. Godhuman And Magma Fruit Then Start Auto Farm Mastery For Magma Fruit All Skills
task.spawn(function()
    while task.wait(1) do
        if isfile("AynaShiratori/IsFarmingMagmaFruitMastery/" .. game.Players.LocalPlayer.Name .. ".txt") then
            break
        end
        if not isfile("AynaShiratori/IsFarmingMagmaFruitMastery/" .. game.Players.LocalPlayer.Name .. ".txt") and not isfile("AynaShiratori/HasMagmaFruitAllSkillsUnlocked/" .. game.Players.LocalPlayer.Name .. ".txt") and isfile("AynaShiratori/HasTomoeRing/" .. game.Players.LocalPlayer.Name .. ".txt") and isfile("AynaShiratori/HasGodhuman/" .. game.Players.LocalPlayer.Name .. ".txt") and isfile("AynaShiratori/HasMagmaFruit/" .. game.Players.LocalPlayer.Name .. ".txt") then
            writefile("AynaShiratori/IsFarmingMagmaFruitMastery/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
            game.Players.LocalPlayer:Kick("Found Gothuman And Magma Fruit. Starting Auto Farm Mastery For Magma Fruit All Skills")
        end
    end
end)

-- If Has Tomoe Ring, Godhuman And Magma Fruit All Skills Unlocked Then Do Auto Bounty
task.spawn(function()
    while task.wait(1) do
        if isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") then
            break
        end
        if isfile("AynaShiratori/HasTomoeRing/" .. game.Players.LocalPlayer.Name .. ".txt") and isfile("AynaShiratori/HasGodhuman/" .. game.Players.LocalPlayer.Name .. ".txt") and isfile("AynaShiratori/HasMagmaFruit/" .. game.Players.LocalPlayer.Name .. ".txt") and isfile("AynaShiratori/HasMagmaFruitAllSkillsUnlocked/" .. game.Players.LocalPlayer.Name .. ".txt") then
            writefile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
            task.wait(0.1)
            game.Players.LocalPlayer:Kick("Found Tomoe Ring, GodHuman And Magma Fruit All Skills Unlocked. Starting Auto Bounty")
        end
    end
end)

-- If Is Everything Done Then Purchase Rocket Fruit, Store Item Tomoe Ring And Purchase Godhuman To Hide Auto Bounty Build
if isfile("AynaShiratori/IsEverythingDone/" .. game.Players.LocalPlayer.Name .. ".txt") then
    ChooseTeam()
    repeat task.wait(1) until not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit","Rocket-Rocket",false)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreItem","Tomoe Ring")
    if game.Players.LocalPlayer.Backpack:FindFirstChild("Rocket-Rocket") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
            game.Players.LocalPlayer:Kick("Reached 30M Bounty | Username: " ..  game.Players.LocalPlayer.Name)
        end
    end
end

-- Check If Bounty Has Reached Amount Of Bounty To Kick Then writefile IsEverythingDone
task.spawn(function()
    while task.wait(1) do
        if isfile("AynaShiratori/IsEverythingDone/" .. game.Players.LocalPlayer.Name .. ".txt") then
            break
        end
        if isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") and not isfile("AynaShiratori/IsEverythingDone/" .. game.Players.LocalPlayer.Name .. ".txt") and game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value >= 10050000 then
            writefile("AynaShiratori/IsEverythingDone/" .. game.Players.LocalPlayer.Name .. ".txt" .. OsDateResult)
        end
    end
end)

-- Small Performance
settings().Rendering.QualityLevel = "1"
-- UserSettings():GetService("UserGameSettings").MasterVolume = 0

-- If Current Sea Is Sea 1 Then Teleport To Sea 3 Or If Current Sea Is Sea 2 Then Teleport To Sea 3
if game.PlaceId == 2753915549 and isfile("AynaShiratori/HasTomoeRing/" .. game.Players.LocalPlayer.Name .. ".txt") then
    ChooseTeam()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
elseif game.PlaceId == 4442272183 and isfile("AynaShiratori/HasTomoeRing/" .. game.Players.LocalPlayer.Name .. ".txt") then
    ChooseTeam()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end

-- The Start Of Everything
if not isfile("AynaShiratori/HasGodhuman/" .. game.Players.LocalPlayer.Name .. ".txt") or not isfile("AynaShiratori/HasMagmaFruit/" .. game.Players.LocalPlayer.Name .. ".txt") then
    ChooseTeam()
end

-- Purchase Tomoe Ring
if not isfile("AynaShiratori/HasTomoeRing/" .. game.Players.LocalPlayer.Name .. ".txt") then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    if game.PlaceId == 2753915549 then
        ChooseTeam()
        task.spawn(function()
            while task.wait(1) do
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
                if isfile("AynaShiratori/HasTomoeRing/" .. game.Players.LocalPlayer.Name .. ".txt") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                end
            end
        end)
    end
end

-- Do Mbm Hub Magma Fruit Auto Farm Mastery
if isfile("AynaShiratori/IsFarmingMagmaFruitMastery/" .. game.Players.LocalPlayer.Name .. ".txt") and not isfile("AynaShiratori/HasMagmaFruitAllSkillsUnlocked/" .. game.Players.LocalPlayer.Name .. ".txt") and not isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") and not isfile("AynaShiratori/IsEverythingDone/" .. game.Players.LocalPlayer.Name .. ".txt") then
    ChooseTeam()
    LoadMbmHubFruitMasteryFarmConfig()
    LoadMbmHub()
end

-- Do Auto Bounty Also Load Build To Do Auto Bounty
task.spawn(function()
    if isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") and not isfile("AynaShiratori/IsEverythingDone/" .. game.Players.LocalPlayer.Name .. ".txt") then
        FullyFPSBooster()
        LoadGodxAutoBounty()
        repeat task.wait(1) until not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")
        -- Do Mouse Locking To The Middle Center Of The Screen
        mousemoveabs(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2.3)
        task.wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Tomoe Ring")
        task.wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
    end
end)

-- Check If Auto-Bounty Is Not Loaded Then Rejoin
task.spawn(function()
    while task.wait(90) do
        if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
            break
        end
        if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") and isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") and not isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") then
            game.Players.LocalPlayer:Kick("Detected Auto Bounty Not Loaded. Rejoining")
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

if YummyTrackStatEnabled then
    task.spawn(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/skadidau/unfazedfree/main/trackstatblox"))()
    end)
end
