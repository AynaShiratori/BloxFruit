task.wait(3)
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
            ["Value"] = "Singapore"
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

task.wait(0.5)

settings().Rendering.QualityLevel = "1"
UserSettings():GetService("UserGameSettings").MasterVolume = 0
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat,false)
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
local CameraShake = require(game.ReplicatedStorage.Util.CameraShaker)
CameraShake:Stop()
game:GetService("Players").LocalPlayer.PlayerGui.TouchGui:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.MobileMouselock:Destroy()

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
