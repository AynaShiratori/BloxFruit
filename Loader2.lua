getgenv().AynaShiratori = {
    ["Device Name"] = "Pc 1",
    ["Script Key"] = "Ayna Shiratori 1",
    ["Misc"] = {
        ["Status UI"] = true,
        ["Yummy Track Stat"] =  true,
        ["Select Team"] = "Pirates",
        ["Webhooks Logs"] = true,
        ["Amount Bounty To Kick"] = 11000000,
    },
    ["Performance"] = {
        ["FPS Lock"] = true,
        ["Time Wait To Rejoin"] = 900,
        ["White Screen"] = true,
        ["Fully FPS Booster"] = true,
        ["Fully Remove Player Gui"] = true,
        ["Fully Remove Core Gui"] = true,
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
local TimeWaitToRejoin = Performance["Time Wait To Rejoin"]
local WhiteScreenEnabled = Performance["White Screen"]
local FullyFPSBoosterEnabled = Performance["Fully FPS Booster"]
local FullyRemovePlayerGuiEnabled = Performance["Fully Remove Player Gui"]
local FullyRemoveCoreGuiEnabled = Performance["Fully Remove Core Gui"]
local FullyRemoveWazureScriptGuiEnabled = Performance["Fully Remove Wazure Script Gui"]

if not ScriptKey == "Ayna Shiratori 1" then
    game.Players.LocalPlayer:Kick("Invalid Key")
end

-- Wazure Settings ( Including Hub And Auto Bounty V2.2)
script_key = "WinPShtjsOjPMYIuyeldlfhLfxJtkDWo"
getgenv().Team = "Pirates"
getgenv().WebhookSetting = {
    Enable = true,
    Url = "",
    Embed = true,
    StoredFruit = true,
    ImageEmbed = true,
    CustomImage = false,
    CustomImageUrl = "", --Your Url
    OnServerHop = true,
    BountyChanged = true,
}
getgenv().PlayerSetting = {
    SafeMode = true,
    SafeModeHealth = {3000,75},--Number And %, Start Safe Mode And Stop Safe Mode
    UseRaceV3 = true,
    SmartUseRaceV3= true,
    DashIfV4 = false,
    Dash=true,
    IgnoreInCombat = true, --Turn This Off When Reseting Or Hop You Lost Bounty (Rare, Happens On Some Accounts)
    ChatKillEnable = false,
    Chat = {"Ez","You're just too bad"},
    IgnoreFriends = false, --Serverhop if you friend in your server
}
getgenv().AttackSetting = {
    ForceMelee = true,
    ForceMeleeTime = 3.5,
    StopAttack =true, --When Meet Below Condition
    StopAttackAtHealth = 79,--%
    FastAttack=true, -- Toggle Fast Attack
}
getgenv().UseSkillSetting = {
    -- Three Methods: "Normal", "Fast", "Spam", "SpamAll"
    MethodIfTargetOnV4 = "Fast",
    MethodIfPlayerOnV4 = "SpamAll",
    MethodIfTargetUseFruit = {Fruits={},Method="Fast"},
    NormalMethod = "Normal",
    LowHealthPlayerCondition = { --Player Can Attack Us, No Need For Slow Attack
        Enable = true,
        Health = 70,--%Health That Are Low
        Method = "Fast",
    },
    LowHealthTargetCondition = {
        Enable = true,
        Health = 40,--%Health That Are Low
        DelayFirstTime = {true,2}, --1 Is Enable, 2 Is Second To Delay Before Attack Again
        Method = "Normal",
        WaitTime = 1.5,-- If Normal Method, Wait Every Skill If It Hits Target
    }
}
getgenv().WeaponsSetting = {
    ["Melee"] = {
        ["Enable"] = true,
        ["Delay"] = 3, 
        ["SwitchNextWeaponIfCooldown"] = true,
        ["Skills"] = {
            ["Z"] = {
                ["Enable"] = true,
                ["NoPredict"] = false, -- For Dragon Tailon, Disable it 
                ["HoldTime"] = 0.4,
                ["TimeToNextSkill"] = 0,
            },
        [ "X"] = {
                ["Enable"] = true,
                ["HoldTime"] = 0,
                ["TimeToNextSkill"] = 0,
            },

            ["C"] = {
                ["Enable"] = true,
                ["HoldTime"] = 0.3,
                ["TimeToNextSkill"] = 0,
            },
        },
    },
    ["Blox Fruit"] = {
        ["Enable"] = false,
        ["Delay"] = 4,
        ["SwitchNextWeaponIfCooldown"] = false,
        ["Skills"] = {
            ["Z"] = {
                ["Enable"] = false,
                ["HoldTime"] = 2,
                ["TimeToNextSkill"] = 0,
            },
            ["X"] = {
                ["Enable"] = false,
                ["HoldTime"] = 0,
                ["TimeToNextSkill"] = 0,
            },

            ["C"] = {
                ["Enable"] = false,
                ["HoldTime"] = 0,
                ["TimeToNextSkill"] = 0,
            },
            ["V"] = {
                ["Enable"] = false,
                ["HoldTime"] = 0,
                ["TimeToNextSkill"] = 0,
            },
            ["F"] = {
                ["Enable"] = false,
                ["HoldTime"] = 0,
                ["TimeToNextSkill"] = 0,
            },
        },
    },
    ["Sword"] = {
        ["Enable"] = true,
        ["Delay"] = 1.2,
        ["Skills"] = {
            ["Z"] = {
                ["Enable"] = true,
                ["HoldTime"] = 1.5,
                ["TimeToNextSkill"] = 0,
            },
            ["X"] = {
                ["Enable"] = true,
                ["HoldTime"] = 1,
                ["TimeToNextSkill"] = 0,
            },
        },
    },
    ["Gun"] = {
        ["Enable"] = false,
        ["Delay"] = 0.5,
        ["Skills"] = {
            ["Z"] = {
                ["Enable"] = true,
                ["HoldTime"] = 0,
                ["TimeToNextSkill"] = 0,
            },
            ["X"] = {
                ["Enable"] = true,
                ["HoldTime"] = 0,
                ["TimeToNextSkill"] = 0,
            },
        },
    },
}
getgenv().Theme = { -- getgenv().Theme = false if you want to disable
    OldTheme = false,
    Name="Miko", --"Raiden","Ayaka","Hutao","Yelan","Miko","Nahida","Ganyu","Keqing","Nilou","Barbara","Zhongli","Layla"
    Custom={
            ["Enable"] = true,
            ['char_size'] = UDim2.new(0.668, 0, 1.158, 0),
            ['char_pos'] = UDim2.new(0.463, 0, -0.105, 0),
            ['title_color'] = Color3.fromRGB(255, 221, 252),
            ['titleback_color'] = Color3.fromRGB(169, 20, 255),
            ['list_color'] = Color3.fromRGB(255, 221, 252),
            ['liststroke_color'] = Color3.fromRGB(151, 123, 207),
            ['button_color'] = Color3.fromRGB(255, 221, 252)
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


writefile("AynaShiratori/HasGodhuman/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
writefile("AynaShiratori/HasMagmaFruit/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
writefile("AynaShiratori/IsFarmingMagmaFruitMastery/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
writefile("AynaShiratori/HasMagmaFruitAllSkillsUnlocked/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)

-- Check Files
if isfile("AynaShiratori/HasGodhuman/" .. game.Players.LocalPlayer.Name .. ".txt") then
    getgenv().HasGodhuman = true
end
if isfile("AynaShiratori/HasMagmaFruit/" .. game.Players.LocalPlayer.Name .. ".txt") then
    getgenv().HasMagmaFruit = true
end
if isfile("AynaShiratori/IsFarmingMagmaFruitMastery/" .. game.Players.LocalPlayer.Name .. ".txt") then
    getgenv().IsFarmingMagmaFruitMastery = true
end
if isfile("AynaShiratori/HasMagmaFruitAllSkillsUnlocked/" .. game.Players.LocalPlayer.Name .. ".txt") then
    getgenv().HasMagmaFruitAllSkillsUnlocked = true
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
if isfile("AynaShiratori/HasGodhIsEverythingDoneuman/" .. game.Players.LocalPlayer.Name .. ".txt") then
    getgenv().IsEverythingDone = true
end
if isfile("AynaShiratori/IsReadyToChangeAccount/" .. game.Players.LocalPlayer.Name .. ".txt") then
    getgenv().IsReadyToChangeAccount = true
end

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
            if HasGodhuman and not IsAutoBounty then
                if getgenv().HasGodhuman then return end
                getgenv().HasGodhuman = true
                CurrentStatus = "Found Godhuman"
            else
                if not IsAutoBounty then
                    CurrentStatus = "!!! Missing Godhuman !!!"
                    break
                end
            end
            task.wait(1)
            if HasMagmaFruit and not IsAutoBounty then
                if getgenv().HasMagmaFruit then return end
                getgenv().HasMagmaFruit = true
                CurrentStatus = "Found Magma Fruit"
            else
                if not IsAutoBounty then
                    CurrentStatus = "!!! Missing Magma Fruit !!!"
                    break
                end
            end
            task.wait(1)
            if not HasMagmaFruitAllSkillsUnlocked and IsFarmingMagmaFruit then
                if getgenv().HasMagmaFruitAllSkillsUnlocked then return end
                getgenv().HasMagmaFruitAllSkillsUnlocked = true
                CurrentStatus = "Farming Magma Fruit To Lv.140 Mastery"
            end
            task.wait(1)
            if IsAutoBounty and not IsEverythingDone then
                if getgenv().IsAutoBounty then return end
                getgenv().IsAutoBounty = true
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
else
    -- game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat,false)
    game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList,false)
end

if FullyRemoveWazureScriptGuiEnabled then
    task.spawn(function()
        game.CoreGui:WaitForChild("ScreenGui"):Destroy()
    end)
    task.spawn(function()
        game.CoreGui:WaitForChild("HUHU"):Destroy()

    end)
    getgenv().FullyRemoveWazureScriptGuiExecuted = true
end

function LoadWazureAutoBounty()
    task.spawn(function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/248f97d7a28a4d09c641d8279a935333.lua"))()
    end)
end

function LoadXeroAutoBounty()
    task.spawn(function()
        loadstring(game:HttpGet("https://xerohub.click/script/autobounty.lua"))() 
    end)
end

function LoadWazureHub()
    task.spawn(function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
    end)
end

function LoadWazureHubCursedDualKatanaMasteryFarmConfig()
    if not isfolder("True W-azure V2_Beta") then
        makefolder("True W-azure V2_Beta")
    end

    if not isfolder("True W-azure V2_Beta/ConfigMain") then
        makefolder("True W-azure V2_Beta/ConfigMain")
    end
    
    if not isfolder("True W-azure V2_Beta/Cache") then
        makefolder("True W-azure V2_Beta/Cache")
    end

    if not isfolder("True W-azure V2_Beta/Main") then
        makefolder("True W-azure V2_Beta/Main")
    end

    if not isfolder("True W-azure V2_Beta/SameAcc") then
        makefolder("True W-azure V2_Beta/SameAcc")
    end
    
    if not isfolder("True W-azure V2_Beta/Theme") then
        makefolder("True W-azure V2_Beta/Theme")
    end
    
    if not isfile("True W-azure V2_Beta/Main/" .. game.Players.LocalPlayer.Name .. ".json") then
        writefile("True W-azure V2_Beta/Main/" .. game.Players.LocalPlayer.Name .. ".txt", "True W-azure V2_Beta/ConfigMain/"  .. game.Players.LocalPlayer.Name  .. ".json")
    end

    writefile("True W-azure V2_Beta/ConfigMain/" .. game.Players.LocalPlayer.Name .. ".json", '{"Setting":{"Fully Cyborg":{"Enable":false},"Soul Reaper":{"Enable":false},"ESP":{"Chest":false,"Boss":false,"Fruit":false,"Player":false,"Island":false},"SeaEvents":{"SeaBeast":false,"AutoEscapeRoughSea":false,"IgnoreSeaBeast":false,"SelectShip":"PirateSloop","ShipSpeedModifier":false,"ShipSpeed":300,"DistanceNearMob":300,"TerrorShark":false,"AzureEmberLimit":25,"Piranha":false,"SafeMode":false,"AutoStartKitsune":false,"Ship":false,"AutoFindLeviathan":false,"StartSeaEvents":false,"AutoTradeKitsune":false,"AutoCollectKitsune":false,"Shark":false,"AutoFindKitsune":false,"IgnoreShip":false,"MultiSegmentAttack":false,"Leviathan":false,"FlyShipFarm":false,"DistanceNearSeaBeast":300,"SpinDistance":200},"Open Pad":{"Enable":false},"Webhook":{"Url":""},"Full Dough King":{"Enable":false},"Rip Indra":{"Enable":false},"SwordSwitcher":{"Enable":false,"MaxMastery":false},"Black Beard":{"Enable":false},"AcceptQuest_Bone_Katakuri":{"Enable":false},"SubFarming":[],"OneClick":{"TripleQuest":false,"UnlimitGetQuest":false,"Sea2KeyHop":false,"Enable":false,"DisableMeleeSwitcher":false,"Melee600Mastery":false,"AutoAddStats":false},"Tushita Hop__1":{"Enable":false},"Trial":{"AutoKill":false,"ChooseGear":false,"LookAtMoon":false,"WeaponSkills":[],"UseWeapon":false,"AutoReset":false,"Enable":false},"Shop":{"HakiColor":false,"AutoBuyBribe":false,"LegendaryHakiColor":false,"AutoRandomFruit":false,"AutoRandomBone":false,"AutoLegendarySword":false},"Spawn Rip Indra":{"Enable":false},"Material":{"Enable":false},"LocalPlayer":{"AutoBuso":true,"DoDashRange":false,"NoClip":false,"InfGeppo":false,"DashRange":200,"NoClipShip":false,"SpeedHack":false,"SoruNoCD":false,"AutoUseV3":false,"AutoUseV4":false,"DashModify":false,"Speed":90,"DashNoCD":false,"WaterWalker":true,"AutoEnableObservation":false},"CDK":{"Enable":false},"FullyAutoTrial":{"Enable":false},"FullyRaceV4_Entrance":{"Enable":false},"GetFruit":{"Enable":false},"Mastery":{"Sword/Low":false,"Fruit/Gun":false,"Enable":false,"Sword":true,"Y":30,"Camera":false,"Health":20,"Z":0,"X":0},"YoruV3":{"Enable":false,"Upgrade":false},"Law":{"Enable":false},"Pvp":{"DisableSilentAim":false,"SilentAimSelected":false,"Method":"Nearest","SilentAimNear":false,"AutoShootGun":false,"GunDistanceCheck":false,"AutoKillNear":false},"Citizen Quest":{"Enable":false,"Hop":false},"__PoleHop":{"Enable":false},"Elite":{"Enable":false},"SkillsSettingRemake":{"ClickFruit":false,"Melee":["Z","X","C"],"Gun":["Z","X"],"Sword":["Z","X"],"Blox Fruit":["X","C","Z","F","V"]},"Bone":{"Enable":false},"Blacksmith":{"Enable":false,"WeaponType":false},"Fully Ghoul":{"Enable":false},"Factory":{"Enable":false},"Get Ghoul":{"Enable":false},"SkillsSet2":{"Blox Fruit":true,"Gun":true,"Melee":true,"Sword":true},"Rainbow Haki":{"Enable":false,"Hop":false},"TweenToPlayer":false,"Fruit":{"FruitsToSnipe":[],"EnableSnipeFruit":false,"AutoStore":false},"Kill Aura":{"Enable":false,"AnchorTPBack":true,"DistanceFromAnchor":4000},"Panel":{"Enable":false},"Tween":{"Speed":350,"TimePause":0.2,"Pause":false,"TimeNeedPause":2},"RaceV4":{"CheckStatus":false},"Winter Event":{"Enable":false},"BossSniper":{"Enable":false,"Hop":false,"SelectedBoss":[]},"Raid Fruit Hop":{"Enable":false},"Cake Prince":{"Enable":false},"Unlock Electric Claw":{"Enable":false},"Katakuri":{"Enable":true},"Evolve Observation":{"Enable":false,"Hop":false},"Spawn Soul Reaper":{"Enable":false},"Mirage Snipe Fruit":{"Enable":false},"Black Beard Hop":{"Enable":false},"Level Observation":{"Enable":false,"Hop":false},"Pirate Raid":{"Enable":false},"__SaberHop":{"Enable":false},"AutoTrainTrial":{"Enable":false,"TrainPlace":"Bone"},"FastAttack":{"TimeToAttack":3,"OldFastAttack":false,"Enable":true,"TimeFastAttack":100,"OnPlayer":true,"OnMob":true,"SupremeAttack":false,"FastAttackIfBoss":false,"StopClick":false},"Collect Chest":{"InstaTP":false,"Hop":false,"Enable":false,"IgnoreItem":false,"LimitChest":70},"FruitSkillsHold":{"X":0,"C":0,"Z":0,"F":0,"V":0},"BringMob":{"Enable":true,"Radius":500},"Soul Guitar":{"Enable":false},"Hybrid Fruit Hop":{"Enable":false},"Tushita":{"Enable":false},"TrialTeam":{"Enable":false},"Bartilo":{"Enable":false},"Spawn Black Beard":{"Enable":false},"Haki Pad":{"Enable":false},"Misc":{"__RemoveDMGCounter":false,"__RemoveEffects":false,"DisableRender3D":false,"__NoFog":false,"__RemoveNotification":false,"__PreJoin":false},"Material Soul Guitar":{"Enable":false},"Race Evolve":{"Enable":false,"Hop":false},"Raid":{"Enable":false,"GetFruitUnder1M":false,"NoDelay":false,"Awaken":false},"Dough King":{"Enable":false}}}')
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
            task.spawn(function()
                while task.wait() do
                    for i,v in pairs(game:GetService("Workspace").Map:GetDescendants()) do
                        if (v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart") or v:IsA("Model")) then
                            v:Remove()
                        end
                    end
                end
            end)
            task.spawn(function()
                while task.wait() do
                    for _, enemy in ipairs(game.Workspace.Enemies:GetChildren()) do
                        if not (string.find(enemy.Name, "Living Zombie") or string.find(enemy.Name, "Reborn Skeleton") or string.find(enemy.Name, "Demonic Soul") or string.find(enemy.Name, "Posessed Mummy")) then
                            enemy:Destroy()
                        end
                    end
                end
            end)
            if not IsAutoBounty then
                repeat task.wait(1) until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Geta Bi Thieu Nang")
            end
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

function SendNotHasTomoeRingInfo()
    local MessagesToSend = {
        ['content'] = "Device: " .. DeviceName .. " | " .. "Username: " .. game.Players.LocalPlayer.Name .. " " .. DateTime.now():ToIsoDate(),
    }
    local success, webMessage = pcall(function()
        game:GetService("HttpService"):PostAsync("https://discord.com/api/webhooks/1236651060886503494/qympDAyMSe43-bSvsxjNaobsL5jZC4En8hPPEnjV9Z6-2z19T03OiaP-6ov3sXqJbtbC", game:GetService("HttpService"):JSONEncode(MessagesToSend))
    end)
    if success == false then
        local response = request({
            Url = "https://discord.com/api/webhooks/1236651060886503494/qympDAyMSe43-bSvsxjNaobsL5jZC4En8hPPEnjV9Z6-2z19T03OiaP-6ov3sXqJbtbC",
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
        if a.Name == 'ErrorPrompt' and not IsEverythingDone then
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
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",2549)   
end)

-- Check If Has Godhuman, Magma Fruit And Magma Fruit All Skills Unlocked
task.spawn(function()
    task.spawn(function()
        while task.wait(1) do
            if HasGodhuman and HasMagmaFruit and HasMagmaFruitAllSkillsUnlocked then
                break
            end
            if not IsAutoBounty and not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
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
    if not HasGodhuman then
        SendNotHasGodhumanInfo()
    end
    if not HasMagmaFruit then
        SendNotHasMagmaFruitInfo()
    end
end)

-- If Has Godhuman And Magma Fruit Then Start Auto Farm Mastery For Magma Fruit All Skills
task.spawn(function()
    while task.wait(1) do
        if IsFarmingMagmaFruitMastery then
            break
        end
        if not IsFarmingMagmaFruitMastery and not HasMagmaFruitAllSkillsUnlocked and HasGodhuman and HasMagmaFruit then
            writefile("AynaShiratori/IsFarmingMagmaFruitMastery/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
            game.Players.LocalPlayer:Kick("Found Gothuman And Magma Fruit. Starting Auto Farm Mastery For Magma Fruit All Skills")
        end
    end
end)

-- If Has Godhuman And Magma Fruit All Skills Unlocked Then Do Auto Bounty
task.spawn(function()
    while task.wait(1) do
        if IsAutoBounty then
            break
        end
        if HasGodhuman and HasMagmaFruit and HasMagmaFruitAllSkillsUnlocked then
            writefile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
            task.wait(0.1)
            game.Players.LocalPlayer:Kick("Found GodHuman And Magma Fruit All Skills Unlocked. Starting Auto Bounty")
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
                writefile("AynaShiratori/IsReadyToChangeAccount/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
                game.Players.LocalPlayer:Kick("Reached " .. AmountBountyToKick .. " " .. "Bounty | Username: " ..  game.Players.LocalPlayer.Name)
            end
        end
        task.wait(10)
    end
end

-- Check If Bounty Has Reached Amount Of Bounty To Kick Then Writefile IsEverythingDone
task.spawn(function()
    local LeaderStats = game.Players.LocalPlayer:FindFirstChild("leaderstats")
    local BountyStat = leaderstats:FindFirstChild("Bounty/Honor")
    local BountyValue = BountyStat.Value
    while task.wait(1) do
        if IsEverythingDone then
            break
        end
        if IsAutoBounty and not IsEverythingDone then
            if LeaderStats then
                if BountyStat and BountyStat:IsA("IntValue") then
                    if BountyValue >= AmountBountyToKick then
                        writefile("AynaShiratori/IsEverythingDone/" .. game.Players.LocalPlayer.Name .. ".txt" .. OsDateResult)
                    end
                end
            end
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
if not HasGodhuman or not HasMagmaFruit then
    ChooseTeam()
end

-- Do Wazure Hub Magma Fruit Auto Farm Mastery
if IsFarmingMagmaFruitMastery and not HasMagmaFruitAllSkillsUnlocked and not IsAutoBounty and not IsEverythingDone then
    ChooseTeam()
    LoadWazureHubFruitMasteryFarmConfig()
    LoadWazureHub()
end

-- Do Auto Bounty Also Load Build To Do Auto Bounty
task.spawn(function()
    if IsAutoBounty and not IsEverythingDone then
        task.spawn(function()
            FullyFPSBooster()
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

spawn(function()
    while task.wait(0.5) do
        if IsAutoBounty then
             pcall(function()
                game:GetService'VirtualUser':CaptureController()
			    game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
            end)
        end
    end
end)

-- Check If Is Not Loaded Then Rejoin
task.spawn(function()
    while task.wait(60) do
        if not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") and IsEverythingDone then
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
