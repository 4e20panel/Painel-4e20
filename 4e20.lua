-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local CorpoPainel = Instance.new("Frame")
local ABAS = Instance.new("Frame")
local botoes = Instance.new("Frame")
local butela1 = Instance.new("TextButton")
local butela4 = Instance.new("TextButton")
local butela5 = Instance.new("TextButton")
local butela3 = Instance.new("TextButton")
local butela2 = Instance.new("TextButton")
local tela1 = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local tela2 = Instance.new("Frame")
local AVATA = Instance.new("ImageLabel")
local VIEW = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local FOLLOW = Instance.new("TextButton")
local TextLabel_3 = Instance.new("TextLabel")
local FOCUS = Instance.new("TextButton")
local TextLabel_4 = Instance.new("TextLabel")
local username = Instance.new("TextBox")
local coloqueodousuario = Instance.new("TextLabel")
local ID = Instance.new("TextLabel")
local DISPLAYNAME = Instance.new("TextLabel")
local tela3 = Instance.new("Frame")
local CLICKTP = Instance.new("TextButton")
local TextLabel_5 = Instance.new("TextLabel")
local NOCLIP = Instance.new("TextButton")
local TextLabel_6 = Instance.new("TextLabel")
local FLASHBACK = Instance.new("TextButton")
local TextLabel_7 = Instance.new("TextLabel")
local ANTAFK = Instance.new("TextButton")
local TextLabel_8 = Instance.new("TextLabel")
local tela4 = Instance.new("Frame")
local OWNER = Instance.new("TextButton")
local MEOW = Instance.new("TextButton")
local GERENTE = Instance.new("TextButton")
local HELPE = Instance.new("TextButton")
local VIP = Instance.new("TextButton")
local ADD = Instance.new("TextButton")
local REMOVE = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")
local ID_2 = Instance.new("TextLabel")
local DISPLAYNAME_2 = Instance.new("TextLabel")
local ImageLabel_2 = Instance.new("ImageLabel")
local TEXTOS = Instance.new("Frame")
local TextLabel_9 = Instance.new("TextLabel")
local TextLabel_10 = Instance.new("TextLabel")
local AvisoTP = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

CorpoPainel.Name = "CorpoPainel"
CorpoPainel.Parent = ScreenGui
CorpoPainel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CorpoPainel.BackgroundTransparency = 1.000
CorpoPainel.BorderColor3 = Color3.fromRGB(0, 0, 0)
CorpoPainel.BorderSizePixel = 0
CorpoPainel.Position = UDim2.new(0.294336736, 0, 0.134980991, 0)
CorpoPainel.Size = UDim2.new(0, 505, 0, 284)
CorpoPainel.ZIndex = 5

ABAS.Name = "ABAS"
ABAS.Parent = CorpoPainel
ABAS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ABAS.BackgroundTransparency = 1.000
ABAS.BorderColor3 = Color3.fromRGB(0, 0, 0)
ABAS.BorderSizePixel = 0
ABAS.Position = UDim2.new(0.284243047, 0, 0.13389121, 0)
ABAS.Size = UDim2.new(0, 100, 0, 100)

botoes.Name = "botoes"
botoes.Parent = ABAS
botoes.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
botoes.BorderColor3 = Color3.fromRGB(0, 0, 0)
botoes.BorderSizePixel = 0
botoes.Position = UDim2.new(-1.45186985, 0, -0.392296761, 0)
botoes.Size = UDim2.new(0, 101, 0, 284)

butela1.Name = "butela1"
butela1.Parent = botoes
butela1.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
butela1.BorderColor3 = Color3.fromRGB(0, 0, 0)
butela1.BorderSizePixel = 0
butela1.Position = UDim2.new(0, 0, 0.123239435, 0)
butela1.Size = UDim2.new(0, 100, 0, 35)
butela1.Font = Enum.Font.Unknown
butela1.Text = "HOME"
butela1.TextColor3 = Color3.fromRGB(255, 255, 255)
butela1.TextSize = 14.000

butela4.Name = "butela4"
butela4.Parent = botoes
butela4.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
butela4.BorderColor3 = Color3.fromRGB(0, 0, 0)
butela4.BorderSizePixel = 0
butela4.Position = UDim2.new(0.00990098994, 0, 0.760563314, 0)
butela4.Size = UDim2.new(0, 100, 0, 35)
butela4.Font = Enum.Font.Unknown
butela4.Text = "ADM"
butela4.TextColor3 = Color3.fromRGB(255, 255, 255)
butela4.TextSize = 14.000

butela5.Name = "butela5"
butela5.Parent = botoes
butela5.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
butela5.BorderColor3 = Color3.fromRGB(0, 0, 0)
butela5.BorderSizePixel = 0
butela5.Position = UDim2.new(0, 0, 0.595070362, 0)
butela5.Size = UDim2.new(0, 100, 0, 36)
butela5.Font = Enum.Font.Unknown
butela5.Text = "VIP"
butela5.TextColor3 = Color3.fromRGB(255, 255, 255)
butela5.TextSize = 14.000

butela3.Name = "butela3"
butela3.Parent = botoes
butela3.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
butela3.BorderColor3 = Color3.fromRGB(0, 0, 0)
butela3.BorderSizePixel = 0
butela3.Position = UDim2.new(0, 0, 0.436619729, 0)
butela3.Size = UDim2.new(0, 100, 0, 35)
butela3.Font = Enum.Font.Unknown
butela3.Text = "MISC"
butela3.TextColor3 = Color3.fromRGB(255, 255, 255)
butela3.TextSize = 14.000

butela2.Name = "butela2"
butela2.Parent = botoes
butela2.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
butela2.BorderColor3 = Color3.fromRGB(0, 0, 0)
butela2.BorderSizePixel = 0
butela2.Position = UDim2.new(0, 0, 0.278169006, 0)
butela2.Size = UDim2.new(0, 100, 0, 35)
butela2.Font = Enum.Font.Unknown
butela2.Text = "TARGET"
butela2.TextColor3 = Color3.fromRGB(255, 255, 255)
butela2.TextSize = 14.000

tela1.Name = "tela1"
tela1.Parent = CorpoPainel
tela1.Active = true
tela1.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
tela1.BorderColor3 = Color3.fromRGB(0, 0, 0)
tela1.BorderSizePixel = 0
tela1.ClipsDescendants = true
tela1.Position = UDim2.new(0.197935313, 0, -0.00354723865, 0)
tela1.Size = UDim2.new(0, 404, 0, 283)
tela1.Visible = false

ImageLabel.Parent = tela1
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.0841584131, 0, 0.0845070407, 0)
ImageLabel.Size = UDim2.new(0, 100, 0, 100)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

TextLabel.Parent = ImageLabel
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(1.14999998, 0, 0.25, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.Jura
TextLabel.Text = "Olá Seja Bem vindo! user ( B ) abrir/fechar painel"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

tela2.Name = "tela2"
tela2.Parent = CorpoPainel
tela2.Active = true
tela2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
tela2.BorderColor3 = Color3.fromRGB(255, 255, 255)
tela2.BorderSizePixel = 0
tela2.Position = UDim2.new(0.198397487, 0, -0.00525751244, 0)
tela2.Size = UDim2.new(0, 404, 0, 284)
tela2.Visible = false

AVATA.Name = "AVATA"
AVATA.Parent = tela2
AVATA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AVATA.BackgroundTransparency = 1.000
AVATA.BorderColor3 = Color3.fromRGB(0, 0, 0)
AVATA.BorderSizePixel = 0
AVATA.Position = UDim2.new(0.599009871, 0, 0.119718313, 0)
AVATA.Size = UDim2.new(0, 71, 0, 65)
AVATA.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

VIEW.Name = "VIEW"
VIEW.Parent = tela2
VIEW.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
VIEW.BorderColor3 = Color3.fromRGB(0, 0, 0)
VIEW.BorderSizePixel = 0
VIEW.Position = UDim2.new(0.0569306947, 0, 0.0845070407, 0)
VIEW.Size = UDim2.new(0, 100, 0, 36)
VIEW.Font = Enum.Font.Unknown
VIEW.Text = "VIEW"
VIEW.TextColor3 = Color3.fromRGB(255, 255, 255)
VIEW.TextSize = 14.000

TextLabel_2.Parent = VIEW
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.899999976, 0, -0.111111112, 0)
TextLabel_2.Size = UDim2.new(0, 70, 0, 46)
TextLabel_2.Font = Enum.Font.Unknown
TextLabel_2.Text = "+"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 25.000
TextLabel_2.TextWrapped = true

FOLLOW.Name = "FOLLOW"
FOLLOW.Parent = tela2
FOLLOW.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
FOLLOW.BorderColor3 = Color3.fromRGB(0, 0, 0)
FOLLOW.BorderSizePixel = 0
FOLLOW.Position = UDim2.new(0.0569306947, 0, 0.274647892, 0)
FOLLOW.Size = UDim2.new(0, 100, 0, 36)
FOLLOW.Font = Enum.Font.Unknown
FOLLOW.Text = "FOLLOW"
FOLLOW.TextColor3 = Color3.fromRGB(255, 255, 255)
FOLLOW.TextSize = 14.000

TextLabel_3.Parent = FOLLOW
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.899999976, 0, -0.138888896, 0)
TextLabel_3.Size = UDim2.new(0, 70, 0, 46)
TextLabel_3.Font = Enum.Font.Unknown
TextLabel_3.Text = "+"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 25.000
TextLabel_3.TextWrapped = true

FOCUS.Name = "FOCUS"
FOCUS.Parent = tela2
FOCUS.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
FOCUS.BorderColor3 = Color3.fromRGB(0, 0, 0)
FOCUS.BorderSizePixel = 0
FOCUS.Position = UDim2.new(0.0569306947, 0, 0.46126762, 0)
FOCUS.Size = UDim2.new(0, 100, 0, 36)
FOCUS.Font = Enum.Font.Unknown
FOCUS.Text = "FOCUS"
FOCUS.TextColor3 = Color3.fromRGB(255, 255, 255)
FOCUS.TextSize = 14.000

TextLabel_4.Parent = FOCUS
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.899999976, 0, -0.138888896, 0)
TextLabel_4.Size = UDim2.new(0, 70, 0, 46)
TextLabel_4.Font = Enum.Font.Unknown
TextLabel_4.Text = "+"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 25.000
TextLabel_4.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_4.TextWrapped = true

username.Name = "@username"
username.Parent = tela2
username.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
username.BorderColor3 = Color3.fromRGB(0, 0, 0)
username.BorderSizePixel = 0
username.Position = UDim2.new(0.438118815, 0, 0.556338012, 0)
username.Size = UDim2.new(0, 200, 0, 23)
username.Font = Enum.Font.SourceSans
username.Text = ""
username.TextColor3 = Color3.fromRGB(0, 0, 0)
username.TextSize = 14.000
username.TextWrapped = true

coloqueodousuario.Name = "coloque o @ do usuario!"
coloqueodousuario.Parent = username
coloqueodousuario.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
coloqueodousuario.BackgroundTransparency = 1.000
coloqueodousuario.BorderColor3 = Color3.fromRGB(0, 0, 0)
coloqueodousuario.BorderSizePixel = 0
coloqueodousuario.Position = UDim2.new(0, 0, 0.999999344, 0)
coloqueodousuario.Size = UDim2.new(0, 200, 0, 21)
coloqueodousuario.Font = Enum.Font.Jura
coloqueodousuario.Text = "coloque o @ do usuario!"
coloqueodousuario.TextColor3 = Color3.fromRGB(255, 255, 255)
coloqueodousuario.TextSize = 14.000
coloqueodousuario.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

ID.Name = "ID"
ID.Parent = username
ID.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ID.BackgroundTransparency = 1.000
ID.BorderColor3 = Color3.fromRGB(0, 0, 0)
ID.BorderSizePixel = 0
ID.Position = UDim2.new(0, 0, -2.43478394, 0)
ID.Size = UDim2.new(0, 200, 0, 21)
ID.Font = Enum.Font.Jura
ID.Text = "ID"
ID.TextColor3 = Color3.fromRGB(255, 255, 255)
ID.TextSize = 14.000
ID.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

DISPLAYNAME.Name = "DISPLAY NAME"
DISPLAYNAME.Parent = username
DISPLAYNAME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DISPLAYNAME.BackgroundTransparency = 1.000
DISPLAYNAME.BorderColor3 = Color3.fromRGB(0, 0, 0)
DISPLAYNAME.BorderSizePixel = 0
DISPLAYNAME.Position = UDim2.new(0, 0, -1.52174044, 0)
DISPLAYNAME.Size = UDim2.new(0, 200, 0, 21)
DISPLAYNAME.Font = Enum.Font.Jura
DISPLAYNAME.Text = "DISPLAY NAME"
DISPLAYNAME.TextColor3 = Color3.fromRGB(255, 255, 255)
DISPLAYNAME.TextSize = 14.000
DISPLAYNAME.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

tela3.Name = "tela3"
tela3.Parent = CorpoPainel
tela3.Active = true
tela3.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
tela3.BorderColor3 = Color3.fromRGB(255, 255, 255)
tela3.BorderSizePixel = 0
tela3.Position = UDim2.new(0.198397487, 0, -0.00525751244, 0)
tela3.Size = UDim2.new(0, 404, 0, 284)

CLICKTP.Name = "CLICK - TP"
CLICKTP.Parent = tela3
CLICKTP.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
CLICKTP.BorderColor3 = Color3.fromRGB(0, 0, 0)
CLICKTP.BorderSizePixel = 0
CLICKTP.Position = UDim2.new(0.0569306947, 0, 0.0845070407, 0)
CLICKTP.Size = UDim2.new(0, 100, 0, 36)
CLICKTP.Font = Enum.Font.Unknown
CLICKTP.Text = "CLICK - TP"
CLICKTP.TextColor3 = Color3.fromRGB(255, 255, 255)
CLICKTP.TextSize = 14.000

TextLabel_5.Parent = CLICKTP
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.899999976, 0, -0.111111112, 0)
TextLabel_5.Size = UDim2.new(0, 70, 0, 46)
TextLabel_5.Font = Enum.Font.Unknown
TextLabel_5.Text = "+"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 25.000
TextLabel_5.TextWrapped = true

NOCLIP.Name = "NOCLIP"
NOCLIP.Parent = tela3
NOCLIP.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
NOCLIP.BorderColor3 = Color3.fromRGB(0, 0, 0)
NOCLIP.BorderSizePixel = 0
NOCLIP.Position = UDim2.new(0.0569306947, 0, 0.274647892, 0)
NOCLIP.Size = UDim2.new(0, 100, 0, 36)
NOCLIP.Font = Enum.Font.Unknown
NOCLIP.Text = "NOCLIP"
NOCLIP.TextColor3 = Color3.fromRGB(255, 255, 255)
NOCLIP.TextSize = 14.000

TextLabel_6.Parent = NOCLIP
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0.899999976, 0, -0.138888896, 0)
TextLabel_6.Size = UDim2.new(0, 70, 0, 46)
TextLabel_6.Font = Enum.Font.Unknown
TextLabel_6.Text = "+"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 25.000
TextLabel_6.TextWrapped = true

FLASHBACK.Name = "FLASHBACK"
FLASHBACK.Parent = tela3
FLASHBACK.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
FLASHBACK.BorderColor3 = Color3.fromRGB(0, 0, 0)
FLASHBACK.BorderSizePixel = 0
FLASHBACK.Position = UDim2.new(0.0569306947, 0, 0.46126762, 0)
FLASHBACK.Size = UDim2.new(0, 100, 0, 36)
FLASHBACK.Font = Enum.Font.Unknown
FLASHBACK.Text = "FLASHBACK"
FLASHBACK.TextColor3 = Color3.fromRGB(255, 255, 255)
FLASHBACK.TextSize = 14.000

TextLabel_7.Parent = FLASHBACK
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0.899999976, 0, -0.138888896, 0)
TextLabel_7.Size = UDim2.new(0, 70, 0, 46)
TextLabel_7.Font = Enum.Font.Unknown
TextLabel_7.Text = "+"
TextLabel_7.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 25.000
TextLabel_7.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_7.TextWrapped = true

ANTAFK.Name = "ANT-AFK"
ANTAFK.Parent = tela3
ANTAFK.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
ANTAFK.BorderColor3 = Color3.fromRGB(0, 0, 0)
ANTAFK.BorderSizePixel = 0
ANTAFK.Position = UDim2.new(0.0569306947, 0, 0.633802831, 0)
ANTAFK.Size = UDim2.new(0, 100, 0, 36)
ANTAFK.Font = Enum.Font.Unknown
ANTAFK.Text = "ANT-AFK"
ANTAFK.TextColor3 = Color3.fromRGB(255, 255, 255)
ANTAFK.TextSize = 14.000

TextLabel_8.Parent = ANTAFK
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Position = UDim2.new(0.899999976, 0, -0.138888896, 0)
TextLabel_8.Size = UDim2.new(0, 70, 0, 46)
TextLabel_8.Font = Enum.Font.Unknown
TextLabel_8.Text = "+"
TextLabel_8.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_8.TextScaled = true
TextLabel_8.TextSize = 25.000
TextLabel_8.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_8.TextWrapped = true

tela4.Name = "tela4"
tela4.Parent = CorpoPainel
tela4.Active = true
tela4.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
tela4.BorderColor3 = Color3.fromRGB(255, 255, 255)
tela4.BorderSizePixel = 0
tela4.Position = UDim2.new(0.198397487, 0, -0.00525751244, 0)
tela4.Size = UDim2.new(0, 404, 0, 284)
tela4.Visible = false

OWNER.Name = "OWNER"
OWNER.Parent = tela4
OWNER.BackgroundColor3 = Color3.fromRGB(98, 0, 0)
OWNER.BorderColor3 = Color3.fromRGB(0, 0, 0)
OWNER.BorderSizePixel = 0
OWNER.Position = UDim2.new(0.0569306947, 0, 0.211267605, 0)
OWNER.Size = UDim2.new(0, 100, 0, 36)
OWNER.Font = Enum.Font.Unknown
OWNER.Text = "OWNER"
OWNER.TextColor3 = Color3.fromRGB(255, 255, 255)
OWNER.TextSize = 14.000

MEOW.Name = "MEOW"
MEOW.Parent = tela4
MEOW.BackgroundColor3 = Color3.fromRGB(255, 85, 255)
MEOW.BorderColor3 = Color3.fromRGB(0, 0, 0)
MEOW.BorderSizePixel = 0
MEOW.Position = UDim2.new(0.0569306947, 0, 0.366197169, 0)
MEOW.Size = UDim2.new(0, 100, 0, 36)
MEOW.Font = Enum.Font.Unknown
MEOW.Text = "MEOW"
MEOW.TextColor3 = Color3.fromRGB(255, 255, 255)
MEOW.TextSize = 14.000

GERENTE.Name = "GERENTE"
GERENTE.Parent = tela4
GERENTE.BackgroundColor3 = Color3.fromRGB(85, 0, 255)
GERENTE.BorderColor3 = Color3.fromRGB(0, 0, 0)
GERENTE.BorderSizePixel = 0
GERENTE.Position = UDim2.new(0.0569306947, 0, 0.521126807, 0)
GERENTE.Size = UDim2.new(0, 100, 0, 36)
GERENTE.Font = Enum.Font.Unknown
GERENTE.Text = "GRENTE"
GERENTE.TextColor3 = Color3.fromRGB(255, 255, 255)
GERENTE.TextSize = 14.000

HELPE.Name = "HELPE"
HELPE.Parent = tela4
HELPE.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
HELPE.BorderColor3 = Color3.fromRGB(0, 0, 0)
HELPE.BorderSizePixel = 0
HELPE.Position = UDim2.new(0.0569306947, 0, 0.676056385, 0)
HELPE.Size = UDim2.new(0, 100, 0, 36)
HELPE.Font = Enum.Font.Unknown
HELPE.Text = "HELPE"
HELPE.TextColor3 = Color3.fromRGB(30, 30, 30)
HELPE.TextSize = 14.000

VIP.Name = "VIP"
VIP.Parent = tela4
VIP.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
VIP.BorderColor3 = Color3.fromRGB(255, 255, 255)
VIP.BorderSizePixel = 0
VIP.Position = UDim2.new(0.0569306947, 0, 0.830985963, 0)
VIP.Size = UDim2.new(0, 100, 0, 36)
VIP.Font = Enum.Font.Unknown
VIP.Text = "VIP"
VIP.TextColor3 = Color3.fromRGB(0, 0, 0)
VIP.TextSize = 14.000

ADD.Name = "ADD"
ADD.Parent = tela4
ADD.BackgroundColor3 = Color3.fromRGB(91, 255, 3)
ADD.BorderColor3 = Color3.fromRGB(0, 0, 0)
ADD.BorderSizePixel = 0
ADD.Position = UDim2.new(0.425742567, 0, 0.521126807, 0)
ADD.Size = UDim2.new(0, 86, 0, 36)
ADD.Font = Enum.Font.Unknown
ADD.Text = "ADD"
ADD.TextColor3 = Color3.fromRGB(30, 30, 30)
ADD.TextSize = 14.000

REMOVE.Name = "REMOVE"
REMOVE.Parent = tela4
REMOVE.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
REMOVE.BorderColor3 = Color3.fromRGB(0, 0, 0)
REMOVE.BorderSizePixel = 0
REMOVE.Position = UDim2.new(0.70792079, 0, 0.521126807, 0)
REMOVE.Size = UDim2.new(0, 86, 0, 36)
REMOVE.Font = Enum.Font.Unknown
REMOVE.Text = "REMOVE"
REMOVE.TextColor3 = Color3.fromRGB(30, 30, 30)
REMOVE.TextSize = 14.000

TextBox.Parent = tela4
TextBox.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
TextBox.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.425742567, 0, 0.362676114, 0)
TextBox.Size = UDim2.new(0, 200, 0, 33)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.000

ID_2.Name = "ID"
ID_2.Parent = TextBox
ID_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ID_2.BackgroundTransparency = 1.000
ID_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ID_2.BorderSizePixel = 0
ID_2.Position = UDim2.new(0.109999999, 0, -2.06023884, 0)
ID_2.Size = UDim2.new(0, 200, 0, 21)
ID_2.Font = Enum.Font.Jura
ID_2.Text = "ID"
ID_2.TextColor3 = Color3.fromRGB(255, 255, 255)
ID_2.TextSize = 14.000
ID_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

DISPLAYNAME_2.Name = "DISPLAY NAME"
DISPLAYNAME_2.Parent = TextBox
DISPLAYNAME_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DISPLAYNAME_2.BackgroundTransparency = 1.000
DISPLAYNAME_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
DISPLAYNAME_2.BorderSizePixel = 0
DISPLAYNAME_2.Position = UDim2.new(0.11088226, 0, -1.31108928, 0)
DISPLAYNAME_2.Size = UDim2.new(0, 200, 0, 21)
DISPLAYNAME_2.Font = Enum.Font.Jura
DISPLAYNAME_2.Text = "DISPLAY NAME"
DISPLAYNAME_2.TextColor3 = Color3.fromRGB(255, 255, 255)
DISPLAYNAME_2.TextSize = 14.000
DISPLAYNAME_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

ImageLabel_2.Parent = TextBox
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(-0.000989990192, 0, -2.69846368, 0)
ImageLabel_2.Size = UDim2.new(0, 71, 0, 65)
ImageLabel_2.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

TEXTOS.Name = "TEXTOS"
TEXTOS.Parent = CorpoPainel
TEXTOS.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
TEXTOS.BackgroundTransparency = 1.000
TEXTOS.BorderColor3 = Color3.fromRGB(0, 0, 0)
TEXTOS.BorderSizePixel = 0
TEXTOS.Position = UDim2.new(0.36493966, 0, 0.208588958, 0)
TEXTOS.Size = UDim2.new(0, 404, 0, 284)

TextLabel_9.Parent = TEXTOS
TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BackgroundTransparency = 1.000
TextLabel_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_9.BorderSizePixel = 0
TextLabel_9.Position = UDim2.new(0.0445544571, 0, 0.672535241, 0)
TextLabel_9.Size = UDim2.new(0, 200, 0, 33)
TextLabel_9.Font = Enum.Font.Unknown
TextLabel_9.Text = "4e20 Panel"
TextLabel_9.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.TextSize = 17.000
TextLabel_9.TextWrapped = true

TextLabel_10.Parent = TEXTOS
TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BackgroundTransparency = 1.000
TextLabel_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_10.BorderSizePixel = 0
TextLabel_10.Position = UDim2.new(0.485148519, 0, 0.672535241, 0)
TextLabel_10.Size = UDim2.new(0, 200, 0, 33)
TextLabel_10.Font = Enum.Font.Unknown
TextLabel_10.Text = "v1.0"
TextLabel_10.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.TextSize = 17.000
TextLabel_10.TextWrapped = true

AvisoTP.Name = "AvisoTP"
AvisoTP.Parent = ScreenGui
AvisoTP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AvisoTP.BackgroundTransparency = 1.000
AvisoTP.BorderColor3 = Color3.fromRGB(0, 0, 0)
AvisoTP.BorderSizePixel = 0
AvisoTP.Position = UDim2.new(0.83263284, 0, 0.859222949, 0)
AvisoTP.Size = UDim2.new(0, 200, 0, 50)
AvisoTP.Visible = false
AvisoTP.Font = Enum.Font.SourceSans
AvisoTP.Text = "aviso tp"
AvisoTP.TextColor3 = Color3.fromRGB(0, 0, 0)
AvisoTP.TextSize = 14.000

-- Scripts:

local function KZFVPMH_fake_script() -- ScreenGui.LocalScript 
	local script = Instance.new('LocalScript', ScreenGui)

	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	
	local gui = script.Parent
	-- Agora o script foca no Frame que segura todas as peças
	local painel = gui:WaitForChild("CorpoPainel") 
	
	-- 1. ABRIR/FECHAR COM A LETRA B
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		if input.KeyCode == Enum.KeyCode.B then
			painel.Visible = not painel.Visible
		end
	end)
	
	-- 2. SISTEMA DE ARRASTAR LENTO E SUAVE (DRAG)
	local dragging, dragInput, dragStart, startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		local newPos = UDim2.new(
			startPos.X.Scale, 
			startPos.X.Offset + delta.X, 
			startPos.Y.Scale, 
			startPos.Y.Offset + delta.Y
		)
	
		-- Efeito de deslize suave (0.2 para ser mais lento)
		local info = TweenInfo.new(0.2, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
		TweenService:Create(painel, info, {Position = newPos}):Play()
	end
	
	painel.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = painel.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	painel.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(KZFVPMH_fake_script)()
local function UAZF_fake_script() -- tela1.CarregarHome 
	local script = Instance.new('LocalScript', tela1)

	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	
	local tela1 = script.Parent -- O script já está dentro da tela1
	local fotoUsuario = tela1:WaitForChild("ImageLabel")
	
	local function carregarFoto()
		local userId = player.UserId
		local thumbType = Enum.ThumbnailType.HeadShot
		local thumbSize = Enum.ThumbnailSize.Size420x420
	
		local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
	
		if isReady then
			fotoUsuario.Image = content
			fotoUsuario.BackgroundTransparency = 1
		end
	end
	
	task.spawn(carregarFoto)
end
coroutine.wrap(UAZF_fake_script)()
local function AVVOA_fake_script() -- tela2.NOMES 
	local script = Instance.new('LocalScript', tela2)

	local Players = game:GetService("Players")
	
	local tela = script.Parent
	local textBox = tela:WaitForChild("@username") 
	local labelID = textBox:WaitForChild("ID")
	local labelDisplay = textBox:WaitForChild("DISPLAY NAME")
	local imageLabel = tela:WaitForChild("AVATA")
	
	local function resetarInterface()
		labelID.Text = "ID: 000000"
		labelDisplay.Text = "NÃO ENCONTRADO"
		imageLabel.Image = ""
	end
	
	textBox.FocusLost:Connect(function(enterPressed)
		if enterPressed then
			local alvo = textBox.Text:lower():gsub("%s+", "") -- Texto digitado em minúsculo e sem espaços
			local jogadorEncontrado = nil
	
			if alvo ~= "" then
				-- Procura nos jogadores do servidor
				for _, player in pairs(Players:GetPlayers()) do
					local nomeReal = player.Name:lower()
					local nomeExibicao = player.DisplayName:lower()
	
					-- Verifica se o que você digitou faz PARTE do nome ou do display name
					if string.find(nomeReal, alvo) or string.find(nomeExibicao, alvo) then
						jogadorEncontrado = player
						break -- Achou o primeiro que combina? Já para a busca.
					end
				end
			end
	
			if jogadorEncontrado then
				-- 1. Carrega a foto
				local content, isReady = Players:GetUserThumbnailAsync(
					jogadorEncontrado.UserId, 
					Enum.ThumbnailType.AvatarThumbnail, 
					Enum.ThumbnailSize.Size420x420
				)
				imageLabel.Image = content
	
				-- 2. Atualiza as Labels
				labelID.Text = "ID: " .. jogadorEncontrado.UserId
				labelDisplay.Text = jogadorEncontrado.DisplayName
			else
				resetarInterface()
			end
		end
	end)
end
coroutine.wrap(AVVOA_fake_script)()
local function HABL_fake_script() -- tela2.VIEW 
	local script = Instance.new('LocalScript', tela2)

	local Players = game:GetService("Players")
	local camera = workspace.CurrentCamera
	
	local tela = script.Parent
	local textBox = tela:WaitForChild("@username")
	
	-- Botões e Sinais (Todos usando o objeto "A" como referência)
	local btnView = tela:WaitForChild("VIEW")
	local sinalView = btnView:WaitForChild("TextLabel")
	
	local btnFollow = tela:WaitForChild("FOLLOW")
	local sinalFollow = btnFollow:WaitForChild("TextLabel")
	
	local btnFocus = tela:WaitForChild("FOCUS")
	local sinalFocus = btnFocus:WaitForChild("TextLabel")
	
	-- Variáveis de Controle
	local jogadorAlvo = nil
	local modoView = false
	local modoFollow = false
	
	local COR_LIGADO = Color3.fromRGB(0, 255, 0)    -- Verde
	local COR_DESLIGADO = Color3.fromRGB(255, 0, 0) -- Vermelho
	
	-- 1. Busca do Player (Aperte ENTER para validar)
	textBox.FocusLost:Connect(function(enterPressed)
		if enterPressed then
			local nome = textBox.Text:lower():gsub("%s+", "")
			jogadorAlvo = nil
			for _, p in pairs(Players:GetPlayers()) do
				if string.find(p.Name:lower(), nome) or string.find(p.DisplayName:lower(), nome) then
					jogadorAlvo = p
					
					break
				end
			end
		end
	end)
	
	-- 2. VIEW: Assiste o jogador
	btnView.MouseButton1Click:Connect(function()
		if jogadorAlvo and jogadorAlvo.Character then
			local hum = jogadorAlvo.Character:FindFirstChild("Humanoid")
			if hum then
				modoView = not modoView
				camera.CameraSubject = modoView and hum or Players.LocalPlayer.Character.Humanoid
				sinalView.TextColor3 = modoView and COR_LIGADO or COR_DESLIGADO
			end
		else
			sinalView.TextColor3 = COR_DESLIGADO
		end
	end)
	
	-- 3. FOLLOW: Segue o jogador continuamente
	btnFollow.MouseButton1Click:Connect(function()
		if jogadorAlvo and jogadorAlvo.Character then
			modoFollow = not modoFollow
			sinalFollow.TextColor3 = modoFollow and COR_LIGADO or COR_DESLIGADO
	
			if modoFollow then
				task.spawn(function()
					while modoFollow and jogadorAlvo and jogadorAlvo.Character do
						local meuRoot = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
						local alvoRoot = jogadorAlvo.Character:FindFirstChild("HumanoidRootPart")
						if meuRoot and alvoRoot then
							meuRoot.CFrame = alvoRoot.CFrame * CFrame.new(0, 0, 5)
						end
						task.wait(0.05)
					end
				end)
			end
		else
			sinalFollow.TextColor3 = COR_DESLIGADO
		end
	end)
	
	-- 4. FOCUS: Teleporta para o jogador (Instantâneo)
	btnFocus.MouseButton1Click:Connect(function()
		if jogadorAlvo and jogadorAlvo.Character then
			local meuRoot = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			local alvoRoot = jogadorAlvo.Character:FindFirstChild("HumanoidRootPart")
	
			if meuRoot and alvoRoot then
				-- Teleporta você exatamente para onde o player está
				meuRoot.CFrame = alvoRoot.CFrame
	
				-- Pisca o sinal em verde para indicar sucesso
				sinalFocus.TextColor3 = COR_LIGADO
				task.wait(0.5)
				sinalFocus.TextColor3 = COR_DESLIGADO
			end
		else
			sinalFocus.TextColor3 = COR_DESLIGADO
		end
	end)
end
coroutine.wrap(HABL_fake_script)()
local function UDJWVF_fake_script() -- CLICKTP.LocalScript 
	local script = Instance.new('LocalScript', CLICKTP)

	local Players = game:GetService("Players")
	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	
	local player = Players.LocalPlayer
	local mouse = player:GetMouse()
	
	local botao = script.Parent -- O próprio botão CLICK - TP
	local iconeStatus = botao:WaitForChild("TextLabel") -- O símbolo de +
	
	-- Procura a ScreenGui para mostrar o aviso no canto da tela
	local screenGui = botao.Parent.Parent.Parent 
	local aviso = screenGui:FindFirstChild("AvisoTP")
	
	local ativado = false
	
	-- Função para a mensagem customizada de 4 segundos
	local function mostrarNotificacao(texto)
		if aviso then
			aviso.Text = texto
			aviso.Visible = true
			task.wait(4)
			aviso.Visible = false
		end
	end
	
	-- 1. CLIQUE NO BOTÃO: ATIVA/DESATIVA E MUDA A COR
	botao.MouseButton1Click:Connect(function()
		ativado = not ativado
	
		if ativado then
			iconeStatus.TextColor3 = Color3.fromRGB(0, 255, 0) -- Fica Verde
			task.spawn(function()
				mostrarNotificacao("SEGURE ( CTRL + CLICK ) PARA TELEPORTAR")
			end)
		else
			iconeStatus.TextColor3 = Color3.fromRGB(255, 0, 0) -- Fica Vermelho
		end
	end)
	
	-- 2. SISTEMA DE TELEPORTE (Mecanismo do Click TP)
	mouse.Button1Down:Connect(function()
		if ativado and UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
			local posicaoAlvo = mouse.Hit.p
			local char = player.Character
	
			if char and char:FindFirstChild("HumanoidRootPart") then
				-- Teleporta 3 studs acima do chão para não bugar
				char.HumanoidRootPart.CFrame = CFrame.new(posicaoAlvo + Vector3.new(0, 3, 0))
			end
		end
	end)
end
coroutine.wrap(UDJWVF_fake_script)()
local function PBCOZV_fake_script() -- NOCLIP.LocalScript 
	local script = Instance.new('LocalScript', NOCLIP)

	local RunService = game:GetService("RunService")
	local UserInputService = game:GetService("UserInputService")
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	
	local botao = script.Parent
	local iconeStatus = botao:WaitForChild("TextLabel") -- O símbolo de +
	
	local permissaoPainel = false -- Liberação pelo painel
	local noclipAtivo = false     -- Estado atual do atravessar paredes
	local conexao = nil
	
	-- 1. CLIQUE NO PAINEL: ATIVA A PERMISSÃO
	botao.MouseButton1Click:Connect(function()
		permissaoPainel = not permissaoPainel
	
		if permissaoPainel then
			iconeStatus.TextColor3 = Color3.fromRGB(0, 255, 0) -- Verde
			
		else
			iconeStatus.TextColor3 = Color3.fromRGB(255, 0, 0) -- Vermelho
			noclipAtivo = false
			if conexao then conexao:Disconnect() end
			
		end
	end)
	
	-- 2. TECLA N: SÓ FUNCIONA SE O BOTÃO ACIMA ESTIVER VERDE
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
	
		if permissaoPainel and input.KeyCode == Enum.KeyCode.N then
			noclipAtivo = not noclipAtivo
	
			if noclipAtivo then
				-- Começa a atravessar paredes
				conexao = RunService.Stepped:Connect(function()
					if player.Character then
						for _, parte in pairs(player.Character:GetDescendants()) do
							if parte:IsA("BasePart") then
								parte.CanCollide = false
							end
						end
					end
				end)
			else
				-- Para de atravessar
				if conexao then conexao:Disconnect() end
				if player.Character then
					for _, parte in pairs(player.Character:GetDescendants()) do
						if parte:IsA("BasePart") then
							parte.CanCollide = true
						end
					end
				end
			end
		end
	end)
end
coroutine.wrap(PBCOZV_fake_script)()
local function CFFDPP_fake_script() -- FLASHBACK.LocalScript 
	local script = Instance.new('LocalScript', FLASHBACK)

	local RunService = game:GetService("RunService")
	local UserInputService = game:GetService("UserInputService")
	local Players = game:GetService("Players")
	
	local player = Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local root = character:WaitForChild("HumanoidRootPart")
	local humanoid = character:WaitForChild("Humanoid")
	
	local botao = script.Parent
	local iconeStatus = botao:WaitForChild("TextLabel")
	
	local permissaoPainel = false
	local rastroCaminho = {}
	local maxPosicoes = 100  -- Reduzido: menos posições, mais espaçadas
	
	-- Controla a suavidade da interpolação
	local SUAVIDADE = 0.10  -- Mais baixo = mais suave (era 0.25)
	
	-- Limita a gravação para não ser tão densa
	local tempoUltimaGravacao = 0
	local INTERVALO_GRAVACAO = 0.01  -- Grava a cada 50ms em vez de todo frame
	
	-- 1. LIGA/DESLIGA
	botao.MouseButton1Click:Connect(function()
		permissaoPainel = not permissaoPainel
		if permissaoPainel then
			iconeStatus.TextColor3 = Color3.fromRGB(0, 255, 0)
		else
			iconeStatus.TextColor3 = Color3.fromRGB(255, 0, 0)
			table.clear(rastroCaminho)
		end
	end)
	
	-- 2. GRAVAÇÃO (espaçada no tempo)
	RunService.Heartbeat:Connect(function(dt)
		if permissaoPainel and not UserInputService:IsKeyDown(Enum.KeyCode.V) then
			tempoUltimaGravacao = tempoUltimaGravacao + dt
			if tempoUltimaGravacao >= INTERVALO_GRAVACAO then
				tempoUltimaGravacao = 0
				table.insert(rastroCaminho, 1, root.CFrame)
				if #rastroCaminho > maxPosicoes then
					table.remove(rastroCaminho, #rastroCaminho)
				end
			end
		end
	end)
	
	-- 3. REPRODUÇÃO ULTRA SUAVE
	local alvoAtual = nil
	local tempoReproducao = 0
	
	RunService.RenderStepped:Connect(function(dt)
		if permissaoPainel and UserInputService:IsKeyDown(Enum.KeyCode.V) then
			tempoReproducao = tempoReproducao + dt
	
			-- Consome uma posição no mesmo intervalo que foi gravada
			if tempoReproducao >= INTERVALO_GRAVACAO and #rastroCaminho > 0 then
				tempoReproducao = 0
				alvoAtual = table.remove(rastroCaminho, 1)
			end
	
			if alvoAtual then
				-- Lerp mais suave, independente de FPS
				local fator = 1 - (SUAVIDADE ^ (dt * 60))
				root.CFrame = root.CFrame:Lerp(alvoAtual, fator)
			end
	
			humanoid:Move(Vector3.new(0, 0, 1), false)
		else
			alvoAtual = nil
			tempoReproducao = 0
		end
	end)
end
coroutine.wrap(CFFDPP_fake_script)()
local function MPRJJV_fake_script() -- ANTAFK.LocalScript 
	local script = Instance.new('LocalScript', ANTAFK)

	-- SERVIÇOS
	local Players = game:GetService("Players")
	local VirtualUser = game:GetService("VirtualUser")
	local localPlayer = Players.LocalPlayer
	
	-- REFERÊNCIAS DO SEU LAYOUT
	local botao = script.Parent 
	local iconeStatus = botao:WaitForChild("TextLabel") -- O símbolo de +
	
	local permissaoPainel = false -- Liberação pelo painel
	
	-- 1. CLIQUE NO PAINEL: ATIVA/DESATIVA A PERMISSÃO
	botao.MouseButton1Click:Connect(function()
		permissaoPainel = not permissaoPainel
	
		if permissaoPainel then
			iconeStatus.TextColor3 = Color3.fromRGB(0, 255, 0) -- Verde (Ativado)
			
		else
			iconeStatus.TextColor3 = Color3.fromRGB(255, 0, 0) -- Vermelho (Desativado)
			
		end
	end)
	
	-- 2. SISTEMA VIGIA: SÓ AGE SE A PERMISSÃO ESTIVER ATIVA
	localPlayer.Idled:Connect(function()
		if permissaoPainel then
			-- Simula interação técnica para resetar o tempo de inatividade do Roblox
			VirtualUser:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
			task.wait(0.5)
			VirtualUser:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
			
		end
	end)
end
coroutine.wrap(MPRJJV_fake_script)()
local function YCPW_fake_script() -- tela4.LocalScript 
	local script = Instance.new('LocalScript', tela4)

	local Players = game:GetService("Players")
	local TweenService = game:GetService("TweenService")
	local HttpService = game:GetService("HttpService")
	local StarterGui = game:GetService("StarterGui")
	local TextService = game:GetService("TextService")
	local localPlayer = Players.LocalPlayer
	
	local tela = script.Parent
	local inputNome = tela:WaitForChild("TextBox")
	local botaoAdd = tela:WaitForChild("ADD")
	local botaoRemove = tela:WaitForChild("REMOVE")
	local imagemAvatar = inputNome:WaitForChild("ImageLabel")
	local textoDisplay = inputNome:WaitForChild("DISPLAY NAME")
	local textoID = inputNome:WaitForChild("ID")
	local pastaBotoes = tela.Parent:WaitForChild("ABAS"):WaitForChild("botoes")
	local abasRestritas = {
		["ADM"] = pastaBotoes:WaitForChild("butela4")
	}
	
	local MEU_ID_DONO = 9657477548
	local tagSelecionada = ""
	local SERVIDOR = "https://foure20-backend.onrender.com"
	local GAME_ID = tostring(game.PlaceId)
	local cargoAnterior = {}
	local painelAberto = false -- controla estado do painel
	
	local configuracaoTags = {
		["OWNER"]   = Color3.fromRGB(150, 0, 0),
		["MEOW"]    = Color3.fromRGB(255, 100, 255),
		["GERENTE"] = Color3.fromRGB(85, 0, 255),
		["HELPE"]   = Color3.fromRGB(255, 255, 0),
		["VIP"]     = Color3.fromRGB(0, 255, 0),
		["USER"]    = Color3.fromRGB(255, 255, 255)
	}
	
	-- ESCONDE ABA ADM IMEDIATAMENTE
	for _, aba in pairs(abasRestritas) do
		if aba then aba.Visible = false end
	end
	
	-- NOTIFICAÇÃO
	local function notificar(titulo, texto, duracao)
		pcall(function()
			StarterGui:SetCore("SendNotification", {
				Title = titulo,
				Text = texto,
				Duration = duracao or 4
			})
		end)
	end
	
	-- FUNÇÃO UNIVERSAL DE REQUEST
	local function httpRequest(dados)
		local ok, resultado = pcall(function()
			if syn and syn.request then
				return syn.request(dados)
			elseif http and http.request then
				return http.request(dados)
			elseif request then
				return request(dados)
			elseif HttpRequest then
				return HttpRequest(dados)
			elseif fluxus and fluxus.request then
				return fluxus.request(dados)
			end
		end)
		if ok then return resultado end
		return nil
	end
	
	local function corParaTabela(cor)
		return {
			math.floor(cor.R * 255),
			math.floor(cor.G * 255),
			math.floor(cor.B * 255)
		}
	end
	
	local function tabelaParaCor(t)
		return Color3.fromRGB(t[1], t[2], t[3])
	end
	
	-- ATUALIZA ABAS E FECHA SE PERDEU ACESSO
	local function atualizarAbas(cargo)
		local temAcesso = (localPlayer.UserId == MEU_ID_DONO)
			or (cargo == "OWNER")
			or (cargo == "GERENTE")
		for _, aba in pairs(abasRestritas) do
			if aba then
				aba.Visible = temAcesso
				if not temAcesso then
					local painelADM = tela.Parent:FindFirstChild("butela4")
						or tela.Parent:FindFirstChild("ADM")
					if painelADM then painelADM.Visible = false end
				end
			end
		end
	end
	
	-- APLICA TAG VISUAL
	local function aplicarTagVisual(playerAlvo, texto, cor)
		local char = playerAlvo.Character
		if not char then return end
		local head = char:FindFirstChild("Head")
		if not head then return end
	
		-- Remove tag antiga
		for _, o in pairs(head:GetChildren()) do
			if o.Name == "TagPainel" then o:Destroy() end
		end
	
		local bill = Instance.new("BillboardGui", head)
		bill.Name = "TagPainel"
		bill.StudsOffset = Vector3.new(0, 2.2, 0)
		bill.AlwaysOnTop = true
	
		local label = Instance.new("TextLabel", bill)
		label.Size = UDim2.new(1, 0, 1, 0)
		label.BackgroundTransparency = 1
		label.Text = texto
		label.TextColor3 = cor
		label.Font = Enum.Font.GothamBold
		label.TextScaled = false
		label.TextSize = 14
		label.TextStrokeTransparency = 0.2
		label.TextStrokeColor3 = Color3.new(0, 0, 0)
	
		-- Ajusta tamanho igual ao nome do jogo
		local textSize = TextService:GetTextSize(
			texto, 14, Enum.Font.GothamBold, Vector2.new(1000, 1000)
		)
		bill.Size = UDim2.new(0, textSize.X + 10, 0, textSize.Y + 4)
	
		if texto == "OWNER" or texto == "GERENTE" then
			local grad = Instance.new("UIGradient", label)
			grad.Color = ColorSequence.new(cor, Color3.new(1, 1, 1), cor)
			task.spawn(function()
				while label and label.Parent do
					grad.Offset = Vector2.new(-1, 0)
					TweenService:Create(grad, TweenInfo.new(2), {Offset = Vector2.new(1, 0)}):Play()
					task.wait(2.1)
				end
			end)
		end
	end
	
	-- MANDA TAG PRO SERVIDOR
	local function enviarTag(playerName, cargo, cor)
		pcall(function()
			httpRequest({
				Url = SERVIDOR .. "/settag",
				Method = "POST",
				Headers = {["Content-Type"] = "application/json"},
				Body = HttpService:JSONEncode({
					player = playerName,
					cargo = cargo,
					cor = corParaTabela(cor),
					gameId = GAME_ID
				})
			})
		end)
	end
	
	-- REMOVE TAG DO SERVIDOR
	local function removerTag(playerName)
		pcall(function()
			httpRequest({
				Url = SERVIDOR .. "/removetag",
				Method = "POST",
				Headers = {["Content-Type"] = "application/json"},
				Body = HttpService:JSONEncode({
					player = playerName,
					gameId = GAME_ID
				})
			})
		end)
	end
	
	-- BUSCA CARGO DO SERVIDOR PRA UM PLAYER ESPECÍFICO
	local function buscarCargoServidor(playerName)
		local ok, resposta = pcall(function()
			return httpRequest({
				Url = SERVIDOR .. "/gettags?gameId=" .. GAME_ID,
				Method = "GET"
			})
		end)
		if ok and resposta and resposta.Body then
			local dados = HttpService:JSONDecode(resposta.Body)
			return dados[playerName]
		end
		return nil
	end
	
	-- ✅ REAAPLICA TAG AO RESPAWN (busca do servidor, não reseta pra USER)
	local function conectarRespawn(p)
		p.CharacterAdded:Connect(function(char)
			task.wait(1.5)
			local info = buscarCargoServidor(p.Name)
			if info then
				-- Tem cargo no servidor, reaaplica
				aplicarTagVisual(p, info.cargo, tabelaParaCor(info.cor))
				if p == localPlayer then
					atualizarAbas(info.cargo)
				end
			else
				-- Não tem cargo, aplica USER só se for executor
				if p == localPlayer then
					local cargo = localPlayer.UserId == MEU_ID_DONO and "OWNER" or "USER"
					local cor = configuracaoTags[cargo]
					enviarTag(p.Name, cargo, cor)
					aplicarTagVisual(p, cargo, cor)
					atualizarAbas(cargo)
				end
			end
		end)
	end
	
	-- LOOP PRINCIPAL
	task.spawn(function()
		while task.wait(2) do
			pcall(function()
				local resposta = httpRequest({
					Url = SERVIDOR .. "/gettags?gameId=" .. GAME_ID,
					Method = "GET"
				})
				if not resposta or not resposta.Body then return end
				local dados = HttpService:JSONDecode(resposta.Body)
	
				for playerName, info in pairs(dados) do
					for _, p in pairs(Players:GetPlayers()) do
						if p.Name == playerName and p.Character then
							local head = p.Character:FindFirstChild("Head")
							if head then
								local tagAtual = head:FindFirstChild("TagPainel")
								local labelAtual = tagAtual and tagAtual:FindFirstChildOfClass("TextLabel")
								if not labelAtual or labelAtual.Text ~= info.cargo then
									aplicarTagVisual(p, info.cargo, tabelaParaCor(info.cor))
									if cargoAnterior[playerName] and cargoAnterior[playerName] ~= info.cargo then
										notificar("🏷️ Tag Atualizada", p.DisplayName .. " agora é " .. info.cargo, 4)
									end
									cargoAnterior[playerName] = info.cargo
								end
							end
						end
					end
				end
	
				local minhaInfo = dados[localPlayer.Name]
				local meuCargo = minhaInfo and minhaInfo.cargo or "USER"
	
				if cargoAnterior[localPlayer.Name]
					and (cargoAnterior[localPlayer.Name] == "OWNER" or cargoAnterior[localPlayer.Name] == "GERENTE")
					and (meuCargo ~= "OWNER" and meuCargo ~= "GERENTE") then
					notificar("⚠️ Cargo Removido", "Seu cargo foi alterado para " .. meuCargo, 5)
				end
	
				atualizarAbas(meuCargo)
			end)
		end
	end)
	
	-- BUSCA DE JOGADOR NO TEXTBOX
	inputNome:GetPropertyChangedSignal("Text"):Connect(function()
		local digitado = inputNome.Text:lower()
		if digitado == "" then return end
		for _, p in pairs(Players:GetPlayers()) do
			if p.Name:lower():find(digitado) or p.DisplayName:lower():find(digitado) then
				textoDisplay.Text = p.DisplayName
				textoID.Text = "ID: " .. p.UserId
				pcall(function()
					imagemAvatar.Image = Players:GetUserThumbnailAsync(
						p.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
				end)
				break
			end
		end
	end)
	
	-- BOTÕES DE SELEÇÃO DE TAG
	for nome, _ in pairs(configuracaoTags) do
		if tela:FindFirstChild(nome) then
			tela[nome].MouseButton1Click:Connect(function()
				tagSelecionada = nome
			end)
		end
	end
	
	-- BOTÃO ADD
	botaoAdd.MouseButton1Click:Connect(function()
		for _, p in pairs(Players:GetPlayers()) do
			if p.DisplayName == textoDisplay.Text then
				if tagSelecionada ~= "" then
					local cor = configuracaoTags[tagSelecionada]
					enviarTag(p.Name, tagSelecionada, cor)
					aplicarTagVisual(p, tagSelecionada, cor)
					cargoAnterior[p.Name] = tagSelecionada
					notificar("✅ Tag Aplicada", p.DisplayName .. " recebeu " .. tagSelecionada, 4)
					if p == localPlayer then
						atualizarAbas(tagSelecionada)
					end
				end
				break
			end
		end
	end)
	
	-- BOTÃO REMOVE
	botaoRemove.MouseButton1Click:Connect(function()
		for _, p in pairs(Players:GetPlayers()) do
			if p.DisplayName == textoDisplay.Text then
				removerTag(p.Name)
				aplicarTagVisual(p, "USER", configuracaoTags["USER"])
				cargoAnterior[p.Name] = "USER"
				notificar("❌ Tag Removida", p.DisplayName .. " voltou para USER", 4)
				if p == localPlayer then
					atualizarAbas("USER")
				end
				break
			end
		end
	end)
	
	-- CONECTA RESPAWN DE TODOS OS PLAYERS JÁ NA SALA
	for _, p in pairs(Players:GetPlayers()) do
		conectarRespawn(p)
	end
	
	-- CONECTA RESPAWN DE NOVOS PLAYERS
	Players.PlayerAdded:Connect(function(p)
		conectarRespawn(p)
	end)
	
	-- INICIALIZAÇÃO
	task.spawn(function()
		task.wait(2)
		local cargo = localPlayer.UserId == MEU_ID_DONO and "OWNER" or "USER"
	
		-- Verifica se já tem cargo no servidor antes de sobrescrever
		local infoExistente = buscarCargoServidor(localPlayer.Name)
		if infoExistente and localPlayer.UserId ~= MEU_ID_DONO then
			cargo = infoExistente.cargo
			aplicarTagVisual(localPlayer, cargo, tabelaParaCor(infoExistente.cor))
		else
			local cor = configuracaoTags[cargo]
			enviarTag(localPlayer.Name, cargo, cor)
			aplicarTagVisual(localPlayer, cargo, cor)
		end
	
		cargoAnterior[localPlayer.Name] = cargo
		atualizarAbas(cargo)
		notificar("4e20 Panel", "Bem vindo! Seu cargo: " .. cargo, 4)
	
		conectarRespawn(localPlayer)
	end)
end
coroutine.wrap(YCPW_fake_script)()
local function OGOKD_fake_script() -- ScreenGui.GerenciadorAbas 
	local script = Instance.new('LocalScript', ScreenGui)

	local gui = script.Parent
	local corpo = gui:WaitForChild("CorpoPainel") -- Entra no frame principal
	local pastaBotoes = corpo:WaitForChild("ABAS"):WaitForChild("botoes") 
	
	local telas = {
		["butela1"] = corpo:WaitForChild("tela1"),
		["butela2"] = corpo:WaitForChild("tela2"),
		["butela3"] = corpo:WaitForChild("tela3"),
		["butela4"] = corpo:WaitForChild("tela4"),
	}
	
	local function abrirAba(nomeBotao)
		for _, frame in pairs(telas) do
			frame.Visible = false
		end
		if telas[nomeBotao] then
			telas[nomeBotao].Visible = true
		end
	end
	
	for nomeBotao, _ in pairs(telas) do
		local botao = pastaBotoes:FindFirstChild(nomeBotao)
		if botao then
			botao.MouseButton1Click:Connect(function()
				abrirAba(nomeBotao)
			end)
		end
	end
end
coroutine.wrap(OGOKD_fake_script)()
