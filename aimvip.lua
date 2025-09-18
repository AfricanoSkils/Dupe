-- AIM VIP by AfricanoSkils 👑

local player = game.Players.LocalPlayer
local key = "#AIMESPKEY99"

-- GUI de boas-vindas
local guiBoas = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
local frameBoas = Instance.new("Frame", guiBoas)
frameBoas.Size = UDim2.new(0, 420, 0, 220)
frameBoas.Position = UDim2.new(0.5, -210, 0.5, -110)
frameBoas.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frameBoas.BackgroundTransparency = 0.1
frameBoas.BorderSizePixel = 0

local textoBoas = Instance.new("TextLabel", frameBoas)
textoBoas.Size = UDim2.new(1, -20, 0.6, 0)
textoBoas.Position = UDim2.new(0, 10, 0, 10)
textoBoas.Text = "🎯 O melhor aimbot do Roblox.\n🔑 Adquira sua key no Discord!"
textoBoas.TextColor3 = Color3.fromRGB(255, 255, 255)
textoBoas.BackgroundTransparency = 1
textoBoas.Font = Enum.Font.GothamBold
textoBoas.TextScaled = true

local continuar = Instance.new("TextButton", frameBoas)
continuar.Size = UDim2.new(0.5, 0, 0.2, 0)
continuar.Position = UDim2.new(0.25, 0, 0.7, 0)
continuar.Text = "Continuar"
continuar.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
continuar.TextColor3 = Color3.fromRGB(255, 255, 255)
continuar.Font = Enum.Font.GothamBold
continuar.TextScaled = true
continuar.BorderSizePixel = 0

-- GUI de Key
local guiKey = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
guiKey.Enabled = false
local frameKey = Instance.new("Frame", guiKey)
frameKey.Size = UDim2.new(0, 420, 0, 220)
frameKey.Position = UDim2.new(0.5, -210, 0.5, -110)
frameKey.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frameKey.BackgroundTransparency = 0.1
frameKey.BorderSizePixel = 0

local campoKey = Instance.new("TextBox", frameKey)
campoKey.Size = UDim2.new(0.8, 0, 0.25, 0)
campoKey.Position = UDim2.new(0.1, 0, 0.2, 0)
campoKey.PlaceholderText = "Coloque sua key aqui..."
campoKey.Text = ""
campoKey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
campoKey.TextColor3 = Color3.fromRGB(0, 0, 0)
campoKey.Font = Enum.Font.Gotham
campoKey.TextScaled = true
campoKey.BorderSizePixel = 0

local verificar = Instance.new("TextButton", frameKey)
verificar.Size = UDim2.new(0.5, 0, 0.2, 0)
verificar.Position = UDim2.new(0.25, 0, 0.6, 0)
verificar.Text = "Verificar"
verificar.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
verificar.TextColor3 = Color3.fromRGB(255, 255, 255)
verificar.Font = Enum.Font.GothamBold
verificar.TextScaled = true
verificar.BorderSizePixel = 0

-- GUI Premium
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "AIMVIP_GUI"
gui.Enabled = false

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 500, 0, 400)
frame.Position = UDim2.new(0.5, -250, 0.5, -200)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frame.BackgroundTransparency = 0.1
frame.BorderSizePixel = 0

local titulo = Instance.new("TextLabel", frame)
titulo.Size = UDim2.new(1, 0, 0.15, 0)
titulo.Position = UDim2.new(0, 0, 0, 0)
titulo.Text = "🎯 AIM VIP - Painel Premium"
titulo.TextColor3 = Color3.fromRGB(255, 255, 255)
titulo.BackgroundTransparency = 1
titulo.Font = Enum.Font.GothamBold
titulo.TextScaled = true

local opcoes = {
    {nome = "Aimbot", cor = Color3.fromRGB(0, 170, 255)},
    {nome = "ESP", cor = Color3.fromRGB(0, 255, 127)},
    {nome = "Team Check", cor = Color3.fromRGB(255, 170, 0)},
    {nome = "Hitbox", cor = Color3.fromRGB(255, 85, 85)}
}

for i, opcao in ipairs(opcoes) do
    local botao = Instance.new("TextButton", frame)
    botao.Size = UDim2.new(0.4, 0, 0.1, 0)
    botao.Position = UDim2.new(0.05 + ((i-1)%2)*0.5, 0, 0.2 + math.floor((i-1)/2)*0.15, 0)
    botao.Text = opcao.nome
    botao.BackgroundColor3 = opcao.cor
    botao.TextColor3 = Color3.fromRGB(255, 255, 255)
    botao.Font = Enum.Font.GothamBold
    botao.TextScaled = true
    botao.BorderSizePixel = 0
end

local sliderAimbot = Instance.new("TextLabel", frame)
sliderAimbot.Size = UDim2.new(0.9, 0, 0.1, 0)
sliderAimbot.Position = UDim2.new(0.05, 0, 0.65, 0)
sliderAimbot.Text = "Força do Aimbot: 100%"
sliderAimbot.TextColor3 = Color3.fromRGB(200, 200, 200)
sliderAimbot.BackgroundTransparency = 1
sliderAimbot.Font = Enum.Font.Gotham
sliderAimbot.TextScaled = true

local sliderHitbox = Instance.new("TextLabel", frame)
sliderHitbox.Size = UDim2.new(0.9, 0, 0.1, 0)
sliderHitbox.Position = UDim2.new(0.05, 0, 0.75, 0)
sliderHitbox.Text = "Tamanho da Hitbox: 5x"
sliderHitbox.TextColor3 = Color3.fromRGB(200, 200, 200)
sliderHitbox.BackgroundTransparency = 1
sliderHitbox.Font = Enum.Font.Gotham
sliderHitbox.TextScaled = true

local rodape = Instance.new("TextLabel", frame)
rodape.Size = UDim2.new(1, 0, 0.1, 0)
rodape.Position = UDim2.new(0, 0, 0.9, 0)
rodape.Text = "🔒 AIM VIP by AfricanoSkils"
rodape.TextColor3 = Color3.fromRGB(100, 100, 100)
rodape.BackgroundTransparency = 1
rodape.Font = Enum.Font.Gotham
rodape.TextScaled = true

-- Eventos
continuar.MouseButton1Click:Connect(function()
    guiBoas:Destroy()
    guiKey.Enabled = true
end)

verificar.MouseButton1Click:Connect(function()
    if campoKey.Text == key then
        guiKey:Destroy()
        gui.Enabled = true
    else
        campoKey.Text = ""
        campoKey.PlaceholderText = "Key inválida. Tente novamente..."
        campoKey.TextColor3 = Color3.fromRGB(255, 0, 0)
        wait(0.5)
        campoKey.TextColor3 = Color3.fromRGB(0, 0, 0)
    end
end)
