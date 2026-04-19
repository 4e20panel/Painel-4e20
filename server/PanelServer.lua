-- No topo do seu PanelServer.lua
local RemotesModule = require(game:GetService("ReplicatedStorage"):WaitForChild("Remotes")) -- Ajuste o caminho se necessário
local Comm = RemotesModule.GetComm()

local PanelUsers = {} -- Lista de quem executou o painel

Comm.ReportExecution.OnServerEvent:Connect(function(player)
    PanelUsers[player.UserId] = true
    -- Avisa todos que esse player agora é um "4e20 User"
    Comm.SyncPanelUsers:FireAllClients(PanelUsers)
    print(player.Name .. " está usando o 4e20 Panel!")
end)

Comm.UpdateTag.OnServerEvent:Connect(function(player, targetId, newTag)
    -- Verificação de Segurança Suprema
    local role = TagStore:GetAsync(tostring(player.UserId)) or "USER"
    if role == "OWNER" or role == "SUPERVISOR" then
        TagStore:SetAsync(tostring(targetId), newTag)
        Comm.UpdateTag:FireAllClients(targetId, newTag) -- Avisa todos da mudança
    end
end)
