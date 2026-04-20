-- ============================================================
--  4E20 PANEL v2.1  |  Otimizado & Organizado
--  Engine: Roblox LocalScript
-- ============================================================

-- ══════════════════════════════════════
--  SERVIÇOS
-- ══════════════════════════════════════
local Players          = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService       = game:GetService("RunService")
local TweenService     = game:GetService("TweenService")
local HttpService      = game:GetService("HttpService")
local VirtualUser      = game:GetService("VirtualUser")

local localPlayer = Players.LocalPlayer
local mouse       = localPlayer:GetMouse()
local camera      = workspace.CurrentCamera

-- ══════════════════════════════════════
--  CONFIGURAÇÕES GLOBAIS
-- ══════════════════════════════════════
local CONFIG = {
    TOGGLE_KEY  = Enum.KeyCode.B,
    SERVIDOR    = "https://foure20-backend.onrender.com",
    GAME_ID     = "4E20_GLOBAL",
    MEU_ID_DONO = 9657477548,

    TAGS = {
        OWNER   = Color3.fromRGB(150,   0,   0),
        MEOW    = Color3.fromRGB(255, 100, 255),
        MANAGER = Color3.fromRGB( 85,   0, 255),
        HELPE   = Color3.fromRGB(255, 255,   0),
        VIP     = Color3.fromRGB(  0, 255,   0),
        USER    = Color3.fromRGB(255, 255, 255),
    },

    CORES = {
        BG_ESCURO  = Color3.fromRGB( 22,  22,  22),
        BG_PAINEL  = Color3.fromRGB( 32,  32,  32),
        BG_SIDEBAR = Color3.fromRGB( 42,  42,  42),
        BTN_NORMAL = Color3.fromRGB( 60,  60,  60),
        BTN_HOVER  = Color3.fromRGB( 80,  80,  80),
        TEXTO      = Color3.fromRGB(255, 255, 255),
        ACCENT     = Color3.fromRGB( 80, 180, 255),
        VERDE      = Color3.fromRGB( 60, 220,  60),
        VERMELHO   = Color3.fromRGB(220,  60,  60),
    },
}

-- ══════════════════════════════════════
--  UTILITÁRIOS
-- ══════════════════════════════════════
local Util = {}

function Util.tween(obj, info, props)
    TweenService:Create(obj, info, props):Play()
end

function Util.buscarJogador(texto)
    local t = texto:lower():gsub("%s+", "")
    if t == "" then return nil end
    for _, p in ipairs(Players:GetPlayers()) do
        if p.Name:lower():find(t, 1, true) or p.DisplayName:lower():find(t, 1, true) then
            return p
        end
    end
    return nil
end

function Util.httpRequest(dados)
    local fn = (syn and syn.request)
            or (http and http.request)
            or request or HttpRequest
            or (fluxus and fluxus.request)
    if not fn then return nil end
    local ok, res = pcall(fn, dados)
    return ok and res or nil
end

function Util.corParaTabela(c)
    return { math.floor(c.R*255), math.floor(c.G*255), math.floor(c.B*255) }
end

function Util.tabelaParaCor(t)
    return Color3.fromRGB(t[1], t[2], t[3])
end

-- ══════════════════════════════════════
--  CONSTRUTOR DE GUI
-- ══════════════════════════════════════
local GUI = {}

function GUI.novo(classe, props, pai)
    local obj = Instance.new(classe)
    for k, v in pairs(props or {}) do obj[k] = v end
    if pai then obj.Parent = pai end
    return obj
end

function GUI.arredondado(pai, raio)
    GUI.novo("UICorner", { CornerRadius = UDim.new(0, raio or 6) }, pai)
end

function GUI.padding(pai, t, r, b, l)
    GUI.novo("UIPadding", {
        PaddingTop    = UDim.new(0, t or 0),
        PaddingRight  = UDim.new(0, r or 0),
        PaddingBottom = UDim.new(0, b or 0),
        PaddingLeft   = UDim.new(0, l or 0),
    }, pai)
end

function GUI.lista(pai, dir, esp)
    GUI.novo("UIListLayout", {
        FillDirection = dir or Enum.FillDirection.Vertical,
        Padding       = UDim.new(0, esp or 6),
        SortOrder     = Enum.SortOrder.LayoutOrder,
    }, pai)
end

function GUI.botao(texto, pai, layoutOrder)
    local btn = GUI.novo("TextButton", {
        Name             = texto,
        Size             = UDim2.new(1, 0, 0, 34),
        BackgroundColor3 = CONFIG.CORES.BTN_NORMAL,
        Text             = texto,
        TextColor3       = CONFIG.CORES.TEXTO,
        Font             = Enum.Font.GothamBold,
        TextSize         = 13,
        BorderSizePixel  = 0,
        LayoutOrder      = layoutOrder or 0,
        AutoButtonColor  = false,
    }, pai)
    GUI.arredondado(btn, 5)
    btn.MouseEnter:Connect(function()
        Util.tween(btn, TweenInfo.new(0.15), { BackgroundColor3 = CONFIG.CORES.BTN_HOVER })
    end)
    btn.MouseLeave:Connect(function()
        Util.tween(btn, TweenInfo.new(0.15), { BackgroundColor3 = CONFIG.CORES.BTN_NORMAL })
    end)
    return btn
end

function GUI.labelStatus(pai)
    local lbl = GUI.novo("Frame", {
        Name             = "Status",
        Size             = UDim2.new(0, 10, 0, 10),
        Position         = UDim2.new(1, -18, 0.5, -5),
        BackgroundColor3 = CONFIG.CORES.VERMELHO,
        BorderSizePixel  = 0,
    }, pai)
    GUI.arredondado(lbl, 5)
    return lbl
end

function GUI.setStatus(lbl, ligado)
    lbl.BackgroundColor3 = ligado and CONFIG.CORES.VERDE or CONFIG.CORES.VERMELHO
end

function GUI.textBox(placeholder, pai, layoutOrder)
    local box = GUI.novo("TextBox", {
        Size              = UDim2.new(1, 0, 0, 34),
        BackgroundColor3  = Color3.fromRGB(50, 50, 50),
        Text              = "",
        PlaceholderText   = placeholder,
        PlaceholderColor3 = Color3.fromRGB(120, 120, 120),
        TextColor3        = CONFIG.CORES.TEXTO,
        Font              = Enum.Font.Gotham,
        TextSize          = 13,
        BorderSizePixel   = 0,
        ClearTextOnFocus  = false,
        LayoutOrder       = layoutOrder or 0,
    }, pai)
    GUI.arredondado(box, 5)
    GUI.padding(box, 0, 0, 0, 10)
    return box
end

-- ══════════════════════════════════════
--  SISTEMA DE NOTIFICAÇÕES
-- ══════════════════════════════════════
local Notif = {}
do
    for _, obj in ipairs(localPlayer.PlayerGui:GetChildren()) do
        if obj.Name == "NotificacoesPainel" then obj:Destroy() end
    end

    local notifGui = GUI.novo("ScreenGui", {
        Name           = "NotificacoesPainel",
        ResetOnSpawn   = false,
        ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
    }, localPlayer.PlayerGui)

    local pilha = {}

    function Notif.enviar(titulo, texto, cargo, duracao)
        duracao = duracao or 4
        local corCargo = CONFIG.TAGS[cargo] or CONFIG.CORES.ACCENT

        for _, f in ipairs(pilha) do
            if f and f.Parent then
                Util.tween(f, TweenInfo.new(0.3), {
                    Position = UDim2.new(1, -295, 1, f.Position.Y.Offset - 85)
                })
            end
        end

        local frame = GUI.novo("Frame", {
            Size             = UDim2.new(0, 275, 0, 72),
            Position         = UDim2.new(1, 20, 1, -90),
            BackgroundColor3 = Color3.fromRGB(28, 28, 28),
            BorderSizePixel  = 0,
            AnchorPoint      = Vector2.new(0, 1),
        }, notifGui)
        GUI.arredondado(frame, 8)

        GUI.novo("Frame", {
            Size             = UDim2.new(0, 4, 1, 0),
            BackgroundColor3 = corCargo,
            BorderSizePixel  = 0,
        }, frame)

        GUI.novo("TextLabel", {
            Size             = UDim2.new(1, -20, 0, 26),
            Position         = UDim2.new(0, 14, 0, 8),
            BackgroundTransparency = 1,
            Text             = titulo:upper(),
            TextColor3       = Color3.new(1,1,1),
            Font             = Enum.Font.GothamBold,
            TextSize         = 13,
            TextXAlignment   = Enum.TextXAlignment.Left,
        }, frame)

        GUI.novo("TextLabel", {
            Size             = UDim2.new(1, -20, 0, 22),
            Position         = UDim2.new(0, 14, 0, 36),
            BackgroundTransparency = 1,
            Text             = texto,
            TextColor3       = Color3.fromRGB(190, 190, 190),
            Font             = Enum.Font.Gotham,
            TextSize         = 12,
            TextXAlignment   = Enum.TextXAlignment.Left,
        }, frame)

        table.insert(pilha, frame)
        Util.tween(frame, TweenInfo.new(0.4, Enum.EasingStyle.Back), {
            Position = UDim2.new(1, -295, 1, -90)
        })

        task.delay(duracao, function()
            if frame and frame.Parent then
                Util.tween(frame, TweenInfo.new(0.3), {
                    Position = UDim2.new(1, 20, 1, frame.Position.Y.Offset)
                })
                task.wait(0.35)
                local idx = table.find(pilha, frame)
                if idx then table.remove(pilha, idx) end
                frame:Destroy()
            end
        end)
    end
end

-- ══════════════════════════════════════
--  CONSTRUÇÃO DO PAINEL PRINCIPAL
-- ══════════════════════════════════════
local screenGui = GUI.novo("ScreenGui", {
    Name           = "4E20PanelV2",
    ResetOnSpawn   = false,
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
}, localPlayer.PlayerGui)

local corpo = GUI.novo("Frame", {
    Name             = "Corpo",
    Size             = UDim2.new(0, 480, 0, 290),
    Position         = UDim2.new(0.3, 0, 0.14, 0),
    BackgroundColor3 = CONFIG.CORES.BG_PAINEL,
    BorderSizePixel  = 0,
    Active           = true,
}, screenGui)
GUI.arredondado(corpo, 10)

GUI.novo("Frame", {
    Size             = UDim2.new(1, 12, 1, 12),
    Position         = UDim2.new(0, -6, 0, 6),
    BackgroundColor3 = Color3.new(0,0,0),
    BackgroundTransparency = 0.55,
    BorderSizePixel  = 0,
    ZIndex           = 0,
}, corpo)

local sidebar = GUI.novo("Frame", {
    Size             = UDim2.new(0, 100, 1, 0),
    BackgroundColor3 = CONFIG.CORES.BG_SIDEBAR,
    BorderSizePixel  = 0,
}, corpo)
GUI.arredondado(sidebar, 10)

GUI.novo("TextLabel", {
    Size             = UDim2.new(1, 0, 0, 42),
    BackgroundTransparency = 1,
    Text             = "4E20",
    TextColor3       = CONFIG.CORES.ACCENT,
    Font             = Enum.Font.GothamBlack,
    TextSize         = 22,
}, sidebar)

local abaContainer = GUI.novo("Frame", {
    Size             = UDim2.new(1, 0, 1, -52),
    Position         = UDim2.new(0, 0, 0, 42),
    BackgroundTransparency = 1,
}, sidebar)
GUI.lista(abaContainer, Enum.FillDirection.Vertical, 4)
GUI.padding(abaContainer, 4, 8, 4, 8)

GUI.novo("TextLabel", {
    Size             = UDim2.new(1, 0, 0, 16),
    Position         = UDim2.new(0, 0, 1, -20),
    BackgroundTransparency = 1,
    Text             = "v2.1",
    TextColor3       = Color3.fromRGB(90, 90, 90),
    Font             = Enum.Font.Gotham,
    TextSize         = 11,
}, sidebar)

local conteudo = GUI.novo("Frame", {
    Name             = "Conteudo",
    Size             = UDim2.new(1, -108, 1, -8),
    Position         = UDim2.new(0, 104, 0, 4),
    BackgroundColor3 = CONFIG.CORES.BG_ESCURO,
    BorderSizePixel  = 0,
    ClipsDescendants = true,
}, corpo)
GUI.arredondado(conteudo, 8)

-- ══════════════════════════════════════
--  SISTEMA DE ABAS
-- ══════════════════════════════════════
local Abas = {}

local function criarAba(nome, layoutOrder)
    local btn = GUI.novo("TextButton", {
        Name             = nome,
        Size             = UDim2.new(1, 0, 0, 32),
        BackgroundColor3 = CONFIG.CORES.BTN_NORMAL,
        Text             = nome,
        TextColor3       = CONFIG.CORES.TEXTO,
        Font             = Enum.Font.GothamBold,
        TextSize         = 12,
        BorderSizePixel  = 0,
        LayoutOrder      = layoutOrder,
        AutoButtonColor  = false,
    }, abaContainer)
    GUI.arredondado(btn, 5)

    local frame = GUI.novo("Frame", {
        Name             = "Tela_" .. nome,
        Size             = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        Visible          = false,
        ClipsDescendants = true,
    }, conteudo)
    GUI.lista(frame, Enum.FillDirection.Vertical, 6)
    GUI.padding(frame, 10, 10, 10, 10)

    Abas[nome] = { btn = btn, frame = frame }
    return frame
end

local function ativarAba(nome)
    for n, aba in pairs(Abas) do
        local ativo = (n == nome)
        aba.frame.Visible = ativo
        Util.tween(aba.btn, TweenInfo.new(0.2), {
            BackgroundColor3 = ativo and CONFIG.CORES.ACCENT or CONFIG.CORES.BTN_NORMAL,
        })
    end
end

local function conectarAbas()
    for nome, aba in pairs(Abas) do
        aba.btn.MouseButton1Click:Connect(function()
            ativarAba(nome)
        end)
    end
end

-- ══════════════════════════════════════
--  DRAG
-- ══════════════════════════════════════
do
    local arrastando, inputArrastar, startPos, startInput

    corpo.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            arrastando = true
            startPos   = corpo.Position
            startInput = input.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    arrastando = false
                end
            end)
        end
    end)

    corpo.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            inputArrastar = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == inputArrastar and arrastando then
            local delta = input.Position - startInput
            Util.tween(corpo, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Position = UDim2.new(
                    startPos.X.Scale, startPos.X.Offset + delta.X,
                    startPos.Y.Scale, startPos.Y.Offset + delta.Y
                )
            })
        end
    end)
end

-- ══════════════════════════════════════
--  TOGGLE  [ B ]
-- ══════════════════════════════════════
UserInputService.InputBegan:Connect(function(input, processed)
    if processed then return end
    if input.KeyCode == CONFIG.TOGGLE_KEY then
        corpo.Visible = not corpo.Visible
    end
end)

-- ══════════════════════════════════════
--  ABA 1 — HOME
-- ══════════════════════════════════════
do
    local frame = criarAba("HOME", 1)
    for _, c in ipairs(frame:GetChildren()) do c:Destroy() end

    local fotoFrame = GUI.novo("Frame", {
        Size             = UDim2.new(0, 78, 0, 78),
        Position         = UDim2.new(0, 10, 0, 12),
        BackgroundColor3 = Color3.fromRGB(50, 50, 50),
        BorderSizePixel  = 0,
    }, frame)
    GUI.arredondado(fotoFrame, 39)

    local foto = GUI.novo("ImageLabel", {
        Size                 = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        Image                = "",
    }, fotoFrame)
    GUI.arredondado(foto, 39)

    local infoFrame = GUI.novo("Frame", {
        Size             = UDim2.new(1, -106, 0, 78),
        Position         = UDim2.new(0, 96, 0, 12),
        BackgroundTransparency = 1,
    }, frame)

    GUI.novo("TextLabel", {
        Size             = UDim2.new(1, 0, 0, 28),
        BackgroundTransparency = 1,
        Text             = "Olá, " .. localPlayer.DisplayName .. "!",
        TextColor3       = Color3.new(1,1,1),
        Font             = Enum.Font.GothamBold,
        TextSize         = 16,
        TextXAlignment   = Enum.TextXAlignment.Left,
    }, infoFrame)

    GUI.novo("TextLabel", {
        Size             = UDim2.new(1, 0, 0, 22),
        Position         = UDim2.new(0, 0, 0, 28),
        BackgroundTransparency = 1,
        Text             = "@" .. localPlayer.Name,
        TextColor3       = CONFIG.CORES.ACCENT,
        Font             = Enum.Font.Gotham,
        TextSize         = 13,
        TextXAlignment   = Enum.TextXAlignment.Left,
    }, infoFrame)

    GUI.novo("TextLabel", {
        Size             = UDim2.new(1, 0, 0, 20),
        Position         = UDim2.new(0, 0, 0, 52),
        BackgroundTransparency = 1,
        Text             = "[ B ] para abrir / fechar",
        TextColor3       = Color3.fromRGB(100, 100, 100),
        Font             = Enum.Font.Gotham,
        TextSize         = 11,
        TextXAlignment   = Enum.TextXAlignment.Left,
    }, infoFrame)

    GUI.novo("Frame", {
        Size             = UDim2.new(1, -20, 0, 1),
        Position         = UDim2.new(0, 10, 0, 102),
        BackgroundColor3 = Color3.fromRGB(52, 52, 52),
        BorderSizePixel  = 0,
    }, frame)

    GUI.novo("TextLabel", {
        Size             = UDim2.new(1, -20, 0, 80),
        Position         = UDim2.new(0, 10, 0, 114),
        BackgroundTransparency = 1,
        Text             = "Use as abas ao lado para acessar as funções do painel.\n\nTARGET  ·  MISC  ·  ADM",
        TextColor3       = Color3.fromRGB(130, 130, 130),
        Font             = Enum.Font.Gotham,
        TextSize         = 12,
        TextWrapped      = true,
        TextXAlignment   = Enum.TextXAlignment.Left,
    }, frame)

    task.spawn(function()
        local ok, img = pcall(function()
            return Players:GetUserThumbnailAsync(
                localPlayer.UserId,
                Enum.ThumbnailType.HeadShot,
                Enum.ThumbnailSize.Size420x420
            )
        end)
        if ok then foto.Image = img end
    end)
end

-- ══════════════════════════════════════
--  ABA 2 — TARGET
-- ══════════════════════════════════════
do
    local frame = criarAba("TARGET", 2)

    local inputAlvo = GUI.textBox("Digite @username ou display name...", frame, 1)

    local infoAlvo = GUI.novo("Frame", {
        Size             = UDim2.new(1, 0, 0, 58),
        BackgroundColor3 = Color3.fromRGB(40, 40, 40),
        BorderSizePixel  = 0,
        LayoutOrder      = 2,
    }, frame)
    GUI.arredondado(infoAlvo, 6)

    local avatarAlvo = GUI.novo("ImageLabel", {
        Size             = UDim2.new(0, 48, 0, 48),
        Position         = UDim2.new(0, 5, 0.5, -24),
        BackgroundColor3 = Color3.fromRGB(55, 55, 55),
        Image            = "",
        BorderSizePixel  = 0,
    }, infoAlvo)
    GUI.arredondado(avatarAlvo, 6)

    local nomeAlvo = GUI.novo("TextLabel", {
        Size             = UDim2.new(1, -68, 0, 22),
        Position         = UDim2.new(0, 60, 0, 8),
        BackgroundTransparency = 1,
        Text             = "Nenhum jogador selecionado",
        TextColor3       = Color3.fromRGB(210, 210, 210),
        Font             = Enum.Font.GothamBold,
        TextSize         = 12,
        TextXAlignment   = Enum.TextXAlignment.Left,
    }, infoAlvo)

    local idAlvo = GUI.novo("TextLabel", {
        Size             = UDim2.new(1, -68, 0, 18),
        Position         = UDim2.new(0, 60, 0, 32),
        BackgroundTransparency = 1,
        Text             = "ID: ---",
        TextColor3       = Color3.fromRGB(110, 110, 110),
        Font             = Enum.Font.Gotham,
        TextSize         = 11,
        TextXAlignment   = Enum.TextXAlignment.Left,
    }, infoAlvo)

    local btnRow = GUI.novo("Frame", {
        Size            = UDim2.new(1, 0, 0, 34),
        BackgroundTransparency = 1,
        LayoutOrder     = 3,
    }, frame)
    GUI.lista(btnRow, Enum.FillDirection.Horizontal, 6)

    local btnView   = GUI.botao("VIEW",   btnRow, 1)
    local btnFollow = GUI.botao("FOLLOW", btnRow, 2)
    local btnFocus  = GUI.botao("FOCUS",  btnRow, 3)
    btnView.Size   = UDim2.new(0.33, -4, 1, 0)
    btnFollow.Size = UDim2.new(0.33, -4, 1, 0)
    btnFocus.Size  = UDim2.new(0.33, -4, 1, 0)

    local stView   = GUI.labelStatus(btnView)
    local stFollow = GUI.labelStatus(btnFollow)
    local stFocus  = GUI.labelStatus(btnFocus)

    local jogadorAlvo = nil
    local modoView    = false
    local modoFollow  = false

    local function atualizarInfoAlvo(p)
        jogadorAlvo = p
        if p then
            nomeAlvo.Text = p.DisplayName .. " (@" .. p.Name .. ")"
            idAlvo.Text   = "ID: " .. p.UserId
            task.spawn(function()
                local ok, img = pcall(function()
                    return Players:GetUserThumbnailAsync(
                        p.UserId,
                        Enum.ThumbnailType.HeadShot,
                        Enum.ThumbnailSize.Size150x150
                    )
                end)
                if ok then avatarAlvo.Image = img end
            end)
        else
            nomeAlvo.Text    = "Não encontrado"
            idAlvo.Text      = "ID: ---"
            avatarAlvo.Image = ""
        end
    end

    inputAlvo.FocusLost:Connect(function(enterPressed)
        if enterPressed then
            atualizarInfoAlvo(Util.buscarJogador(inputAlvo.Text))
        end
    end)

    btnView.MouseButton1Click:Connect(function()
        if not (jogadorAlvo and jogadorAlvo.Character) then
            GUI.setStatus(stView, false); return
        end
        local hum = jogadorAlvo.Character:FindFirstChild("Humanoid")
        if not hum then GUI.setStatus(stView, false); return end
        modoView = not modoView
        camera.CameraSubject = modoView and hum
            or (localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid"))
        GUI.setStatus(stView, modoView)
    end)

    btnFollow.MouseButton1Click:Connect(function()
        if not (jogadorAlvo and jogadorAlvo.Character) then
            GUI.setStatus(stFollow, false); return
        end
        modoFollow = not modoFollow
        GUI.setStatus(stFollow, modoFollow)
        if modoFollow then
            task.spawn(function()
                while modoFollow do
                    task.wait(0.05)
                    if not (jogadorAlvo and jogadorAlvo.Character) then break end
                    local meuRoot  = localPlayer.Character
                                  and localPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local alvoRoot = jogadorAlvo.Character:FindFirstChild("HumanoidRootPart")
                    if meuRoot and alvoRoot then
                        meuRoot.CFrame = alvoRoot.CFrame * CFrame.new(0, 0, 4)
                    end
                end
            end)
        end
    end)

    btnFocus.MouseButton1Click:Connect(function()
        if not (jogadorAlvo and jogadorAlvo.Character) then
            GUI.setStatus(stFocus, false); return
        end
        local meuRoot  = localPlayer.Character
                      and localPlayer.Character:FindFirstChild("HumanoidRootPart")
        local alvoRoot = jogadorAlvo.Character:FindFirstChild("HumanoidRootPart")
        if meuRoot and alvoRoot then
            meuRoot.CFrame = alvoRoot.CFrame
            GUI.setStatus(stFocus, true)
            task.delay(0.6, function() GUI.setStatus(stFocus, false) end)
        end
    end)
end

-- ══════════════════════════════════════
--  ABA 3 — MISC
-- ══════════════════════════════════════
do
    local frame = criarAba("MISC", 3)

    -- ── CLICK-TP ──────────────────────
    local btnClickTP   = GUI.botao("CLICK - TP", frame, 1)
    local stClickTP    = GUI.labelStatus(btnClickTP)
    local clickTPAtivo = false

    local avisoTP = GUI.novo("TextLabel", {
        Size             = UDim2.new(0, 340, 0, 34),
        Position         = UDim2.new(0.5, -170, 1, -54),
        BackgroundColor3 = Color3.fromRGB(18, 18, 18),
        BackgroundTransparency = 0.15,
        Text             = "[ CTRL + CLIQUE ] para teleportar",
        TextColor3       = CONFIG.CORES.ACCENT,
        Font             = Enum.Font.GothamBold,
        TextSize         = 13,
        BorderSizePixel  = 0,
        Visible          = false,
        ZIndex           = 10,
    }, screenGui)
    GUI.arredondado(avisoTP, 8)

    btnClickTP.MouseButton1Click:Connect(function()
        clickTPAtivo = not clickTPAtivo
        GUI.setStatus(stClickTP, clickTPAtivo)
        if clickTPAtivo then
            avisoTP.Visible = true
            task.delay(5, function() avisoTP.Visible = false end)
        end
    end)

    mouse.Button1Down:Connect(function()
        if clickTPAtivo and UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
            local char = localPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(mouse.Hit.p + Vector3.new(0, 3, 0))
            end
        end
    end)

    -- ── NOCLIP ────────────────────────
    local btnNoclip       = GUI.botao("NOCLIP  [ N ]", frame, 2)
    local stNoclip        = GUI.labelStatus(btnNoclip)
    local noclipPermissao = false
    local noclipAtivo     = false
    local noclipConexao   = nil

    btnNoclip.MouseButton1Click:Connect(function()
        noclipPermissao = not noclipPermissao
        GUI.setStatus(stNoclip, noclipPermissao)
        if not noclipPermissao then
            noclipAtivo = false
            if noclipConexao then noclipConexao:Disconnect(); noclipConexao = nil end
            if localPlayer.Character then
                for _, p in ipairs(localPlayer.Character:GetDescendants()) do
                    if p:IsA("BasePart") then p.CanCollide = true end
                end
            end
        end
    end)

    UserInputService.InputBegan:Connect(function(input, processed)
        if processed or not noclipPermissao then return end
        if input.KeyCode == Enum.KeyCode.N then
            noclipAtivo = not noclipAtivo
            if noclipAtivo then
                noclipConexao = RunService.Stepped:Connect(function()
                    if localPlayer.Character then
                        for _, p in ipairs(localPlayer.Character:GetDescendants()) do
                            if p:IsA("BasePart") then p.CanCollide = false end
                        end
                    end
                end)
            else
                if noclipConexao then noclipConexao:Disconnect(); noclipConexao = nil end
                if localPlayer.Character then
                    for _, p in ipairs(localPlayer.Character:GetDescendants()) do
                        if p:IsA("BasePart") then p.CanCollide = true end
                    end
                end
            end
        end
    end)

    -- ── FLASHBACK ─────────────────────
    --
    --  PROBLEMA ORIGINAL:
    --    • table.remove(rastro, 1) no RenderStepped consumia uma posição a cada
    --      frame (~60x/s), muito mais rápido do que a gravação (20x/s) → voltava
    --      em alta velocidade e travava.
    --    • O Lerp usava `1 - (0.1 ^ (dt*60))` que é instável e causa tremor.
    --
    --  SOLUÇÃO APLICADA:
    --    • Gravação: insere no FINAL da tabela (índice #rastro = mais recente).
    --    • Reprodução: consome do FINAL também, mas controlada por temporizador
    --      (tempoRep) com o MESMO intervalo da gravação → velocidade 1:1.
    --    • Lerp: interpola entre dois CFrames FIXOS (cfDe → cfPara) usando um
    --      progresso linear `tLerp` avançado por dt/INTERVALO → duração constante
    --      independente do FPS. Smoothstep elimina o tremor nas bordas.
    --
    local btnFlash   = GUI.botao("FLASHBACK  [ V ]", frame, 3)
    local stFlash    = GUI.labelStatus(btnFlash)

    local flashAtivo     = false
    local rastro         = {}     -- fila: [1]=mais antiga … [#rastro]=mais recente
    local MAX_POS        = 120    -- ≈ 6s de histórico a 20 grv/s
    local INTERVALO_GRAV = 0.05   -- grava a cada 50 ms  (20/s)
    local INTERVALO_REP  = 0.05   -- reproduz a cada 50 ms (mesma cadência → 1:1)
    local tempoGrav      = 0
    local tempoRep       = 0
    local cfDe           = nil    -- CFrame de partida do segmento atual
    local cfPara         = nil    -- CFrame de destino do segmento atual
    local tLerp          = 1      -- progresso 0→1 (começa em 1 = sem alvo)

    btnFlash.MouseButton1Click:Connect(function()
        flashAtivo = not flashAtivo
        GUI.setStatus(stFlash, flashAtivo)
        if not flashAtivo then
            table.clear(rastro)
            cfDe     = nil
            cfPara   = nil
            tLerp    = 1
            tempoGrav = 0
            tempoRep  = 0
        end
    end)

    -- GRAVAÇÃO — acumula posições enquanto V não está pressionado
    RunService.Heartbeat:Connect(function(dt)
        if not flashAtivo then return end
        if UserInputService:IsKeyDown(Enum.KeyCode.V) then return end  -- pausa ao reproduzir

        local char = localPlayer.Character
        if not char then return end
        local root = char:FindFirstChild("HumanoidRootPart")
        if not root then return end

        tempoGrav = tempoGrav + dt
        if tempoGrav >= INTERVALO_GRAV then
            tempoGrav = tempoGrav - INTERVALO_GRAV  -- subtrai para não perder frações
            table.insert(rastro, root.CFrame)        -- mais recente vai para o final
            if #rastro > MAX_POS then
                table.remove(rastro, 1)              -- descarta o mais antigo (índice 1)
            end
        end
    end)

    -- REPRODUÇÃO — desfaz o caminho no mesmo ritmo em que foi gravado
    RunService.RenderStepped:Connect(function(dt)
        if not flashAtivo then return end

        -- Se V não está pressionado, reseta estado e sai
        if not UserInputService:IsKeyDown(Enum.KeyCode.V) then
            cfDe    = nil
            cfPara  = nil
            tLerp   = 1
            tempoRep = 0
            return
        end

        local char = localPlayer.Character
        if not char then return end
        local root = char:FindFirstChild("HumanoidRootPart")
        local hum  = char:FindFirstChild("Humanoid")
        if not (root and hum) then return end

        -- Avança temporizador e busca próximo ponto quando o intervalo fecha
        tempoRep = tempoRep + dt
        if tempoRep >= INTERVALO_REP and #rastro > 0 then
            tempoRep = tempoRep - INTERVALO_REP
            cfDe   = (cfPara ~= nil) and cfPara or root.CFrame  -- parte de onde chegamos
            cfPara = table.remove(rastro, #rastro)               -- pega o mais recente
            tLerp  = 0
        end

        -- Interpolação suave com Smoothstep (sem tremor, sem overshooting)
        if cfDe and cfPara then
            tLerp = math.min(tLerp + dt / INTERVALO_REP, 1)
            local s = tLerp * tLerp * (3 - 2 * tLerp)  -- smoothstep
            root.CFrame = cfDe:Lerp(cfPara, s)
        end

        -- Evita que o Humanoid congele animações
        hum:Move(Vector3.new(0, 0, 0), false)
    end)

    -- ── ANTI-AFK ──────────────────────
    local btnAFK   = GUI.botao("ANTI-AFK", frame, 4)
    local stAFK    = GUI.labelStatus(btnAFK)
    local afkAtivo = false

    btnAFK.MouseButton1Click:Connect(function()
        afkAtivo = not afkAtivo
        GUI.setStatus(stAFK, afkAtivo)
    end)

    localPlayer.Idled:Connect(function()
        if not afkAtivo then return end
        VirtualUser:Button2Down(Vector2.new(0, 0), camera.CFrame)
        task.wait(0.5)
        VirtualUser:Button2Up(Vector2.new(0, 0), camera.CFrame)
    end)
end

-- ══════════════════════════════════════
--  ABA 4 — ADM
-- ══════════════════════════════════════
do
    local frame = criarAba("ADM", 4)

    local inputNome = GUI.textBox("Nome do jogador...", frame, 1)

    local infoBox = GUI.novo("Frame", {
        Size             = UDim2.new(1, 0, 0, 48),
        BackgroundColor3 = Color3.fromRGB(40, 40, 40),
        BorderSizePixel  = 0,
        LayoutOrder      = 2,
    }, frame)
    GUI.arredondado(infoBox, 6)

    local imgAdm = GUI.novo("ImageLabel", {
        Size             = UDim2.new(0, 40, 0, 40),
        Position         = UDim2.new(0, 4, 0.5, -20),
        BackgroundColor3 = Color3.fromRGB(55, 55, 55),
        Image            = "",
        BorderSizePixel  = 0,
    }, infoBox)
    GUI.arredondado(imgAdm, 6)

    local dispAdm = GUI.novo("TextLabel", {
        Size             = UDim2.new(1, -54, 0, 22),
        Position         = UDim2.new(0, 50, 0, 4),
        BackgroundTransparency = 1,
        Text             = "—",
        TextColor3       = Color3.new(1,1,1),
        Font             = Enum.Font.GothamBold,
        TextSize         = 13,
        TextXAlignment   = Enum.TextXAlignment.Left,
    }, infoBox)

    local idAdm = GUI.novo("TextLabel", {
        Size             = UDim2.new(1, -54, 0, 18),
        Position         = UDim2.new(0, 50, 0, 26),
        BackgroundTransparency = 1,
        Text             = "ID: —",
        TextColor3       = Color3.fromRGB(110, 110, 110),
        Font             = Enum.Font.Gotham,
        TextSize         = 11,
        TextXAlignment   = Enum.TextXAlignment.Left,
    }, infoBox)

    local tagGrid = GUI.novo("Frame", {
        Size            = UDim2.new(1, 0, 0, 76),
        BackgroundTransparency = 1,
        LayoutOrder     = 3,
    }, frame)

    local uiGrid = Instance.new("UIGridLayout")
    uiGrid.CellSize    = UDim2.new(0.33, -4, 0, 32)
    uiGrid.CellPadding = UDim2.new(0, 4, 0, 4)
    uiGrid.SortOrder   = Enum.SortOrder.LayoutOrder
    uiGrid.Parent      = tagGrid

    local btnADD = GUI.botao("APLICAR TAG", frame, 4)
    btnADD.BackgroundColor3 = Color3.fromRGB(0, 150, 75)

    local tagSelecionada = ""
    local alvoAdm        = nil
    local btnSel         = nil

    inputNome:GetPropertyChangedSignal("Text"):Connect(function()
        local p = Util.buscarJogador(inputNome.Text)
        if p then
            alvoAdm = p
            dispAdm.Text = p.DisplayName .. " (@" .. p.Name .. ")"
            idAdm.Text   = "ID: " .. p.UserId
            task.spawn(function()
                local ok, img = pcall(function()
                    return Players:GetUserThumbnailAsync(
                        p.UserId,
                        Enum.ThumbnailType.HeadShot,
                        Enum.ThumbnailSize.Size150x150
                    )
                end)
                if ok then imgAdm.Image = img end
            end)
        end
    end)

    local ordemTags = { "OWNER", "MEOW", "MANAGER", "HELPE", "VIP", "USER" }
    for i, tagNome in ipairs(ordemTags) do
        local cor = CONFIG.TAGS[tagNome]
        local btn = GUI.novo("TextButton", {
            Name             = tagNome,
            BackgroundColor3 = Color3.fromRGB(
                math.floor(cor.R * 200),
                math.floor(cor.G * 200),
                math.floor(cor.B * 200)
            ),
            Text             = tagNome,
            TextColor3       = (tagNome == "HELPE") and Color3.new(0,0,0) or Color3.new(1,1,1),
            Font             = Enum.Font.GothamBold,
            TextSize         = 12,
            BorderSizePixel  = 0,
            LayoutOrder      = i,
            AutoButtonColor  = false,
        }, tagGrid)
        GUI.arredondado(btn, 5)

        btn.MouseButton1Click:Connect(function()
            if btnSel then btnSel.BorderSizePixel = 0 end
            tagSelecionada = tagNome
            btnSel = btn
            btn.BorderSizePixel = 3
            btn.BorderColor3    = Color3.new(1, 1, 1)
        end)
    end

    local function aplicarTagVisual(p, texto, cor)
        if not (p.Character and p.Character:FindFirstChild("Head")) then return end
        for _, o in ipairs(p.Character.Head:GetChildren()) do
            if o.Name == "TagPainel" then o:Destroy() end
        end

        local bill = GUI.novo("BillboardGui", {
            Name        = "TagPainel",
            StudsOffset = Vector3.new(0, 2.4, 0),
            AlwaysOnTop = true,
            MaxDistance = 100,
            Size        = (texto == "USER")
                          and UDim2.new(2.2, 0, 0.7, 0)
                          or  UDim2.new(3.8, 0, 1.1, 0),
        }, p.Character.Head)

        local lbl = GUI.novo("TextLabel", {
            Size                   = UDim2.new(1, 0, 1, 0),
            BackgroundTransparency = 1,
            TextColor3             = cor,
            Font                   = Enum.Font.GothamBold,
            RichText               = true,
            TextScaled             = true,
            Text                   = "<b>" .. texto .. "</b>",
            TextStrokeTransparency = 0.4,
            TextStrokeColor3       = Color3.new(0, 0, 0),
        }, bill)

        if texto == "OWNER" or texto == "MANAGER" or texto == "MEOW" then
            lbl.TextStrokeTransparency = 1
            local grad = GUI.novo("UIGradient", {
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0,    cor),
                    ColorSequenceKeypoint.new(0.45, cor),
                    ColorSequenceKeypoint.new(0.5,  Color3.new(1,1,1)),
                    ColorSequenceKeypoint.new(0.55, cor),
                    ColorSequenceKeypoint.new(1,    cor),
                })
            }, lbl)
            task.spawn(function()
                while lbl and lbl.Parent do
                    grad.Offset = Vector2.new(-1, 0)
                    Util.tween(grad, TweenInfo.new(3.5, Enum.EasingStyle.Linear), {
                        Offset = Vector2.new(1, 0)
                    })
                    task.wait(3.6)
                end
            end)
        end
    end

    local function atualizarAbas(cargo)
        local acesso = (localPlayer.UserId == CONFIG.MEU_ID_DONO)
                    or (cargo == "OWNER")
                    or (cargo == "MANAGER")
        if Abas["ADM"] then Abas["ADM"].btn.Visible = acesso end
    end

    local function enviarTag(pName, cargo, cor)
        pcall(function()
            Util.httpRequest({
                Url     = CONFIG.SERVIDOR .. "/settag",
                Method  = "POST",
                Headers = { ["Content-Type"] = "application/json" },
                Body    = HttpService:JSONEncode({
                    player = pName,
                    cargo  = cargo,
                    cor    = Util.corParaTabela(cor),
                    gameId = CONFIG.GAME_ID,
                }),
            })
        end)
    end

    local function buscarServidor(pName)
        local res = Util.httpRequest({
            Url    = CONFIG.SERVIDOR .. "/gettags?gameId=" .. CONFIG.GAME_ID,
            Method = "GET",
        })
        if not (res and res.Body) then return nil end
        local ok, dados = pcall(HttpService.JSONDecode, HttpService, res.Body)
        return ok and dados[pName] or nil
    end

    btnADD.MouseButton1Click:Connect(function()
        if tagSelecionada == "" or not alvoAdm then return end
        local cor = CONFIG.TAGS[tagSelecionada]
        enviarTag(alvoAdm.Name, tagSelecionada, cor)
        aplicarTagVisual(alvoAdm, tagSelecionada, cor)
        Notif.enviar("SISTEMA", alvoAdm.DisplayName .. " → " .. tagSelecionada, tagSelecionada, 4)
        if alvoAdm == localPlayer then atualizarAbas(tagSelecionada) end
    end)

    task.spawn(function()
        while task.wait(4) do
            pcall(function()
                local res = Util.httpRequest({
                    Url    = CONFIG.SERVIDOR .. "/gettags?gameId=" .. CONFIG.GAME_ID,
                    Method = "GET",
                })
                if not (res and res.Body) then return end
                local ok, dados = pcall(HttpService.JSONDecode, HttpService, res.Body)
                if not ok then return end

                for pName, info in pairs(dados) do
                    local p = Players:FindFirstChild(pName)
                    if p and p.Character then
                        local head = p.Character:FindFirstChild("Head")
                        local tag  = head and head:FindFirstChild("TagPainel")
                        local lbl  = tag and tag:FindFirstChildOfClass("TextLabel")
                        if not lbl or lbl.Text ~= "<b>" .. info.cargo .. "</b>" then
                            aplicarTagVisual(p, info.cargo, Util.tabelaParaCor(info.cor))
                        end
                    end
                end

                local minhaInfo = dados[localPlayer.Name]
                atualizarAbas(minhaInfo and minhaInfo.cargo or "USER")
            end)
        end
    end)

    task.spawn(function()
        task.wait(0.5)
        local inicial   = buscarServidor(localPlayer.Name)
        local cargoInit = (localPlayer.UserId == CONFIG.MEU_ID_DONO and "OWNER")
                       or (inicial and inicial.cargo)
                       or "USER"
        local corInit = CONFIG.TAGS[cargoInit]

        aplicarTagVisual(localPlayer, cargoInit, corInit)
        enviarTag(localPlayer.Name, cargoInit, corInit)
        atualizarAbas(cargoInit)
        Notif.enviar("4E20 PANEL v2.1", "Bem-vindo, " .. localPlayer.DisplayName .. "!", cargoInit, 5)
    end)
end

-- ══════════════════════════════════════
--  INICIALIZAR
-- ══════════════════════════════════════
conectarAbas()
ativarAba("HOME")

-- ADM oculta por padrão; o sistema de cargo revela conforme necessário
if Abas["ADM"] then Abas["ADM"].btn.Visible = false end
