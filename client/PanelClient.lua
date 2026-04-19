local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local UIS = game:GetService("UserInputService")
local RS = game:GetService("RunService")

-- CONFIG
local PANEL_VERSION = "1.0.0"

-- GUI
local gui = script.Parent
local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0, 500, 0, 300)
main.Position = UDim2.new(0.3, 0, 0.3, 0)
main.BackgroundColor3 = Color3.fromRGB(20,20,20)
main.Visible = true

-- DRAG
local dragging = false
local dragInput, startPos, startFramePos

main.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		startPos = input.Position
		startFramePos = main.Position
	end
end)

main.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = false
	end
end)

UIS.InputChanged:Connect(function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - startPos
		main.Position = UDim2.new(
			startFramePos.X.Scale,
			startFramePos.X.Offset + delta.X,
			startFramePos.Y.Scale,
			startFramePos.Y.Offset + delta.Y
		)
	end
end)

-- TECLA B (abrir/fechar)
UIS.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.B then
		main.Visible = not main.Visible
	end
end)

-- MENU LATERAL
local menu = Instance.new("Frame", main)
menu.Size = UDim2.new(0,120,1,0)
menu.BackgroundColor3 = Color3.fromRGB(50,50,50)

local pages = {}

local function createPage(name)
	local btn = Instance.new("TextButton", menu)
	btn.Size = UDim2.new(1,0,0,40)
	btn.Text = name
	btn.BackgroundColor3 = Color3.fromRGB(70,70,70)

	local page = Instance.new("Frame", main)
	page.Size = UDim2.new(1,-120,1,0)
	page.Position = UDim2.new(0,120,0,0)
	page.Visible = false
	page.BackgroundColor3 = Color3.fromRGB(30,30,30)

	pages[name] = page

	btn.MouseButton1Click:Connect(function()
		for _,p in pairs(pages) do p.Visible = false end
		page.Visible = true
	end)

	return page
end

-- PÁGINAS
local home = createPage("HOME")
local target = createPage("TARGET")
local misc = createPage("MISC")
local adm = createPage("ADM")
local version = createPage("VERSION")
local dev = createPage("DEV")

home.Visible = true

-- HOME TEXTO
local label = Instance.new("TextLabel", home)
label.Size = UDim2.new(1,0,1,0)
label.Text = "Olá "..player.Name.."!\nBem-vindo ao painel 4e20\nTecla B para abrir/fechar"
label.TextColor3 = Color3.new(1,1,1)
label.BackgroundTransparency = 1

-- =========================
-- SISTEMA DE BOTÃO TOGGLE
-- =========================
local function createToggle(parent, text, callback)
	local btn = Instance.new("TextButton", parent)
	btn.Size = UDim2.new(0,200,0,40)
	btn.Text = text.." [OFF]"
	btn.BackgroundColor3 = Color3.fromRGB(150,0,0)

	local state = false

	btn.MouseButton1Click:Connect(function()
		state = not state
		btn.Text = text.." ["..(state and "ON" or "OFF").."]"
		btn.BackgroundColor3 = state and Color3.fromRGB(0,150,0) or Color3.fromRGB(150,0,0)
		callback(state)
	end)
end

-- =========================
-- MISC FUNÇÕES
-- =========================

-- Anti AFK
createToggle(misc, "Anti AFK", function(state)
	if state then
		player.Idled:Connect(function()
			game:GetService("VirtualUser"):ClickButton2(Vector2.new())
		end)
	end
end)

-- Click TP
local clickTP = false
createToggle(misc, "Click TP", function(state)
	clickTP = state
end)

mouse.Button1Down:Connect(function()
	if clickTP and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
		if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
			player.Character:MoveTo(mouse.Hit.Position)
		end
	end
end)

-- Flashback
local flashback = false
local lastPositions = {}

createToggle(misc, "Flashback", function(state)
	flashback = state
end)

RS.RenderStepped:Connect(function()
	if flashback and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
		table.insert(lastPositions, player.Character.HumanoidRootPart.Position)
		if #lastPositions > 100 then
			table.remove(lastPositions,1)
		end
	end
end)

UIS.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.V and flashback then
		for i = #lastPositions,1,-1 do
			player.Character.HumanoidRootPart.CFrame = CFrame.new(lastPositions[i])
			wait(0.01)
		end
	end
end)

-- =========================
-- VERSION
-- =========================
local vlabel = Instance.new("TextLabel", version)
vlabel.Size = UDim2.new(1,0,1,0)
vlabel.Text = "Versão: "..PANEL_VERSION
vlabel.TextColor3 = Color3.new(1,1,1)
vlabel.BackgroundTransparency = 1

-- =========================
-- DEV
-- =========================
local dlabel = Instance.new("TextLabel", dev)
dlabel.Size = UDim2.new(1,0,1,0)
dlabel.Text = "Dev: Codex Dev"
dlabel.TextColor3 = Color3.new(1,1,1)
dlabel.BackgroundTransparency = 1

-- =========================
-- TAG BASE (LOCAL)
-- =========================
local function createTag(text)
	if player.Character and player.Character:FindFirstChild("Head") then
		local bill = Instance.new("BillboardGui", player.Character.Head)
		bill.Size = UDim2.new(0,200,0,50)
		bill.AlwaysOnTop = true

		local lbl = Instance.new("TextLabel", bill)
		lbl.Size = UDim2.new(1,0,1,0)
		lbl.Text = text
		lbl.TextColor3 = Color3.new(1,1,1)
		lbl.BackgroundTransparency = 1
	end
end

createTag("User 4e20")

print("Painel 4e20 carregado!")
