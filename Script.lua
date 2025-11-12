-- Criar GUI no Roblox
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui", player.PlayerGui)
screenGui.Name = "LoadingPanel"

-- Frame de fundo
local frame = Instance.new("Frame", screenGui)
frame.Size = UDim2.new(0.4, 0, 0.1, 0)
frame.Position = UDim2.new(0.3, 0, 0.45, 0)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BackgroundTransparency = 0.5
frame.BorderSizePixel = 0
frame.AnchorPoint = Vector2.new(0.5, 0.5)

-- Barra de carregamento
local progressBar = Instance.new("Frame", frame)
progressBar.Size = UDim2.new(0, 0, 1, 0)
progressBar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
progressBar.BorderSizePixel = 0

-- Texto estiloso com fonte Pixel
local textLabel = Instance.new("TextLabel", frame)
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.BackgroundTransparency = 1
textLabel.Text = "CARREGANDO..."
textLabel.Font = Enum.Font.Pixel       -- Fonte pixel estilosa
textLabel.TextSize = 30
textLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
textLabel.TextStrokeTransparency = 0
textLabel.TextStrokeColor3 = Color3.fromRGB(0, 100, 0)
textLabel.TextXAlignment = Enum.TextXAlignment.Center
textLabel.TextYAlignment = Enum.TextYAlignment.Center

-- Função para animar o carregamento da barra
local function carregar()
    for i = 1, 100 do
        progressBar.Size = UDim2.new(i/100, 0, 1, 0)
        wait(0.03)  -- Ajuste o tempo do carregamento aqui
    end
    screenGui:Destroy()  -- Sumir o painel após carregar
end

carregar()
-- 💫 lighthub 💫

-- Agora acessível para todos os jogadores

-- LocalScript → StarterGui

local Players = game:GetService("Players")

local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer

local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- 🌌 GUI principal

local ScreenGui = Instance.new("ScreenGui")

ScreenGui.Name = "LightMenu2"

ScreenGui.Parent = PlayerGui

ScreenGui.ResetOnSpawn = false

local MainFrame = Instance.new("Frame")

MainFrame.Size = UDim2.new(0, 280, 0, 330)

MainFrame.Position = UDim2.new(0.35, 0, 0.3, 0)

MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)

MainFrame.BorderSizePixel = 0

MainFrame.Active = true

MainFrame.Draggable = true

MainFrame.Parent = ScreenGui

local Corner = Instance.new("UICorner")

Corner.CornerRadius = UDim.new(0, 14)

Corner.Parent = MainFrame

-- ✨ Sombra

local Shadow = Instance.new("ImageLabel")

Shadow.Image = "rbxassetid://1316045217"

Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)

Shadow.ImageTransparency = 0.5

Shadow.ScaleType = Enum.ScaleType.Slice

Shadow.SliceCenter = Rect.new(10, 10, 118, 118)

Shadow.Size = UDim2.new(1, 20, 1, 20)

Shadow.Position = UDim2.new(0, -10, 0, -10)

Shadow.ZIndex = 0

Shadow.BackgroundTransparency = 1

Shadow.Parent = MainFrame

-- 🏷 Barra de título

local TitleBar = Instance.new("TextLabel")

TitleBar.Text = "💫 Light hub 💫"

TitleBar.Size = UDim2.new(1, 0, 0, 35)

TitleBar.BackgroundColor3 = Color3.fromRGB(60, 0, 100)

TitleBar.TextColor3 = Color3.fromRGB(255, 255, 255)

TitleBar.Font = Enum.Font.GothamBold

TitleBar.TextSize = 18

TitleBar.Parent = MainFrame

local TitleCorner = Instance.new("UICorner")

TitleCorner.CornerRadius = UDim.new(0, 14)

TitleCorner.Parent = TitleBar

-- 🔘 Botão minimizar

local MinimizeButton = Instance.new("TextButton")

MinimizeButton.Text = "−"

MinimizeButton.Size = UDim2.new(0, 35, 0, 35)

MinimizeButton.Position = UDim2.new(1, -40, 0, 0)

MinimizeButton.BackgroundColor3 = Color3.fromRGB(80, 0, 130)

MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)

MinimizeButton.Font = Enum.Font.GothamBold

MinimizeButton.TextSize = 22

MinimizeButton.Parent = MainFrame

local BtnCorner = Instance.new("UICorner")

BtnCorner.CornerRadius = UDim.new(0, 10)

BtnCorner.Parent = MinimizeButton

-- 📦 Corpo principal

local Body = Instance.new("Frame")

Body.Size = UDim2.new(1, 0, 1, -35)

Body.Position = UDim2.new(0, 0, 0, 35)

Body.BackgroundColor3 = Color3.fromRGB(35, 35, 45)

Body.BorderSizePixel = 0

Body.Parent = MainFrame

local BodyCorner = Instance.new("UICorner")

BodyCorner.CornerRadius = UDim.new(0, 14)

BodyCorner.Parent = Body

-- 🌟 Texto TikTok

local Credit = Instance.new("TextLabel")

Credit.Text = "✨ TikTok: @theuss825 ✨"

Credit.Size = UDim2.new(1, 0, 0, 20)

Credit.Position = UDim2.new(0, 0, 0, 5)

Credit.BackgroundTransparency = 1

Credit.TextColor3 = Color3.fromRGB(255, 0, 200)

Credit.Font = Enum.Font.GothamBold

Credit.TextSize = 13

Credit.Parent = Body

-- 💫 Animação do texto TikTok

task.spawn(function()

	while true do		TweenService:Create(Credit, TweenInfo.new(1.5), {TextColor3 = Color3.fromRGB(255, 0, 150)}):Play()

		task.wait(1.5)

		TweenService:Create(Credit, TweenInfo.new(1.5), {TextColor3 = Color3.fromRGB(200, 0, 255)}):Play()

		task.wait(1.5)

	end

end)

-- 🧭 Criar botões

local function criarBotao(texto, ordem, callback)

	local botao = Instance.new("TextButton")

	botao.Size = UDim2.new(0, 230, 0, 35)

	botao.Position = UDim2.new(0.5, -115, 0, (ordem - 1) * 45 + 30)

	botao.Text = texto

	botao.BackgroundColor3 = Color3.fromRGB(90, 0, 160)

	botao.TextColor3 = Color3.fromRGB(255, 255, 255)

	botao.Font = Enum.Font.GothamBold

	botao.TextSize = 16

	botao.Parent = Body

	botao.AutoButtonColor = false

	local corner = Instance.new("UICorner")

	corner.CornerRadius = UDim.new(0, 10)

	corner.Parent = botao

	local uiStroke = Instance.new("UIStroke")

	uiStroke.Thickness = 1.5

	uiStroke.Color = Color3.fromRGB(150, 0, 255)

	uiStroke.Transparency = 0.4

	uiStroke.Parent = botao

	botao.MouseEnter:Connect(function()

		TweenService:Create(botao, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(130, 0, 220)}):Play()

		TweenService:Create(uiStroke, TweenInfo.new(0.2), {Transparency = 0}):Play()

	end)

	botao.MouseLeave:Connect(function()

		TweenService:Create(botao, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(90, 0, 160)}):Play()

		TweenService:Create(uiStroke, TweenInfo.new(0.3), {Transparency = 0.4}):Play()

	end)

	botao.MouseButton1Click:Connect(callback)

end

-- 🌐 BOTÕES

criarBotao("Nameless Hub 💜", 1, function()

	loadstring(game:HttpGet("https://raw.githubusercontent.com/ily123950/Vulkan/refs/heads/main/Tr"))()

end)

criarBotao("Lumora Fps Destroyer 👹", 2, function()

	loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/c62563366e7ba3208d704a4e2d7e6789.lua"))()

end)

criarBotao("Lennon Hub 🐊", 3, function()

	loadstring(game:HttpGet("https://pastefy.app/RusmcE3c/raw"))()

end)

criarBotao("Chilli Hub 🌶", 4, function()

	loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()

end)

criarBotao("Miranda Hub ♦️", 5, function()

	loadstring(game:HttpGet("https://pastefy.app/ZvovS3bh/raw"))()

end)

criarBotao("Lipe Tools 🧰", 6, function()

	loadstring(game:HttpGet("https://pastebin.com/raw/ke146qjn"))()

end)

-- ⚙️ Efeito de minimizar/restaurar

local minimizado = false

MinimizeButton.MouseButton1Click:Connect(function()

	minimizado = not minimizado

	if minimizado then

		TweenService:Create(MainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {

			Size = UDim2.new(0, 280, 0, 35),

			BackgroundTransparency = 0.1

		}):Play()

		TweenService:Create(Body, TweenInfo.new(0.25), {BackgroundTransparency = 1}):Play()

		TweenService:Create(TitleBar, TweenInfo.new(0.25), {BackgroundColor3 = Color3.fromRGB(30, 0, 60)}):Play()

		task.wait(0.25)

		Body.Visible = false

		MinimizeButton.Text = "+"

	else

		Body.Visible = true

		TweenService:Create(MainFrame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {

			Size = UDim2.new(0, 280, 0, 330),

			BackgroundTransparency = 0

		}):Play()

		TweenService:Create(Body, TweenInfo.new(0.3), {BackgroundTransparency = 0}):Play()

		TweenService:Create(TitleBar, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(60, 0, 100)}):Play()

		local glow = Instance.new("ImageLabel")

		glow.Image = "rbxassetid://200182847"

		glow.BackgroundTransparency = 1

		glow.ImageColor3 = Color3.fromRGB(150, 0, 255)

		glow.ImageTransparency = 0.8

		glow.Size = UDim2.new(1.5, 0, 1.5, 0)

		glow.Position = UDim2.new(-0.25, 0, -0.25, 0)

		glow.ZIndex = 10

		glow.Parent = MainFrame

		TweenService:Create(glow, TweenInfo.new(0.8), {ImageTransparency = 1}):Play()

		task.wait(1)

		glow:Destroy()

		MinimizeButton.Text = "−"

	end

end)
