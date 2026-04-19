--[[
    4e20 Panel v1.0.0 - CLIENT SOURCE
    Layout: Captura de Tela (1010).jpg
]]

local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local VirtualUser = game:GetService("VirtualUser")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

-- 🎨 CONFIGURAÇÕES DE DESIGN
local C = {
    MainBG = Color3.fromRGB(36, 36, 36),       
    SidebarBG = Color3.fromRGB(58, 58, 58),    
    BtnOff = Color3.fromRGB(200, 50, 50),
    BtnOn = Color3.fromRGB(50, 200, 50),
    Text = Color3.fromRGB(255, 255, 255),
    NeonTags = {
        OWNER = {Color = Color3.fromRGB(255, 0, 0), Neon = true},
        SUPERVISOR = {Color = Color3.fromRGB(255, 120, 0), Neon = true},
        GERENTE = {Color = Color3.fromRGB(255, 200, 0), Neon = true},
        STAFF = {Color = Color3.fromRGB(0, 255, 255), Neon = true},
        HELP = {Color = Color3.fromRGB(0, 255, 120), Neon = false},
        USER = {Color = Color3.fromRGB(255, 255, 255), Neon = false}
    }
}

-- Variáveis de Estado
_G.Tags = _G.Tags or {[LocalPlayer.UserId] = "OWNER"}
_G.UsersOnline = _G.UsersOnline or {[LocalPlayer.UserId] = true} 
local SelectedTag = "USER"

-- 🏷️ SISTEMA DE TAGS E NOTIFICAÇÕES
local function Notify(msg)
    local gui = LocalPlayer.PlayerGui:FindFirstChild("4e20PanelGUI")
    if not gui then return end
    local nFrame = Instance.new("Frame", gui)
    nFrame.Size = UDim2.new(0, 280, 0, 60); nFrame.Position = UDim2.new(1, 10, 0.8, 0)
    nFrame.BackgroundColor3 = C.MainBG; nFrame.BorderSizePixel = 0
    Instance.new("UIStroke", nFrame).Color = Color3.fromRGB(50, 150, 255)
    
    local t = Instance.new("TextLabel", nFrame)
    t.Size = UDim2.new(1, -20, 1, 0); t.Position = UDim2.new(0, 10, 0, 0)
    t.Text = msg; t.TextColor3 = C.Text; t.Font = Enum.Font.GothamBold; t.TextSize = 12; t.BackgroundTransparency = 1; t.TextWrapped = true
    
    nFrame:TweenPosition(UDim2.new(1, -290, 0.8, 0), "Out", "Quad", 0.5)
    task.delay(4, function() 
        nFrame:TweenPosition(UDim2.new(1, 10, 0.8, 0), "In", "Quad", 0.5)
        task.wait(0.5); nFrame:Destroy()
    end)
end

local function UpdateHeadTag(player)
    if not _G.UsersOnline[player.UserId] then return end -- Só mostra se estiver com painel ativo
    
    local char = player.Character or player.CharacterAdded:Wait()
    local head = char:WaitForChild("Head", 5)
    if not head then return end
    if head:FindFirstChild("4e20_Tag") then head["4e20_Tag"]:Destroy() end

    local role = _G.Tags[player.UserId] or "USER"
    local info = C.NeonTags[role] or C.NeonTags["USER"]
    
    local bgui = Instance.new("BillboardGui", head)
    bgui.Name = "4e20_Tag"; bgui.Size = UDim2.new(0, 180, 0, 50); bgui.StudsOffset = Vector3.new(0, 3.5, 0); bgui.AlwaysOnTop = true

    local txt = Instance.new("TextLabel", bgui)
    txt.Size = UDim2.new(1, 0, 1, 0); txt.BackgroundTransparency = 1; txt.Text = role == "USER" and "4e20 User" or role
    txt.Font = Enum.Font.GothamBlack; txt.TextSize = 22; txt.TextColor3 = info.Color
    
    if info.Neon then
        local st = Instance.new("UIStroke", txt); st.Color = info.Color; st.Thickness = 4
        local grad = Instance.new("UIGradient", st)
        grad.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, info.Color), 
            ColorSequenceKeypoint.new(0.5, Color3.new(1,1,1)), 
            ColorSequenceKeypoint.new(1, info.Color)
        })
        task.spawn(function()
            while txt.Parent do
                local tw = TweenService:Create(grad, TweenInfo.new(1.2, Enum.EasingStyle.Linear), {Offset = Vector2.new(1, 0)})
                tw:Play(); tw.Completed:Wait(); grad.Offset = Vector2.new(-1, 0)
            end
        end)
    else
        local st = Instance.new("UIStroke", txt); st.Color = Color3.new(0,0,0); st.Thickness = 1.5; st.Transparency = 0.5
    end
end

-- 🖼️ INTERFACE PRINCIPAL
local ScreenGui = Instance.new("ScreenGui", LocalPlayer.PlayerGui); ScreenGui.Name = "4e20PanelGUI"; ScreenGui.ResetOnSpawn = false
local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 550, 0, 400); Main.Position = UDim2.new(0.5, -275, 0.5, -200)
Main.BackgroundColor3 = C.MainBG; Main.BorderSizePixel = 0; Main.Active = true; Main.Draggable = true
Instance.new("UIStroke", Main).Color = Color3.fromRGB(50, 100, 200)

local Sidebar = Instance.new("Frame", Main); Sidebar.Size = UDim2.new(0, 120, 1, 0); Sidebar.BackgroundColor3 = C.SidebarBG; Sidebar.BorderSizePixel = 0
local Content = Instance.new("Frame", Main); Content.Size = UDim2.new(1, -120, 1, 0); Content.Position = UDim2.new(0, 120, 0, 0); Content.BackgroundTransparency = 1

local Title = Instance.new("TextLabel", Main); Title.Text = "4e20 Panel"; Title.Font = Enum.Font.GothamBold; Title.TextSize = 32
Title.Size = UDim2.new(0, 200, 0, 40); Title.Position = UDim2.new(1, -210, 1, -50); Title.BackgroundTransparency = 1; Title.TextColor3 = C.Text; Title.TextXAlignment = "Right"

-- 🏠 HOME
local P_Home = Instance.new("Frame", Content); P_Home.Size = UDim2.new(1,0,1,0); P_Home.BackgroundTransparency = 1; P_Home.Visible = false
local HomeTxt = Instance.new("TextLabel", P_Home); HomeTxt.Size = UDim2.new(1,-20,1,-20); HomeTxt.Position = UDim2.new(0,10,0,10); HomeTxt.BackgroundTransparency = 1; HomeTxt.TextColor3 = C.Text; HomeTxt.Font = Enum.Font.Gotham; HomeTxt.TextSize = 14; HomeTxt.TextXAlignment = "Left"; HomeTxt.TextYAlignment = "Top"

-- 🎯 TARGET
local P_Target = Instance.new("Frame", Content); P_Target.Size = UDim2.new(1,0,1,0); P_Target.BackgroundTransparency = 1; P_Target.Visible = false
local TgtBox = Instance.new("TextBox", P_Target); TgtBox.Size = UDim2.new(0, 180, 0, 30); TgtBox.Position = UDim2.new(0,10,0,10); TgtBox.PlaceholderText = "@username..."; TgtBox.BackgroundColor3 = C.SidebarBG; TgtBox.TextColor3 = C.Text
local TgtImg = Instance.new("ImageLabel", P_Target); TgtImg.Size = UDim2.new(0, 70, 0, 70); TgtImg.Position = UDim2.new(0, 200, 0, 10); TgtImg.BackgroundColor3 = C.SidebarBG
local TgtInfo = Instance.new("TextLabel", P_Target); TgtInfo.Size = UDim2.new(1, -20, 0, 50); TgtInfo.Position = UDim2.new(0, 10, 0, 90); TgtInfo.TextColor3 = C.Text; TgtInfo.BackgroundTransparency = 1; TgtInfo.TextXAlignment = "Left"; TgtInfo.TextSize = 12

local function CreateGrid(parent)
    local f = Instance.new("Frame", parent); f.Size = UDim2.new(1, -20, 0, 200); f.Position = UDim2.new(0,10,0,150); f.BackgroundTransparency = 1
    local g = Instance.new("UIGridLayout", f); g.CellSize = UDim2.new(0, 95, 0, 30); g.CellPadding = UDim2.new(0,5,0,5)
    return f
end

local function MakeBtn(parent, name, cb)
    local b = Instance.new("TextButton", parent); b.BackgroundColor3 = C.BtnOff; b.Text = name .. " [+]"; b.TextColor3 = C.Text; b.Font = "GothamBold"; b.TextSize = 10
    local act = false
    b.MouseButton1Click:Connect(function()
        act = not act
        b.BackgroundColor3 = act and C.BtnOn or C.BtnOff
        b.Text = name .. (act and " [-]" or " [+]")
        cb(act)
    end)
end

TgtBox.FocusLost:Connect(function()
    local p = Players:FindFirstChild(TgtBox.Text)
    if p then
        TgtImg.Image = "rbxthumb://type=AvatarHeadShot&id="..p.UserId.."&w=150&h=150"
        TgtInfo.Text = "USER ID: "..p.UserId.."\nDISPLAY: "..p.DisplayName.."\nCRIADO EM: "..p.AccountAge.." DIAS"
    end
end)

local TGrid = CreateGrid(P_Target)
MakeBtn(TGrid, "VIEW", function(on) if on then Camera.CameraSubject = Players[TgtBox.Text].Character.Humanoid else Camera.CameraSubject = LocalPlayer.Character.Humanoid end end)
MakeBtn(TGrid, "COPY ID", function() setclipboard(tostring(Players[TgtBox.Text].UserId)) end)
MakeBtn(TGrid, "BANG", function() end); MakeBtn(TGrid, "FOLLOW", function() end); MakeBtn(TGrid, "STAND", function() end)

-- 🌀 MISC (Anti-AFK, Flashback, Click TP)
local P_Misc = Instance.new("Frame", Content); P_Misc.Size = UDim2.new(1,0,1,0); P_Misc.BackgroundTransparency = 1; P_Misc.Visible = false
local MGrid = CreateGrid(P_Misc); MGrid.Position = UDim2.new(0,10,0,10)

MakeBtn(MGrid, "ANTI-AFK", function(on)
    if on then _G.AFK = LocalPlayer.Idled:Connect(function() VirtualUser:Button2Down(Vector2.new(0,0), Camera.CFrame); task.wait(1); VirtualUser:Button2Up(Vector2.new(0,0), Camera.CFrame) end)
    else if _G.AFK then _G.AFK:Disconnect() end end
end)

_G.ClickTP = false
MakeBtn(MGrid, "CLICK TP", function(on) _G.ClickTP = on end)
UIS.InputBegan:Connect(function(i, g)
    if not g and _G.ClickTP and i.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(LocalPlayer:GetMouse().Hit.p + Vector3.new(0,3,0))
    end
end)

_G.Flash = false; local History = {}
MakeBtn(MGrid, "FLASHBACK", function(on) _G.Flash = on end)

-- 🛡️ ADM
local P_Adm = Instance.new("Frame", Content); P_Adm.Size = UDim2.new(1,0,1,0); P_Adm.BackgroundTransparency = 1; P_Adm.Visible = false
local AdmInput = Instance.new("TextBox", P_Adm); AdmInput.Size = UDim2.new(0, 200, 0, 30); AdmInput.Position = UDim2.new(0,10,0,10); AdmInput.PlaceholderText = "@username..."; AdmInput.BackgroundColor3 = C.SidebarBG; AdmInput.TextColor3 = C.Text

local TagPanel = Instance.new("Frame", P_Adm); TagPanel.Position = UDim2.new(0,10,0,50); TagPanel.Size = UDim2.new(1,-20,0,120); TagPanel.BackgroundTransparency = 1
local TG = Instance.new("UIGridLayout", TagPanel); TG.CellSize = UDim2.new(0, 100, 0, 30)

for tag, info in pairs(C.NeonTags) do
    local tb = Instance.new("TextButton", TagPanel); tb.Text = tag; tb.BackgroundColor3 = C.SidebarBG; tb.TextColor3 = info.Color; tb.Font = "GothamBold"
    tb.MouseButton1Click:Connect(function() SelectedTag = tag end)
end

local AddTag = Instance.new("TextButton", P_Adm); AddTag.Size = UDim2.new(0, 150, 0, 35); AddTag.Position = UDim2.new(0,10,0,180); AddTag.Text = "ADD / REMOVE TAG"; AddTag.BackgroundColor3 = C.BtnOn; AddTag.TextColor3 = C.Text
AddTag.MouseButton1Click:Connect(function()
    local p = Players:FindFirstChild(AdmInput.Text) or LocalPlayer
    _G.Tags[p.UserId] = SelectedTag
    UpdateHeadTag(p)
    Notify("Sua tag foi trocada para **" .. SelectedTag .. "**! Parabéns!")
end)

-- ⚙️ LOOPS E TECLAS
RunService.Heartbeat:Connect(function()
    HomeTxt.Text = "Olá "..LocalPlayer.Name.."!\nBem-vindo ao Panel da 4e20\nTeclas: [ B ] Abre/Fecha\nPainel Suave: Arraste para qualquer lugar!\n\nJOGADORES ONLINE: "..#Players:GetPlayers().."\nDATA: "..os.date("%d/%m/%Y")
    
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        if _G.Flash and UIS:IsKeyDown(Enum.KeyCode.V) then
            if #History > 1 then
                LocalPlayer.Character.HumanoidRootPart.CFrame = History[1]; table.remove(History, 1)
                LocalPlayer.Character.Humanoid:Move(Vector3.new(0,0,-1), true)
            end
        else
            table.insert(History, 1, LocalPlayer.Character.HumanoidRootPart.CFrame)
            if #History > 500 then table.remove(History) end
        end
    end
    for _, p in pairs(Players:GetPlayers()) do UpdateHeadTag(p) end
end)

local Pages = {HOME = P_Home, TARGET = P_Target, MISC = P_Misc, ADM = P_Adm}
local function OpenPage(name)
    if name == "ADM" then
        local role = _G.Tags[LocalPlayer.UserId] or "USER"
        if role ~= "OWNER" and role ~= "SUPERVISOR" then return end
    end
    for n, p in pairs(Pages) do p.Visible = (n == name) end
end

local btnCount = 0
for name, _ in pairs(Pages) do
    btnCount = btnCount + 1
    local b = Instance.new("TextButton", Sidebar); b.Size = UDim2.new(1, 0, 0, 45); b.Position = UDim2.new(0,0,0, 45*(btnCount-1))
    b.Text = name; b.BackgroundColor3 = C.SidebarBG; b.TextColor3 = C.Text; b.Font = "GothamBold"
    b.MouseButton1Click:Connect(function() OpenPage(name) end)
end

UIS.InputBegan:Connect(function(i, g) if not g and i.KeyCode == Enum.KeyCode.B then Main.Visible = not Main.Visible end end)
OpenPage("HOME"); UpdateHeadTag(LocalPlayer)
