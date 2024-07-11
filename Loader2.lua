local OSDateStringToFormat = "%x %X"
local OsDateResult = os.date(OSDateStringToFormat)

if not isfolder("Zeleaq") then
    makefolder("Zeleaq")
end
if not isfolder("Zeleaq/IsFarmingCursedDualKatanaMastery") then
    makefolder("Zeleaq/IsFarmingCursedDualKatanaMastery")
end
if not isfolder("Zeleaq/HasCursedDualKatanaAllSkillsUnlocked") then
    makefolder("Zeleaq/HasCursedDualKatanaAllSkillsUnlocked")
end
if not isfolder("Zeleaq/ResetStats") then
    makefolder("Zeleaq/ResetStats")
end
if not isfolder("Zeleaq/StatsCombo") then
    makefolder("Zeleaq/StatsCombo")
end

-- Do Add Points
task.spawn(function()
    repeat task.wait(1) until not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",2549)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",2549)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",2549)   
end)


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

    writefile("True W-azure V2_Beta/ConfigMain/" .. game.Players.LocalPlayer.Name .. ".json", '{"Setting":{"Fully Cyborg":{"Enable":false},"Soul Reaper":{"Enable":false},"ESP":{"Chest":false,"Boss":false,"Fruit":false,"Player":false,"Island":false},"Raid":{"GetFruitUnder1M":false,"NoDelay":false,"Enable":false,"Awaken":false},"Open Pad":{"Enable":false},"Webhook":{"Url":""},"Hybrid Fruit Hop":{"Enable":false},"Rip Indra":{"Enable":false},"SwordSwitcher":{"Enable":false,"MaxMastery":false},"Black Beard":{"Enable":false},"SafeMode_GetGoodItem":{"Enable":true},"AcceptQuest_Bone_Katakuri":{"Enable":false},"SubFarming":[],"OneClick":{"TripleQuest":false,"UnlimitGetQuest":false,"DisableMeleeSwitcher":false,"Enable":false,"Sea2KeyHop":false,"Melee600Mastery":false,"AutoAddStats":false},"Tushita Hop__1":{"Enable":false},"Trial":{"AutoKill":false,"ChooseGear":false,"LookAtMoon":false,"WeaponSkills":[],"UseWeapon":false,"AutoReset":false,"Enable":false},"Shop":{"HakiColor":false,"AutoBuyBribe":false,"LegendaryHakiColor":false,"AutoRandomFruit":false,"AutoRandomBone":false,"AutoLegendarySword":false},"Spawn Rip Indra":{"Enable":false},"Material":{"Enable":false},"LocalPlayer":{"AutoBuso":true,"DoDashRange":false,"NoClip":false,"DashRange":200,"AutoUseV4":false,"NoClipShip":false,"SpeedHack":false,"SoruNoCD":false,"InfGeppo":false,"AutoUseV3":false,"DashModify":false,"Speed":90,"DashNoCD":false,"WaterWalker":true,"AutoEnableObservation":false},"CDK":{"Enable":false},"FullyAutoTrial":{"Enable":false},"FullyRaceV4_Entrance":{"Enable":false},"SubClass":{"Shipwright":false,"Enable":false},"GetFruit":{"Enable":false},"Mastery":{"Sword/Low":false,"Fruit/Gun":false,"Enable":false,"Sword":true,"Y":30,"Camera":false,"Health":20,"Z":0,"X":0},"YoruV3":{"Enable":false,"Upgrade":false},"Law":{"Enable":false},"Pvp":{"DisableSilentAim":false,"SilentAimSelected":false,"Method":"Nearest","SilentAimNear":false,"AutoShootGun":false,"GunDistanceCheck":false,"AutoKillNear":false},"Citizen Quest":{"Enable":false,"Hop":false},"__PoleHop":{"Enable":false},"Elite":{"Enable":false},"SkillsSettingRemake":{"ClickFruit":false,"Melee":["Z","X","C"],"Blox Fruit":["X","C","Z","F","V"],"Sword":["Z","X"],"Gun":["Z","X"]},"Level Observation":{"Enable":false,"Hop":false},"Blacksmith":{"Enable":false,"WeaponType":false},"Fully Ghoul":{"Enable":false},"Factory":{"Enable":false},"Get Ghoul":{"Enable":false},"SkillsSet2":{"Blox Fruit":true,"Gun":true,"Melee":true,"Sword":true},"Rainbow Haki":{"Enable":false,"Hop":false},"Unlock Electric Claw":{"Enable":false},"Race Evolve":{"Enable":false,"Hop":false},"Fruit":{"FruitsToSnipe":[],"EnableSnipeFruit":false,"AutoStore":false},"Katakuri":{"Enable":false},"BossSniper":{"Enable":false,"Hop":false,"SelectedBoss":[]},"Kill Aura":{"Enable":false,"AnchorTPBack":true,"DistanceFromAnchor":4000},"__SaberHop":{"Enable":false},"Spawn Black Beard":{"Enable":false},"Misc":{"__RemoveDMGCounter":true,"__RemoveEffects":true,"DisableRender3D":false,"__NoFog":true,"__RemoveNotification":true,"__PreJoin":false},"Winter Event":{"Enable":false},"Elite Hop":{"Enable":false},"Raid Fruit Hop":{"Enable":false},"Cake Prince":{"Enable":false},"Evolve Observation":{"Enable":false,"Hop":false},"Bone":{"Enable":true},"Tween":{"Speed":350,"TimePause":0.2,"Pause":true,"TimeNeedPause":2},"Spawn Soul Reaper":{"Enable":false},"Tushita":{"Enable":false},"Black Beard Hop":{"Enable":false},"SeaEvents":{"SeaBeast":false,"AutoEscapeRoughSea":false,"IgnoreSeaBeast":false,"SelectShip":"PirateSloop","ShipSpeedModifier":false,"ShipSpeed":300,"DistanceNearMob":300,"TerrorShark":false,"AzureEmberLimit":25,"Piranha":false,"SafeMode":false,"AutoCollectKitsune":false,"AutoStartKitsune":false,"RepairShip":false,"AutoFindLeviathan":false,"StartSeaEvents":false,"DistanceNearSeaBeast":300,"AutoTradeKitsune":false,"Shark":false,"MultiSegmentAttack":false,"IgnoreShip":false,"AutoFindKitsune":false,"Leviathan":false,"FlyShipFarm":false,"Ship":false,"SpinDistance":200},"Pirate Raid":{"Enable":false},"TweenToPlayer":false,"AutoTrainTrial":{"Enable":false,"TrainPlace":"Bone"},"FastAttack":{"TimeToAttack":3,"OldFastAttack":false,"Enable":true,"TimeFastAttack":100,"OnPlayer":true,"OnMob":true,"SupremeAttack":false,"FastAttackIfBoss":false,"StopClick":false},"Collect Chest":{"InstaTP":false,"Hop":false,"IgnoreItem":false,"Enable":false,"LimitChest":70},"FruitSkillsHold":{"X":0,"C":0,"Z":0,"F":0,"V":0},"BringMob":{"Enable":true,"Radius":444.9},"Soul Guitar":{"Enable":false},"__KatakuriHop":{"Enable":false},"Haki Pad":{"Enable":false},"TrialTeam":{"Enable":false},"Bartilo":{"Enable":false},"BlackSmith":{"Enable":false,"WeaponType":false},"Panel":{"Enable":false},"Full Dough King":{"Enable":false},"Material Soul Guitar":{"Enable":false},"Mirage Snipe Fruit":{"Enable":false},"RaceV4":{"CheckStatus":false},"Dough King":{"Enable":false}}}')
end

function LoadWazureHub()
    task.spawn(function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
    end)
end
-- Rejoin After 15 Mintues
task.spawn(function()
    while task.wait(900) do
        game:GetService('TeleportService'):Teleport(game.PlaceId)
    end
end)

-- Do Wazure Cursed Dual Katana Auto Farm Mastery
task.spawn(function()
    if not isfile("Zeleaq/HasCursedDualKatanaAllSkillsUnlocked/" .. game.Players.LocalPlayer.Name .. ".txt") then
        LoadWazureHubCursedDualKatanaMasteryFarmConfig()
        LoadWazureHub()
    end
end)

task.spawn(function()
    while task.wait() do
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Cursed Dual Katana") and game.Players.LocalPlayer.Backpack:FindFirstChild("Cursed Dual Katana").Level.Value >= 375 or game.Players.LocalPlayer.Character:FindFirstChild("Cursed Dual Katana") and game.Players.LocalPlayer.Character:FindFirstChild("Cursed Dual Katana").Level.Value >= 375 then
            writefile("Zeleaq/Cursed Dual Katana/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
            break
        end
    end
end)

repeat task.wait(1) until not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")

-- Equip Electric Claw
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")

-- Equip Cursed Dual Katana
if not game.Players.LocalPlayer.Backpack:FindFirstChild("Cursed Dual Katana") then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Cursed Dual Katana")
end


-- Do Redeem Refund Stat Code To Reset Stat To Add Point Stats Combo
local RefundStatCode = {	
	"SUB2GAMERROBOT_RESET1",
	"KITT_RESET",
	"Sub2UncleKizaru"
}
function RedeemCode(value)
	(game:GetService("ReplicatedStorage")).Remotes.Redeem:InvokeServer(value)
end
task.spawn(function()
    if not isfile("Zeleaq/StatsCombo/" .. game.Players.LocalPlayer.Name .. ".txt") then
        for i, v in pairs(RefundStatCode) do
            RedeemCode(v)
        end
    end
end)

-- If Haven't Reset Stats Then Do Reset Stats
task.spawn(function()
    while task.wait(1) do
        if isfile("Zeleaq/ResetStats/" .. game.Players.LocalPlayer.Name .. ".txt") then
            break
        end
        if not isfile("Zeleaq/ResetStats/" .. game.Players.LocalPlayer.Name .. ".txt") and not isfile("Zeleaq/StatsCombo/" .. game.Players.LocalPlayer.Name .. ".txt") then
            repeat task.wait(1) until not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")
            task.wait(0.1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("redeemRefundPoints","Refund Points")
            task.wait(0.1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
            task.wait(0.1)
            writefile("Zeleaq/ResetStats/" .. game.Players.LocalPlayer.Name .. ".txt", OsDateResult)
            game:GetService('TeleportService'):Teleport(game.PlaceId)
        end
    end
end)
