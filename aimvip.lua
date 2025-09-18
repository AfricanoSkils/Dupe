local player = game.Players.LocalPlayer
local guiBoas = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
guiBoas.Name = "BoasVindas"

local frameBoas = Instance.new("Frame", guiBoas)
frameBoas.Size = UDim2.new(0, 420, 0, 220)
frameBoas.Position = UDim2.new(0.5, -210, 0.5, -110)
frameBoas.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
frameBoas.BackgroundTransparency = 0.2
frameBoas.BorderSizePixel = 0

local titulo = Instance.new("TextLabel", frameBoas)
titulo.Size = UDim2.new(1, 0, 0.3, 0)
titulo.Position = UDim2.new(0, 0, 0, 0)
titulo.Text = "👑 BEM-VINDO!"
titulo.TextColor3 = Color3.fromRGB(255, 215, 0)
titulo.BackgroundTransparency = 1
titulo.Font = Enum.Font.GothamBold
titulo.TextScaled = true

local mensagem = Instance.new("TextLabel", frameBoas)
mensagem.Size = UDim2.new(1, -20, 0.4, 0)
mensagem.Position = UDim2.new(0, 10, 0.3, 0)
mensagem.Text = "💰 O melhor dupe do Roblox.\n🔑 Pegue sua key no Discord!"
mensagem.TextColor3 = Color3.fromRGB(255, 255, 255)
mensagem.BackgroundTransparency = 1
mensagem.Font = Enum.Font.Gotham
mensagem.TextScaled = true

local continuar = Instance.new("TextButton", frameBoas)
continuar.Size = UDim2.new(0.5, 0, 0.2, 0)
continuar.Position = UDim2.new(0.25, 0, 0.75, 0)
continuar.Text = "Abrir Menu"
continuar.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
continuar.TextColor3 = Color3.fromRGB(255, 255, 255)
continuar.Font = Enum.Font.GothamBold
continuar.TextScaled = true
continuar.BorderSizePixel = 0

-- Evento para abrir tela de key
continuar.MouseButton1Click:Connect(function()
    guiBoas:Destroy()
    -- Aqui você ativa a tela de key
    if game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui"):FindFirstChild("KeyGUI") then
        game:GetService("Players").LocalPlayer.PlayerGui.KeyGUI.Enabled = true
    end
end)
