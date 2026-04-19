--[[
    4e20 Panel v1.0.0 - MAIN ENTRY
    Este arquivo redireciona para o Client Source organizado.
]]

local Repo = "https://raw.githubusercontent.com/4e20panel/Painel-4e20/main/"

-- 1. Verifica se o jogo já carregou o básico
if not game:IsLoaded() then
    game.Loaded:Wait()
end

-- 2. Carrega o PanelClient.lua (Sua interface e funções)
local success, err = pcall(function()
    return loadstring(game:HttpGet(Repo .. "cliente/PanelClient.lua"))()
end)

if success then
    print("-----------------------------------------")
    print("4e20 Panel v1.0.0 carregado com sucesso!")
    print("Desenvolvido por: Bonix Code")
    print("-----------------------------------------")
else
    warn("Erro crítico ao iniciar o Painel: " .. tostring(err))
end
