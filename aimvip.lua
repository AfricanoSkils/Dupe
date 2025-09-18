-- Painel Premium
local guiPainel = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
guiPainel.Name = "AIMVIP_Painel"
guiPainel.Enabled = false

local frame = Instance.new("Frame", guiPainel)
frame.Size = UDim2.new(0, 500, 0, 400)
frame.Position = UDim2.new(0.5, -250, 0.5, -200)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frame.BackgroundTransparency = 0.1
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true

local titulo = Instance.new("TextLabel", frame)
titulo.Size = UDim2.new(1, 0, 0.15, 0)
titulo.Position = UDim2.new(0, 0, 0, 0)
titulo.Text = "💎 AIM VIP - Painel Premium"
titulo.TextColor3 = Color3.fromRGB(255, 255, 255)
titulo.BackgroundTransparency = 1
titulo.Font = Enum.Font.GothamBold
titulo.TextScaled = true

-- Botões
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

-- Sliders visuais
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

-- Ativação do painel após key correta
verificar.MouseButton1Click:Connect(function()
    if campoKey.Text == key then
        guiKey:Destroy()
        guiPainel.Enabled = true
    else
        campoKey.Text = ""
        campoKey.PlaceholderText = "Key inválida. Tente novamente..."
        campoKey.TextColor3 = Color3.fromRGB(255, 0, 0)
        wait(0.5)
        campoKey.TextColor3 = Color3.fromRGB(0, 0, 0)
    end
end)
