-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local AvisoTP = Instance.new("TextLabel")
local CorpoPainel = Instance.new("Frame")
local tela1 = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local tela2 = Instance.new("Frame")
local AVATA = Instance.new("ImageLabel")
local VIEW = Instance.new("TextButton")
local TextLabel_4 = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local FOLLOW = Instance.new("TextButton")
local TextLabel_5 = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local FOCUS = Instance.new("TextButton")
local TextLabel_6 = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local username = Instance.new("TextBox")
local coloqueodousuario = Instance.new("TextLabel")
local ID = Instance.new("TextLabel")
local DISPLAYNAME = Instance.new("TextLabel")
local UICorner_5 = Instance.new("UICorner")
local UICorner_6 = Instance.new("UICorner")
local tela3 = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local CLICKTP = Instance.new("TextButton")
local TextLabel_7 = Instance.new("TextLabel")
local UICorner_8 = Instance.new("UICorner")
local FLASHBACK = Instance.new("TextButton")
local TextLabel_8 = Instance.new("TextLabel")
local UICorner_9 = Instance.new("UICorner")
local NOCLIP = Instance.new("TextButton")
local TextLabel_9 = Instance.new("TextLabel")
local UICorner_10 = Instance.new("UICorner")
local ANTAFK = Instance.new("TextButton")
local TextLabel_10 = Instance.new("TextLabel")
local UICorner_11 = Instance.new("UICorner")
local tela4 = Instance.new("Frame")
local ADD = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local HELPE = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local MANAGER = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local MEOW = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")
local OWNER = Instance.new("TextButton")
local UICorner_16 = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local ID_2 = Instance.new("TextLabel")
local DISPLAYNAME_2 = Instance.new("TextLabel")
local ImageLabel_2 = Instance.new("ImageLabel")
local UICorner_17 = Instance.new("UICorner")
local USER = Instance.new("TextButton")
local UICorner_18 = Instance.new("UICorner")
local VIP = Instance.new("TextButton")
local UICorner_19 = Instance.new("UICorner")
local UICorner_20 = Instance.new("UICorner")
local ABAS = Instance.new("Frame")
local botoes = Instance.new("Frame")
local UICorner_21 = Instance.new("UICorner")
local butela5 = Instance.new("TextButton")
local UICorner_22 = Instance.new("UICorner")
local butela4 = Instance.new("TextButton")
local UICorner_23 = Instance.new("UICorner")
local butela3 = Instance.new("TextButton")
local UICorner_24 = Instance.new("UICorner")
local butela2 = Instance.new("TextButton")
local UICorner_25 = Instance.new("UICorner")
local butela1 = Instance.new("TextButton")
local UICorner_26 = Instance.new("UICorner")
local TEXTOS = Instance.new("Frame")
local TextLabel_11 = Instance.new("TextLabel")
local TextLabel_12 = Instance.new("TextLabel")
local TextLabel_13 = Instance.new("TextLabel")
local tela5 = Instance.new("Frame")
local FLING = Instance.new("TextButton")
local TextLabel_14 = Instance.new("TextLabel")
local UICorner_27 = Instance.new("UICorner")
local SPIN = Instance.new("TextButton")
local TextLabel_15 = Instance.new("TextLabel")
local UICorner_28 = Instance.new("UICorner")
local JUMP = Instance.new("TextButton")
local TextLabel_16 = Instance.new("TextLabel")
local UICorner_29 = Instance.new("UICorner")
local INVISIVEL = Instance.new("TextButton")
local TextLabel_17 = Instance.new("TextLabel")
local UICorner_30 = Instance.new("UICorner")
local PINCEL = Instance.new("ImageButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

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

CorpoPainel.Name = "CorpoPainel"
CorpoPainel.Parent = ScreenGui
CorpoPainel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CorpoPainel.BackgroundTransparency = 1.000
CorpoPainel.BorderColor3 = Color3.fromRGB(0, 0, 0)
CorpoPainel.BorderSizePixel = 0
CorpoPainel.Position = UDim2.new(0.294336736, 0, 0.134980991, 0)
CorpoPainel.Size = UDim2.new(0, 505, 0, 284)
CorpoPainel.Visible = false
CorpoPainel.ZIndex = 5

tela1.Name = "tela1"
tela1.Parent = CorpoPainel
tela1.Active = true
tela1.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
tela1.BackgroundTransparency = 0.100
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

UICorner.Parent = tela1

TextLabel_2.Parent = tela1
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(-0.0396039598, 0, 0.40989399, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
TextLabel_2.Font = Enum.Font.Jura
TextLabel_2.TextColor3 = Color3.fromRGB(173, 173, 173)
TextLabel_2.TextSize = 14.000

TextLabel_3.Parent = tela1
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.368811876, 0, 0.646643102, 0)
TextLabel_3.Size = UDim2.new(0, 200, 0, 50)
TextLabel_3.Font = Enum.Font.Jura
TextLabel_3.Text = "JOGADORES ONLINE:"
TextLabel_3.TextColor3 = Color3.fromRGB(173, 173, 173)
TextLabel_3.TextSize = 14.000

tela2.Name = "tela2"
tela2.Parent = CorpoPainel
tela2.Active = true
tela2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
tela2.BackgroundTransparency = 0.100
tela2.BorderColor3 = Color3.fromRGB(255, 255, 255)
tela2.BorderSizePixel = 0
tela2.Position = UDim2.new(0.194437101, 0, -0.00525751244, 0)
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
VIEW.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
VIEW.BorderColor3 = Color3.fromRGB(0, 0, 0)
VIEW.BorderSizePixel = 0
VIEW.Position = UDim2.new(0.0569306947, 0, 0.0845070407, 0)
VIEW.Size = UDim2.new(0, 100, 0, 36)
VIEW.Font = Enum.Font.Unknown
VIEW.Text = "VIEW"
VIEW.TextColor3 = Color3.fromRGB(255, 255, 255)
VIEW.TextSize = 14.000

TextLabel_4.Parent = VIEW
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.899999976, 0, -0.111111112, 0)
TextLabel_4.Size = UDim2.new(0, 70, 0, 46)
TextLabel_4.Font = Enum.Font.Unknown
TextLabel_4.Text = "+"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 25.000
TextLabel_4.TextWrapped = true

UICorner_2.Parent = VIEW

FOLLOW.Name = "FOLLOW"
FOLLOW.Parent = tela2
FOLLOW.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
FOLLOW.BorderColor3 = Color3.fromRGB(0, 0, 0)
FOLLOW.BorderSizePixel = 0
FOLLOW.Position = UDim2.new(0.0569306947, 0, 0.274647892, 0)
FOLLOW.Size = UDim2.new(0, 100, 0, 36)
FOLLOW.Font = Enum.Font.Unknown
FOLLOW.Text = "FOLLOW"
FOLLOW.TextColor3 = Color3.fromRGB(255, 255, 255)
FOLLOW.TextSize = 14.000

TextLabel_5.Parent = FOLLOW
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.899999976, 0, -0.138888896, 0)
TextLabel_5.Size = UDim2.new(0, 70, 0, 46)
TextLabel_5.Font = Enum.Font.Unknown
TextLabel_5.Text = "+"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 25.000
TextLabel_5.TextWrapped = true

UICorner_3.Parent = FOLLOW

FOCUS.Name = "FOCUS"
FOCUS.Parent = tela2
FOCUS.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
FOCUS.BorderColor3 = Color3.fromRGB(0, 0, 0)
FOCUS.BorderSizePixel = 0
FOCUS.Position = UDim2.new(0.0569306947, 0, 0.46126762, 0)
FOCUS.Size = UDim2.new(0, 100, 0, 36)
FOCUS.Font = Enum.Font.Unknown
FOCUS.Text = "FOCUS"
FOCUS.TextColor3 = Color3.fromRGB(255, 255, 255)
FOCUS.TextSize = 14.000

TextLabel_6.Parent = FOCUS
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
TextLabel_6.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_6.TextWrapped = true

UICorner_4.Parent = FOCUS

username.Name = "@username"
username.Parent = tela2
username.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
username.BorderColor3 = Color3.fromRGB(255, 255, 255)
username.BorderSizePixel = 0
username.Position = UDim2.new(0.438118815, 0, 0.556338012, 0)
username.Size = UDim2.new(0, 200, 0, 23)
username.Font = Enum.Font.SourceSans
username.Text = ""
username.TextColor3 = Color3.fromRGB(255, 255, 255)
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

UICorner_5.Parent = username

UICorner_6.Parent = tela2

tela3.Name = "tela3"
tela3.Parent = CorpoPainel
tela3.Active = true
tela3.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
tela3.BackgroundTransparency = 0.100
tela3.BorderColor3 = Color3.fromRGB(255, 255, 255)
tela3.BorderSizePixel = 0
tela3.Position = UDim2.new(0.198397487, 0, -0.00525751244, 0)
tela3.Size = UDim2.new(0, 404, 0, 284)
tela3.Visible = false

UICorner_7.Parent = tela3

CLICKTP.Name = "CLICK - TP"
CLICKTP.Parent = tela3
CLICKTP.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
CLICKTP.BorderColor3 = Color3.fromRGB(0, 0, 0)
CLICKTP.BorderSizePixel = 0
CLICKTP.Position = UDim2.new(0.0569306947, 0, 0.0845070407, 0)
CLICKTP.Size = UDim2.new(0, 100, 0, 36)
CLICKTP.Font = Enum.Font.Unknown
CLICKTP.Text = "CLICK - TP"
CLICKTP.TextColor3 = Color3.fromRGB(255, 255, 255)
CLICKTP.TextSize = 14.000

TextLabel_7.Parent = CLICKTP
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0.899999976, 0, -0.111111112, 0)
TextLabel_7.Size = UDim2.new(0, 70, 0, 46)
TextLabel_7.Font = Enum.Font.Unknown
TextLabel_7.Text = "+"
TextLabel_7.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 25.000
TextLabel_7.TextWrapped = true

UICorner_8.Parent = CLICKTP

FLASHBACK.Name = "FLASHBACK"
FLASHBACK.Parent = tela3
FLASHBACK.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
FLASHBACK.BorderColor3 = Color3.fromRGB(0, 0, 0)
FLASHBACK.BorderSizePixel = 0
FLASHBACK.Position = UDim2.new(0.0569306947, 0, 0.46126762, 0)
FLASHBACK.Size = UDim2.new(0, 100, 0, 36)
FLASHBACK.Font = Enum.Font.Unknown
FLASHBACK.Text = "FLASHBACK"
FLASHBACK.TextColor3 = Color3.fromRGB(255, 255, 255)
FLASHBACK.TextSize = 14.000

TextLabel_8.Parent = FLASHBACK
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

UICorner_9.Parent = FLASHBACK

NOCLIP.Name = "NOCLIP"
NOCLIP.Parent = tela3
NOCLIP.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
NOCLIP.BorderColor3 = Color3.fromRGB(0, 0, 0)
NOCLIP.BorderSizePixel = 0
NOCLIP.Position = UDim2.new(0.0569306947, 0, 0.274647892, 0)
NOCLIP.Size = UDim2.new(0, 100, 0, 36)
NOCLIP.Font = Enum.Font.Unknown
NOCLIP.Text = "NOCLIP"
NOCLIP.TextColor3 = Color3.fromRGB(255, 255, 255)
NOCLIP.TextSize = 14.000

TextLabel_9.Parent = NOCLIP
TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BackgroundTransparency = 1.000
TextLabel_9.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BorderSizePixel = 0
TextLabel_9.Position = UDim2.new(0.899999976, 0, -0.138888896, 0)
TextLabel_9.Size = UDim2.new(0, 70, 0, 46)
TextLabel_9.Font = Enum.Font.Unknown
TextLabel_9.Text = "+"
TextLabel_9.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_9.TextScaled = true
TextLabel_9.TextSize = 25.000
TextLabel_9.TextWrapped = true

UICorner_10.Parent = NOCLIP

ANTAFK.Name = "ANT-AFK"
ANTAFK.Parent = tela3
ANTAFK.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
ANTAFK.BorderColor3 = Color3.fromRGB(0, 0, 0)
ANTAFK.BorderSizePixel = 0
ANTAFK.Position = UDim2.new(0.0569306947, 0, 0.633802831, 0)
ANTAFK.Size = UDim2.new(0, 100, 0, 36)
ANTAFK.Font = Enum.Font.Unknown
ANTAFK.Text = "ANT-AFK"
ANTAFK.TextColor3 = Color3.fromRGB(255, 255, 255)
ANTAFK.TextSize = 14.000

TextLabel_10.Parent = ANTAFK
TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BackgroundTransparency = 1.000
TextLabel_10.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BorderSizePixel = 0
TextLabel_10.Position = UDim2.new(0.899999976, 0, -0.138888896, 0)
TextLabel_10.Size = UDim2.new(0, 70, 0, 46)
TextLabel_10.Font = Enum.Font.Unknown
TextLabel_10.Text = "+"
TextLabel_10.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_10.TextScaled = true
TextLabel_10.TextSize = 25.000
TextLabel_10.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_10.TextWrapped = true

UICorner_11.Parent = ANTAFK

tela4.Name = "tela4"
tela4.Parent = CorpoPainel
tela4.Active = true
tela4.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
tela4.BackgroundTransparency = 0.100
tela4.BorderColor3 = Color3.fromRGB(255, 255, 255)
tela4.BorderSizePixel = 0
tela4.Position = UDim2.new(0.198397487, 0, -0.00525751244, 0)
tela4.Size = UDim2.new(0, 404, 0, 284)
tela4.Visible = false

ADD.Name = "ADD"
ADD.Parent = tela4
ADD.BackgroundColor3 = Color3.fromRGB(91, 255, 3)
ADD.BorderColor3 = Color3.fromRGB(0, 0, 0)
ADD.BorderSizePixel = 0
ADD.Position = UDim2.new(0.566831708, 0, 0.517605662, 0)
ADD.Size = UDim2.new(0, 86, 0, 36)
ADD.Font = Enum.Font.Unknown
ADD.Text = "ADD"
ADD.TextColor3 = Color3.fromRGB(30, 30, 30)
ADD.TextSize = 14.000

UICorner_12.Parent = ADD

HELPE.Name = "HELPE"
HELPE.Parent = tela4
HELPE.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
HELPE.BorderColor3 = Color3.fromRGB(0, 0, 0)
HELPE.BorderSizePixel = 0
HELPE.Position = UDim2.new(0.0569306947, 0, 0.517605722, 0)
HELPE.Size = UDim2.new(0, 100, 0, 36)
HELPE.Font = Enum.Font.Unknown
HELPE.Text = "HELPE"
HELPE.TextColor3 = Color3.fromRGB(30, 30, 30)
HELPE.TextSize = 14.000

UICorner_13.Parent = HELPE

MANAGER.Name = "MANAGER"
MANAGER.Parent = tela4
MANAGER.BackgroundColor3 = Color3.fromRGB(85, 0, 255)
MANAGER.BorderColor3 = Color3.fromRGB(0, 0, 0)
MANAGER.BorderSizePixel = 0
MANAGER.Position = UDim2.new(0.0569306947, 0, 0.362676114, 0)
MANAGER.Size = UDim2.new(0, 100, 0, 36)
MANAGER.Font = Enum.Font.Unknown
MANAGER.Text = "MANAGER"
MANAGER.TextColor3 = Color3.fromRGB(255, 255, 255)
MANAGER.TextSize = 14.000

UICorner_14.Parent = MANAGER

MEOW.Name = "MEOW"
MEOW.Parent = tela4
MEOW.BackgroundColor3 = Color3.fromRGB(255, 85, 255)
MEOW.BorderColor3 = Color3.fromRGB(0, 0, 0)
MEOW.BorderSizePixel = 0
MEOW.Position = UDim2.new(0.0569306947, 0, 0.197183102, 0)
MEOW.Size = UDim2.new(0, 100, 0, 36)
MEOW.Font = Enum.Font.Unknown
MEOW.Text = "MEOW"
MEOW.TextColor3 = Color3.fromRGB(255, 255, 255)
MEOW.TextSize = 14.000

UICorner_15.Parent = MEOW

OWNER.Name = "OWNER"
OWNER.Parent = tela4
OWNER.BackgroundColor3 = Color3.fromRGB(98, 0, 0)
OWNER.BorderColor3 = Color3.fromRGB(0, 0, 0)
OWNER.BorderSizePixel = 0
OWNER.Position = UDim2.new(0.0569306947, 0, 0.0457746461, 0)
OWNER.Size = UDim2.new(0, 100, 0, 36)
OWNER.Font = Enum.Font.Unknown
OWNER.Text = "OWNER"
OWNER.TextColor3 = Color3.fromRGB(255, 255, 255)
OWNER.TextSize = 14.000

UICorner_16.Parent = OWNER

TextBox.Parent = tela4
TextBox.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
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

UICorner_17.Parent = TextBox

USER.Name = "USER"
USER.Parent = tela4
USER.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
USER.BorderColor3 = Color3.fromRGB(255, 255, 255)
USER.BorderSizePixel = 0
USER.Position = UDim2.new(0.0569306947, 0, 0.823943794, 0)
USER.Size = UDim2.new(0, 100, 0, 36)
USER.Font = Enum.Font.Unknown
USER.Text = "USER"
USER.TextColor3 = Color3.fromRGB(0, 0, 0)
USER.TextSize = 14.000

UICorner_18.Parent = USER

VIP.Name = "VIP"
VIP.Parent = tela4
VIP.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
VIP.BorderColor3 = Color3.fromRGB(255, 255, 255)
VIP.BorderSizePixel = 0
VIP.Position = UDim2.new(0.0569306947, 0, 0.6725353, 0)
VIP.Size = UDim2.new(0, 100, 0, 36)
VIP.Font = Enum.Font.Unknown
VIP.Text = "VIP"
VIP.TextColor3 = Color3.fromRGB(0, 0, 0)
VIP.TextSize = 14.000

UICorner_19.Parent = VIP

UICorner_20.Parent = tela4

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
botoes.BackgroundTransparency = 0.100
botoes.BorderColor3 = Color3.fromRGB(0, 0, 0)
botoes.BorderSizePixel = 0
botoes.Position = UDim2.new(-1.45186985, 0, -0.392296761, 0)
botoes.Size = UDim2.new(0, 101, 0, 284)

UICorner_21.Parent = botoes

butela5.Name = "butela5"
butela5.Parent = botoes
butela5.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
butela5.BorderColor3 = Color3.fromRGB(0, 0, 0)
butela5.BorderSizePixel = 0
butela5.Position = UDim2.new(0, 0, 0.64788729, 0)
butela5.Size = UDim2.new(0, 100, 0, 36)
butela5.Font = Enum.Font.Unknown
butela5.Text = "VIP"
butela5.TextColor3 = Color3.fromRGB(255, 255, 255)
butela5.TextSize = 14.000

UICorner_22.Parent = butela5

butela4.Name = "butela4"
butela4.Parent = botoes
butela4.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
butela4.BorderColor3 = Color3.fromRGB(0, 0, 0)
butela4.BorderSizePixel = 0
butela4.Position = UDim2.new(0.00990098994, 0, 0.799295723, 0)
butela4.Size = UDim2.new(0, 100, 0, 35)
butela4.Font = Enum.Font.Unknown
butela4.Text = "ADM"
butela4.TextColor3 = Color3.fromRGB(255, 255, 255)
butela4.TextSize = 14.000

UICorner_23.Parent = butela4

butela3.Name = "butela3"
butela3.Parent = botoes
butela3.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
butela3.BorderColor3 = Color3.fromRGB(0, 0, 0)
butela3.BorderSizePixel = 0
butela3.Position = UDim2.new(0.00990098994, 0, 0.5, 0)
butela3.Size = UDim2.new(0, 100, 0, 35)
butela3.Font = Enum.Font.Unknown
butela3.Text = "MISC"
butela3.TextColor3 = Color3.fromRGB(255, 255, 255)
butela3.TextSize = 14.000

UICorner_24.Parent = butela3

butela2.Name = "butela2"
butela2.Parent = botoes
butela2.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
butela2.BorderColor3 = Color3.fromRGB(0, 0, 0)
butela2.BorderSizePixel = 0
butela2.Position = UDim2.new(0, 0, 0.348591536, 0)
butela2.Size = UDim2.new(0, 100, 0, 35)
butela2.Font = Enum.Font.Unknown
butela2.Text = "TARGET"
butela2.TextColor3 = Color3.fromRGB(255, 255, 255)
butela2.TextSize = 14.000

UICorner_25.Parent = butela2

butela1.Name = "butela1"
butela1.Parent = botoes
butela1.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
butela1.BorderColor3 = Color3.fromRGB(36, 36, 36)
butela1.BorderSizePixel = 0
butela1.Position = UDim2.new(0.00990098994, 0, 0.197183102, 0)
butela1.Size = UDim2.new(0, 100, 0, 35)
butela1.Font = Enum.Font.Unknown
butela1.Text = "HOME"
butela1.TextColor3 = Color3.fromRGB(255, 255, 255)
butela1.TextSize = 14.000

UICorner_26.Parent = butela1

TEXTOS.Name = "TEXTOS"
TEXTOS.Parent = CorpoPainel
TEXTOS.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
TEXTOS.BackgroundTransparency = 1.000
TEXTOS.BorderColor3 = Color3.fromRGB(0, 0, 0)
TEXTOS.BorderSizePixel = 0
TEXTOS.Position = UDim2.new(0.36493966, 0, 0.208588958, 0)
TEXTOS.Size = UDim2.new(0, 404, 0, 284)

TextLabel_11.Parent = TEXTOS
TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.BackgroundTransparency = 1.000
TextLabel_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_11.BorderSizePixel = 0
TextLabel_11.Position = UDim2.new(0.485148519, 0, 0.672535241, 0)
TextLabel_11.Size = UDim2.new(0, 200, 0, 33)
TextLabel_11.Font = Enum.Font.Unknown
TextLabel_11.Text = "v1.1"
TextLabel_11.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.TextSize = 17.000
TextLabel_11.TextWrapped = true

TextLabel_12.Parent = TEXTOS
TextLabel_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.BackgroundTransparency = 1.000
TextLabel_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_12.BorderSizePixel = 0
TextLabel_12.Position = UDim2.new(-0.584158421, 0, -0.158450708, 0)
TextLabel_12.Size = UDim2.new(0, 200, 0, 33)
TextLabel_12.Font = Enum.Font.Unknown
TextLabel_12.Text = "Panel"
TextLabel_12.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.TextSize = 17.000
TextLabel_12.TextWrapped = true

TextLabel_13.Parent = TEXTOS
TextLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.BackgroundTransparency = 1.000
TextLabel_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_13.BorderSizePixel = 0
TextLabel_13.Position = UDim2.new(-0.581683159, 0, -0.221830979, 0)
TextLabel_13.Size = UDim2.new(0, 200, 0, 33)
TextLabel_13.Font = Enum.Font.Unknown
TextLabel_13.Text = "4e20"
TextLabel_13.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.TextSize = 25.000
TextLabel_13.TextWrapped = true

tela5.Name = "tela5"
tela5.Parent = CorpoPainel
tela5.Active = true
tela5.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
tela5.BackgroundTransparency = 0.100
tela5.BorderColor3 = Color3.fromRGB(255, 255, 255)
tela5.BorderSizePixel = 0
tela5.Position = UDim2.new(0.198397487, 0, -0.00525751244, 0)
tela5.Size = UDim2.new(0, 404, 0, 284)

FLING.Name = "FLING"
FLING.Parent = tela5
FLING.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
FLING.BorderColor3 = Color3.fromRGB(0, 0, 0)
FLING.BorderSizePixel = 0
FLING.Position = UDim2.new(0.0569306947, 0, 0.274647892, 0)
FLING.Size = UDim2.new(0, 100, 0, 36)
FLING.Font = Enum.Font.Unknown
FLING.Text = "FLING"
FLING.TextColor3 = Color3.fromRGB(255, 255, 255)
FLING.TextSize = 14.000

TextLabel_14.Parent = FLING
TextLabel_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.BackgroundTransparency = 1.000
TextLabel_14.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.BorderSizePixel = 0
TextLabel_14.Position = UDim2.new(0.899999976, 0, -0.138888896, 0)
TextLabel_14.Size = UDim2.new(0, 70, 0, 46)
TextLabel_14.Font = Enum.Font.Unknown
TextLabel_14.Text = "+"
TextLabel_14.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_14.TextScaled = true
TextLabel_14.TextSize = 25.000
TextLabel_14.TextWrapped = true

UICorner_27.Parent = FLING

SPIN.Name = "SPIN"
SPIN.Parent = tela5
SPIN.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
SPIN.BorderColor3 = Color3.fromRGB(0, 0, 0)
SPIN.BorderSizePixel = 0
SPIN.Position = UDim2.new(0.0569306947, 0, 0.46126762, 0)
SPIN.Size = UDim2.new(0, 100, 0, 36)
SPIN.Font = Enum.Font.Unknown
SPIN.Text = "SPIN"
SPIN.TextColor3 = Color3.fromRGB(255, 255, 255)
SPIN.TextSize = 14.000

TextLabel_15.Parent = SPIN
TextLabel_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_15.BackgroundTransparency = 1.000
TextLabel_15.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_15.BorderSizePixel = 0
TextLabel_15.Position = UDim2.new(0.899999976, 0, -0.138888896, 0)
TextLabel_15.Size = UDim2.new(0, 70, 0, 46)
TextLabel_15.Font = Enum.Font.Unknown
TextLabel_15.Text = "+"
TextLabel_15.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_15.TextScaled = true
TextLabel_15.TextSize = 25.000
TextLabel_15.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_15.TextWrapped = true

UICorner_28.Parent = SPIN

JUMP.Name = "JUMP"
JUMP.Parent = tela5
JUMP.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
JUMP.BorderColor3 = Color3.fromRGB(0, 0, 0)
JUMP.BorderSizePixel = 0
JUMP.Position = UDim2.new(0.0569306947, 0, 0.0845070407, 0)
JUMP.Size = UDim2.new(0, 100, 0, 36)
JUMP.Font = Enum.Font.Unknown
JUMP.Text = "JUMP"
JUMP.TextColor3 = Color3.fromRGB(255, 255, 255)
JUMP.TextSize = 14.000

TextLabel_16.Parent = JUMP
TextLabel_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_16.BackgroundTransparency = 1.000
TextLabel_16.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_16.BorderSizePixel = 0
TextLabel_16.Position = UDim2.new(0.899999976, 0, -0.111111112, 0)
TextLabel_16.Size = UDim2.new(0, 70, 0, 46)
TextLabel_16.Font = Enum.Font.Unknown
TextLabel_16.Text = "+"
TextLabel_16.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_16.TextScaled = true
TextLabel_16.TextSize = 25.000
TextLabel_16.TextWrapped = true

UICorner_29.Parent = JUMP

INVISIVEL.Name = "INVISIVEL"
INVISIVEL.Parent = tela5
INVISIVEL.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
INVISIVEL.BorderColor3 = Color3.fromRGB(0, 0, 0)
INVISIVEL.BorderSizePixel = 0
INVISIVEL.Position = UDim2.new(0.0569306947, 0, 0.633802831, 0)
INVISIVEL.Size = UDim2.new(0, 100, 0, 36)
INVISIVEL.Font = Enum.Font.Unknown
INVISIVEL.Text = "Invisibility"
INVISIVEL.TextColor3 = Color3.fromRGB(255, 255, 255)
INVISIVEL.TextSize = 14.000

TextLabel_17.Parent = INVISIVEL
TextLabel_17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_17.BackgroundTransparency = 1.000
TextLabel_17.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_17.BorderSizePixel = 0
TextLabel_17.Position = UDim2.new(0.899999976, 0, -0.138888896, 0)
TextLabel_17.Size = UDim2.new(0, 70, 0, 46)
TextLabel_17.Font = Enum.Font.Unknown
TextLabel_17.Text = "+"
TextLabel_17.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_17.TextScaled = true
TextLabel_17.TextSize = 25.000
TextLabel_17.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_17.TextWrapped = true

UICorner_30.Parent = INVISIVEL

PINCEL.Name = "PINCEL"
PINCEL.Parent = tela5
PINCEL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PINCEL.BackgroundTransparency = 0.100
PINCEL.BorderColor3 = Color3.fromRGB(0, 0, 0)
PINCEL.BorderSizePixel = 0
PINCEL.Position = UDim2.new(0.784653485, 0, 0.739436626, 0)
PINCEL.Size = UDim2.new(0, 63, 0, 57)
PINCEL.Image = "rbxassetid://85851959324603"

-- Scripts:

local function XBDYUCL_fake_script() -- ScreenGui.GerenciadorAbas 
	local script = Instance.new('LocalScript', ScreenGui)

	local gui = script.Parent
	local corpo = gui:WaitForChild("CorpoPainel") -- Entra no frame principal
	local pastaBotoes = corpo:WaitForChild("ABAS"):WaitForChild("botoes") 
	
	local telas = {
		["butela1"] = corpo:WaitForChild("tela1"),
		["butela2"] = corpo:WaitForChild("tela2"),
		["butela3"] = corpo:WaitForChild("tela3"),
		["butela4"] = corpo:WaitForChild("tela4"),
		["butela5"] = corpo:WaitForChild("tela5"),
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
coroutine.wrap(XBDYUCL_fake_script)()
local function EGCFDD_fake_script() -- ScreenGui.LocalScript 
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
coroutine.wrap(EGCFDD_fake_script)()
local function IHKSW_fake_script() -- tela1.CarregarHome 
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
coroutine.wrap(IHKSW_fake_script)()
local function DCMRL_fake_script() -- TextLabel_2.LocalScript 
	local script = Instance.new('LocalScript', TextLabel_2)

	-- [[ MONITOR DE LATÊNCIA REAL-TIME - 4E20 PANEL ]] --
	local label = script.Parent
	local stats = game:GetService("Stats")
	
	-- Garante que o texto comece limpo
	label.Text = "BUSCANDO..."
	
	-- Tenta encontrar o item de Ping especificamente
	local networkStats = stats:WaitForChild("Network")
	local serverStats = networkStats:WaitForChild("ServerStatsItem")
	local dataPing = serverStats:WaitForChild("Data Ping")
	
	while task.wait(0.5) do -- Atualiza mais rápido (2x por segundo)
		local pingValue = math.floor(dataPing:GetValue())
	
		-- Se o valor for 0, ele ainda está conectando
		if pingValue <= 0 then
			label.Text = "ESTABILIZANDO..."
			label.TextColor3 = Color3.fromRGB(255, 255, 0) -- Amarelo
		else
			label.Text = "PING: " .. pingValue .. "ms"
	
			-- Cores dinâmicas
			if pingValue > 150 then
				label.TextColor3 = Color3.fromRGB(255, 0, 0)   -- Vermelho (Lag)
			else
				label.TextColor3 = Color3.fromRGB(0, 255, 127) -- Verde (Liso)
			end
		end
	end
end
coroutine.wrap(DCMRL_fake_script)()
local function RXLK_fake_script() -- TextLabel_3.LocalScript 
	local script = Instance.new('LocalScript', TextLabel_3)

	-- [[ PLAYER COUNTER - 4E20 PANEL ]] --
	local label = script.Parent
	local Players = game:GetService("Players")
	
	-- Configuração visual (Cyber-Tech)
	label.TextColor3 = Color3.fromRGB(0, 170, 255) -- Azul Neon
	label.Font = Enum.Font.GothamBold
	
	local function atualizarContagem()
		local totalJogadores = #Players:GetPlayers()
		local maxJogadores = game.ServerAdmins -- Ou use um número fixo se preferir
	
		-- Se o servidor tiver limite definido, mostra (Atual/Max), senão mostra apenas o total
		label.Text = "PLAYERS: " .. totalJogadores
	end
	
	-- Atualiza quando alguém entra ou sai
	Players.PlayerAdded:Connect(atualizarContagem)
	Players.PlayerRemoving:Connect(atualizarContagem)
	
	-- Atualização inicial
	atualizarContagem()
end
coroutine.wrap(RXLK_fake_script)()
local function XXITKM_fake_script() -- tela2.NOMES 
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
coroutine.wrap(XXITKM_fake_script)()
local function ACIKX_fake_script() -- tela2.VIEW 
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
coroutine.wrap(ACIKX_fake_script)()
local function TAYQK_fake_script() -- CLICKTP.LocalScript 
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
coroutine.wrap(TAYQK_fake_script)()
local function RYBKH_fake_script() -- FLASHBACK.LocalScript 
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
coroutine.wrap(RYBKH_fake_script)()
local function AEFLIME_fake_script() -- NOCLIP.LocalScript 
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
coroutine.wrap(AEFLIME_fake_script)()
local function KZKTO_fake_script() -- ANTAFK.LocalScript 
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
coroutine.wrap(KZKTO_fake_script)()
local function UGKKAC_fake_script() -- tela4.LocalScript 
	local script = Instance.new('LocalScript', tela4)

	local Players = game:GetService("Players")
	local TweenService = game:GetService("TweenService")
	local HttpService = game:GetService("HttpService")
	local TextService = game:GetService("TextService")
	local localPlayer = Players.LocalPlayer
	
	-- [[ 1. LIMPEZA ]]
	local function limparDuplicatas()
		local pGui = localPlayer:WaitForChild("PlayerGui")
		for _, obj in pairs(pGui:GetChildren()) do
			if obj.Name == "NotificacoesPainel" and obj:IsA("ScreenGui") then
				obj:Destroy()
			end
		end
	end
	limparDuplicatas()
	
	-- [[ 2. CONFIGURAÇÕES ]]
	local tela = script.Parent 
	local inputNome = tela:WaitForChild("TextBox")
	local botaoAdd = tela:WaitForChild("ADD")
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
	local GAME_ID = "4E20_GLOBAL" 
	
	local configuracaoTags = {
		["OWNER"]   = Color3.fromRGB(150, 0, 0),
		["MEOW"]    = Color3.fromRGB(255, 100, 255),
		["MANAGER"] = Color3.fromRGB(85, 0, 255),
		["HELPE"]   = Color3.fromRGB(255, 255, 0),
		["VIP"]     = Color3.fromRGB(0, 255, 0),
		["USER"]    = Color3.fromRGB(255, 255, 255)
	}
	
	-- [[ 3. NOTIFICAÇÕES ]]
	local screenGui = Instance.new("ScreenGui", localPlayer.PlayerGui)
	screenGui.Name = "NotificacoesPainel"
	screenGui.ResetOnSpawn = false
	
	local function notificar(titulo, texto, duracao, tipo, cargo)
		duracao = duracao or 4
		for _, f in pairs(screenGui:GetChildren()) do
			if f:IsA("Frame") then
				TweenService:Create(f, TweenInfo.new(0.3), {Position = UDim2.new(1, -300, 1, f.Position.Y.Offset - 85)}):Play()
			end
		end
	
		local corCargo = configuracaoTags[cargo] or Color3.fromRGB(150, 0, 0)
		local frame = Instance.new("Frame", screenGui)
		frame.Size = UDim2.new(0, 280, 0, 75)
		frame.Position = UDim2.new(1, 10, 1, -95)
		frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		frame.BorderSizePixel = 0
		frame.AnchorPoint = Vector2.new(0, 1)
		Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)
	
		local borda = Instance.new("Frame", frame)
		borda.Size = UDim2.new(0, 5, 1, 0)
		borda.BackgroundColor3 = corCargo
		borda.BorderSizePixel = 0
		Instance.new("UICorner", borda).CornerRadius = UDim.new(0, 8)
	
		local labelTitulo = Instance.new("TextLabel", frame)
		labelTitulo.Size = UDim2.new(1, -60, 0, 30)
		labelTitulo.Position = UDim2.new(0, 20, 0, 10)
		labelTitulo.BackgroundTransparency = 1
		labelTitulo.Text = titulo:upper()
		labelTitulo.TextColor3 = Color3.fromRGB(255, 255, 255)
		labelTitulo.Font = Enum.Font.GothamBold
		labelTitulo.TextSize = 14
		labelTitulo.TextXAlignment = Enum.TextXAlignment.Left
	
		local labelTexto = Instance.new("TextLabel", frame)
		labelTexto.Size = UDim2.new(1, -60, 0, 25)
		labelTexto.Position = UDim2.new(0, 20, 0, 35)
		labelTexto.BackgroundTransparency = 1
		labelTexto.Text = texto
		labelTexto.TextColor3 = Color3.fromRGB(200, 200, 200)
		labelTexto.Font = Enum.Font.Gotham
		labelTexto.TextSize = 12
		labelTexto.TextXAlignment = Enum.TextXAlignment.Left
	
		TweenService:Create(frame, TweenInfo.new(0.4, Enum.EasingStyle.Back), {Position = UDim2.new(1, -300, 1, -95)}):Play()
		task.delay(duracao, function()
			if frame and frame.Parent then
				TweenService:Create(frame, TweenInfo.new(0.3), {Position = UDim2.new(1, 10, 1, frame.Position.Y.Offset)}):Play()
				task.wait(0.3)
				frame:Destroy()
			end
		end)
	end
	
	-- [[ 4. FUNÇÕES DE REDE ]]
	local function httpRequest(dados)
		local r = (syn and syn.request) or (http and http.request) or request or HttpRequest or (fluxus and fluxus.request)
		local ok, res = pcall(function() return r(dados) end)
		return ok and res or nil
	end
	
	local function corParaTabela(cor) return {math.floor(cor.R*255), math.floor(cor.G*255), math.floor(cor.B*255)} end
	local function tabelaParaCor(t) return Color3.fromRGB(t[1], t[2], t[3]) end
	
	local function enviarTag(playerName, cargo, cor)
		pcall(function()
			httpRequest({
				Url = SERVIDOR .. "/settag",
				Method = "POST",
				Headers = {["Content-Type"] = "application/json"},
				Body = HttpService:JSONEncode({player = playerName, cargo = cargo, cor = corParaTabela(cor), gameId = GAME_ID})
			})
		end)
	end
	
	local function buscarCargoServidor(pName)
		local res = httpRequest({Url = SERVIDOR .. "/gettags?gameId=" .. GAME_ID, Method = "GET"})
		return res and res.Body and HttpService:JSONDecode(res.Body)[pName] or nil
	end
	
	-- [[ 5. CONTROLE DE ABAS ]]
	local function atualizarAbas(cargo)
		local temAcesso = (localPlayer.UserId == MEU_ID_DONO) or (cargo == "OWNER") or (cargo == "MANAGER")
		for _, abaBtn in pairs(abasRestritas) do
			if abaBtn then abaBtn.Visible = temAcesso end
		end
		if not temAcesso and tela.Visible then tela.Visible = false end
	end
	
	-- [[ 6. TAGS VISUAIS ]]
	local function aplicarTagVisual(pAlvo, texto, cor)
		if pAlvo.Character and pAlvo.Character:FindFirstChild("Head") then
			for _, o in pairs(pAlvo.Character.Head:GetChildren()) do if o.Name == "TagPainel" then o:Destroy() end end
	
			local bill = Instance.new("BillboardGui", pAlvo.Character.Head)
			bill.Name = "TagPainel"
			bill.StudsOffset = Vector3.new(0, 2.4, 0) 
			bill.AlwaysOnTop = true
			bill.MaxDistance = 100 
	
			if texto == "USER" then
				bill.Size = UDim2.new(2.2, 0, 0.7, 0)
			else
				bill.Size = UDim2.new(3.8, 0, 1.1, 0)
			end
	
			local label = Instance.new("TextLabel", bill)
			label.Size = UDim2.new(1, 0, 1, 0)
			label.BackgroundTransparency = 1
			label.TextColor3 = cor
			label.Font = Enum.Font.GothamBold
			label.RichText = true
			label.TextScaled = true 
			label.Text = "<b>" .. texto .. "</b>"
	
			if texto == "OWNER" or texto == "MANAGER" or texto == "MEOW" then
				label.TextStrokeTransparency = 1
				local grad = Instance.new("UIGradient", label)
				grad.Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, cor),
					ColorSequenceKeypoint.new(0.45, cor),
					ColorSequenceKeypoint.new(0.5, Color3.new(1, 1, 1)),
					ColorSequenceKeypoint.new(0.55, cor),
					ColorSequenceKeypoint.new(1, cor)
				})
				task.spawn(function()
					while label and label.Parent do
						grad.Offset = Vector2.new(-1, 0)
						TweenService:Create(grad, TweenInfo.new(3.5, Enum.EasingStyle.Linear), {Offset = Vector2.new(1, 0)}):Play()
						task.wait(3.6)
					end
				end)
			else
				label.TextStrokeTransparency = 0.3
				label.TextStrokeColor3 = Color3.new(0, 0, 0)
			end
		end
	end
	
	-- [[ 7. LOOP E INTERAÇÃO ]]
	inputNome:GetPropertyChangedSignal("Text"):Connect(function()
		local d = inputNome.Text:lower()
		if d == "" then return end
		for _, p in pairs(Players:GetPlayers()) do
			if p.Name:lower():find(d) or p.DisplayName:lower():find(d) then
				textoDisplay.Text = p.DisplayName
				textoID.Text = "ID: " .. p.UserId
				pcall(function() imagemAvatar.Image = Players:GetUserThumbnailAsync(p.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150) end)
				break
			end
		end
	end)
	
	local bSel = nil
	for n, _ in pairs(configuracaoTags) do
		if tela:FindFirstChild(n) then
			tela[n].MouseButton1Click:Connect(function()
				if bSel then bSel.BorderSizePixel = 0 end
				tagSelecionada = n
				bSel = tela[n]
				bSel.BorderSizePixel = 3
				bSel.BorderColor3 = Color3.new(1, 1, 1)
			end)
		end
	end
	
	botaoAdd.MouseButton1Click:Connect(function()
		if tagSelecionada == "" then return end
		for _, p in pairs(Players:GetPlayers()) do
			if p.DisplayName == textoDisplay.Text then
				local cor = configuracaoTags[tagSelecionada]
				enviarTag(p.Name, tagSelecionada, cor)
				aplicarTagVisual(p, tagSelecionada, cor)
				notificar("SISTEMA", p.DisplayName .. " ATUALIZADO PARA " .. tagSelecionada, 4, "update", tagSelecionada)
				if p == localPlayer then atualizarAbas(tagSelecionada) end
				break
			end
		end
	end)
	
	-- [[ 8. LÓGICA DE EXECUÇÃO RESTRITA (CORREÇÃO) ]]
	-- Este loop só processa quem ATIVAMENTE tem o painel ou foi atualizado via painel
	task.spawn(function()
		while task.wait(4) do
			pcall(function()
				local res = httpRequest({Url = SERVIDOR .. "/gettags?gameId=" .. GAME_ID, Method = "GET"})
				if not res then return end
				local dados = HttpService:JSONDecode(res.Body)
	
				for pName, info in pairs(dados) do
					local p = Players:FindFirstChild(pName)
					-- A tag só é aplicada se o jogador for encontrado e estiver no banco de dados ativo do painel
					if p and p.Character then
						local tag = p.Character.Head:FindFirstChild("TagPainel")
						local lbl = tag and tag:FindFirstChildOfClass("TextLabel")
						if not lbl or lbl.Text ~= "<b>" .. info.cargo .. "</b>" then
							aplicarTagVisual(p, info.cargo, tabelaParaCor(info.cor))
						end
					end
				end
				local minhaInfo = dados[localPlayer.Name]
				atualizarAbas(minhaInfo and minhaInfo.cargo or "USER")
			end)
		end
	end)
	
	-- Inicialização apenas para quem EXECUTOU
	task.wait(0.5)
	local inicial = buscarCargoServidor(localPlayer.Name)
	local cargoInit = (localPlayer.UserId == MEU_ID_DONO and "OWNER") or (inicial and inicial.cargo) or "USER"
	
	-- Aplica a própria tag ao executar, confirmando a presença no painel
	aplicarTagVisual(localPlayer, cargoInit, configuracaoTags[cargoInit])
	enviarTag(localPlayer.Name, cargoInit, configuracaoTags[cargoInit])
	atualizarAbas(cargoInit)
	notificar("4E20 PANEL", "PAINEL ATIVO: TAGS APENAS PARA EXECUTORES!", 5, "welcome", cargoInit)
end
coroutine.wrap(UGKKAC_fake_script)()
local function TXCDLRA_fake_script() -- FLING.LocalScript 
	local script = Instance.new('LocalScript', FLING)

	local RunService = game:GetService("RunService")
	local UserInputService = game:GetService("UserInputService")
	local Players = game:GetService("Players")
	local TweenService = game:GetService("TweenService")
	local player = Players.LocalPlayer
	local botao = script.Parent
	local iconeStatus = botao:WaitForChild("TextLabel")
	
	local permissaoPainel = false
	local flingAtivo = false
	local bAV = nil
	local conexaoNoclip = nil
	local conexaoFling = nil
	
	-- NOTIFICAÇÃO BONITA
	local screenGui = Instance.new("ScreenGui", player.PlayerGui)
	screenGui.Name = "NotifFling"
	screenGui.ResetOnSpawn = false
	
	local function notificar(titulo, texto, cor)
		cor = cor or Color3.fromRGB(150, 0, 0)
		local frame = Instance.new("Frame", screenGui)
		frame.Size = UDim2.new(0, 260, 0, 60)
		frame.Position = UDim2.new(0, 20, 1, 10)
		frame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
		frame.BackgroundTransparency = 0.05
		frame.BorderSizePixel = 0
		frame.AnchorPoint = Vector2.new(0, 1)
		frame.ZIndex = 10
		Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)
	
		local borda = Instance.new("Frame", frame)
		borda.Size = UDim2.new(0, 4, 1, 0)
		borda.BackgroundColor3 = cor
		borda.BorderSizePixel = 0
		borda.ZIndex = 11
		Instance.new("UICorner", borda).CornerRadius = UDim.new(0, 8)
	
		local labelT = Instance.new("TextLabel", frame)
		labelT.Size = UDim2.new(1, -16, 0, 24)
		labelT.Position = UDim2.new(0, 14, 0, 6)
		labelT.BackgroundTransparency = 1
		labelT.Text = titulo
		labelT.TextColor3 = Color3.fromRGB(255, 255, 255)
		labelT.Font = Enum.Font.GothamBold
		labelT.TextSize = 13
		labelT.TextXAlignment = Enum.TextXAlignment.Left
		labelT.ZIndex = 11
	
		local labelS = Instance.new("TextLabel", frame)
		labelS.Size = UDim2.new(1, -16, 0, 18)
		labelS.Position = UDim2.new(0, 14, 0, 30)
		labelS.BackgroundTransparency = 1
		labelS.Text = texto
		labelS.TextColor3 = Color3.fromRGB(170, 170, 170)
		labelS.Font = Enum.Font.Gotham
		labelS.TextSize = 11
		labelS.TextXAlignment = Enum.TextXAlignment.Left
		labelS.ZIndex = 11
	
		TweenService:Create(frame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
			Position = UDim2.new(0, 20, 1, -20)
		}):Play()
	
		task.delay(3.5, function()
			TweenService:Create(frame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
				Position = UDim2.new(0, 20, 1, 10)
			}):Play()
			task.wait(0.35)
			frame:Destroy()
		end)
	end
	
	-- DESATIVA TUDO COM SEGURANÇA
	local function desativarTudo()
		flingAtivo = false
	
		if bAV then
			pcall(function() bAV:Destroy() end)
			bAV = nil
		end
		if conexaoNoclip then
			conexaoNoclip:Disconnect()
			conexaoNoclip = nil
		end
		if conexaoFling then
			conexaoFling:Disconnect()
			conexaoFling = nil
		end
	
		-- Restaura colisão do personagem
		local char = player.Character
		if char then
			for _, p in pairs(char:GetDescendants()) do
				if p:IsA("BasePart") then
					p.CanCollide = true
				end
			end
		end
	end
	
	-- ATIVA O FLING
	local function ativarFling()
		local char = player.Character
		if not char then return end
		local root = char:FindFirstChild("HumanoidRootPart")
		if not root then return end
	
		desativarTudo()
		flingAtivo = true
	
		-- Cria força de rotação
		bAV = Instance.new("BodyAngularVelocity")
		bAV.Name = "FlingForce"
		bAV.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
		bAV.P = 30000 -- Aumentado pra ser mais efetivo
		bAV.AngularVelocity = Vector3.new(10000, 10000, 10000) -- Mais forte
		bAV.Parent = root
	
		-- Noclip pra não travar nas paredes
		conexaoNoclip = RunService.Stepped:Connect(function()
			local c = player.Character
			if not c then return end
			for _, p in pairs(c:GetDescendants()) do
				if p:IsA("BasePart") then
					p.CanCollide = false
				end
			end
		end)
	
		-- Loop que mantém o fling ativo e pulsa a velocidade
		local tick = 0
		conexaoFling = RunService.Heartbeat:Connect(function(dt)
			tick = tick + dt
			local c = player.Character
			if not c then return end
			local r = c:FindFirstChild("HumanoidRootPart")
			if not r then return end
			local b = r:FindFirstChild("FlingForce")
			if not b then return end
	
			-- Pulsa a direção pra aumentar o efeito de fling
			local direcao = math.sin(tick * 5) * 10000
			b.AngularVelocity = Vector3.new(direcao, 10000, direcao)
		end)
	
		iconeStatus.TextColor3 = Color3.fromRGB(255, 50, 50)
		notificar("💥 Fling ATIVADO", "Chegue perto de alguém!", Color3.fromRGB(255, 50, 50))
	end
	
	-- BOTÃO DO PAINEL
	botao.MouseButton1Click:Connect(function()
		permissaoPainel = not permissaoPainel
		if permissaoPainel then
			iconeStatus.TextColor3 = Color3.fromRGB(0, 255, 0)
			notificar("💥 Fling Liberado", "Pressione X para ativar", Color3.fromRGB(0, 200, 0))
		else
			iconeStatus.TextColor3 = Color3.fromRGB(255, 0, 0)
			desativarTudo()
			notificar("💥 Fling Bloqueado", "Desativado pelo painel", Color3.fromRGB(100, 100, 100))
		end
	end)
	
	-- TECLA X
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		if not permissaoPainel then return end
		if input.KeyCode == Enum.KeyCode.X then
			if flingAtivo then
				desativarTudo()
				iconeStatus.TextColor3 = Color3.fromRGB(0, 255, 0)
				notificar("💥 Fling DESATIVADO", "Voltou ao normal", Color3.fromRGB(0, 200, 0))
			else
				ativarFling()
			end
		end
	end)
	
	-- RESETA AO MORRER OU RESPAWNAR
	player.CharacterAdded:Connect(function()
		task.wait(0.5)
		desativarTudo()
		if permissaoPainel then
			iconeStatus.TextColor3 = Color3.fromRGB(0, 255, 0)
		end
	end)
end
coroutine.wrap(TXCDLRA_fake_script)()
local function UXCF_fake_script() -- SPIN.LocalScript 
	local script = Instance.new('LocalScript', SPIN)

	local RunService = game:GetService("RunService")
	local UserInputService = game:GetService("UserInputService")
	local StarterGui = game:GetService("StarterGui")
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	
	local botao = script.Parent
	local iconeStatus = botao:WaitForChild("TextLabel")
	
	local permissaoPainel = false 
	local spinAtivo = false      
	local bAV = nil               
	
	-- Função de Notificação
	local function avisar(titulo, texto)
		StarterGui:SetCore("SendNotification", {
			Title = titulo;
			Text = texto;
			Duration = 4;
		})
	end
	
	-- Função para destruir o objeto de giro
	local function removerForca()
		if bAV then 
			bAV:Destroy() 
			bAV = nil 
		end
	end
	
	-- 1. CLIQUE NO PAINEL (LIBERAÇÃO)
	botao.MouseButton1Click:Connect(function()
		permissaoPainel = not permissaoPainel
	
		if permissaoPainel then
			iconeStatus.TextColor3 = Color3.fromRGB(0, 255, 0) -- Verde
			avisar("Painel: SPIN", "Permissão concedida! Use 'M' para Ligar/Desligar.")
		else
			iconeStatus.TextColor3 = Color3.fromRGB(255, 0, 0) -- Vermelho
			spinAtivo = false
			removerForca()
			avisar("Painel: SPIN", "Função bloqueada e desligada.")
		end
	end)
	
	-- 2. TECLA M (LIGA E DESLIGA O GIRO)
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
	
		-- Só executa se o botão do painel estiver ativado (verde)
		if permissaoPainel and input.KeyCode == Enum.KeyCode.M then
			spinAtivo = not spinAtivo -- Alterna entre ligado e desligado
	
			if spinAtivo then
				local char = player.Character
				local root = char and char:FindFirstChild("HumanoidRootPart")
	
				if root then
					removerForca() -- Garante que não existam dois giros ao mesmo tempo
	
					bAV = Instance.new("BodyAngularVelocity")
					bAV.Name = "SpinForce"
					bAV.Parent = root
					bAV.MaxTorque = Vector3.new(0, math.huge, 0) 
					bAV.P = 1250 
					bAV.AngularVelocity = Vector3.new(0, 1, 0) -- Giro lento
	
					avisar("Spin", "Giro ATIVADO")
				end
			else
				removerForca()
				avisar("Spin", "Giro DESATIVADO")
			end
		end
	end)
	
	-- Resetar tudo se o personagem morrer
	player.CharacterAdded:Connect(function()
		spinAtivo = false
		removerForca()
	end)
end
coroutine.wrap(UXCF_fake_script)()
local function ERMZ_fake_script() -- JUMP.LocalScript 
	local script = Instance.new('LocalScript', JUMP)

	local UserInputService = game:GetService("UserInputService")
	local StarterGui = game:GetService("StarterGui")
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	
	local botao = script.Parent
	local iconeStatus = botao:WaitForChild("TextLabel")
	
	local permissaoPainel = false -- Chave mestra no painel
	
	-- Função de Notificação Customizada
	local function avisar(titulo, texto)
		StarterGui:SetCore("SendNotification", {
			Title = titulo;
			Text = texto;
			Duration = 4;
		})
	end
	
	-- 1. BOTÃO DO PAINEL: LIBERA OU BLOQUEIA A FUNÇÃO
	botao.MouseButton1Click:Connect(function()
		permissaoPainel = not permissaoPainel
	
		if permissaoPainel then
			iconeStatus.TextColor3 = Color3.fromRGB(0, 255, 0) -- Verde
			-- AVISO CUSTOMIZADO
			avisar("Pulo Infinito", "Liberado! Agora você pode pular no ar à vontade.")
		else
			iconeStatus.TextColor3 = Color3.fromRGB(255, 0, 0) -- Vermelho
			avisar("Pulo Infinito", "Função bloqueada pelo painel.")
		end
	end)
	
	-- 2. LÓGICA DO PULO INFINITO
	UserInputService.JumpRequest:Connect(function()
		-- A lógica só dispara se a permissão no painel estiver ativa (Verde)
		if permissaoPainel then
			local char = player.Character
			local humanoid = char and char:FindFirstChildOfClass("Humanoid")
	
			if humanoid then
				-- Força o estado de "Jumping", permitindo o pulo mesmo sem tocar o chão
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			end
		end
	end)
end
coroutine.wrap(ERMZ_fake_script)()
local function WAAD_fake_script() -- INVISIVEL.LocalScript 
	local script = Instance.new('LocalScript', INVISIVEL)

	local UserInputService = game:GetService("UserInputService")
	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	local player = Players.LocalPlayer
	local botao = script.Parent
	local iconeStatus = botao:WaitForChild("TextLabel")
	
	local permissaoPainel = false
	local invisivelAtivo = false
	local transparenciasOriginais = {}
	local colisaoOriginal = {}
	
	-- NOTIFICAÇÃO BONITA (igual ao painel)
	local TweenService = game:GetService("TweenService")
	local screenGui = Instance.new("ScreenGui", player.PlayerGui)
	screenGui.Name = "NotifInvis"
	screenGui.ResetOnSpawn = false
	
	local function notificar(titulo, texto, cor)
		cor = cor or Color3.fromRGB(30, 30, 30)
		local frame = Instance.new("Frame", screenGui)
		frame.Size = UDim2.new(0, 260, 0, 60)
		frame.Position = UDim2.new(0, 20, 1, 10)
		frame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
		frame.BackgroundTransparency = 0.05
		frame.BorderSizePixel = 0
		frame.AnchorPoint = Vector2.new(0, 1)
		frame.ZIndex = 10
		Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)
	
		local borda = Instance.new("Frame", frame)
		borda.Size = UDim2.new(0, 4, 1, 0)
		borda.BackgroundColor3 = cor
		borda.BorderSizePixel = 0
		borda.ZIndex = 11
		Instance.new("UICorner", borda).CornerRadius = UDim.new(0, 8)
	
		local labelT = Instance.new("TextLabel", frame)
		labelT.Size = UDim2.new(1, -16, 0, 24)
		labelT.Position = UDim2.new(0, 14, 0, 6)
		labelT.BackgroundTransparency = 1
		labelT.Text = titulo
		labelT.TextColor3 = Color3.fromRGB(255, 255, 255)
		labelT.Font = Enum.Font.GothamBold
		labelT.TextSize = 13
		labelT.TextXAlignment = Enum.TextXAlignment.Left
		labelT.ZIndex = 11
	
		local labelS = Instance.new("TextLabel", frame)
		labelS.Size = UDim2.new(1, -16, 0, 18)
		labelS.Position = UDim2.new(0, 14, 0, 30)
		labelS.BackgroundTransparency = 1
		labelS.Text = texto
		labelS.TextColor3 = Color3.fromRGB(170, 170, 170)
		labelS.Font = Enum.Font.Gotham
		labelS.TextSize = 11
		labelS.TextXAlignment = Enum.TextXAlignment.Left
		labelS.ZIndex = 11
	
		-- Entrada
		TweenService:Create(frame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
			Position = UDim2.new(0, 20, 1, -20)
		}):Play()
	
		-- Saída
		task.delay(3.5, function()
			TweenService:Create(frame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
				Position = UDim2.new(0, 20, 1, 10)
			}):Play()
			task.wait(0.35)
			frame:Destroy()
		end)
	end
	
	-- SALVA TRANSPARÊNCIA E COLISÃO ORIGINAIS
	local function salvarOriginais(char)
		transparenciasOriginais = {}
		colisaoOriginal = {}
		for _, v in pairs(char:GetDescendants()) do
			if v:IsA("BasePart") then
				transparenciasOriginais[v] = v.Transparency
				colisaoOriginal[v] = v.CanCollide
			elseif v:IsA("Decal") then
				transparenciasOriginais[v] = v.Transparency
			end
		end
	end
	
	-- ATIVA INVISIBILIDADE
	local function ativarInvis()
		local char = player.Character
		if not char then return end
		salvarOriginais(char)
	
		for _, v in pairs(char:GetDescendants()) do
			if v:IsA("BasePart") then
				-- Mantém HumanoidRootPart funcional mas invisível
				v.Transparency = 1
				if v.Name ~= "HumanoidRootPart" then
					v.CanCollide = false
				end
			elseif v:IsA("Decal") then
				v.Transparency = 1
			end
		end
	
		-- Mostra só pra você que tá invisível (torna semi-transparente localmente)
		task.spawn(function()
			local char2 = player.Character
			if not char2 then return end
			for _, v in pairs(char2:GetDescendants()) do
				if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
					v.LocalTransparencyModifier = 0.6
				end
			end
		end)
	end
	
	-- DESATIVA INVISIBILIDADE
	local function desativarInvis()
		local char = player.Character
		if not char then return end
	
		for _, v in pairs(char:GetDescendants()) do
			if v:IsA("BasePart") then
				v.Transparency = transparenciasOriginais[v] or 0
				v.CanCollide = colisaoOriginal[v] or true
				v.LocalTransparencyModifier = 0
			elseif v:IsA("Decal") then
				v.Transparency = transparenciasOriginais[v] or 0
			end
		end
		transparenciasOriginais = {}
		colisaoOriginal = {}
	end
	
	-- MANTÉM INVISÍVEL MESMO SE O JOGO TENTAR RESETAR
	local conexaoInvis = nil
	local function manterInvis()
		if conexaoInvis then conexaoInvis:Disconnect() end
		conexaoInvis = RunService.Heartbeat:Connect(function()
			if not invisivelAtivo then return end
			local char = player.Character
			if not char then return end
			for _, v in pairs(char:GetDescendants()) do
				if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
					if v.Transparency ~= 1 then
						v.Transparency = 1
					end
				end
			end
		end)
	end
	
	-- RECONECTA AO RESPAWN
	player.CharacterAdded:Connect(function()
		task.wait(1)
		invisivelAtivo = false
		transparenciasOriginais = {}
		colisaoOriginal = {}
		if conexaoInvis then conexaoInvis:Disconnect() end
	end)
	
	-- BOTÃO DO PAINEL
	botao.MouseButton1Click:Connect(function()
		permissaoPainel = not permissaoPainel
		if permissaoPainel then
			iconeStatus.TextColor3 = Color3.fromRGB(0, 255, 0)
			notificar("👻 Modo Fantasma", "Liberado! Pressione L para ativar", Color3.fromRGB(0, 200, 255))
		else
			iconeStatus.TextColor3 = Color3.fromRGB(255, 0, 0)
			if invisivelAtivo then
				desativarInvis()
				invisivelAtivo = false
				if conexaoInvis then conexaoInvis:Disconnect() end
			end
			notificar("👻 Modo Fantasma", "Desativado", Color3.fromRGB(255, 50, 50))
		end
	end)
	
	-- TECLA L
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		if not permissaoPainel then return end
		if input.KeyCode == Enum.KeyCode.L then
			invisivelAtivo = not invisivelAtivo
			if invisivelAtivo then
				ativarInvis()
				manterInvis()
				iconeStatus.TextColor3 = Color3.fromRGB(0, 255, 255)
				notificar("👻 Invisível ATIVADO", "Outros jogadores não te veem", Color3.fromRGB(0, 200, 255))
			else
				desativarInvis()
				if conexaoInvis then conexaoInvis:Disconnect() end
				iconeStatus.TextColor3 = Color3.fromRGB(0, 255, 0)
				notificar("👁️ Visível", "Você voltou a aparecer", Color3.fromRGB(0, 255, 100))
			end
		end
	end)
end
coroutine.wrap(WAAD_fake_script)()
local function MHCVNFJ_fake_script() -- PINCEL.LocalScript 
	local script = Instance.new('LocalScript', PINCEL)

	-- [[ SISTEMA DE TEMAS 4E20 PANEL - 20 CORES ]] --
	local botaoPincel = script.Parent
	local screenGui = botaoPincel.Parent.Parent -- tela5 -> ScreenGui
	local abasPasta = screenGui:WaitForChild("ABAS")
	local frameBotoes = abasPasta:WaitForChild("botoes")
	
	-- 20 CORES (Equilíbrio entre tons vivos e elegantes)
	local temas = {
		Color3.fromRGB(100, 100, 0),   -- 1. Amarelo Ouro
		Color3.fromRGB(0, 100, 0),     -- 2. Verde Floresta
		Color3.fromRGB(80, 0, 150),    -- 3. Roxo Profundo
		Color3.fromRGB(150, 0, 100),   -- 4. Magenta
		Color3.fromRGB(0, 80, 150),    -- 5. Azul Oceano
		Color3.fromRGB(50, 120, 130),  -- 6. Ciano Escuro
		Color3.fromRGB(130, 30, 30),   -- 7. Vermelho Sangue
		Color3.fromRGB(130, 80, 0),    -- 8. Laranja Queimado
		Color3.fromRGB(60, 100, 80),   -- 9. Verde Esmeralda
		Color3.fromRGB(100, 70, 140),  -- 10. Lavanda
		Color3.fromRGB(140, 140, 140), -- 11. Cinza Metálico
		Color3.fromRGB(0, 120, 100),   -- 12. Verde Água
		Color3.fromRGB(100, 50, 0),    -- 13. Marrom Chocolate
		Color3.fromRGB(150, 100, 150), -- 14. Orquídea
		Color3.fromRGB(70, 90, 110),   -- 15. Azul Acinzentado
		Color3.fromRGB(120, 130, 50),  -- 16. Lima Fosco
		Color3.fromRGB(90, 40, 40),    -- 17. Vinho
		Color3.fromRGB(40, 40, 90),    -- 18. Azul Noite
		Color3.fromRGB(110, 110, 80),  -- 19. Bege Oliva
		Color3.fromRGB(45, 45, 45)     -- 20. Grafite Dark
	}
	
	local indiceTema = 1
	local TweenService = game:GetService("TweenService")
	
	local function aplicarTema(cor)
		-- Transição profissional de 0.6 segundos
		local info = TweenInfo.new(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
	
		-- Aplica na barra lateral (botoes)
		TweenService:Create(frameBotoes, info, {BackgroundColor3 = cor}):Play()
	
		-- Aplica em todas as telas soltas na ScreenGui
		for i = 1, 5 do
			local nomeTela = "tela" .. i
			local tela = screenGui:FindFirstChild(nomeTela)
			if tela and tela:IsA("Frame") then
				TweenService:Create(tela, info, {BackgroundColor3 = cor}):Play()
			end
		end
	end
	
	botaoPincel.MouseButton1Click:Connect(function()
		indiceTema = indiceTema + 1
		if indiceTema > #temas then indiceTema = 1 end
	
		local novaCor = temas[indiceTema]
		aplicarTema(novaCor)
	end)
end
coroutine.wrap(MHCVNFJ_fake_script)()
