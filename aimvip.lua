-- AIM VIP by AfricanoSkils 👑

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local RunService = game:GetService("RunService")
local key = "#AIMESPKEY99"

-- GUI de Boas-Vindas
local guiBoas = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
local frameBoas = Instance.new("Frame", guiBoas)
frameBoas.Size = UDim2.new(0, 420, 0, 220)
frameBoas.Position = UDim2.new(0.5, -210, 0.5, -110)
frameBoas.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
frameBoas.BackgroundTransparency = 0.2

local titulo = Instance.new("TextLabel", frameBoas)
titulo.Size = UDim2.new(1, 0, 0.3, 0)
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

-- GUI de Key
local guiKey = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
guiKey.Enabled = false
local frameKey = Instance.new("Frame", guiKey)
frameKey.Size = UDim2.new(0, 420, 0, 220)
frameKey.Position = UDim2.new(0.5, -210, 0.5, -110)
frameKey.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
frameKey.BackgroundTransparency = 0.2

local tituloKey = Instance.new("TextLabel", frameKey)
tituloKey.Size = UDim2.new(1, 0, 0.3, 0)
tituloKey.Text = "🔒 INSIRA A KEY DO DISCORD"
tituloKey.TextColor3 = Color3.fromRGB(255, 215, 0)
tituloKey.BackgroundTransparency = 1
tituloKey.Font = Enum.Font.GothamBold
tituloKey.TextScaled = true

local campoKey = Instance.new("TextBox", frameKey)
campoKey.Size = UDim2.new(0.8, 0, 0.25, 0)
campoKey.Position = UDim2.new(0.1, 0, 0.4, 0)
campoKey.PlaceholderText = "Coloque sua key aqui..."
campoKey.Text = ""
campoKey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
campoKey.TextColor3 = Color3.fromRGB(0, 0, 0)
campoKey.Font = Enum.Font.Gotham
campoKey.TextScaled = true

local verificar = Instance.new("TextButton", frameKey)
verificar.Size = UDim2.new(0.5, 0, 0.2, 0)
verificar.Position = UDim2.new(0.25, 0, 0.75, 0)
verificar.Text = "Verificar"
verificar.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
verificar.TextColor3 = Color3.fromRGB(0, 0, 0)
verificar.Font = Enum.Font.GothamBold
verificar.TextScaled = true

-- Painel Premium
local guiPainel = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
guiPainel.Enabled = false
local frame = Instance.new("Frame", guiPainel)
frame.Size = UDim2.new(0, 500, 0, 400)
frame.Position = UDim2.new(0.5, -250, 0.5, -200)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frame.Active = true
frame.Draggable = true

local tituloPainel = Instance.new("TextLabel", frame)
tituloPainel.Size = UDim2.new(1, 0, 0.15, 0)
tituloPainel.Text = "💎 AIM VIP - Painel Premium"
tituloPainel.TextColor3 = Color3.fromRGB(255, 255, 255)
tituloPainel.BackgroundTransparency = 1
tituloPainel.Font = Enum.Font.GothamBold
tituloPainel.TextScaled = true

local rodape = Instance.new("TextLabel", frame)
rodape.Size = UDim2.new(1, 0, 0.1, 0)
rodape.Position = UDim2.new(0, 0, 0.9, 0)
rodape.Text = "🔒 AIM VIP by AfricanoSkils"
rodape.TextColor3 = Color3.fromRGB(100, 100, 100)
rodape.BackgroundTransparency = 1
rodape.Font = Enum.Font.Gotham
rodape.TextScaled = true

-- Funções
local function getClosestPlayer()
    local closest, distance = nil, math.huge
    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer and plr.Character and plr.Character:FindFirstChild("Head") then
            local pos = Camera:WorldToViewportPoint(plr.Character.Head.Position)
            local dist = (Vector2.new(pos.X, pos.Y) - Camera.ViewportSize / 2).Magnitude
            if dist < distance then
                closest = plr
                distance = dist
            end
        end
    end
    return closest
end

local function enableAimbot()
    RunService.RenderStepped:Connect(function()
        local target = getClosestPlayer()
        if target and target.Character and target.Character:FindFirstChild("Head") then
            Camera.CFrame = CFrame.new(Camera.CFrame.Position, target.Character.Head.Position)
        end
    end)
end

local function enableESP()
    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
            local adornee = plr.Character.HumanoidRootPart
            local box = Instance.new("BoxHandleAdornment")
            box.Adornee = adornee
            box.Size = Vector3.new(4, 6, 2)
            box.AlwaysOnTop = true
            box.ZIndex = 10
            box.Transparency = 0.5

            local ray = Ray.new(Camera.CFrame.Position, (adornee.Position - Camera.CFrame.Position).Unit * 500)
            local hit = workspace:FindPartOnRay(ray, LocalPlayer.Character, false, true)

            if hit and hit:IsDescendantOf(plr.Character) then
                box.Color3 = Color3.fromRGB(0, 255, 0)
            else
                box.Color3 = Color3.fromRGB(255, 0, 0)
            end

            box.Parent = adornee
        end
    end
end

-- Botões
local opcoes = {
    {nome = "Aimbot", cor = Color3.fromRGB(0, 170, 255), func = enableAimbot},
    {nome = "ESP", cor = Color3.fromRGB(0, 255, 127), func = enableESP}
}

for i, opcao in ipairs(opcoes) do
    local botao = Instance.new("TextButton", frame)
    botao.Size = UDim2.new(0.4, 0, 0.1, 0)
    botao.Position = UDim2.new(0.05 + ((i-1)%2)*0.5, 0, 0.2 + math.floor((i-1)/2)*0.15, 0)
    botao.Text = opcao.nome
    botao.BackgroundColor3 = opcao.cor
    botao.TextColor3 = Color3.fromRGB(255, 255, 255)
    botao.Font = Enum.Font.G
