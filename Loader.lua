-- Wait Until Game Is Loaded
repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
if not game.Players.LocalPlayer.PlayerGui.Main.Loading.Visible == true then repeat task.wait() until game.Players.LocalPlayer.PlayerGui.Main.Loading.Visible == false end

getgenv().AynaShiratori = {
    ["Device Name"] = "Pc 1",
    ["Script Key"] = "Ayna Shiratori 1",
    ["Misc"] = {
        ["Status UI"] = true,
        ["Yummy Track Stat"] = true,
        ["Select Team"] = "Pirates",
        ["Webhooks Logs"] = true,
        ["Amount Bounty To Kick"] = 10000000,
    },
    ["Performance"] = {
        ["FPS Lock"] = true,
        ["Time Wait To Kick"] = 450,
        ["White Screen"] = false,
        ["Fully FPS Booster"] = true,
        ["Fully Remove Player Gui"] = false,
        ["Fully Remove Core Gui"] = false,
        ["Fully Remove Delta UI"] = false,
        ["Fully Remove Wazure Script Gui"] = true,
    },
}

local DeviceName = AynaShiratori["Device Name"]
local ScriptKey = AynaShiratori["Script Key"]
local Misc = AynaShiratori["Misc"]
local StatusUIEnabled = Misc["Status UI"]
local YummyTrackStatEnabled = Misc["Yummy Track Stat"]
local SelectTeam = Misc["Select Team"]
local WebhooksLogsEnabled = Misc["Webhooks Logs"]
local AmountBountyToKick = Misc["Amount Bounty To Kick"]
local Performance = AynaShiratori["Performance"]
local FPSLockEnabled = Performance["FPS Lock"]
local TimeWaitToKick = Performance["Time Wait To Kick"]
local WhiteScreenEnabled = Performance["White Screen"]
local FullyFPSBoosterEnabled = Performance["Fully FPS Booster"]
local FullyRemovePlayerGuiEnabled = Performance["Fully Remove Player Gui"]
local FullyRemoveCoreGuiEnabled = Performance["Fully Remove Core Gui"]
local FullyRemoveDeltaUIEnabled = Performance["Fully Remove Delta UI"]
local FullyRemoveWazureScriptGuiEnabled = Performance["Fully Remove Wazure Script Gui"]

if not ScriptKey == "Ayna Shiratori 1" then
    game.Players.LocalPlayer:Kick("Invalid Key")
end

-- Wazure Settings ( Including Hub And Auto Bounty V2)
script_key = "WinPShtjsOjPMYIuyeldlfhLfxJtkDWo"
getgenv().Team = "Pirates"
getgenv().AutoLoad = false
getgenv().SlowLoadUi  = false
getgenv().ForceUseSilentAimDashModifier = false
getgenv().ForceUseWalkSpeedModifier = false
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
        ["Enable"] = false,
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

-- Check Files
task.spawn(function()
    while task.wait(1) do
        if isfile("AynaShiratori/HasGodhuman/" .. game.Players.LocalPlayer.Name .. ".txt") then
            getgenv().HasGodhuman = true
        end
        if isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") then
            getgenv().IsAutoBounty = true
        end
        if isfile("AynaShiratori/ResetStats/" .. game.Players.LocalPlayer.Name .. ".txt") then
            getgenv().ResetStats = true
        end
        if isfile("AynaShiratori/StatsCombo/" .. game.Players.LocalPlayer.Name .. ".txt") then
            getgenv().StatsCombo = true
        end
        if isfile("AynaShiratori/IsEverythingDone/" .. game.Players.LocalPlayer.Name .. ".txt") then
            getgenv().IsEverythingDone = true
        end
        if isfile("AynaShiratori/IsReadyToChangeAccount/" .. game.Players.LocalPlayer.Name .. ".txt") then
            getgenv().IsReadyToChangeAccount = true
        end
    end
end)
local OSDateStringToFormat = "%x %X"
local OsDateResult = os.date(OSDateStringToFormat)

local RefundStatCode = {	
	"SUB2GAMERROBOT_RESET1",
	"KITT_RESET",
	"Sub2UncleKizaru"
}

if FullyRemoveDeltaUIEnabled then
    task.spawn(function()
        game.CoreGui.Delta:Destroy()
    end)
end

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
            if HasGodhuman and not IsAutoBounty then
                if getgenv().CurrentStatusHasGodhuman then return end
                getgenv().CurrentStatusHasGodhuman = true
                CurrentStatus = "Found Godhuman"
            else
                if not IsAutoBounty then
                    CurrentStatus = "!!! Missing Godhuman !!!"
                    break
                end
            end
            task.wait(1)
            if IsAutoBounty and not IsEverythingDone then
                if getgenv().CurrentStatusIsAutoBounty then return end
                getgenv().CurrentStatusIsAutoBounty = true
                CurrentStatus = "Doing Auto Bounty"
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

function LoadWazureAutoBounty()
    task.spawn(function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/b6d24ef1f7dab9c7b22f259a3db6c47e.lua"))()
    end)
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
            game.Workspace.Map:Remove()
            game.Workspace.NPCs:Remove()
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

if FPSLockEnabled then
    setfpscap(60)
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

if FullyRemoveWazureScriptGuiEnabled then
    task.spawn(function()
        game.CoreGui:WaitForChild("ScreenGui"):Destroy()
    end)
    task.spawn(function()
        game.CoreGui:WaitForChild("HUHU"):Destroy()
         game:GetService("Lighting"):ClearAllChildren()
        getgenv().FullyRemoveWazureScriptGuiExecuted = true
    end)
end

-- Do White Screen
if WhiteScreenEnabled then
    game:GetService("RunService"):Set3dRenderingEnabled(false)
end

-- Do Redeem Refund Stat Code To Reset Stat To Add Point Stats Combo
function RedeemCode(value)
	(game:GetService("ReplicatedStorage")).Remotes.Redeem:InvokeServer(value)
end
task.spawn(function()
    if not StatsCombo then
        for i, v in pairs(RefundStatCode) do
            RedeemCode(v)
        end
    end
end)

-- If Haven't Reset Stats Then Do Reset Stats
task.spawn(function()
    while task.wait(1) do
        if ResetStats then
            break
        end
        if not ResetStats and not StatsCombo then
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

-- Check If Has Godhuman
task.spawn(function()
    task.spawn(function()
        while task.wait(1) do
            if HasGodhuman then
                break
            end
            if not IsAutoBounty and not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
                    writefile("AynaShiratori/HasGodhuman/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
                end  
            end
        end
    end)
end)

-- If Has Godhuman Then Do Auto Bounty
task.spawn(function()
    while task.wait(1) do
        if IsAutoBounty then
            break
        end
        if HasGodhuman then
            task.spawn(function()
                writefile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
            end)
            game.Players.LocalPlayer:Kick("Found GodHuman. Starting Auto Bounty")
        end
    end
end)

-- If Is Everything Done Then Purchase Rocket Fruit And Purchase Godhuman To Hide Auto Bounty Build Also Writefile Is Ready To Change Account
if IsEverythingDone then
    ChooseTeam()
    while true do
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit","Rocket-Rocket",false)
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Rocket-Rocket") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
                writefile(game.Players.LocalPlayer.Name .. ".txt", "Yummytool")
                writefile("AynaShiratori/IsReadyToChangeAccoutnt/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
                game.Players.LocalPlayer:Kick("Reached " .. AmountBountyToKick .. " " .. "Bounty | Username: " ..  game.Players.LocalPlayer.Name)
            end
        end
        task.wait(10)
    end
end

-- Small Performance
settings().Rendering.QualityLevel = "1"

-- If Current Sea Is Sea 1 Then Teleport To Sea 3 Or If Current Sea Is Sea 2 Then Teleport To Sea 3
if game.PlaceId == 2753915549 then
    ChooseTeam()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
elseif game.PlaceId == 4442272183 then
    ChooseTeam()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end

-- The Start Of Everything
task.spawn(function()
    task.wait(3)
    ChooseTeam()
end)

-- Do Auto Bounty Also Load Build To Do Auto Bounty
task.spawn(function()
    if IsAutoBounty and not IsEverythingDone then
        LoadWazureAutoBounty()
        FullyFPSBooster()
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

if EverythingIsDone then
    FullyFPSBooster()
end

-- Check If Is Not Loaded Then Rejoin
task.spawn(function()
    while task.wait(90) do
        if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
            break
        end
        if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
            game.Players.LocalPlayer:Kick("Detected Something Went Wrong Rejoining")
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

-- Check If Bounty Is Not Changed In 5 Minutes Then Kick
task.spawn(function()
    local CurrentBounty = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
    print("Current Bounty: ", CurrentBounty)
    while true do
        task.wait(300)
        print("Checking Bounty")
        if game.Players.LocalPlayer then
            local NewBounty = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
            if (NewBounty == CurrentBounty) then
                print("Bounty Is Not Changed After 5 Minutes")
               game.Players.LocalPlayer:Kick("Detected Bounty Is Not Changed In 5 Minutes")
            else
                print("Bounty Has Changed After 5 Minutes")
                CurrentBounty = NewBounty
            end
        end
    end
end)

-- Check If Bounty Has Reached Amount Of Bounty To Kick Then Writefile IsEverythingDone
task.spawn(function()
    if IsAutoBounty and not IsEverythingDone then
        if game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value >= AmountBountyToKick then
            writefile("AynaShiratori/IsEverythingDone/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
        end
    end
end)

if YummyTrackStatEnabled then
    task.spawn(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/skadidau/unfazedfree/main/trackstatblox"))()
    end)
end

print("executed")
