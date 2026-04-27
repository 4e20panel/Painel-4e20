-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local MainPanel = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local VersionLabel = Instance.new("TextLabel")
local TitleLabel = Instance.new("TextLabel")
local BOTOES = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UISizeConstraint = Instance.new("UISizeConstraint")
local HOME = Instance.new("TextButton")
local VIP = Instance.new("TextButton")
local TARGET = Instance.new("TextButton")
local MISC = Instance.new("TextButton")
local CHARACTER = Instance.new("TextButton")
local ABOUT = Instance.new("TextButton")
local OWNER = Instance.new("TextButton")
local STAFF = Instance.new("TextButton")
local BAN = Instance.new("TextButton")
local HomeTela1 = Instance.new("Frame")
local IMAGEM = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local name = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local ONLINE = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local DATA = Instance.new("TextLabel")
local PING = Instance.new("TextLabel")
local BackgroundImage = Instance.new("ImageLabel")
local VipTela2 = Instance.new("Frame")
local AUTOPARRY = Instance.new("TextButton")
local TextLabel_7 = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local INVISIBILITY = Instance.new("TextButton")
local TextLabel_8 = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local SPIN = Instance.new("TextButton")
local TextLabel_9 = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local FLING = Instance.new("TextButton")
local TextLabel_10 = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local SPEED = Instance.new("TextButton")
local TextLabel_11 = Instance.new("TextLabel")
local UICorner_5 = Instance.new("UICorner")
local bloqueiovip = Instance.new("Frame")
local TextLabel_12 = Instance.new("TextLabel")
local TextLabel_13 = Instance.new("TextLabel")
local TarGetTela3 = Instance.new("Frame")
local FOLLOW = Instance.new("TextButton")
local TextLabel_14 = Instance.new("TextLabel")
local VIEW = Instance.new("TextButton")
local TextLabel_15 = Instance.new("TextLabel")
local COPYID = Instance.new("TextButton")
local FOCUS = Instance.new("TextButton")
local TextLabel_16 = Instance.new("TextLabel")
local username = Instance.new("TextBox")
local DISPLAYNAME = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")
local ID = Instance.new("TextLabel")
local AVATA = Instance.new("ImageLabel")
local MiscTela4 = Instance.new("Frame")
local ANTAFK = Instance.new("TextButton")
local TextLabel_17 = Instance.new("TextLabel")
local UICorner_7 = Instance.new("UICorner")
local FLASHBACK = Instance.new("TextButton")
local TextLabel_18 = Instance.new("TextLabel")
local UICorner_8 = Instance.new("UICorner")
local NOCLIP = Instance.new("TextButton")
local TextLabel_19 = Instance.new("TextLabel")
local UICorner_9 = Instance.new("UICorner")
local CLICKTP = Instance.new("TextButton")
local TextLabel_20 = Instance.new("TextLabel")
local UICorner_10 = Instance.new("UICorner")
local CharacterTela5 = Instance.new("Frame")
local ANTAFK_2 = Instance.new("TextButton")
local TextLabel_21 = Instance.new("TextLabel")
local UICorner_11 = Instance.new("UICorner")
local FLASHBACK_2 = Instance.new("TextButton")
local TextLabel_22 = Instance.new("TextLabel")
local UICorner_12 = Instance.new("UICorner")
local NOCLIP_2 = Instance.new("TextButton")
local TextLabel_23 = Instance.new("TextLabel")
local UICorner_13 = Instance.new("UICorner")
local CLICKTP_2 = Instance.new("TextButton")
local TextLabel_24 = Instance.new("TextLabel")
local UICorner_14 = Instance.new("UICorner")
local AboutTela6 = Instance.new("Frame")
local TextLabel_25 = Instance.new("TextLabel")
local TextLabel_26 = Instance.new("TextLabel")
local TextLabel_27 = Instance.new("TextLabel")
local TextLabel_28 = Instance.new("TextLabel")
local TextLabel_29 = Instance.new("TextLabel")
local OwnerTela7 = Instance.new("Frame")
local ScrollingFrame_2 = Instance.new("ScrollingFrame")
local display = Instance.new("TextLabel")
local userid = Instance.new("TextLabel")
local AVATA_2 = Instance.new("ImageLabel")
local UICorner_15 = Instance.new("UICorner")
local OWNER_2 = Instance.new("TextButton")
local UICorner_16 = Instance.new("UICorner")
local username_2 = Instance.new("TextBox")
local UICorner_17 = Instance.new("UICorner")
local MEOW = Instance.new("TextButton")
local UICorner_18 = Instance.new("UICorner")
local MANAGER = Instance.new("TextButton")
local UICorner_19 = Instance.new("UICorner")
local STAFF_2 = Instance.new("TextButton")
local UICorner_20 = Instance.new("UICorner")
local SUPORTE = Instance.new("TextButton")
local UICorner_21 = Instance.new("UICorner")
local VIP4E20 = Instance.new("TextButton")
local UICorner_22 = Instance.new("UICorner")
local DEVELOP = Instance.new("TextButton")
local UICorner_23 = Instance.new("UICorner")
local BABY = Instance.new("TextButton")
local UICorner_24 = Instance.new("UICorner")
local ADD = Instance.new("TextButton")
local UICorner_25 = Instance.new("UICorner")
local StaffTela8 = Instance.new("Frame")
local TextLabel_30 = Instance.new("TextLabel")
local teleportuser = Instance.new("Frame")
local ScrollingFrame_3 = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local TELEPORT = Instance.new("TextButton")
local BanTela9 = Instance.new("Frame")
local BANIMENTO = Instance.new("TextLabel")
local BAN_2 = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")
local ImageLabel = Instance.new("ImageLabel")
local UICorner_26 = Instance.new("UICorner")
local USERID = Instance.new("TextLabel")
local DESBANIDO = Instance.new("TextButton")
local DESBANIDO_2 = Instance.new("TextLabel")
local disponivel = Instance.new("TextLabel")
local BANIDO = Instance.new("TextLabel")
local BANIDO_2 = Instance.new("Frame")
local VOCEFOIBANIDODOPAINEL = Instance.new("TextLabel")
local COMPREODESBANNONOSSODISCORD = Instance.new("TextLabel")
local ImageLabel_2 = Instance.new("ImageLabel")
local UICorner_27 = Instance.new("UICorner")
local clicker = Instance.new("ImageButton")
local UICorner_28 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

MainPanel.Name = "MainPanel"
MainPanel.Parent = ScreenGui
MainPanel.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
MainPanel.BackgroundTransparency = 0.500
MainPanel.BorderColor3 = Color3.fromRGB(10, 10, 10)
MainPanel.ClipsDescendants = true
MainPanel.Position = UDim2.new(0.5, -250, 0.5, -165)
MainPanel.Size = UDim2.new(0, 460, 0, 300)

TopBar.Name = "TopBar"
TopBar.Parent = MainPanel
TopBar.BackgroundColor3 = Color3.fromRGB(91, 25, 4)
TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(1, 0, 0, 28)
TopBar.ZIndex = 2

VersionLabel.Name = "VersionLabel"
VersionLabel.Parent = TopBar
VersionLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VersionLabel.BackgroundTransparency = 1.000
VersionLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
VersionLabel.BorderSizePixel = 0
VersionLabel.Position = UDim2.new(0, 10, 0, 0)
VersionLabel.Size = UDim2.new(0, 50, 1, 0)
VersionLabel.Font = Enum.Font.Nunito
VersionLabel.Text = "v1.0.6"
VersionLabel.TextColor3 = Color3.fromRGB(197, 197, 197)
VersionLabel.TextSize = 25.000

TitleLabel.Name = "TitleLabel"
TitleLabel.Parent = TopBar
TitleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.BackgroundTransparency = 1.000
TitleLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleLabel.BorderSizePixel = 0
TitleLabel.Position = UDim2.new(0.5, -50, 0, 0)
TitleLabel.Size = UDim2.new(0, 140, 1, 0)
TitleLabel.Font = Enum.Font.Nunito
TitleLabel.Text = "4E20 Panel"
TitleLabel.TextColor3 = Color3.fromRGB(197, 197, 197)
TitleLabel.TextSize = 30.000

BOTOES.Name = "BOTOES"
BOTOES.Parent = MainPanel
BOTOES.BackgroundColor3 = Color3.fromRGB(91, 25, 4)
BOTOES.BackgroundTransparency = 0.100
BOTOES.BorderColor3 = Color3.fromRGB(0, 0, 0)
BOTOES.BorderSizePixel = 0
BOTOES.Position = UDim2.new(0, 0, 0, 28)
BOTOES.Size = UDim2.new(0, 110, 1, -28)
BOTOES.ZIndex = 3

ScrollingFrame.Parent = BOTOES
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 355)
ScrollingFrame.ScrollBarThickness = 5

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 10)

UISizeConstraint.Parent = UIListLayout

HOME.Name = "HOME"
HOME.Parent = ScrollingFrame
HOME.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
HOME.BorderColor3 = Color3.fromRGB(0, 0, 0)
HOME.BorderSizePixel = 0
HOME.LayoutOrder = 1
HOME.Size = UDim2.new(1, 0, 0, 30)
HOME.Font = Enum.Font.SourceSansBold
HOME.Text = "HOME"
HOME.TextColor3 = Color3.fromRGB(197, 197, 197)
HOME.TextSize = 17.000
HOME.TextWrapped = true

VIP.Name = "VIP"
VIP.Parent = ScrollingFrame
VIP.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
VIP.BorderColor3 = Color3.fromRGB(0, 0, 0)
VIP.BorderSizePixel = 0
VIP.LayoutOrder = 2
VIP.Size = UDim2.new(1, 0, 0, 30)
VIP.Font = Enum.Font.SourceSansBold
VIP.Text = "VIP"
VIP.TextColor3 = Color3.fromRGB(197, 197, 197)
VIP.TextSize = 17.000

TARGET.Name = "TARGET"
TARGET.Parent = ScrollingFrame
TARGET.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
TARGET.BorderColor3 = Color3.fromRGB(0, 0, 0)
TARGET.BorderSizePixel = 0
TARGET.LayoutOrder = 3
TARGET.Position = UDim2.new(0.159999996, 0, 0.484507054, 0)
TARGET.Size = UDim2.new(1, 0, 0, 30)
TARGET.Font = Enum.Font.SourceSansBold
TARGET.Text = "TARGET"
TARGET.TextColor3 = Color3.fromRGB(197, 197, 197)
TARGET.TextSize = 17.000

MISC.Name = "MISC"
MISC.Parent = ScrollingFrame
MISC.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
MISC.BorderColor3 = Color3.fromRGB(0, 0, 0)
MISC.BorderSizePixel = 0
MISC.LayoutOrder = 4
MISC.Size = UDim2.new(1, 0, 0, 30)
MISC.Font = Enum.Font.SourceSansBold
MISC.Text = "MISC"
MISC.TextColor3 = Color3.fromRGB(197, 197, 197)
MISC.TextSize = 17.000

CHARACTER.Name = "CHARACTER"
CHARACTER.Parent = ScrollingFrame
CHARACTER.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
CHARACTER.BorderColor3 = Color3.fromRGB(0, 0, 0)
CHARACTER.BorderSizePixel = 0
CHARACTER.LayoutOrder = 5
CHARACTER.Position = UDim2.new(0.0799999982, 0, 0.374647886, 0)
CHARACTER.Size = UDim2.new(1, 0, 0, 30)
CHARACTER.Font = Enum.Font.SourceSansBold
CHARACTER.Text = "CHARACTER"
CHARACTER.TextColor3 = Color3.fromRGB(197, 197, 197)
CHARACTER.TextSize = 17.000

ABOUT.Name = "ABOUT"
ABOUT.Parent = ScrollingFrame
ABOUT.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
ABOUT.BorderColor3 = Color3.fromRGB(0, 0, 0)
ABOUT.BorderSizePixel = 0
ABOUT.LayoutOrder = 6
ABOUT.Position = UDim2.new(1.63999999, 0, 0.450704217, 0)
ABOUT.Size = UDim2.new(1, 0, 0, 30)
ABOUT.Font = Enum.Font.SourceSansBold
ABOUT.Text = "ABOUT"
ABOUT.TextColor3 = Color3.fromRGB(197, 197, 197)
ABOUT.TextSize = 17.000

OWNER.Name = "OWNER"
OWNER.Parent = ScrollingFrame
OWNER.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
OWNER.BorderColor3 = Color3.fromRGB(0, 0, 0)
OWNER.BorderSizePixel = 0
OWNER.LayoutOrder = 7
OWNER.Size = UDim2.new(1, 0, 0, 30)
OWNER.Font = Enum.Font.SourceSansBold
OWNER.Text = "OWNER"
OWNER.TextColor3 = Color3.fromRGB(197, 197, 197)
OWNER.TextSize = 17.000

STAFF.Name = "STAFF"
STAFF.Parent = ScrollingFrame
STAFF.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
STAFF.BorderColor3 = Color3.fromRGB(0, 0, 0)
STAFF.BorderSizePixel = 0
STAFF.LayoutOrder = 8
STAFF.Size = UDim2.new(1, 0, 0, 30)
STAFF.Font = Enum.Font.SourceSansBold
STAFF.Text = "STAFF"
STAFF.TextColor3 = Color3.fromRGB(197, 197, 197)
STAFF.TextSize = 17.000

BAN.Name = "BAN"
BAN.Parent = ScrollingFrame
BAN.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
BAN.BorderColor3 = Color3.fromRGB(0, 0, 0)
BAN.BorderSizePixel = 0
BAN.LayoutOrder = 9
BAN.Size = UDim2.new(1, 0, 0, 30)
BAN.Font = Enum.Font.SourceSansBold
BAN.Text = "BAN"
BAN.TextColor3 = Color3.fromRGB(197, 197, 197)
BAN.TextSize = 17.000

HomeTela1.Name = "HomeTela1"
HomeTela1.Parent = MainPanel
HomeTela1.BackgroundColor3 = Color3.fromRGB(153, 43, 7)
HomeTela1.BackgroundTransparency = 0.100
HomeTela1.BorderColor3 = Color3.fromRGB(0, 0, 0)
HomeTela1.BorderSizePixel = 0
HomeTela1.LayoutOrder = 1
HomeTela1.Position = UDim2.new(0, 100, 0, 28)
HomeTela1.Size = UDim2.new(1, -100, 1, -28)
HomeTela1.ZIndex = 2

IMAGEM.Name = "IMAGEM"
IMAGEM.Parent = HomeTela1
IMAGEM.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
IMAGEM.BorderColor3 = Color3.fromRGB(0, 0, 0)
IMAGEM.BorderSizePixel = 0
IMAGEM.Position = UDim2.new(0, 20, 0, 20)
IMAGEM.Size = UDim2.new(0, 100, 0, 100)
IMAGEM.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

TextLabel.Parent = HomeTela1
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 150, 0, 15)
TextLabel.Size = UDim2.new(0, 100, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Olá!"
TextLabel.TextColor3 = Color3.fromRGB(197, 197, 197)
TextLabel.TextSize = 25.000

name.Name = "name"
name.Parent = HomeTela1
name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
name.BackgroundTransparency = 1.000
name.BorderColor3 = Color3.fromRGB(0, 0, 0)
name.BorderSizePixel = 0
name.Position = UDim2.new(0, 198, 0, 15)
name.Size = UDim2.new(0, 100, 0, 50)
name.Font = Enum.Font.SourceSans
name.Text = "name"
name.TextColor3 = Color3.fromRGB(59, 16, 3)
name.TextSize = 25.000

TextLabel_2.Parent = HomeTela1
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 210, 0, 40)
TextLabel_2.Size = UDim2.new(0, 100, 0, 50)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Pressione [B] para"
TextLabel_2.TextColor3 = Color3.fromRGB(197, 197, 197)
TextLabel_2.TextSize = 25.000

TextLabel_3.Parent = HomeTela1
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0, 217, 0, 65)
TextLabel_3.Size = UDim2.new(0, 100, 0, 50)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "abrir/fechar o painel"
TextLabel_3.TextColor3 = Color3.fromRGB(197, 197, 197)
TextLabel_3.TextSize = 25.000

TextLabel_4.Parent = HomeTela1
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0, 15, 0, 130)
TextLabel_4.Size = UDim2.new(0, 50, 0, 50)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "Ping:"
TextLabel_4.TextColor3 = Color3.fromRGB(197, 197, 197)
TextLabel_4.TextSize = 25.000

TextLabel_5.Parent = HomeTela1
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0, 25, 0, 180)
TextLabel_5.Size = UDim2.new(0, 50, 0, 50)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "Online:"
TextLabel_5.TextColor3 = Color3.fromRGB(197, 197, 197)
TextLabel_5.TextSize = 25.000

ONLINE.Name = "ONLINE"
ONLINE.Parent = HomeTela1
ONLINE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ONLINE.BackgroundTransparency = 1.000
ONLINE.BorderColor3 = Color3.fromRGB(0, 0, 0)
ONLINE.BorderSizePixel = 0
ONLINE.Position = UDim2.new(0, 90, 0, 180)
ONLINE.Size = UDim2.new(0, 50, 0, 50)
ONLINE.Font = Enum.Font.SourceSans
ONLINE.Text = "000"
ONLINE.TextColor3 = Color3.fromRGB(255, 255, 255)
ONLINE.TextSize = 25.000

TextLabel_6.Parent = HomeTela1
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0, 17, 0, 210)
TextLabel_6.Size = UDim2.new(0, 50, 0, 50)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.Text = "Date:"
TextLabel_6.TextColor3 = Color3.fromRGB(197, 197, 197)
TextLabel_6.TextSize = 25.000

DATA.Name = "DATA"
DATA.Parent = HomeTela1
DATA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DATA.BackgroundTransparency = 1.000
DATA.BorderColor3 = Color3.fromRGB(0, 0, 0)
DATA.BorderSizePixel = 0
DATA.Position = UDim2.new(0, 130, 0, 210)
DATA.Size = UDim2.new(0, 50, 0, 50)
DATA.Font = Enum.Font.SourceSans
DATA.Text = "00/00/0000"
DATA.TextColor3 = Color3.fromRGB(255, 255, 255)
DATA.TextSize = 25.000

PING.Name = "PING"
PING.Parent = HomeTela1
PING.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PING.BackgroundTransparency = 1.000
PING.BorderColor3 = Color3.fromRGB(0, 0, 0)
PING.BorderSizePixel = 0
PING.Position = UDim2.new(0, 70, 0, 130)
PING.Size = UDim2.new(0, 50, 0, 50)
PING.Font = Enum.Font.SourceSans
PING.Text = "000"
PING.TextColor3 = Color3.fromRGB(255, 255, 255)
PING.TextSize = 25.000

BackgroundImage.Name = "BackgroundImage"
BackgroundImage.Parent = MainPanel
BackgroundImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BackgroundImage.BackgroundTransparency = 1.000
BackgroundImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
BackgroundImage.BorderSizePixel = 0
BackgroundImage.Size = UDim2.new(1, 0, 1, 0)
BackgroundImage.Image = "rbxassetid://139032675862537"
BackgroundImage.ImageColor3 = Color3.fromRGB(255, 65, 13)
BackgroundImage.ScaleType = Enum.ScaleType.Tile

VipTela2.Name = "VipTela2"
VipTela2.Parent = MainPanel
VipTela2.BackgroundColor3 = Color3.fromRGB(153, 43, 7)
VipTela2.BackgroundTransparency = 0.100
VipTela2.BorderColor3 = Color3.fromRGB(0, 0, 0)
VipTela2.BorderSizePixel = 0
VipTela2.LayoutOrder = 1
VipTela2.Position = UDim2.new(0, 100, 0, 28)
VipTela2.Size = UDim2.new(1, -100, 1, -28)
VipTela2.Visible = false
VipTela2.ZIndex = 2

AUTOPARRY.Name = "AUTO - PARRY"
AUTOPARRY.Parent = VipTela2
AUTOPARRY.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
AUTOPARRY.BorderColor3 = Color3.fromRGB(0, 0, 0)
AUTOPARRY.BorderSizePixel = 0
AUTOPARRY.Position = UDim2.new(0, 15, 0, 210)
AUTOPARRY.Size = UDim2.new(0, 140, 0, 40)
AUTOPARRY.Font = Enum.Font.SourceSansBold
AUTOPARRY.Text = "AUTO - PARRY"
AUTOPARRY.TextColor3 = Color3.fromRGB(197, 197, 197)
AUTOPARRY.TextSize = 14.000

TextLabel_7.Parent = AUTOPARRY
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0, 142, 0, 0)
TextLabel_7.Size = UDim2.new(0, 50, 0, 40)
TextLabel_7.Font = Enum.Font.SourceSansBold
TextLabel_7.Text = "+"
TextLabel_7.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 14.000
TextLabel_7.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = AUTOPARRY

INVISIBILITY.Name = "INVISIBILITY"
INVISIBILITY.Parent = VipTela2
INVISIBILITY.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
INVISIBILITY.BorderColor3 = Color3.fromRGB(0, 0, 0)
INVISIBILITY.BorderSizePixel = 0
INVISIBILITY.Position = UDim2.new(0, 15, 0, 160)
INVISIBILITY.Size = UDim2.new(0, 140, 0, 40)
INVISIBILITY.Font = Enum.Font.SourceSansBold
INVISIBILITY.Text = "INVISIBILITY"
INVISIBILITY.TextColor3 = Color3.fromRGB(197, 197, 197)
INVISIBILITY.TextSize = 14.000

TextLabel_8.Parent = INVISIBILITY
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Position = UDim2.new(0, 142, 0, 0)
TextLabel_8.Size = UDim2.new(0, 50, 0, 40)
TextLabel_8.Font = Enum.Font.SourceSansBold
TextLabel_8.Text = "+"
TextLabel_8.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_8.TextScaled = true
TextLabel_8.TextSize = 14.000
TextLabel_8.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 6)
UICorner_2.Parent = INVISIBILITY

SPIN.Name = "SPIN"
SPIN.Parent = VipTela2
SPIN.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
SPIN.BorderColor3 = Color3.fromRGB(0, 0, 0)
SPIN.BorderSizePixel = 0
SPIN.Position = UDim2.new(0, 15, 0, 110)
SPIN.Size = UDim2.new(0, 140, 0, 40)
SPIN.Font = Enum.Font.SourceSansBold
SPIN.Text = "SPIN"
SPIN.TextColor3 = Color3.fromRGB(197, 197, 197)
SPIN.TextSize = 14.000

TextLabel_9.Parent = SPIN
TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BackgroundTransparency = 1.000
TextLabel_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_9.BorderSizePixel = 0
TextLabel_9.Position = UDim2.new(0, 142, 0, 0)
TextLabel_9.Size = UDim2.new(0, 50, 0, 40)
TextLabel_9.Font = Enum.Font.SourceSansBold
TextLabel_9.Text = "+"
TextLabel_9.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_9.TextScaled = true
TextLabel_9.TextSize = 14.000
TextLabel_9.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 6)
UICorner_3.Parent = SPIN

FLING.Name = "FLING"
FLING.Parent = VipTela2
FLING.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
FLING.BorderColor3 = Color3.fromRGB(0, 0, 0)
FLING.BorderSizePixel = 0
FLING.Position = UDim2.new(0, 15, 0, 60)
FLING.Size = UDim2.new(0, 140, 0, 40)
FLING.Font = Enum.Font.SourceSansBold
FLING.Text = "FLING"
FLING.TextColor3 = Color3.fromRGB(197, 197, 197)
FLING.TextSize = 14.000

TextLabel_10.Parent = FLING
TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BackgroundTransparency = 1.000
TextLabel_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_10.BorderSizePixel = 0
TextLabel_10.Position = UDim2.new(0, 142, 0, 0)
TextLabel_10.Size = UDim2.new(0, 50, 0, 40)
TextLabel_10.Font = Enum.Font.SourceSansBold
TextLabel_10.Text = "+"
TextLabel_10.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_10.TextScaled = true
TextLabel_10.TextSize = 14.000
TextLabel_10.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 6)
UICorner_4.Parent = FLING

SPEED.Name = "SPEED"
SPEED.Parent = VipTela2
SPEED.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
SPEED.BorderColor3 = Color3.fromRGB(0, 0, 0)
SPEED.BorderSizePixel = 0
SPEED.Position = UDim2.new(0, 15, 0, 10)
SPEED.Size = UDim2.new(0, 140, 0, 40)
SPEED.Font = Enum.Font.SourceSansBold
SPEED.Text = "SPEED"
SPEED.TextColor3 = Color3.fromRGB(197, 197, 197)
SPEED.TextSize = 14.000

TextLabel_11.Parent = SPEED
TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.BackgroundTransparency = 1.000
TextLabel_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_11.BorderSizePixel = 0
TextLabel_11.Position = UDim2.new(0, 142, 0, 0)
TextLabel_11.Size = UDim2.new(0, 50, 0, 40)
TextLabel_11.Font = Enum.Font.SourceSansBold
TextLabel_11.Text = "+"
TextLabel_11.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_11.TextScaled = true
TextLabel_11.TextSize = 14.000
TextLabel_11.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 6)
UICorner_5.Parent = SPEED

bloqueiovip.Name = "bloqueiovip"
bloqueiovip.Parent = VipTela2
bloqueiovip.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
bloqueiovip.BackgroundTransparency = 0.100
bloqueiovip.BorderColor3 = Color3.fromRGB(0, 0, 0)
bloqueiovip.BorderSizePixel = 0
bloqueiovip.Size = UDim2.new(1, 0, 1, 0)
bloqueiovip.Visible = false
bloqueiovip.ZIndex = 2

TextLabel_12.Parent = bloqueiovip
TextLabel_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.BackgroundTransparency = 1.000
TextLabel_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_12.BorderSizePixel = 0
TextLabel_12.Position = UDim2.new(0, 100, 0, 100)
TextLabel_12.Size = UDim2.new(0, 200, 0, 50)
TextLabel_12.Font = Enum.Font.SourceSans
TextLabel_12.Text = "ADQUIRIR VIP"
TextLabel_12.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_12.TextScaled = true
TextLabel_12.TextSize = 25.000
TextLabel_12.TextWrapped = true

TextLabel_13.Parent = bloqueiovip
TextLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.BackgroundTransparency = 1.000
TextLabel_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_13.BorderSizePixel = 0
TextLabel_13.Position = UDim2.new(0, 60, 0, 140)
TextLabel_13.Size = UDim2.new(0, 280, 0, 40)
TextLabel_13.Font = Enum.Font.SourceSans
TextLabel_13.Text = "https://discord.gg/ZJw2qrYFSc"
TextLabel_13.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.TextSize = 25.000
TextLabel_13.TextWrapped = true

TarGetTela3.Name = "TarGetTela3"
TarGetTela3.Parent = MainPanel
TarGetTela3.BackgroundColor3 = Color3.fromRGB(153, 43, 7)
TarGetTela3.BackgroundTransparency = 0.100
TarGetTela3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TarGetTela3.BorderSizePixel = 0
TarGetTela3.LayoutOrder = 3
TarGetTela3.Position = UDim2.new(0, 100, 0, 28)
TarGetTela3.Size = UDim2.new(1, -100, 1, -28)
TarGetTela3.Visible = false
TarGetTela3.ZIndex = 2

FOLLOW.Name = "FOLLOW"
FOLLOW.Parent = TarGetTela3
FOLLOW.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
FOLLOW.BorderColor3 = Color3.fromRGB(0, 0, 0)
FOLLOW.BorderSizePixel = 0
FOLLOW.Position = UDim2.new(0, 185, 0, 150)
FOLLOW.Size = UDim2.new(0, 140, 0, 40)
FOLLOW.Font = Enum.Font.SourceSansBold
FOLLOW.Text = "FOLLOW"
FOLLOW.TextColor3 = Color3.fromRGB(197, 197, 197)
FOLLOW.TextSize = 14.000

TextLabel_14.Parent = FOLLOW
TextLabel_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.BackgroundTransparency = 1.000
TextLabel_14.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_14.BorderSizePixel = 0
TextLabel_14.Position = UDim2.new(0, 130, 0, 0)
TextLabel_14.Size = UDim2.new(0, 50, 0, 40)
TextLabel_14.Font = Enum.Font.SourceSansBold
TextLabel_14.Text = "+"
TextLabel_14.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_14.TextScaled = true
TextLabel_14.TextSize = 14.000
TextLabel_14.TextWrapped = true

VIEW.Name = "VIEW"
VIEW.Parent = TarGetTela3
VIEW.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
VIEW.BorderColor3 = Color3.fromRGB(0, 0, 0)
VIEW.BorderSizePixel = 0
VIEW.Position = UDim2.new(0, 15, 0, 150)
VIEW.Size = UDim2.new(0, 140, 0, 40)
VIEW.Font = Enum.Font.SourceSansBold
VIEW.Text = "VIEW"
VIEW.TextColor3 = Color3.fromRGB(197, 197, 197)
VIEW.TextSize = 14.000

TextLabel_15.Parent = VIEW
TextLabel_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_15.BackgroundTransparency = 1.000
TextLabel_15.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_15.BorderSizePixel = 0
TextLabel_15.Position = UDim2.new(0, 130, 0, 0)
TextLabel_15.Size = UDim2.new(0, 50, 0, 40)
TextLabel_15.Font = Enum.Font.SourceSansBold
TextLabel_15.Text = "+"
TextLabel_15.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_15.TextScaled = true
TextLabel_15.TextSize = 14.000
TextLabel_15.TextWrapped = true

COPYID.Name = "COPY ID"
COPYID.Parent = TarGetTela3
COPYID.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
COPYID.BorderColor3 = Color3.fromRGB(0, 0, 0)
COPYID.BorderSizePixel = 0
COPYID.Position = UDim2.new(0, 185, 0, 200)
COPYID.Size = UDim2.new(0, 140, 0, 40)
COPYID.Font = Enum.Font.SourceSansBold
COPYID.Text = "COPY ID"
COPYID.TextColor3 = Color3.fromRGB(197, 197, 197)
COPYID.TextSize = 14.000

FOCUS.Name = "FOCUS"
FOCUS.Parent = TarGetTela3
FOCUS.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
FOCUS.BorderColor3 = Color3.fromRGB(0, 0, 0)
FOCUS.BorderSizePixel = 0
FOCUS.Position = UDim2.new(0, 15, 0, 200)
FOCUS.Size = UDim2.new(0, 140, 0, 40)
FOCUS.Font = Enum.Font.SourceSansBold
FOCUS.Text = "FOCUS"
FOCUS.TextColor3 = Color3.fromRGB(197, 197, 197)
FOCUS.TextSize = 14.000

TextLabel_16.Parent = FOCUS
TextLabel_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_16.BackgroundTransparency = 1.000
TextLabel_16.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_16.BorderSizePixel = 0
TextLabel_16.Position = UDim2.new(0, 130, 0, 0)
TextLabel_16.Size = UDim2.new(0, 50, 0, 40)
TextLabel_16.Font = Enum.Font.SourceSansBold
TextLabel_16.Text = "+"
TextLabel_16.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_16.TextScaled = true
TextLabel_16.TextSize = 14.000
TextLabel_16.TextWrapped = true

username.Name = "@username"
username.Parent = TarGetTela3
username.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
username.BorderColor3 = Color3.fromRGB(0, 0, 0)
username.BorderSizePixel = 0
username.Position = UDim2.new(0, 130, 0, 90)
username.Size = UDim2.new(0, 150, 0, 30)
username.Font = Enum.Font.SourceSans
username.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
username.PlaceholderText = "@username"
username.Text = ""
username.TextColor3 = Color3.fromRGB(255, 255, 255)
username.TextSize = 14.000

DISPLAYNAME.Name = "DISPLAY NAME"
DISPLAYNAME.Parent = username
DISPLAYNAME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DISPLAYNAME.BackgroundTransparency = 1.000
DISPLAYNAME.BorderColor3 = Color3.fromRGB(0, 0, 0)
DISPLAYNAME.BorderSizePixel = 0
DISPLAYNAME.Position = UDim2.new(0, 40, 0, -70)
DISPLAYNAME.Size = UDim2.new(0, 50, 0, 30)
DISPLAYNAME.Font = Enum.Font.SourceSans
DISPLAYNAME.Text = "DisPlay:"
DISPLAYNAME.TextColor3 = Color3.fromRGB(255, 255, 255)
DISPLAYNAME.TextSize = 17.000

UICorner_6.CornerRadius = UDim.new(0, 6)
UICorner_6.Parent = username

ID.Name = "ID"
ID.Parent = username
ID.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ID.BackgroundTransparency = 1.000
ID.BorderColor3 = Color3.fromRGB(0, 0, 0)
ID.BorderSizePixel = 0
ID.Position = UDim2.new(0, 40, 0, -40)
ID.Size = UDim2.new(0, 50, 0, 30)
ID.Font = Enum.Font.SourceSans
ID.Text = "ID:"
ID.TextColor3 = Color3.fromRGB(255, 255, 255)
ID.TextSize = 17.000

AVATA.Name = "AVATA"
AVATA.Parent = TarGetTela3
AVATA.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
AVATA.BorderColor3 = Color3.fromRGB(0, 0, 0)
AVATA.BorderSizePixel = 0
AVATA.Position = UDim2.new(0, 15, 0, 20)
AVATA.Size = UDim2.new(0, 100, 0, 100)
AVATA.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

MiscTela4.Name = "MiscTela4"
MiscTela4.Parent = MainPanel
MiscTela4.BackgroundColor3 = Color3.fromRGB(153, 43, 7)
MiscTela4.BackgroundTransparency = 0.100
MiscTela4.BorderColor3 = Color3.fromRGB(0, 0, 0)
MiscTela4.BorderSizePixel = 0
MiscTela4.LayoutOrder = 4
MiscTela4.Position = UDim2.new(0, 100, 0, 28)
MiscTela4.Size = UDim2.new(1, -100, 1, -28)
MiscTela4.Visible = false
MiscTela4.ZIndex = 2

ANTAFK.Name = "ANT-AFK"
ANTAFK.Parent = MiscTela4
ANTAFK.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
ANTAFK.BorderColor3 = Color3.fromRGB(0, 0, 0)
ANTAFK.BorderSizePixel = 0
ANTAFK.Position = UDim2.new(0, 15, 0, 160)
ANTAFK.Size = UDim2.new(0, 140, 0, 40)
ANTAFK.Font = Enum.Font.SourceSansBold
ANTAFK.Text = "ANT-AFK"
ANTAFK.TextColor3 = Color3.fromRGB(197, 197, 197)
ANTAFK.TextSize = 14.000

TextLabel_17.Parent = ANTAFK
TextLabel_17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_17.BackgroundTransparency = 1.000
TextLabel_17.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_17.BorderSizePixel = 0
TextLabel_17.Position = UDim2.new(0, 130, 0, 0)
TextLabel_17.Size = UDim2.new(0, 50, 0, 40)
TextLabel_17.Font = Enum.Font.SourceSansBold
TextLabel_17.Text = "+"
TextLabel_17.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_17.TextScaled = true
TextLabel_17.TextSize = 14.000
TextLabel_17.TextWrapped = true

UICorner_7.CornerRadius = UDim.new(0, 6)
UICorner_7.Parent = ANTAFK

FLASHBACK.Name = "FLASHBACK"
FLASHBACK.Parent = MiscTela4
FLASHBACK.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
FLASHBACK.BorderColor3 = Color3.fromRGB(0, 0, 0)
FLASHBACK.BorderSizePixel = 0
FLASHBACK.Position = UDim2.new(0, 15, 0, 110)
FLASHBACK.Size = UDim2.new(0, 140, 0, 40)
FLASHBACK.Font = Enum.Font.SourceSansBold
FLASHBACK.Text = "FLASHBACK"
FLASHBACK.TextColor3 = Color3.fromRGB(197, 197, 197)
FLASHBACK.TextSize = 14.000

TextLabel_18.Parent = FLASHBACK
TextLabel_18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_18.BackgroundTransparency = 1.000
TextLabel_18.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_18.BorderSizePixel = 0
TextLabel_18.Position = UDim2.new(0, 130, 0, 0)
TextLabel_18.Size = UDim2.new(0, 50, 0, 40)
TextLabel_18.Font = Enum.Font.SourceSansBold
TextLabel_18.Text = "+"
TextLabel_18.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_18.TextScaled = true
TextLabel_18.TextSize = 14.000
TextLabel_18.TextWrapped = true

UICorner_8.CornerRadius = UDim.new(0, 6)
UICorner_8.Parent = FLASHBACK

NOCLIP.Name = "NOCLIP"
NOCLIP.Parent = MiscTela4
NOCLIP.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
NOCLIP.BorderColor3 = Color3.fromRGB(0, 0, 0)
NOCLIP.BorderSizePixel = 0
NOCLIP.Position = UDim2.new(0, 15, 0, 60)
NOCLIP.Size = UDim2.new(0, 140, 0, 40)
NOCLIP.Font = Enum.Font.SourceSansBold
NOCLIP.Text = "NOCLIP"
NOCLIP.TextColor3 = Color3.fromRGB(197, 197, 197)
NOCLIP.TextSize = 14.000

TextLabel_19.Parent = NOCLIP
TextLabel_19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_19.BackgroundTransparency = 1.000
TextLabel_19.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_19.BorderSizePixel = 0
TextLabel_19.Position = UDim2.new(0, 130, 0, 0)
TextLabel_19.Size = UDim2.new(0, 50, 0, 40)
TextLabel_19.Font = Enum.Font.SourceSansBold
TextLabel_19.Text = "+"
TextLabel_19.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_19.TextScaled = true
TextLabel_19.TextSize = 14.000
TextLabel_19.TextWrapped = true

UICorner_9.CornerRadius = UDim.new(0, 6)
UICorner_9.Parent = NOCLIP

CLICKTP.Name = "CLICK - TP"
CLICKTP.Parent = MiscTela4
CLICKTP.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
CLICKTP.BorderColor3 = Color3.fromRGB(0, 0, 0)
CLICKTP.BorderSizePixel = 0
CLICKTP.Position = UDim2.new(0, 15, 0, 10)
CLICKTP.Size = UDim2.new(0, 140, 0, 40)
CLICKTP.Font = Enum.Font.SourceSansBold
CLICKTP.Text = "CLICK - TP"
CLICKTP.TextColor3 = Color3.fromRGB(197, 197, 197)
CLICKTP.TextSize = 14.000

TextLabel_20.Parent = CLICKTP
TextLabel_20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_20.BackgroundTransparency = 1.000
TextLabel_20.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_20.BorderSizePixel = 0
TextLabel_20.Position = UDim2.new(0, 130, 0, 0)
TextLabel_20.Size = UDim2.new(0, 50, 0, 40)
TextLabel_20.Font = Enum.Font.SourceSansBold
TextLabel_20.Text = "+"
TextLabel_20.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_20.TextScaled = true
TextLabel_20.TextSize = 14.000
TextLabel_20.TextWrapped = true

UICorner_10.CornerRadius = UDim.new(0, 6)
UICorner_10.Parent = CLICKTP

CharacterTela5.Name = "CharacterTela5"
CharacterTela5.Parent = MainPanel
CharacterTela5.BackgroundColor3 = Color3.fromRGB(153, 43, 7)
CharacterTela5.BackgroundTransparency = 0.100
CharacterTela5.BorderColor3 = Color3.fromRGB(0, 0, 0)
CharacterTela5.BorderSizePixel = 0
CharacterTela5.LayoutOrder = 5
CharacterTela5.Position = UDim2.new(0, 100, 0, 28)
CharacterTela5.Size = UDim2.new(1, -100, 1, -28)
CharacterTela5.Visible = false
CharacterTela5.ZIndex = 2

ANTAFK_2.Name = "ANT-AFK"
ANTAFK_2.Parent = CharacterTela5
ANTAFK_2.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
ANTAFK_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ANTAFK_2.BorderSizePixel = 0
ANTAFK_2.Position = UDim2.new(0, 15, 0, 160)
ANTAFK_2.Size = UDim2.new(0, 140, 0, 40)
ANTAFK_2.Font = Enum.Font.SourceSansBold
ANTAFK_2.Text = "ANT-AFK"
ANTAFK_2.TextColor3 = Color3.fromRGB(197, 197, 197)
ANTAFK_2.TextSize = 14.000

TextLabel_21.Parent = ANTAFK_2
TextLabel_21.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_21.BackgroundTransparency = 1.000
TextLabel_21.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_21.BorderSizePixel = 0
TextLabel_21.Position = UDim2.new(0, 130, 0, 0)
TextLabel_21.Size = UDim2.new(0, 50, 0, 40)
TextLabel_21.Font = Enum.Font.SourceSansBold
TextLabel_21.Text = "+"
TextLabel_21.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_21.TextScaled = true
TextLabel_21.TextSize = 14.000
TextLabel_21.TextWrapped = true

UICorner_11.CornerRadius = UDim.new(0, 6)
UICorner_11.Parent = ANTAFK_2

FLASHBACK_2.Name = "FLASHBACK"
FLASHBACK_2.Parent = CharacterTela5
FLASHBACK_2.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
FLASHBACK_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
FLASHBACK_2.BorderSizePixel = 0
FLASHBACK_2.Position = UDim2.new(0, 15, 0, 110)
FLASHBACK_2.Size = UDim2.new(0, 140, 0, 40)
FLASHBACK_2.Font = Enum.Font.SourceSansBold
FLASHBACK_2.Text = "FLASHBACK"
FLASHBACK_2.TextColor3 = Color3.fromRGB(197, 197, 197)
FLASHBACK_2.TextSize = 14.000

TextLabel_22.Parent = FLASHBACK_2
TextLabel_22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_22.BackgroundTransparency = 1.000
TextLabel_22.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_22.BorderSizePixel = 0
TextLabel_22.Position = UDim2.new(0, 130, 0, 0)
TextLabel_22.Size = UDim2.new(0, 50, 0, 40)
TextLabel_22.Font = Enum.Font.SourceSansBold
TextLabel_22.Text = "+"
TextLabel_22.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_22.TextScaled = true
TextLabel_22.TextSize = 14.000
TextLabel_22.TextWrapped = true

UICorner_12.CornerRadius = UDim.new(0, 6)
UICorner_12.Parent = FLASHBACK_2

NOCLIP_2.Name = "NOCLIP"
NOCLIP_2.Parent = CharacterTela5
NOCLIP_2.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
NOCLIP_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
NOCLIP_2.BorderSizePixel = 0
NOCLIP_2.Position = UDim2.new(0, 15, 0, 60)
NOCLIP_2.Size = UDim2.new(0, 140, 0, 40)
NOCLIP_2.Font = Enum.Font.SourceSansBold
NOCLIP_2.Text = "NOCLIP"
NOCLIP_2.TextColor3 = Color3.fromRGB(197, 197, 197)
NOCLIP_2.TextSize = 14.000

TextLabel_23.Parent = NOCLIP_2
TextLabel_23.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_23.BackgroundTransparency = 1.000
TextLabel_23.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_23.BorderSizePixel = 0
TextLabel_23.Position = UDim2.new(0, 130, 0, 0)
TextLabel_23.Size = UDim2.new(0, 50, 0, 40)
TextLabel_23.Font = Enum.Font.SourceSansBold
TextLabel_23.Text = "+"
TextLabel_23.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_23.TextScaled = true
TextLabel_23.TextSize = 14.000
TextLabel_23.TextWrapped = true

UICorner_13.CornerRadius = UDim.new(0, 6)
UICorner_13.Parent = NOCLIP_2

CLICKTP_2.Name = "CLICK - TP"
CLICKTP_2.Parent = CharacterTela5
CLICKTP_2.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
CLICKTP_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
CLICKTP_2.BorderSizePixel = 0
CLICKTP_2.Position = UDim2.new(0, 15, 0, 10)
CLICKTP_2.Size = UDim2.new(0, 140, 0, 40)
CLICKTP_2.Font = Enum.Font.SourceSansBold
CLICKTP_2.Text = "CLICK - TP"
CLICKTP_2.TextColor3 = Color3.fromRGB(197, 197, 197)
CLICKTP_2.TextSize = 14.000

TextLabel_24.Parent = CLICKTP_2
TextLabel_24.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_24.BackgroundTransparency = 1.000
TextLabel_24.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_24.BorderSizePixel = 0
TextLabel_24.Position = UDim2.new(0, 130, 0, 0)
TextLabel_24.Size = UDim2.new(0, 50, 0, 40)
TextLabel_24.Font = Enum.Font.SourceSansBold
TextLabel_24.Text = "+"
TextLabel_24.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_24.TextScaled = true
TextLabel_24.TextSize = 14.000
TextLabel_24.TextWrapped = true

UICorner_14.CornerRadius = UDim.new(0, 6)
UICorner_14.Parent = CLICKTP_2

AboutTela6.Name = "AboutTela6"
AboutTela6.Parent = MainPanel
AboutTela6.BackgroundColor3 = Color3.fromRGB(153, 43, 7)
AboutTela6.BackgroundTransparency = 0.100
AboutTela6.BorderColor3 = Color3.fromRGB(0, 0, 0)
AboutTela6.BorderSizePixel = 0
AboutTela6.LayoutOrder = 6
AboutTela6.Position = UDim2.new(0, 100, 0, 28)
AboutTela6.Size = UDim2.new(1, -100, 1, -28)
AboutTela6.Visible = false
AboutTela6.ZIndex = 2

TextLabel_25.Parent = AboutTela6
TextLabel_25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_25.BackgroundTransparency = 1.000
TextLabel_25.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_25.BorderSizePixel = 0
TextLabel_25.Position = UDim2.new(0, 10, 0, 10)
TextLabel_25.Size = UDim2.new(0, 100, 0, 50)
TextLabel_25.Font = Enum.Font.SourceSans
TextLabel_25.Text = "Developer:"
TextLabel_25.TextColor3 = Color3.fromRGB(197, 197, 197)
TextLabel_25.TextSize = 20.000

TextLabel_26.Parent = AboutTela6
TextLabel_26.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_26.BackgroundTransparency = 1.000
TextLabel_26.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_26.BorderSizePixel = 0
TextLabel_26.Position = UDim2.new(0, 70, 0, 10)
TextLabel_26.Size = UDim2.new(0, 100, 0, 50)
TextLabel_26.Font = Enum.Font.SourceSans
TextLabel_26.Text = "trek"
TextLabel_26.TextColor3 = Color3.fromRGB(59, 16, 3)
TextLabel_26.TextSize = 20.000

TextLabel_27.Parent = AboutTela6
TextLabel_27.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_27.BackgroundTransparency = 1.000
TextLabel_27.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_27.BorderSizePixel = 0
TextLabel_27.Position = UDim2.new(0, 20, 0, 50)
TextLabel_27.Size = UDim2.new(0, 50, 0, 50)
TextLabel_27.Font = Enum.Font.SourceSans
TextLabel_27.Text = "V1.0.6"
TextLabel_27.TextColor3 = Color3.fromRGB(12, 255, 109)
TextLabel_27.TextSize = 20.000

TextLabel_28.Parent = AboutTela6
TextLabel_28.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_28.BackgroundTransparency = 1.000
TextLabel_28.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_28.BorderSizePixel = 0
TextLabel_28.Position = UDim2.new(0, 100, 0, 220)
TextLabel_28.Size = UDim2.new(0, 50, 0, 50)
TextLabel_28.Font = Enum.Font.SourceSans
TextLabel_28.Text = "donate:"
TextLabel_28.TextColor3 = Color3.fromRGB(197, 197, 197)
TextLabel_28.TextSize = 20.000

TextLabel_29.Parent = AboutTela6
TextLabel_29.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_29.BackgroundTransparency = 1.000
TextLabel_29.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_29.BorderSizePixel = 0
TextLabel_29.Position = UDim2.new(0, 210, 0, 220)
TextLabel_29.Size = UDim2.new(0, 50, 0, 50)
TextLabel_29.Font = Enum.Font.SourceSans
TextLabel_29.Text = "ajuda para compra pão"
TextLabel_29.TextColor3 = Color3.fromRGB(6, 255, 35)
TextLabel_29.TextSize = 20.000

OwnerTela7.Name = "OwnerTela7"
OwnerTela7.Parent = MainPanel
OwnerTela7.BackgroundColor3 = Color3.fromRGB(153, 43, 7)
OwnerTela7.BackgroundTransparency = 0.100
OwnerTela7.BorderColor3 = Color3.fromRGB(0, 0, 0)
OwnerTela7.BorderSizePixel = 0
OwnerTela7.LayoutOrder = 7
OwnerTela7.Position = UDim2.new(0, 100, 0, 28)
OwnerTela7.Size = UDim2.new(1, -100, 1, -28)
OwnerTela7.Visible = false
OwnerTela7.ZIndex = 2

ScrollingFrame_2.Parent = OwnerTela7
ScrollingFrame_2.Active = true
ScrollingFrame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame_2.BackgroundTransparency = 1.000
ScrollingFrame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame_2.BorderSizePixel = 0
ScrollingFrame_2.Size = UDim2.new(1, 0, 1, 0)
ScrollingFrame_2.ZIndex = 2

display.Name = "display"
display.Parent = ScrollingFrame_2
display.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
display.BackgroundTransparency = 1.000
display.BorderColor3 = Color3.fromRGB(0, 0, 0)
display.BorderSizePixel = 0
display.Position = UDim2.new(0, 225, 0, 120)
display.Size = UDim2.new(0, 50, 0, 70)
display.Font = Enum.Font.SourceSans
display.Text = "DisPlay:"
display.TextColor3 = Color3.fromRGB(255, 255, 255)
display.TextSize = 17.000

userid.Name = "userid"
userid.Parent = ScrollingFrame_2
userid.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
userid.BackgroundTransparency = 1.000
userid.BorderColor3 = Color3.fromRGB(0, 0, 0)
userid.BorderSizePixel = 0
userid.Position = UDim2.new(0, 225, 0, 120)
userid.Size = UDim2.new(0, 50, 0, 30)
userid.Font = Enum.Font.SourceSans
userid.Text = "UserID:"
userid.TextColor3 = Color3.fromRGB(255, 255, 255)
userid.TextSize = 17.000

AVATA_2.Name = "AVATA"
AVATA_2.Parent = ScrollingFrame_2
AVATA_2.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
AVATA_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
AVATA_2.BorderSizePixel = 0
AVATA_2.Position = UDim2.new(0, 200, 0, 20)
AVATA_2.Size = UDim2.new(0, 100, 0, 100)
AVATA_2.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UICorner_15.CornerRadius = UDim.new(1, 0)
UICorner_15.Parent = AVATA_2

OWNER_2.Name = "OWNER"
OWNER_2.Parent = ScrollingFrame_2
OWNER_2.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
OWNER_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
OWNER_2.BorderSizePixel = 0
OWNER_2.Position = UDim2.new(0, 15, 0, 20)
OWNER_2.Size = UDim2.new(0, 140, 0, 40)
OWNER_2.Font = Enum.Font.SourceSansBold
OWNER_2.Text = "OWNER"
OWNER_2.TextColor3 = Color3.fromRGB(197, 197, 197)
OWNER_2.TextSize = 14.000

UICorner_16.CornerRadius = UDim.new(0, 6)
UICorner_16.Parent = OWNER_2

username_2.Name = "@username"
username_2.Parent = ScrollingFrame_2
username_2.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
username_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
username_2.BorderSizePixel = 0
username_2.Position = UDim2.new(0, 175, 0, 170)
username_2.Size = UDim2.new(0, 150, 0, 30)
username_2.Font = Enum.Font.SourceSans
username_2.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
username_2.PlaceholderText = "@username"
username_2.Text = ""
username_2.TextColor3 = Color3.fromRGB(255, 255, 255)
username_2.TextSize = 14.000

UICorner_17.CornerRadius = UDim.new(0, 6)
UICorner_17.Parent = username_2

MEOW.Name = "MEOW"
MEOW.Parent = ScrollingFrame_2
MEOW.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
MEOW.BorderColor3 = Color3.fromRGB(0, 0, 0)
MEOW.BorderSizePixel = 0
MEOW.Position = UDim2.new(0, 15, 0, 70)
MEOW.Size = UDim2.new(0, 140, 0, 40)
MEOW.Font = Enum.Font.SourceSansBold
MEOW.Text = "MEOW"
MEOW.TextColor3 = Color3.fromRGB(197, 197, 197)
MEOW.TextSize = 14.000

UICorner_18.CornerRadius = UDim.new(0, 6)
UICorner_18.Parent = MEOW

MANAGER.Name = "MANAGER"
MANAGER.Parent = ScrollingFrame_2
MANAGER.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
MANAGER.BorderColor3 = Color3.fromRGB(0, 0, 0)
MANAGER.BorderSizePixel = 0
MANAGER.Position = UDim2.new(0, 15, 0, 120)
MANAGER.Size = UDim2.new(0, 140, 0, 40)
MANAGER.Font = Enum.Font.SourceSansBold
MANAGER.Text = "MANAGER"
MANAGER.TextColor3 = Color3.fromRGB(197, 197, 197)
MANAGER.TextSize = 14.000

UICorner_19.CornerRadius = UDim.new(0, 6)
UICorner_19.Parent = MANAGER

STAFF_2.Name = "STAFF"
STAFF_2.Parent = ScrollingFrame_2
STAFF_2.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
STAFF_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
STAFF_2.BorderSizePixel = 0
STAFF_2.Position = UDim2.new(0, 15, 0, 170)
STAFF_2.Size = UDim2.new(0, 140, 0, 40)
STAFF_2.Font = Enum.Font.SourceSansBold
STAFF_2.Text = "STAFF"
STAFF_2.TextColor3 = Color3.fromRGB(197, 197, 197)
STAFF_2.TextSize = 14.000

UICorner_20.CornerRadius = UDim.new(0, 6)
UICorner_20.Parent = STAFF_2

SUPORTE.Name = "SUPORTE"
SUPORTE.Parent = ScrollingFrame_2
SUPORTE.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
SUPORTE.BorderColor3 = Color3.fromRGB(0, 0, 0)
SUPORTE.BorderSizePixel = 0
SUPORTE.Position = UDim2.new(0, 15, 0, 220)
SUPORTE.Size = UDim2.new(0, 140, 0, 40)
SUPORTE.Font = Enum.Font.SourceSansBold
SUPORTE.Text = "SUPORTE"
SUPORTE.TextColor3 = Color3.fromRGB(197, 197, 197)
SUPORTE.TextSize = 14.000

UICorner_21.CornerRadius = UDim.new(0, 6)
UICorner_21.Parent = SUPORTE

VIP4E20.Name = "VIP 4E20"
VIP4E20.Parent = ScrollingFrame_2
VIP4E20.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
VIP4E20.BorderColor3 = Color3.fromRGB(0, 0, 0)
VIP4E20.BorderSizePixel = 0
VIP4E20.Position = UDim2.new(0, 15, 0, 270)
VIP4E20.Size = UDim2.new(0, 140, 0, 40)
VIP4E20.Font = Enum.Font.SourceSansBold
VIP4E20.Text = "VIP 4E20"
VIP4E20.TextColor3 = Color3.fromRGB(197, 197, 197)
VIP4E20.TextSize = 14.000

UICorner_22.CornerRadius = UDim.new(0, 6)
UICorner_22.Parent = VIP4E20

DEVELOP.Name = "DEVELOP"
DEVELOP.Parent = ScrollingFrame_2
DEVELOP.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
DEVELOP.BorderColor3 = Color3.fromRGB(0, 0, 0)
DEVELOP.BorderSizePixel = 0
DEVELOP.Position = UDim2.new(0, 15, 0, 320)
DEVELOP.Size = UDim2.new(0, 140, 0, 40)
DEVELOP.Font = Enum.Font.SourceSansBold
DEVELOP.Text = "DEVELOP"
DEVELOP.TextColor3 = Color3.fromRGB(197, 197, 197)
DEVELOP.TextSize = 14.000

UICorner_23.CornerRadius = UDim.new(0, 6)
UICorner_23.Parent = DEVELOP

BABY.Name = "BABY"
BABY.Parent = ScrollingFrame_2
BABY.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
BABY.BorderColor3 = Color3.fromRGB(0, 0, 0)
BABY.BorderSizePixel = 0
BABY.Position = UDim2.new(0, 15, 0, 370)
BABY.Size = UDim2.new(0, 140, 0, 40)
BABY.Font = Enum.Font.SourceSansBold
BABY.Text = "BABY"
BABY.TextColor3 = Color3.fromRGB(197, 197, 197)
BABY.TextSize = 14.000

UICorner_24.CornerRadius = UDim.new(0, 6)
UICorner_24.Parent = BABY

ADD.Name = "ADD"
ADD.Parent = ScrollingFrame_2
ADD.BackgroundColor3 = Color3.fromRGB(89, 255, 0)
ADD.BorderColor3 = Color3.fromRGB(0, 0, 0)
ADD.BorderSizePixel = 0
ADD.Position = UDim2.new(0, 180, 0, 210)
ADD.Size = UDim2.new(0, 140, 0, 40)
ADD.Font = Enum.Font.SourceSansBold
ADD.Text = "ADD"
ADD.TextColor3 = Color3.fromRGB(39, 39, 39)
ADD.TextSize = 14.000

UICorner_25.CornerRadius = UDim.new(0, 6)
UICorner_25.Parent = ADD

StaffTela8.Name = "StaffTela8"
StaffTela8.Parent = MainPanel
StaffTela8.BackgroundColor3 = Color3.fromRGB(153, 43, 7)
StaffTela8.BackgroundTransparency = 0.100
StaffTela8.BorderColor3 = Color3.fromRGB(0, 0, 0)
StaffTela8.BorderSizePixel = 0
StaffTela8.LayoutOrder = 8
StaffTela8.Position = UDim2.new(0, 100, 0, 28)
StaffTela8.Size = UDim2.new(1, -100, 1, -28)
StaffTela8.Visible = false
StaffTela8.ZIndex = 2

TextLabel_30.Parent = StaffTela8
TextLabel_30.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_30.BackgroundTransparency = 1.000
TextLabel_30.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_30.BorderSizePixel = 0
TextLabel_30.Position = UDim2.new(0, 100, 0, 0)
TextLabel_30.Size = UDim2.new(0, 200, 0, 50)
TextLabel_30.Font = Enum.Font.Unknown
TextLabel_30.Text = "Teleport User:"
TextLabel_30.TextColor3 = Color3.fromRGB(59, 16, 3)
TextLabel_30.TextSize = 30.000
TextLabel_30.TextWrapped = true

teleportuser.Name = "teleportuser"
teleportuser.Parent = StaffTela8
teleportuser.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
teleportuser.BackgroundTransparency = 2.000
teleportuser.BorderColor3 = Color3.fromRGB(0, 0, 0)
teleportuser.BorderSizePixel = 0
teleportuser.Position = UDim2.new(0, 0, 0, 50)
teleportuser.Size = UDim2.new(0, 400, 0, 252)

ScrollingFrame_3.Parent = StaffTela8
ScrollingFrame_3.Active = true
ScrollingFrame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame_3.BackgroundTransparency = 1.000
ScrollingFrame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame_3.BorderSizePixel = 0
ScrollingFrame_3.Position = UDim2.new(0, 15, 0, 50)
ScrollingFrame_3.Size = UDim2.new(0, 400, 0, 252)

UIListLayout_2.Parent = ScrollingFrame_3
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 15)

TELEPORT.Name = "TELEPORT"
TELEPORT.Parent = ScrollingFrame_3
TELEPORT.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
TELEPORT.BorderColor3 = Color3.fromRGB(0, 0, 0)
TELEPORT.BorderSizePixel = 0
TELEPORT.Size = UDim2.new(0, 150, 0, 50)
TELEPORT.Font = Enum.Font.SourceSansBold
TELEPORT.Text = "TELEPORT"
TELEPORT.TextColor3 = Color3.fromRGB(197, 197, 197)
TELEPORT.TextSize = 20.000

BanTela9.Name = "BanTela9"
BanTela9.Parent = MainPanel
BanTela9.BackgroundColor3 = Color3.fromRGB(153, 43, 7)
BanTela9.BackgroundTransparency = 0.100
BanTela9.BorderColor3 = Color3.fromRGB(0, 0, 0)
BanTela9.BorderSizePixel = 0
BanTela9.LayoutOrder = 9
BanTela9.Position = UDim2.new(0, 100, 0, 28)
BanTela9.Size = UDim2.new(1, -100, 1, -28)
BanTela9.Visible = false
BanTela9.ZIndex = 2

BANIMENTO.Name = "BANIMENTO"
BANIMENTO.Parent = BanTela9
BANIMENTO.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BANIMENTO.BackgroundTransparency = 1.000
BANIMENTO.BorderColor3 = Color3.fromRGB(0, 0, 0)
BANIMENTO.BorderSizePixel = 0
BANIMENTO.Position = UDim2.new(0, 100, 0, 0)
BANIMENTO.Size = UDim2.new(0, 200, 0, 50)
BANIMENTO.Font = Enum.Font.Unknown
BANIMENTO.Text = "Banimento Painel:"
BANIMENTO.TextColor3 = Color3.fromRGB(59, 16, 3)
BANIMENTO.TextSize = 30.000
BANIMENTO.TextWrapped = true

BAN_2.Name = "BAN"
BAN_2.Parent = BanTela9
BAN_2.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
BAN_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
BAN_2.BorderSizePixel = 0
BAN_2.Position = UDim2.new(0, 14, 0, 200)
BAN_2.Size = UDim2.new(0, 170, 0, 40)
BAN_2.Font = Enum.Font.SourceSansBold
BAN_2.Text = "BAN"
BAN_2.TextColor3 = Color3.fromRGB(255, 255, 255)
BAN_2.TextSize = 14.000

TextBox.Parent = BanTela9
TextBox.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
TextBox.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0, 85, 0, 141)
TextBox.Size = UDim2.new(0, 200, 0, 50)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
TextBox.PlaceholderText = "ID: 00000000"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.000

ImageLabel.Parent = BanTela9
ImageLabel.BackgroundColor3 = Color3.fromRGB(59, 16, 3)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0, 160, 0, 40)
ImageLabel.Size = UDim2.new(0, 60, 0, 60)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UICorner_26.CornerRadius = UDim.new(1, 0)
UICorner_26.Parent = ImageLabel

USERID.Name = "USERID"
USERID.Parent = BanTela9
USERID.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
USERID.BackgroundTransparency = 1.000
USERID.BorderColor3 = Color3.fromRGB(0, 0, 0)
USERID.BorderSizePixel = 0
USERID.Position = UDim2.new(0, 160, 0, 110)
USERID.Size = UDim2.new(0, 60, 0, 20)
USERID.Font = Enum.Font.SourceSans
USERID.Text = "USER ID :"
USERID.TextColor3 = Color3.fromRGB(255, 255, 255)
USERID.TextSize = 14.000

DESBANIDO.Name = "DESBANIDO"
DESBANIDO.Parent = BanTela9
DESBANIDO.BackgroundColor3 = Color3.fromRGB(0, 255, 17)
DESBANIDO.BorderColor3 = Color3.fromRGB(0, 0, 0)
DESBANIDO.BorderSizePixel = 0
DESBANIDO.Position = UDim2.new(0, 188, 0, 200)
DESBANIDO.Size = UDim2.new(0, 170, 0, 40)
DESBANIDO.Font = Enum.Font.SourceSansBold
DESBANIDO.Text = "DESBANIDO"
DESBANIDO.TextColor3 = Color3.fromRGB(6, 6, 2)
DESBANIDO.TextSize = 14.000

DESBANIDO_2.Name = "DESBANIDO"
DESBANIDO_2.Parent = BanTela9
DESBANIDO_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DESBANIDO_2.BackgroundTransparency = 1.000
DESBANIDO_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
DESBANIDO_2.BorderSizePixel = 0
DESBANIDO_2.Position = UDim2.new(0, 250, 0, 60)
DESBANIDO_2.Size = UDim2.new(0, 60, 0, 20)
DESBANIDO_2.Visible = false
DESBANIDO_2.Font = Enum.Font.SourceSans
DESBANIDO_2.Text = "DESBANIDO!"
DESBANIDO_2.TextColor3 = Color3.fromRGB(11, 255, 27)
DESBANIDO_2.TextSize = 14.000

disponivel.Name = "disponivel"
disponivel.Parent = BanTela9
disponivel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
disponivel.BackgroundTransparency = 1.000
disponivel.BorderColor3 = Color3.fromRGB(0, 0, 0)
disponivel.BorderSizePixel = 0
disponivel.Position = UDim2.new(0, 250, 0, 60)
disponivel.Size = UDim2.new(0, 60, 0, 20)
disponivel.Font = Enum.Font.SourceSans
disponivel.Text = "BANIDO!"
disponivel.TextColor3 = Color3.fromRGB(255, 0, 0)
disponivel.TextSize = 14.000

BANIDO.Name = "BANIDO"
BANIDO.Parent = BanTela9
BANIDO.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BANIDO.BackgroundTransparency = 1.000
BANIDO.BorderColor3 = Color3.fromRGB(0, 0, 0)
BANIDO.BorderSizePixel = 0
BANIDO.Position = UDim2.new(0, 250, 0, 60)
BANIDO.Size = UDim2.new(0, 60, 0, 20)
BANIDO.Font = Enum.Font.SourceSans
BANIDO.Text = "BANIDO!"
BANIDO.TextColor3 = Color3.fromRGB(255, 0, 0)
BANIDO.TextSize = 14.000

BANIDO_2.Name = "BANIDO"
BANIDO_2.Parent = MainPanel
BANIDO_2.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
BANIDO_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
BANIDO_2.BorderSizePixel = 0
BANIDO_2.Size = UDim2.new(1, 0, 1, 0)
BANIDO_2.Visible = false
BANIDO_2.ZIndex = 6

VOCEFOIBANIDODOPAINEL.Name = "VOCE FOI BANIDO DO PAINEL!"
VOCEFOIBANIDODOPAINEL.Parent = BANIDO_2
VOCEFOIBANIDODOPAINEL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VOCEFOIBANIDODOPAINEL.BackgroundTransparency = 1.000
VOCEFOIBANIDODOPAINEL.BorderColor3 = Color3.fromRGB(0, 0, 0)
VOCEFOIBANIDODOPAINEL.BorderSizePixel = 0
VOCEFOIBANIDODOPAINEL.Position = UDim2.new(0, 115, 0, 100)
VOCEFOIBANIDODOPAINEL.Size = UDim2.new(0, 280, 0, 50)
VOCEFOIBANIDODOPAINEL.Font = Enum.Font.SourceSansBold
VOCEFOIBANIDODOPAINEL.Text = "VOCE FOI BANIDO DO PAINEL!"
VOCEFOIBANIDODOPAINEL.TextColor3 = Color3.fromRGB(255, 0, 0)
VOCEFOIBANIDODOPAINEL.TextScaled = true
VOCEFOIBANIDODOPAINEL.TextSize = 14.000
VOCEFOIBANIDODOPAINEL.TextWrapped = true

COMPREODESBANNONOSSODISCORD.Name = "COMPRE O DESBAN NO NOSSO DISCORD!"
COMPREODESBANNONOSSODISCORD.Parent = BANIDO_2
COMPREODESBANNONOSSODISCORD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
COMPREODESBANNONOSSODISCORD.BackgroundTransparency = 1.000
COMPREODESBANNONOSSODISCORD.BorderColor3 = Color3.fromRGB(0, 0, 0)
COMPREODESBANNONOSSODISCORD.BorderSizePixel = 0
COMPREODESBANNONOSSODISCORD.Position = UDim2.new(0, 150, 0, 130)
COMPREODESBANNONOSSODISCORD.Size = UDim2.new(0, 210, 0, 50)
COMPREODESBANNONOSSODISCORD.Font = Enum.Font.SourceSans
COMPREODESBANNONOSSODISCORD.Text = "COMPRE O DESBAN NO NOSSO DISCORD!"
COMPREODESBANNONOSSODISCORD.TextColor3 = Color3.fromRGB(255, 255, 255)
COMPREODESBANNONOSSODISCORD.TextSize = 17.000
COMPREODESBANNONOSSODISCORD.TextWrapped = true

ImageLabel_2.Parent = BANIDO_2
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(0, 230, 0, 40)
ImageLabel_2.Size = UDim2.new(0, 60, 0, 60)
ImageLabel_2.Image = "rbxassetid://121737426060734"

UICorner_27.CornerRadius = UDim.new(1, 0)
UICorner_27.Parent = ImageLabel_2

clicker.Name = "clicker"
clicker.Parent = ScreenGui
clicker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
clicker.BorderColor3 = Color3.fromRGB(0, 0, 0)
clicker.BorderSizePixel = 0
clicker.Position = UDim2.new(0, 0, 0.5, 0)
clicker.Size = UDim2.new(0, 30, 0, 30)
clicker.Image = "rbxassetid://85392141697801"
clicker.ImageColor3 = Color3.fromRGB(255, 65, 13)

UICorner_28.CornerRadius = UDim.new(1, 0)
UICorner_28.Parent = clicker

-- Scripts:

local function OYSC_fake_script() -- MainPanel.LocalScript 
	local script = Instance.new('LocalScript', MainPanel)

	-- ============================================================
	--  4E20 PANEL - LocalScript Corrigido v2.6
	--  COLE ESTE SCRIPT DENTRO DO MainPanel (LocalScript)
	--  OU execute pelo executor — ambos funcionam
	-- ============================================================
	
	local Players          = game:GetService("Players")
	local TweenService     = game:GetService("TweenService")
	local HttpService      = game:GetService("HttpService")
	local UserInputService = game:GetService("UserInputService")
	local RunService       = game:GetService("RunService")
	local Stats            = game:GetService("Stats")
	
	local localPlayer = Players.LocalPlayer
	local pGui        = localPlayer:WaitForChild("PlayerGui")
	
	-- ============================================================
	-- [[ 1. REFERÊNCIAS DA UI — CORRIGIDO ]]
	-- Funciona tanto como LocalScript dentro do MainPanel
	-- quanto executado diretamente pelo executor
	-- ============================================================
	
	-- Detecta de onde o script está rodando
	local mainPanel, screenGui
	
	-- Tenta encontrar pelo StarterGui (quando executado pelo executor)
	local function encontrarMainPanel()
		-- Primeiro tenta pelo PlayerGui (já copiado do StarterGui)
		local sg = pGui:FindFirstChild("ScreenGui")
		if sg then
			local mp = sg:FindFirstChild("MainPanel")
			if mp then return mp, sg end
		end
	
		-- Tenta qualquer ScreenGui dentro do PlayerGui
		for _, obj in pairs(pGui:GetChildren()) do
			if obj:IsA("ScreenGui") then
				local mp = obj:FindFirstChild("MainPanel")
				if mp then return mp, obj end
			end
		end
	
		-- Tenta no StarterGui diretamente
		local starterGui = game:GetService("StarterGui")
		for _, obj in pairs(starterGui:GetChildren()) do
			if obj:IsA("ScreenGui") then
				local mp = obj:FindFirstChild("MainPanel")
				if mp then
					-- Clona pro PlayerGui se não estiver lá ainda
					local clone = obj:Clone()
					clone.Parent = pGui
					return clone:FindFirstChild("MainPanel"), clone
				end
			end
		end
	
		return nil, nil
	end
	
	-- Se estiver rodando como LocalScript dentro do MainPanel
	if script.Parent and script.Parent:IsA("Frame") then
		mainPanel = script.Parent
		screenGui = mainPanel.Parent
	else
		-- Executado pelo executor — aguarda a GUI carregar
		local tentativas = 0
		repeat
			mainPanel, screenGui = encontrarMainPanel()
			if not mainPanel then task.wait(0.5) end
			tentativas = tentativas + 1
		until mainPanel or tentativas >= 20
	
		if not mainPanel then
			warn("[4E20] MainPanel não encontrado! Verifique se a ScreenGui está no StarterGui.")
			return
		end
	end
	
	-- Aguarda o MainPanel estar visível e carregado
	task.wait(0.2)
	
	-- Botões laterais
	local botoes       = mainPanel:WaitForChild("BOTOES"):WaitForChild("ScrollingFrame")
	local btnHome      = botoes:WaitForChild("HOME")
	local btnMisc      = botoes:WaitForChild("MISC")
	local btnCharacter = botoes:WaitForChild("CHARACTER")
	local btnAbout     = botoes:WaitForChild("ABOUT")
	local btnOwner     = botoes:WaitForChild("OWNER")
	local btnStaff     = botoes:WaitForChild("STAFF")
	local btnBan       = botoes:WaitForChild("BAN")
	local btnTarget    = botoes:WaitForChild("TARGET")
	local btnVip       = botoes:FindFirstChild("VIP")
	
	-- Telas
	local homeTela   = mainPanel:WaitForChild("HomeTela1")
	local miscTela   = mainPanel:WaitForChild("MiscTela4")
	local charTela   = mainPanel:WaitForChild("CharacterTela5")
	local aboutTela  = mainPanel:WaitForChild("AboutTela6")
	local ownerTela  = mainPanel:WaitForChild("OwnerTela7")
	local staffTela  = mainPanel:WaitForChild("StaffTela8")
	local banTela    = mainPanel:WaitForChild("BanTela9")
	local targetTela = mainPanel:WaitForChild("TarGetTela3")
	local vipTela    = mainPanel:FindFirstChild("VipTela2")
	local banidoFrame= mainPanel:WaitForChild("BANIDO")
	
	-- OwnerTela7
	local ownerScroll  = ownerTela:WaitForChild("ScrollingFrame")
	local inputNome    = ownerScroll:WaitForChild("@username")
	local botaoAdd     = ownerScroll:WaitForChild("ADD")
	local imagemAvatar = ownerScroll:WaitForChild("AVATA")
	local textoDisplay = ownerScroll:WaitForChild("display")
	local textoID      = ownerScroll:WaitForChild("userid")
	
	-- BanTela9
	local banTextBox      = banTela:WaitForChild("TextBox")
	local banBtn          = banTela:WaitForChild("BAN")
	local desbanBtn       = banTela:WaitForChild("DESBANIDO")
	local banImgLabel     = banTela:WaitForChild("ImageLabel")
	local banNomeLabel    = banTela:WaitForChild("BANIDO")
	local banStatusLabel  = banTela:WaitForChild("disponivel")
	local banUserIdLabel  = banTela:WaitForChild("USERID")
	
	-- StaffTela8
	local staffScroll      = staffTela:WaitForChild("ScrollingFrame")
	local btnTeleportStaff = staffScroll:FindFirstChild("TELEPORT")
	
	-- HomeTela1
	local homeImagem  = homeTela:FindFirstChild("IMAGEM")
	local homeNome    = homeTela:FindFirstChild("name")
	local homePing    = homeTela:FindFirstChild("PING")
	local homeOnline  = homeTela:FindFirstChild("ONLINE")
	local homeData    = homeTela:FindFirstChild("DATA")
	
	-- ============================================================
	-- [[ 2. CONFIGURAÇÕES GERAIS ]]
	-- ============================================================
	local SERVIDOR      = "https://foure20-backend.onrender.com"
	local GAME_ID       = "4E20_GLOBAL"
	local MEU_ID_DONO   = 9657477548
	local IMAGEM_PADRAO = "rbxassetid://4620867021"
	
	local configuracaoTags = {
		["OWNER"]   = Color3.fromRGB(150, 0,   0),
		["MEOW"]    = Color3.fromRGB(255, 100, 255),
		["MANAGER"] = Color3.fromRGB(85,  0,   255),
		["STAFF"]   = Color3.fromRGB(255, 165, 0),
		["SUPORTE"] = Color3.fromRGB(0,   200, 255),
		["VIP 4E20"]= Color3.fromRGB(0,   255, 100),
		["DEVELOP"] = Color3.fromRGB(100, 255, 255),
		["BABY"]    = Color3.fromRGB(255, 182, 193),
		["USER"]    = Color3.fromRGB(255, 255, 255),
	}
	
	local tagsOwnerAcesso = {["OWNER"]=true, ["MANAGER"]=true}
	local tagsStaffAcesso = {["OWNER"]=true, ["MANAGER"]=true, ["STAFF"]=true, ["MEOW"]=true}
	local tagsBanAcesso   = {["OWNER"]=true}
	local tagsVipAcesso   = {["OWNER"]=true, ["MANAGER"]=true, ["MEOW"]=true, ["VIP 4E20"]=true, ["BABY"]=true}
	
	local tagSelecionada      = ""
	local meuCargo            = "USER"
	local tagBotaoSelecionado = nil
	local telaAtual           = nil
	local playersComPainel    = {}
	local botoesStaff         = {}
	local spectandoPlayer     = nil
	
	-- ============================================================
	-- [[ 3. LIMPEZA DE NOTIFICAÇÕES DUPLICADAS ]]
	-- ============================================================
	for _, obj in pairs(pGui:GetChildren()) do
		if obj.Name == "NotificacoesPainel" then obj:Destroy() end
	end
	
	-- ============================================================
	-- [[ 4. GUI DE NOTIFICAÇÕES ]]
	-- ============================================================
	local notifGui = Instance.new("ScreenGui")
	notifGui.Name         = "NotificacoesPainel"
	notifGui.ResetOnSpawn = false
	notifGui.Parent       = pGui
	
	local function notificar(titulo, texto, duracao, cargo)
		duracao = duracao or 4
		for _, f in pairs(notifGui:GetChildren()) do
			if f:IsA("Frame") then
				TweenService:Create(f, TweenInfo.new(0.3), {
					Position = UDim2.new(1, -300, 1, f.Position.Y.Offset - 85)
				}):Play()
			end
		end
	
		local corCargo = configuracaoTags[cargo] or Color3.fromRGB(150, 0, 0)
		local frame = Instance.new("Frame", notifGui)
		frame.Size             = UDim2.new(0, 280, 0, 75)
		frame.Position         = UDim2.new(1, 10, 1, -95)
		frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		frame.BorderSizePixel  = 0
		frame.AnchorPoint      = Vector2.new(0, 1)
		Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)
	
		local borda = Instance.new("Frame", frame)
		borda.Size             = UDim2.new(0, 5, 1, 0)
		borda.BackgroundColor3 = corCargo
		borda.BorderSizePixel  = 0
		Instance.new("UICorner", borda).CornerRadius = UDim.new(0, 8)
	
		local lTitulo = Instance.new("TextLabel", frame)
		lTitulo.Size               = UDim2.new(1, -20, 0, 30)
		lTitulo.Position           = UDim2.new(0, 15, 0, 8)
		lTitulo.BackgroundTransparency = 1
		lTitulo.Text               = titulo:upper()
		lTitulo.TextColor3         = Color3.fromRGB(255, 255, 255)
		lTitulo.Font               = Enum.Font.GothamBold
		lTitulo.TextSize           = 13
		lTitulo.TextXAlignment     = Enum.TextXAlignment.Left
	
		local lTexto = Instance.new("TextLabel", frame)
		lTexto.Size                = UDim2.new(1, -20, 0, 25)
		lTexto.Position            = UDim2.new(0, 15, 0, 36)
		lTexto.BackgroundTransparency = 1
		lTexto.Text                = texto
		lTexto.TextColor3          = Color3.fromRGB(200, 200, 200)
		lTexto.Font                = Enum.Font.Gotham
		lTexto.TextSize            = 11
		lTexto.TextXAlignment      = Enum.TextXAlignment.Left
	
		TweenService:Create(frame, TweenInfo.new(0.4, Enum.EasingStyle.Back), {
			Position = UDim2.new(1, -300, 1, -95)
		}):Play()
	
		task.delay(duracao, function()
			if frame and frame.Parent then
				TweenService:Create(frame, TweenInfo.new(0.3), {
					Position = UDim2.new(1, 10, 1, frame.Position.Y.Offset)
				}):Play()
				task.wait(0.3)
				frame:Destroy()
			end
		end)
	end
	
	-- ============================================================
	-- [[ 5. HTTP / REDE ]]
	-- ============================================================
	local function httpRequest(dados)
		local r = (syn and syn.request)
			or (http and http.request)
			or (fluxus and fluxus.request)
			or (getgenv and getgenv().request)
			or request or HttpRequest
		if not r then return nil end
		local ok, res = pcall(function() return r(dados) end)
		return ok and res or nil
	end
	
	local function corParaTabela(cor)
		return {math.floor(cor.R*255), math.floor(cor.G*255), math.floor(cor.B*255)}
	end
	
	local function tabelaParaCor(t)
		if type(t) ~= "table" then return Color3.fromRGB(255,255,255) end
		return Color3.fromRGB(t[1] or 255, t[2] or 255, t[3] or 255)
	end
	
	local function enviarTag(playerName, cargo, cor)
		pcall(function()
			httpRequest({
				Url     = SERVIDOR.."/settag",
				Method  = "POST",
				Headers = {["Content-Type"]="application/json"},
				Body    = HttpService:JSONEncode({
					player = playerName, cargo = cargo,
					cor = corParaTabela(cor), gameId = GAME_ID
				})
			})
		end)
	end
	
	local function buscarTodosCargos()
		local res = httpRequest({Url=SERVIDOR.."/gettags?gameId="..GAME_ID, Method="GET"})
		if not (res and res.Body) then return nil end
		local ok, dados = pcall(function() return HttpService:JSONDecode(res.Body) end)
		return ok and dados or nil
	end
	
	-- ============================================================
	-- [[ 6. SISTEMA DE BAN ]]
	-- ============================================================
	local function banirPlayer(userId)
		pcall(function()
			httpRequest({
				Url = SERVIDOR.."/ban", Method = "POST",
				Headers = {["Content-Type"]="application/json"},
				Body = HttpService:JSONEncode({userId=tostring(userId), gameId=GAME_ID})
			})
		end)
	end
	
	local function desbanirPlayer(userId)
		pcall(function()
			httpRequest({
				Url = SERVIDOR.."/unban", Method = "POST",
				Headers = {["Content-Type"]="application/json"},
				Body = HttpService:JSONEncode({userId=tostring(userId), gameId=GAME_ID})
			})
		end)
	end
	
	local function checarBan(userId)
		local res = httpRequest({
			Url = SERVIDOR.."/isbanned?userId="..tostring(userId).."&gameId="..GAME_ID,
			Method = "GET"
		})
		if not (res and res.Body) then return false end
		local ok, dados = pcall(function() return HttpService:JSONDecode(res.Body) end)
		return ok and dados and dados.banned == true
	end
	
	-- ============================================================
	-- [[ 7. TAGS VISUAIS ]]
	-- ============================================================
	local function detectarPlataforma(p)
		if p == localPlayer then
			local toque = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled
			return toque and "📱" or "🖥️"
		end
		return ""
	end
	
	local function aplicarTagVisual(p, texto, cor)
		if not playersComPainel[p.UserId] then return end
		if not (p.Character and p.Character:FindFirstChild("Head")) then return end
	
		for _, o in pairs(p.Character.Head:GetChildren()) do
			if o.Name == "TagPainel" then o:Destroy() end
		end
	
		local plataforma = detectarPlataforma(p)
		local textoFinal = plataforma ~= "" and (plataforma .. " " .. texto) or texto
	
		local bill = Instance.new("BillboardGui", p.Character.Head)
		bill.Name           = "TagPainel"
		bill.StudsOffset    = Vector3.new(0, 3.2, 0)   -- mais acima da cabeça
		bill.AlwaysOnTop    = false
		bill.MaxDistance    = 60
		bill.Size           = UDim2.new(0, 120, 0, 20) -- tamanho fixo em pixels
		bill.SizeOffset     = Vector2.new(0, 0)
	
		local label = Instance.new("TextLabel", bill)
		label.Size                   = UDim2.new(1, 0, 1, 0)
		label.BackgroundTransparency = 1
		label.TextColor3             = cor
		label.Font                   = Enum.Font.GothamBold
		label.RichText               = true
		label.TextScaled             = false           -- fixo, não cresce com zoom
		label.TextSize               = 13
		label.Text                   = "<b>"..textoFinal.."</b>"
		label.TextStrokeTransparency = 0.4
		label.TextStrokeColor3       = Color3.new(0, 0, 0)
		label.TextXAlignment         = Enum.TextXAlignment.Center
	
		if texto == "OWNER" or texto == "MANAGER" or texto == "MEOW" then
			local grad = Instance.new("UIGradient", label)
			grad.Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0,    cor),
				ColorSequenceKeypoint.new(0.30, cor),
				ColorSequenceKeypoint.new(0.44, Color3.fromRGB(255,255,255)),
				ColorSequenceKeypoint.new(0.50, Color3.fromRGB(255,255,255)),
				ColorSequenceKeypoint.new(0.56, Color3.fromRGB(255,255,255)),
				ColorSequenceKeypoint.new(0.70, cor),
				ColorSequenceKeypoint.new(1,    cor),
			})
			task.spawn(function()
				while label and label.Parent do
					grad.Offset = Vector2.new(-1.5, 0)
					TweenService:Create(grad, TweenInfo.new(3.0, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
						Offset = Vector2.new(1.5, 0)
					}):Play()
					task.wait(3.8)
				end
			end)
		end
	end
	
	local function removerTagVisual(p)
		if p.Character and p.Character:FindFirstChild("Head") then
			for _, o in pairs(p.Character.Head:GetChildren()) do
				if o.Name == "TagPainel" then o:Destroy() end
			end
		end
	end
	
	-- ============================================================
	-- [[ 8. VIP - TELA DE BLOQUEIO ]]
	-- ============================================================
	local vipLockFrame = nil
	
	local function criarVipLock()
		if not vipTela then return end
		if vipLockFrame and vipLockFrame.Parent then
			vipLockFrame:Destroy()
			vipLockFrame = nil
		end
	
		vipLockFrame = Instance.new("Frame")
		vipLockFrame.Name                   = "VipLock"
		vipLockFrame.Size                   = UDim2.new(1, 0, 1, 0)
		vipLockFrame.Position               = UDim2.new(0, 0, 0, 0)
		vipLockFrame.BackgroundColor3       = Color3.fromRGB(15, 15, 15)
		vipLockFrame.BackgroundTransparency = 0.1
		vipLockFrame.BorderSizePixel        = 0
		vipLockFrame.ZIndex                 = 100
		vipLockFrame.Parent                 = vipTela
		Instance.new("UICorner", vipLockFrame).CornerRadius = UDim.new(0, 8)
	
		local icone = Instance.new("TextLabel", vipLockFrame)
		icone.Size               = UDim2.new(1, 0, 0, 50)
		icone.Position           = UDim2.new(0, 0, 0.3, 0)
		icone.BackgroundTransparency = 1
		icone.Text               = "🔒"
		icone.TextSize           = 40
		icone.Font               = Enum.Font.GothamBold
		icone.ZIndex             = 101
	
		local lblBloqueado = Instance.new("TextLabel", vipLockFrame)
		lblBloqueado.Size               = UDim2.new(1, -20, 0, 30)
		lblBloqueado.Position           = UDim2.new(0, 10, 0.5, 5)
		lblBloqueado.BackgroundTransparency = 1
		lblBloqueado.Text               = "ACESSO RESTRITO"
		lblBloqueado.TextColor3         = Color3.fromRGB(255, 255, 255)
		lblBloqueado.Font               = Enum.Font.GothamBold
		lblBloqueado.TextSize           = 16
		lblBloqueado.ZIndex             = 101
	
		local lblDesc = Instance.new("TextLabel", vipLockFrame)
		lblDesc.Size               = UDim2.new(1, -20, 0, 25)
		lblDesc.Position           = UDim2.new(0, 10, 0.5, 40)
		lblDesc.BackgroundTransparency = 1
		lblDesc.Text               = "Você não tem permissão para\nacessar esta área."
		lblDesc.TextColor3         = Color3.fromRGB(160, 160, 160)
		lblDesc.Font               = Enum.Font.Gotham
		lblDesc.TextSize           = 12
		lblDesc.ZIndex             = 101
		lblDesc.TextWrapped        = true
	end
	
	local function temAcessoVip(cargo)
		return tagsVipAcesso[cargo] == true
	end
	
	local function atualizarVipLock()
		if not vipTela then return end
		if temAcessoVip(meuCargo) then
			if vipLockFrame and vipLockFrame.Parent then
				vipLockFrame:Destroy()
				vipLockFrame = nil
			end
		else
			if not (vipLockFrame and vipLockFrame.Parent) then
				criarVipLock()
			end
		end
	end
	
	-- ============================================================
	-- [[ 9. HIGHLIGHT DE BOTÃO ATIVO NA SIDEBAR ]]
	-- ============================================================
	local COR_BTN_ATIVO   = Color3.fromRGB(120, 20, 20)
	local COR_TEXT_ATIVO  = Color3.fromRGB(255, 255, 255)
	local COR_TEXT_NORMAL = Color3.fromRGB(200, 200, 200)
	
	local mapaBotaoTela = {}
	local btnAtivo = nil
	
	local function salvarCoresOriginais(btn)
		if not btn:GetAttribute("CorOriginalSalva") then
			btn:SetAttribute("CorOriginalSalva", true)
			btn:SetAttribute("BgR", math.floor(btn.BackgroundColor3.R * 255))
			btn:SetAttribute("BgG", math.floor(btn.BackgroundColor3.G * 255))
			btn:SetAttribute("BgB", math.floor(btn.BackgroundColor3.B * 255))
		end
	end
	
	local function getCorOriginal(btn)
		local r = btn:GetAttribute("BgR") or 50
		local g = btn:GetAttribute("BgG") or 50
		local b = btn:GetAttribute("BgB") or 50
		return Color3.fromRGB(r, g, b)
	end
	
	local function destacarBotao(btn)
		if not btn then return end
		if btnAtivo and btnAtivo ~= btn then
			TweenService:Create(btnAtivo, TweenInfo.new(0.2), {
				BackgroundColor3 = getCorOriginal(btnAtivo)
			}):Play()
			local lblAnterior = btnAtivo:FindFirstChildOfClass("TextLabel")
			if lblAnterior then
				TweenService:Create(lblAnterior, TweenInfo.new(0.2), {
					TextColor3 = COR_TEXT_NORMAL
				}):Play()
			end
			local ind = btnAtivo:FindFirstChild("_ActiveIndicator")
			if ind then ind:Destroy() end
		end
	
		btnAtivo = btn
	
		TweenService:Create(btn, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
			BackgroundColor3 = COR_BTN_ATIVO
		}):Play()
	
		local lbl = btn:FindFirstChildOfClass("TextLabel")
		if lbl then
			TweenService:Create(lbl, TweenInfo.new(0.2), {
				TextColor3 = COR_TEXT_ATIVO
			}):Play()
		end
	
		if not btn:FindFirstChild("_ActiveIndicator") then
			local ind = Instance.new("Frame", btn)
			ind.Name             = "_ActiveIndicator"
			ind.Size             = UDim2.new(0, 3, 0.7, 0)
			ind.Position         = UDim2.new(0, 0, 0.15, 0)
			ind.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
			ind.BorderSizePixel  = 0
			ind.ZIndex           = 10
			Instance.new("UICorner", ind).CornerRadius = UDim.new(0, 2)
		end
	end
	
	-- ============================================================
	-- [[ 10. CONTROLE DE TELAS E ABAS ]]
	-- ============================================================
	local todasAsTelas = {homeTela, miscTela, charTela, aboutTela, ownerTela, staffTela, banTela, targetTela}
	if vipTela then table.insert(todasAsTelas, vipTela) end
	
	local function esconderTodasTelas()
		for _, t in pairs(todasAsTelas) do
			if t then t.Visible = false end
		end
	end
	
	local function abrirTela(tela)
		esconderTodasTelas()
		if tela then tela.Visible = true end
		telaAtual = tela
		if tela == vipTela then atualizarVipLock() end
		local btn = mapaBotaoTela[tela]
		if btn then destacarBotao(btn) end
	end
	
	local function atualizarAbas(cargo)
		meuCargo = cargo
		local ehDono = (localPlayer.UserId == MEU_ID_DONO)
	
		btnOwner.Visible = ehDono or (tagsOwnerAcesso[cargo] == true)
		btnStaff.Visible = ehDono or (tagsStaffAcesso[cargo] == true)
		-- BAN: apenas quem tem cargo OWNER (tag atribuída)
		btnBan.Visible   = (cargo == "OWNER")
		if btnVip then btnVip.Visible = true end
	
		if telaAtual == ownerTela and not btnOwner.Visible then abrirTela(homeTela) end
		if telaAtual == staffTela  and not btnStaff.Visible  then abrirTela(homeTela) end
		if telaAtual == banTela    and not btnBan.Visible    then abrirTela(homeTela) end
	
		atualizarVipLock()
	end
	
	-- ============================================================
	-- [[ 11. CENTRALIZAR PAINEL AO INICIAR ]]
	-- ============================================================
	local dragTarget = Vector2.new(0, 0)
	local currentPos = Vector2.new(0, 0)
	
	local function centralizarPainel()
		task.spawn(function()
			task.wait(0.05)
			local vp = workspace.CurrentCamera.ViewportSize
			local px = mainPanel.AbsoluteSize.X
			local py = mainPanel.AbsoluteSize.Y
			local cx  = math.floor((vp.X - px) / 2)
			local cy  = math.floor((vp.Y - py) / 2)
			mainPanel.Position = UDim2.new(0, cx, 0, cy)
			dragTarget  = Vector2.new(cx, cy)
			currentPos  = Vector2.new(cx, cy)
		end)
	end
	
	-- ============================================================
	-- [[ 12. ARRASTAR PAINEL COM DESLIZAMENTO SUAVE ]]
	-- ============================================================
	local isDragging     = false
	local dragStartMouse = nil
	local dragStartPanel = nil
	local SMOOTHNESS     = 0.12
	
	local topBar = mainPanel:FindFirstChild("TopBar") or mainPanel
	
	local function getPanelAbsPos()
		return Vector2.new(
			mainPanel.Position.X.Offset,
			mainPanel.Position.Y.Offset
		)
	end
	
	topBar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1
			or input.UserInputType == Enum.UserInputType.Touch then
			isDragging     = true
			dragStartMouse = Vector2.new(input.Position.X, input.Position.Y)
			dragStartPanel = getPanelAbsPos()
			dragTarget     = dragStartPanel
			currentPos     = dragStartPanel
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if not isDragging then return end
		if input.UserInputType == Enum.UserInputType.MouseMovement
			or input.UserInputType == Enum.UserInputType.Touch then
			local delta = Vector2.new(input.Position.X, input.Position.Y) - dragStartMouse
			dragTarget = dragStartPanel + delta
		end
	end)
	
	UserInputService.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1
			or input.UserInputType == Enum.UserInputType.Touch then
			isDragging = false
		end
	end)
	
	RunService.RenderStepped:Connect(function()
		if not mainPanel.Visible then return end
		currentPos = currentPos:Lerp(dragTarget, SMOOTHNESS)
		local vp = workspace.CurrentCamera.ViewportSize
		local px = mainPanel.AbsoluteSize.X
		local py = mainPanel.AbsoluteSize.Y
		local clampedX = math.clamp(currentPos.X, 0, vp.X - px)
		local clampedY = math.clamp(currentPos.Y, 0, vp.Y - py)
		mainPanel.Position = UDim2.new(0, clampedX, 0, clampedY)
	end)
	
	-- ============================================================
	-- [[ 13. BOTÕES LATERAIS + MAPA ]]
	-- ============================================================
	local function conectarBotao(btn, tela)
		if not (btn and tela) then return end
		salvarCoresOriginais(btn)
		mapaBotaoTela[tela] = btn
		btn.MouseButton1Click:Connect(function()
			abrirTela(tela)
		end)
	end
	
	-- Força o UIListLayout a ordenar por LayoutOrder (não por Name)
	local sideLayout = botoes:FindFirstChildOfClass("UIListLayout")
	if sideLayout then
		sideLayout.SortOrder = Enum.SortOrder.LayoutOrder
	end
	
	-- Ordem visual correta na sidebar
	local ordemBotoes = {
		{btnHome,      1},
		{btnVip,       2},
		{btnTarget,    3},
		{btnMisc,      4},
		{btnCharacter, 5},
		{btnAbout,     6},
		{btnOwner,     7},
		{btnStaff,     8},
		{btnBan,       9},
	}
	for _, par in pairs(ordemBotoes) do
		local b, ordem = par[1], par[2]
		if b then b.LayoutOrder = ordem end
	end
	
	conectarBotao(btnHome,      homeTela)
	conectarBotao(btnMisc,      miscTela)
	conectarBotao(btnCharacter, charTela)
	conectarBotao(btnAbout,     aboutTela)
	conectarBotao(btnOwner,     ownerTela)
	conectarBotao(btnStaff,     staffTela)
	conectarBotao(btnBan,       banTela)
	conectarBotao(btnTarget,    targetTela)
	if btnVip and vipTela then conectarBotao(btnVip, vipTela) end
	
	-- ============================================================
	-- [[ 14. ABRIR/FECHAR COM [B] ]]
	-- ============================================================
	mainPanel.Visible = true
	
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		if input.KeyCode == Enum.KeyCode.B then
			mainPanel.Visible = not mainPanel.Visible
			if mainPanel.Visible and telaAtual == nil then
				abrirTela(homeTela)
			end
		end
	end)
	
	-- ============================================================
	-- [[ 15. HOME TELA — DADOS REAIS ]]
	-- ============================================================
	local function carregarAvatarHome()
		if not homeImagem then return end
		task.spawn(function()
			local ok, img = pcall(function()
				return Players:GetUserThumbnailAsync(
					localPlayer.UserId,
					Enum.ThumbnailType.HeadShot,
					Enum.ThumbnailSize.Size150x150
				)
			end)
			homeImagem.Image = ok and img or IMAGEM_PADRAO
		end)
	end
	
	local function atualizarNomeHome()
		if not homeNome then return end
		homeNome.Text         = localPlayer.DisplayName
		homeNome.TextTruncate = Enum.TextTruncate.AtEnd   -- corta nome longo
		homeNome.TextScaled   = false
		homeNome.TextSize     = 14
	end
	
	local function corPing(ping)
		if ping <= 80 then
			return Color3.fromRGB(50, 220, 80)
		elseif ping <= 150 then
			return Color3.fromRGB(255, 200, 0)
		else
			return Color3.fromRGB(255, 50, 50)
		end
	end
	
	task.spawn(function()
		while true do
			task.wait(1)
			pcall(function()
				if homePing then
					local ok2, ping = pcall(function()
						return math.floor(Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
					end)
					if ok2 then
						homePing.Text       = tostring(ping)
						homePing.TextColor3 = corPing(ping)
					end
				end
				if homeOnline then
					homeOnline.Text = tostring(#Players:GetPlayers())
				end
				-- DATA removida daqui — use o script separado DataScript no TextLabel DATA
			end)
		end
	end)
	
	-- ============================================================
	-- [[ 16. BUSCA DE PLAYER (OwnerTela7) ]]
	-- ============================================================
	imagemAvatar.Image = IMAGEM_PADRAO
	textoDisplay.Text  = "DISPLAY NAME"
	textoID.Text       = "ID"
	
	inputNome:GetPropertyChangedSignal("Text"):Connect(function()
		local d = inputNome.Text:lower()
		if d == "" then
			imagemAvatar.Image = IMAGEM_PADRAO
			textoDisplay.Text  = "DISPLAY NAME"
			textoID.Text       = "ID"
			return
		end
		for _, p in pairs(Players:GetPlayers()) do
			if p.Name:lower():find(d, 1, true) or p.DisplayName:lower():find(d, 1, true) then
				textoDisplay.Text = p.DisplayName
				textoID.Text      = "ID: "..p.UserId
				local ok, img = pcall(function()
					return Players:GetUserThumbnailAsync(p.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
				end)
				imagemAvatar.Image = ok and img or IMAGEM_PADRAO
				return
			end
		end
		imagemAvatar.Image = IMAGEM_PADRAO
		textoDisplay.Text  = "NÃO ENCONTRADO"
		textoID.Text       = "ID: ???"
	end)
	
	-- ============================================================
	-- [[ 17. BOTÕES DE SELEÇÃO DE TAG ]]
	-- ============================================================
	for tagNome, _ in pairs(configuracaoTags) do
		local btn = ownerScroll:FindFirstChild(tagNome)
		if btn then
			btn.MouseButton1Click:Connect(function()
				if tagBotaoSelecionado then tagBotaoSelecionado.BorderSizePixel = 0 end
				tagSelecionada      = tagNome
				tagBotaoSelecionado = btn
				btn.BorderSizePixel = 3
				btn.BorderColor3    = Color3.new(1,1,1)
			end)
		end
	end
	
	-- ============================================================
	-- [[ 18. BOTÃO ADD TAG ]]
	-- ============================================================
	botaoAdd.MouseButton1Click:Connect(function()
		if tagSelecionada == "" then
			notificar("ERRO", "Selecione uma tag primeiro!", 3, "USER") return
		end
		local displayAlvo = textoDisplay.Text
		if displayAlvo == "DISPLAY NAME" or displayAlvo == "NÃO ENCONTRADO" then
			notificar("ERRO", "Nenhum player selecionado!", 3, "USER") return
		end
		for _, p in pairs(Players:GetPlayers()) do
			if p.DisplayName == displayAlvo then
				local cor = configuracaoTags[tagSelecionada]
				enviarTag(p.Name, tagSelecionada, cor)
				aplicarTagVisual(p, tagSelecionada, cor)
				notificar("SISTEMA", p.DisplayName.." → "..tagSelecionada, 4, tagSelecionada)
				if p == localPlayer then atualizarAbas(tagSelecionada) end
				return
			end
		end
		notificar("ERRO", "Player não está no servidor!", 3, "USER")
	end)
	
	-- ============================================================
	-- [[ 19. SISTEMA DE BAN EM TEMPO REAL ]]
	-- ============================================================
	local banAlvoId       = nil
	local banAlvoDisplay  = nil
	local ultimoStatusBan = ""
	local banCheckAtivo   = false
	
	local function iniciarBanCheckRealTime(userId)
		banCheckAtivo = true
		task.spawn(function()
			while banCheckAtivo and banAlvoId == userId do
				local banido = checarBan(userId)
				if banido then
					ultimoStatusBan           = "BANIDO"
					banStatusLabel.Text       = "⛔ BANIDO"
					banStatusLabel.TextColor3 = Color3.fromRGB(255, 50, 50)
					if userId == localPlayer.UserId then
						mainPanel.Visible   = true
						esconderTodasTelas()
						banidoFrame.Visible = true
						banCheckAtivo = false
						return
					end
				else
					ultimoStatusBan           = "DISPONIVEL"
					banStatusLabel.Text       = "✅ DISPONÍVEL"
					banStatusLabel.TextColor3 = Color3.fromRGB(50, 255, 100)
				end
				task.wait(1.5)
			end
		end)
	end
	
	task.spawn(function()
		while true do
			task.wait(2)
			pcall(function()
				if banidoFrame.Visible then return end
				local banido = checarBan(localPlayer.UserId)
				if banido then
					mainPanel.Visible   = true
					esconderTodasTelas()
					banidoFrame.Visible = true
					notificar("BAN", "Você foi BANIDO do servidor!", 10, "OWNER")
				end
			end)
		end
	end)
	
	local function atualizarStatusBan(userId)
		banCheckAtivo = false
		task.wait(0.05)
		iniciarBanCheckRealTime(userId)
	end
	
	banTextBox:GetPropertyChangedSignal("Text"):Connect(function()
		local d = banTextBox.Text:lower()
		banCheckAtivo = false
		banAlvoId = nil
		ultimoStatusBan = ""
	
		if d == "" then
			banImgLabel.Image         = IMAGEM_PADRAO
			banNomeLabel.Text         = "BANIDO!"
			banStatusLabel.Text       = "STATUS"
			banStatusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
			banUserIdLabel.Text       = "ID: 00000000"
			return
		end
	
		for _, p in pairs(Players:GetPlayers()) do
			if p.Name:lower():find(d, 1, true) or p.DisplayName:lower():find(d, 1, true) then
				banAlvoId      = p.UserId
				banAlvoDisplay = p.DisplayName
				banNomeLabel.Text         = p.DisplayName
				banUserIdLabel.Text       = "ID: "..p.UserId
				banStatusLabel.Text       = "Verificando..."
				banStatusLabel.TextColor3 = Color3.fromRGB(255, 220, 50)
				local ok, img = pcall(function()
					return Players:GetUserThumbnailAsync(p.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
				end)
				banImgLabel.Image = ok and img or IMAGEM_PADRAO
				atualizarStatusBan(p.UserId)
				return
			end
		end
	
		banImgLabel.Image         = IMAGEM_PADRAO
		banNomeLabel.Text         = "NÃO ENCONTRADO"
		banStatusLabel.Text       = "STATUS"
		banStatusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
		banUserIdLabel.Text       = "ID: ???"
	end)
	
	banBtn.MouseButton1Click:Connect(function()
		if not banAlvoId then
			notificar("ERRO", "Nenhum player selecionado!", 3, "USER") return
		end
		if banAlvoId == localPlayer.UserId then
			notificar("ERRO", "Você não pode se banir!", 3, "USER") return
		end
		banirPlayer(banAlvoId)
		banStatusLabel.Text       = "⛔ BANIDO"
		banStatusLabel.TextColor3 = Color3.fromRGB(255, 50, 50)
		ultimoStatusBan = "BANIDO"
		notificar("BAN", banAlvoDisplay.." foi BANIDO!", 5, "OWNER")
		banAlvoId = nil
		banTextBox.Text = ""
	end)
	
	desbanBtn.MouseButton1Click:Connect(function()
		if not banAlvoId then
			notificar("ERRO", "Nenhum player selecionado!", 3, "USER") return
		end
		desbanirPlayer(banAlvoId)
		banStatusLabel.Text       = "✅ DISPONÍVEL"
		banStatusLabel.TextColor3 = Color3.fromRGB(50, 255, 100)
		ultimoStatusBan = "DISPONIVEL"
		notificar("DESBAN", banAlvoDisplay.." foi DESBANIDO!", 5, "VIP 4E20")
		banAlvoId = nil
		banTextBox.Text = ""
	end)
	
	-- ============================================================
	-- [[ 20. STAFF — LISTA + TELEPORT ]]
	-- ============================================================
	local function formatarHora(timestamp)
		local h = math.floor(timestamp / 3600) % 24
		local m = math.floor(timestamp / 60) % 60
		local s = timestamp % 60
		return string.format("%02d:%02d:%02d", h, m, s)
	end
	
	local function sairDoSpect()
		if spectandoPlayer then
			local cam = workspace.CurrentCamera
			if cam then
				cam.CameraType    = Enum.CameraType.Custom
				cam.CameraSubject = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
			end
			spectandoPlayer = nil
			notificar("STAFF", "Saiu do espect!", 2, meuCargo)
		end
	end
	
	if btnTeleportStaff then
		btnTeleportStaff.MouseButton1Click:Connect(function()
			if not spectandoPlayer then
				notificar("STAFF", "Selecione um player para spectar primeiro!", 3, meuCargo)
				return
			end
			local alvo = spectandoPlayer
			if not (alvo.Character and alvo.Character:FindFirstChild("HumanoidRootPart")) then
				notificar("ERRO", alvo.DisplayName.." não tem personagem!", 3, "USER")
				return
			end
			local meuChar = localPlayer.Character
			local meuRoot = meuChar and meuChar:FindFirstChild("HumanoidRootPart")
			if not meuRoot then
				notificar("ERRO", "Seu personagem não encontrado!", 3, "USER")
				return
			end
			meuRoot.CFrame = alvo.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3)
			notificar("TELEPORT", "Teleportado para "..alvo.DisplayName.."!", 3, meuCargo)
		end)
	end
	
	local function atualizarListaStaff()
		for _, b in pairs(botoesStaff) do
			if b and b.Parent then b:Destroy() end
		end
		botoesStaff = {}
	
		local i = 0
		for userId, info in pairs(playersComPainel) do
			local p = nil
			for _, pl in pairs(Players:GetPlayers()) do
				if pl.UserId == userId then p = pl break end
			end
			if not p then continue end
	
			i = i + 1
			local cargo    = info.cargo or "USER"
			local horaExec = info.horaExec or 0
			local corTag   = configuracaoTags[cargo] or Color3.fromRGB(255,255,255)
	
			local frame = Instance.new("Frame")
			frame.Name             = p.Name
			frame.Size             = UDim2.new(1, -10, 0, 50)
			frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			frame.BorderSizePixel  = 0
			frame.Parent           = staffScroll
			Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)
	
			local borda = Instance.new("Frame", frame)
			borda.Size             = UDim2.new(0, 4, 1, 0)
			borda.BackgroundColor3 = corTag
			borda.BorderSizePixel  = 0
			Instance.new("UICorner", borda).CornerRadius = UDim.new(0, 4)
	
			local lblNome = Instance.new("TextLabel", frame)
			lblNome.Size               = UDim2.new(1, -80, 0, 24)
			lblNome.Position           = UDim2.new(0, 12, 0, 4)
			lblNome.BackgroundTransparency = 1
			lblNome.Text               = p.DisplayName.." (@"..p.Name..")"
			lblNome.TextColor3         = Color3.fromRGB(255, 255, 255)
			lblNome.Font               = Enum.Font.GothamBold
			lblNome.TextSize           = 12
			lblNome.TextXAlignment     = Enum.TextXAlignment.Left
			lblNome.TextTruncate       = Enum.TextTruncate.AtEnd
	
			local lblTag = Instance.new("TextLabel", frame)
			lblTag.Size               = UDim2.new(0, 80, 0, 16)
			lblTag.Position           = UDim2.new(0, 12, 0, 28)
			lblTag.BackgroundTransparency = 1
			lblTag.Text               = "["..cargo.."]"
			lblTag.TextColor3         = corTag
			lblTag.Font               = Enum.Font.GothamBold
			lblTag.TextSize           = 11
			lblTag.TextXAlignment     = Enum.TextXAlignment.Left
	
			local lblHora = Instance.new("TextLabel", frame)
			lblHora.Size               = UDim2.new(0, 80, 0, 16)
			lblHora.Position           = UDim2.new(1, -90, 0, 28)
			lblHora.BackgroundTransparency = 1
			lblHora.Text               = "🕐 "..formatarHora(horaExec)
			lblHora.TextColor3         = Color3.fromRGB(160, 160, 160)
			lblHora.Font               = Enum.Font.Gotham
			lblHora.TextSize           = 10
			lblHora.TextXAlignment     = Enum.TextXAlignment.Right
	
			local btn = Instance.new("TextButton", frame)
			btn.Size               = UDim2.new(1, 0, 1, 0)
			btn.BackgroundTransparency = 1
			btn.Text               = ""
			btn.ZIndex             = 5
	
			btn.MouseButton1Click:Connect(function()
				if spectandoPlayer == p then
					sairDoSpect()
					TweenService:Create(frame, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(35, 35, 35)}):Play()
				else
					for _, b in pairs(botoesStaff) do
						if b:IsA("Frame") then
							TweenService:Create(b, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(35, 35, 35)}):Play()
						end
					end
					sairDoSpect()
					if p.Character then
						local cam = workspace.CurrentCamera
						local hum = p.Character:FindFirstChildOfClass("Humanoid")
						if cam and hum then
							cam.CameraType    = Enum.CameraType.Custom
							cam.CameraSubject = hum
							spectandoPlayer   = p
							TweenService:Create(frame, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(60, 30, 30)}):Play()
							notificar("STAFF", "Spectando "..p.DisplayName.." | Clique TELEPORT", 3, meuCargo)
						end
					else
						notificar("ERRO", p.DisplayName.." não tem personagem!", 3, "USER")
					end
				end
			end)
	
			table.insert(botoesStaff, frame)
		end
	
		local offsetTeleport = btnTeleportStaff and 58 or 0
		staffScroll.CanvasSize = UDim2.new(0, 0, 0, offsetTeleport + i * 58 + 10)
	
		if i == 0 then
			local lblVazio = Instance.new("TextLabel", staffScroll)
			lblVazio.Size               = UDim2.new(1, -10, 0, 40)
			lblVazio.BackgroundTransparency = 1
			lblVazio.Text               = "Nenhum player com painel ativo"
			lblVazio.TextColor3         = Color3.fromRGB(150, 150, 150)
			lblVazio.Font               = Enum.Font.Gotham
			lblVazio.TextSize           = 13
			table.insert(botoesStaff, lblVazio)
		end
	end
	
	staffTela:GetPropertyChangedSignal("Visible"):Connect(function()
		if staffTela.Visible then atualizarListaStaff() end
	end)
	
	-- ============================================================
	-- [[ 21. VERIFICAR BAN AO INICIAR ]]
	-- ============================================================
	local function verificarBanLocal()
		local banido = checarBan(localPlayer.UserId)
		if banido then
			mainPanel.Visible   = true
			esconderTodasTelas()
			banidoFrame.Visible = true
			UserInputService.InputBegan:Connect(function(input, gp)
				if gp then return end
				if input.KeyCode == Enum.KeyCode.B then
					mainPanel.Visible   = true
					banidoFrame.Visible = true
				end
			end)
			return true
		end
		return false
	end
	
	-- ============================================================
	-- [[ 22. RESPAWN ]]
	-- ============================================================
	local function conectarRespawn(p)
		p.CharacterAdded:Connect(function()
			task.wait(1.5)
			if not playersComPainel[p.UserId] then return end
			local cargo = playersComPainel[p.UserId].cargo or "USER"
			local cor   = configuracaoTags[cargo] or Color3.fromRGB(255,255,255)
			local dados = buscarTodosCargos()
			if dados and dados[p.Name] then
				cargo = dados[p.Name].cargo
				cor   = tabelaParaCor(dados[p.Name].cor)
			end
			aplicarTagVisual(p, cargo, cor)
			if p == localPlayer then atualizarAbas(cargo) end
		end)
	end
	
	for _, p in pairs(Players:GetPlayers()) do conectarRespawn(p) end
	Players.PlayerAdded:Connect(function(p) conectarRespawn(p) end)
	
	-- ============================================================
	-- [[ 23. REGISTRAR PAINEL ATIVO ]]
	-- ============================================================
	local function registrarPainelAtivo()
		pcall(function()
			httpRequest({
				Url     = SERVIDOR.."/setactive",
				Method  = "POST",
				Headers = {["Content-Type"]="application/json"},
				Body    = HttpService:JSONEncode({
					player = localPlayer.Name,
					userId = localPlayer.UserId,
					active = true,
					gameId = GAME_ID
				})
			})
		end)
	end
	
	local function buscarPlayersAtivos()
		local res = httpRequest({Url=SERVIDOR.."/getactive?gameId="..GAME_ID, Method="GET"})
		if not (res and res.Body) then return {} end
		local ok, dados = pcall(function() return HttpService:JSONDecode(res.Body) end)
		return ok and dados or {}
	end
	
	-- ============================================================
	-- [[ 24. LOOP PRINCIPAL ]]
	-- ============================================================
	task.spawn(function()
		while task.wait(3) do
			pcall(function()
				registrarPainelAtivo()
	
				local ativos = buscarPlayersAtivos()
				local dados  = buscarTodosCargos()
	
				local novosPainel = {}
				novosPainel[localPlayer.UserId] = {
					cargo    = meuCargo,
					horaExec = playersComPainel[localPlayer.UserId] and playersComPainel[localPlayer.UserId].horaExec or os.time()
				}
	
				for _, uid in pairs(ativos) do
					local p = nil
					for _, pl in pairs(Players:GetPlayers()) do
						if pl.UserId == uid then p = pl break end
					end
					if p then
						local cargo = "USER"
						if dados and dados[p.Name] then cargo = dados[p.Name].cargo end
						local horaExec = playersComPainel[uid] and playersComPainel[uid].horaExec or os.time()
						novosPainel[uid] = { cargo = cargo, horaExec = horaExec }
					end
				end
				playersComPainel = novosPainel
	
				for _, p in pairs(Players:GetPlayers()) do
					if playersComPainel[p.UserId] then
						local cargo = "USER"
						local cor   = configuracaoTags["USER"]
						if dados and dados[p.Name] then
							cargo = dados[p.Name].cargo
							cor   = tabelaParaCor(dados[p.Name].cor)
						end
						if p.Character and p.Character:FindFirstChild("Head") then
							local tag = p.Character.Head:FindFirstChild("TagPainel")
							local lbl = tag and tag:FindFirstChildOfClass("TextLabel")
							if not lbl or lbl.Text ~= "<b>"..cargo.."</b>" then
								aplicarTagVisual(p, cargo, cor)
							end
						end
					else
						removerTagVisual(p)
					end
				end
	
				if dados then
					local minhaInfo = dados[localPlayer.Name]
					local novoCargo = minhaInfo and minhaInfo.cargo or meuCargo
					if novoCargo ~= meuCargo then atualizarAbas(novoCargo) end
				end
	
				if staffTela.Visible then atualizarListaStaff() end
			end)
		end
	end)
	
	-- ============================================================
	-- [[ 25. INICIALIZAÇÃO ]]
	-- ============================================================
	task.spawn(function()
		if verificarBanLocal() then return end
	
		centralizarPainel()
	
		-- Cargo inicial: se for o dono já começa como OWNER
		local cargoInit = localPlayer.UserId == MEU_ID_DONO and "OWNER" or "USER"
		atualizarAbas(cargoInit)
	
		-- Busca cargo real do servidor (até 6 tentativas)
		local tentativas = 0
		repeat
			tentativas = tentativas + 1
			local dados = buscarTodosCargos()
			if dados and dados[localPlayer.Name] then
				-- Cargo do servidor sobrescreve, exceto se for o dono (sempre OWNER)
				if localPlayer.UserId ~= MEU_ID_DONO then
					cargoInit = dados[localPlayer.Name].cargo
				end
				break
			end
			task.wait(0.5)
		until tentativas >= 10  -- mais tentativas para conexão lenta
	
		registrarPainelAtivo()
		playersComPainel[localPlayer.UserId] = {
			cargo    = cargoInit,
			horaExec = os.time()
		}
	
		local corInit = configuracaoTags[cargoInit] or Color3.fromRGB(255,255,255)
		enviarTag(localPlayer.Name, cargoInit, corInit)
		-- Atualiza abas DEPOIS de ter o cargo correto do servidor — BAN aparece aqui
		atualizarAbas(cargoInit)
	
		task.wait(0.1)
		aplicarTagVisual(localPlayer, cargoInit, corInit)
	
		carregarAvatarHome() -- carrega foto do avatar na HomeTela
		-- Nome removido daqui — use o script separado NameScript no TextLabel name
	
		notificar("4E20 PANEL", "PAINEL ATIVO — CARGO: "..cargoInit, 5, cargoInit)
		conectarRespawn(localPlayer)
		abrirTela(homeTela)
	end)
end
coroutine.wrap(OYSC_fake_script)()
local function AZWZ_fake_script() -- name.LocalScript 
	local script = Instance.new('LocalScript', name)

	-- ============================================================
	--  NameScript — LocalScript
	--  Coloque DENTRO do TextLabel "name" na HomeTela1
	-- ============================================================
	
	local Players = game:GetService("Players")
	local label   = script.Parent
	local player  = Players.LocalPlayer
	
	-- Posição exata: logo após o "Olá!" (X=150+100+5=255, Y=15)
	label.Position           = UDim2.new(0, 230, 0, 30)
	label.Size               = UDim2.new(0, 190, 0, 22)
	label.BackgroundTransparency = 1
	label.TextXAlignment     = Enum.TextXAlignment.Left
	label.TextTruncate       = Enum.TextTruncate.AtEnd
	label.TextScaled         = false
	label.TextWrapped        = false
	label.TextColor3         = Color3.fromRGB(59, 16, 3)
	label.Font               = Enum.Font.GothamBold
	
	local function atualizar()
		local nome = player.DisplayName
		if #nome <= 10 then
			label.TextSize = 20
		elseif #nome <= 16 then
			label.TextSize = 14
		else
			label.TextSize = 11
		end
		label.Text = nome
	end
	
	atualizar()
	player:GetPropertyChangedSignal("DisplayName"):Connect(atualizar)
end
coroutine.wrap(AZWZ_fake_script)()
local function DUTX_fake_script() -- DATA.LocalScript 
	local script = Instance.new('LocalScript', DATA)

	-- ============================================================
	--  DataScript — LocalScript
	--  Coloque este script DENTRO do TextLabel "DATA" na HomeTela1
	-- ============================================================
	
	local label = script.Parent  -- o próprio TextLabel DATA
	
	while true do
		local d = os.date("*t", os.time())
		label.Text = string.format(
			"%02d/%02d/%04d  %02d:%02d",
			d.day, d.month, d.year, d.hour, d.min
		)
		task.wait(1)
	end
end
coroutine.wrap(DUTX_fake_script)()
local function ITEFYO_fake_script() -- INVISIBILITY.LocalScript 
	local script = Instance.new('LocalScript', INVISIBILITY)

	local Button = script.Parent
	local Indicator = Button:FindFirstChild("TextLabel") -- Procura o "+" dentro do botão
	local plr = game:GetService("Players").LocalPlayer
	local invisOn = false
	
	-- Função para mudar transparência (ajuda a saber se está funcionando)
	local function setTransparency(char, val)
		for _, p in ipairs(char:GetDescendants()) do
			if p:IsA("BasePart") and p.Name ~= "HumanoidRootPart" then
				p.Transparency = val
			end
		end
	end
	
	Button.MouseButton1Click:Connect(function()
		local char = plr.Character
		if not char then return end
	
		if not invisOn then
			-- ========================
			-- LIGAR INVISIBILIDADE
			-- ========================
			invisOn = true
	
			-- Muda a cor do "+" para VERDE
			if Indicator then
				Indicator.TextColor3 = Color3.fromRGB(0, 255, 0)
			end
	
			setTransparency(char, 0.5) -- Fica fantasma para você
			local savedpos = char.HumanoidRootPart.CFrame
	
			task.wait()
			char:MoveTo(Vector3.new(-25.95, 84, 3537.55)) -- Teleporta para bugar a rede
	
			task.wait(0.15)
			local Seat = Instance.new("Seat", workspace)
			Seat.Name = "invischair"
			Seat.Transparency = 1
			Seat.Position = Vector3.new(-25.95, 84, 3537.55)
	
			local Weld = Instance.new("Weld", Seat)
			Weld.Part0 = Seat
			Weld.Part1 = char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso")
	
			Seat.CFrame = savedpos
		else
			-- ========================
			-- DESLIGAR INVISIBILIDADE
			-- ========================
			invisOn = false
	
			-- Muda a cor do "+" para VERMELHO
			if Indicator then
				Indicator.TextColor3 = Color3.fromRGB(255, 0, 0)
			end
	
			setTransparency(char, 0) -- Volta ao normal
			if workspace:FindFirstChild("invischair") then
				workspace.invischair:Destroy()
			end
	
			-- DICA: Em alguns jogos, para a visibilidade voltar totalmente para os outros,
			-- você precisa dar Reset ou encostar em algum lugar que atualize seu personagem.
		end
	end)
end
coroutine.wrap(ITEFYO_fake_script)()
local function ATLI_fake_script() -- SPIN.LocalScript 
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
coroutine.wrap(ATLI_fake_script)()
local function KRDGS_fake_script() -- FLING.LocalScript 
	local script = Instance.new('LocalScript', FLING)

	local RunService = game:GetService("RunService")
	local UserInputService = game:GetService("UserInputService")
	local Players = game:GetService("Players")
	local TweenService = game:GetService("TweenService")
	local player = Players.LocalPlayer
	local botao = script.Parent
	local iconeStatus = botao:WaitForChild("TextLabel")
	
	local permissaoPainel = false
	local bAV = nil
	local bV = nil
	local conexaoNoclip = nil
	local conexaoFling = nil
	local conexaoTrava = nil
	local checkpointSalvo = nil
	local flingAtivo = false
	
	-- NOTIFICAÇÃO (canto direito, vermelho)
	local screenGui = Instance.new("ScreenGui", player.PlayerGui)
	screenGui.Name = "NotifFling"
	screenGui.ResetOnSpawn = false
	
	local function notificar(titulo, texto, cor)
		cor = cor or Color3.fromRGB(180, 0, 0)
		local frame = Instance.new("Frame", screenGui)
		frame.Size = UDim2.new(0, 270, 0, 64)
		frame.Position = UDim2.new(1, 10, 1, -20)
		frame.AnchorPoint = Vector2.new(1, 1)
		frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
		frame.BackgroundTransparency = 0.08
		frame.BorderSizePixel = 0
		frame.ZIndex = 10
		Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)
	
		local borda = Instance.new("Frame", frame)
		borda.Size = UDim2.new(0, 4, 1, 0)
		borda.Position = UDim2.new(1, -4, 0, 0)
		borda.BackgroundColor3 = cor
		borda.BorderSizePixel = 0
		borda.ZIndex = 11
		Instance.new("UICorner", borda).CornerRadius = UDim.new(0, 8)
	
		local labelT = Instance.new("TextLabel", frame)
		labelT.Size = UDim2.new(1, -20, 0, 26)
		labelT.Position = UDim2.new(0, 12, 0, 8)
		labelT.BackgroundTransparency = 1
		labelT.Text = titulo
		labelT.TextColor3 = Color3.fromRGB(255, 255, 255)
		labelT.Font = Enum.Font.GothamBold
		labelT.TextSize = 13
		labelT.TextXAlignment = Enum.TextXAlignment.Left
		labelT.ZIndex = 11
	
		local labelS = Instance.new("TextLabel", frame)
		labelS.Size = UDim2.new(1, -20, 0, 18)
		labelS.Position = UDim2.new(0, 12, 0, 34)
		labelS.BackgroundTransparency = 1
		labelS.Text = texto
		labelS.TextColor3 = Color3.fromRGB(200, 200, 200)
		labelS.Font = Enum.Font.Gotham
		labelS.TextSize = 11
		labelS.TextXAlignment = Enum.TextXAlignment.Left
		labelS.ZIndex = 11
	
		TweenService:Create(frame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
			Position = UDim2.new(1, -16, 1, -20)
		}):Play()
	
		task.delay(3.5, function()
			TweenService:Create(frame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
				Position = UDim2.new(1, 10, 1, -20)
			}):Play()
			task.wait(0.35)
			frame:Destroy()
		end)
	end
	
	-- LIMPA TUDO (mais agressivo)
	local function limparForcas()
		flingAtivo = false
	
		-- Desconecta loops primeiro
		if conexaoFling then
			conexaoFling:Disconnect()
			conexaoFling = nil
		end
		if conexaoNoclip then
			conexaoNoclip:Disconnect()
			conexaoNoclip = nil
		end
		if conexaoTrava then
			conexaoTrava:Disconnect()
			conexaoTrava = nil
		end
	
		-- Destrói forças físicas
		if bAV then
			pcall(function() bAV:Destroy() end)
			bAV = nil
		end
		if bV then
			pcall(function() bV:Destroy() end)
			bV = nil
		end
	
		-- Remove qualquer força física restante no personagem
		local char = player.Character
		if char then
			local root = char:FindFirstChild("HumanoidRootPart")
			if root then
				for _, obj in pairs(root:GetChildren()) do
					if obj:IsA("BodyMover") then
						pcall(function() obj:Destroy() end)
					end
				end
			end
			for _, p in pairs(char:GetDescendants()) do
				if p:IsA("BasePart") then
					p.CanCollide = true
				end
			end
		end
	end
	
	-- TECLA X — FLING
	local function dispararFling()
		local char = player.Character
		if not char then return end
		local root = char:FindFirstChild("HumanoidRootPart")
		local humanoid = char:FindFirstChildOfClass("Humanoid")
		if not root or not humanoid then return end
	
		-- Salva checkpoint ANTES de qualquer coisa
		checkpointSalvo = root.CFrame
	
		limparForcas()
		flingAtivo = true
	
		notificar("FLING [ X ]", "Pressione [ C ] pra voltar!", Color3.fromRGB(120, 0, 0))
	
		-- Noclip
		conexaoNoclip = RunService.Stepped:Connect(function()
			if not flingAtivo then return end
			local c = player.Character
			if not c then return end
			for _, p in pairs(c:GetDescendants()) do
				if p:IsA("BasePart") then
					p.CanCollide = false
				end
			end
		end)
	
		-- Rotação
		bAV = Instance.new("BodyAngularVelocity")
		bAV.Name = "FlingForce"
		bAV.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
		bAV.P = 30000
		bAV.AngularVelocity = Vector3.new(10000, 10000, 10000)
		bAV.Parent = root
	
		-- Velocidade pra cima — guardamos referência em bV
		bV = Instance.new("BodyVelocity")
		bV.Name = "FlingUp"
		bV.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
		bV.Velocity = Vector3.new(0, 900, 0)
		bV.Parent = root
	
		local tick = 0
		conexaoFling = RunService.Heartbeat:Connect(function(dt)
			if not flingAtivo then return end
			tick = tick + dt
			local c = player.Character
			if not c then return end
			local r = c:FindFirstChild("HumanoidRootPart")
			if not r then return end
			local b = r:FindFirstChild("FlingForce")
			if b then
				local direcao = math.sin(tick * 5) * 20000
				b.AngularVelocity = Vector3.new(direcao, 20000, direcao)
			end
		end)
	
		-- Para as forças após 1.5s
		task.delay(1.5, function()
			limparForcas()
		end)
	end
	
	-- TECLA C — VOLTA PRO CHECKPOINT
	local function voltarCheckpoint()
		if not checkpointSalvo then
			notificar("⚠️ Sem checkpoint", "Dispare o fling primeiro!", Color3.fromRGB(150, 80, 0))
			return
		end
	
		local char = player.Character
		if not char then return end
		local root = char:FindFirstChild("HumanoidRootPart")
		local hum = char:FindFirstChildOfClass("Humanoid")
		if not root or not hum then return end
	
		-- Para tudo imediatamente
		limparForcas()
	
		-- Âncora o personagem para impedir qualquer física
		hum.PlatformStand = true
		root.Anchored = true
	
		-- Zera TODA física residual
		root.Velocity = Vector3.zero
		root.RotVelocity = Vector3.zero
		root.AssemblyLinearVelocity = Vector3.zero
		root.AssemblyAngularVelocity = Vector3.zero
	
		-- Remove qualquer BodyMover que sobrou
		for _, obj in pairs(root:GetChildren()) do
			if obj:IsA("BodyMover") then
				pcall(function() obj:Destroy() end)
			end
		end
	
		-- Teleporta
		root.CFrame = checkpointSalvo
	
		-- Mantém travado por alguns frames pra física assentar
		local frameCount = 0
		conexaoTrava = RunService.Heartbeat:Connect(function()
			frameCount = frameCount + 1
			root.Velocity = Vector3.zero
			root.RotVelocity = Vector3.zero
			root.AssemblyLinearVelocity = Vector3.zero
			root.AssemblyAngularVelocity = Vector3.zero
			root.CFrame = checkpointSalvo
	
			if frameCount >= 10 then
				-- Solta depois de 10 frames garantidos
				if conexaoTrava then
					conexaoTrava:Disconnect()
					conexaoTrava = nil
				end
				root.Anchored = false
				hum.PlatformStand = false
			end
		end)
	
		notificar("VOLTOU [ C ]", "De volta ao checkpoint!", Color3.fromRGB(120, 0, 0))
	end
	
	-- BOTÃO DO PAINEL
	botao.MouseButton1Click:Connect(function()
		permissaoPainel = not permissaoPainel
		if permissaoPainel then
			iconeStatus.TextColor3 = Color3.fromRGB(0, 255, 0)
			notificar("Fling LIBERADO", "[ X ] Fling  |  [ C ] Voltar", Color3.fromRGB(120, 0, 0))
		else
			iconeStatus.TextColor3 = Color3.fromRGB(255, 0, 0)
			limparForcas()
			checkpointSalvo = nil
			notificar("Fling BLOQUEADO", "Desativado pelo painel", Color3.fromRGB(120, 0, 0))
		end
	end)
	
	-- TECLAS
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		if not permissaoPainel then return end
	
		if input.KeyCode == Enum.KeyCode.X then
			dispararFling()
		elseif input.KeyCode == Enum.KeyCode.C then
			voltarCheckpoint()
		end
	end)
	
	-- RESETA AO MORRER
	player.CharacterAdded:Connect(function()
		task.wait(0.5)
		limparForcas()
		checkpointSalvo = nil
		if permissaoPainel then
			iconeStatus.TextColor3 = Color3.fromRGB(0, 255, 0)
		end
	end)
end
coroutine.wrap(KRDGS_fake_script)()
local function SPGVSH_fake_script() -- SPEED.LocalScript 
	local script = Instance.new('LocalScript', SPEED)

	local Button = script.Parent
	local Indicator = Button:FindFirstChild("TextLabel") -- O "+" do botão
	local plr = game:GetService("Players").LocalPlayer
	local PlayerGui = plr:WaitForChild("PlayerGui")
	
	local menuAberto = nil -- Variável para saber se o menu já está na tela
	
	Button.MouseButton1Click:Connect(function()
		-- Se o menu já existir, vamos fechar ele
		if menuAberto then
			menuAberto:Destroy()
			menuAberto = nil
			if Indicator then Indicator.TextColor3 = Color3.fromRGB(255, 0, 0) end -- Fica Vermelho
			return
		end
	
		-- Se não existir, vamos criar o Menu de Velocidade Customizado
		if Indicator then Indicator.TextColor3 = Color3.fromRGB(0, 255, 0) end -- Fica Verde
	
		-- 1. Criando o Quadro (Frame) do Menu
		local CustomMenu = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local Title = Instance.new("TextLabel")
		local TextBox = Instance.new("TextBox")
		local CloseBtn = Instance.new("TextButton")
	
		CustomMenu.Name = "SpeedMenu"
		CustomMenu.Parent = script:FindFirstAncestorOfClass("ScreenGui")
		CustomMenu.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		CustomMenu.Position = UDim2.new(0.5, 50, 0.5, -50) -- Aparece perto do centro
		CustomMenu.Size = UDim2.new(0, 150, 0, 100)
		CustomMenu.Active = true
		CustomMenu.Draggable = true -- Faz o menu ser arrastável
	
		UICorner.CornerRadius = UDim.new(0, 10)
		UICorner.Parent = CustomMenu
	
		-- Título
		Title.Size = UDim2.new(1, 0, 0, 30)
		Title.BackgroundTransparency = 1
		Title.Text = "VELOCIDADE"
		Title.TextColor3 = Color3.new(1, 1, 1)
		Title.Font = Enum.Font.SourceSansBold
		Title.Parent = CustomMenu
	
		-- TextBox (Onde digita o número)
		TextBox.Size = UDim2.new(0, 100, 0, 30)
		TextBox.Position = UDim2.new(0.5, -50, 0.5, -5)
		TextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
		TextBox.Text = "16" -- Padrão
		TextBox.TextColor3 = Color3.new(1, 1, 1)
		TextBox.Parent = CustomMenu
		Instance.new("UICorner", TextBox).CornerRadius = UDim.new(0, 5)
	
		-- Botão X para fechar
		CloseBtn.Size = UDim2.new(0, 25, 0, 25)
		CloseBtn.Position = UDim2.new(1, -30, 0, 5)
		CloseBtn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
		CloseBtn.Text = "X"
		CloseBtn.TextColor3 = Color3.new(1, 1, 1)
		CloseBtn.Parent = CustomMenu
		Instance.new("UICorner", CloseBtn).CornerRadius = UDim.new(1, 0)
	
		menuAberto = CustomMenu
	
		-- Lógica do TextBox (Mudar velocidade ao digitar)
		TextBox.FocusLost:Connect(function(enterPressed)
			local num = tonumber(TextBox.Text)
			if num then
				if plr.Character and plr.Character:FindFirstChild("Humanoid") then
					plr.Character.Humanoid.WalkSpeed = num
				end
			end
		end)
	
		-- Lógica do botão X (Fechar)
		CloseBtn.MouseButton1Click:Connect(function()
			CustomMenu:Destroy()
			menuAberto = nil
			if Indicator then Indicator.TextColor3 = Color3.fromRGB(255, 0, 0) end
		end)
	end)
end
coroutine.wrap(SPGVSH_fake_script)()
local function FFNS_fake_script() -- TarGetTela3.NOMES 
	local script = Instance.new('LocalScript', TarGetTela3)

	local Players = game:GetService("Players")
	
	local targettela3 = script.Parent
	local textBox = targettela3:WaitForChild("@username") 
	local labelID = textBox:WaitForChild("ID")
	local labelDisplay = textBox:WaitForChild("DISPLAY NAME")
	local imageLabel = targettela3:WaitForChild("AVATA")
	
	-- Imagem padrão quando não encontrar ninguém
	local IMAGEM_PADRAO = "rbxassetid://4620867021"
	
	local function resetarInterface()
		labelID.Text = "ID: 000000"
		labelDisplay.Text = "NÃO ENCONTRADO"
		imageLabel.Image = IMAGEM_PADRAO -- Define a imagem que você pediu
	end
	
	-- Inicializa a interface com a imagem padrão ao rodar o script
	resetarInterface()
	
	textBox.FocusLost:Connect(function(enterPressed)
		if enterPressed then
			local alvo = textBox.Text:lower():gsub("%s+", "") 
			local jogadorEncontrado = nil
	
			if alvo ~= "" then
				for _, player in pairs(Players:GetPlayers()) do
					local nomeReal = player.Name:lower()
					local nomeExibicao = player.DisplayName:lower()
	
					if string.find(nomeReal, alvo) or string.find(nomeExibicao, alvo) then
						jogadorEncontrado = player
						break 
					end
				end
			end
	
			if jogadorEncontrado then
				local content, isReady = Players:GetUserThumbnailAsync(
					jogadorEncontrado.UserId, 
					Enum.ThumbnailType.AvatarThumbnail, 
					Enum.ThumbnailSize.Size420x420
				)
				imageLabel.Image = content
				labelID.Text = "ID: " .. jogadorEncontrado.UserId
				labelDisplay.Text = jogadorEncontrado.DisplayName
			else
				resetarInterface()
			end
		end
	end)
end
coroutine.wrap(FFNS_fake_script)()
local function KKAP_fake_script() -- TarGetTela3.VIEW 
	local script = Instance.new('LocalScript', TarGetTela3)

	local Players = game:GetService("Players")
	local camera = workspace.CurrentCamera
	
	local targettela3 = script.Parent
	local textBox = targettela3:WaitForChild("@username")
	
	-- Botões e Sinais (Todos usando o objeto "A" como referência)
	local btnView = targettela3:WaitForChild("VIEW")
	local sinalView = btnView:WaitForChild("TextLabel")
	
	local btnFollow = targettela3:WaitForChild("FOLLOW")
	local sinalFollow = btnFollow:WaitForChild("TextLabel")
	
	local btnFocus = targettela3:WaitForChild("FOCUS")
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
coroutine.wrap(KKAP_fake_script)()
local function EPVC_fake_script() -- ANTAFK.LocalScript 
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
coroutine.wrap(EPVC_fake_script)()
local function SYGV_fake_script() -- FLASHBACK.LocalScript 
	local script = Instance.new('LocalScript', FLASHBACK)

	local RunService = game:GetService("RunService")
	local UserInputService = game:GetService("UserInputService")
	local Players = game:GetService("Players")
	
	local player = Players.LocalPlayer
	local botao = script.Parent
	local iconeStatus = botao:WaitForChild("TextLabel")
	
	-- CONFIGURAÇÕES SINCRONIZADAS
	local flashbackLength = 1000 
	local interval = 0.03 -- Tempo entre cada "foto" do seu personagem
	local suavidade = 0.12 -- Mantém o movimento liso
	
	-- VARIÁVEIS
	local permissaoPainel = false
	local frames = {}
	local tempoAcumulado = 0
	
	-- 1. LIGA/DESLIGA
	botao.MouseButton1Click:Connect(function()
		permissaoPainel = not permissaoPainel
		if permissaoPainel then
			iconeStatus.TextColor3 = Color3.fromRGB(0, 255, 0)
		else
			iconeStatus.TextColor3 = Color3.fromRGB(255, 0, 0)
			table.clear(frames)
		end
	end)
	
	-- 2. GRAVAÇÃO E REPRODUÇÃO SINCRONIZADA
	RunService.Heartbeat:Connect(function(dt)
		if not permissaoPainel then return end
	
		local char = player.Character
		local root = char and char:FindFirstChild("HumanoidRootPart")
		local hum = char and char:FindFirstChildOfClass("Humanoid")
	
		if not root or not hum then return end
	
		-- MODO REBOBINAR (Segurando V)
		if UserInputService:IsKeyDown(Enum.KeyCode.V) then
			tempoAcumulado = tempoAcumulado + dt
	
			-- Só remove um frame quando o tempo passado for igual ao intervalo de gravação
			-- Isso garante que a velocidade de volta seja IGUAL à velocidade de ida
			if tempoAcumulado >= interval and #frames > 0 then
				tempoAcumulado = 0
				local alvo = table.remove(frames, 1)
	
				if alvo then
					local fator = 1 - (suavidade ^ (dt * 60))
					root.CFrame = root.CFrame:Lerp(alvo.cf, fator)
					root.Velocity = -alvo.vel * 0.3
					hum:ChangeState(alvo.state)
	
					if alvo.tool and not char:FindFirstChildOfClass("Tool") then
						hum:EquipTool(alvo.tool)
					end
				end
			end
	
			-- MODO GRAVAÇÃO (Andando normal)
		else
			tempoAcumulado = tempoAcumulado + dt
			if tempoAcumulado >= interval then
				tempoAcumulado = 0
	
				table.insert(frames, 1, {
					cf = root.CFrame,
					vel = root.Velocity,
					state = hum:GetState(),
					tool = char:FindFirstChildOfClass("Tool")
				})
	
				if #frames > (flashbackLength / interval) then
					table.remove(frames, #frames)
				end
			end
		end
	end)
end
coroutine.wrap(SYGV_fake_script)()
local function QZXAAIN_fake_script() -- NOCLIP.LocalScript 
	local script = Instance.new('LocalScript', NOCLIP)

	local Button = script.Parent
	local Indicator = Button:FindFirstChild("TextLabel") -- O seu "+"
	local plr = game:GetService("Players").LocalPlayer
	local RunService = game:GetService("RunService")
	
	local noclipOn = false
	local noclipConn = nil
	
	Button.MouseButton1Click:Connect(function()
		if not noclipOn then
			-- ========================
			-- LIGAR NOCLIP
			-- ========================
			noclipOn = true
	
			-- Muda o "+" para VERDE
			if Indicator then
				Indicator.TextColor3 = Color3.fromRGB(0, 255, 0)
			end
	
			-- Cria a conexão para desativar colisão repetidamente
			noclipConn = RunService.Stepped:Connect(function()
				if plr.Character then
					for _, part in ipairs(plr.Character:GetDescendants()) do
						if part:IsA("BasePart") and part.CanCollide == true then
							part.CanCollide = false
						end
					end
				end
			end)
		else
			-- ========================
			-- DESLIGAR NOCLIP
			-- ========================
			noclipOn = false
	
			-- Muda o "+" para VERMELHO
			if Indicator then
				Indicator.TextColor3 = Color3.fromRGB(255, 0, 0)
			end
	
			-- Desconecta o loop do Noclip
			if noclipConn then
				noclipConn:Disconnect()
				noclipConn = nil
			end
	
			-- Força a colisão a voltar ao normal no personagem
			if plr.Character then
				for _, part in ipairs(plr.Character:GetDescendants()) do
					if part:IsA("BasePart") then
						part.CanCollide = true
					end
				end
			end
		end
	end)
end
coroutine.wrap(QZXAAIN_fake_script)()
local function PFZM_fake_script() -- CLICKTP.LocalScript 
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
coroutine.wrap(PFZM_fake_script)()
local function OXMZ_fake_script() -- clicker.LocalScript 
	local script = Instance.new('LocalScript', clicker)

	local painel = script.Parent.Parent:WaitForChild("MainPanel")
	local botao = script.Parent
	
	botao.MouseButton1Click:Connect(function()
		painel.Visible = not painel.Visible
	end)
end
coroutine.wrap(OXMZ_fake_script)()
