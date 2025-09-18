-- AIM VIP by SAVIOLA 👑

local player = game.Players.LocalPlayer
local key = "#AIMESPKEY99"
local keyValida = false

-- GUI de boas-vindas
local guiBoasVindas = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
local frameBoas = Instance.new("Frame", guiBoasVindas)
frameBoas.Size = UDim2.new(0, 400, 0, 200)
frameBoas.Position = UDim2.new(0.5, -200, 0.5, -100)
frameBoas.BackgroundTransparency = 0.3
frameBoas.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

local titulo = Instance.new("TextLabel", frameBoas)
titulo.Size = UDim2.new(1, 0, 0.5, 0)
titulo.Position = UDim2.new(0, 0, 0, 0)
titulo.Text = "🎯 O melhor aimbot do Roblox.\n🔑 Adquira sua key no Discord!"
titulo.TextColor3 = Color3.fromRGB(255, 255, 255)
titulo.BackgroundTransparency = 1
titulo.Font = Enum.Font.GothamBold
titulo.TextScaled = true

local botaoContinuar = Instance.new("TextButton", frameBoas)
botaoContinuar.Size = UDim2.new(0.5, 0, 0.3, 0)
botaoContinuar.Position = UDim2.new(0.25, 0, 0.6, 0)
botaoContinuar.Text = "Continuar"
botaoContinuar.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
botaoContinuar.TextColor3 = Color3.fromRGB(255, 255, 255)
botaoContinuar.Font = Enum.Font.GothamBold
botaoContinuar.TextScaled = true

-- GUI de Key
local guiKey = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
guiKey.Enabled = false
local frameKey = Instance.new("Frame", guiKey)
frameKey.Size = UDim2.new(0, 400, 0, 200)
frameKey.Position = UDim2.new(0.5, -200, 0.5, -100)
frameKey.BackgroundTransparency = 0.3
frameKey.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

local campoKey = Instance.new("TextBox", frameKey)
campoKey.Size = UDim2.new(0.8, 0, 0.3, 0)
campoKey.Position = UDim2.new(0.1, 0, 0.2, 0)
campoKey.PlaceholderText = "Coloque sua key aqui..."
campoKey.Text = ""
campoKey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
campoKey.TextColor3 = Color3.fromRGB(0, 0, 0)
campoKey.Font = Enum.Font.Gotham
campoKey.TextScaled = true

local botaoVerificar = Instance.new("TextButton", frameKey)
botaoVerificar.Size = UDim2.new(0.5, 0, 0.3, 0)
botaoVerificar.Position = UDim2.new(0.25, 0, 0.6, 0)
botaoVerificar.Text = "Verificar"
botaoVerificar.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
botaoVerificar.TextColor3 = Color3.fromRGB(255, 255, 255)
botaoVerificar.Font = Enum.Font.GothamBold
botaoVerificar.TextScaled = true

-- GUI Premium AIM VIP
local guiPremium = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
guiPremium.Enabled = false
local framePremium = Instance.new("Frame", guiPremium)
framePremium.Size = UDim2.new(0, 500, 0, 300)
framePremium.Position = UDim2.new(0.5, -250, 0.5, -150)
framePremium.BackgroundTransparency = 0.2
framePremium.BackgroundColor3 = Color3.fromRGB(20, 20, 20)

local tituloPremium = Instance.new("TextLabel", framePremium)
tituloPremium.Size = UDim2.new(1, 0, 0.2, 0)
tituloPremium.Position = UDim2.new(0, 0, 0, 0)
tituloPremium.Text = "AIM VIP - Painel Premium"
tituloPremium.TextColor3 = Color3.fromRGB(255, 255, 255)
tituloPremium.BackgroundTransparency = 1
tituloPremium.Font = Enum.Font.GothamBold
tituloPremium.TextScaled = true

-- Sliders e botões (placeholders, funcionalidade será adicionada depois)
local info = Instance.new("TextLabel", framePremium)
info.Size = UDim2.new(1, 0, 0.1, 0)
info.Position = UDim2.new(0, 0, 0.2, 0)
info.Text = "Ajuste de força do aimbot e tamanho da hitbox em breve..."
info.TextColor3 = Color3.fromRGB(200, 200, 200)
info.BackgroundTransparency = 1
info.Font = Enum.Font.Gotham
info.TextScaled = true

-- Eventos
botaoContinuar.MouseButton1Click:Connect(function()
    guiBoasVindas:Destroy()
    guiKey.Enabled = true
end)

botaoVerificar.MouseButton1Click:Connect(function()
    if campoKey.Text == key then
        guiKey:Destroy()
        guiPremium.Enabled = true
    else
        campoKey.Text = ""
        campoKey.PlaceholderText = "Key inválida. Tente novamente..."
    end
end)
