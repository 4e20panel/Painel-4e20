--[[
	╔══════════════════════════════════════════════════╗
	║       4e20 Panel  v1.0.0  by Codex               ║
	║  Coloque em: StarterGui > ScreenGui > LocalScript ║
	║  (ScreenGui: ResetOnSpawn = false)               ║
	╚══════════════════════════════════════════════════╝
--]]

-- ─────────────────────────────────────────────────────
--  SERVIÇOS
-- ─────────────────────────────────────────────────────
local Players          = game:GetService("Players")
local UIS              = game:GetService("UserInputService")
local RS               = game:GetService("RunService")
local TweenService     = game:GetService("TweenService")
local DataStoreService = game:GetService("DataStoreService")

local LP   = Players.LocalPlayer
local PGui = LP:WaitForChild("PlayerGui")
local Cam  = workspace.CurrentCamera

-- ─────────────────────────────────────────────────────
--  CONFIGURAÇÃO PRINCIPAL
-- ─────────────────────────────────────────────────────
local VERSION  = "1.0.0"
local OWNER_ID = 9657477548   -- darkloko99 / Codex
local PANEL_MARKER = "4e20Active"   -- StringValue no Character

-- ─────────────────────────────────────────────────────
--  DATASTORE
-- ─────────────────────────────────────────────────────
local TagStore = nil
pcall(function()
	TagStore = DataStoreService:GetDataStore("4e20Tags_v1")
end)

local function dsGet(key, default)
	if not TagStore then return default end
	local ok, val = pcall(function() return TagStore:GetAsync(key) end)
	return (ok and val ~= nil) and val or default
end

local function dsSet(key, val)
	if not TagStore then return end
	pcall(function() TagStore:SetAsync(key, val) end)
end

-- ─────────────────────────────────────────────────────
--  DEFINIÇÃO DE TAGS
-- ─────────────────────────────────────────────────────
--  rank: menor = mais poder
--  canSet: pode gerenciar tags de rank > seu
-- ─────────────────────────────────────────────────────
local TAG_KEYS = {"OWNER","MOD","STAFF","SUPERVISOR","GERENTE","HELPER","USER"}

local TAGS = {
	OWNER      = {
		label="Owner",      rank=1, canSet=true,
		neon=true,  animated=true,
		col=Color3.fromRGB(255,60,60),
		bg =Color3.fromRGB(28,0,0),
	},
	MOD        = {
		label="Mod",        rank=2, canSet=true,
		neon=true,  animated=true,
		col=Color3.fromRGB(255,150,0),
		bg =Color3.fromRGB(28,12,0),
	},
	STAFF      = {
		label="Staff",      rank=3, canSet=true,
		neon=true,  animated=true,
		col=Color3.fromRGB(60,160,255),
		bg =Color3.fromRGB(0,16,42),
	},
	SUPERVISOR = {
		label="Supervisor", rank=4, canSet=true,
		neon=true,  animated=true,
		col=Color3.fromRGB(160,60,255),
		bg =Color3.fromRGB(20,0,46),
	},
	GERENTE    = {
		label="Gerente",    rank=5, canSet=true,
		neon=true,  animated=true,
		col=Color3.fromRGB(30,215,100),
		bg =Color3.fromRGB(0,28,12),
	},
	HELPER     = {
		label="Helper",     rank=6, canSet=false,
		neon=true,  animated=true,
		col=Color3.fromRGB(255,210,0),
		bg =Color3.fromRGB(28,22,0),
	},
	USER       = {
		label="User 4e20",  rank=7, canSet=false,
		neon=false, animated=false,
		col=Color3.fromRGB(255,255,255),
		bg =Color3.fromRGB(0,0,0),
	},
}

-- ─────────────────────────────────────────────────────
--  BANCO LOCAL DE TAGS  (preenchido do DataStore + runtime)
-- ─────────────────────────────────────────────────────
local USER_DB = {}   -- [userId] = "TAGKEY"

local function getTagKey(uid)
	if uid == OWNER_ID then return "OWNER" end
	return USER_DB[uid] or "USER"
end
local function getTag(uid) return TAGS[getTagKey(uid)] end

local function setTagDB(uid, key, save)
	if uid == OWNER_ID then return end
	USER_DB[uid] = key
	if save then dsSet("tag_"..uid, key) end
end

-- carrega tag salva de um player
local function loadPlayerTag(player)
	if player.UserId == OWNER_ID then USER_DB[player.UserId]="OWNER"; return end
	local saved = dsGet("tag_"..player.UserId, "USER")
	if not TAGS[saved] then saved="USER" end
	USER_DB[player.UserId] = saved
end

local function canManage(setter)
	local t = getTag(setter.UserId)
	return t.canSet
end
local function canSetThis(setter, targetKey)
	if setter.UserId == OWNER_ID then return true end
	local myRank  = getTag(setter.UserId).rank
	local tgtRank = TAGS[targetKey] and TAGS[targetKey].rank or 99
	return myRank < tgtRank
end

-- ─────────────────────────────────────────────────────
--  DETECTAR QUEM TEM O PAINEL ATIVO
-- ─────────────────────────────────────────────────────
local activePanelUsers = {}  -- [userId] = true

local function markSelf(char)
	if not char then return end
	if char:FindFirstChild(PANEL_MARKER) then return end
	local v = Instance.new("StringValue")
	v.Name = PANEL_MARKER; v.Value = tostring(LP.UserId); v.Parent = char
end
LP.CharacterAdded:Connect(function(c) task.wait(0.3); markSelf(c) end)
if LP.Character then markSelf(LP.Character) end
activePanelUsers[LP.UserId] = true

local function watchForPanel(player)
	local function checkChar(char)
		if not char then return end
		if char:FindFirstChild(PANEL_MARKER) then
			activePanelUsers[player.UserId] = true
		end
		char.ChildAdded:Connect(function(child)
			if child.Name == PANEL_MARKER then
				activePanelUsers[player.UserId] = true
			end
		end)
	end
	if player.Character then checkChar(player.Character) end
	player.CharacterAdded:Connect(checkChar)
end

for _, p in ipairs(Players:GetPlayers()) do
	if p ~= LP then watchForPanel(p) end
	loadPlayerTag(p)
end
Players.PlayerAdded:Connect(function(p)
	loadPlayerTag(p)
	watchForPanel(p)
end)
Players.PlayerRemoving:Connect(function(p)
	activePanelUsers[p.UserId] = nil
end)

local function hasPanelActive(player)
	return activePanelUsers[player.UserId] == true
end

-- ─────────────────────────────────────────────────────
--  BILLBOARD — tag acima da cabeça
--  • USER: texto branco, contorno branco suave, sem neon
--  • outros: neon colorido pulsante, shimmer passando
--  • visível APENAS para players com painel ativo
-- ─────────────────────────────────────────────────────
local function removeBB(player)
	local char = player.Character; if not char then return end
	local head = char:FindFirstChild("Head"); if not head then return end
	local old  = head:FindFirstChild("4e20BB"); if old then old:Destroy() end
end

local function makeBB(player, tagKey)
	local char = player.Character; if not char then return end
	local head = char:FindFirstChild("Head"); if not head then return end
	removeBB(player)

	if not hasPanelActive(player) then return end

	local td = TAGS[tagKey] or TAGS.USER

	local bb = Instance.new("BillboardGui")
	bb.Name          = "4e20BB"
	bb.Size          = UDim2.new(0, 160, 0, 28)
	bb.StudsOffset   = Vector3.new(0, 3.2, 0)
	bb.AlwaysOnTop   = false
	bb.LightInfluence = 0
	bb.ResetOnSpawn  = false
	bb.Parent        = head

	local tl = Instance.new("TextLabel", bb)
	tl.Size                 = UDim2.new(1, 0, 1, 0)
	tl.BackgroundTransparency = 1
	tl.Text                 = td.label
	tl.Font                 = Enum.Font.GothamBold
	tl.TextScaled           = true

	if td.neon then
		-- neon: sem contorno preto, só o texto colorido pulsante
		tl.TextColor3           = td.col
		tl.TextStrokeTransparency = 1

		if td.animated then
			local bright = Color3.new(
				math.min(td.col.R + 0.45, 1),
				math.min(td.col.G + 0.45, 1),
				math.min(td.col.B + 0.45, 1))
			local dim = Color3.new(td.col.R*0.25, td.col.G*0.25, td.col.B*0.25)
			task.spawn(function()
				while tl.Parent do
					TweenService:Create(tl, TweenInfo.new(0.85, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
						{TextColor3 = bright}):Play()
					task.wait(0.85)
					TweenService:Create(tl, TweenInfo.new(0.85, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
						{TextColor3 = dim}):Play()
					task.wait(0.85)
				end
			end)
		end
	else
		-- USER: branco por dentro, contorno branco suave
		tl.TextColor3             = Color3.fromRGB(255, 255, 255)
		tl.TextStrokeColor3       = Color3.fromRGB(255, 255, 255)
		tl.TextStrokeTransparency = 0.7
	end
end

local function applyBB(player)
	makeBB(player, getTagKey(player.UserId))
end

local function hookBB(player)
	if player.Character then
		task.spawn(function() task.wait(0.8); applyBB(player) end)
	end
	player.CharacterAdded:Connect(function()
		task.wait(1); applyBB(player)
	end)
end
for _, p in ipairs(Players:GetPlayers()) do hookBB(p) end
Players.PlayerAdded:Connect(hookBB)

-- refresh periódico para pegar novos entrantes
task.spawn(function()
	while true do
		task.wait(5)
		for _, p in ipairs(Players:GetPlayers()) do applyBB(p) end
	end
end)

-- ─────────────────────────────────────────────────────
--  SCREENGUI
-- ─────────────────────────────────────────────────────
-- remove anterior se existir
local oldGui = PGui:FindFirstChild("4e20PanelGui")
if oldGui then oldGui:Destroy() end

local SG = Instance.new("ScreenGui")
SG.Name           = "4e20PanelGui"
SG.ResetOnSpawn   = false
SG.IgnoreGuiInset = true
SG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
SG.Parent         = PGui

-- ─────────────────────────────────────────────────────
--  NOTIFICAÇÃO (canto direito inferior)
-- ─────────────────────────────────────────────────────
local NC = Instance.new("Frame", SG)
NC.Name               = "NotifContainer"
NC.Size               = UDim2.new(0, 290, 1, 0)
NC.Position           = UDim2.new(1, -298, 0, 0)
NC.BackgroundTransparency = 1
NC.ZIndex             = 200

local NLayout = Instance.new("UIListLayout", NC)
NLayout.SortOrder           = Enum.SortOrder.LayoutOrder
NLayout.VerticalAlignment   = Enum.VerticalAlignment.Bottom
NLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
NLayout.Padding             = UDim.new(0, 6)

local NPad = Instance.new("UIPadding", NC)
NPad.PaddingBottom = UDim.new(0, 16)
NPad.PaddingRight  = UDim.new(0, 10)

local nIdx = 0
local function showNotif(title, body, accent)
	accent = accent or Color3.fromRGB(80, 80, 80)
	nIdx   = nIdx + 1

	local card = Instance.new("Frame", NC)
	card.Name             = "N"..nIdx
	card.Size             = UDim2.new(1, 0, 0, 74)
	card.BackgroundColor3 = Color3.fromRGB(14, 14, 17)
	card.BorderSizePixel  = 0
	card.LayoutOrder      = nIdx
	card.ZIndex           = 201
	card.ClipsDescendants = true
	Instance.new("UICorner", card).CornerRadius = UDim.new(0, 8)
	local cStr = Instance.new("UIStroke", card)
	cStr.Color = accent; cStr.Thickness = 1; cStr.Transparency = 0.35

	local bar = Instance.new("Frame", card)
	bar.Size             = UDim2.new(0, 3, 1, -12)
	bar.Position         = UDim2.new(0, 6, 0, 6)
	bar.BackgroundColor3 = accent
	bar.BorderSizePixel  = 0
	bar.ZIndex           = 202
	Instance.new("UICorner", bar).CornerRadius = UDim.new(0, 3)

	local tL = Instance.new("TextLabel", card)
	tL.Size             = UDim2.new(1, -20, 0, 24)
	tL.Position         = UDim2.new(0, 16, 0, 8)
	tL.BackgroundTransparency = 1
	tL.Text             = title
	tL.TextColor3       = Color3.fromRGB(230, 230, 230)
	tL.Font             = Enum.Font.GothamBold
	tL.TextSize         = 13
	tL.TextXAlignment   = Enum.TextXAlignment.Left
	tL.ZIndex           = 202

	local bL = Instance.new("TextLabel", card)
	bL.Size             = UDim2.new(1, -20, 0, 36)
	bL.Position         = UDim2.new(0, 16, 0, 32)
	bL.BackgroundTransparency = 1
	bL.Text             = body
	bL.TextColor3       = Color3.fromRGB(130, 130, 130)
	bL.Font             = Enum.Font.Gotham
	bL.TextSize         = 11
	bL.TextWrapped      = true
	bL.TextXAlignment   = Enum.TextXAlignment.Left
	bL.ZIndex           = 202

	-- progress bar
	local prog = Instance.new("Frame", card)
	prog.Size             = UDim2.new(1, -14, 0, 2)
	prog.Position         = UDim2.new(0, 7, 1, -4)
	prog.BackgroundColor3 = accent
	prog.BackgroundTransparency = 0.4
	prog.BorderSizePixel  = 0
	prog.ZIndex           = 202

	TweenService:Create(prog, TweenInfo.new(5, Enum.EasingStyle.Linear),
		{Size = UDim2.new(0, 0, 0, 2)}):Play()

	task.delay(5, function()
		TweenService:Create(card, TweenInfo.new(0.3), {BackgroundTransparency=1}):Play()
		TweenService:Create(tL,  TweenInfo.new(0.3), {TextTransparency=1}):Play()
		TweenService:Create(bL,  TweenInfo.new(0.3), {TextTransparency=1}):Play()
		task.wait(0.35); card:Destroy()
	end)
end

-- ─────────────────────────────────────────────────────
--  LAYOUT DO PAINEL
--  Fiel à imagem: sidebar escura à esquerda, conteúdo preto à direita
--  Sem topbar separada — título aparece no conteúdo
-- ─────────────────────────────────────────────────────
local PW   = 560   -- largura total do painel
local PH   = 380   -- altura total
local SBW  = 118   -- largura da sidebar
local CAW  = PW - SBW   -- largura do content = 442
local CAH  = PH         -- altura total (sem topbar separada)

-- ─────────────────────────────────────────────────────
--  FRAME PRINCIPAL
-- ─────────────────────────────────────────────────────
local MF = Instance.new("Frame", SG)
MF.Name             = "4e20Panel"
MF.Size             = UDim2.new(0, PW, 0, PH)
MF.Position         = UDim2.new(0.5, -PW/2, 0.5, -PH/2)
MF.BackgroundColor3 = Color3.fromRGB(0, 0, 0)   -- fundo preto (content)
MF.BorderSizePixel  = 0
MF.Visible          = false
MF.ClipsDescendants = true
MF.ZIndex           = 10
Instance.new("UICorner", MF).CornerRadius = UDim.new(0, 6)

-- ─────────────────────────────────────────────────────
--  SIDEBAR  (cor cinza escura como na imagem)
-- ─────────────────────────────────────────────────────
local SB = Instance.new("Frame", MF)
SB.Name             = "Sidebar"
SB.Size             = UDim2.new(0, SBW, 0, PH)
SB.Position         = UDim2.new(0, 0, 0, 0)
SB.BackgroundColor3 = Color3.fromRGB(52, 52, 52)   -- cinza médio igual à imagem
SB.BorderSizePixel  = 0
SB.ZIndex           = 11
SB.ClipsDescendants = true

-- Logo / nome do painel no topo da sidebar
local sbTitle = Instance.new("TextLabel", SB)
sbTitle.Size             = UDim2.new(0, SBW, 0, 48)
sbTitle.Position         = UDim2.new(0, 0, 0, 0)
sbTitle.BackgroundTransparency = 1
sbTitle.Text             = "4e20\nPanel"
sbTitle.TextColor3       = Color3.fromRGB(220, 220, 220)
sbTitle.Font             = Enum.Font.GothamBold
sbTitle.TextSize         = 13
sbTitle.ZIndex           = 12

-- versão abaixo do título
local sbVer = Instance.new("TextLabel", SB)
sbVer.Size             = UDim2.new(0, SBW, 0, 16)
sbVer.Position         = UDim2.new(0, 0, 0, 46)
sbVer.BackgroundTransparency = 1
sbVer.Text             = "v"..VERSION
sbVer.TextColor3       = Color3.fromRGB(120, 120, 120)
sbVer.Font             = Enum.Font.Gotham
sbVer.TextSize         = 10
sbVer.ZIndex           = 12

-- separador
local sbDiv = Instance.new("Frame", SB)
sbDiv.Size             = UDim2.new(1, 0, 0, 1)
sbDiv.Position         = UDim2.new(0, 0, 0, 64)
sbDiv.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
sbDiv.BorderSizePixel  = 0
sbDiv.ZIndex           = 12

-- ─────────────────────────────────────────────────────
--  ÁREA DE CONTEÚDO
-- ─────────────────────────────────────────────────────
local CA = Instance.new("Frame", MF)
CA.Name             = "Content"
CA.Size             = UDim2.new(0, CAW, 0, CAH)
CA.Position         = UDim2.new(0, SBW, 0, 0)
CA.BackgroundColor3 = Color3.fromRGB(24, 24, 24)   -- preto levemente acinzentado
CA.BorderSizePixel  = 0
CA.ClipsDescendants = true
CA.ZIndex           = 11

-- botão fechar (X) no canto superior direito do content
local closeBtn = Instance.new("TextButton", CA)
closeBtn.Size             = UDim2.new(0, 22, 0, 22)
closeBtn.Position         = UDim2.new(0, CAW-28, 0, 6)
closeBtn.BackgroundColor3 = Color3.fromRGB(170, 35, 35)
closeBtn.Text             = "✕"
closeBtn.TextColor3       = Color3.fromRGB(255, 255, 255)
closeBtn.Font             = Enum.Font.GothamBold
closeBtn.TextSize         = 11
closeBtn.BorderSizePixel  = 0
closeBtn.AutoButtonColor  = false
closeBtn.ZIndex           = 20
Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(0, 4)
closeBtn.MouseButton1Click:Connect(function() MF.Visible = false end)

-- ─────────────────────────────────────────────────────
--  DRAG  (segurar em qualquer lugar do painel)
-- ─────────────────────────────────────────────────────
do
	local dragging, dragStart, startPos = false, nil, nil
	MF.InputBegan:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging  = true
			dragStart = i.Position
			startPos  = MF.Position
		end
	end)
	MF.InputEnded:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
	end)
	UIS.InputChanged:Connect(function(i)
		if dragging and i.UserInputType == Enum.UserInputType.MouseMovement then
			local delta = i.Position - dragStart
			MF.Position = UDim2.new(
				startPos.X.Scale, startPos.X.Offset + delta.X,
				startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
	end)
end

-- ─────────────────────────────────────────────────────
--  TAB SYSTEM
--  Botões na sidebar, páginas no content area
-- ─────────────────────────────────────────────────────
local tabPages    = {}
local tabBtns     = {}
local activeTab   = nil

local TAB_START_Y = 72   -- onde começam os botões na sidebar
local TAB_H       = 44   -- altura de cada botão
local TAB_GAP     = 2    -- espaço entre botões

local function makeTab(name, order)
	-- Botão na sidebar
	local b = Instance.new("TextButton", SB)
	b.Name             = name
	b.Size             = UDim2.new(0, SBW, 0, TAB_H)
	b.Position         = UDim2.new(0, 0, 0, TAB_START_Y + (order-1)*(TAB_H+TAB_GAP))
	b.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	b.Text             = name:upper()
	b.TextColor3       = Color3.fromRGB(180, 180, 180)
	b.Font             = Enum.Font.GothamBold
	b.TextSize         = 13
	b.BorderSizePixel  = 0
	b.AutoButtonColor  = false
	b.ZIndex           = 12

	-- indicador lateral esquerdo (ativo)
	local ind = Instance.new("Frame", b)
	ind.Size             = UDim2.new(0, 3, 1, 0)
	ind.Position         = UDim2.new(0, 0, 0, 0)
	ind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ind.BorderSizePixel  = 0
	ind.Visible          = false
	ind.ZIndex           = 13

	-- página de conteúdo (ScrollingFrame)
	local pg = Instance.new("ScrollingFrame", CA)
	pg.Name               = name
	pg.Size               = UDim2.new(0, CAW, 0, CAH)
	pg.Position           = UDim2.new(0, 0, 0, 0)
	pg.BackgroundTransparency = 1
	pg.Visible            = false
	pg.ScrollBarThickness = 3
	pg.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 60)
	pg.CanvasSize         = UDim2.new(0, 0, 0, 0)
	pg.ZIndex             = 12

	tabPages[name] = {pg=pg, ind=ind}
	tabBtns[name]  = b

	b.MouseEnter:Connect(function()
		if activeTab ~= name then
			b.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
		end
	end)
	b.MouseLeave:Connect(function()
		if activeTab ~= name then
			b.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		end
	end)
	b.MouseButton1Click:Connect(function()
		for n, data in pairs(tabPages) do
			local on = (n == name)
			data.pg.Visible  = on
			data.ind.Visible = on
			tabBtns[n].BackgroundColor3 = on
				and Color3.fromRGB(38, 38, 38)
				or  Color3.fromRGB(52, 52, 52)
			tabBtns[n].TextColor3 = on
				and Color3.fromRGB(255, 255, 255)
				or  Color3.fromRGB(180, 180, 180)
		end
		activeTab = name
	end)

	return pg
end

local function switchTab(name)
	for n, data in pairs(tabPages) do
		local on = (n == name)
		data.pg.Visible  = on
		data.ind.Visible = on
		tabBtns[n].BackgroundColor3 = on
			and Color3.fromRGB(38, 38, 38)
			or  Color3.fromRGB(52, 52, 52)
		tabBtns[n].TextColor3 = on
			and Color3.fromRGB(255, 255, 255)
			or  Color3.fromRGB(180, 180, 180)
	end
	activeTab = name
end

-- ─────────────────────────────────────────────────────
--  HELPERS DE UI (todos em pixels absolutos)
-- ─────────────────────────────────────────────────────
local TXT  = Color3.fromRGB(215, 215, 215)
local SUB  = Color3.fromRGB(100, 100, 115)
local BRD  = Color3.fromRGB(40,  40,  46)
local CARD = Color3.fromRGB(30,  30,  34)
local BTN  = Color3.fromRGB(40,  40,  46)
local BTHV = Color3.fromRGB(56,  56,  64)
local RED  = Color3.fromRGB(160, 35,  35)
local GRN  = Color3.fromRGB(28,  120, 55)
local BLU  = Color3.fromRGB(32,  82,  180)

local function mkLabel(par, txt, x, y, w, h, sz, col, font, ha)
	local l = Instance.new("TextLabel", par)
	l.Position         = UDim2.new(0, x, 0, y)
	l.Size             = UDim2.new(0, w, 0, h)
	l.BackgroundTransparency = 1
	l.Text             = txt
	l.TextColor3       = col  or TXT
	l.Font             = font or Enum.Font.Gotham
	l.TextSize         = sz   or 12
	l.TextWrapped      = true
	l.TextXAlignment   = ha   or Enum.TextXAlignment.Left
	l.ZIndex           = 13
	return l
end

local function mkSep(par, y)
	local f = Instance.new("Frame", par)
	f.Position         = UDim2.new(0, 10, 0, y)
	f.Size             = UDim2.new(0, CAW-20, 0, 1)
	f.BackgroundColor3 = BRD
	f.BorderSizePixel  = 0
	f.ZIndex           = 13
	return f
end

local function mkCard(par, x, y, w, h)
	local f = Instance.new("Frame", par)
	f.Position         = UDim2.new(0, x, 0, y)
	f.Size             = UDim2.new(0, w, 0, h)
	f.BackgroundColor3 = CARD
	f.BorderSizePixel  = 0
	f.ZIndex           = 13
	Instance.new("UICorner", f).CornerRadius = UDim.new(0, 6)
	Instance.new("UIStroke", f).Color        = BRD
	return f
end

local function mkBtn(par, txt, x, y, w, h, col, tc)
	col = col or BTN; tc = tc or TXT
	local b = Instance.new("TextButton", par)
	b.Position         = UDim2.new(0, x, 0, y)
	b.Size             = UDim2.new(0, w, 0, h)
	b.BackgroundColor3 = col
	b.Text             = txt
	b.TextColor3       = tc
	b.Font             = Enum.Font.Gotham
	b.TextSize         = 12
	b.BorderSizePixel  = 0
	b.AutoButtonColor  = false
	b.ZIndex           = 13
	Instance.new("UICorner", b).CornerRadius = UDim.new(0, 5)
	b.MouseEnter:Connect(function()
		TweenService:Create(b, TweenInfo.new(0.1), {BackgroundColor3=BTHV}):Play()
	end)
	b.MouseLeave:Connect(function()
		TweenService:Create(b, TweenInfo.new(0.1), {BackgroundColor3=col}):Play()
	end)
	return b
end

local function mkInput(par, ph, x, y, w, h)
	local fr = Instance.new("Frame", par)
	fr.Position         = UDim2.new(0, x, 0, y)
	fr.Size             = UDim2.new(0, w, 0, h)
	fr.BackgroundColor3 = BTN
	fr.BorderSizePixel  = 0
	fr.ZIndex           = 13
	Instance.new("UICorner", fr).CornerRadius = UDim.new(0, 5)
	local str = Instance.new("UIStroke", fr); str.Color = BRD

	local tb = Instance.new("TextBox", fr)
	tb.Size               = UDim2.new(0, w-10, 1, 0)
	tb.Position           = UDim2.new(0, 6, 0, 0)
	tb.BackgroundTransparency = 1
	tb.PlaceholderText    = ph
	tb.PlaceholderColor3  = SUB
	tb.Text               = ""
	tb.TextColor3         = TXT
	tb.Font               = Enum.Font.Gotham
	tb.TextSize           = 12
	tb.ClearTextOnFocus   = false
	tb.ZIndex             = 14
	tb.Focused:Connect(function()
		TweenService:Create(str, TweenInfo.new(0.12), {Color=Color3.fromRGB(100,100,120), Transparency=0.3}):Play()
	end)
	tb.FocusLost:Connect(function()
		TweenService:Create(str, TweenInfo.new(0.12), {Color=BRD, Transparency=0}):Play()
	end)
	return tb
end

-- Toggle button: vermelho=off / verde=on
local function mkToggle(par, label, x, y, w, h)
	local state = false
	local b = Instance.new("TextButton", par)
	b.Position         = UDim2.new(0, x, 0, y)
	b.Size             = UDim2.new(0, w, 0, h)
	b.BackgroundColor3 = RED
	b.Text             = label.."  ✕"
	b.TextColor3       = Color3.fromRGB(255, 255, 255)
	b.Font             = Enum.Font.GothamBold
	b.TextSize         = 11
	b.BorderSizePixel  = 0
	b.AutoButtonColor  = false
	b.ZIndex           = 13
	Instance.new("UICorner", b).CornerRadius = UDim.new(0, 5)
	local function setState(v)
		state = v
		TweenService:Create(b, TweenInfo.new(0.15),
			{BackgroundColor3 = v and GRN or RED}):Play()
		b.Text = label..(v and "  ✓" or "  ✕")
	end
	b.MouseButton1Click:Connect(function() setState(not state) end)
	return b, function() return state end, setState
end

-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
--  ABA: HOME
-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
local homePg = makeTab("Home", 1)

-- card boas-vindas
local wcrd = mkCard(homePg, 10, 12, CAW-20, 80)
local wcNm = mkLabel(wcrd, "", 10, 8, CAW-40, 22, 14, TXT, Enum.Font.GothamBold)
local wcSb = mkLabel(wcrd, "Pressione [B] para abrir/fechar  •  Arraste o painel para onde quiser",
	10, 32, CAW-40, 36, 10, SUB)

mkSep(homePg, 100)

-- stats
local half = math.floor((CAW-26)/2)
local sL = mkCard(homePg, 10, 108, half, 44)
local sR = mkCard(homePg, 16+half, 108, half, 44)
mkLabel(sL, "JOGADORES ONLINE", 8, 5, half-16, 14, 9, SUB)
mkLabel(sR, "PING", 8, 5, half-16, 14, 9, SUB)
local onlineVal = mkLabel(sL, "—", 8, 20, half-16, 22, 18, TXT, Enum.Font.GothamBold)
local pingVal   = mkLabel(sR, "—", 8, 20, half-16, 22, 18, TXT, Enum.Font.GothamBold)

-- data/hora
local dtCard = mkCard(homePg, 10, 160, CAW-20, 30)
local dtLbl  = mkLabel(dtCard, "", 10, 8, CAW-40, 18, 12, Color3.fromRGB(80,155,255), Enum.Font.Code)

mkSep(homePg, 200)
mkLabel(homePg, "Sua tag:", 10, 208, 80, 14, 10, SUB)
local myTagLabel = mkLabel(homePg, "User 4e20", 10, 224, 220, 22, 14, TXT, Enum.Font.GothamBold)

local function refreshMyTag()
	local td = getTag(LP.UserId)
	myTagLabel.Text       = td.label
	myTagLabel.TextColor3 = td.col
end
refreshMyTag()

homePg.CanvasSize = UDim2.new(0, 0, 0, 258)

local function getBRTime()
	return os.date("!%d/%m/%Y   %H:%M:%S", os.time()-10800)
end

RS.Heartbeat:Connect(function()
	onlineVal.Text = tostring(#Players:GetPlayers())
	pingVal.Text   = math.floor(LP:GetNetworkPing()*1000).."ms"
	dtLbl.Text     = "Brasília:  "..getBRTime()
	wcNm.Text      = "Olá, "..LP.DisplayName.."!  Seja bem-vindo ao painel da 4e20  —  User"
end)

-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
--  ABA: TARGET
-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
local targetPg = makeTab("Target", 2)

mkLabel(targetPg, "Inspecionar Player", 10, 10, CAW-20, 20, 14, TXT, Enum.Font.GothamBold)

local searchBox = mkInput(targetPg, "@username ou DisplayName...", 10, 36, CAW-78, 26)
local searchBtn = mkBtn(targetPg,   "Buscar", CAW-64, 36, 54, 26, BLU)

-- avatar
local avaFrame = Instance.new("Frame", targetPg)
avaFrame.Position         = UDim2.new(0, 10, 0, 72)
avaFrame.Size             = UDim2.new(0, 72, 0, 72)
avaFrame.BackgroundColor3 = BTN
avaFrame.BorderSizePixel  = 0
avaFrame.ZIndex           = 13
Instance.new("UICorner", avaFrame).CornerRadius = UDim.new(0, 8)
Instance.new("UIStroke", avaFrame).Color        = BRD

local avaImg = Instance.new("ImageLabel", avaFrame)
avaImg.Size                = UDim2.new(1, 0, 1, 0)
avaImg.BackgroundTransparency = 1
avaImg.Image               = "rbxassetid://1369988112"
avaImg.ScaleType           = Enum.ScaleType.Fit
avaImg.ZIndex              = 14
Instance.new("UICorner", avaImg).CornerRadius = UDim.new(0, 7)

-- info
local IX = 90; local IW = CAW-IX-12
local tNm   = mkLabel(targetPg, "Selecione um player", IX, 72,  IW, 18, 13, TXT, Enum.Font.GothamBold)
local tDisp = mkLabel(targetPg, "Display: —",          IX, 92,  IW, 14, 11, SUB)
local tId   = mkLabel(targetPg, "UserID: —",           IX, 108, IW, 14, 11, SUB)
local tCrt  = mkLabel(targetPg, "Created: —",          IX, 124, IW, 14, 11, SUB)
local tTag  = mkLabel(targetPg, "Tag: —",              IX, 140, IW, 14, 11, SUB)

mkSep(targetPg, 154)
mkLabel(targetPg, "Funções  (vermelho = desativado  /  verde = ativado)", 10, 162, CAW-20, 14, 10, SUB)

-- Grade 3×3 de toggle buttons
local funcDefs = {
	{l="View",    c=1, r=1},
	{l="Copy ID", c=2, r=1},
	{l="Focus",   c=3, r=1},
	{l="Follow",  c=1, r=2},
	{l="Stand",   c=2, r=2},
	{l="Bang",    c=3, r=2},
	{l="Headsit", c=1, r=3},
}
local FBW = math.floor((CAW-20-12)/3)  -- largura de cada botão de função
local FBH = 28
local FBG = 6   -- gap
local fGet = {}; local fSet = {}; local fBtnRef = {}

for _, fd in ipairs(funcDefs) do
	local bx = 10 + (fd.c-1)*(FBW+FBG)
	local by = 178 + (fd.r-1)*(FBH+FBG)
	local b, g, s = mkToggle(targetPg, fd.l, bx, by, FBW, FBH)
	fGet[fd.l] = g; fSet[fd.l] = s; fBtnRef[fd.l] = b
end

local feedLabel = mkLabel(targetPg, "", 10, 178+(FBH+FBG)*3+4, CAW-20, 16, 11,
	Color3.fromRGB(80, 200, 120))

targetPg.CanvasSize = UDim2.new(0, 0, 0, 310)

local foundTarget = nil

-- Função para definir target e atualizar UI
local function setTarget(p)
	foundTarget = p
	if not p then
		tNm.Text   = "Selecione um player"
		tNm.TextColor3 = TXT
		tDisp.Text = "Display: —"
		tId.Text   = "UserID: —"
		tCrt.Text  = "Created: —"
		tTag.Text  = "Tag: —"
		tTag.TextColor3 = SUB
		avaImg.Image = "rbxassetid://1369988112"
		feedLabel.Text = ""
		return
	end
	tNm.Text       = "@"..p.Name
	tNm.TextColor3 = TXT
	tDisp.Text     = "Display: "..p.DisplayName
	tId.Text       = "UserID: "..tostring(p.UserId)
	tCrt.Text      = "Created: —"
	local td = getTag(p.UserId)
	tTag.Text       = "Tag: "..td.label
	tTag.TextColor3 = td.col

	local ok, url = pcall(function()
		return Players:GetUserThumbnailAsync(
			p.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
	end)
	avaImg.Image = ok and url or "rbxassetid://1369988112"
	feedLabel.Text = ""
end

searchBtn.MouseButton1Click:Connect(function()
	local q = searchBox.Text
	if q == "" then return end
	local p = (function()
		q = q:lower():gsub("^@","")
		for _, pl in ipairs(Players:GetPlayers()) do
			if pl.Name:lower()==q or pl.DisplayName:lower()==q then return pl end
		end
	end)()
	if p then
		setTarget(p)
	else
		tNm.Text = "Não encontrado"
		tNm.TextColor3 = RED
		avaImg.Image = "rbxassetid://1369988112"
		foundTarget = nil
	end
end)

-- Lógica das funções (loop)
RS.Heartbeat:Connect(function()
	if not foundTarget then return end

	if fGet["Follow"] and fGet["Follow"]() then
		local myHRP = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
		local tHRP  = foundTarget.Character and foundTarget.Character:FindFirstChild("HumanoidRootPart")
		if myHRP and tHRP then
			myHRP.CFrame = tHRP.CFrame * CFrame.new(0, 0, 3.5)
		end
	end

	if fGet["Headsit"] and fGet["Headsit"]() then
		local myHRP = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
		local tHead = foundTarget.Character and foundTarget.Character:FindFirstChild("Head")
		if myHRP and tHead then
			myHRP.CFrame = CFrame.new(tHead.Position + Vector3.new(0, 1.5, 0))
			local hum = LP.Character:FindFirstChildOfClass("Humanoid")
			if hum and hum:GetState() ~= Enum.HumanoidStateType.Seated then
				hum:ChangeState(Enum.HumanoidStateType.Seated)
			end
		end
	end

	if fGet["Focus"] and fGet["Focus"]() then
		local hum = foundTarget.Character and foundTarget.Character:FindFirstChildOfClass("Humanoid")
		if hum then Cam.CameraSubject = hum end
	end
end)

fBtnRef["View"].MouseButton1Click:Connect(function()
	if not foundTarget then feedLabel.Text="Selecione um target primeiro."; return end
	if fGet["View"]() then
		local hum = foundTarget.Character and foundTarget.Character:FindFirstChildOfClass("Humanoid")
		if hum then Cam.CameraSubject = hum end
		feedLabel.Text = "👁  Spectating @"..foundTarget.Name
	else
		local hum = LP.Character and LP.Character:FindFirstChildOfClass("Humanoid")
		if hum then Cam.CameraSubject = hum end
		feedLabel.Text = ""
	end
end)

fBtnRef["Copy ID"].MouseButton1Click:Connect(function()
	if not foundTarget then feedLabel.Text="Selecione um target primeiro."; return end
	if fGet["Copy ID"]() then
		pcall(function() setclipboard(tostring(foundTarget.UserId)) end)
		feedLabel.Text = "ID copiado: "..foundTarget.UserId
	end
end)

fBtnRef["Stand"].MouseButton1Click:Connect(function()
	if fGet["Stand"]() then
		local hum = LP.Character and LP.Character:FindFirstChildOfClass("Humanoid")
		if hum then hum:ChangeState(Enum.HumanoidStateType.GettingUp) end
	end
end)

fBtnRef["Bang"].MouseButton1Click:Connect(function()
	if not foundTarget then return end
	if fGet["Bang"]() then
		pcall(function()
			local hrp = foundTarget.Character and foundTarget.Character:FindFirstChild("HumanoidRootPart")
			if hrp then hrp.Velocity = Vector3.new(0, 85, 0) end
		end)
	end
end)

-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
--  ABA: MISC
-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
local miscPg = makeTab("Misc", 3)
mkLabel(miscPg, "Ferramentas", 10, 10, CAW-20, 20, 14, TXT, Enum.Font.GothamBold)
mkSep(miscPg, 34)

-- ── ANTI AFK ──────────────────────────────────────────
local afkCard = mkCard(miscPg, 10, 42, CAW-20, 58)
mkLabel(afkCard, "Anti AFK", 10, 6,  CAW-120, 18, 13, TXT)
mkLabel(afkCard, "Ativa: você nunca leva kick por inatividade.", 10, 26, CAW-120, 26, 10, SUB)
local _, afkGet, _ = mkToggle(afkCard, "AFK", CAW-108, 16, 92, 28)

-- lógica anti AFK
local afkThread = nil
task.spawn(function()
	while true do
		task.wait(1)
		if afkGet() then
			if not afkThread then
				afkThread = task.spawn(function()
					while afkGet() do
						pcall(function()
							local vu = game:GetService("VirtualUser")
							vu:CaptureController()
							vu:ClickButton2(Vector2.new(0, 0))
						end)
						task.wait(55)
					end
					afkThread = nil
				end)
			end
		end
	end
end)

mkSep(miscPg, 108)

-- ── CLICK TP ──────────────────────────────────────────
local ctpCard = mkCard(miscPg, 10, 116, CAW-20, 58)
mkLabel(ctpCard, "Click TP", 10, 6, CAW-120, 18, 13, TXT)
mkLabel(ctpCard, "Segure Ctrl e clique no chão para teleportar.", 10, 26, CAW-120, 26, 10, SUB)
local _, ctpGet, _ = mkToggle(ctpCard, "Click TP", CAW-108, 16, 92, 28)

UIS.InputBegan:Connect(function(i, gp)
	if gp then return end
	if ctpGet()
		and i.UserInputType == Enum.UserInputType.MouseButton1
		and UIS:IsKeyDown(Enum.KeyCode.LeftControl)
	then
		local hrp = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
		if not hrp then return end
		local ray = Cam:ScreenPointToRay(i.Position.X, i.Position.Y)
		local res = workspace:Raycast(ray.Origin, ray.Direction*500)
		if res then hrp.CFrame = CFrame.new(res.Position + Vector3.new(0, 3, 0)) end
	end
end)

mkSep(miscPg, 182)

-- ── FLASHBACK ─────────────────────────────────────────
local fbCard = mkCard(miscPg, 10, 190, CAW-20, 72)
mkLabel(fbCard, "Flashback", 10, 6, CAW-120, 18, 13, TXT)
mkLabel(fbCard,
	"Ative, depois segure [V] — seu personagem anda para frente mas volta no espaço.\nSolte [V] para parar no lugar.",
	10, 26, CAW-120, 38, 10, SUB)
local _, fbGet, _ = mkToggle(fbCard, "Flashback", CAW-108, 20, 92, 28)

local posHistory = {}
local MAX_HIST   = 600   -- ~10 segundos @ ~60fps
local recTimer   = 0
local flashActive = false

-- Grava posições continuamente
RS.Heartbeat:Connect(function(dt)
	local hrp = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
	if not hrp then return end
	if not flashActive then
		recTimer = recTimer + dt
		if recTimer >= 0.05 then
			recTimer = 0
			posHistory[#posHistory+1] = hrp.CFrame
			if #posHistory > MAX_HIST then table.remove(posHistory, 1) end
		end
	end
end)

-- Segurando V: executa flashback passo a passo (animação de andar para frente)
UIS.InputBegan:Connect(function(i, gp)
	if gp then return end
	if i.KeyCode == Enum.KeyCode.V and fbGet() then
		flashActive = true
		task.spawn(function()
			while flashActive and #posHistory > 0 do
				local hrp = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
				local hum = LP.Character and LP.Character:FindFirstChildOfClass("Humanoid")
				if not hrp then break end

				local prev = posHistory[#posHistory]
				table.remove(posHistory, #posHistory)

				-- Move humanoid walker state para parecer que anda
				if hum then
					hum:Move(Vector3.new(0, 0, -1), false)  -- walk forward anim
				end
				hrp.CFrame = prev

				task.wait(0.05)
			end
			flashActive = false
		end)
	end
end)

UIS.InputEnded:Connect(function(i)
	if i.KeyCode == Enum.KeyCode.V then
		flashActive = false
	end
end)

miscPg.CanvasSize = UDim2.new(0, 0, 0, 278)

-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
--  ABA: ADM
-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
local admPg = makeTab("Adm", 4)
mkLabel(admPg, "Administração / Tags", 10, 10, CAW-20, 20, 14, TXT, Enum.Font.GothamBold)
mkSep(admPg, 34)

-- lista de jogadores com painel ativo
mkLabel(admPg, "Jogadores com painel ativo neste servidor:", 10, 40, CAW-20, 14, 10, SUB)

local listFrame = Instance.new("ScrollingFrame", admPg)
listFrame.Position           = UDim2.new(0, 10, 0, 56)
listFrame.Size               = UDim2.new(0, CAW-20, 0, 96)
listFrame.BackgroundColor3   = CARD
listFrame.BorderSizePixel    = 0
listFrame.ScrollBarThickness = 3
listFrame.ScrollBarImageColor3 = BRD
listFrame.CanvasSize         = UDim2.new(0, 0, 0, 0)
listFrame.ZIndex             = 13
Instance.new("UICorner", listFrame).CornerRadius = UDim.new(0, 6)
Instance.new("UIStroke", listFrame).Color        = BRD
local listLayout = Instance.new("UIListLayout", listFrame)
listLayout.SortOrder = Enum.SortOrder.LayoutOrder
listLayout.Padding   = UDim.new(0, 2)
local listPad = Instance.new("UIPadding", listFrame)
listPad.PaddingTop   = UDim.new(0, 4)
listPad.PaddingLeft  = UDim.new(0, 4)
listPad.PaddingRight = UDim.new(0, 4)

local function refreshPlayerList()
	for _, c in ipairs(listFrame:GetChildren()) do
		if c:IsA("Frame") then c:Destroy() end
	end
	for _, p in ipairs(Players:GetPlayers()) do
		if hasPanelActive(p) then
			local row = Instance.new("Frame", listFrame)
			row.Size             = UDim2.new(1, -2, 0, 24)
			row.BackgroundColor3 = BTN
			row.BorderSizePixel  = 0
			row.ZIndex           = 14
			Instance.new("UICorner", row).CornerRadius = UDim.new(0, 4)

			local nm = Instance.new("TextLabel", row)
			nm.Size             = UDim2.new(0.55, 0, 1, 0)
			nm.Position         = UDim2.new(0, 6, 0, 0)
			nm.BackgroundTransparency = 1
			nm.Text             = "@"..p.Name
			nm.TextColor3       = TXT
			nm.Font             = Enum.Font.Gotham
			nm.TextSize         = 11
			nm.TextXAlignment   = Enum.TextXAlignment.Left
			nm.ZIndex           = 15

			local td2 = getTag(p.UserId)
			local tgl = Instance.new("TextLabel", row)
			tgl.Size             = UDim2.new(0.44, 0, 1, 0)
			tgl.Position         = UDim2.new(0.55, 0, 0, 0)
			tgl.BackgroundTransparency = 1
			tgl.Text             = td2.label
			tgl.TextColor3       = td2.col
			tgl.Font             = Enum.Font.GothamBold
			tgl.TextSize         = 11
			tgl.TextXAlignment   = Enum.TextXAlignment.Right
			tgl.ZIndex           = 15
		end
	end
	listFrame.CanvasSize = UDim2.new(0, 0, 0, listLayout.AbsoluteContentSize.Y + 8)
end

refreshPlayerList()
task.spawn(function()
	while true do task.wait(4); refreshPlayerList() end
end)

mkSep(admPg, 160)
mkLabel(admPg, "Gerenciar Tags:", 10, 168, CAW-20, 18, 13, TXT, Enum.Font.GothamBold)
mkLabel(admPg, "@username do alvo:", 10, 190, CAW-20, 14, 10, SUB)
local stInput = mkInput(admPg, "@username ou DisplayName...", 10, 206, CAW-20, 26)

mkLabel(admPg, "Selecione o cargo:", 10, 240, CAW-20, 14, 10, SUB)

-- Grade de botões de tag com shimmer neon
local TCOLS = 3
local TBW   = math.floor((CAW-20 - (TCOLS-1)*6) / TCOLS)
local TBH   = 28
local selTagKey = "USER"
local selBtnRefs = {}

for i, tkey in ipairs(TAG_KEYS) do
	local td   = TAGS[tkey]
	local col  = (i-1) % TCOLS
	local row  = math.floor((i-1) / TCOLS)
	local bx   = 10 + col*(TBW+6)
	local by   = 256 + row*(TBH+6)

	local tb = Instance.new("TextButton", admPg)
	tb.Position         = UDim2.new(0, bx, 0, by)
	tb.Size             = UDim2.new(0, TBW, 0, TBH)
	tb.BackgroundColor3 = td.bg
	tb.Text             = td.label
	tb.TextColor3       = td.col
	tb.Font             = Enum.Font.GothamBold
	tb.TextSize         = 11
	tb.BorderSizePixel  = 0
	tb.AutoButtonColor  = false
	tb.ClipsDescendants = true
	tb.ZIndex           = 13
	Instance.new("UICorner", tb).CornerRadius = UDim.new(0, 4)

	-- shimmer para tags neon
	if td.neon and td.animated then
		local sh = Instance.new("Frame", tb)
		sh.Size             = UDim2.new(0.35, 0, 1, 0)
		sh.Position         = UDim2.new(-0.35, 0, 0, 0)
		sh.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		sh.BackgroundTransparency = 0.76
		sh.BorderSizePixel  = 0
		sh.ZIndex           = 14
		Instance.new("UICorner", sh).CornerRadius = UDim.new(0, 4)
		task.spawn(function()
			while sh.Parent do
				local tw = TweenService:Create(sh,
					TweenInfo.new(1.5, Enum.EasingStyle.Sine),
					{Position = UDim2.new(1.35, 0, 0, 0)})
				tw:Play(); tw.Completed:Wait()
				sh.Position = UDim2.new(-0.35, 0, 0, 0)
				task.wait(0.8)
			end
		end)
	end

	local sk = Instance.new("UIStroke", tb)
	sk.Color = td.col; sk.Thickness = 0
	selBtnRefs[tkey] = {btn=tb, sk=sk}

	tb.MouseButton1Click:Connect(function()
		selTagKey = tkey
		for _, v in pairs(selBtnRefs) do v.sk.Thickness = 0 end
		sk.Thickness = 2
	end)
end

local rowCount = math.ceil(#TAG_KEYS / TCOLS)
local admActY  = 256 + rowCount*(TBH+6) + 8
mkSep(admPg, admActY - 6)

local addBtn = mkBtn(admPg, "＋  Adicionar Tag", 10, admActY,
	math.floor((CAW-26)/2), 30, GRN)
local remBtn = mkBtn(admPg, "－  Remover Tag",   16+math.floor((CAW-26)/2), admActY,
	math.floor((CAW-26)/2), 30, RED)
local admStatus = mkLabel(admPg, "", 10, admActY+36, CAW-20, 18, 11, SUB)

admPg.CanvasSize = UDim2.new(0, 0, 0, admActY+60)

addBtn.MouseButton1Click:Connect(function()
	if not canManage(LP) then
		admStatus.Text = "❌  Sem permissão para gerenciar tags."
		admStatus.TextColor3 = RED
		return
	end
	local q = stInput.Text
	if q == "" then admStatus.Text="⚠  Digite o username do alvo."; return end
	q = q:lower():gsub("^@","")
	local target = nil
	for _, p in ipairs(Players:GetPlayers()) do
		if p.Name:lower()==q or p.DisplayName:lower()==q then target=p; break end
	end
	if not target then
		admStatus.Text="⚠  Jogador não encontrado no servidor."
		admStatus.TextColor3 = Color3.fromRGB(255,200,0)
		return
	end
	if target.UserId == OWNER_ID and LP.UserId ~= OWNER_ID then
		admStatus.Text = "❌  Não pode alterar o cargo do dono principal."
		admStatus.TextColor3 = RED
		return
	end
	if not canSetThis(LP, selTagKey) then
		admStatus.Text = "❌  Você não tem permissão para conceder este cargo."
		admStatus.TextColor3 = RED
		return
	end

	setTagDB(target.UserId, selTagKey, true)
	applyBB(target)
	if target == LP then refreshMyTag() end
	refreshPlayerList()

	local td = TAGS[selTagKey]
	admStatus.Text       = "✓  Tag '"..td.label.."' concedida a "..target.DisplayName.."!"
	admStatus.TextColor3 = td.col

	showNotif("Tag Atualizada",
		target.DisplayName.." recebeu a tag: "..td.label,
		td.col)

	-- notificação especial para o próprio target (quando é ele mesmo)
	if target == LP then
		showNotif("✨  Sua Tag foi Trocada!",
			"Sua tag foi trocada para '"..td.label.."'. Parabéns!",
			td.col)
	end
end)

remBtn.MouseButton1Click:Connect(function()
	if not canManage(LP) then
		admStatus.Text = "❌  Sem permissão."; admStatus.TextColor3 = RED; return
	end
	local q = stInput.Text
	if q=="" then admStatus.Text="⚠  Digite o username."; return end
	q = q:lower():gsub("^@","")
	local target = nil
	for _, p in ipairs(Players:GetPlayers()) do
		if p.Name:lower()==q or p.DisplayName:lower()==q then target=p; break end
	end
	if not target then admStatus.Text="⚠  Jogador não encontrado."; return end
	if target.UserId == OWNER_ID then
		admStatus.Text="❌  Não pode remover a tag do dono principal."; admStatus.TextColor3=RED; return
	end
	if getTagKey(target.UserId)=="OWNER" and LP.UserId~=OWNER_ID then
		admStatus.Text="❌  Sem permissão para remover esse cargo."; admStatus.TextColor3=RED; return
	end

	setTagDB(target.UserId, "USER", true)
	applyBB(target)
	if target == LP then refreshMyTag() end
	refreshPlayerList()

	admStatus.Text       = "✓  Tag removida de "..target.DisplayName.." → User 4e20"
	admStatus.TextColor3 = SUB
	showNotif("Tag Removida", target.DisplayName.." voltou para User 4e20.", TAGS.USER.col)
end)

-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
--  ABA: VERSÃO
-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
local verPg = makeTab("Versão", 5)

local vCard = mkCard(verPg, 10, 10, CAW-20, 110)
mkLabel(vCard, "4e20 Panel",     10, 10,  CAW-40, 28, 20, TXT, Enum.Font.GothamBold)
mkLabel(vCard, "v"..VERSION,     10, 40,  CAW-40, 18, 14, Color3.fromRGB(80,155,255))
mkLabel(vCard, "Desenvolvido por  Codex  (darkloko99)",
	10, 62, CAW-40, 16, 11, SUB)
mkLabel(vCard, "Owner ID: "..OWNER_ID,
	10, 80, CAW-40, 14, 11, SUB)
mkLabel(vCard, "LocalScript  ·  StarterGui  ·  Roblox Studio",
	10, 96, CAW-40, 14, 10, Color3.fromRGB(50,50,60))

mkSep(verPg, 128)
mkLabel(verPg, "Atalhos:", 10, 136, CAW-20, 18, 12, TXT, Enum.Font.GothamBold)
local shortcuts = {
	"[B]  —  Abrir / Fechar o painel",
	"[V]  —  Flashback (segure para voltar seus passos)",
	"[Ctrl + Clique]  —  Click TP (teleportar ao ponto clicado)",
}
local sy = 156
for _, s in ipairs(shortcuts) do
	mkLabel(verPg, s, 10, sy, CAW-20, 16, 11, SUB); sy = sy+18
end

mkSep(verPg, sy+4)
mkLabel(verPg, "Changelog v1.0.0:", 10, sy+12, CAW-20, 18, 12, TXT, Enum.Font.GothamBold)
local changes = {
	"✓  Layout fiel ao design original — sidebar cinza, conteúdo escuro",
	"✓  Tags neon animadas com shimmer passando pelo texto",
	"✓  Billboard visível APENAS para quem executou o painel",
	"✓  Anti AFK 100% funcional via VirtualUser",
	"✓  Click TP — Ctrl+Clique no chão",
	"✓  Flashback — segura V para voltar com animação de andar",
	"✓  Target: 7 funções toggle (vermelho/verde)",
	"✓  ADM: lista de ativos + hierarquia de tags",
	"✓  DataStore para salvar tags permanentemente",
	"✓  Notificações no canto direito com progresso",
}
local cy = sy+30
for _, ch in ipairs(changes) do
	mkLabel(verPg, ch, 10, cy, CAW-20, 15, 10, SUB); cy = cy+17
end
verPg.CanvasSize = UDim2.new(0, 0, 0, cy+10)

-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
--  ABA: CODEX DEV
-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
local devPg = makeTab("Codex Dev", 6)

local dcCard = mkCard(devPg, 10, 10, CAW-20, 120)
-- gradiente vermelho no card
local dcGrad = Instance.new("UIGradient", dcCard)
dcGrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(32, 0, 0)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 20, 24)),
})
dcGrad.Rotation = 90

mkLabel(dcCard, "Codex",             10, 10,  CAW-40, 30, 22, Color3.fromRGB(255,60,60), Enum.Font.GothamBold)
mkLabel(dcCard, "darkloko99",        10, 42,  CAW-40, 18, 13, Color3.fromRGB(200,200,200))
mkLabel(dcCard, "ID: "..OWNER_ID,   10, 62,  CAW-40, 14, 11, SUB)
mkLabel(dcCard, "Criador do 4e20 Panel  ·  Dono Permanente  ·  Acesso Total Irrevogável",
	10, 80,  CAW-40, 32, 10, Color3.fromRGB(255,60,60))

mkSep(devPg, 138)
mkLabel(devPg, "Sobre o Projeto:", 10, 146, CAW-20, 18, 12, TXT, Enum.Font.GothamBold)
mkLabel(devPg,
	"4e20 Panel é um painel de administração para Roblox criado exclusivamente pelo Codex. "..
		"Sistema de tags hierárquicas com DataStore, ferramentas de utilidade, Anti AFK, "..
		"administração de jogadores e muito mais.\n\nCópia ou redistribuição sem autorização é proibida.",
	10, 166, CAW-20, 74, 10, SUB)
devPg.CanvasSize = UDim2.new(0, 0, 0, 252)

-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
--  TOGGLE [B]  — abrir/fechar
-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
UIS.InputBegan:Connect(function(i, gp)
	if gp then return end
	if i.KeyCode == Enum.KeyCode.B then
		MF.Visible = not MF.Visible
	end
end)

-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
--  INICIALIZAÇÃO
-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
switchTab("Home")

-- Billboard do próprio player
task.spawn(function()
	task.wait(2)
	applyBB(LP)
end)

-- Notif boas-vindas
task.spawn(function()
	task.wait(3)
	local td = getTag(LP.UserId)
	showNotif(
		"4e20 Panel  v"..VERSION,
		"Olá, "..LP.DisplayName.."!  Tag: "..td.label,
		td.col)
end)

print("[4e20 Panel v"..VERSION.."]  ✓  Pressione [B] para abrir.")
