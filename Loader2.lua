getgenv().AynaShiratori = {
    ["Device Name"] = "Nil",
    ["Script Key"] = "Ayna Shiratori 1",
    ["Misc"] = {
        ["Status UI"] = true,
        ["Hermanos Track Stat"] = true,
        ["Select Team"] = "Pirates",
    },
    ["Performance"] = {
        ["FPS Lock"] = true,
        ["Time Wait To Kick"] = 9999,
        ["White Screen"] = false,
        ["Fully FPS Booster"] = true,
        ["Fully Remove Player Gui"] = true,
        ["Fully Remove Core Gui"] = true,
        ["Fully Remove Maru Script Gui"] = true,
    },
}

local DeviceName = AynaShiratori["Device Name"]
local ScriptKey = AynaShiratori["Script Key"]
local Misc = AynaShiratori["Misc"]
local StatusUIEnabled = Misc["Status UI"]
local HermanosTrackStatEnabled = Misc["Hermanos Track Stat"]
local SelectTeam = Misc["Select Team"]
local Performance = AynaShiratori["Performance"]
local FPSLockEnabled = Performance["FPS Lock"]
local TimeWaitToKick = Performance["Time Wait To Kick"]
local WhiteScreenEnabled = Performance["White Screen"]
local FullyFPSBoosterEnabled = Performance["Fully FPS Booster"]
local FullyRemovePlayerGuiEnabled = Performance["Fully Remove Player Gui"]
local FullyRemoveCoreGuiEnabled = Performance["Fully Remove Core Gui"]
local FullyRemoveMaruScriptGuiEnabled = Performance["Fully Remove Maru Script Gui"]

if not ScriptKey == "Ayna Shiratori 1" then
    game.Players.LocalPlayer:Kick("Invalid Key")
end

-- Maru Settings ( Kaitun )
getgenv().Key = "MARU-WKLXL-90H6-I4TVL-1O9K-BVNFH"
getgenv().id = "1210847136078372946"
getgenv().Script_Mode = "Kaitun_Script"
_G.Team = "Pirate"
_G.LogsDes = {
    ["Enabled"] = false,
    ["SendAlias"] = false,
    ["SendDescription"] = false,
    ["DelaySend"] = 5
}
_G.WebHook = {
    ["Enabled"] = false,
    ["Url"] = "",
    ["Delay"] = 0
}
_G.MainSettings = {
        ["EnabledHOP"] = true,
        ['FPSBOOST'] = false,
        ["FPSLOCKAMOUNT"] = 60,
        ['WhiteScreen'] = false,
        ['CloseUI'] = true,
        ["NotifycationExPRemove"] = false,
        ['AFKCheck'] = 150,
        ["LockFragments"] = 10000,
        ["LockFruitsRaid"] = {
            [1] = "Kitsune",
            [2] = "Dragon-Dragon"
        }
    }
_G.Fruits_Settings = {
    ['Main_Fruits'] = {"Magma-Magma"},
    ['Select_Fruits'] = {"Magma-Magma"}
}
_G.Quests_Settings = {
    ['Rainbow_Haki'] = false,
    ["MusketeerHat"] = false,
    ["PullLever"] = false,
    ['DoughQuests_Mirror'] = {
        ['Enabled'] = false,
        ['UseFruits'] = false
    }        
}
_G.Races_Settings = {
    ['Race'] = {
        ['EnabledEvo'] = true,
        ["v2"] = true,
        ["v3"] = true,
        ["Races_Lock"] = {
            ["Races"] = {
                ["Mink"] = false,
                ["Human"] = true,
                ["Fishman"] = false
            },
            ["RerollsWhenFragments"] = 20000
        }
    }
}
_G.Settings_Melee = {
    ['Superhuman'] = true,
    ['DeathStep'] = true,
    ['SharkmanKarate'] = true,
    ['ElectricClaw'] = true,
    ['DragonTalon'] = true,
    ['Godhuman'] = true
}
_G.FarmMastery_Settings = {
    ['Melee'] = true,
    ['Sword'] = true,
    ['DevilFruits'] = true,
    ['Select_Swords'] = {
        ["AutoSettings"] = false,
        ["ManualSettings"] = {
            "Buddy Sword"
        }
    }
}
_G.SwordSettings = {
    ['Saber'] = false,
    ["Pole"] = false,
    ['MidnightBlade'] = false,
    ['Shisui'] = false,
    ['Saddi'] = false,
    ['Wando'] = false,
    ['Yama'] = false,
    ['Rengoku'] = false,
    ['Canvander'] = false,
    ['BuddySword'] = true,
    ['TwinHooks'] = false,
    ['HallowScryte'] = false,
    ['TrueTripleKatana'] = false,
    ['CursedDualKatana'] = false
}
_G.SharkAnchor_Settings = {
    ["Enabled_Farm"] = false,
}
_G.GunSettings = {
    ['Kabucha'] = false,
    ['SerpentBow'] = false,
    ['SoulGuitar'] = false
}

getgenv().Hermanos_Settings = {
	['key'] = '519b1d50-a566-4eb4-9b16-82bba9512049',
	['PC'] = DeviceName,

	['webhooks'] = {
		['fullmoon'] = 'https://discord.com/api/webhooks/',
		['mirage'] = 'https://discord.com/api/webhooks/',
	},

	['Sword'] = {'Cursed Dual Katana'},
	['Gun'] = {'Soul Guitar''},
	['Accessories'] = {''},
	['Fruit'] = {'Kitsune', 'Dragon'},
}

repeat task.wait() until game:IsLoaded()

-- Create Main Folders To Store Stuffs
if not isfolder("AynaShiratori") then
    makefolder("AynaShiratori")
end
if not isfolder("AynaShiratori/ReachedSea3") then
    makefolder("AynaShiratori/ReachedSea3")
end
if not isfolder("AynaShiratori/HasGodhuman") then
    makefolder("AynaShiratori/HasGodhuman")
end
if not isfolder("AynaShiratori/IsEverythingDone") then
    makefolder("AynaShiratori/IsEverythingDone")
end
if not isfolder("AynaShiratori/IsReadyToChangeAccount") then
    makefolder("AynaShiratori/IsReadyToChangeAccount")
end

-- Check Files
task.spawn(function()
    while task.wait(1) do
        if isfile("AynaShiratori/ReachedSea3/" .. game.Players.LocalPlayer.Name .. ".txt") then
            getgenv().ReachedSea3 = true
        end
        if isfile("AynaShiratori/HasGodhuman/" .. game.Players.LocalPlayer.Name .. ".txt") then
            getgenv().HasGodhuman = true
        end
        if isfile("AynaShiratori/IsEverythingDone/" .. game.Players.LocalPlayer.Name .. ".txt") then
            getgenv().IsEverythingDone = true
        end
        if isfile("AynaShiratori/IsReadyToChangeAccount/" .. game.Players.LocalPlayer.Name .. ".txt") then
            getgenv().IsReadyToChangeAccount = true
        end
    end
end)

-- Better Vision
if FullyRemovePlayerGuiEnabled then
    task.spawn(function()
        task.spawn(function()
            game.Players.LocalPlayer.PlayerGui:WaitForChild("TouchGui"):Destroy()
        end)
        task.spawn(function()
            game.Players.LocalPlayer.PlayerGui:WaitForChild("ContextActionGui"):Destroy()
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
end

if FullyRemoveMaruScriptGuiEnabled then
    task.spawn(function()
        game.CoreGui:WaitForChild("MARUTG"):Destroy()
    end)
    task.spawn(function()
        game.CoreGui:WaitForChild("NINONOOB"):Destroy()
    end)
end

-- Do White Screen
if WhiteScreenEnabled then
    game:GetService("RunService"):Set3dRenderingEnabled(false)
end

-- Current Status
CurrentStatus = "Heavily Modified By Ayna Shiratori"
if StatusUIEnabled then
    task.spawn(function()
        task.wait(2)
            if not game.Players.LocalPlayer.Data.Level.Value == 2550 then
                getgenv().AutoFarmingLevel = true
                CurrentStatus = "Auto Farming Level"
                break
            end
        end
        while not AutoFarmingLevel do
            if HasGodhuman then
                if getgenv().CurrentStatusHasGodhuman then return end
                getgenv().CurrentStatusHasGodhuman = true
                CurrentStatus = "Found Godhuman"
            else
                if game.Players.LocalPlayer.Data.Level.Value == 2550 and not HasGodhuman then
                    CurrentStatus = "Getting Godhuman"
                    break
                end
            end
            task.wait(1)
            if IsEverythingDone then
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
            uselesslabeltwo.Text = "Level: "
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
                    pinglabel.Text = comma_value(tonumber(game.Players.LocalPlayer.Data.Level.Value))
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
                    local ping = comma_value(tonumber(game.Players.LocalPlayer.Data.Level.Value))
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
            uselesslabeltwo.Text = "Level: "
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
                    pinglabel.Text = comma_value(tonumber(game.Players.LocalPlayer.Data.Level.Value))
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
                    local ping = comma_value(tonumber(game.Players.LocalPlayer.Data.Level.Value))
                    uselesslabelfour.Text = game.Players.LocalPlayer.Name .. " " .. ping
                until pinglabel == nil
            end)
        end
    end
end)

function LoadMaruKaitun()
    task.spawn(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruBitkub/main/Mobile.lua"))()
    end)
end

-- Choose Team
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

-- Better Performance While Doing Kaitun
function FullyFPSBooster()
    if FullyFPSBoosterEnabled then
        task.spawn(function()
            game.Players.LocalPlayer.PlayerScripts.WaterCFrame.Disabled = true
        end)
        task.spawn(function()
            game.Players.LocalPlayer.PlayerScripts.EnhancementVisual.Disabled = true
        end)
        task.spawn(function()
            if not game.Players.LocalPlayer.Data.Level.Value == 700 or not game.Players.LocalPlayer.Data.Level.Value > 1500 and not ReachedSea3 then
                game.Workspace.Map:Destroy()
            end
        end)
        game.ReplicatedStorage["Effect"].Container:Remove()
        task.spawn(function()
            game.ReplicatedStorage["FX"]:Remove()
        end)
        game.ReplicatedStorage["FXCreator"]:Remove()
        game.ReplicatedStorage["DamageCounter"]:Remove()
        game.ReplicatedStorage["Assets"]:Remove()
    end
end

function CheckItem(ah)
    for k, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
        if v.Name == ah then
            return v
        end
    end
end

if FPSLockEnabled then
    setfpscap(30)
end

-- Kick After Spectify Minute In Setting
task.spawn(function()
    while task.wait(TimeWaitToKick) do
        game.Players.LocalPlayer:Kick("It's Been Past " .. TimeWaitToKick/60 .. "Minutes")
    end
end)

-- Anti AFK 1
game:service'Players'.LocalPlayer.Idled:connect(function()
    game:service'VirtualUser':CaptureController()
    game:service'VirtualUser':ClickButton2(Vector2.new())
end)

-- Wait Until Game Is Loaded
repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer:FindFirstChild("PlayerGui") and game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main") and game.Players.LocalPlayer.PlayerGui.Main.Loading.Visible == false

-- Small Performance
settings().Rendering.QualityLevel = "1"

-- The Start Of Everything
if not HasGodhuman and game.Players.LocalPlayer.Data.Level.Value == 2550 then
    task.spawn(function()
        FullyFPSBooster()
    end)
    task.wait(1)
    LoadMaruKaitun()
end

if IsEverythingDone then
    FullyFPSBooster()
end

-- Check If Level Is 700 Or 1500 To Kick, Reached Sea 3 And Has Godhuman
task.spawn(function()
    task.spawn(function()
        while task.wait(1) do
            if HasGodhuman then
                break
            end
            if not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
                if game.Players.LocalPlayer.Data.Level.Value == 700 or game.Players.LocalPlayer.Data.Level.Value > 1500 and not ReachedSea3 then
                    game.Players.LocalPlayer:Kick("Turning Off FPSBooster To Prevent Any Error")
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
                    writefile("AynaShiratori/HasGodhuman/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
                end
                if not game.PlaceId == 7449423635 then
                    writefile("AynaShiratori/ReachedSea3/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
                end
            end
        end
    end)
end)

-- Check If Has Godhuman and Level Is Maxed Then Writefile IsEverythingDone
task.spawn(function()
    while task.wait(1) do
        if not IsEverythingDone then
            if HasGodhuman and game.Players.LocalPlayer.Data.Level.Value == 2550 then
                writefile("AynaShiratori/IsEverythingDone/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
                task.wait(1)
                game.Players.LocalPlayer:Kick("Found Godhuman And Level Is Maxed")
            end
        end
    end
end)

-- If Is Everything Done Then Purchase Godhuman. Writefile Is Ready To Change Account
if IsEverythingDone then
    ChooseTeam()
    while true do
        if not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
                writefile(game.Players.LocalPlayer.Name .. ".txt", "Yummytool")
                writefile("AynaShiratori/IsReadyToChangeAccoutnt/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
                game.Players.LocalPlayer:Kick("Everything Is Done. Ready To Change Account " .. " " .. "| Username: " ..  game.Players.LocalPlayer.Name)
            end
        end
        task.wait(10)
    end
end

-- Check If Is Not Loaded Then Kick
task.spawn(function()
    while task.wait(90) do
        if not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
            break
        end
        if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
            game.Players.LocalPlayer:Kick("Detected Something Went Wrong")
        end
    end
end)

-- Check If Is Loaded
repeat
    task.wait()
    if not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
        break
    end
    wait(1)
until not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")
task.wait(1)

-- Check If Level Is Not Changed In 15 Minutes Then Kick
task.spawn(function()
    local CurrentLevel = game.Players.LocalPlayer.Data.Level.Value
    print("Current Level: ", CurrentLevel)
    while true do
        task.wait(900)
        print("Checking Level")
        if game.Players.LocalPlayer then
            local NewLevel = game.Players.LocalPlayer.Data.Level.Value
            if (NewLevel == CurrentLevel) then
                print("Level Is Not Changed After 15 Minutes")
               game.Players.LocalPlayer:Kick("Detected Level Is Not Changed In 15 Minutes")
            else
                print("Level Has Changed After 15 Minutes")
                CurrentLevel = NewLevel
            end
        end
    end
end)

if HemanosTrackStatEnabled then
    task.spawn(function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/hermanos-dev/hermanos-script/main/script.lua'))()
    end
end)

print("executed")
