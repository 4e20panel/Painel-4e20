local DataStoreService = game:GetService("DataStoreService")
local Players = game:GetService("Players")

local tagStore = DataStoreService:GetDataStore("4e20Tags")

Players.PlayerAdded:Connect(function(player)
	local tag = "User"

	local success, data = pcall(function()
		return tagStore:GetAsync(player.UserId)
	end)

	if success and data then
		tag = data
	end

	player:SetAttribute("Tag", tag)
end)

Players.PlayerRemoving:Connect(function(player)
	local tag = player:GetAttribute("Tag") or "User"

	pcall(function()
		tagStore:SetAsync(player.UserId, tag)
	end)
end)
