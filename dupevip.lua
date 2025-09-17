local plr = game.Players.LocalPlayer
local keyCorreta = "#QB58KEY09"
local duplicando = false

-- GUI de boas-vindas
local guiWelcome = Instance.new("ScreenGui", plr:WaitForChild("PlayerGui"))
guiWelcome.Name = "KrushKingWelcome"

local frameWelcome = Instance.new("Frame", guiWelcome)
frameWelcome.Size = UDim2.new(0, 400, 0, 200)
frameWelcome.Position = UDim2.new(0.5, -200, 0.5, -100)
frameWelcome.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frameWelcome.BorderSizePixel = 0
frameWelcome.Active = true
frameWelcome.Draggable = true

local title = Instance.new("TextLabel", frameWelcome)
title.Size = UDim2.new(1, 0, 0.3, 0)
title.Text = "👑 BEM-VINDO!"
title.Font = Enum.Font.GothamBold
title.TextSize = 28
title.TextColor3 = Color3.fromRGB(255, 215, 0)
title.BackgroundTransparency = 1

local desc = Instance.new("TextLabel", frameWelcome)
desc.Size = UDim2.new(1, 0, 0.5, 0)
desc.Position = UDim2.new(0, 0, 0.3, 0)
desc.Text = "💰 O melhor dupe do Roblox.\n🔑 Pegue sua key no Discord!"
desc.Font = Enum.Font.Gotham
desc.TextSize = 18
desc.TextColor3 = Color3.fromRGB(255, 255, 255)
desc.BackgroundTransparency = 1

wait(4)
guiWelcome:Destroy()

-- GUI de verificação de key
local guiKey = Instance.new("ScreenGui", plr:WaitForChild("PlayerGui"))
guiKey.Name = "KrushKingKey"

local frameKey = Instance.new("Frame", guiKey)
frameKey.Size = UDim2.new(0, 400, 0, 200)
frameKey.Position = UDim2.new(0.5, -200, 0.5, -100)
frameKey.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frameKey.BorderSizePixel = 0
frameKey.Active = true
frameKey.Draggable = true

local titleKey = Instance.new("TextLabel", frameKey)
titleKey.Size = UDim2.new(1, 0, 0.3, 0)
titleKey.Text = "🔐 INSIRA A KEY DO DISCORD"
titleKey.Font = Enum.Font.GothamBold
titleKey.TextSize = 22
titleKey.TextColor3 = Color3.fromRGB(255, 215, 0)
titleKey.BackgroundTransparency = 1

local caixa = Instance.new("TextBox", frameKey)
caixa.Size = UDim2.new(0.8, 0, 0, 40)
caixa.Position = UDim2.new(0.1, 0, 0.45, 0)
caixa.PlaceholderText = "Sua key aqui:"
caixa.Font = Enum.Font.Gotham
caixa.TextSize = 18
caixa.TextColor3 = Color3.fromRGB(255, 255, 255)
caixa.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

local botao = Instance.new("TextButton", frameKey)
botao.Size = UDim2.new(0.5, 0, 0, 40)
botao.Position = UDim2.new(0.25, 0, 0.75, 0)
botao.Text = "Verificar"
botao.Font = Enum.Font.GothamBold
botao.TextSize = 20
botao.TextColor3 = Color3.fromRGB(0, 0, 0)
botao.BackgroundColor3 = Color3.fromRGB(255, 215, 0)

local status = Instance.new("TextLabel", frameKey)
status.Size = UDim2.new(1, 0, 0, 30)
status.Position = UDim2.new(0, 0, 1, -30)
status.BackgroundTransparency = 1
status.Font = Enum.Font.Gotham
status.TextSize = 18
status.TextColor3 = Color3.fromRGB(255, 255, 255)
status.Text = ""

-- Verificação
botao.MouseButton1Click:Connect(function()
    if caixa.Text == keyCorreta then
        status.Text = "✅ Key correta 😎"
        status.TextColor3 = Color3.fromRGB(0, 255, 0)
        wait(2)
        guiKey:Destroy()

        -- GUI Premium
        local guiDupe = Instance.new("ScreenGui", plr:WaitForChild("PlayerGui"))
        guiDupe.Name = "KrushKingDupe"

        local frameDupe = Instance.new("Frame", guiDupe)
        frameDupe.Size = UDim2.new(0, 400, 0, 200)
        frameDupe.Position = UDim2.new(0.5, -200, 0.5, -100)
        frameDupe.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        frameDupe.BorderSizePixel = 0
        frameDupe.Active = true
        frameDupe.Draggable = true

        local titleDupe = Instance.new("TextLabel", frameDupe)
        titleDupe.Size = UDim2.new(1, 0, 0.3, 0)
        titleDupe.Text = "💎 Painel Premium"
        titleDupe.Font = Enum.Font.GothamBold
        titleDupe.TextSize = 24
        titleDupe.TextColor3 = Color3.fromRGB(255, 215, 0)
        titleDupe.BackgroundTransparency = 1

        local btnStart = Instance.new("TextButton", frameDupe)
        btnStart.Size = UDim2.new(0.8, 0, 0, 40)
        btnStart.Position = UDim2.new(0.1, 0, 0.45, 0)
        btnStart.Text = "▶️ Iniciar Duplicação"
        btnStart.Font = Enum.Font.GothamBold
        btnStart.TextSize = 18
        btnStart.TextColor3 = Color3.fromRGB(0, 0, 0)
        btnStart.BackgroundColor3 = Color3.fromRGB(255, 215, 0)

        local btnStop = Instance.new("TextButton", frameDupe)
        btnStop.Size = UDim2.new(0.8, 0, 0, 40)
        btnStop.Position = UDim2.new(0.1, 0, 0.7, 0)
        btnStop.Text = "⛔ Parar Duplicação"
        btnStop.Font = Enum.Font.GothamBold
        btnStop.TextSize = 18
        btnStop.TextColor3 = Color3.fromRGB(255, 255, 255)
        btnStop.BackgroundColor3 = Color3.fromRGB(100, 0, 0)

        btnStart.Parent = frameDupe
        btnStop.Parent = frameDupe

        btnStart.MouseButton1Click:Connect(function()
            if not duplicando then
                duplicando = true
                spawn(function()
                    while duplicando do
                        local stats = plr:FindFirstChild("leaderstats")
                        if stats then
                            for _, v in pairs(stats:GetChildren()) do
                                if v:IsA("IntValue") and v.Name:lower():find("dinheiro") then
                                    v.Value += 1000
                                end
                            end
                        end
                        wait(0.05)
                    end
                end)
            end
        end)

        btnStop.MouseButton1Click:Connect(function()
            duplicando = false
        end)
    else
        status.Text = "❌ Key incorreta 😢"
        status.TextColor3 = Color3.fromRGB(255, 0, 0)
    end
end)
