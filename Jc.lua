local function createESP(player)
    local espBox = Instance.new("BoxHandleAdornment")
    espBox.Name = "ESPBox"
    espBox.Adornee = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
    espBox.AlwaysOnTop = true
    espBox.Size = Vector3.new(2, 5, 1) 
    espBox.Color3 = Color3.new(1, 0, 0) 
    espBox.ZIndex = 5
    espBox.Parent = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
end
 
 
local function updateESP()
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer and player.Character then
            local espBox = player.Character:FindFirstChild("ESPBox")
            if not espBox then
                createESP(player)
            end
        end
    end
end
 
 
while wait(1) do
    updateESP()
end
