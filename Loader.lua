local DeviceName = AynaShiratori["Device Name"]
local ScriptKey = AynaShiratori["Script Key"]
local Misc = AynaShiratori["Misc"]
local StatusUIEnabled = Misc["Status UI"]
local YummyTrackStatEnabled = Misc["Yummy Track Stat"]
local SelectTeam = Misc["Select Team"]
local WebhooksLogsEnabled = Misc["Webhooks Logs"]
local Performance = AynaShiratori["Performance"]
local FPSLockEnabled = Performance["FPS Lock"]
local TimeWaitToRejoin = Performance["Time Wait To Rejoin"]
local WhiteScreenEnabled = Performance["White Screen"]
local FullyFPSBoosterEnabled = Performance["Fully FPS Booster"]
local FullyRemovePlayerGuiEnabled = Performance["Fully Remove Player Gui"]
local FullyRemoveCoreGuiEnabled = Performance["Fully Remove Core Gui"]
local FullyRemoveWazureScriptGuiEnabled = Performance["Fully Remove Wazure Script Gui"]

if not ScriptKey == "Ayna Shiratori 1" then
    game.Players.LocalPlayer:Kick("Invalid Key")
end

-- Wazure Settings
script_key = "WinPShtjsOjPMYIuyeldlfhLfxJtkDWo"
getgenv().Team = "Pirates"
getgenv().WeaponsSetting = {
    ["Melee"] = {
        ["Enable"] = true,
        ["Delay"] = 3, 
        ["SwitchNextWeaponIfCooldown"] = true,
        ["Skills"] = {
            ["Z"] = {
                ["Enable"] = true,
                ["NoPredict"] = false,
                ["HoldTime"] = 0.11,
                ["TimeToNextSkill"] = 0,
            },
        [ "X"] = {
                ["Enable"] = true,
                ["HoldTime"] = 0.14,
                ["TimeToNextSkill"] = 0,
            },

            ["C"] = {
                ["Enable"] = true,
                ["HoldTime"] = 0.8,
                ["TimeToNextSkill"] = 0,
            },
        },
    },
    ["Blox Fruit"] = {
        ["Enable"] = true,
        ["Delay"] = 4,
        ["SwitchNextWeaponIfCooldown"] = true,
        ["Skills"] = {
            ["Z"] = {
                ["Enable"] = true,
                ["HoldTime"] = 2,
                ["TimeToNextSkill"] = 0,
            },
            ["X"] = {
                ["Enable"] = true,
                ["HoldTime"] = 0.3,
                ["TimeToNextSkill"] = 0,
            },

            ["C"] = {
                ["Enable"] = true,
                ["HoldTime"] = 0.3,
                ["TimeToNextSkill"] = 0,
            },
            ["V"] = {
                ["Enable"] = true,
                ["HoldTime"] = 0.3,
                ["TimeToNextSkill"] = 0,
            },
            ["F"] = {
                ["Enable"] = true,
                ["HoldTime"] = 0,
                ["TimeToNextSkill"] = 0,
            },
        },
    },
    ["Sword"] = {
        ["Enable"] = false,
        ["Delay"] = 0.5,
        ["Skills"] = {
            ["Z"] = {
                ["Enable"] = true,
                ["HoldTime"] = 1.2,
                ["TimeToNextSkill"] = 0,
            },
            ["X"] = {
                ["Enable"] = true,
                ["HoldTime"] = 0.5,
                ["TimeToNextSkill"] = 0,
            },
        },
    },
    ["Gun"] = {
        ["Enable"] = false,
        ["Delay"] = 0.5,
        ["Skills"] = {
            ["Z"] = {
                ["Enable"] = false,
                ["HoldTime"] = 0.1,
                ["TimeToNextSkill"] = 0,
            },
            ["X"] = {
                ["Enable"] = true,
                ["HoldTime"] = 0.1,
                ["TimeToNextSkill"] = 0,
            },
        },
    },
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
if not isfolder("AynaShiratori/IsReadyToChangeAccount") then
    makefolder("AynaShiratori/IsReadyToChangeAccount")
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
    if StatusUIEnabled then
        if FullyRemovePlayerGuiEnabled or FullyRemoveCoreGuiEnabled then
            repeat task.wait() until getgenv().FullyRemovePlayerGuiExecuted == true
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
        end
    end
end)

-- Better Vision
if FullyRemovePlayerGuiEnabled then
    task.spawn(function()
        task.spawn(function()
            game:GetService("Players").LocalPlayer.PlayerGui.TouchGui:Destroy()
        end)
        local CameraShake = require(game.ReplicatedStorage.Util.CameraShaker)
        task.spawn(function()
            CameraShake:Stop()
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
        getgenv().FullyRemovePlayerGuiExecuted = true
    end)
end

if FullyRemoveCoreGuiEnabled then
    for i, v in pairs(game:GetService("CoreGui"):GetChildren()) do
        if v:IsA("ScreenGui") then
            v.Enabled = false
        end
    end
    getgenv().FullyRemoveCoreGuiExecuted = true
else
    game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat,false)
    game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList,false)
end

if FullyRemoveWazureScriptGuiEnabled then
    task.spawn(function()
        while task.wait() do
            if game.CoreGui:FindFirstChild("ScreenGui") then
                game.CoreGui.ScreenGui:Destroy()
            end
            if game.CoreGui:FindFirstChild("HUHU") then
                game.CoreGui.HUHU:Destroy()
                getgenv().FullyRemoveWazureScriptGuiExecuted = true
                break
            end
        end
    end)
end

function LoadWazureAutoBounty()
    task.spawn(function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/b6d24ef1f7dab9c7b22f259a3db6c47e.lua"))()
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
            task.spawn(function()
                game.Workspace["_WorldOrigin"]["Foam;"]:Remove()
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

function SendAutoReconnectInfo()
    local MessagesToSend = {
        ['content'] = "Device: " .. DeviceName .. " | " .. "Username: " .. game.Players.LocalPlayer.Name .. " " .. DateTime.now():ToIsoDate(),
    }
    local success, webMessage = pcall(function()
        game:GetService("HttpService"):PostAsync("https://discord.com/api/webhooks/1227587404135665704/zuhlkCKekjohRm-Fuvemq31lvRJR_uEmNjCDXKIIyTWhj-NgbBqqEoJSUruGdqHT4h26", game:GetService("HttpService"):JSONEncode(MessagesToSend))
    end)
    if success == false then
        local response = request({
            Url = "https://discord.com/api/webhooks/1227587404135665704/zuhlkCKekjohRm-Fuvemq31lvRJR_uEmNjCDXKIIyTWhj-NgbBqqEoJSUruGdqHT4h26",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = game:GetService("HttpService"):JSONEncode(MessagesToSend)
        })
    end
end

function SendIsAfkInfo()
    local MessagesToSend = {
        ['content'] = "Device: " .. DeviceName .. " | " .. "Username: " .. game.Players.LocalPlayer.Name .. " " .. DateTime.now():ToIsoDate(),
    }
    local success, webMessage = pcall(function()
        game:GetService("HttpService"):PostAsync("https://discord.com/api/webhooks/1227588314849218640/U1kzcrh-a2obKsAtIwjtsgBoZB7gVQ6wJm1ZDtK8dW7UBDQeVQXu3AanRUIVeGjQIZZa", game:GetService("HttpService"):JSONEncode(MessagesToSend))
    end)
    if success == false then
        local response = request({
            Url = "https://discord.com/api/webhooks/1227588314849218640/U1kzcrh-a2obKsAtIwjtsgBoZB7gVQ6wJm1ZDtK8dW7UBDQeVQXu3AanRUIVeGjQIZZa",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = game:GetService("HttpService"):JSONEncode(MessagesToSend)
        })
    end
end

function SendBountyIsNotChangedInfo()
    local MessagesToSend = {
        ['content'] = "Device: " .. DeviceName .. " | " .. "Username: " .. game.Players.LocalPlayer.Name .. " " .. DateTime.now():ToIsoDate(),
    }
    local success, webMessage = pcall(function()
        game:GetService("HttpService"):PostAsync("https://discord.com/api/webhooks/1227587608243081216/Qtag0oAcTP1pVC8QBb85_8GzcKTkQ9NFtO-MeMyWVA3VPAaCeR-vBn9b62LZTItqPbYf", game:GetService("HttpService"):JSONEncode(MessagesToSend))
    end)
    if success == false then
        local response = request({
            Url = "https://discord.com/api/webhooks/1227587608243081216/Qtag0oAcTP1pVC8QBb85_8GzcKTkQ9NFtO-MeMyWVA3VPAaCeR-vBn9b62LZTItqPbYf",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = game:GetService("HttpService"):JSONEncode(MessagesToSend)
        })
    end
end

function SendNotHasGodhumanInfo()
    local MessagesToSend = {
        ['content'] = "Device: " .. DeviceName .. " | " .. "Username: " .. game.Players.LocalPlayer.Name .. " " .. DateTime.now():ToIsoDate(),
    }
    local success, webMessage = pcall(function()
        game:GetService("HttpService"):PostAsync("https://discord.com/api/webhooks/1227588777552121876/4C05_IY07edLi-tZiS5ySIfsmgyzkgTLVRIZdZFb8_ssRIqHlpI1-9DWsMlzOE1RMUrD", game:GetService("HttpService"):JSONEncode(MessagesToSend))
    end)
    if success == false then
        local response = request({
            Url = "https://discord.com/api/webhooks/1227588777552121876/4C05_IY07edLi-tZiS5ySIfsmgyzkgTLVRIZdZFb8_ssRIqHlpI1-9DWsMlzOE1RMUrD",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = game:GetService("HttpService"):JSONEncode(MessagesToSend)
        })
    end
end

function SendNotHasMagmaFruitInfo()
    local MessagesToSend = {
        ['content'] = "Device: " .. DeviceName .. " | " .. "Username: " .. game.Players.LocalPlayer.Name .. " " .. DateTime.now():ToIsoDate(),
    }
    local success, webMessage = pcall(function()
        game:GetService("HttpService"):PostAsync("https://discord.com/api/webhooks/1236651456539529326/R-o3ZFOMiK6ZdFWO3wmgMsA7QPUr7N_HT3yT9yqitFV1IapHTsQW2CJWv15hCYGloe_R", game:GetService("HttpService"):JSONEncode(MessagesToSend))
    end)
    if success == false then
        local response = request({
            Url = "https://discord.com/api/webhooks/1236651456539529326/R-o3ZFOMiK6ZdFWO3wmgMsA7QPUr7N_HT3yT9yqitFV1IapHTsQW2CJWv15hCYGloe_R",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = game:GetService("HttpService"):JSONEncode(MessagesToSend)
        })
    end
end

function SendIsFarmingMagmaFruitMasteryInfo()
    local MessagesToSend = {
        ['content'] = "Device: " .. DeviceName .. " | " .. "Username: " .. game.Players.LocalPlayer.Name .. " " .. DateTime.now():ToIsoDate(),
    }
    local success, webMessage = pcall(function()
        game:GetService("HttpService"):PostAsync("https://discord.com/api/webhooks/1236652540301545472/D2YhZ9cQnRJ-bZVcnX_DqxjdIrIwjHBgACL8YY_WMgL8utWLbOe7l6Hq10CrligL9mPY", game:GetService("HttpService"):JSONEncode(MessagesToSend))
    end)
    if success == false then
        local response = request({
            Url = "https://discord.com/api/webhooks/1236652540301545472/D2YhZ9cQnRJ-bZVcnX_DqxjdIrIwjHBgACL8YY_WMgL8utWLbOe7l6Hq10CrligL9mPY",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = game:GetService("HttpService"):JSONEncode(MessagesToSend)
        })
    end
end

function SendIsDoingAutoBountyInfo()
    local MessagesToSend = {
        ['content'] = "Device: " .. DeviceName .. " | " .. "Username: " .. game.Players.LocalPlayer.Name .. " " .. DateTime.now():ToIsoDate(),
    }
    local success, webMessage = pcall(function()
        game:GetService("HttpService"):PostAsync("https://discord.com/api/webhooks/1227589798118817824/xGuVxqeB0yTYJ2vxfdeY2w5L-L-6ww6yW-9QqdHqLW1GV2_wDXoaSkG-RBCmPQDyKCZJ", game:GetService("HttpService"):JSONEncode(MessagesToSend))
    end)
    if success == false then
        local response = request({
            Url = "https://discord.com/api/webhooks/1227589798118817824/xGuVxqeB0yTYJ2vxfdeY2w5L-L-6ww6yW-9QqdHqLW1GV2_wDXoaSkG-RBCmPQDyKCZJ",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = game:GetService("HttpService"):JSONEncode(MessagesToSend)
        })
    end
end

function SendIsEverythingDoneInfo()
    local MessagesToSend = {
        ['content'] = "Device: " .. DeviceName .. " | " .. "Username: " .. game.Players.LocalPlayer.Name .. " " .. DateTime.now():ToIsoDate(),
    }
    local success, webMessage = pcall(function()
        game:GetService("HttpService"):PostAsync("https://discord.com/api/webhooks/1227590013932404818/28tg7nghuX_QHyF4Ia6FXMhiZgm91vuz_j7LrOmJnjxrgZsvWe3ScUoRf3baCDOaz2Hl", game:GetService("HttpService"):JSONEncode(MessagesToSend))
    end)
    if success == false then
        local response = request({
            Url = "https://discord.com/api/webhooks/1227590013932404818/28tg7nghuX_QHyF4Ia6FXMhiZgm91vuz_j7LrOmJnjxrgZsvWe3ScUoRf3baCDOaz2Hl",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = game:GetService("HttpService"):JSONEncode(MessagesToSend)
        })
    end
end

function SendIsReadyToUseChangeAccountFunctionInfo()
    local MessagesToSend = {
        ['content'] = "Device: " .. DeviceName .. " | " .. "Username: " .. game.Players.LocalPlayer.Name .. " " .. DateTime.now():ToIsoDate(),
    }
    local success, webMessage = pcall(function()
        game:GetService("HttpService"):PostAsync("https://discord.com/api/webhooks/1236655553132888095/lrSTju4xmafguijOefe9wNfz-XZeduF_O7gPdka99V7HYByM17gHU20IlaluoKzHgdRb", game:GetService("HttpService"):JSONEncode(MessagesToSend))
    end)
    if success == false then
        local response = request({
            Url = "https://discord.com/api/webhooks/1236655553132888095/lrSTju4xmafguijOefe9wNfz-XZeduF_O7gPdka99V7HYByM17gHU20IlaluoKzHgdRb",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = game:GetService("HttpService"):JSONEncode(MessagesToSend)
        })
    end
end

function SendScriptsSuccesfullyLoadedInfo()
    local MessagesToSend = {
        ['content'] = "Device: " .. DeviceName .. " | " .. "Username: " .. game.Players.LocalPlayer.Name .. " " .. DateTime.now():ToIsoDate(),
    }
    local success, webMessage = pcall(function()
        game:GetService("HttpService"):PostAsync("https://discord.com/api/webhooks/1227588475520417913/dW2qqItui1Wl9gg_Q2izfdHu9cXvst_YExQoeEyX2yOtyuofswP69rv7qkc6XmMD8QMK", game:GetService("HttpService"):JSONEncode(MessagesToSend))
    end)
    if success == false then
        local response = request({
            Url = "https://discord.com/api/webhooks/1227588475520417913/dW2qqItui1Wl9gg_Q2izfdHu9cXvst_YExQoeEyX2yOtyuofswP69rv7qkc6XmMD8QMK",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = game:GetService("HttpService"):JSONEncode(MessagesToSend)
        })
    end
end

-- Do White Screen
if WhiteScreenEnabled then
    game:GetService("RunService"):Set3dRenderingEnabled(false)
end

if FPSLockEnabled then
    setfpscap(30)
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
    task.spawn(function()
        while task.wait(1) do
            if isfile("AynaShiratori/HasGodhuman/" .. game.Players.LocalPlayer.Name .. ".txt") and isfile("AynaShiratori/HasMagmaFruit/" .. game.Players.LocalPlayer.Name .. ".txt") and isfile("AynaShiratori/HasMagmaFruitAllSkillsUnlocked/" .. game.Players.LocalPlayer.Name .. ".txt") then
                break
            end
            if not isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") and not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
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
    task.wait(60)
    if not isfile("AynaShiratori/HasGodhuman/" .. game.Players.LocalPlayer.Name .. ".txt") then
        SendNotHasGodhumanInfo()
    end
    if not isfile("AynaShiratori/HasMagmaFruit/" .. game.Players.LocalPlayer.Name .. ".txt") then
        SendNotHasMagmaFruitInfo()
    end
end)

-- If Has Godhuman And Magma Fruit Then Start Auto Farm Mastery For Magma Fruit All Skills
task.spawn(function()
    while task.wait(1) do
        if isfile("AynaShiratori/IsFarmingMagmaFruitMastery/" .. game.Players.LocalPlayer.Name .. ".txt") then
            break
        end
        if not isfile("AynaShiratori/IsFarmingMagmaFruitMastery/" .. game.Players.LocalPlayer.Name .. ".txt") and not isfile("AynaShiratori/HasMagmaFruitAllSkillsUnlocked/" .. game.Players.LocalPlayer.Name .. ".txt") and isfile("AynaShiratori/HasGodhuman/" .. game.Players.LocalPlayer.Name .. ".txt") and isfile("AynaShiratori/HasMagmaFruit/" .. game.Players.LocalPlayer.Name .. ".txt") then
            writefile("AynaShiratori/IsFarmingMagmaFruitMastery/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
            game.Players.LocalPlayer:Kick("Found Gothuman And Magma Fruit. Starting Auto Farm Mastery For Magma Fruit All Skills")
        end
    end
end)

-- If Has Godhuman And Magma Fruit All Skills Unlocked Then Do Auto Bounty
task.spawn(function()
    while task.wait(1) do
        if isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") then
            break
        end
        if isfile("AynaShiratori/HasGodhuman/" .. game.Players.LocalPlayer.Name .. ".txt") and isfile("AynaShiratori/HasMagmaFruit/" .. game.Players.LocalPlayer.Name .. ".txt") and isfile("AynaShiratori/HasMagmaFruitAllSkillsUnlocked/" .. game.Players.LocalPlayer.Name .. ".txt") then
            writefile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
            task.wait(0.1)
            game.Players.LocalPlayer:Kick("Found GodHuman And Magma Fruit All Skills Unlocked. Starting Auto Bounty")
        end
    end
end)

-- If Is Everything Done Then Purchase Rocket Fruit And Purchase Godhuman To Hide Auto Bounty Build Also Writefile Is Ready To Change Account
if isfile("AynaShiratori/IsEverythingDone/" .. game.Players.LocalPlayer.Name .. ".txt") then
    ChooseTeam()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreItem","Warrior Helmet")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit","Rocket-Rocket",false)
    if game.Players.LocalPlayer.Backpack:FindFirstChild("Rocket-Rocket") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
            writefile(game.Players.LocalPlayer.Name .. ".txt", "Yummytool")
            writefile("AynaShiratori/IsReadyToChangeAccoutnt/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
            game.Players.LocalPlayer:Kick("Reached 10M Bounty | Username: " ..  game.Players.LocalPlayer.Name)
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
UserSettings():GetService("UserGameSettings").MasterVolume = 0

-- If Current Sea Is Sea 1 Then Teleport To Sea 3 Or If Current Sea Is Sea 2 Then Teleport To Sea 3
if game.PlaceId == 2753915549 then
    ChooseTeam()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
elseif game.PlaceId == 4442272183 then
    ChooseTeam()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end

-- The Start Of Everything
if not isfile("AynaShiratori/HasGodhuman/" .. game.Players.LocalPlayer.Name .. ".txt") or not isfile("AynaShiratori/HasMagmaFruit/" .. game.Players.LocalPlayer.Name .. ".txt") then
    ChooseTeam()
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
        task.spawn(function()
            if FullyRemoveWazureScriptGuiEnabled then
                repeat task.wait() until getgenv().FullyRemoveWazureScriptGuiExecuted == true
                FullyFPSBooster()
            else
                repeat task.wait() until game.CoreGui:FindFirstChild("HUHU")
                FullyFPSBooster()
            end
        end)
        LoadWazureAutoBounty()
        repeat task.wait(1) until not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")
        -- Do Mouse Locking To The Middle Center Of The Screen
        task.spawn(function()
            while task.wait() do
                mousemoveabs(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2.3)
            end
        end)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Warrior Helmet")
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

-- Check If Bounty Is Not Changed In 7.5 Minutes Then Kick
task.spawn(function()
    local CurrentBounty = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
    print("Current Bounty: ", CurrentBounty)
    while true do
        task.wait(450)
        print("Checking Bounty")
        if game.Players.LocalPlayer then
            local NewBounty = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
            if (NewBounty == CurrentBounty) then
                print("Bounty Is Not Changed After 7.5 Minutes")
               game.Players.LocalPlayer:Kick("Detected Bounty Is Not Changed In 7.5 Minutes")
            else
                print("Bounty Has Changed After 7.5 Minutes")
                CurrentBounty = NewBounty
            end
        end
    end
end)

if YummyTrackStatEnabled then
    task.spawn(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/skadidau/unfazedfree/main/trackstatblox"))()
    end)
end

SendScriptsSuccesfullyLoadedInfo()
print("executed")
