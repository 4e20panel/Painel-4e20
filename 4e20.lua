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
local ImageLabel = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local name = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local TextLabel_7 = Instance.new("TextLabel")
local TextLabel_8 = Instance.new("TextLabel")
local TextLabel_9 = Instance.new("TextLabel")
local BackgroundImage = Instance.new("ImageLabel")
local VipTela2 = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextLabel_10 = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local AUTOPARRY = Instance.new("TextButton")
local TextLabel_11 = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local INVISIBILITY = Instance.new("TextButton")
local TextLabel_12 = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local TextButton_2 = Instance.new("TextButton")
local TextLabel_13 = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local TextButton_3 = Instance.new("TextButton")
local TextLabel_14 = Instance.new("TextLabel")
local UICorner_5 = Instance.new("UICorner")
local SPIN = Instance.new("TextButton")
local TextLabel_15 = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")
local TextButton_4 = Instance.new("TextButton")
local TextLabel_16 = Instance.new("TextLabel")
local UICorner_7 = Instance.new("UICorner")
local FLING = Instance.new("TextButton")
local TextLabel_17 = Instance.new("TextLabel")
local UICorner_8 = Instance.new("UICorner")
local COLISION = Instance.new("TextButton")
local TextLabel_18 = Instance.new("TextLabel")
local UICorner_9 = Instance.new("UICorner")
local SPEED = Instance.new("TextButton")
local TextLabel_19 = Instance.new("TextLabel")
local UICorner_10 = Instance.new("UICorner")
local bloqueiovip = Instance.new("Frame")
local TextLabel_20 = Instance.new("TextLabel")
local TextLabel_21 = Instance.new("TextLabel")
local TarGetTela3 = Instance.new("Frame")
local FOLLOW = Instance.new("TextButton")
local TextLabel_22 = Instance.new("TextLabel")
local VIEW = Instance.new("TextButton")
local TextLabel_23 = Instance.new("TextLabel")
local COPYID = Instance.new("TextButton")
local FOCUS = Instance.new("TextButton")
local TextLabel_24 = Instance.new("TextLabel")
local ImageLabel_2 = Instance.new("ImageLabel")
local TextLabel_25 = Instance.new("TextLabel")
local TextLabel_26 = Instance.new("TextLabel")
local username = Instance.new("TextBox")
local UICorner_11 = Instance.new("UICorner")
local MiscTela4 = Instance.new("Frame")
local ANTAFK = Instance.new("TextButton")
local TextLabel_27 = Instance.new("TextLabel")
local UICorner_12 = Instance.new("UICorner")
local FLASHBACK = Instance.new("TextButton")
local TextLabel_28 = Instance.new("TextLabel")
local UICorner_13 = Instance.new("UICorner")
local NOCLIP = Instance.new("TextButton")
local TextLabel_29 = Instance.new("TextLabel")
local UICorner_14 = Instance.new("UICorner")
local CLICKTP = Instance.new("TextButton")
local TextLabel_30 = Instance.new("TextLabel")
local UICorner_15 = Instance.new("UICorner")
local CharacterTela5 = Instance.new("Frame")
local ANTAFK_2 = Instance.new("TextButton")
local TextLabel_31 = Instance.new("TextLabel")
local UICorner_16 = Instance.new("UICorner")
local FLASHBACK_2 = Instance.new("TextButton")
local TextLabel_32 = Instance.new("TextLabel")
local UICorner_17 = Instance.new("UICorner")
local NOCLIP_2 = Instance.new("TextButton")
local TextLabel_33 = Instance.new("TextLabel")
local UICorner_18 = Instance.new("UICorner")
local CLICKTP_2 = Instance.new("TextButton")
local TextLabel_34 = Instance.new("TextLabel")
local UICorner_19 = Instance.new("UICorner")
local AboutTela6 = Instance.new("Frame")
local TextLabel_35 = Instance.new("TextLabel")
local TextLabel_36 = Instance.new("TextLabel")
local TextLabel_37 = Instance.new("TextLabel")
local TextLabel_38 = Instance.new("TextLabel")
local TextLabel_39 = Instance.new("TextLabel")
local OwnerTela7 = Instance.new("Frame")
local ScrollingFrame_2 = Instance.new("ScrollingFrame")
local display = Instance.new("TextLabel")
local userid = Instance.new("TextLabel")
local AVATA = Instance.new("ImageLabel")
local UICorner_20 = Instance.new("UICorner")
local OWNER_2 = Instance.new("TextButton")
local UICorner_21 = Instance.new("UICorner")
local username_2 = Instance.new("TextBox")
local UICorner_22 = Instance.new("UICorner")
local MEOW = Instance.new("TextButton")
local UICorner_23 = Instance.new("UICorner")
local MANAGER = Instance.new("TextButton")
local UICorner_24 = Instance.new("UICorner")
local STAFF_2 = Instance.new("TextButton")
local UICorner_25 = Instance.new("UICorner")
local SUPORTE = Instance.new("TextButton")
local UICorner_26 = Instance.new("UICorner")
local VIP4E20 = Instance.new("TextButton")
local UICorner_27 = Instance.new("UICorner")
local DEVELOP = Instance.new("TextButton")
local UICorner_28 = Instance.new("UICorner")
local BABY = Instance.new("TextButton")
local UICorner_29 = Instance.new("UICorner")
local ADD = Instance.new("TextButton")
local UICorner_30 = Instance.new("UICorner")
local StaffTela8 = Instance.new("Frame")
local TextLabel_40 = Instance.new("TextLabel")
local teleportuser = Instance.new("Frame")
local ScrollingFrame_3 = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local user = Instance.new("TextButton")
local BanTela9 = Instance.new("Frame")
local BANIMENTO = Instance.new("TextLabel")
local BAN_2 = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")
local ImageLabel_3 = Instance.new("ImageLabel")
local UICorner_31 = Instance.new("UICorner")
local USERID = Instance.new("TextLabel")
local DESBANIDO = Instance.new("TextButton")
local DESBANIDO_2 = Instance.new("TextLabel")
local disponivel = Instance.new("TextLabel")
local BANIDO = Instance.new("TextLabel")
local BANIDO_2 = Instance.new("Frame")
local VOCEFOIBANIDODOPAINEL = Instance.new("TextLabel")
local COMPREODESBANNONOSSODISCORD = Instance.new("TextLabel")
local ImageLabel_4 = Instance.new("ImageLabel")
local UICorner_32 = Instance.new("UICorner")
local clicker = Instance.new("ImageButton")
local UICorner_33 = Instance.new("UICorner")

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
MainPanel.Size = UDim2.new(0, 500, 0, 330)

TopBar.Name = "TopBar"
TopBar.Parent = MainPanel
TopBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TopBar.BackgroundTransparency = 0.100
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
TitleLabel.TextSize = 25.000

BOTOES.Name = "BOTOES"
BOTOES.Parent = MainPanel
BOTOES.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
BOTOES.BackgroundTransparency = 0.100
BOTOES.BorderColor3 = Color3.fromRGB(0, 0, 0)
BOTOES.BorderSizePixel = 0
BOTOES.Position = UDim2.new(0, 0, 0, 28)
BOTOES.Size = UDim2.new(0, 100, 1, -28)
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
HOME.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
HOME.BorderColor3 = Color3.fromRGB(0, 0, 0)
HOME.BorderSizePixel = 0
HOME.LayoutOrder = 1
HOME.Size = UDim2.new(1, 0, 0, 35)
HOME.Font = Enum.Font.SourceSansBold
HOME.Text = "HOME"
HOME.TextColor3 = Color3.fromRGB(197, 197, 197)
HOME.TextSize = 17.000
HOME.TextWrapped = true

VIP.Name = "VIP"
VIP.Parent = ScrollingFrame
VIP.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
VIP.BorderColor3 = Color3.fromRGB(0, 0, 0)
VIP.BorderSizePixel = 0
VIP.LayoutOrder = 2
VIP.Size = UDim2.new(1, 0, 0, 35)
VIP.Font = Enum.Font.SourceSansBold
VIP.Text = "VIP"
VIP.TextColor3 = Color3.fromRGB(197, 197, 197)
VIP.TextSize = 17.000

TARGET.Name = "TARGET"
TARGET.Parent = ScrollingFrame
TARGET.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
TARGET.BorderColor3 = Color3.fromRGB(0, 0, 0)
TARGET.BorderSizePixel = 0
TARGET.LayoutOrder = 3
TARGET.Position = UDim2.new(0.159999996, 0, 0.484507054, 0)
TARGET.Size = UDim2.new(1, 0, 0, 35)
TARGET.Font = Enum.Font.SourceSansBold
TARGET.Text = "TARGET"
TARGET.TextColor3 = Color3.fromRGB(197, 197, 197)
TARGET.TextSize = 17.000

MISC.Name = "MISC"
MISC.Parent = ScrollingFrame
MISC.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
MISC.BorderColor3 = Color3.fromRGB(0, 0, 0)
MISC.BorderSizePixel = 0
MISC.LayoutOrder = 4
MISC.Size = UDim2.new(1, 0, 0, 35)
MISC.Font = Enum.Font.SourceSansBold
MISC.Text = "MISC"
MISC.TextColor3 = Color3.fromRGB(197, 197, 197)
MISC.TextSize = 17.000

CHARACTER.Name = "CHARACTER"
CHARACTER.Parent = ScrollingFrame
CHARACTER.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
CHARACTER.BorderColor3 = Color3.fromRGB(0, 0, 0)
CHARACTER.BorderSizePixel = 0
CHARACTER.LayoutOrder = 5
CHARACTER.Position = UDim2.new(0.0799999982, 0, 0.374647886, 0)
CHARACTER.Size = UDim2.new(1, 0, 0, 35)
CHARACTER.Font = Enum.Font.SourceSansBold
CHARACTER.Text = "CHARACTER"
CHARACTER.TextColor3 = Color3.fromRGB(197, 197, 197)
CHARACTER.TextSize = 17.000

ABOUT.Name = "ABOUT"
ABOUT.Parent = ScrollingFrame
ABOUT.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
ABOUT.BorderColor3 = Color3.fromRGB(0, 0, 0)
ABOUT.BorderSizePixel = 0
ABOUT.LayoutOrder = 6
ABOUT.Position = UDim2.new(1.63999999, 0, 0.450704217, 0)
ABOUT.Size = UDim2.new(1, 0, 0, 35)
ABOUT.Font = Enum.Font.SourceSansBold
ABOUT.Text = "ABOUT"
ABOUT.TextColor3 = Color3.fromRGB(197, 197, 197)
ABOUT.TextSize = 17.000

OWNER.Name = "OWNER"
OWNER.Parent = ScrollingFrame
OWNER.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
OWNER.BorderColor3 = Color3.fromRGB(0, 0, 0)
OWNER.BorderSizePixel = 0
OWNER.LayoutOrder = 7
OWNER.Size = UDim2.new(1, 0, 0, 35)
OWNER.Font = Enum.Font.SourceSansBold
OWNER.Text = "OWNER"
OWNER.TextColor3 = Color3.fromRGB(197, 197, 197)
OWNER.TextSize = 17.000

STAFF.Name = "STAFF"
STAFF.Parent = ScrollingFrame
STAFF.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
STAFF.BorderColor3 = Color3.fromRGB(0, 0, 0)
STAFF.BorderSizePixel = 0
STAFF.LayoutOrder = 8
STAFF.Size = UDim2.new(1, 0, 0, 35)
STAFF.Font = Enum.Font.SourceSansBold
STAFF.Text = "STAFF"
STAFF.TextColor3 = Color3.fromRGB(197, 197, 197)
STAFF.TextSize = 17.000

BAN.Name = "BAN"
BAN.Parent = ScrollingFrame
BAN.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
BAN.BorderColor3 = Color3.fromRGB(0, 0, 0)
BAN.BorderSizePixel = 0
BAN.LayoutOrder = 9
BAN.Size = UDim2.new(1, 0, 0, 35)
BAN.Font = Enum.Font.SourceSansBold
BAN.Text = "BAN"
BAN.TextColor3 = Color3.fromRGB(197, 197, 197)
BAN.TextSize = 17.000

HomeTela1.Name = "HomeTela1"
HomeTela1.Parent = MainPanel
HomeTela1.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
HomeTela1.BackgroundTransparency = 0.100
HomeTela1.BorderColor3 = Color3.fromRGB(0, 0, 0)
HomeTela1.BorderSizePixel = 0
HomeTela1.LayoutOrder = 1
HomeTela1.Position = UDim2.new(0, 100, 0, 28)
HomeTela1.Size = UDim2.new(1, -100, 1, -28)
HomeTela1.ZIndex = 2

ImageLabel.Parent = HomeTela1
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0, 20, 0, 20)
ImageLabel.Size = UDim2.new(0, 100, 0, 100)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

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
name.Position = UDim2.new(0, 191, 0, 15)
name.Size = UDim2.new(0, 100, 0, 50)
name.Font = Enum.Font.SourceSans
name.Text = "name"
name.TextColor3 = Color3.fromRGB(197, 197, 197)
name.TextSize = 20.000

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

TextLabel_6.Parent = HomeTela1
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0, 90, 0, 180)
TextLabel_6.Size = UDim2.new(0, 50, 0, 50)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.Text = "000"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextSize = 25.000

TextLabel_7.Parent = HomeTela1
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0, 17, 0, 210)
TextLabel_7.Size = UDim2.new(0, 50, 0, 50)
TextLabel_7.Font = Enum.Font.SourceSans
TextLabel_7.Text = "Date:"
TextLabel_7.TextColor3 = Color3.fromRGB(197, 197, 197)
TextLabel_7.TextSize = 25.000

TextLabel_8.Parent = HomeTela1
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Position = UDim2.new(0, 100, 0, 210)
TextLabel_8.Size = UDim2.new(0, 50, 0, 50)
TextLabel_8.Font = Enum.Font.SourceSans
TextLabel_8.Text = "00/00/0000"
TextLabel_8.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.TextSize = 25.000

TextLabel_9.Parent = HomeTela1
TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BackgroundTransparency = 1.000
TextLabel_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_9.BorderSizePixel = 0
TextLabel_9.Position = UDim2.new(0, 70, 0, 130)
TextLabel_9.Size = UDim2.new(0, 50, 0, 50)
TextLabel_9.Font = Enum.Font.SourceSans
TextLabel_9.Text = "000"
TextLabel_9.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.TextSize = 25.000

BackgroundImage.Name = "BackgroundImage"
BackgroundImage.Parent = MainPanel
BackgroundImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BackgroundImage.BackgroundTransparency = 1.000
BackgroundImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
BackgroundImage.BorderSizePixel = 0
BackgroundImage.Size = UDim2.new(1, 0, 1, 0)
BackgroundImage.Image = "rbxassetid://101568849605769"
BackgroundImage.ScaleType = Enum.ScaleType.Slice

VipTela2.Name = "VipTela2"
VipTela2.Parent = MainPanel
VipTela2.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
VipTela2.BackgroundTransparency = 0.100
VipTela2.BorderColor3 = Color3.fromRGB(0, 0, 0)
VipTela2.BorderSizePixel = 0
VipTela2.LayoutOrder = 1
VipTela2.Position = UDim2.new(0, 100, 0, 28)
VipTela2.Size = UDim2.new(1, -100, 1, -28)
VipTela2.Visible = false
VipTela2.ZIndex = 2

TextButton.Parent = VipTela2
TextButton.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0, 205, 0, 210)
TextButton.Size = UDim2.new(0, 140, 0, 40)
TextButton.Font = Enum.Font.SourceSansBold
TextButton.Text = "----"
TextButton.TextColor3 = Color3.fromRGB(197, 197, 197)
TextButton.TextSize = 14.000

TextLabel_10.Parent = TextButton
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

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = TextButton

AUTOPARRY.Name = "AUTO - PARRY"
AUTOPARRY.Parent = VipTela2
AUTOPARRY.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
AUTOPARRY.BorderColor3 = Color3.fromRGB(0, 0, 0)
AUTOPARRY.BorderSizePixel = 0
AUTOPARRY.Position = UDim2.new(0, 10, 0, 210)
AUTOPARRY.Size = UDim2.new(0, 140, 0, 40)
AUTOPARRY.Font = Enum.Font.SourceSansBold
AUTOPARRY.Text = "AUTO - PARRY"
AUTOPARRY.TextColor3 = Color3.fromRGB(197, 197, 197)
AUTOPARRY.TextSize = 14.000

TextLabel_11.Parent = AUTOPARRY
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

UICorner_2.CornerRadius = UDim.new(0, 6)
UICorner_2.Parent = AUTOPARRY

INVISIBILITY.Name = "INVISIBILITY"
INVISIBILITY.Parent = VipTela2
INVISIBILITY.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
INVISIBILITY.BorderColor3 = Color3.fromRGB(0, 0, 0)
INVISIBILITY.BorderSizePixel = 0
INVISIBILITY.Position = UDim2.new(0, 10, 0, 160)
INVISIBILITY.Size = UDim2.new(0, 140, 0, 40)
INVISIBILITY.Font = Enum.Font.SourceSansBold
INVISIBILITY.Text = "INVISIBILITY"
INVISIBILITY.TextColor3 = Color3.fromRGB(197, 197, 197)
INVISIBILITY.TextSize = 14.000

TextLabel_12.Parent = INVISIBILITY
TextLabel_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.BackgroundTransparency = 1.000
TextLabel_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_12.BorderSizePixel = 0
TextLabel_12.Position = UDim2.new(0, 142, 0, 0)
TextLabel_12.Size = UDim2.new(0, 50, 0, 40)
TextLabel_12.Font = Enum.Font.SourceSansBold
TextLabel_12.Text = "+"
TextLabel_12.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_12.TextScaled = true
TextLabel_12.TextSize = 14.000
TextLabel_12.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 6)
UICorner_3.Parent = INVISIBILITY

TextButton_2.Parent = VipTela2
TextButton_2.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0, 205, 0, 160)
TextButton_2.Size = UDim2.new(0, 140, 0, 40)
TextButton_2.Font = Enum.Font.SourceSansBold
TextButton_2.Text = "----"
TextButton_2.TextColor3 = Color3.fromRGB(197, 197, 197)
TextButton_2.TextSize = 14.000

TextLabel_13.Parent = TextButton_2
TextLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.BackgroundTransparency = 1.000
TextLabel_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_13.BorderSizePixel = 0
TextLabel_13.Position = UDim2.new(0, 142, 0, 0)
TextLabel_13.Size = UDim2.new(0, 50, 0, 40)
TextLabel_13.Font = Enum.Font.SourceSansBold
TextLabel_13.Text = "+"
TextLabel_13.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_13.TextScaled = true
TextLabel_13.TextSize = 14.000
TextLabel_13.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 6)
UICorner_4.Parent = TextButton_2

TextButton_3.Parent = VipTela2
TextButton_3.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0, 205, 0, 110)
TextButton_3.Size = UDim2.new(0, 140, 0, 40)
TextButton_3.Font = Enum.Font.SourceSansBold
TextButton_3.Text = "----"
TextButton_3.TextColor3 = Color3.fromRGB(197, 197, 197)
TextButton_3.TextSize = 14.000

TextLabel_14.Parent = TextButton_3
TextLabel_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.BackgroundTransparency = 1.000
TextLabel_14.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_14.BorderSizePixel = 0
TextLabel_14.Position = UDim2.new(0, 142, 0, 0)
TextLabel_14.Size = UDim2.new(0, 50, 0, 40)
TextLabel_14.Font = Enum.Font.SourceSansBold
TextLabel_14.Text = "+"
TextLabel_14.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_14.TextScaled = true
TextLabel_14.TextSize = 14.000
TextLabel_14.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 6)
UICorner_5.Parent = TextButton_3

SPIN.Name = "SPIN"
SPIN.Parent = VipTela2
SPIN.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
SPIN.BorderColor3 = Color3.fromRGB(0, 0, 0)
SPIN.BorderSizePixel = 0
SPIN.Position = UDim2.new(0, 10, 0, 110)
SPIN.Size = UDim2.new(0, 140, 0, 40)
SPIN.Font = Enum.Font.SourceSansBold
SPIN.Text = "SPIN"
SPIN.TextColor3 = Color3.fromRGB(197, 197, 197)
SPIN.TextSize = 14.000

TextLabel_15.Parent = SPIN
TextLabel_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_15.BackgroundTransparency = 1.000
TextLabel_15.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_15.BorderSizePixel = 0
TextLabel_15.Position = UDim2.new(0, 142, 0, 0)
TextLabel_15.Size = UDim2.new(0, 50, 0, 40)
TextLabel_15.Font = Enum.Font.SourceSansBold
TextLabel_15.Text = "+"
TextLabel_15.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_15.TextScaled = true
TextLabel_15.TextSize = 14.000
TextLabel_15.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(0, 6)
UICorner_6.Parent = SPIN

TextButton_4.Parent = VipTela2
TextButton_4.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0, 205, 0, 60)
TextButton_4.Size = UDim2.new(0, 140, 0, 40)
TextButton_4.Font = Enum.Font.SourceSansBold
TextButton_4.Text = "----"
TextButton_4.TextColor3 = Color3.fromRGB(197, 197, 197)
TextButton_4.TextSize = 14.000

TextLabel_16.Parent = TextButton_4
TextLabel_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_16.BackgroundTransparency = 1.000
TextLabel_16.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_16.BorderSizePixel = 0
TextLabel_16.Position = UDim2.new(0, 142, 0, 0)
TextLabel_16.Size = UDim2.new(0, 50, 0, 40)
TextLabel_16.Font = Enum.Font.SourceSansBold
TextLabel_16.Text = "+"
TextLabel_16.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_16.TextScaled = true
TextLabel_16.TextSize = 14.000
TextLabel_16.TextWrapped = true

UICorner_7.CornerRadius = UDim.new(0, 6)
UICorner_7.Parent = TextButton_4

FLING.Name = "FLING"
FLING.Parent = VipTela2
FLING.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
FLING.BorderColor3 = Color3.fromRGB(0, 0, 0)
FLING.BorderSizePixel = 0
FLING.Position = UDim2.new(0, 10, 0, 60)
FLING.Size = UDim2.new(0, 140, 0, 40)
FLING.Font = Enum.Font.SourceSansBold
FLING.Text = "FLING"
FLING.TextColor3 = Color3.fromRGB(197, 197, 197)
FLING.TextSize = 14.000

TextLabel_17.Parent = FLING
TextLabel_17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_17.BackgroundTransparency = 1.000
TextLabel_17.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_17.BorderSizePixel = 0
TextLabel_17.Position = UDim2.new(0, 142, 0, 0)
TextLabel_17.Size = UDim2.new(0, 50, 0, 40)
TextLabel_17.Font = Enum.Font.SourceSansBold
TextLabel_17.Text = "+"
TextLabel_17.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_17.TextScaled = true
TextLabel_17.TextSize = 14.000
TextLabel_17.TextWrapped = true

UICorner_8.CornerRadius = UDim.new(0, 6)
UICorner_8.Parent = FLING

COLISION.Name = "COLISION"
COLISION.Parent = VipTela2
COLISION.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
COLISION.BorderColor3 = Color3.fromRGB(0, 0, 0)
COLISION.BorderSizePixel = 0
COLISION.Position = UDim2.new(0, 205, 0, 10)
COLISION.Size = UDim2.new(0, 140, 0, 40)
COLISION.Font = Enum.Font.SourceSansBold
COLISION.Text = "COLISION"
COLISION.TextColor3 = Color3.fromRGB(197, 197, 197)
COLISION.TextSize = 14.000

TextLabel_18.Parent = COLISION
TextLabel_18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_18.BackgroundTransparency = 1.000
TextLabel_18.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_18.BorderSizePixel = 0
TextLabel_18.Position = UDim2.new(0, 142, 0, 0)
TextLabel_18.Size = UDim2.new(0, 50, 0, 40)
TextLabel_18.Font = Enum.Font.SourceSansBold
TextLabel_18.Text = "+"
TextLabel_18.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_18.TextScaled = true
TextLabel_18.TextSize = 14.000
TextLabel_18.TextWrapped = true

UICorner_9.CornerRadius = UDim.new(0, 6)
UICorner_9.Parent = COLISION

SPEED.Name = "SPEED"
SPEED.Parent = VipTela2
SPEED.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
SPEED.BorderColor3 = Color3.fromRGB(0, 0, 0)
SPEED.BorderSizePixel = 0
SPEED.Position = UDim2.new(0, 10, 0, 10)
SPEED.Size = UDim2.new(0, 140, 0, 40)
SPEED.Font = Enum.Font.SourceSansBold
SPEED.Text = "SPEED"
SPEED.TextColor3 = Color3.fromRGB(197, 197, 197)
SPEED.TextSize = 14.000

TextLabel_19.Parent = SPEED
TextLabel_19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_19.BackgroundTransparency = 1.000
TextLabel_19.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_19.BorderSizePixel = 0
TextLabel_19.Position = UDim2.new(0, 142, 0, 0)
TextLabel_19.Size = UDim2.new(0, 50, 0, 40)
TextLabel_19.Font = Enum.Font.SourceSansBold
TextLabel_19.Text = "+"
TextLabel_19.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_19.TextScaled = true
TextLabel_19.TextSize = 14.000
TextLabel_19.TextWrapped = true

UICorner_10.CornerRadius = UDim.new(0, 6)
UICorner_10.Parent = SPEED

bloqueiovip.Name = "bloqueiovip"
bloqueiovip.Parent = VipTela2
bloqueiovip.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
bloqueiovip.BackgroundTransparency = 0.100
bloqueiovip.BorderColor3 = Color3.fromRGB(0, 0, 0)
bloqueiovip.BorderSizePixel = 0
bloqueiovip.Size = UDim2.new(1, 0, 1, 0)
bloqueiovip.Visible = false
bloqueiovip.ZIndex = 2

TextLabel_20.Parent = bloqueiovip
TextLabel_20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_20.BackgroundTransparency = 1.000
TextLabel_20.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_20.BorderSizePixel = 0
TextLabel_20.Position = UDim2.new(0, 100, 0, 100)
TextLabel_20.Size = UDim2.new(0, 200, 0, 50)
TextLabel_20.Font = Enum.Font.SourceSans
TextLabel_20.Text = "ADQUIRIR VIP"
TextLabel_20.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_20.TextScaled = true
TextLabel_20.TextSize = 25.000
TextLabel_20.TextWrapped = true

TextLabel_21.Parent = bloqueiovip
TextLabel_21.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_21.BackgroundTransparency = 1.000
TextLabel_21.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_21.BorderSizePixel = 0
TextLabel_21.Position = UDim2.new(0, 60, 0, 140)
TextLabel_21.Size = UDim2.new(0, 280, 0, 40)
TextLabel_21.Font = Enum.Font.SourceSans
TextLabel_21.Text = "https://discord.gg/ZJw2qrYFSc"
TextLabel_21.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_21.TextSize = 25.000
TextLabel_21.TextWrapped = true

TarGetTela3.Name = "TarGetTela3"
TarGetTela3.Parent = MainPanel
TarGetTela3.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
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
FOLLOW.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
FOLLOW.BorderColor3 = Color3.fromRGB(0, 0, 0)
FOLLOW.BorderSizePixel = 0
FOLLOW.Position = UDim2.new(0, 205, 0, 150)
FOLLOW.Size = UDim2.new(0, 140, 0, 40)
FOLLOW.Font = Enum.Font.SourceSansBold
FOLLOW.Text = "FOLLOW"
FOLLOW.TextColor3 = Color3.fromRGB(197, 197, 197)
FOLLOW.TextSize = 14.000

TextLabel_22.Parent = FOLLOW
TextLabel_22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_22.BackgroundTransparency = 1.000
TextLabel_22.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_22.BorderSizePixel = 0
TextLabel_22.Position = UDim2.new(0, 142, 0, 0)
TextLabel_22.Size = UDim2.new(0, 50, 0, 40)
TextLabel_22.Font = Enum.Font.SourceSansBold
TextLabel_22.Text = "+"
TextLabel_22.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_22.TextScaled = true
TextLabel_22.TextSize = 14.000
TextLabel_22.TextWrapped = true

VIEW.Name = "VIEW"
VIEW.Parent = TarGetTela3
VIEW.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
VIEW.BorderColor3 = Color3.fromRGB(0, 0, 0)
VIEW.BorderSizePixel = 0
VIEW.Position = UDim2.new(0, 10, 0, 150)
VIEW.Size = UDim2.new(0, 140, 0, 40)
VIEW.Font = Enum.Font.SourceSansBold
VIEW.Text = "VIEW"
VIEW.TextColor3 = Color3.fromRGB(197, 197, 197)
VIEW.TextSize = 14.000

TextLabel_23.Parent = VIEW
TextLabel_23.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_23.BackgroundTransparency = 1.000
TextLabel_23.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_23.BorderSizePixel = 0
TextLabel_23.Position = UDim2.new(0, 142, 0, 0)
TextLabel_23.Size = UDim2.new(0, 50, 0, 40)
TextLabel_23.Font = Enum.Font.SourceSansBold
TextLabel_23.Text = "+"
TextLabel_23.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_23.TextScaled = true
TextLabel_23.TextSize = 14.000
TextLabel_23.TextWrapped = true

COPYID.Name = "COPY ID"
COPYID.Parent = TarGetTela3
COPYID.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
COPYID.BorderColor3 = Color3.fromRGB(0, 0, 0)
COPYID.BorderSizePixel = 0
COPYID.Position = UDim2.new(0, 205, 0, 200)
COPYID.Size = UDim2.new(0, 140, 0, 40)
COPYID.Font = Enum.Font.SourceSansBold
COPYID.Text = "COPY ID"
COPYID.TextColor3 = Color3.fromRGB(197, 197, 197)
COPYID.TextSize = 14.000

FOCUS.Name = "FOCUS"
FOCUS.Parent = TarGetTela3
FOCUS.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
FOCUS.BorderColor3 = Color3.fromRGB(0, 0, 0)
FOCUS.BorderSizePixel = 0
FOCUS.Position = UDim2.new(0, 10, 0, 200)
FOCUS.Size = UDim2.new(0, 140, 0, 40)
FOCUS.Font = Enum.Font.SourceSansBold
FOCUS.Text = "FOCUS"
FOCUS.TextColor3 = Color3.fromRGB(197, 197, 197)
FOCUS.TextSize = 14.000

TextLabel_24.Parent = FOCUS
TextLabel_24.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_24.BackgroundTransparency = 1.000
TextLabel_24.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_24.BorderSizePixel = 0
TextLabel_24.Position = UDim2.new(0, 142, 0, 0)
TextLabel_24.Size = UDim2.new(0, 50, 0, 40)
TextLabel_24.Font = Enum.Font.SourceSansBold
TextLabel_24.Text = "+"
TextLabel_24.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_24.TextScaled = true
TextLabel_24.TextSize = 14.000
TextLabel_24.TextWrapped = true

ImageLabel_2.Parent = TarGetTela3
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(0, 10, 0, 20)
ImageLabel_2.Size = UDim2.new(0, 100, 0, 100)
ImageLabel_2.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

TextLabel_25.Parent = TarGetTela3
TextLabel_25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_25.BackgroundTransparency = 1.000
TextLabel_25.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_25.BorderSizePixel = 0
TextLabel_25.Position = UDim2.new(0, 130, 0, 20)
TextLabel_25.Size = UDim2.new(0, 50, 0, 30)
TextLabel_25.Font = Enum.Font.SourceSans
TextLabel_25.Text = "UserID:"
TextLabel_25.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_25.TextSize = 17.000

TextLabel_26.Parent = TarGetTela3
TextLabel_26.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_26.BackgroundTransparency = 1.000
TextLabel_26.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_26.BorderSizePixel = 0
TextLabel_26.Position = UDim2.new(0, 130, 0, 50)
TextLabel_26.Size = UDim2.new(0, 50, 0, 30)
TextLabel_26.Font = Enum.Font.SourceSans
TextLabel_26.Text = "DisPlay:"
TextLabel_26.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_26.TextSize = 17.000

username.Name = "@username"
username.Parent = TarGetTela3
username.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
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

UICorner_11.CornerRadius = UDim.new(0, 6)
UICorner_11.Parent = username

MiscTela4.Name = "MiscTela4"
MiscTela4.Parent = MainPanel
MiscTela4.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
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
ANTAFK.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
ANTAFK.BorderColor3 = Color3.fromRGB(0, 0, 0)
ANTAFK.BorderSizePixel = 0
ANTAFK.Position = UDim2.new(0, 10, 0, 160)
ANTAFK.Size = UDim2.new(0, 140, 0, 40)
ANTAFK.Font = Enum.Font.SourceSansBold
ANTAFK.Text = "ANT-AFK"
ANTAFK.TextColor3 = Color3.fromRGB(197, 197, 197)
ANTAFK.TextSize = 14.000

TextLabel_27.Parent = ANTAFK
TextLabel_27.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_27.BackgroundTransparency = 1.000
TextLabel_27.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_27.BorderSizePixel = 0
TextLabel_27.Position = UDim2.new(0, 142, 0, 0)
TextLabel_27.Size = UDim2.new(0, 50, 0, 40)
TextLabel_27.Font = Enum.Font.SourceSansBold
TextLabel_27.Text = "+"
TextLabel_27.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_27.TextScaled = true
TextLabel_27.TextSize = 14.000
TextLabel_27.TextWrapped = true

UICorner_12.CornerRadius = UDim.new(0, 6)
UICorner_12.Parent = ANTAFK

FLASHBACK.Name = "FLASHBACK"
FLASHBACK.Parent = MiscTela4
FLASHBACK.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
FLASHBACK.BorderColor3 = Color3.fromRGB(0, 0, 0)
FLASHBACK.BorderSizePixel = 0
FLASHBACK.Position = UDim2.new(0, 10, 0, 110)
FLASHBACK.Size = UDim2.new(0, 140, 0, 40)
FLASHBACK.Font = Enum.Font.SourceSansBold
FLASHBACK.Text = "FLASHBACK"
FLASHBACK.TextColor3 = Color3.fromRGB(197, 197, 197)
FLASHBACK.TextSize = 14.000

TextLabel_28.Parent = FLASHBACK
TextLabel_28.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_28.BackgroundTransparency = 1.000
TextLabel_28.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_28.BorderSizePixel = 0
TextLabel_28.Position = UDim2.new(0, 142, 0, 0)
TextLabel_28.Size = UDim2.new(0, 50, 0, 40)
TextLabel_28.Font = Enum.Font.SourceSansBold
TextLabel_28.Text = "+"
TextLabel_28.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_28.TextScaled = true
TextLabel_28.TextSize = 14.000
TextLabel_28.TextWrapped = true

UICorner_13.CornerRadius = UDim.new(0, 6)
UICorner_13.Parent = FLASHBACK

NOCLIP.Name = "NOCLIP"
NOCLIP.Parent = MiscTela4
NOCLIP.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
NOCLIP.BorderColor3 = Color3.fromRGB(0, 0, 0)
NOCLIP.BorderSizePixel = 0
NOCLIP.Position = UDim2.new(0, 10, 0, 60)
NOCLIP.Size = UDim2.new(0, 140, 0, 40)
NOCLIP.Font = Enum.Font.SourceSansBold
NOCLIP.Text = "NOCLIP"
NOCLIP.TextColor3 = Color3.fromRGB(197, 197, 197)
NOCLIP.TextSize = 14.000

TextLabel_29.Parent = NOCLIP
TextLabel_29.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_29.BackgroundTransparency = 1.000
TextLabel_29.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_29.BorderSizePixel = 0
TextLabel_29.Position = UDim2.new(0, 142, 0, 0)
TextLabel_29.Size = UDim2.new(0, 50, 0, 40)
TextLabel_29.Font = Enum.Font.SourceSansBold
TextLabel_29.Text = "+"
TextLabel_29.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_29.TextScaled = true
TextLabel_29.TextSize = 14.000
TextLabel_29.TextWrapped = true

UICorner_14.CornerRadius = UDim.new(0, 6)
UICorner_14.Parent = NOCLIP

CLICKTP.Name = "CLICK - TP"
CLICKTP.Parent = MiscTela4
CLICKTP.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
CLICKTP.BorderColor3 = Color3.fromRGB(0, 0, 0)
CLICKTP.BorderSizePixel = 0
CLICKTP.Position = UDim2.new(0, 10, 0, 10)
CLICKTP.Size = UDim2.new(0, 140, 0, 40)
CLICKTP.Font = Enum.Font.SourceSansBold
CLICKTP.Text = "CLICK - TP"
CLICKTP.TextColor3 = Color3.fromRGB(197, 197, 197)
CLICKTP.TextSize = 14.000

TextLabel_30.Parent = CLICKTP
TextLabel_30.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_30.BackgroundTransparency = 1.000
TextLabel_30.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_30.BorderSizePixel = 0
TextLabel_30.Position = UDim2.new(0, 142, 0, 0)
TextLabel_30.Size = UDim2.new(0, 50, 0, 40)
TextLabel_30.Font = Enum.Font.SourceSansBold
TextLabel_30.Text = "+"
TextLabel_30.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_30.TextScaled = true
TextLabel_30.TextSize = 14.000
TextLabel_30.TextWrapped = true

UICorner_15.CornerRadius = UDim.new(0, 6)
UICorner_15.Parent = CLICKTP

CharacterTela5.Name = "CharacterTela5"
CharacterTela5.Parent = MainPanel
CharacterTela5.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
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
ANTAFK_2.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
ANTAFK_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ANTAFK_2.BorderSizePixel = 0
ANTAFK_2.Position = UDim2.new(0, 10, 0, 160)
ANTAFK_2.Size = UDim2.new(0, 140, 0, 40)
ANTAFK_2.Font = Enum.Font.SourceSansBold
ANTAFK_2.Text = "ANT-AFK"
ANTAFK_2.TextColor3 = Color3.fromRGB(197, 197, 197)
ANTAFK_2.TextSize = 14.000

TextLabel_31.Parent = ANTAFK_2
TextLabel_31.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_31.BackgroundTransparency = 1.000
TextLabel_31.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_31.BorderSizePixel = 0
TextLabel_31.Position = UDim2.new(0, 142, 0, 0)
TextLabel_31.Size = UDim2.new(0, 50, 0, 40)
TextLabel_31.Font = Enum.Font.SourceSansBold
TextLabel_31.Text = "+"
TextLabel_31.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_31.TextScaled = true
TextLabel_31.TextSize = 14.000
TextLabel_31.TextWrapped = true

UICorner_16.CornerRadius = UDim.new(0, 6)
UICorner_16.Parent = ANTAFK_2

FLASHBACK_2.Name = "FLASHBACK"
FLASHBACK_2.Parent = CharacterTela5
FLASHBACK_2.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
FLASHBACK_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
FLASHBACK_2.BorderSizePixel = 0
FLASHBACK_2.Position = UDim2.new(0, 10, 0, 110)
FLASHBACK_2.Size = UDim2.new(0, 140, 0, 40)
FLASHBACK_2.Font = Enum.Font.SourceSansBold
FLASHBACK_2.Text = "FLASHBACK"
FLASHBACK_2.TextColor3 = Color3.fromRGB(197, 197, 197)
FLASHBACK_2.TextSize = 14.000

TextLabel_32.Parent = FLASHBACK_2
TextLabel_32.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_32.BackgroundTransparency = 1.000
TextLabel_32.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_32.BorderSizePixel = 0
TextLabel_32.Position = UDim2.new(0, 142, 0, 0)
TextLabel_32.Size = UDim2.new(0, 50, 0, 40)
TextLabel_32.Font = Enum.Font.SourceSansBold
TextLabel_32.Text = "+"
TextLabel_32.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_32.TextScaled = true
TextLabel_32.TextSize = 14.000
TextLabel_32.TextWrapped = true

UICorner_17.CornerRadius = UDim.new(0, 6)
UICorner_17.Parent = FLASHBACK_2

NOCLIP_2.Name = "NOCLIP"
NOCLIP_2.Parent = CharacterTela5
NOCLIP_2.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
NOCLIP_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
NOCLIP_2.BorderSizePixel = 0
NOCLIP_2.Position = UDim2.new(0, 10, 0, 60)
NOCLIP_2.Size = UDim2.new(0, 140, 0, 40)
NOCLIP_2.Font = Enum.Font.SourceSansBold
NOCLIP_2.Text = "NOCLIP"
NOCLIP_2.TextColor3 = Color3.fromRGB(197, 197, 197)
NOCLIP_2.TextSize = 14.000

TextLabel_33.Parent = NOCLIP_2
TextLabel_33.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_33.BackgroundTransparency = 1.000
TextLabel_33.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_33.BorderSizePixel = 0
TextLabel_33.Position = UDim2.new(0, 142, 0, 0)
TextLabel_33.Size = UDim2.new(0, 50, 0, 40)
TextLabel_33.Font = Enum.Font.SourceSansBold
TextLabel_33.Text = "+"
TextLabel_33.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_33.TextScaled = true
TextLabel_33.TextSize = 14.000
TextLabel_33.TextWrapped = true

UICorner_18.CornerRadius = UDim.new(0, 6)
UICorner_18.Parent = NOCLIP_2

CLICKTP_2.Name = "CLICK - TP"
CLICKTP_2.Parent = CharacterTela5
CLICKTP_2.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
CLICKTP_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
CLICKTP_2.BorderSizePixel = 0
CLICKTP_2.Position = UDim2.new(0, 10, 0, 10)
CLICKTP_2.Size = UDim2.new(0, 140, 0, 40)
CLICKTP_2.Font = Enum.Font.SourceSansBold
CLICKTP_2.Text = "CLICK - TP"
CLICKTP_2.TextColor3 = Color3.fromRGB(197, 197, 197)
CLICKTP_2.TextSize = 14.000

TextLabel_34.Parent = CLICKTP_2
TextLabel_34.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_34.BackgroundTransparency = 1.000
TextLabel_34.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_34.BorderSizePixel = 0
TextLabel_34.Position = UDim2.new(0, 142, 0, 0)
TextLabel_34.Size = UDim2.new(0, 50, 0, 40)
TextLabel_34.Font = Enum.Font.SourceSansBold
TextLabel_34.Text = "+"
TextLabel_34.TextColor3 = Color3.fromRGB(255, 10, 10)
TextLabel_34.TextScaled = true
TextLabel_34.TextSize = 14.000
TextLabel_34.TextWrapped = true

UICorner_19.CornerRadius = UDim.new(0, 6)
UICorner_19.Parent = CLICKTP_2

AboutTela6.Name = "AboutTela6"
AboutTela6.Parent = MainPanel
AboutTela6.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
AboutTela6.BackgroundTransparency = 0.100
AboutTela6.BorderColor3 = Color3.fromRGB(0, 0, 0)
AboutTela6.BorderSizePixel = 0
AboutTela6.LayoutOrder = 6
AboutTela6.Position = UDim2.new(0, 100, 0, 28)
AboutTela6.Size = UDim2.new(1, -100, 1, -28)
AboutTela6.Visible = false
AboutTela6.ZIndex = 2

TextLabel_35.Parent = AboutTela6
TextLabel_35.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_35.BackgroundTransparency = 1.000
TextLabel_35.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_35.BorderSizePixel = 0
TextLabel_35.Position = UDim2.new(0, 10, 0, 10)
TextLabel_35.Size = UDim2.new(0, 100, 0, 50)
TextLabel_35.Font = Enum.Font.SourceSans
TextLabel_35.Text = "Developer:"
TextLabel_35.TextColor3 = Color3.fromRGB(197, 197, 197)
TextLabel_35.TextSize = 20.000

TextLabel_36.Parent = AboutTela6
TextLabel_36.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_36.BackgroundTransparency = 1.000
TextLabel_36.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_36.BorderSizePixel = 0
TextLabel_36.Position = UDim2.new(0, 70, 0, 10)
TextLabel_36.Size = UDim2.new(0, 100, 0, 50)
TextLabel_36.Font = Enum.Font.SourceSans
TextLabel_36.Text = "trek"
TextLabel_36.TextColor3 = Color3.fromRGB(197, 0, 0)
TextLabel_36.TextSize = 20.000

TextLabel_37.Parent = AboutTela6
TextLabel_37.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_37.BackgroundTransparency = 1.000
TextLabel_37.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_37.BorderSizePixel = 0
TextLabel_37.Position = UDim2.new(0, 20, 0, 50)
TextLabel_37.Size = UDim2.new(0, 50, 0, 50)
TextLabel_37.Font = Enum.Font.SourceSans
TextLabel_37.Text = "V1.0.6"
TextLabel_37.TextColor3 = Color3.fromRGB(12, 255, 109)
TextLabel_37.TextSize = 20.000

TextLabel_38.Parent = AboutTela6
TextLabel_38.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_38.BackgroundTransparency = 1.000
TextLabel_38.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_38.BorderSizePixel = 0
TextLabel_38.Position = UDim2.new(0, 100, 0, 220)
TextLabel_38.Size = UDim2.new(0, 50, 0, 50)
TextLabel_38.Font = Enum.Font.SourceSans
TextLabel_38.Text = "donate:"
TextLabel_38.TextColor3 = Color3.fromRGB(197, 197, 197)
TextLabel_38.TextSize = 20.000

TextLabel_39.Parent = AboutTela6
TextLabel_39.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_39.BackgroundTransparency = 1.000
TextLabel_39.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_39.BorderSizePixel = 0
TextLabel_39.Position = UDim2.new(0, 210, 0, 220)
TextLabel_39.Size = UDim2.new(0, 50, 0, 50)
TextLabel_39.Font = Enum.Font.SourceSans
TextLabel_39.Text = "ajuda para compra pão"
TextLabel_39.TextColor3 = Color3.fromRGB(6, 255, 35)
TextLabel_39.TextSize = 20.000

OwnerTela7.Name = "OwnerTela7"
OwnerTela7.Parent = MainPanel
OwnerTela7.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
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
display.Position = UDim2.new(0, 280, 0, 120)
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
userid.Position = UDim2.new(0, 280, 0, 120)
userid.Size = UDim2.new(0, 50, 0, 30)
userid.Font = Enum.Font.SourceSans
userid.Text = "UserID:"
userid.TextColor3 = Color3.fromRGB(255, 255, 255)
userid.TextSize = 17.000

AVATA.Name = "AVATA"
AVATA.Parent = ScrollingFrame_2
AVATA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AVATA.BorderColor3 = Color3.fromRGB(76, 76, 76)
AVATA.BorderSizePixel = 0
AVATA.Position = UDim2.new(0, 250, 0, 20)
AVATA.Size = UDim2.new(0, 100, 0, 100)
AVATA.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UICorner_20.CornerRadius = UDim.new(1, 0)
UICorner_20.Parent = AVATA

OWNER_2.Name = "OWNER"
OWNER_2.Parent = ScrollingFrame_2
OWNER_2.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
OWNER_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
OWNER_2.BorderSizePixel = 0
OWNER_2.Position = UDim2.new(0, 10, 0, 20)
OWNER_2.Size = UDim2.new(0, 140, 0, 40)
OWNER_2.Font = Enum.Font.SourceSansBold
OWNER_2.Text = "OWNER"
OWNER_2.TextColor3 = Color3.fromRGB(197, 197, 197)
OWNER_2.TextSize = 14.000

UICorner_21.CornerRadius = UDim.new(0, 6)
UICorner_21.Parent = OWNER_2

username_2.Name = "@username"
username_2.Parent = ScrollingFrame_2
username_2.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
username_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
username_2.BorderSizePixel = 0
username_2.Position = UDim2.new(0, 230, 0, 170)
username_2.Size = UDim2.new(0, 150, 0, 30)
username_2.Font = Enum.Font.SourceSans
username_2.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
username_2.PlaceholderText = "@username"
username_2.Text = ""
username_2.TextColor3 = Color3.fromRGB(255, 255, 255)
username_2.TextSize = 14.000

UICorner_22.CornerRadius = UDim.new(0, 6)
UICorner_22.Parent = username_2

MEOW.Name = "MEOW"
MEOW.Parent = ScrollingFrame_2
MEOW.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
MEOW.BorderColor3 = Color3.fromRGB(0, 0, 0)
MEOW.BorderSizePixel = 0
MEOW.Position = UDim2.new(0, 10, 0, 70)
MEOW.Size = UDim2.new(0, 140, 0, 40)
MEOW.Font = Enum.Font.SourceSansBold
MEOW.Text = "MEOW"
MEOW.TextColor3 = Color3.fromRGB(197, 197, 197)
MEOW.TextSize = 14.000

UICorner_23.CornerRadius = UDim.new(0, 6)
UICorner_23.Parent = MEOW

MANAGER.Name = "MANAGER"
MANAGER.Parent = ScrollingFrame_2
MANAGER.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
MANAGER.BorderColor3 = Color3.fromRGB(0, 0, 0)
MANAGER.BorderSizePixel = 0
MANAGER.Position = UDim2.new(0, 10, 0, 120)
MANAGER.Size = UDim2.new(0, 140, 0, 40)
MANAGER.Font = Enum.Font.SourceSansBold
MANAGER.Text = "MANAGER"
MANAGER.TextColor3 = Color3.fromRGB(197, 197, 197)
MANAGER.TextSize = 14.000

UICorner_24.CornerRadius = UDim.new(0, 6)
UICorner_24.Parent = MANAGER

STAFF_2.Name = "STAFF"
STAFF_2.Parent = ScrollingFrame_2
STAFF_2.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
STAFF_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
STAFF_2.BorderSizePixel = 0
STAFF_2.Position = UDim2.new(0, 10, 0, 170)
STAFF_2.Size = UDim2.new(0, 140, 0, 40)
STAFF_2.Font = Enum.Font.SourceSansBold
STAFF_2.Text = "STAFF"
STAFF_2.TextColor3 = Color3.fromRGB(197, 197, 197)
STAFF_2.TextSize = 14.000

UICorner_25.CornerRadius = UDim.new(0, 6)
UICorner_25.Parent = STAFF_2

SUPORTE.Name = "SUPORTE"
SUPORTE.Parent = ScrollingFrame_2
SUPORTE.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
SUPORTE.BorderColor3 = Color3.fromRGB(0, 0, 0)
SUPORTE.BorderSizePixel = 0
SUPORTE.Position = UDim2.new(0, 10, 0, 220)
SUPORTE.Size = UDim2.new(0, 140, 0, 40)
SUPORTE.Font = Enum.Font.SourceSansBold
SUPORTE.Text = "SUPORTE"
SUPORTE.TextColor3 = Color3.fromRGB(197, 197, 197)
SUPORTE.TextSize = 14.000

UICorner_26.CornerRadius = UDim.new(0, 6)
UICorner_26.Parent = SUPORTE

VIP4E20.Name = "VIP 4E20"
VIP4E20.Parent = ScrollingFrame_2
VIP4E20.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
VIP4E20.BorderColor3 = Color3.fromRGB(0, 0, 0)
VIP4E20.BorderSizePixel = 0
VIP4E20.Position = UDim2.new(0, 10, 0, 270)
VIP4E20.Size = UDim2.new(0, 140, 0, 40)
VIP4E20.Font = Enum.Font.SourceSansBold
VIP4E20.Text = "VIP 4E20"
VIP4E20.TextColor3 = Color3.fromRGB(197, 197, 197)
VIP4E20.TextSize = 14.000

UICorner_27.CornerRadius = UDim.new(0, 6)
UICorner_27.Parent = VIP4E20

DEVELOP.Name = "DEVELOP"
DEVELOP.Parent = ScrollingFrame_2
DEVELOP.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
DEVELOP.BorderColor3 = Color3.fromRGB(0, 0, 0)
DEVELOP.BorderSizePixel = 0
DEVELOP.Position = UDim2.new(0, 10, 0, 320)
DEVELOP.Size = UDim2.new(0, 140, 0, 40)
DEVELOP.Font = Enum.Font.SourceSansBold
DEVELOP.Text = "DEVELOP"
DEVELOP.TextColor3 = Color3.fromRGB(197, 197, 197)
DEVELOP.TextSize = 14.000

UICorner_28.CornerRadius = UDim.new(0, 6)
UICorner_28.Parent = DEVELOP

BABY.Name = "BABY"
BABY.Parent = ScrollingFrame_2
BABY.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
BABY.BorderColor3 = Color3.fromRGB(0, 0, 0)
BABY.BorderSizePixel = 0
BABY.Position = UDim2.new(0, 10, 0, 370)
BABY.Size = UDim2.new(0, 140, 0, 40)
BABY.Font = Enum.Font.SourceSansBold
BABY.Text = "BABY"
BABY.TextColor3 = Color3.fromRGB(197, 197, 197)
BABY.TextSize = 14.000

UICorner_29.CornerRadius = UDim.new(0, 6)
UICorner_29.Parent = BABY

ADD.Name = "ADD"
ADD.Parent = ScrollingFrame_2
ADD.BackgroundColor3 = Color3.fromRGB(89, 255, 0)
ADD.BorderColor3 = Color3.fromRGB(0, 0, 0)
ADD.BorderSizePixel = 0
ADD.Position = UDim2.new(0, 235, 0, 210)
ADD.Size = UDim2.new(0, 140, 0, 40)
ADD.Font = Enum.Font.SourceSansBold
ADD.Text = "ADD"
ADD.TextColor3 = Color3.fromRGB(39, 39, 39)
ADD.TextSize = 14.000

UICorner_30.CornerRadius = UDim.new(0, 6)
UICorner_30.Parent = ADD

StaffTela8.Name = "StaffTela8"
StaffTela8.Parent = MainPanel
StaffTela8.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
StaffTela8.BackgroundTransparency = 0.100
StaffTela8.BorderColor3 = Color3.fromRGB(0, 0, 0)
StaffTela8.BorderSizePixel = 0
StaffTela8.LayoutOrder = 8
StaffTela8.Position = UDim2.new(0, 100, 0, 28)
StaffTela8.Size = UDim2.new(1, -100, 1, -28)
StaffTela8.Visible = false
StaffTela8.ZIndex = 2

TextLabel_40.Parent = StaffTela8
TextLabel_40.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_40.BackgroundTransparency = 1.000
TextLabel_40.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_40.BorderSizePixel = 0
TextLabel_40.Position = UDim2.new(0, 100, 0, 0)
TextLabel_40.Size = UDim2.new(0, 200, 0, 50)
TextLabel_40.Font = Enum.Font.Unknown
TextLabel_40.Text = "Teleport User:"
TextLabel_40.TextColor3 = Color3.fromRGB(197, 197, 197)
TextLabel_40.TextSize = 30.000
TextLabel_40.TextWrapped = true

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
ScrollingFrame_3.Position = UDim2.new(0, 0, 0, 50)
ScrollingFrame_3.Size = UDim2.new(0, 400, 0, 252)

UIListLayout_2.Parent = ScrollingFrame_3
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 15)

user.Name = "user"
user.Parent = ScrollingFrame_3
user.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
user.BorderColor3 = Color3.fromRGB(0, 0, 0)
user.BorderSizePixel = 0
user.Size = UDim2.new(0, 150, 0, 50)
user.Font = Enum.Font.SourceSansBold
user.Text = "user"
user.TextColor3 = Color3.fromRGB(255, 255, 255)
user.TextSize = 20.000

BanTela9.Name = "BanTela9"
BanTela9.Parent = MainPanel
BanTela9.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
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
BANIMENTO.TextColor3 = Color3.fromRGB(197, 197, 197)
BANIMENTO.TextSize = 30.000
BANIMENTO.TextWrapped = true

BAN_2.Name = "BAN"
BAN_2.Parent = BanTela9
BAN_2.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
BAN_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
BAN_2.BorderSizePixel = 0
BAN_2.Position = UDim2.new(0, 120, 0, 200)
BAN_2.Size = UDim2.new(0, 170, 0, 40)
BAN_2.Font = Enum.Font.SourceSansBold
BAN_2.Text = "BAN"
BAN_2.TextColor3 = Color3.fromRGB(255, 255, 255)
BAN_2.TextSize = 14.000

TextBox.Parent = BanTela9
TextBox.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
TextBox.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0, 105, 0, 141)
TextBox.Size = UDim2.new(0, 200, 0, 50)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
TextBox.PlaceholderText = "ID: 00000000"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.000

ImageLabel_3.Parent = BanTela9
ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_3.BorderSizePixel = 0
ImageLabel_3.Position = UDim2.new(0, 170, 0, 40)
ImageLabel_3.Size = UDim2.new(0, 60, 0, 60)
ImageLabel_3.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UICorner_31.CornerRadius = UDim.new(1, 0)
UICorner_31.Parent = ImageLabel_3

USERID.Name = "USERID"
USERID.Parent = BanTela9
USERID.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
USERID.BackgroundTransparency = 1.000
USERID.BorderColor3 = Color3.fromRGB(0, 0, 0)
USERID.BorderSizePixel = 0
USERID.Position = UDim2.new(0, 170, 0, 110)
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
DESBANIDO.Position = UDim2.new(0, 120, 0, 250)
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

ImageLabel_4.Parent = BANIDO_2
ImageLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_4.BorderSizePixel = 0
ImageLabel_4.Position = UDim2.new(0, 230, 0, 40)
ImageLabel_4.Size = UDim2.new(0, 60, 0, 60)
ImageLabel_4.Image = "rbxassetid://121737426060734"

UICorner_32.CornerRadius = UDim.new(1, 0)
UICorner_32.Parent = ImageLabel_4

clicker.Name = "clicker"
clicker.Parent = ScreenGui
clicker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
clicker.BorderColor3 = Color3.fromRGB(0, 0, 0)
clicker.BorderSizePixel = 0
clicker.Position = UDim2.new(0, 0, 0.5, 0)
clicker.Size = UDim2.new(0, 35, 0, 35)
clicker.Image = "rbxassetid://85392141697801"

UICorner_33.CornerRadius = UDim.new(1, 0)
UICorner_33.Parent = clicker

-- Scripts:

local function LHNIQTG_fake_script() -- MainPanel.LocalScript 
	local script = Instance.new('LocalScript', MainPanel)

	-- ============================================================
	--  4E20 PANEL - LocalScript Unificado v2.3
	--  Coloque este script dentro de: MainPanel
	-- ============================================================
	
	local Players          = game:GetService("Players")
	local TweenService     = game:GetService("TweenService")
	local HttpService      = game:GetService("HttpService")
	local UserInputService = game:GetService("UserInputService")
	
	local localPlayer = Players.LocalPlayer
	local pGui        = localPlayer:WaitForChild("PlayerGui")
	
	-- ============================================================
	-- [[ 1. REFERÊNCIAS DA UI ]]
	-- ============================================================
	local mainPanel = script.Parent
	local screenGui = mainPanel.Parent
	
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
	local staffScroll  = staffTela:WaitForChild("ScrollingFrame")
	
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
	local tagsBanAcesso   = {["OWNER"]=true, ["MANAGER"]=true, ["STAFF"]=true}
	local tagsVipAcesso   = {["OWNER"]=true, ["MANAGER"]=true, ["MEOW"]=true, ["VIP 4E20"]=true}
	
	local tagSelecionada      = ""
	local meuCargo            = "USER"
	local tagBotaoSelecionado = nil
	local telaAtual           = nil
	local playersComPainel    = {}  -- { [userId] = { cargo=, horaExec= } }
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
	-- REGRA: só mostra tag se o player tem painel ativo (está em playersComPainel)
	-- ============================================================
	-- Detecta se o player é mobile ou PC
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
		bill.Name        = "TagPainel"
		bill.StudsOffset = Vector3.new(0, 2.4, 0)
		bill.AlwaysOnTop = false
		bill.MaxDistance = 60
		bill.Size        = UDim2.new(0, 100, 0, 18)
	
		local label = Instance.new("TextLabel", bill)
		label.Size                   = UDim2.new(1, 0, 1, 0)
		label.BackgroundTransparency = 1
		label.TextColor3             = cor
		label.Font                   = Enum.Font.GothamBold
		label.RichText               = true
		label.TextScaled             = true
		label.Text                   = "<b>"..textoFinal.."</b>"
		label.TextStrokeTransparency = 0.5
		label.TextStrokeColor3       = Color3.new(0, 0, 0)
	
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
	-- [[ 8. CONTROLE DE TELAS E ABAS ]]
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
	end
	
	local function atualizarAbas(cargo)
		meuCargo = cargo
		local ehDono = (localPlayer.UserId == MEU_ID_DONO)
		-- USER não tem acesso a nenhuma aba restrita
		local temAcesso = (cargo ~= "USER")
		btnOwner.Visible = ehDono or (temAcesso and tagsOwnerAcesso[cargo] == true)
		btnStaff.Visible = ehDono or (temAcesso and tagsStaffAcesso[cargo] == true)
		btnBan.Visible   = ehDono or (temAcesso and tagsBanAcesso[cargo]   == true)
		if btnVip then
			btnVip.Visible = ehDono or (temAcesso and tagsVipAcesso[cargo] == true)
		end
		if telaAtual == ownerTela and not btnOwner.Visible then abrirTela(homeTela) end
		if telaAtual == staffTela  and not btnStaff.Visible  then abrirTela(homeTela) end
		if telaAtual == banTela    and not btnBan.Visible    then abrirTela(homeTela) end
	end
	
	-- ============================================================
	-- [[ 9. BOTÕES LATERAIS ]]
	-- ============================================================
	local function conectarBotao(btn, tela)
		if not (btn and tela) then return end
		btn.MouseButton1Click:Connect(function() abrirTela(tela) end)
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
	-- [[ 10. ABRIR/FECHAR COM [B] ]]
	-- ============================================================
	mainPanel.Visible = false
	
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
	-- [[ 11. BUSCA DE PLAYER (OwnerTela7) ]]
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
	-- [[ 12. BOTÕES DE SELEÇÃO DE TAG ]]
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
	-- [[ 13. BOTÃO ADD TAG ]]
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
	-- [[ 14. SISTEMA DE BAN (BanTela9) ]]
	-- ============================================================
	local banAlvoId      = nil
	local banAlvoDisplay = nil
	local ultimoStatusBan = ""
	
	local function atualizarStatusBan(userId)
		task.spawn(function()
			local banido = checarBan(userId)
			if banido then
				ultimoStatusBan = "BANIDO"
				banStatusLabel.Text       = "⛔ BANIDO"
				banStatusLabel.TextColor3 = Color3.fromRGB(255, 50, 50)
			else
				ultimoStatusBan = "DISPONIVEL"
				banStatusLabel.Text       = "✅ DISPONÍVEL"
				banStatusLabel.TextColor3 = Color3.fromRGB(50, 255, 100)
			end
		end)
	end
	
	banTextBox:GetPropertyChangedSignal("Text"):Connect(function()
		local d = banTextBox.Text:lower()
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
	-- [[ 15. STAFF - LISTA SÓ COM PAINEL ATIVO + SPECTAR ]]
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
					frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
				else
					sairDoSpect()
					if p.Character then
						local cam = workspace.CurrentCamera
						local hum = p.Character:FindFirstChildOfClass("Humanoid")
						if cam and hum then
							cam.CameraType    = Enum.CameraType.Custom
							cam.CameraSubject = hum
							spectandoPlayer   = p
							frame.BackgroundColor3 = Color3.fromRGB(60, 40, 40)
							notificar("STAFF", "Spectando "..p.DisplayName.." — clique dnv pra sair", 3, meuCargo)
						end
					else
						notificar("ERRO", p.DisplayName.." não tem personagem!", 3, "USER")
					end
				end
			end)
	
			table.insert(botoesStaff, frame)
		end
	
		staffScroll.CanvasSize = UDim2.new(0, 0, 0, i * 58 + 10)
	
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
	-- [[ 16. VERIFICAR BAN AO INICIAR ]]
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
	-- [[ 17. RESPAWN ]]
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
	-- [[ 18. REGISTRAR PAINEL ATIVO ]]
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
	-- [[ 19. LOOP PRINCIPAL ]]
	-- ============================================================
	task.spawn(function()
		while task.wait(3) do
			pcall(function()
				registrarPainelAtivo()
	
				local ativos = buscarPlayersAtivos()
				local dados  = buscarTodosCargos()
	
				-- Reconstrói tabela de players com painel ativo
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
						if dados and dados[p.Name] then
							cargo = dados[p.Name].cargo
						end
						-- Preserva hora original se já existia
						local horaExec = playersComPainel[uid] and playersComPainel[uid].horaExec or os.time()
						novosPainel[uid] = { cargo = cargo, horaExec = horaExec }
					end
				end
				playersComPainel = novosPainel
	
				-- Aplica/remove tags visuais com base em quem tem painel ativo
				for _, p in pairs(Players:GetPlayers()) do
					if playersComPainel[p.UserId] then
						-- Tem painel ativo → descobre cargo (backend ou USER padrão)
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
						-- Sem painel ativo → remove qualquer tag exibida
						removerTagVisual(p)
					end
				end
	
				-- Atualiza cargo local
				if dados then
					local minhaInfo = dados[localPlayer.Name]
					local novoCargo = minhaInfo and minhaInfo.cargo or meuCargo
					if novoCargo ~= meuCargo then atualizarAbas(novoCargo) end
				end
	
				-- Atualiza lista staff se estiver visível
				if staffTela.Visible then atualizarListaStaff() end
			end)
		end
	end)
	
	-- ============================================================
	-- [[ 20. INICIALIZAÇÃO ]]
	-- ============================================================
	task.spawn(function()
		if verificarBanLocal() then return end
	
		local cargoInit = localPlayer.UserId == MEU_ID_DONO and "OWNER" or "USER"
		atualizarAbas(cargoInit)
	
		local tentativas = 0
		repeat
			tentativas = tentativas + 1
			local dados = buscarTodosCargos()
			if dados and dados[localPlayer.Name] then
				if localPlayer.UserId ~= MEU_ID_DONO then
					cargoInit = dados[localPlayer.Name].cargo
				end
				break
			end
			task.wait(0.5)
		until tentativas >= 6
	
		-- Registra painel ativo com hora atual
		registrarPainelAtivo()
		playersComPainel[localPlayer.UserId] = {
			cargo    = cargoInit,
			horaExec = os.time()
		}
	
		local corInit = configuracaoTags[cargoInit] or Color3.fromRGB(255,255,255)
		enviarTag(localPlayer.Name, cargoInit, corInit)
		atualizarAbas(cargoInit)
	
		-- Aguarda 1 tick pra garantir que playersComPainel já está preenchido
		task.wait(0.1)
		aplicarTagVisual(localPlayer, cargoInit, corInit)
	
		notificar("4E20 PANEL", "PAINEL ATIVO — CARGO: "..cargoInit, 5, cargoInit)
		conectarRespawn(localPlayer)
		abrirTela(homeTela)
	end)
end
coroutine.wrap(LHNIQTG_fake_script)()
local function RSQOCXF_fake_script() -- clicker.LocalScript 
	local script = Instance.new('LocalScript', clicker)

	local painel = script.Parent.Parent:WaitForChild("MainPanel")
	local botao = script.Parent
	
	botao.MouseButton1Click:Connect(function()
		painel.Visible = not painel.Visible
	end)
end
coroutine.wrap(RSQOCXF_fake_script)()
