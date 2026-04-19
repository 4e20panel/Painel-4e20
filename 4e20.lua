--[[
    4e20 Panel v1.0.0
    Layout: Fiel à imagem [Captura de Tela (1010).jpg]
    Desenvolvedor: Felipe de Souza Gomes
]]

local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local VirtualUser = game:GetService("VirtualUser")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

-- ══════════════════════════════
-- 🎨 CONFIGURAÇÕES E CORES
-- ══════════════════════════════
local C = {
	MainBG = Color3.fromRGB(36, 36, 36),       
	SidebarBG = Color3.fromRGB(58, 58, 58),    
	BtnOff = Color3.fromRGB(200, 50, 50), -- Vermelho Desativado
	BtnOn = Color3.fromRGB(50, 200, 50),  -- Verde Ativado
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

_G.Tags = _G.Tags or {[LocalPlayer.UserId] = "OWNER"}
_G.HasPanel = _G.HasPanel or {[LocalPlayer.UserId] = true} -- Simula quem executou o script
local SelectedTag = "USER"

-- ══════════════════════════════
-- 🏷️ SISTEMA DE TAGS E NOTIFICAÇÕES
-- ══════════════════════════════
local function Notify(msg)
	local nFrame = Instance.new("Frame", LocalPlayer.PlayerGui:FindFirstChild("4e20PanelGUI"))
	nFrame.Size = UDim2.new(0, 250, 0, 50); nFrame.Position = UDim2.new(1, 10, 0.8, 0)
	nFrame.BackgroundColor3 = C.MainBG; nFrame.BorderSizePixel = 0
	Instance.new("UIStroke", nFrame).Color = Color3.fromRGB(50, 150, 255)

	local t = Instance.new("TextLabel", nFrame)
	t.Size = UDim2.new(1, -10, 1, 0); t.Position = UDim2.new(0, 5, 0, 0)
	t.Text = msg; t.TextColor3 = C.Text; t.Font = Enum.Font.GothamBold; t.TextSize = 12; t.BackgroundTransparency = 1

	nFrame:TweenPosition(UDim2.new(1, -260, 0.8, 0), "Out", "Quad", 0.5)
	task.delay(3, function() 
		nFrame:TweenPosition(UDim2.new(1, 10, 0.8, 0), "In", "Quad", 0.5)
		task.wait(0.5); nFrame:Destroy()
	end)
end

local function UpdateHeadTag(player)
	if not _G.HasPanel[player.UserId] then return end -- SÓ MOSTRA SE EXECUTOU O PAINEL

	local char = player.Character or player.CharacterAdded:Wait()
	local head = char:WaitForChild("Head")
	if head:FindFirstChild("4e20_Tag") then head["4e20_Tag"]:Destroy() end

	local role = _G.Tags[player.UserId] or "USER"
	local info = C.NeonTags[role]

	local bgui = Instance.new("BillboardGui", head)
	bgui.Name = "4e20_Tag"; bgui.Size = UDim2.new(0, 150, 0, 40); bgui.StudsOffset = Vector3.new(0, 3, 0); bgui.AlwaysOnTop = true

	local txt = Instance.new("TextLabel", bgui)
	txt.Size = UDim2.new(1, 0, 1, 0); txt.BackgroundTransparency = 1; txt.Text = role
	txt.Font = Enum.Font.GothamBlack; txt.TextSize = 18; txt.TextColor3 = info.Color

	if info.Neon then
		local st = Instance.new("UIStroke", txt); st.Color = info.Color; st.Thickness = 3
		local grad = Instance.new("UIGradient", st)
		grad.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, info.Color), ColorSequenceKeypoint.new(0.5, Color3.new(1,1,1)), ColorSequenceKeypoint.new(1, info.Color)})
		task.spawn(function()
			while txt.Parent do
				TweenService:Create(grad, TweenInfo.new(1, Enum.EasingStyle.Linear), {Offset = Vector2.new(1, 0)}):Play()
				task.wait(1)
				grad.Offset = Vector2.new(-1, 0)
			end
		end)
	end
end

-- ══════════════════════════════
-- 🖼️ INTERFACE PRINCIPAL
-- ══════════════════════════════
local ScreenGui = Instance.new("ScreenGui", LocalPlayer.PlayerGui); ScreenGui.Name = "4e20PanelGUI"
local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 550, 0, 400); Main.Position = UDim2.new(0.5, -275, 0.5, -200)
Main.BackgroundColor3 = C.MainBG; Main.BorderSizePixel = 0; Main.Active = true; Main.Draggable = true
Instance.new("UIStroke", Main).Color = Color3.fromRGB(50, 100, 200)

-- Sidebar e Conteúdo
local Sidebar = Instance.new("Frame", Main); Sidebar.Size = UDim2.new(0, 120, 1, 0); Sidebar.BackgroundColor3 = C.SidebarBG; Sidebar.BorderSizePixel = 0
local Content = Instance.new("Frame", Main); Content.Size = UDim2.new(1, -120, 1, 0); Content.Position = UDim2.new(0, 120, 0, 0); Content.BackgroundTransparency = 1

local Title = Instance.new("TextLabel", Main); Title.Text = "4e20 Panel"; Title.Font = Enum.Font.GothamBold; Title.TextSize = 30
Title.Size = UDim2.new(0, 200, 0, 40); Title.Position = UDim2.new(1, -210, 1, -50); Title.BackgroundTransparency = 1; Title.TextColor3 = C.Text

local Version = Instance.new("TextLabel", Main); Version.Text = "v1.0.0"; Version.Position = UDim2.new(1, -60, 1, -15); Version.TextSize = 10; Version.TextColor3 = Color3.fromRGB(100,100,100); Version.BackgroundTransparency = 1

-- 🏠 HOME
local P_Home = Instance.new("Frame", Content); P_Home.Size = UDim2.new(1,0,1,0); P_Home.Visible = false; P_Home.BackgroundTransparency = 1
local HomeTxt = Instance.new("TextLabel", P_Home); HomeTxt.Size = UDim2.new(1,0,0,100); HomeTxt.BackgroundTransparency = 1; HomeTxt.TextColor3 = C.Text; HomeTxt.Font = Enum.Font.Gotham
HomeTxt.Text = "Olá "..LocalPlayer.Name.."!\nBem-vindo ao Panel da 4e20\nTeclas: [ B ] Abre/Fecha\nArraste o painel com o mouse!"

-- 🎯 TARGET
local P_Target = Instance.new("Frame", Content); P_Target.Size = UDim2.new(1,0,1,0); P_Target.Visible = false; P_Target.BackgroundTransparency = 1
local TgtBox = Instance.new("TextBox", P_Target); TgtBox.Size = UDim2.new(0, 200, 0, 30); TgtBox.PlaceholderText = "@username..."; TgtBox.BackgroundColor3 = C.SidebarBG; TgtBox.TextColor3 = C.Text
local TgtImg = Instance.new("ImageLabel", P_Target); TgtImg.Size = UDim2.new(0, 60, 0, 60); TgtImg.Position = UDim2.new(0, 210, 0, 0); TgtImg.BackgroundColor3 = C.SidebarBG
local TgtInfo = Instance.new("TextLabel", P_Target); TgtInfo.Size = UDim2.new(1, 0, 0, 40); TgtInfo.Position = UDim2.new(0, 0, 0, 40); TgtInfo.TextColor3 = C.Text; TgtInfo.BackgroundTransparency = 1; TgtInfo.TextXAlignment = "Left"

local function MakeBtn(parent, name, pos, cb)
	local b = Instance.new("TextButton", parent); b.Size = UDim2.new(0, 80, 0, 25); b.Position = pos; b.BackgroundColor3 = C.BtnOff
	b.Text = name .. " [+]"; b.TextColor3 = C.Text; b.Font = Enum.Font.GothamBold; b.TextSize = 10
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
		TgtInfo.Text = "ID: "..p.UserId.."\nDisplay: "..p.DisplayName.."\nCriado em: "..p.AccountAge.." dias"
	end
end)

local TGrid = Instance.new("UIGridLayout", P_Target); TGrid.CellSize = UDim2.new(0, 90, 0, 30); TGrid.Parent = Instance.new("Frame", P_Target)
TGrid.Parent.Position = UDim2.new(0,0,0,100); TGrid.Parent.Size = UDim2.new(1,0,0,200); TGrid.Parent.BackgroundTransparency = 1

MakeBtn(TGrid.Parent, "VIEW", UDim2.new(), function(on) if on then Camera.CameraSubject = Players[TgtBox.Text].Character.Humanoid else Camera.CameraSubject = LocalPlayer.Character.Humanoid end end)
MakeBtn(TGrid.Parent, "COPY ID", UDim2.new(), function() setclipboard(tostring(Players[TgtBox.Text].UserId)) end)
MakeBtn(TGrid.Parent, "FOLLOW", UDim2.new(), function(on) _G.Follow = on end)
MakeBtn(TGrid.Parent, "BANG", UDim2.new(), function() end)

-- 🌀 MISC (Anti-AFK, Click TP, Flashback)
local P_Misc = Instance.new("Frame", Content); P_Misc.Size = UDim2.new(1,0,1,0); P_Misc.Visible = false; P_Misc.BackgroundTransparency = 1
MakeBtn(P_Misc, "ANTI-AFK", UDim2.new(0,10,0,10), function(on)
	if on then _G.AFK = LocalPlayer.Idled:Connect(function() VirtualUser:CaptureController(); VirtualUser:ClickButton2(Vector2.new()) end)
	else if _G.AFK then _G.AFK:Disconnect() end end
end)

_G.ClickTP = false
MakeBtn(P_Misc, "CLICK TP", UDim2.new(0,10,0,45), function(on) _G.ClickTP = on end)
UIS.InputBegan:Connect(function(i, g)
	if not g and _G.ClickTP and i.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
		LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(LocalPlayer:GetMouse().Hit.p + Vector3.new(0,3,0))
	end
end)

_G.Flash = false
local History = {}
MakeBtn(P_Misc, "FLASHBACK", UDim2.new(0,10,0,80), function(on) _G.Flash = on end)

RunService.Heartbeat:Connect(function()
	if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
		if _G.Flash and UIS:IsKeyDown(Enum.KeyCode.V) then
			if #History > 1 then
				LocalPlayer.Character.HumanoidRootPart.CFrame = History[1]
				table.remove(History, 1)
				LocalPlayer.Character.Humanoid:Move(Vector3.new(0,0,-1), true) -- Animação de andar
			end
		else
			table.insert(History, 1, LocalPlayer.Character.HumanoidRootPart.CFrame)
			if #History > 400 then table.remove(History) end
		end
	end
end)

-- 🛡️ ADM
local P_Adm = Instance.new("Frame", Content); P_Adm.Size = UDim2.new(1,0,1,0); P_Adm.Visible = false; P_Adm.BackgroundTransparency = 1
local AdmInput = Instance.new("TextBox", P_Adm); AdmInput.Size = UDim2.new(0, 200, 0, 30); AdmInput.PlaceholderText = "@nick do player"; AdmInput.BackgroundColor3 = C.SidebarBG; AdmInput.TextColor3 = C.Text

local TagList = Instance.new("Frame", P_Adm); TagList.Position = UDim2.new(0,0,0,40); TagList.Size = UDim2.new(1,0,0,100); TagList.BackgroundTransparency = 1
local TG = Instance.new("UIGridLayout", TagList); TG.CellSize = UDim2.new(0, 100, 0, 30)

for tag, _ in pairs(C.NeonTags) do
	local tb = Instance.new("TextButton", TagList); tb.Text = tag; tb.BackgroundColor3 = C.SidebarBG; tb.TextColor3 = C.Text
	tb.MouseButton1Click:Connect(function() SelectedTag = tag end)
end

local AddBtn = Instance.new("TextButton", P_Adm); AddBtn.Size = UDim2.new(0, 150, 0, 30); AddBtn.Position = UDim2.new(0,0,0,150); AddBtn.Text = "ADD / MUDAR TAG"; AddBtn.BackgroundColor3 = C.BtnOn
AddBtn.MouseButton1Click:Connect(function()
	local p = Players:FindFirstChild(AdmInput.Text) or LocalPlayer
	_G.Tags[p.UserId] = SelectedTag
	UpdateHeadTag(p)
	Notify("Sua tag foi trocada para "..SelectedTag.."! Parabéns!")
end)

-- ══════════════════════════════
-- 📑 LÓGICA DE ABAS E TECLAS
-- ══════════════════════════════
local Pages = {HOME = P_Home, TARGET = P_Target, MISC = P_Misc, ADM = P_Adm}
local function OpenPage(name)
	if name == "ADM" then
		local role = _G.Tags[LocalPlayer.UserId] or "USER"
		if role ~= "OWNER" and role ~= "SUPERVISOR" then return end -- TRAVA ADM
	end
	for n, p in pairs(Pages) do p.Visible = (n == name) end
end

local count = 0
for name, _ in pairs(Pages) do
	count = count + 1
	local b = Instance.new("TextButton", Sidebar); b.Size = UDim2.new(1, 0, 0, 40); b.Position = UDim2.new(0,0,0, 40*(count-1))
	b.Text = name; b.BackgroundColor3 = C.SidebarBG; b.TextColor3 = C.Text; b.Font = "GothamBold"
	b.MouseButton1Click:Connect(function() OpenPage(name) end)
end

UIS.InputBegan:Connect(function(i, g) if not g and i.KeyCode == Enum.KeyCode.B then Main.Visible = not Main.Visible end end)
OpenPage("HOME")
UpdateHeadTag(LocalPlayer)
