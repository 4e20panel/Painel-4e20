-- ╔══════════════════════════════════════════════════════════════╗
-- ║          4e20 Panel  v2.1  by Codex (darkloko99)            ║
-- ║  StarterPlayerScripts  >  LocalScript                       ║
-- ╚══════════════════════════════════════════════════════════════╝

local Players          = game:GetService("Players")
local UIS              = game:GetService("UserInputService")
local RS               = game:GetService("RunService")
local TweenService     = game:GetService("TweenService")

local LP   = Players.LocalPlayer
local PGui = LP:WaitForChild("PlayerGui")
local Cam  = workspace.CurrentCamera

-- ================================================================
--  CONSTANTES
-- ================================================================
local TOGGLE_KEY = Enum.KeyCode.B
local OWNER_ID   = 9657477548   -- darkloko99 / Codex

-- ================================================================
--  TAGS
-- ================================================================
local TAGS = {
    OWNER      = { label="OWNER",      bg=Color3.fromRGB(20,0,0),    text=Color3.fromRGB(255,40,40),   animated=true  },
    BABY       = { label="BABY",       bg=Color3.fromRGB(40,0,25),   text=Color3.fromRGB(255,120,190), animated=true  },
    GERENTE    = { label="GERENTE",    bg=Color3.fromRGB(22,0,45),   text=Color3.fromRGB(170,60,255),  animated=true  },
    SUPERVISOR = { label="SUPERVISOR", bg=Color3.fromRGB(0,15,45),   text=Color3.fromRGB(50,150,255),  animated=true  },
    SUPORTE    = { label="SUPORTE",    bg=Color3.fromRGB(0,28,14),   text=Color3.fromRGB(30,210,100),  animated=true  },
    VIP        = { label="VIP",        bg=Color3.fromRGB(30,22,0),   text=Color3.fromRGB(255,205,0),   animated=true  },
    USER       = { label="4e20 User",  bg=Color3.fromRGB(18,18,18),  text=Color3.fromRGB(150,150,150), animated=false },
}

local TAG_ORDER = {"OWNER","BABY","GERENTE","SUPERVISOR","SUPORTE","VIP","USER"}

local USER_DB = { [OWNER_ID] = "OWNER" }

-- ================================================================
--  HELPERS
-- ================================================================
local function isOwner(p)   return p.UserId == OWNER_ID end
local function canManage(p) return isOwner(p) or (USER_DB[p.UserId] == "OWNER") end
local function getTagData(uid) local t = USER_DB[uid]; return t and TAGS[t] or TAGS.USER end
local function findPlayer(q)
    q = q:lower()
    for _, p in ipairs(Players:GetPlayers()) do
        if p.Name:lower()==q or p.DisplayName:lower()==q then return p end
    end
end
local function getHRP(p) return p.Character and p.Character:FindFirstChild("HumanoidRootPart") end
local function getHum(p) return p.Character and p.Character:FindFirstChildOfClass("Humanoid") end

-- ================================================================
--  HORÁRIO BRASÍLIA (UTC-3) — sempre em tempo real
-- ================================================================
local function getBrasiliaTime()
    -- os.time() retorna UTC. Brasília = UTC-3 = UTC - 10800 segundos
    local utc = os.time()
    local brt = utc - 10800
    return os.date("!%d/%m/%Y  |  %H:%M:%S", brt)
end

-- ================================================================
--  BILLBOARD (name tag acima da cabeça)
--  REGRAS:
--   - Zero TextStroke (sem contorno preto)
--   - Efeito neon APENAS no texto (TextColor3 pulsante), não vaza pra fora
--   - Sem UIStroke na borda do frame (causava o contorno preto)
-- ================================================================
local function makeBillboard(player, tagData)
    local char = player.Character
    if not char then return end
    local head = char:FindFirstChild("Head")
    if not head then return end

    local old = head:FindFirstChild("4e20_BB")
    if old then old:Destroy() end

    local bb = Instance.new("BillboardGui")
    bb.Name         = "4e20_BB"
    bb.Size         = UDim2.new(0, 190, 0, 58)
    bb.StudsOffset  = Vector3.new(0, 3.5, 0)
    bb.AlwaysOnTop  = false
    bb.ResetOnSpawn = false
    bb.LightInfluence = 0   -- evita que a iluminação distorça as cores
    bb.Parent       = head

    -- Nome do player — SEM TextStroke
    local nl = Instance.new("TextLabel", bb)
    nl.Size                  = UDim2.new(1, 0, 0.46, 0)
    nl.BackgroundTransparency = 1
    nl.Text                  = player.DisplayName
    nl.TextColor3            = Color3.fromRGB(255, 255, 255)
    nl.TextStrokeTransparency = 1   -- desativado (sem borda preta)
    nl.Font                  = Enum.Font.GothamBold
    nl.TextScaled            = true

    -- Frame da tag — sem UIStroke para não aparecer contorno
    local tf = Instance.new("Frame", bb)
    tf.Size              = UDim2.new(0.86, 0, 0.46, 0)
    tf.Position          = UDim2.new(0.07, 0, 0.52, 0)
    tf.BackgroundColor3  = tagData.bg
    tf.BorderSizePixel   = 0        -- sem borda nativa
    tf.ClipsDescendants  = true
    Instance.new("UICorner", tf).CornerRadius = UDim.new(0, 5)
    -- SEM UIStroke aqui — era o causador do contorno preto

    -- Texto da tag — SEM TextStroke
    local tl = Instance.new("TextLabel", tf)
    tl.Size                  = UDim2.new(1, 0, 1, 0)
    tl.BackgroundTransparency = 1
    tl.Text                  = tagData.label
    tl.TextColor3            = tagData.text
    tl.TextStrokeTransparency = 1   -- desativado
    tl.Font                  = Enum.Font.GothamBold
    tl.TextScaled            = true
    tl.ZIndex                = 2

    -- Efeito neon: pulso APENAS no TextColor3 da letra (não vaza pra fora)
    if tagData.animated then
        -- Shimmer interno (frame branco que passa por cima)
        local sh = Instance.new("Frame", tf)
        sh.Size                  = UDim2.new(0.32, 0, 1, 0)
        sh.Position              = UDim2.new(-0.32, 0, 0, 0)
        sh.BackgroundColor3      = Color3.fromRGB(255, 255, 255)
        sh.BackgroundTransparency = 0.76
        sh.BorderSizePixel       = 0
        sh.ZIndex                = 3
        sh.ClipsDescendants      = false
        Instance.new("UICorner", sh).CornerRadius = UDim.new(0, 5)

        task.spawn(function()
            while sh.Parent do
                local tw = TweenService:Create(sh,
                    TweenInfo.new(1.5, Enum.EasingStyle.Sine),
                    { Position = UDim2.new(1.32, 0, 0, 0) }
                )
                tw:Play(); tw.Completed:Wait()
                sh.Position = UDim2.new(-0.32, 0, 0, 0)
                task.wait(0.9)
            end
        end)

        -- Pulso neon: só o TextColor3 pisca (mais brilhante / mais escuro)
        local baseR = tagData.text.R
        local baseG = tagData.text.G
        local baseB = tagData.text.B
        -- Versão mais escura para o vale do pulso
        local dimColor  = Color3.new(baseR * 0.35, baseG * 0.35, baseB * 0.35)
        -- Versão branca/saturada para o pico
        local peakColor = Color3.new(
            math.min(baseR + 0.35, 1),
            math.min(baseG + 0.35, 1),
            math.min(baseB + 0.35, 1)
        )

        task.spawn(function()
            while tl.Parent do
                TweenService:Create(tl,
                    TweenInfo.new(0.9, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
                    { TextColor3 = peakColor }
                ):Play()
                task.wait(0.9)
                TweenService:Create(tl,
                    TweenInfo.new(0.9, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
                    { TextColor3 = dimColor }
                ):Play()
                task.wait(0.9)
            end
        end)
    end
end

local function applyBillboard(player)
    makeBillboard(player, getTagData(player.UserId))
end

local function hookPlayer(player)
    if player.Character then
        task.spawn(function() task.wait(0.8); applyBillboard(player) end)
    end
    player.CharacterAdded:Connect(function() task.wait(1); applyBillboard(player) end)
end

for _, p in ipairs(Players:GetPlayers()) do hookPlayer(p) end
Players.PlayerAdded:Connect(hookPlayer)

-- ================================================================
--  NOTIFICAÇÃO FLUTUANTE
-- ================================================================
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name          = "4e20PanelGui"
ScreenGui.ResetOnSpawn  = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent        = PGui

local notifContainer = Instance.new("Frame", ScreenGui)
notifContainer.Size     = UDim2.new(0, 280, 1, 0)
notifContainer.Position = UDim2.new(1, -290, 0, 0)
notifContainer.BackgroundTransparency = 1

local notifLayout = Instance.new("UIListLayout", notifContainer)
notifLayout.SortOrder           = Enum.SortOrder.LayoutOrder
notifLayout.VerticalAlignment   = Enum.VerticalAlignment.Bottom
notifLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
notifLayout.Padding             = UDim.new(0, 6)

local notifPad = Instance.new("UIPadding", notifContainer)
notifPad.PaddingBottom = UDim.new(0, 14)
notifPad.PaddingRight  = UDim.new(0, 8)

local notifOrder = 0

local function showNotif(title, body, accent)
    accent = accent or Color3.fromRGB(90, 90, 90)
    notifOrder = notifOrder + 1

    local card = Instance.new("Frame", notifContainer)
    card.Size             = UDim2.new(1, 0, 0, 66)
    card.BackgroundColor3 = Color3.fromRGB(16, 16, 18)
    card.BorderSizePixel  = 0
    card.LayoutOrder      = notifOrder
    Instance.new("UICorner", card).CornerRadius = UDim.new(0, 8)
    local cs = Instance.new("UIStroke", card); cs.Color = accent; cs.Thickness = 1; cs.Transparency = 0.3

    local bar = Instance.new("Frame", card)
    bar.Size             = UDim2.new(0, 3, 1, -10)
    bar.Position         = UDim2.new(0, 5, 0, 5)
    bar.BackgroundColor3 = accent
    bar.BorderSizePixel  = 0
    Instance.new("UICorner", bar).CornerRadius = UDim.new(0, 3)

    local tL = Instance.new("TextLabel", card)
    tL.Size               = UDim2.new(1, -18, 0, 22)
    tL.Position           = UDim2.new(0, 14, 0, 6)
    tL.BackgroundTransparency = 1
    tL.Text               = title
    tL.TextColor3         = Color3.fromRGB(230, 230, 230)
    tL.Font               = Enum.Font.GothamBold
    tL.TextSize           = 13
    tL.TextXAlignment     = Enum.TextXAlignment.Left

    local bL = Instance.new("TextLabel", card)
    bL.Size               = UDim2.new(1, -18, 0, 32)
    bL.Position           = UDim2.new(0, 14, 0, 28)
    bL.BackgroundTransparency = 1
    bL.Text               = body
    bL.TextColor3         = Color3.fromRGB(140, 140, 140)
    bL.Font               = Enum.Font.Gotham
    bL.TextSize           = 11
    bL.TextXAlignment     = Enum.TextXAlignment.Left
    bL.TextWrapped        = true

    task.delay(4.5, function()
        TweenService:Create(card, TweenInfo.new(0.4, Enum.EasingStyle.Quart), { BackgroundTransparency = 1 }):Play()
        TweenService:Create(tL,   TweenInfo.new(0.4), { TextTransparency = 1 }):Play()
        TweenService:Create(bL,   TweenInfo.new(0.4), { TextTransparency = 1 }):Play()
        task.wait(0.45); card:Destroy()
    end)
end

-- ================================================================
--  CORES / DIMENSÕES
-- ================================================================
local BG   = Color3.fromRGB(12, 12, 14)
local PAN  = Color3.fromRGB(18, 18, 20)
local SB_C = Color3.fromRGB(15, 15, 17)
local BTN  = Color3.fromRGB(26, 26, 30)
local BTHV = Color3.fromRGB(40, 40, 46)
local BRD  = Color3.fromRGB(38, 38, 44)
local TXT  = Color3.fromRGB(220, 220, 220)
local SUB  = Color3.fromRGB(100, 100, 110)
local RED  = Color3.fromRGB(160, 35, 35)
local GRN  = Color3.fromRGB(30, 130, 65)

local W    = 540
local H    = 390
local TB_H = 38
local SB_W = 112
local CA_W = W - SB_W
local CA_H = H - TB_H

-- ================================================================
--  MAIN FRAME
-- ================================================================
local MF = Instance.new("Frame", ScreenGui)
MF.Name            = "Main"
MF.Size            = UDim2.new(0, W, 0, H)
MF.Position        = UDim2.new(0.5, -W/2, 0.5, -H/2)
MF.BackgroundColor3 = BG
MF.BorderSizePixel = 0
MF.Visible         = false
MF.ClipsDescendants = true
Instance.new("UICorner", MF).CornerRadius = UDim.new(0, 10)
local mfS = Instance.new("UIStroke", MF); mfS.Color = BRD; mfS.Thickness = 1

-- ================================================================
--  TOPBAR
-- ================================================================
local TB = Instance.new("Frame", MF)
TB.Size             = UDim2.new(0, W, 0, TB_H)
TB.BackgroundColor3 = PAN
TB.BorderSizePixel  = 0
Instance.new("UICorner", TB)

local TLab = Instance.new("TextLabel", TB)
TLab.Size             = UDim2.new(0, W - 120, 0, TB_H)
TLab.Position         = UDim2.new(0, 12, 0, 0)
TLab.BackgroundTransparency = 1
TLab.Text             = "4e20 Panel  v2.1"
TLab.TextColor3       = TXT
TLab.Font             = Enum.Font.GothamBold
TLab.TextSize         = 14
TLab.TextXAlignment   = Enum.TextXAlignment.Left

local onlineTopL = Instance.new("TextLabel", TB)
onlineTopL.Size           = UDim2.new(0, 100, 0, TB_H)
onlineTopL.Position       = UDim2.new(0, W - 130, 0, 0)
onlineTopL.BackgroundTransparency = 1
onlineTopL.TextColor3     = SUB
onlineTopL.Font           = Enum.Font.Gotham
onlineTopL.TextSize       = 11
onlineTopL.TextXAlignment = Enum.TextXAlignment.Right

local CB = Instance.new("TextButton", TB)
CB.Size             = UDim2.new(0, 26, 0, 20)
CB.Position         = UDim2.new(0, W - 32, 0, 9)
CB.BackgroundColor3 = RED
CB.Text             = "✕"
CB.TextColor3       = Color3.fromRGB(255, 255, 255)
CB.Font             = Enum.Font.GothamBold
CB.TextSize         = 12
CB.BorderSizePixel  = 0
CB.AutoButtonColor  = false
Instance.new("UICorner", CB).CornerRadius = UDim.new(0, 4)
CB.MouseButton1Click:Connect(function() MF.Visible = false end)

-- Drag
do
    local drag, ds, sp = false, nil, nil
    TB.InputBegan:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 then drag=true; ds=i.Position; sp=MF.Position end
    end)
    TB.InputEnded:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 then drag=false end
    end)
    UIS.InputChanged:Connect(function(i)
        if drag and i.UserInputType == Enum.UserInputType.MouseMovement then
            local d = i.Position - ds
            MF.Position = UDim2.new(sp.X.Scale, sp.X.Offset+d.X, sp.Y.Scale, sp.Y.Offset+d.Y)
        end
    end)
end

-- ================================================================
--  SIDEBAR
-- ================================================================
local SIDEBAR = Instance.new("Frame", MF)
SIDEBAR.Size             = UDim2.new(0, SB_W, 0, CA_H)
SIDEBAR.Position         = UDim2.new(0, 0, 0, TB_H)
SIDEBAR.BackgroundColor3 = SB_C
SIDEBAR.BorderSizePixel  = 0
SIDEBAR.ClipsDescendants = true
local sbList = Instance.new("UIListLayout", SIDEBAR)
sbList.SortOrder   = Enum.SortOrder.LayoutOrder
sbList.Padding     = UDim.new(0, 3)
local sbPad = Instance.new("UIPadding", SIDEBAR)
sbPad.PaddingTop=UDim.new(0,7); sbPad.PaddingLeft=UDim.new(0,6)
sbPad.PaddingRight=UDim.new(0,6); sbPad.PaddingBottom=UDim.new(0,7)

-- ================================================================
--  CONTENT AREA
-- ================================================================
local CA = Instance.new("Frame", MF)
CA.Size             = UDim2.new(0, CA_W, 0, CA_H)
CA.Position         = UDim2.new(0, SB_W, 0, TB_H)
CA.BackgroundTransparency = 1
CA.ClipsDescendants = true

-- ================================================================
--  TAB SYSTEM
-- ================================================================
local tabPages = {}
local tabBtns  = {}
local activeTab = nil

local function newTab(name, order)
    local b = Instance.new("TextButton", SIDEBAR)
    b.Name             = name
    b.Size             = UDim2.new(1, 0, 0, 30)
    b.BackgroundColor3 = BTN
    b.Text             = name
    b.TextColor3       = SUB
    b.Font             = Enum.Font.Gotham
    b.TextSize         = 12
    b.BorderSizePixel  = 0
    b.LayoutOrder      = order
    b.AutoButtonColor  = false
    Instance.new("UICorner", b).CornerRadius = UDim.new(0, 5)

    local pg = Instance.new("ScrollingFrame", CA)
    pg.Name                 = name
    pg.Size                 = UDim2.new(0, CA_W, 0, CA_H)
    pg.BackgroundTransparency = 1
    pg.Visible              = false
    pg.ClipsDescendants     = true
    pg.ScrollBarThickness   = 3
    pg.ScrollBarImageColor3 = BRD
    pg.CanvasSize           = UDim2.new(0, 0, 0, 0)

    tabPages[name] = pg
    tabBtns[name]  = b

    b.MouseEnter:Connect(function() if activeTab~=name then b.BackgroundColor3=BTHV end end)
    b.MouseLeave:Connect(function() if activeTab~=name then b.BackgroundColor3=BTN  end end)
    b.MouseButton1Click:Connect(function()
        for n, pg2 in pairs(tabPages) do
            pg2.Visible = (n==name)
            tabBtns[n].TextColor3       = (n==name) and TXT or SUB
            tabBtns[n].BackgroundColor3 = (n==name) and BTHV or BTN
        end
        activeTab = name
    end)
    return pg
end

local function switchTab(name)
    for n, pg in pairs(tabPages) do
        pg.Visible = (n==name)
        tabBtns[n].TextColor3       = (n==name) and TXT or SUB
        tabBtns[n].BackgroundColor3 = (n==name) and BTHV or BTN
    end
    activeTab = name
end

-- ================================================================
--  UI HELPERS
-- ================================================================
local function mkLbl(parent, text, x, y, w, h, sz, col, font, ha)
    local l = Instance.new("TextLabel", parent)
    l.Position = UDim2.new(0,x,0,y); l.Size = UDim2.new(0,w,0,h)
    l.BackgroundTransparency=1; l.Text=text
    l.TextColor3=col or TXT; l.Font=font or Enum.Font.Gotham
    l.TextSize=sz or 12; l.TextWrapped=true
    l.TextXAlignment=ha or Enum.TextXAlignment.Left
    return l
end

local function mkSep(parent, y)
    local f = Instance.new("Frame", parent)
    f.Position=UDim2.new(0,10,0,y); f.Size=UDim2.new(0,CA_W-20,0,1)
    f.BackgroundColor3=BRD; f.BorderSizePixel=0
    return f
end

local function mkBtn(parent, text, x, y, w, h, color, textColor)
    local b = Instance.new("TextButton", parent)
    b.Position=UDim2.new(0,x,0,y); b.Size=UDim2.new(0,w,0,h)
    b.BackgroundColor3=color or BTN
    b.Text=text; b.TextColor3=textColor or TXT
    b.Font=Enum.Font.Gotham; b.TextSize=12
    b.BorderSizePixel=0; b.AutoButtonColor=false
    Instance.new("UICorner",b).CornerRadius=UDim.new(0,5)
    b.MouseEnter:Connect(function() TweenService:Create(b,TweenInfo.new(0.12),{BackgroundColor3=BTHV}):Play() end)
    b.MouseLeave:Connect(function() TweenService:Create(b,TweenInfo.new(0.12),{BackgroundColor3=color or BTN}):Play() end)
    return b
end

local function mkInput(parent, placeholder, x, y, w, h)
    local fr = Instance.new("Frame", parent)
    fr.Position=UDim2.new(0,x,0,y); fr.Size=UDim2.new(0,w,0,h)
    fr.BackgroundColor3=BTN; fr.BorderSizePixel=0
    Instance.new("UICorner",fr).CornerRadius=UDim.new(0,5)
    Instance.new("UIStroke",fr).Color=BRD
    local tb = Instance.new("TextBox", fr)
    tb.Size=UDim2.new(1,-10,1,0); tb.Position=UDim2.new(0,6,0,0)
    tb.BackgroundTransparency=1
    tb.PlaceholderText=placeholder; tb.PlaceholderColor3=SUB
    tb.Text=""; tb.TextColor3=TXT
    tb.Font=Enum.Font.Gotham; tb.TextSize=12
    tb.ClearTextOnFocus=false
    return tb
end

local function mkToggle(parent, label, hint, x, y, id, states, onToggle)
    local lbl = Instance.new("TextLabel", parent)
    lbl.Position=UDim2.new(0,x,0,y); lbl.Size=UDim2.new(0,CA_W-80,0,16)
    lbl.BackgroundTransparency=1; lbl.Text=label
    lbl.TextColor3=TXT; lbl.Font=Enum.Font.Gotham; lbl.TextSize=12
    lbl.TextXAlignment=Enum.TextXAlignment.Left

    local hintL = Instance.new("TextLabel", parent)
    hintL.Position=UDim2.new(0,x,0,y+16); hintL.Size=UDim2.new(0,CA_W-80,0,13)
    hintL.BackgroundTransparency=1; hintL.Text=hint
    hintL.TextColor3=SUB; hintL.Font=Enum.Font.Gotham; hintL.TextSize=10
    hintL.TextXAlignment=Enum.TextXAlignment.Left

    local tbg = Instance.new("Frame", parent)
    tbg.Position=UDim2.new(0,CA_W-58,0,y+4)
    tbg.Size=UDim2.new(0,40,0,20)
    tbg.BackgroundColor3=Color3.fromRGB(25,25,28)
    tbg.BorderSizePixel=0
    Instance.new("UICorner",tbg).CornerRadius=UDim.new(0,10)

    local knob = Instance.new("Frame", tbg)
    knob.Size=UDim2.new(0,14,0,14); knob.Position=UDim2.new(0,3,0.5,-7)
    knob.BackgroundColor3=Color3.fromRGB(80,80,90); knob.BorderSizePixel=0
    Instance.new("UICorner",knob).CornerRadius=UDim.new(0,7)

    local btn = Instance.new("TextButton", tbg)
    btn.Size=UDim2.new(1,0,1,0); btn.BackgroundTransparency=1; btn.Text=""

    btn.MouseButton1Click:Connect(function()
        states[id] = not states[id]
        local on = states[id]
        TweenService:Create(tbg,  TweenInfo.new(0.15), {BackgroundColor3=on and Color3.fromRGB(30,100,55) or Color3.fromRGB(25,25,28)}):Play()
        TweenService:Create(knob, TweenInfo.new(0.15), {
            Position=on and UDim2.new(0,23,0.5,-7) or UDim2.new(0,3,0.5,-7),
            BackgroundColor3=on and Color3.fromRGB(40,200,100) or Color3.fromRGB(80,80,90)
        }):Play()
        if onToggle then onToggle(on) end
    end)

    return btn
end

-- ================================================================
--  TAB: HOME
-- ================================================================
local homePg = newTab("Home", 1)

local welcomeL  = mkLbl(homePg, "", 10, 12, CA_W-20, 20, 14, TXT, Enum.Font.GothamBold)
local subWelcomeL = mkLbl(homePg, "Pressione [B] para abrir / fechar", 10, 34, CA_W-20, 14, 11, SUB)
mkSep(homePg, 54)
local onlineL = mkLbl(homePg, "Online: --", 10, 64, CA_W-20, 16, 12, SUB)
local pingL   = mkLbl(homePg, "Ping: --",   10, 82, CA_W-20, 16, 12, SUB)
local clockL  = mkLbl(homePg, "",           10,100, CA_W-20, 16, 12, Color3.fromRGB(80,160,255))
mkSep(homePg, 122)
mkLbl(homePg, "Sua tag:", 10, 132, CA_W-20, 14, 11, SUB)

local myTagFrame = Instance.new("Frame", homePg)
myTagFrame.Position=UDim2.new(0,10,0,148); myTagFrame.Size=UDim2.new(0,120,0,24)
myTagFrame.BorderSizePixel=0
Instance.new("UICorner",myTagFrame).CornerRadius=UDim.new(0,5)

local myTagLabel = Instance.new("TextLabel", myTagFrame)
myTagLabel.Size=UDim2.new(1,0,1,0); myTagLabel.BackgroundTransparency=1
myTagLabel.Font=Enum.Font.GothamBold; myTagLabel.TextSize=11
myTagLabel.TextStrokeTransparency=1

local function refreshMyTag()
    local td = getTagData(LP.UserId)
    myTagFrame.BackgroundColor3 = td.bg
    myTagLabel.Text = td.label
    myTagLabel.TextColor3 = td.text
end
refreshMyTag()

homePg.CanvasSize = UDim2.new(0,0,0,200)

-- Atualização em tempo real
RS.Heartbeat:Connect(function()
    pingL.Text   = "Ping: " .. math.floor(LP:GetNetworkPing()*1000) .. " ms"
    onlineL.Text = "Online: " .. #Players:GetPlayers() .. " jogadores"
    onlineTopL.Text = "[ " .. #Players:GetPlayers() .. " online ]  [B] fechar"
    -- Horário Brasília (UTC-3) sempre atualizado
    clockL.Text = "Brasília: " .. getBrasiliaTime()
    welcomeL.Text = "Olá, " .. LP.DisplayName .. "!  Seja bem-vindo."
end)

-- ================================================================
--  TAB: TARGET
-- ================================================================
local targetPg = newTab("Target", 2)

mkLbl(targetPg, "Inspecionar Player", 10, 10, CA_W-20, 18, 14, TXT, Enum.Font.GothamBold)
local tSearchTB  = mkInput(targetPg, "Nick do player...", 10, 34, CA_W-20, 26)
local tSearchBtn = mkBtn(targetPg, "Buscar", 10, 68, 90, 26, Color3.fromRGB(30,80,160))

local avatarFrame = Instance.new("Frame", targetPg)
avatarFrame.Position=UDim2.new(0,10,0,102); avatarFrame.Size=UDim2.new(0,70,0,70)
avatarFrame.BackgroundColor3=BTN; avatarFrame.BorderSizePixel=0
Instance.new("UICorner",avatarFrame).CornerRadius=UDim.new(0,8)
Instance.new("UIStroke",avatarFrame).Color=BRD

local avatarImg = Instance.new("ImageLabel", avatarFrame)
avatarImg.Size=UDim2.new(1,0,1,0); avatarImg.BackgroundTransparency=1
avatarImg.Image="rbxassetid://1369988112"; avatarImg.ScaleType=Enum.ScaleType.Fit
Instance.new("UICorner",avatarImg).CornerRadius=UDim.new(0,7)

local tNameL    = mkLbl(targetPg,"Nenhum player selecionado",88,104,CA_W-100,16,12,TXT)
local tDisplayL = mkLbl(targetPg,"",88,122,CA_W-100,14,11,SUB)
local tIdL      = mkLbl(targetPg,"",88,138,CA_W-100,14,11,SUB)
local tTagL     = mkLbl(targetPg,"",88,154,CA_W-100,14,11,SUB)

mkSep(targetPg, 180)
mkLbl(targetPg, "Ações:", 10, 190, CA_W-20, 14, 11, SUB)

local viewBtn    = mkBtn(targetPg,"View",    10, 208,118,28,BTN)
local followBtn  = mkBtn(targetPg,"Follow", 136, 208,118,28,BTN)
local headsitBtn = mkBtn(targetPg,"Headsit",262, 208,118,28,BTN)
local copyIdBtn  = mkBtn(targetPg,"Copy ID", 10, 244, 88,24,BTN,SUB)

local tFeedbackL = mkLbl(targetPg,"",10,276,CA_W-20,16,11,Color3.fromRGB(80,200,120))
targetPg.CanvasSize = UDim2.new(0,0,0,310)

local foundTarget = nil
local followConn  = nil
local headsitConn = nil

local function stopTargetActions()
    if followConn  then followConn:Disconnect();  followConn=nil  end
    if headsitConn then headsitConn:Disconnect(); headsitConn=nil end
    followBtn.Text  = "Follow"
    headsitBtn.Text = "Headsit"
end

tSearchBtn.MouseButton1Click:Connect(function()
    local q = tSearchTB.Text
    if q=="" then return end
    local p = findPlayer(q)
    if not p then
        tNameL.Text="Player não encontrado."; tNameL.TextColor3=RED
        tDisplayL.Text=""; tIdL.Text=""; tTagL.Text=""
        avatarImg.Image="rbxassetid://1369988112"; foundTarget=nil; return
    end
    foundTarget=p
    tNameL.Text="@"..p.Name; tNameL.TextColor3=TXT
    tDisplayL.Text="Display: "..p.DisplayName
    tIdL.Text="ID: "..p.UserId
    local td=getTagData(p.UserId)
    tTagL.Text="Tag: "..td.label; tTagL.TextColor3=td.text
    local ok,url = pcall(function()
        return Players:GetUserThumbnailAsync(p.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size100x100)
    end)
    avatarImg.Image = ok and url or "rbxassetid://1369988112"
    tFeedbackL.Text=""
    stopTargetActions()
end)

viewBtn.MouseButton1Click:Connect(function()
    if not foundTarget then return end
    local hum=getHum(foundTarget)
    if hum then Cam.CameraSubject=hum; tFeedbackL.Text="Spectating "..foundTarget.DisplayName end
end)

followBtn.MouseButton1Click:Connect(function()
    if not foundTarget then return end
    if followConn then
        followConn:Disconnect(); followConn=nil
        followBtn.Text="Follow"; tFeedbackL.Text=""; return
    end
    tFeedbackL.Text="Seguindo "..foundTarget.DisplayName.."..."
    followBtn.Text="Follow [ON]"
    followConn = RS.Heartbeat:Connect(function()
        local hrp=getHRP(LP); local tHRP=getHRP(foundTarget)
        if hrp and tHRP then
            hrp.CFrame = tHRP.CFrame * CFrame.new(0,0,3.5)
        end
    end)
end)

headsitBtn.MouseButton1Click:Connect(function()
    if not foundTarget then return end
    if headsitConn then
        headsitConn:Disconnect(); headsitConn=nil
        headsitBtn.Text="Headsit"; tFeedbackL.Text=""
        local hum=getHum(LP); if hum then hum:ChangeState(Enum.HumanoidStateType.GettingUp) end
        return
    end
    tFeedbackL.Text="Headsit em "..foundTarget.DisplayName.."..."
    headsitBtn.Text="Headsit [ON]"
    headsitConn = RS.Heartbeat:Connect(function()
        local hrp=getHRP(LP)
        local head=foundTarget.Character and foundTarget.Character:FindFirstChild("Head")
        if hrp and head then
            hrp.CFrame = CFrame.new(head.Position + Vector3.new(0,1.5,0))
            local hum=getHum(LP)
            if hum and hum:GetState()~=Enum.HumanoidStateType.Seated then
                hum:ChangeState(Enum.HumanoidStateType.Seated)
            end
        end
    end)
end)

copyIdBtn.MouseButton1Click:Connect(function()
    if foundTarget then
        pcall(function() setclipboard(tostring(foundTarget.UserId)) end)
        tFeedbackL.Text="ID copiado: "..foundTarget.UserId
    end
end)

-- ================================================================
--  TAB: MISC
-- ================================================================
local miscPg = newTab("Misc", 3)
mkLbl(miscPg,"Ferramentas",10,10,CA_W-20,18,14,TXT,Enum.Font.GothamBold)
mkSep(miscPg,32)

local miscStates = { clicktp=false, spin=false, flashback=false }
local spinConn   = nil

-- Click TP — SEM notificação de spam
mkLbl(miscPg,"Click TP",10,42,CA_W-80,16,13,TXT)
mkLbl(miscPg,"Ctrl + Click no chão  →  teleporta instantâneo",10,56,CA_W-80,13,10,SUB)
mkToggle(miscPg,"","",0,42,"clicktp",miscStates,nil)

mkSep(miscPg,76)

-- Spin
mkLbl(miscPg,"Spin",10,86,CA_W-80,16,13,TXT)
mkLbl(miscPg,"Tecla [T]  →  girar lento / parar",10,100,CA_W-80,13,10,SUB)
mkToggle(miscPg,"","",0,86,"spin",miscStates,function(on)
    if on then
        spinConn = RS.Heartbeat:Connect(function()
            local hrp=getHRP(LP)
            if hrp then hrp.CFrame=hrp.CFrame*CFrame.Angles(0,math.rad(1.2),0) end
        end)
    else
        if spinConn then spinConn:Disconnect(); spinConn=nil end
    end
end)

mkSep(miscPg,120)

-- Flashback
mkLbl(miscPg,"Flashback",10,130,CA_W-80,16,13,TXT)
mkLbl(miscPg,"Segura [V]  →  volta pra trás andando (usa W para mover)",10,144,CA_W-80,13,10,SUB)
mkToggle(miscPg,"","",0,130,"flashback",miscStates,nil)

miscPg.CanvasSize = UDim2.new(0,0,0,180)

-- ================================================================
--  FLASHBACK — lógica correta
--  Quando segura V, cada vez que o player pressiona W,
--  ele é teleportado para a posição anterior no histórico,
--  dando o efeito de "andar pra trás" com animação real de W.
-- ================================================================
local posHistory  = {}
local MAX_HIST    = 500
local flashActive = false

-- Grava posição a cada 0.08s (não toda frame, para ter passos suaves)
local recordTimer = 0
RS.Heartbeat:Connect(function(dt)
    local hrp = getHRP(LP)
    if not hrp then return end

    if not flashActive then
        -- Grava histórico normalmente
        recordTimer = recordTimer + dt
        if recordTimer >= 0.08 then
            recordTimer = 0
            table.insert(posHistory, hrp.CFrame)
            if #posHistory > MAX_HIST then table.remove(posHistory, 1) end
        end
    end
end)

-- Segura V para ativar flashback
UIS.InputBegan:Connect(function(inp, gp)
    if gp then return end
    if inp.KeyCode == Enum.KeyCode.V then
        flashActive = true
        miscStates.flashback = true
    end
end)

UIS.InputEnded:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.V then
        flashActive = false
        miscStates.flashback = false
    end
end)

-- Quando flashback ativo e jogador pressiona W, rebobina 1 passo
UIS.InputBegan:Connect(function(inp, gp)
    if gp then return end
    if flashActive and inp.KeyCode == Enum.KeyCode.W then
        local hrp = getHRP(LP)
        if hrp and #posHistory > 0 then
            -- Pega o último passo gravado e remove
            local prevCF = posHistory[#posHistory]
            table.remove(posHistory, #posHistory)
            -- Teleporta mantendo a orientação atual (só move posição, não rotação)
            -- para que a animação de andar do Roblox continue funcionando
            hrp.CFrame = CFrame.new(prevCF.Position) * (hrp.CFrame - hrp.CFrame.Position)
        end
    end
end)

-- Tecla T para Spin
UIS.InputBegan:Connect(function(inp, gp)
    if gp then return end
    if inp.KeyCode == Enum.KeyCode.T then
        miscStates.spin = not miscStates.spin
        if miscStates.spin then
            spinConn = RS.Heartbeat:Connect(function()
                local hrp=getHRP(LP)
                if hrp then hrp.CFrame=hrp.CFrame*CFrame.Angles(0,math.rad(1.2),0) end
            end)
        else
            if spinConn then spinConn:Disconnect(); spinConn=nil end
        end
    end
end)

-- Ctrl + Click TP — SEM notificação
UIS.InputBegan:Connect(function(inp, gp)
    if gp then return end
    if miscStates.clicktp
        and inp.UserInputType == Enum.UserInputType.MouseButton1
        and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
        local ray    = Cam:ScreenPointToRay(inp.Position.X, inp.Position.Y)
        local result = workspace:Raycast(ray.Origin, ray.Direction*500)
        if result then
            local hrp = getHRP(LP)
            if hrp then
                hrp.CFrame = CFrame.new(result.Position + Vector3.new(0,3,0))
            end
        end
    end
end)

-- ================================================================
--  TAB: VIP
-- ================================================================
local vipPg = newTab("VIP", 4)
local vipL = Instance.new("TextLabel", vipPg)
vipL.Size=UDim2.new(1,-20,0,60); vipL.Position=UDim2.new(0,10,0.35,0)
vipL.BackgroundTransparency=1; vipL.Text="Em breve..."
vipL.TextColor3=Color3.fromRGB(255,200,0); vipL.Font=Enum.Font.GothamBold; vipL.TextSize=22
vipL.TextXAlignment=Enum.TextXAlignment.Center
local vipSub=mkLbl(vipPg,"Conteúdo VIP chegando em breve!",10,0,CA_W-20,18,11,SUB,Enum.Font.Gotham,Enum.TextXAlignment.Center)
vipSub.Position=UDim2.new(0,10,0.5,0)

-- ================================================================
--  TAB: SETATAGS  (só aparece para OWNER / quem tem tag OWNER)
-- ================================================================
if canManage(LP) then
    local tagsPg = newTab("SetaTags", 5)

    mkLbl(tagsPg,"Gerenciar Tags",10,10,CA_W-20,18,14,TXT,Enum.Font.GothamBold)
    mkLbl(tagsPg,"Apenas Owners têm acesso a esta aba.",10,30,CA_W-20,14,10,SUB)
    mkSep(tagsPg,48)
    mkLbl(tagsPg,"Username do alvo:",10,56,CA_W-20,14,11,SUB)
    local stUserTB = mkInput(tagsPg,"@username ou DisplayName",10,72,CA_W-20,26)
    mkLbl(tagsPg,"Escolha a tag:",10,106,CA_W-20,14,11,SUB)

    local selectedTag = "USER"
    local selBtns     = {}
    local COLS = 3
    local BW   = math.floor((CA_W-20-(COLS*4))/COLS)

    for i, tkey in ipairs(TAG_ORDER) do
        local td  = TAGS[tkey]
        local col = (i-1) % COLS
        local row = math.floor((i-1)/COLS)
        local bx  = 10 + col*(BW+4)
        local by  = 122 + row*32

        local tb2 = Instance.new("TextButton", tagsPg)
        tb2.Position=UDim2.new(0,bx,0,by); tb2.Size=UDim2.new(0,BW,0,26)
        tb2.BackgroundColor3=td.bg; tb2.Text=td.label; tb2.TextColor3=td.text
        tb2.Font=Enum.Font.GothamBold; tb2.TextSize=11
        tb2.BorderSizePixel=0; tb2.AutoButtonColor=false
        Instance.new("UICorner",tb2).CornerRadius=UDim.new(0,5)
        -- SEM UIStroke (zero contorno)
        local sk = Instance.new("UIStroke",tb2); sk.Color=td.text; sk.Thickness=0
        selBtns[tkey]={btn=tb2,sk=sk}

        tb2.MouseButton1Click:Connect(function()
            selectedTag=tkey
            for _,v in pairs(selBtns) do v.sk.Thickness=0 end
            sk.Thickness=2.0
        end)
    end

    local rowsUsed = math.ceil(#TAG_ORDER/COLS)
    local applyY   = 122 + rowsUsed*32 + 6

    local applyBtn  = mkBtn(tagsPg,"Aplicar Tag",10,applyY,120,28,GRN)
    local removeBtn = mkBtn(tagsPg,"Remover Tag",138,applyY,120,28,RED)
    local stStatusL = mkLbl(tagsPg,"",10,applyY+36,CA_W-20,16,11,SUB)

    tagsPg.CanvasSize = UDim2.new(0,0,0,applyY+70)

    applyBtn.MouseButton1Click:Connect(function()
        local q=stUserTB.Text
        if q=="" then stStatusL.Text="Digite um username."; return end
        local p=findPlayer(q)
        if not p then stStatusL.Text="Usuário não encontrado no servidor."; return end
        if selectedTag=="OWNER" and not isOwner(LP) then
            stStatusL.Text="Sem permissão para dar tag OWNER."; return
        end
        if p.UserId==OWNER_ID and selectedTag~="OWNER" then
            stStatusL.Text="Não é possível alterar a tag do dono principal."; return
        end
        USER_DB[p.UserId]=selectedTag
        applyBillboard(p)
        if p==LP then refreshMyTag() end
        local td=TAGS[selectedTag]
        stStatusL.Text="Tag '"..td.label.."' aplicada a "..p.DisplayName.."!"
        stStatusL.TextColor3=td.text
        showNotif("Tag Atualizada", p.DisplayName.." recebeu a tag "..td.label, td.text)
    end)

    removeBtn.MouseButton1Click:Connect(function()
        local q=stUserTB.Text
        if q=="" then stStatusL.Text="Digite um username."; return end
        local p=findPlayer(q)
        if not p then stStatusL.Text="Usuário não encontrado."; return end
        if p.UserId==OWNER_ID then stStatusL.Text="Não é possível remover a tag do dono principal."; return end
        if USER_DB[p.UserId]=="OWNER" and not isOwner(LP) then
            stStatusL.Text="Sem permissão para remover tag OWNER."; return
        end
        USER_DB[p.UserId]="USER"
        applyBillboard(p)
        if p==LP then refreshMyTag() end
        stStatusL.Text="Tag removida de "..p.DisplayName.."."
        stStatusL.TextColor3=SUB
        showNotif("Tag Removida", p.DisplayName.." voltou para 4e20 User", TAGS.USER.text)
    end)
end

-- ================================================================
--  TOGGLE [B]
-- ================================================================
UIS.InputBegan:Connect(function(inp, gp)
    if gp then return end
    if inp.KeyCode == TOGGLE_KEY then
        MF.Visible = not MF.Visible
    end
end)

switchTab("Home")

task.spawn(function() task.wait(2); applyBillboard(LP) end)

-- Notif de boas-vindas (só 1 vez)
task.spawn(function()
    task.wait(3)
    local td = getTagData(LP.UserId)
    showNotif("4e20 Panel v2.1", "Olá, "..LP.DisplayName.."!  Tag: "..td.label, td.text)
end)

print("[4e20 Panel v2.1] Pronto! Pressione [B] para abrir.")
