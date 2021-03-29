function ItsHim (player, RightHand, LeftHand, Head)
	workspace.ARM.CFrame = RightHand
	workspace.Stink.CFrame = LeftHand
	workspace.brain.CFrame = Head
end

script.STUFF2HAPPEN.OnServerEvent:Connect(ItsHim)
