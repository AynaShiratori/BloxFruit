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

getgenv().AccountFilter = {
    ["Enabled"] = false,
    ["Accounts"] = {"account_name_here"}
}

getgenv().config = {
    ["Team"] = "Pirates",
    ["FPS Boost"] = true,
    ["LocalPlayer"] = {
        ["Ken Haki"] = true,
        ["Invisible"] = true,
        ["Click Delay"] = 0.1,
        ["Panic Mode"] = {
            ["Skip Player"] = true,
            ["Run"] = 3000,
            ["Max"] = 5000,
        }
    },
    ["settings"] = {
        ["Cam Farm"] = true,
        ["White Screen"] = true,
        ["Region_Hop"] = {
            ["Enabled"] = true,
            ["Value"] = "United States"
        },
        ["Webhook"] = {
            ["Enabled"] = true,
            ["URL"] = {
                ["Discord"] = "https://discord.com/api/webhooks/1225439439464173568/IhEF4e3jRGIW8C33tHfWI_CC_7M-vKnsGDBRm5IiVj2sgNozkulBbrCIkfNxh_cRI6Vk",
                ["Thumbnail"] = "https://r2.easyimg.io/xk94bq20f/b731f097-b9c9-4e72-a542-e47ecfa44475.jpeg"
            }
        },
        ["Chatkill"] = {
            ["Enabled"] = true,
            ["Text"] = {
                "why did u run","gg"
            }
        },
        ["FPS Locker"] = {
            ["Enabled"] = true,
            ["Value"] = 9999
        },
	["Bounty Lock"] = {
            ["Enabled"] = true,
            ["Value"] = 30000000
        },
        ["Ignore"] = {
            ["Buddha Users"] = false,
            ["Portal Users"] = true,
            ['Some Annoying V4'] = false,
        },
        ["Stats"] = {
            ["Auto Reset Stat If Doesnt Match"] = false,
            ["Points"] = "Sword"
	},
    },
    ["Skills"] = {
        ["Melee"] = {
            ["Time"] = 1,
	    ["SwitchNextWeaponIfCooldown"] = true,
            ["Enabled"] = true,
            ["Z"] = {["Enabled"] = true, ["HoldTime"] = 0.6},
            ["X"] = {["Enabled"] = true, ["HoldTime"] = 0.2},
            ["C"] = {["Enabled"] = true, ["HoldTime"] = 0.1}
        },
        ["Fruit"] = {
            ["Time"] = 0,
            ["Enabled"] = false,
            ["Z"] = {["Enabled"] = false, ["HoldTime"] = 0},
            ["X"] = {["Enabled"] = false, ["HoldTime"] = 0},
            ["C"] = {["Enabled"] = false, ["HoldTime"] = 0},
            ["V"] = {["Enabled"] = false, ["HoldTime"] = 0},
            ["F"] = {["Enabled"] = false, ["HoldTime"] = 0}
        },
        ["Sword"] = {
            ["Time"] = 1,
            ["Enabled"] = true,
            ["Z"] = {["Enabled"] = true, ["HoldTime"] = 0.4},
            ["X"] = {["Enabled"] = true, ["HoldTime"] = 0.3},
        },
        ["Gun"] = {
            ["Time"] = 0,
            ["Enabled"] = false,
            ["GunMode"] = false,
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

local function Get_Fruit(Fruit)
    if Fruit == "Kitsune Fruit" then
        return "Kitsune-Kitsune"
    elseif Fruit == "Dragon Fruit" then
        return "Dragon-Dragon"
    elseif Fruit == "Leopard Fruit" then
        return "Leopard-Leopard"
    end
end

task.spawn(function()
    local lp,po,ts = game:GetService('Players').LocalPlayer,game.CoreGui.RobloxPromptGui.promptOverlay,game:GetService('TeleportService')
    po.ChildAdded:connect(function(a)
        if a.Name == 'ErrorPrompt' then
            repeat
                ts:Teleport(game.PlaceId)
                task.wait(2)
            until false
        end
    end)
end)

task.spawn(function()
    while task.wait(900) do
        game:GetService('TeleportService'):Teleport(game.PlaceId)
    end
end)
task.spawn(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LeNguyenBaoPhuc/BloxFruits/main/Bounty.lua"))()
end)

task.spawn(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/skadidau/unfazedfree/main/trackstatblox"))()
end)

-- Automatically Random And Store Fruits
task.spawn(function()
    while AutoRandomAndStoreFruits do task.wait()
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

-- Disable Rendering
game:GetService("RunService"):Set3dRenderingEnabled(false)

-- Better Vision
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

-- Current Status
local CurrentStatus = "Heavily Modified By Ayna Shiratori"

-- UI
task.spawn(function()
    while task.wait() do
        if getgenv().FullyRemovePlayerGui == true then
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

task.wait(0.5)
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
    game.Workspace.Enemies:Remove()
    game.Workspace.NPCs:Remove()
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

for _, v in pairs(game.Players:GetChildren()) do
    for _, v2 in pairs(v.Character:GetDescendants()) do
        if v2:IsA("BasePart") or v2:IsA("Decal") then
            v2.Transparency = 1
        end
    end
end

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        for _, v in pairs(character:GetDescendants()) do
            if v:IsA("BasePart") or v:IsA("Decal") then
                v.Transparency = 1
            end
        end
    end)
end)
