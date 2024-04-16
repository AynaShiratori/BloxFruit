local DeviceName = AynaShiratori["Device Name"]
local Misc = AynaShiratori["Misc"]
local WebhooksLogs = Misc["Webhooks Logs"]
local StatusUIEnabled = Misc["Status UI"]
local YummyTrackStatEnabled = Misc["Yummy Track Stats"]
local SelectTeam = Misc["Select Team"]
local AutoRandomAndStoreFruitsEnabled = Misc["Auto Random And Store Fruits"]
local Performance = AynaShiratori["Performance"]
local FPSLock = (tonumber(Performance["FPS Lock"]))
local TimeWaitToRejoin = Performance["Time Wait To Rejoin"]
local WhiteScreenEnabled = Performance["White Screen"]
local FullyFPSBoosterEnabled = Performance["Fully FPS Booster"]
local FullyRemovePlayerGuiEnabled = Performance["Fully Remove Player Gui"]
local LockBounty = AynaShiratori["Lock Bounty"]
local LockBountyEnabled = LockBounty["Enabled"]
local AmountBountyToKick = LockBounty["Value"]

-- Godx Auto Bounty Settings
getgenv().config = {
    ["Team"] = "Pirates",
    ["FPS Boost"] = false,
    ["LocalPlayer"] = {
        ["Ken Haki"] = true, ["Invisible"] = false, ["Click Delay"] = 0.01,
        ["Panic Mode"] = {["Skip Player"] = true, ["Run"] = 3000, ["Max"] = 5000}
    },
    ["settings"] = {
        ["Cam Farm"] = true,
        ["White Screen"] = true,
        ["Region_Hop"] = {["Enabled"] = true, ["Value"] = "United States"},
        ["Webhook"] = {["Enabled"] = true, ["URL"] = {["Discord"] = "https://discord.com/api/webhooks/1225439439464173568/IhEF4e3jRGIW8C33tHfWI_CC_7M-vKnsGDBRm5IiVj2sgNozkulBbrCIkfNxh_cRI6Vk", ["Thumbnail"] = "https://r2.easyimg.io/xk94bq20f/b731f097-b9c9-4e72-a542-e47ecfa44475.jpeg"}},
        ["Chatkill"] = {["Enabled"] = true, ["Text"] = {"gg btw why did u run"}},
        ["FPS Locker"] = {["Enabled"] = true, ["Value"] = 30},
        ["Bounty Lock"] = {["Enabled"] = false, ["Value"] = 30000000},
        ["Ignore"] = {["Buddha Users"] = false, ["Portal Users"] = true, ['Some Annoying V4'] = false},
        ["Stats"] = {["Auto Reset Stat If Doesnt Match"] = false, ["Points"] = "Sword"},
    },
    ["Skills"] = {
        ["Melee"] = {["Time"] = 1, ["Enabled"] = true,
            ["Z"] = {["Enabled"] = true, ["HoldTime"] = 0.6}, 
            ["X"] = {["Enabled"] = true, ["HoldTime"] = 0.2},
            ["C"] = {["Enabled"] = true, ["HoldTime"] = 0.1},
        },
        ["Fruit"] = {["Time"] = 1.75, ["Enabled"] = false,
            ["Z"] = {["Enabled"] = false, ["HoldTime"] = 1}, 
            ["X"] = {["Enabled"] = false, ["HoldTime"] = 0},
            ["C"] = {["Enabled"] = false, ["HoldTime"] = 0}, 
            ["V"] = {["Enabled"] = false, ["HoldTime"] = 0},
            ["F"] = {["Enabled"] = false, ["HoldTime"] = 0}
        },
        ["Sword"] = {["Time"] = 1, ["Enabled"] = true,
            ["Z"] = {["Enabled"] = true, ["HoldTime"] = 0.4},
            ["X"] = {["Enabled"] = true, ["HoldTime"] = 0.3},
        },
        ["Gun"] = {["Time"] = 0, ["Enabled"] = false, ["GunMode"] = false,
            ["Z"] = {["Enabled"] = false, ["HoldTime"] = 0},
            ["X"] = {["Enabled"] = false, ["HoldTime"] = 0},
        }
    }
}

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
if not isfolder("AynaShiratori/HasCursedDualKatana") then
    makefolder("AynaShiratori/HasCursedDualKatana")
end
if not isfolder("AynaShiratori/IsFarmingCursedDualKatanaMastery") then
    makefolder("AynaShiratori/IsFarmingCursedDualKatanaMastery")
end
if not isfolder("AynaShiratori/HasCursedDualKatanaAllSkillsUnlocked") then
    makefolder("AynaShiratori/HasCursedDualKatanaAllSkillsUnlocked")
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

local WEBHOOK_URL1 = "https://discord.com/api/webhooks/1227587404135665704/zuhlkCKekjohRm-Fuvemq31lvRJR_uEmNjCDXKIIyTWhj-NgbBqqEoJSUruGdqHT4h26"
local WEBHOOK_URL2 = "https://discord.com/api/webhooks/1227587608243081216/Qtag0oAcTP1pVC8QBb85_8GzcKTkQ9NFtO-MeMyWVA3VPAaCeR-vBn9b62LZTItqPbYf"
local WEBHOOK_URL3 = "https://discord.com/api/webhooks/1227588314849218640/U1kzcrh-a2obKsAtIwjtsgBoZB7gVQ6wJm1ZDtK8dW7UBDQeVQXu3AanRUIVeGjQIZZa"
local WEBHOOK_URL4 = "https://discord.com/api/webhooks/1227588391873286257/wY7sOVEU-nC_AtzkaVJYco5eZp5rDugtI7uU4dhk113QUreyxDH-hqELqzhsWqAk8n2m"
local WEBHOOK_URL5 = "https://discord.com/api/webhooks/1227588475520417913/dW2qqItui1Wl9gg_Q2izfdHu9cXvst_YExQoeEyX2yOtyuofswP69rv7qkc6XmMD8QMK"
local WEBHOOK_URL6 = "https://discord.com/api/webhooks/1227588777552121876/4C05_IY07edLi-tZiS5ySIfsmgyzkgTLVRIZdZFb8_ssRIqHlpI1-9DWsMlzOE1RMUrD"
local WEBHOOK_URL7 = "https://discord.com/api/webhooks/1227588819935821854/AmwkvzTuOVYMi8yDzkTeJAbQi9SQGW6mALniCGc_AzpJBdnmFD9Mf0uH2v0j8vi8kBOu"
local WEBHOOK_URL8 = "https://discord.com/api/webhooks/1227589214779211829/tA4smAhzjCZNYNlrvYV96EKIw8Irr5YZaXNnt28oEG2IlQmkAvPDVxV3098GM9xta_2n"
local WEBHOOK_URL9 = "https://discord.com/api/webhooks/1227589355279876227/bygN10oBh9V8W7bw7odXvBBdsa3QqR8HVgBflhfD1eanVN_OGV25EdztLpgZbPAqMcN3"
local WEBHOOK_URL10 = "https://discord.com/api/webhooks/1227588920049532929/0U9kAza7bsbnTLncpqf33z8KZJhMdcW88K2JsMQQqQs4rIr6TS2jFzWcHkIeGaINRrDN"
local WEBHOOK_URL11 = "https://discord.com/api/webhooks/1227589602475511838/xZJ4VrJ0RN3Ad07owga-zXtfrePH6uwKJnwc6s6wRrE-O7-SoqKBzNM5wnggUScKVUYJ"
local WEBHOOK_URL12 = "https://discord.com/api/webhooks/1227589798118817824/xGuVxqeB0yTYJ2vxfdeY2w5L-L-6ww6yW-9QqdHqLW1GV2_wDXoaSkG-RBCmPQDyKCZJ"
local WEBHOOK_URL13 = "https://discord.com/api/webhooks/1227589900358910044/zNDe_pHl2gAGOw5ryXLkiv7_58N47MQuLKNZfWRYC52I_LtkwAdig0xaxJIP5cqQSgiJ"
local WEBHOOK_URL14 = "https://discord.com/api/webhooks/1227590013932404818/28tg7nghuX_QHyF4Ia6FXMhiZgm91vuz_j7LrOmJnjxrgZsvWe3ScUoRf3baCDOaz2Hl"
local OSDateStringToFormat = "%x %X"
local OsDateResult = os.date(OSDateStringToFormat)

local function Get_Fruit(Fruit)
    if Fruit == "Kitsune Fruit" then
        return "Kitsune-Kitsune"
    elseif Fruit == "Dragon Fruit" then
        return "Dragon-Dragon"
    elseif Fruit == "Leopard Fruit" then
        return "Leopard-Leopard"
    end
end
local RefundStatCode = {	
	"SUB2GAMERROBOT_RESET1",
	"KITT_RESET",
	"Sub2UncleKizaru"
}

local MyLevelAsd = game.Players.LocalPlayer.Data.Level.Value
local MeleeStat = game.Players.localPlayer.Data.Stats.Melee.Level.Value
local DefenseStat = game.Players.localPlayer.Data.Stats.Defense.Level.Value

-- Current Status
local CurrentStatus = "Heavily Modified By Ayna Shiratori"
if StatusUIEnabled then
    task.spawn(function()
        while task.wait(10) do
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
            if isfile("AynaShiratori/HasCursedDualKatana/" .. game.Players.LocalPlayer.Name .. ".txt") and not isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") then
                if getgenv().HasCursedDualKatana then return end
                getgenv().HasCursedDualKatana = true
                CurrentStatus = "Found Cursed Dual Katana"
            else
                if not isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") then
                    CurrentStatus = "!!! Missing Cursed Dual Katana !!!"
                    break
                end
            end
            task.wait(1)
            if not isfile("AynaShiratori/HasCursedDualKatanaAllSkillsUnlocked/" .. game.Players.LocalPlayer.Name .. ".txt") and isfile("AynaShiratori/IsFarmingCursedDualKatanaMastery/" .. game.Players.LocalPlayer.Name .. ".txt") then
                if getgenv().HasCursedDualKatanaAllSkillsUnlocked then return end
                getgenv().HasCursedDualKatanaAllSkillsUnlocked = true
                CurrentStatus = "Farming Cursed Dual Katana To Lv.375 Mastery"
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
        if getgenv().FullyRemovePlayerGui == true and StatusUIEnabled then
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
end)

-- Better Vision
if FullyRemovePlayerGuiEnabled then
    task.spawn(function()
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
        for i, v in pairs(game:GetService("CoreGui"):GetChildren()) do
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

function LoadGodxAutoBounty()
    task.spawn(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LeNguyenBaoPhuc/BloxFruits/main/Bounty.lua"))()
    end)
end

function LoadRedzHub()
    task.spawn(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
    end)
end

function LoadRedzHubCursedDualKatanaMasteryFarmConfig()
    writefile("redz Hub | Blox Fruits.lua", '{"Sea/AzureAmount":20,"SeaSkill/Aimbot":true,"Misc/UIScale":"Small","Misc/AutoClickDelay":0.18,"Farm/HallowBoss":false,"SeaSkill/F":false,"Farm/PiratesSea":false,"Sea/X":true,"Misc/AutoHaki":true,"Notify/Fruit":false,"Misc/IncreaseAttackDistance":true,"Misc/RemoveDamage":false,"Sea/Piranha":true,"Misc/BringMobsDistance":200,"Sea/F":false,"Misc/TweenSpeed":250,"Sea/SeaLevel":"6","Sea/PirateBrigade":true,"Farm/TradeBone":false,"Misc/RemoveNotifications":false,"Sea/Terrorshark":true,"Sea/BoatSpeed":250,"Sea/V":true,"SeaSkill/X":true,"SeaSkill/C":true,"Sea/PirateGrandBrigade":true,"Misc/AutoClick":true,"Sea/C":true,"Sea/FishCrewMember":true,"Farm/CakePrince":false,"Misc/BringMobs":true,"Misc/WalkSpeedSelect":145,"Misc/WalkOnWater":true,"Farm/Nearest":false,"Fruits/AutoStore":false,"Misc/FarmDistance":20,"Farm/EliteHunter":false,"Sea/Shark":true,"Fruits/Teleport":false,"AutoMastery/FightStyle":false,"Notify/Time":15,"Sea/SeaBeasts":true,"SeaSkill/V":true,"Farm/Bone":true,"Farm/EliteHunterHop":false,"Sea/FishBoat":true,"Main/FarmTool":"Sword","Farm/BossSelected":false,"Farm/BossQuest":true,"Misc/AntiAFK":true,"ESP/Fruits":false,"Misc/FastAttack":true,"Sea/Z":true,"Buy/HakiColor":false,"AutoMastery/Swords":false,"SeaSkill/Z":true,"Farm/MasteryHealth":25,"Sea/Aimbot":true,"Farm/DoughKing":false,"Misc/ChangeWS":false,"Farm/Level":false,"Fruits/AutoRandom":false,"FMastery/Selected":600,"Farm/AllBosses":false}')
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
        
            game:GetService("Lighting").Brightness = 0
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

function SendAutoReconnectInfo()
    if not WEBHOOK_URL1 or WEBHOOK_URL1 == "" then print("Not Found Webhook Url 1") return end

    local embed = {
            ["title"] = "Detected Error Promt",
            ["description"] = "Device: " .. DeviceName .. " " .. "Username: " .. game.Players.LocalPlayer.Name .. " " .. OsDateResult
        }
        
    (syn and syn.request or http_request or http.request) {
        Url = WEBHOOK_URL1;
        Method = 'POST';
        Headers = {
            ['Content-Type'] = 'application/json';
        };
        Body = game:GetService("HttpService"):JSONEncode({
            
            embeds = {embed} 
        })
    }
    print("Sent Auto Reconnect Info To Webhook On Discord")
end

function SendAFKChecksBountyNotChangedInfo()
    if not WEBHOOK_URL2 or WEBHOOK_URL2 == "" then print("Not Found Webhook Url 2") return end

    local embed = {
            ["title"] = "Detected Bounty Not Changed In 15 Minutes",
            ["description"] = "Device: " .. DeviceName .. " " .. "Username: " .. game.Players.LocalPlayer.Name .. " " .. OsDateResult
        }
        
    (syn and syn.request or http_request or http.request) {
        Url = WEBHOOK_URL2;
        Method = 'POST';
        Headers = {
            ['Content-Type'] = 'application/json';
        };
        Body = game:GetService("HttpService"):JSONEncode({
            
            embeds = {embed} 
        })
    }
    print("Sent AFK Checks bounty Not Changed Info To Webhook On Discord")
end

function SendAFKChecksIdle20MinutesInfo()
    if not WEBHOOK_URL3 or WEBHOOK_URL3 == "" then print("Not Found Webhook Url 3") return end

    local embed = {
            ["title"] = "Detected Idle For 20 Minutes",
            ["description"] = "Device: " .. DeviceName .. " " .. "Username: " .. game.Players.LocalPlayer.Name .. " " .. OsDateResult
        }
        
    (syn and syn.request or http_request or http.request) {
        Url = WEBHOOK_URL3;
        Method = 'POST';
        Headers = {
            ['Content-Type'] = 'application/json';
        };
        Body = game:GetService("HttpService"):JSONEncode({
            
            embeds = {embed} 
        })
    }
    print("Sent AFK Checks Idle 20 Minutes Info To Webhook On Discord")
end

function SendScriptsNotLoadedInfo()
    if not WEBHOOK_URL4 or WEBHOOK_URL4 == "" then print("Not Found Webhook Url 4") return end

    local embed = {
            ["title"] = "Detected Error Promt",
            ["description"] = "Device: " .. DeviceName .. " " .. "Username: " .. game.Players.LocalPlayer.Name .. " " .. OsDateResult
        }
        
    (syn and syn.request or http_request or http.request) {
        Url = WEBHOOK_URL4;
        Method = 'POST';
        Headers = {
            ['Content-Type'] = 'application/json';
        };
        Body = game:GetService("HttpService"):JSONEncode({
            
            embeds = {embed} 
        })
    }
    print("Sent Scripts Not Loaded Info To Webhook On Discord")
end

function SendScriptsSuccessfullyLoadedInfo()
    if not WEBHOOK_URL5 or WEBHOOK_URL5 == "" then print("Not Found Webhook Url 5") return end

    local embed = {
            ["title"] = ":green_circle: Succesfully Loaded",
            ["description"] = "Device: " .. DeviceName .. " " .. "Username: " .. game.Players.LocalPlayer.Name .. " " .. OsDateResult
        }
        
    (syn and syn.request or http_request or http.request) {
        Url = WEBHOOK_URL5;
        Method = 'POST';
        Headers = {
            ['Content-Type'] = 'application/json';
        };
        Body = game:GetService("HttpService"):JSONEncode({
            
            embeds = {embed} 
        })
    }
    print("Sent Scripts Sucessfully Loaded Info To Discord On Webhook")
end

function SendHasGodhumanInfo()
    if not WEBHOOK_URL6 or WEBHOOK_URL6 == "" then print("Not Found Webhook Url 6") return end

    local embed = {
            ["title"] = "Found Godhuman",
            ["description"] = "Device: " .. DeviceName .. " " .. "Username: " .. game.Players.LocalPlayer.Name .. " " .. OsDateResult
        }
        
    (syn and syn.request or http_request or http.request) {
        Url = WEBHOOK_URL6;
        Method = 'POST';
        Headers = {
            ['Content-Type'] = 'application/json';
        };
        Body = game:GetService("HttpService"):JSONEncode({
            
            embeds = {embed} 
        })
    }
    print("Sent Has Godhuman Info To Discord On Webhook")
end

function SendHasCursedDualKatanaInfo()
    if not WEBHOOK_URL7 or WEBHOOK_URL7 == "" then print("Not Found Webhook Url 7") return end

    local embed = {
            ["title"] = "Found Cursed Dual Katana",
            ["description"] = "Device: " .. DeviceName .. " " .. "Username: " .. game.Players.LocalPlayer.Name .. " " .. OsDateResult
        }
        
    (syn and syn.request or http_request or http.request) {
        Url = WEBHOOK_URL7;
        Method = 'POST';
        Headers = {
            ['Content-Type'] = 'application/json';
        };
        Body = game:GetService("HttpService"):JSONEncode({
            
            embeds = {embed} 
        })
    }
    print("Sent Has Cursed Dual Katana Info To Discord On Webhook")
end

function SendIsFarmingCursedDualKatanaMasteryInfo()
    if not WEBHOOK_URL8 or WEBHOOK_URL8 == "" then print("Not Found Webhook Url 8") return end

    local embed = {
            ["title"] = "Is Farming Cursed Dual Katana Mastery",
            ["description"] = "Device: " .. DeviceName .. " " .. "Username: " .. game.Players.LocalPlayer.Name .. " " .. OsDateResult
        }
        
    (syn and syn.request or http_request or http.request) {
        Url = WEBHOOK_URL8;
        Method = 'POST';
        Headers = {
            ['Content-Type'] = 'application/json';
        };
        Body = game:GetService("HttpService"):JSONEncode({
            
            embeds = {embed} 
        })
    }
    print("Sent Is Farming Cursed Dual Katana Mastery Info To Discord On Webhook")
end

function SendHasCursedDualKatanaAllSkillsUnlockedInfo()
    if not WEBHOOK_URL9 or WEBHOOK_URL9 == "" then print("Not Found Webhook Url 9") return end

    local embed = {
            ["title"] = "Found Cursed Dual Katana All Skills Unlocked, Current Mastery: " .. game.Players.LocalPlayer.Backpack:FindFirstChild("Cursed Dual Katana").Level.Value,
            ["description"] = "Device: " .. DeviceName .. " " .. "Username: " .. game.Players.LocalPlayer.Name .. " " .. OsDateResult
        }
        
    (syn and syn.request or http_request or http.request) {
        Url = WEBHOOK_URL9;
        Method = 'POST';
        Headers = {
            ['Content-Type'] = 'application/json';
        };
        Body = game:GetService("HttpService"):JSONEncode({
            
            embeds = {embed} 
        })
    }
    print("Sent Has Cursed Dual Katana All Skills Unlocked Info To Discord On Webhook")
end

function SendIsAutoBountyInfo()
    if not WEBHOOK_URL12 or WEBHOOK_URL12 == "" then print("Not Found Webhook Url 12") return end

    local embed = {
            ["title"] = "Found Godhuman And Cursed Dual Katana All Skills Unlocked, Doing Auto Bounty",
            ["description"] = "Device: " .. DeviceName .. " " .. "Username: " .. game.Players.LocalPlayer.Name .. " " .. OsDateResult
        }
        
    (syn and syn.request or http_request or http.request) {
        Url = WEBHOOK_URL12;
        Method = 'POST';
        Headers = {
            ['Content-Type'] = 'application/json';
        };
        Body = game:GetService("HttpService"):JSONEncode({
            
            embeds = {embed} 
        })
    }
    print("Sent Is Auto Bounty To Discord On Webhook")
end

function SendBountyLostInfo()
    if not WEBHOOK_URL13 or WEBHOOK_URL13 == "" then print("Not Found Webhook Url 13") return end
    local embed = {
            ["title"] = "Detected Player Died",
            ["description"] = "Device: " .. DeviceName .. " " .. "Username: " .. game.Players.LocalPlayer.Name .. " " .. OsDateResult
        }
        
    (syn and syn.request or http_request or http.request) {
        Url = WEBHOOK_URL13;
        Method = 'POST';
        Headers = {
            ['Content-Type'] = 'application/json';
        };
        Body = game:GetService("HttpService"):JSONEncode({
            
            embeds = {embed} 
        })
    }
    print("Sent Bounty Lost To Discord On Webhook")
end

function SendIsEverythingDone()
    if not WEBHOOK_URL14 or WEBHOOK_URL14 == "" then print("Not Found Webhook Url 14") return end

    local embed = {
            ["title"] = "Is Everything Done !",
            ["description"] = "Device: " .. DeviceName .. " " .. "Username: " .. game.Players.LocalPlayer.Name .. " " .. OsDateResult
        }
        
    (syn and syn.request or http_request or http.request) {
        Url = WEBHOOK_URL14;
        Method = 'POST';
        Headers = {
            ['Content-Type'] = 'application/json';
        };
        Body = game:GetService("HttpService"):JSONEncode({
            
            embeds = {embed} 
        })
    }
    print("Sent Is EVerything Done To Discord On Webhook")
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
            if getgenv().SentAutoReconnectInfo then return end
            getgenv().SentAutoReconnectInfo = true
            SendAutoReconnectInfo()
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
        if getgenv().SendAFKChecksIdle20MinutesInfo then return end
        getgenv().SendAFKChecksIdle20MinutesInfo = true
        SendAFKChecksIdle20MinutesInfo()
        game.Players.LocalPlayer:Kick("It's Been Past " .. TimeWaitToRejoin/60 .. "Minutes " .. "Rejoining")
    end
end)

-- Anti AFK 1
game:service'Players'.LocalPlayer.Idled:connect(function()
    game:service'VirtualUser':CaptureController()
    game:service'VirtualUser':ClickButton2(Vector2.new())
end)

-- Wait Until Game Is Loaded
repeat task.wait(1) until game.PlaceId ~= nil
repeat task.wait(1) until game.Players and game.Players.LocalPlayer
repeat task.wait(1) until game.Players.LocalPlayer:FindFirstChild("PlayerGui") and game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main")

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

-- If Stats Combo Is Not Matched ( Melee, Defesne And Sword Value Is Higher Than 2550 ) Then Tries To Add Point
task.spawn(function()
    repeat task.wait(1) until not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")
    if game.Players.LocalPlayer.Data.Stats.Melee.Level.Value <= 2549 then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",2549)
    end
    if game.Players.LocalPlayer.Data.Stats.Defense.Level.Value <= 2549 then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",2549)
    end
    if game.Players.LocalPlayer.Data.Stats.Sword.Level.Value <= 2549 then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",2549)
    end
end)

-- Check If Has Godhuman, Cursed Dual Katana And Cursed Dual Katana All Skills Unlocked
task.spawn(function()
    while task.wait(1) do
        if isfile("AynaShiratori/HasGodhuman/" .. game.Players.LocalPlayer.Name .. ".txt") and isfile("AynaShiratori/HasCursedDualKatana/" .. game.Players.LocalPlayer.Name .. ".txt") and isfile("AynaShiratori/HasCursedDualKatanaAllSkillsUnlocked/" .. game.Players.LocalPlayer.Name .. ".txt") then
            break
        end
        if not isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") and not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Cursed Dual Katana")
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
                if getgenv().SendHasGodhumanInfo then return end
                getgenv().SendHasGodhumanInfo = true
                SendHasGodhumanInfo()
                writefile("AynaShiratori/HasGodhuman/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
            end
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Cursed Dual Katana") then
                if getgenv().SendHasCursedDualKatana then return end
                getgenv().SendHasCursedDualKatana = true
                SendHasCursedDualKatanaInfo()
                writefile("AynaShiratori/HasCursedDualKatana/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
            end
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Cursed Dual Katana") and game.Players.LocalPlayer.Backpack:FindFirstChild("Cursed Dual Katana").Level.Value >= 375 or game.Players.LocalPlayer.Character:FindFirstChild("Cursed Dual Katana") and game.Players.LocalPlayer.Character:FindFirstChild("Cursed Dual Katana").Level.Value >= 375 then
                if getgenv().SendHasCursedDualKatanaAllSkillsUnlockedInfo then return end
                getgenv().SendHasCursedDualKatanaAllSkillsUnlockedInfo = true
                SendHasCursedDualKatanaAllSkillsUnlockedInfo()
                writefile("AynaShiratori/HasCursedDualKatanaAllSkillsUnlocked/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
            end
        end
    end
end)

-- If Has Godhuman And Cursed Dual Katana Then Start Auto Farm Mastery For Cursed Dual Katana All Skills
task.spawn(function()
    while task.wait(1) do
        if isfile("AynaShiratori/IsFarmingCursedDualKatanaMastery/" .. game.Players.LocalPlayer.Name .. ".txt") then
            break
        end
        if not isfile("AynaShiratori/IsFarmingCursedDualKatanaMastery/" .. game.Players.LocalPlayer.Name .. ".txt") and not isfile("AynaShiratori/HasCursedDualKatanaAllSkillsUnlocked/" .. game.Players.LocalPlayer.Name .. ".txt") and isfile("AynaShiratori/HasGodhuman/" .. game.Players.LocalPlayer.Name .. ".txt") and isfile("AynaShiratori/HasCursedDualKatana/" .. game.Players.LocalPlayer.Name .. ".txt") then
            if getgenv().IsFarmingCursedDualKatanaMastery then return end
            getgenv().IsFarmingCursedDualKatanaMastery = true
            SendIsFarmingCursedDualKatanaMasteryInfo()
            writefile("AynaShiratori/IsFarmingCursedDualKatanaMastery/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
            game.Players.LocalPlayer:Kick("Found Gothuman And Cursed Dual Katana. Starting Auto Farm Mastery For Cursed Dual Katana All Skills")
        end
    end
end)

-- If Has Godhuman And Cursed Dual Katana All Skills Unlocked Then Do Auto Bounty
task.spawn(function()
    while task.wait(1) do
        if isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") then
            break
        end
        if isfile("AynaShiratori/HasGodhuman/" .. game.Players.LocalPlayer.Name .. ".txt") and isfile("AynaShiratori/HasCursedDualKatana/" .. game.Players.LocalPlayer.Name .. ".txt") and isfile("AynaShiratori/HasCursedDualKatanaAllSkillsUnlocked/" .. game.Players.LocalPlayer.Name .. ".txt") then
            if getgenv().SendIsAutoBountyInfo then return end
            getgenv().SendIsAutoBountyInfo = true
            SendIsAutoBountyInfo()
            writefile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
            task.wait(0.1)
            game.Players.LocalPlayer:Kick("Found GodHuman And Cursed Dual Katana All Skills Unlocked. Starting Auto Bounty")
        end
    end
end)

-- If Is Everything Done Then Purchase Rocket Fruit, Purchase Godhuman And Store Cursed Dual Katana To Hide Auto Bounty Config
if isfile("AynaShiratori/IsEverythingDone/" .. game.Players.LocalPlayer.Name .. ".txt") then
    ChooseTeam()
    repeat task.wait(1) until not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit","Rocket-Rocket",false)
    if game.Players.LocalPlayer.Backpack:FindFirstChild("Rocket-Rocket") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreItem","Cursed Dual Katana")
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Cursed Dual Katana") then
                game.Players.LocalPlayer:Kick("Reached " .. math.floor(AmountBountyToKick/1000000) .. "M Bounty !!! Everything Is Done !!! Username: " ..  game.Players.LocalPlayer.Name)
            end
        end
    end
end

-- Check If Bounty Has Reached Amount Of Bounty To Kick Then writefile IsEverythingDone
task.spawn(function()
    while task.wait(1) do
        if isfile("AynaShiratori/IsEverythingDone/" .. game.Players.LocalPlayer.Name .. ".txt") then
            break
        end
        if LockBountyEnabled and isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") and not isfile("AynaShiratori/IsEverythingDone/" .. game.Players.LocalPlayer.Name .. ".txt") and game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value == AmountBountyToKick then
            if getgenv().SendIsEverythingDone then return end
            getgenv().SendiSEverythingDone = true
            SendIsEverythingDone()
            writefile("AynaShiratori/IsEverythingDone/" .. game.Players.LocalPlayer.Name .. ".txt", AmountBountyToKick .. " " .. OsDateResult)
        end
    end
end)

-- Small Performance
settings().Rendering.QualityLevel = "1"
UserSettings():GetService("UserGameSettings").MasterVolume = 0
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat,false)
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
local CameraShake = require(game.ReplicatedStorage.Util.CameraShaker)
CameraShake:Stop()
game:GetService("Players").LocalPlayer.PlayerGui.TouchGui:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.MobileMouselock:Destroy()

-- If Current Sea Is Sea 1 Then Teleport To Sea2 Or If Current Sea Is Sea 2 Then Teleport To Sea3
if game.PlaceId == 2753915549 then
    ChooseTeam()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
elseif game.PlaceId == 4442272183 then
    ChooseTeam()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end

-- The Start Of Everything
if not isfile("AynaShiratori/HasGodhuman/" .. game.Players.LocalPlayer.Name .. ".txt") or not isfile("AynaShiratori/HasCursedDualKatana/" .. game.Players.LocalPlayer.Name .. ".txt") then
    ChooseTeam()
end

-- Do Wazure Cursed Dual Katana Auto Farm Mastery
if isfile("AynaShiratori/IsFarmingCursedDualKatanaMastery/" .. game.Players.LocalPlayer.Name .. ".txt") and not isfile("AynaShiratori/HasCursedDualKatanaAllSkillsUnlocked/" .. game.Players.LocalPlayer.Name .. ".txt") and not isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") and not isfile("AynaShiratori/IsEverythingDone/" .. game.Players.LocalPlayer.Name .. ".txt") then
    LoadRedzHubCursedDualKatanaMasteryFarmConfig()
    ChooseTeam()
    LoadRedzHub()
end

-- Do Auto Bounty Also Load Build To Do Auto Bounty
task.spawn(function()
    if isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") and not isfile("AynaShiratori/IsEverythingDone/" .. game.Players.LocalPlayer.Name .. ".txt") then
        FullyFPSBooster()
        LoadGodxAutoBounty()
        repeat task.wait(1) until not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")
        task.wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Warrior Helmet")
        task.wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
        task.wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Cursed Dual Katana")
        task.wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit","Chop-Chop",false)
    end
end)

-- To Do List
-- If Detected A Bounty Changes Then Send To Webhook On Discord Including How Many Bounty Earned Bla Bla

-- Check If Bounty Is Not Changed In 15 Minutes
local AFKDelayCheck = 450
task.spawn(function()
    repeat task.wait(1) until not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")
    local PlayerAbcdf = game.Players.LocalPlayer
    local currentBountyAbcdf = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
    print("Current Bounty:", currentBountyAbcdf)
    while true do
        task.wait(AFKDelayCheck)
        print("Checking Bounty")
        if PlayerAbcdf then
            local newBountyAbcdf = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
            if (newBountyAbcdf == currentBountyAbcdf and currentBountyAbcdf > 1) and not game.Players.LocalPlayer.PlayerGui.Main.InCombat.Visible == true and isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") then
                SendAFKChecksBountyNotChangedInfo()
                game.Players.LocalPlayer:Kick("Detected Not Killing/AFK. Rejoining...")
            else
                currentBountyAbcdf = newBountyAbcdf
            end
        end
    end
end)

-- Check If Auto-Bounty Is Not Loaded Then Rejoin
task.spawn(function()
    while task.wait(90) do
        if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
            break
        end
        if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") and isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") and not isfile("AynaShiratori/IsAutoBounty/" .. game.Players.LocalPlayer.Name .. ".txt") then
            if getgenv().SendScriptsNotLoadedInfo() then return end
            getgenv().SendScriptsNotLoadedInfo = true
            SendScriptsNotLoadedInfo()
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

-- Automatically Random And Store Fruits
task.spawn(function()
    while AutoRandomAndStoreFruits do task.wait(1)
        pcall(function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
            for _,Fruit in pairs(game.Players.LocalPlayer.Chacracter:GetChildren()) do
                if Fruit:IsA("Tool") and Fruit:FindFirstChild("Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", Get_Fruit(Fruit.Name), Fruit)
                end
            end
            for _,Fruit in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if Fruit:IsA("Tool") and Fruit:FindFirstChild("Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", Get_Fruit(Fruit.Name), Fruit)
                end
            end
        end)
    end
end)

task.spawn(function()
    repeat task.wait(1) until not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")
    if getgenv().SendScriptsSuccessfullyLoadedInfo then return end
    getgenv().SendScriptsSuccesfullyLoadedInfo = true
    SendScriptsSuccessfullyLoadedInfo()
end)
