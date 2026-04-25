-- ============================================================
--  4E20 PANEL - LocalScript Unificado v2.2
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
-- Estrutura: TextBox, BAN (btn), DESBANIDO (btn), ImageLabel > UICorner, BANIMENTO, BANIDO, disponivel, DESBANIDO (label), USERID
local banTextBox      = banTela:WaitForChild("TextBox")
local banBtn          = banTela:WaitForChild("BAN")
local desbanBtn       = banTela:WaitForChild("DESBANIDO")
local banImgLabel     = banTela:WaitForChild("ImageLabel")
local banNomeLabel    = banTela:WaitForChild("BANIDO")        -- TextLabel nome do player
local banStatusLabel  = banTela:WaitForChild("disponivel")   -- TextLabel status (DISPONÍVEL / BANIDO / DESBANIDO)
local banUserIdLabel  = banTela:WaitForChild("USERID")        -- TextLabel ID

-- StaffTela8
-- Estrutura: teleportuser (TextLabel título), ScrollingFrame > UIListLayout + user (template btn), TextLabel
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
local spectandoPlayer     = nil -- player que estou spectando agora

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
-- ============================================================
local function aplicarTagVisual(p, texto, cor)
    if not playersComPainel[p.UserId] and p ~= localPlayer then return end
    if not (p.Character and p.Character:FindFirstChild("Head")) then return end

    for _, o in pairs(p.Character.Head:GetChildren()) do
        if o.Name == "TagPainel" then o:Destroy() end
    end
    if texto == "USER" then return end

    local bill = Instance.new("BillboardGui", p.Character.Head)
    bill.Name = "TagPainel"
    bill.StudsOffset = Vector3.new(0, 2.2, 0)
    bill.AlwaysOnTop = true
    bill.MaxDistance = 100
    bill.Size = UDim2.new(2.8, 0, 0.75, 0)

    local label = Instance.new("TextLabel", bill)
    label.Size = UDim2.new(1, 0, 1, 0)
    label.BackgroundTransparency = 1
    label.TextColor3 = cor
    label.Font = Enum.Font.GothamBold
    label.RichText = true
    label.TextScaled = true
    label.Text = "<b>"..texto.."</b>"

    if texto == "OWNER" or texto == "MANAGER" or texto == "MEOW" then
        label.TextStrokeTransparency = 1
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
    else
        label.TextStrokeTransparency = 0.3
        label.TextStrokeColor3 = Color3.new(0,0,0)
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
    btnOwner.Visible = (localPlayer.UserId == MEU_ID_DONO) or (tagsOwnerAcesso[cargo] == true)
    btnStaff.Visible = (localPlayer.UserId == MEU_ID_DONO) or (tagsStaffAcesso[cargo] == true)
    btnBan.Visible   = (localPlayer.UserId == MEU_ID_DONO) or (tagsBanAcesso[cargo]   == true)
    if btnVip then
        btnVip.Visible = (localPlayer.UserId == MEU_ID_DONO) or (tagsVipAcesso[cargo] == true)
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
-- [[ 14. SISTEMA DE BAN (BanTela9) - CORRIGIDO ]]
-- Status: DISPONÍVEL (verde) / BANIDO (vermelho) / DESBANIDO (verde)
-- ============================================================
local banAlvoId      = nil
local banAlvoDisplay = nil
local ultimoStatusBan = ""  -- guarda ultimo status checado

local function atualizarStatusBan(userId)
    -- Verifica no backend se está banido
    task.spawn(function()
        local banido = checarBan(userId)
        if banido then
            ultimoStatusBan = "BANIDO"
            banStatusLabel.Text      = "⛔ BANIDO"
            banStatusLabel.TextColor3= Color3.fromRGB(255, 50, 50)
        else
            ultimoStatusBan = "DISPONIVEL"
            banStatusLabel.Text      = "✅ DISPONÍVEL"
            banStatusLabel.TextColor3= Color3.fromRGB(50, 255, 100)
        end
    end)
end

banTextBox:GetPropertyChangedSignal("Text"):Connect(function()
    local d = banTextBox.Text:lower()
    banAlvoId = nil
    ultimoStatusBan = ""

    if d == "" then
        banImgLabel.Image    = IMAGEM_PADRAO
        banNomeLabel.Text    = "BANIDO!"
        banStatusLabel.Text  = "STATUS"
        banStatusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
        banUserIdLabel.Text  = "ID: 00000000"
        return
    end

    for _, p in pairs(Players:GetPlayers()) do
        if p.Name:lower():find(d, 1, true) or p.DisplayName:lower():find(d, 1, true) then
            banAlvoId      = p.UserId
            banAlvoDisplay = p.DisplayName

            banNomeLabel.Text   = p.DisplayName
            banUserIdLabel.Text = "ID: "..p.UserId
            banStatusLabel.Text = "Verificando..."
            banStatusLabel.TextColor3 = Color3.fromRGB(255, 220, 50)

            local ok, img = pcall(function()
                return Players:GetUserThumbnailAsync(p.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
            end)
            banImgLabel.Image = ok and img or IMAGEM_PADRAO

            -- Checa status de ban no backend
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

    -- Atualiza label imediatamente
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

    -- Atualiza label imediatamente
    banStatusLabel.Text       = "✅ DISPONÍVEL"
    banStatusLabel.TextColor3 = Color3.fromRGB(50, 255, 100)
    ultimoStatusBan = "DISPONIVEL"

    notificar("DESBAN", banAlvoDisplay.." foi DESBANIDO!", 5, "VIP 4E20")
    banAlvoId = nil
    banTextBox.Text = ""
end)

-- ============================================================
-- [[ 15. STAFF - LISTA SÓ COM PAINEL ATIVO + SPECTAR ]]
-- Mostra: nome, tag, hora que executou o painel
-- Clica pra espectar, clica dnv pra sair
-- ============================================================
local function formatarHora(timestamp)
    -- timestamp em segundos (os.time())
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
    -- Limpa botões antigos
    for _, b in pairs(botoesStaff) do
        if b and b.Parent then b:Destroy() end
    end
    botoesStaff = {}

    local i = 0
    for userId, info in pairs(playersComPainel) do
        -- Só mostra players que estão no servidor
        local p = nil
        for _, pl in pairs(Players:GetPlayers()) do
            if pl.UserId == userId then p = pl break end
        end
        if not p then continue end

        i = i + 1
        local cargo    = info.cargo or "USER"
        local horaExec = info.horaExec or 0
        local corTag   = configuracaoTags[cargo] or Color3.fromRGB(255,255,255)

        -- Frame container do botão
        local frame = Instance.new("Frame")
        frame.Name             = p.Name
        frame.Size             = UDim2.new(1, -10, 0, 50)
        frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        frame.BorderSizePixel  = 0
        frame.Parent           = staffScroll
        Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)

        -- Borda colorida na esquerda (cor da tag)
        local borda = Instance.new("Frame", frame)
        borda.Size             = UDim2.new(0, 4, 1, 0)
        borda.BackgroundColor3 = corTag
        borda.BorderSizePixel  = 0
        Instance.new("UICorner", borda).CornerRadius = UDim.new(0, 4)

        -- Nome do player
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

        -- Tag do player
        local lblTag = Instance.new("TextLabel", frame)
        lblTag.Size               = UDim2.new(0, 80, 0, 16)
        lblTag.Position           = UDim2.new(0, 12, 0, 28)
        lblTag.BackgroundTransparency = 1
        lblTag.Text               = "["..cargo.."]"
        lblTag.TextColor3         = corTag
        lblTag.Font               = Enum.Font.GothamBold
        lblTag.TextSize           = 11
        lblTag.TextXAlignment     = Enum.TextXAlignment.Left

        -- Hora que executou
        local lblHora = Instance.new("TextLabel", frame)
        lblHora.Size               = UDim2.new(0, 80, 0, 16)
        lblHora.Position           = UDim2.new(1, -90, 0, 28)
        lblHora.BackgroundTransparency = 1
        lblHora.Text               = "🕐 "..formatarHora(horaExec)
        lblHora.TextColor3         = Color3.fromRGB(160, 160, 160)
        lblHora.Font               = Enum.Font.Gotham
        lblHora.TextSize           = 10
        lblHora.TextXAlignment     = Enum.TextXAlignment.Right

        -- Botão invisível por cima (pra capturar o clique)
        local btn = Instance.new("TextButton", frame)
        btn.Size               = UDim2.new(1, 0, 1, 0)
        btn.BackgroundTransparency = 1
        btn.Text               = ""
        btn.ZIndex             = 5

        -- Clique: especta / sai do espect
        btn.MouseButton1Click:Connect(function()
            if spectandoPlayer == p then
                -- Já está spectando esse player → sai
                sairDoSpect()
                frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
            else
                -- Começa a espectar
                sairDoSpect() -- sai do anterior se houver
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

    -- Atualiza canvas
    staffScroll.CanvasSize = UDim2.new(0, 0, 0, i * 58 + 10)

    -- Se não tem ninguém com painel ativo
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
        if not playersComPainel[p.UserId] and p ~= localPlayer then return end
        local dados = buscarTodosCargos()
        if dados and dados[p.Name] then
            local info = dados[p.Name]
            aplicarTagVisual(p, info.cargo, tabelaParaCor(info.cor))
            if p == localPlayer then atualizarAbas(info.cargo) end
        end
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
                horaExec = os.time()
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

            -- Aplica tags visuais
            if dados then
                for pName, info in pairs(dados) do
                    local p = Players:FindFirstChild(pName)
                    if p and playersComPainel[p.UserId] then
                        if p.Character and p.Character:FindFirstChild("Head") then
                            local tag = p.Character.Head:FindFirstChild("TagPainel")
                            local lbl = tag and tag:FindFirstChildOfClass("TextLabel")
                            if not lbl or lbl.Text ~= "<b>"..info.cargo.."</b>" then
                                aplicarTagVisual(p, info.cargo, tabelaParaCor(info.cor))
                            end
                        end
                    else
                        if p then removerTagVisual(p) end
                    end
                end

                -- Atualiza cargo local
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
    aplicarTagVisual(localPlayer, cargoInit, configuracaoTags[cargoInit])
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
    aplicarTagVisual(localPlayer, cargoInit, corInit)
    atualizarAbas(cargoInit)

    notificar("4E20 PANEL", "PAINEL ATIVO — CARGO: "..cargoInit, 5, cargoInit)
    conectarRespawn(localPlayer)
    abrirTela(homeTela)
end)
