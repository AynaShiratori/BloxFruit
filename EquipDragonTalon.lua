-- Auto Equip Dragon Talon
function EquipDragonTalon()
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon"))
end

task.spawn(function()
    while task.wait(0.05) do
        EquipDragonTalon()
    end
end)
