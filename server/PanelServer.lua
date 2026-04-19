local DataStoreService = game:GetService("DataStoreService")
local TagStore = DataStoreService:GetDataStore("4e20_TagSystem_V1")

game.Players.PlayerAdded:Connect(function(player)
    local success, savedTag = pcall(function()
        return TagStore:GetAsync(tostring(player.UserId))
    end)
    
    if success and savedTag then
        -- Envia a tag salva para o cliente via RemoteEvent (você deve criar o Remote no Git)
        print("Tag carregada para " .. player.Name .. ": " .. savedTag)
    end
end)

-- Função para salvar quando a tag muda (Exemplo de lógica)
-- RemoteEvent.OnServerEvent:Connect(function(player, targetUserId, newTag)
--     TagStore:SetAsync(tostring(targetUserId), newTag)
-- end)
