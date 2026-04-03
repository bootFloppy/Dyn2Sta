local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local HeadTable = require(script.HeadTable)

print("Current Head Table;")
print(HeadTable)

Players.PlayerAdded:Connect(function(Player)
	Player.CharacterAppearanceLoaded:Connect(function(model)
		local playerHeadMesh = model.Head:FindFirstChild("Mesh")
		local headMeshId = playerHeadMesh.MeshId
		
		print(headMeshId)
		
		playerHeadMesh:Remove()

		playerHeadMesh = Instance.new("SpecialMesh")
		playerHeadMesh.Parent = model.Head
		playerHeadMesh.Scale = Vector3.new(1.25, 1.25, 1.25)
		
		if HeadTable[headMeshId] then
			print("Found Head2Texture replacement Id!")
			model.Head:FindFirstChild("face").ColorMap = HeadTable[headMeshId]
		else
			warn("couldn't find replacement for MeshId '"..headMeshId.."' !")
		end
	end)
end)
