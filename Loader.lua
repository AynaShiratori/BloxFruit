repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
while task.wait() do
    if game.Players.LocalPlayer.PlayerGui.Main.Loading.Visible == false then
    break
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

FullyFPSBoosterEnabled = true
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
FullyFPSBooster()

task.spawn(function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/b6d24ef1f7dab9c7b22f259a3db6c47e.lua"))()
end)
