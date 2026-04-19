local ReplicatedStorage = game:GetService("ReplicatedStorage")

local folder = Instance.new("Folder")
folder.Name = "Remotes"
folder.Parent = ReplicatedStorage

local setTag = Instance.new("RemoteEvent")
setTag.Name = "SetTag"
setTag.Parent = folder

local sync = Instance.new("RemoteEvent")
sync.Name = "SyncPanel"
sync.Parent = folder
