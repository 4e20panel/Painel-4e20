--[[
    4e20 Panel v1.0.0 - REMOTES (Compartilhado)
    Sincronização de Tags e Execução via GitHub
]]

local Remotes = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")

-- Nome da pasta oculta no jogo para segurança
local FOLDER_NAME = "4e20_Network"

function Remotes.GetComm()
    local folder = ReplicatedStorage:FindFirstChild(FOLDER_NAME)
    
    -- Se for o servidor, ele cria a estrutura se não existir
    if not folder and RunService:IsServer() then
        folder = Instance.new("Folder")
        folder.Name = FOLDER_NAME
        folder.Parent = ReplicatedStorage
        
        -- Eventos principais
        local function Create(name, class)
            local r = Instance.new(class)
            r.Name = name
            r.Parent = folder
            return r
        end
        
        Create("UpdateTag", "RemoteEvent")       -- Muda a tag no DataStore e nos outros players
        Create("ReportExecution", "RemoteEvent") -- Avisa o servidor que o painel foi aberto
        Create("SyncPanelUsers", "RemoteEvent")  -- Sincroniza a lista de quem tem o painel
    end
    
    -- Se for o cliente, ele espera a pasta aparecer
    return folder or ReplicatedStorage:WaitForChild(FOLDER_NAME, 10)
end

return Remotes
